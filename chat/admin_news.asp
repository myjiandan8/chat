<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/UBBshow.asp"-->
<!--#include file="lib/UBB_news.asp"-->
<!--#include file="lib/adminnews_body.asp"-->
<title>��Ƶ���� �������� ���� ��������-���Ź���</title>
<%
dim founderr,errmsg
founderr=false
errmsg=""

if Request.form("MM_insert") then
if request.form("action")="newnews" then
opennews
sql="select * from news"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim author,ahome,keyword,title,content
author=trim(replace(request.form("news_author"),"'",""))
ahome=trim(replace(request.form("news_ahome"),"'",""))
keyword=trim(replace(request.form("news_keyword"),"'",""))
title=trim(replace(request.form("news_title"),"'",""))
content=trim(replace(request.form("news_content"),"'",""))

if author="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>������������߻���Դ���ƣ�"
else
  rs("news_author")=author
end if
if ahome="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����������Դ�ĵ�ַ��"
else
  rs("news_ahome")=ahome
end if
if keyword="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������������ŵĹؼ��֣�"
else
  rs("news_keyword")=keyword
end if
if title="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>������������ŵı��⣡"
else
  rs("news_title")=title
end if
if content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����������Դ�ĵ�ַ��"
else
  rs("news_content")=content
end if

if not founderr then
rs.update
rs.close
set rs=nothing
openadmin
  sql="update allcount set newscount = newscount + 1"
  conn.execute(sql)
  closedatabase
response.cookies("0")=""
response.redirect "admin_news.asp"
else
call diserror()
response.end
end if
end if
if request.form("action")="editnews" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������id������"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opennews
sql="select * from news where news_id="&cint(request.Form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
author=trim(replace(request.form("news_author"),"'",""))
ahome=trim(replace(request.form("news_ahome"),"'",""))
keyword=trim(replace(request.form("news_keyword"),"'",""))
title=trim(replace(request.form("news_title"),"'",""))
content=trim(replace(request.form("news_content"),"'",""))

if author="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>������������߻���Դ���ƣ�"
else
  rs("news_author")=author
end if
if ahome="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����������Դ�ĵ�ַ��"
else
  rs("news_ahome")=ahome
end if
if keyword="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�������������ŵĹؼ��֣�"
else
  rs("news_keyword")=keyword
end if
if title="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>������������ŵı��⣡"
else
  rs("news_title")=title
end if
if content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����������Դ�ĵ�ַ��"
else
  rs("news_content")=content
end if

if not founderr then
rs.update
rs.close
set rs=nothing
response.redirect "admin_news.asp"
else
call diserror()
response.end
end if
end if
if request.form("action")="delnews" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>�����ָ�������Ķ���"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������id������"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
opennews
sql="select * from news where news_id="&cint(request.Form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.delete
rs.close
set rs=nothing
openadmin
  sql="update allcount set newscount = newscount - 1"
  conn.execute(sql)
  closedatabase
response.redirect "admin_news.asp"
end if
end if


if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li><a href='admin_index.asp'>����δ��¼�����߲�����ʱ�������µ�¼��</a>"
  call diserror()
  response.end
else
call top()
call admin_nav()
call adminnews_body()
closedatabase
call adminendpage()
end if
%>