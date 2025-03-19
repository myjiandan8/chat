<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<title>重复检测</title>
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<%
abc=Request("abc")
name=Trim(Request("name"))

if abc=1 and name<>"" then
'检测软件名是否已经存在
set rs=server.createobject("adodb.recordset")
sql="select uid from [user] where name='"& name &"'"
rs.Open sql,Conn
if not rs.eof then
response.write "<font color=#ff0000>"&name&"的ID是：</font>" & rs("uid")
else
response.write "该用户名不存在"
end if
rs.close
else
response.write "非法操作"
end if

%>