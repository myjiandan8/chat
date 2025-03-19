<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/UBBshow.asp"-->
<!--#include file="lib/UBB_diary.asp"-->
<!--#include file="lib/admindiary_body.asp"-->
<title>视频聊天 语音聊天 聊湾 蓝天语音-日记管理</title>
<%
dim founderr,errmsg
founderr=false
errmsg=""

if Request.form("MM_insert") then

if request.form("action")="newdiary" then
opendiary
sql="select * from diary"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim d_content
d_content=trim(request.form("textfield"))
if d_content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入日记内容！"
else
  rs("d_content")=d_content
end if
if not founderr then
rs.update
rs.close
set rs=nothing
  openadmin
  sql="update allcount set diarycount = diarycount + 1"
  conn.execute(sql)
  closedatabase
response.redirect "admin_diary.asp"
else
call diserror()
response.end
end if
end if
if request.form("action")="editdiary" then
 if request.form("id")="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
 else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的日记id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opendiary
sql="select * from diary where d_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
d_content=trim(request.form("textfield"))
if d_content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入日记内容！"
else
  rs("d_content")=d_content
end if
if not founderr then
rs.update
rs.close
set rs=nothing
response.redirect "admin_diary.asp"
else
call diserror()
response.end
end if
end if
if request.form("action")="deldiary" then
 if request.form("id")="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
 else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的日记id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opendiary
sql="select * from diary where d_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
if not founderr then
rs.delete
rs.close
set rs=nothing
  openadmin
  sql="update allcount set diarycount = diarycount - 1"
  conn.execute(sql)
  closedatabase
response.redirect "admin_diary.asp"
else
call diserror()
response.end
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
call admindiary_body()
CloseDatabase
call adminendpage()
end if
%>