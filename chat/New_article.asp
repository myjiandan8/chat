<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/UBBshow.asp"-->
<!--#include file="lib/UBB_art.asp"-->
<!--#include file="lib/newarticle_body.asp"-->
<%
dim founderr,errmsg
founderr=false
errmsg=""

if request.form("MM_insert") then
if request.Form("action")="newart" then
openarticle
sql="select * from art"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
rs.addnew
dim poster,artfrom,title,keyword,content,catid
catid=cint(request.form("cat_id"))
poster=trim(replace(request.form("art_poster"),"'",""))
artfrom=trim(replace(request.form("art_from"),"'",""))
title=trim(replace(request.form("art_title"),"'",""))
keyword=trim(replace(request.form("art_keyword"),"'",""))
content=trim(replace(request.form("art_content"),"'",""))

if catid<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的分类！"
else
  rs("cat_id")=catid
end if
if poster="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的作者！"
else
  rs("art_poster")=poster
end if
if artfrom="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的来源！"
else
  rs("art_from")=artfrom
end if
if title="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的标题！"
else
  rs("art_title")=title
end if
if keyword="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的关键字！"
else
  rs("art_keyword")=keyword
end if
if content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的内容！"
else
  rs("art_content")=content
end if

if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set articlecount = articlecount + 1"
  conn.execute(sql)
  closedatabase
  response.cookies("0")=""
  response.redirect "admin_article2.asp"
end if
end if
if request.Form("action")="editart" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
openarticle
sql="select * from art where art_id="&cint(request.Form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
catid=cint(request.form("cat_id"))
poster=trim(replace(request.form("art_poster"),"'",""))
artfrom=trim(replace(request.form("art_from"),"'",""))
title=trim(replace(request.form("art_title"),"'",""))
keyword=trim(replace(request.form("art_keyword"),"'",""))
content=trim(replace(request.form("art_content"),"'",""))

if catid<1 then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的分类！"
else
  rs("cat_id")=catid
end if
if poster="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的作者！"
else
  rs("art_poster")=poster
end if
if artfrom="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的来源！"
else
  rs("art_from")=artfrom
end if
if title="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的标题！"
else
  rs("art_title")=title
end if
if keyword="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的关键字！"
else
  rs("art_keyword")=keyword
end if
if content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须填写文章的内容！"
else
  rs("art_content")=content
end if

if founderr then
  call diserror()
  response.end
else
  rs.update
  rs.close
  set rs=nothing
  response.redirect "admin_article2.asp"
end if
end if
if request.Form("action")="delart" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章id参数。"
  end if
end if
if founderr then
  call diserror()
  response.End
end if
openarticle
sql="select * from art where art_id="&cint(request.Form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
  rs.delete
  rs.close
  set rs=nothing
  openadmin
  sql="update allcount set articlecount = articlecount - 1"
  conn.execute(sql)
  closedatabase
  response.redirect "admin_article2.asp"
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
call Newarticle_body()
call adminendpage()
end if
%>