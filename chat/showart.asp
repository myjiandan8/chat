<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/articlecat.asp"-->
<!--#include file="lib/showart_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="��������"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("art_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
else
  if not isInteger(request.querystring("art_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ�������id������"
  end if
end if
if request.querystring("cat_id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>��ָ�������Ķ���"
else
  if not isInteger(request.querystring("cat_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������·���id������"
  end if
end if 

if founderr then
  call diserror()
  response.end
else
call top()
call article_nav()
rcount
call showart_body()
call endpage()
end if

function rcount()
OPENarticle
set rscount=conn.execute("select * from art")
sql="UPDATE art SET art_count = art_count + 1 where art_id="&request.querystring("art_id")
conn.execute (sql)
rscount.close
set rscount=nothing
end function
%>