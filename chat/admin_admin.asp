<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/security.inc"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/adminadmin_body.asp"-->
<title>视频聊天 语音聊天 聊湾 蓝天语音-管理员选项</title>
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.form("MM_insert") then

if request.form("action")="modpass" then
dim adminname,oldpwd,adminpwd,confirm
adminname=trim(replace(request.form("adminname"),"'",""))
oldpwd=CfsEncode(trim(replace(request.form("oldpwd"),"'","")))
adminpwd=trim(replace(request.form("adminpwd"),"'",""))
confirm=trim(replace(request.form("confirm"),"'",""))
if adminname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入管理员名称！"
end if
if oldpwd="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入旧的管理员密码！"
end if
if adminpwd="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入新的管理员密码！"
end if
if adminpwd<>confirm then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你两次输入的管理员密码不相同！"
end if
if founderr then
  call diserror()
  response.end
else
openadmin
sql="select * from admin where admin_name='"&adminname&"' and admin_password='"&oldpwd&"'"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
if rs.eof then
 errmsg=errmsg+"<br>"+"<li>管理员名称或密码错误！"
 call diserror()
 response.end
else
rs("admin_password")=CfsEncode(adminpwd)
rs.update
rs.close
set rs=nothing
end if
end if
end if
if request.form("action")="newadmin" then
adminname=trim(replace(request.form("adminname"),"'",""))
adminpwd=trim(replace(request.form("adminpwd"),"'",""))
confirm=trim(replace(request.form("confirm"),"'",""))
if adminname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入管理员名称！"
end if
if adminpwd="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入管理员密码！"
end if
if adminpwd<>confirm then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你两次输入的管理员密码不相同！"
end if
if founderr then
  call diserror()
  response.end
else
openadmin
sql="select * from admin"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
rs("admin_name")=adminname
rs("admin_password")=CfsEncode(adminpwd)
rs.update
rs.close
set rs=nothing
response.redirect "admin_login.asp?action=admin"
end if
end if
if request.form("action")="editadmin" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的id参数。"
  end if
end if
adminname=trim(replace(request.form("adminname"),"'",""))
adminpwd=trim(replace(request.form("adminpwd"),"'",""))
confirm=trim(replace(request.form("confirm"),"'",""))
if adminname="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入管理员名称！"
end if
if adminpwd="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入管理员密码！"
end if
if adminpwd<>confirm then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你两次输入的管理员密码不相同！"
end if
if founderr then
  call diserror()
  response.end
else
openadmin
sql="select * from admin where admin_id="&request.form("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs("admin_name")=adminname
rs("admin_password")=CfsEncode(adminpwd)
rs.update
rs.close
set rs=nothing
response.redirect "admin_login.asp?action=admin"
end if
end if
if request.form("action")="deladmin" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章分类id参数。"
  end if
end if
if founderr then
  call diserror()
  response.end
else
openadmin
sql="select * from admin where admin_id="&request.form("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.delete
rs.close
set rs=nothing
response.redirect "admin_login.asp?action=admin"
end if
end if

end if

if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你尚未登录，或者超时了！请<a href='admin_index.asp'>重新登录</a>！"
  call diserror()
  response.end
else
call top()
call admin_nav()
call adminadmin_body()
call adminendpage()
end if
%>