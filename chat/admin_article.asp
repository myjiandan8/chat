<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/adminarticle_body.asp"-->
<%
dim founderr,errmsg
founderr=false
errmsg=""

if Request.form("MM_insert") then
if request.Form("action")="newartcat" then
openarticle
sql="select * from cat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim cat_name
cat_name=trim(replace(request.form("cat_name"),"'",""))
if cat_name="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д���·������ƣ�"
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
  response.redirect "admin_article.asp"
end if
end if
if request.Form("action")="editartcat" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������·���id������"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
openarticle
sql="select * from cat where cat_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
cat_name=trim(replace(request.form("cat_name"),"'",""))
if cat_name="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������д���·������ƣ�"
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
  response.redirect "admin_article.asp"
end if
end if
if request.Form("action")="delartcat" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������·���id������"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
openarticle
sql="select * from cat where cat_id="&cint(request.form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  response.redirect "admin_article.asp"
end if
end if

if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>����δ��¼�����߳�ʱ�ˣ���<a href='admin_index.asp'>���µ�¼</a>��"
  call diserror()
  response.end
else
call top()
call admin_nav()
call adminarticle_body()
closedatabase
call adminendpage()
end if
%>