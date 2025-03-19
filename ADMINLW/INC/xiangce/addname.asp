<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<title>重复检测</title>
<link rel="stylesheet" href="../../../admin/img/lw.css" type="text/css">
<%
abc=Request("abc")
name=Trim(Request("name"))

if abc=1 and name<>"" then
'检测软件名是否已经存在
sql="select softname from soft where softname='"& name &"'"
rs.Open sql,Conn
if not rs.eof then
response.write "<font color=#ff0000>该软件名已经存在:(</font>"
else
response.write "名称可以使用！:)"
end if
rs.close

elseif abc=2 and name<>"" then

'检测文件名是否已经存在
sql="select filename from soft where filename='"& name &"'"
rs.Open sql,Conn
if not rs.eof then
response.write "<font color=#ff0000>该文件名已经存在:(</font>"
else
response.write "名字可以使用！:)"
end if
rs.close

end if
%>