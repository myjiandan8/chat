<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/admindown_body.asp"-->
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.form("MM_insert") then

if request.form("action")="newcat" then
opendown
sql="select * from cat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim cat_name
cat_name=trim(replace(request.form("cat_name"),"'",""))

if cat_name="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须填写分类名称！"
else
   rs("cat_name")=cat_name
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_down.asp"
end if
elseif request.form("action")="newclass" then
opendown
sql="select * from class"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim class_name,cat_id
cat_id=cint(request.form("cat_id"))
class_name=trim(replace(request.form("class_name"),"'",""))

if cat_id<1 then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须选择所属分类名称！"
else
   rs("cat_id")=cat_id
end if
if class_name="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须填写子分类名称！"
else
   rs("class_name")=class_name
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_down.asp"
end if
elseif request.form("action")="editcat" then
if cint(request.form("id"))<1 then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>非法的分类参数！"
   call diserror()
   response.end
end if
opendown
sql="select * from cat where cat_id="&request.form("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
cat_name=trim(replace(request.form("cat_name"),"'",""))

if cat_name="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须填写分类名称！"
else
   rs("cat_name")=cat_name
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_down.asp"
end if
elseif request.form("action")="editclass" then
if cint(request.form("id"))<1 then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>非法的分类参数！"
   call diserror()
   response.end
end if
opendown
sql="select * from class where class_id="&request.form("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
cat_id=cint(request.form("cat_id"))
class_name=trim(replace(request.form("class_name"),"'",""))

if cat_id<1 then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须选择所属分类名称！"
else
   rs("cat_id")=cat_id
end if
if class_name="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须填写子分类名称！"
else
   rs("class_name")=class_name
end if
if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_down.asp"
end if
elseif request.form("action")="delcat" then
if cint(request.form("id"))<1 then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>非法的分类参数！"
   call diserror()
   response.end
end if
opendown
sql="select * from cat where cat_id="&request.form("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  response.redirect "admin_down.asp"
elseif request.form("action")="delclass" then
if cint(request.form("id"))<1 then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>非法的分类参数！"
   call diserror()
   response.end
end if
opendown
sql="select * from class where class_id="&request.form("id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  response.redirect "admin_down.asp"
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
call admindown_body()
closedatabase
call adminendpage()
end if
%>