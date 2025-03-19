<%
tcip = Request("tcip")
dsnname="chatweb"						
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = dsnname
set rs=server.createObject("adodb.recordset")

'错误消息
sub errstr(message)
response.write "<script>alert('"& message &"');history.go(-1);</script>"
end sub

sub Dnew()
	On Error Resume Next
	GETH = Request.ServerVariables("HTTP_HOST")

'切头 切尾
		isd=InStr(GETH, ".") 
		com= mid(GETH, isd + 1)
    	www = Left(GETH, isd -1)
'换为数字
	id=Cint(www)
	id=tcip
	if tcip=0 then id=2000
if id=0 or (id<2000 and id>9999) or (com<>"liaowan.com") then
	    'response.redirect "/Error.asp"
		'response.end  
end if

end sub

id=0
Call Dnew()
	
	sql="select webbg,roomname,renqi,admin,num,TOTAL,YESTERDAY,BMONTH,MONTH,TODAY from web where id=" & id
	set rs=conn.execute (sql)
	
	if rs.eof and rs.bof then
		response.redirect "/Error.asp"
    	response.end  
	end if
	
    webbg=rs("webbg")
    TOTAL=rs("TOTAL")
    YESTERDAY=rs("YESTERDAY")
    BMONTH=rs("BMONTH")
    MONTHS=rs("MONTH")
    TODAY=rs("TODAY")
	admin=rs("admin")
	renqi=rs("renqi")
	'chatxy=rs("chatxy")
	num=rs("num")
	roomname=rs("roomname")
	
	rs.close

%>