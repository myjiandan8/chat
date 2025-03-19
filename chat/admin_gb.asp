<!--#include file="CONFIG.ASP" -->
<!--#include file="CONN.ASP" -->
<!--#include file="FORMAT.ASP" -->
<!--#include file="error.ASP" -->
<!--#include file="lib/gbadminlogin.asp" -->
<!--#include file="lib/gbfooter.asp" -->
<link rel="stylesheet" href="<%=themepath%>/gbstyle.css" type="text/css">
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request("login")<>"yes" then
  call admin_login()
else
  if trim(replace(request.form("adminname"),"'",""))="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>你没有填写管理员名称。"
  end if
  if trim(replace(request.form("adminpwd"),"'",""))="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>你没有填写管理员密码。"
  end if
  if founderr then
    call diserror()
	response.end
  else
  opengb
  sql="select * from admin"
  set rs=conn.execute(sql)
  if trim(replace(request.form("adminname"),"'",""))=rs("admin_name") and trim(replace(request.form("adminpwd"),"'",""))=rs("admin_password") then
  response.cookies("NGB")("adminname")=rs("admin_name")
  response.cookies("NGB")("adminpwd")=rs("admin_password")
  response.redirect "guestbook.asp"
  rs.close
  set rs=nothing
  else
  errmsg=errmsg+"<br>"+"<li>管理员名称或密码错误。"
  call diserror()
  response.end
  end if
  end if
end if
%>