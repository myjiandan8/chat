<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<%
Set go = Server.CreateObject("lw.go")

dsnname=chatweb					
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = dsnname
set rs=server.createObject("adodb.recordset")

''''''''''替换模块START''''''''''''
Function ReplaceText(fString,patrn, replStr)
Set regEx = New RegExp  ' 建立正则表达式。
regEx.Pattern = patrn   ' 设置模式。
regEx.IgnoreCase = True ' 设置是否区分大小写。
regEx.Global = True     ' 设置全局可用性。 
ReplaceText = regEx.Replace(fString, replStr) ' 作替换。
End Function
''''''''''替换模块END''''''''''''
'''SQL破坏语句过滤'''''''''''''''
function ContentEncode(fString)
fString=replace(fString,vbCrlf, "")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"'","&#39;")
fString=ReplaceText(fString,"<(.[^>]*)(&#|cookie|window.|Document.|javascript:|js:|vbs:|about:|file:|on(blur|click|change|Exit|error|focus|finish|key|load|mouse))", "&lt;$1$2$3")
fString=ReplaceText(fString,"<(\/|)(iframe|object|SCRIPT|form|style|meta|TEXTAREA)", "&lt;$1$2")
ContentEncode=fString
end function

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
    if id>9999 and id<99999 then
	    response.redirect "/U"   'U 为用户的目录 
    elseif id>999 and id<10000 then
		shime="ok"	    
	elseif id>800000 then
		response.redirect "/c/i.asp"   '自建聊天室
	elseif shime<>"ok" then
	    response.redirect "/Error.asp"
	end if 

end sub

Dim id
Call Dnew()

	'id = ContentEncode(id)

	sql="select webbg,roomname,renqi,admin,adminid,num,TOTAL,YESTERDAY,BMONTH,MONTH,TODAY,index_url,index_logo from web where id=" & id
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
	adminid=rs("adminid")
	renqi=rs("renqi")
	num=rs("num")
	roomname=rs("roomname")
	index_url=rs("index_url")
	index_logo=rs("index_logo")
	rs.close


	if index_logo="" then index_logo="http://muban.liaowan.com/c/images/logoo.gif"


''''''''''''''''''''''''''''''''
'<!--$roomname--> 	房间名称
'<!--$roomid-->		房间ID
'<!--$num--> 		网站当前在线人数
'<!--$admin--> 		聊天室室主名字
'<!--$adminid-->    聊天室室主id
'<!--$index_logo--> 房间的网站标志图片
'<!--$index_css-->  网页自定义CSS脚本 
'<!--$webbg-->  	网页背景图片地址
'以下为聊天室统计资料区
'<!--$TODAY--> 		当天流量
'<!--$YESTERDAY--> 	昨日流量
'<!--$MONTHS--> 	本月流量
'<!--$BMONTH--> 	上月流量
'<!--$TOTAL--> 		流量总计
'<!--$renqi--> 		人气指数
'网站项目
'<!--$title--> 		网页标题
'<!--$youqing--> 	调用友情连接
'<!--$body--> 		网页主体内容区
'
''''''''''''''''''''''''''''''''





%>