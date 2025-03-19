<%@ Language=VBScript %>
<%
  if session("admin")="" then
  response.redirect "login.asp"
  else
	if session("flag")>1 then
		response.write "<br><p align=center>您没有操作的权限</p>"
		response.end
	end if
  end if
  
%>

<!--数据库连接文件#include file="../cool.asp" -->
<%
oldpin=LCase(Request("oldpin"))
newpin=LCase(Request("newpin"))

manager=LCase(Request("manager"))
oldmanager=Request("oldmanager")

submit=Trim(Request("submit"))

'//进行修改操作
set rs = server.createobject("adodb.recordset")
if submit="修改" then

'//修改用户密码
sql="select * from admin where name='"&oldmanager&"'"
rs.open sql,conn,3,3
rs("name")=manager
rs("passwd")=newpin
rs.update
rs.close
set rs=nothing
'         sql="update Admin set name='"&manager&"',passwd='"&newpin&"' where name='"&oldmanager&"'"

'         conn.Execute sql

conn.Close
set conn=Nothing

response.redirect "adminuser.asp"

end if

'//进行删除操作

if submit="删除" then

sql="delete from Admin where name='"&oldmanager&"'"

conn.Execute sql

conn.Close
set conn=Nothing

response.redirect "adminuser.asp"

end if
%>


<p>　</p>
