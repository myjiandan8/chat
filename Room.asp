<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
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
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = chatweb
set rs=server.createObject("adodb.recordset")
                                                                              

dim rs,sql
dim page,maxPerPage

'每页显示的记录数
maxPerPage=ContentEncode(Request("maxPerPage"))    '每页显示的记录数
if (maxPerPage="" or isempty(maxPerPage)) then maxPerPage=100
'if (maxPerPage>100) then maxPerPage=100

'第几页
page=Request("page")
if (page="" or isempty(page)) then page=1

'搜索条件
myKeyword=ContentEncode(Request("myKeyword"))

'查询聊天室分类
RoomType=ContentEncode(Request("RoomType"))

'查询聊天室分类
id2=ContentEncode(Request("id2"))

'查询聊天室 室主
admin=ContentEncode(Request("admin"))

'显示隐藏房间
liebiao=Request("liebiao")

if liebiao="" or liebiao=0 then
	liebiao=0
else
	liebiao=1
end if




'排列方法
pailei=Request("pailei")

if pailie="" then pailei=1

if pailei=1 then 
pailies="id"
elseif pailie=2 then
pailies="num"
else
pailies="id"
end if

'顺序
shunxu =Request("shunxu")

if shunxu="" then shunxu=1


if shunxu=1 then 
shunxus="asc"
elseif shunxu=2 then
shunxus="desc"
else
shunxus="asc"
end if


'查询聊天室 端口号唯一
ports=Request("port")


ports = replace(ports,"'","")		'过滤关键字
ports = replace(ports,"[","")
ports = trim(ports)

portslist = split(ports,",")		'按空格分割关键字
portslistS=UBound(portslist)




'thisUrl="listchat.asp?myKeyword="& myKeyword & "&Qtime=" & Qtime & "&Roomid=" & Roomid
'session("adminOldUrl")=thisUrl&"&page="&page


set rs=server.createobject("adodb.recordset")
sql="select Roomname,num,admin,host,id,RoomType,rtype,max from web where 1=1"

if not (myKeyword="" or isempty(myKeyword) ) then
	sql=sql&" and (RoomName like '%"&myKeyword&"%' or admin like '%"&myKeyword&"%') "
end if

if not (RoomType="" or isempty(RoomType) )   then
	sql=sql&" and (RoomType like "& RoomType &")"
end if

if not (admin="" or isempty(admin) ) then
	sql=sql&" and (admin like '"& admin &"')"
end if


'处理端口号码

if not (ports="") then
	
sql = sql & " and ( "

	for i = 0 to portslists
	
		if i=0 then
	
		sqls =" (id like "& portslist(i) &") "
		
		else
		
		sqls = sqls&" or (id like "& portslist(i) &")"
		
		end if
	
	next

sql = sql & sqls &" ) "


'response.write sqls

end if


if not (id2="" or isempty(id2) ) then
	sql=sql&" and (id2 like "& id2 &")"
end if

sql=sql&" and liebiao="& liebiao &" order by " & pailies & " " & shunxus
rs.open sql,conn,1,1
rs.pagesize=MaxPerPage

		fenge = ""

		i=0
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		
		do while not (rs.eof or err or i=int(maxPerPage)) 
		
			rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max")
			fenge = ","
			
		i=i+1
  		rs.moveNext
  		loop
		rs.close

response.write "var rooms = new Array(" & rooms & ");"

Set rs = Nothing
Set conn = Nothing

%>