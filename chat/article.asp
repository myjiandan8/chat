<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/articlecat.asp"-->
<!--#include file="lib/article_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="��������"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("cat_id")<>"" then
  if not isInteger(request.querystring("cat_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������·��������"
  end if
end if
if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������·�ҳ������"
  end if
end if
if request("keyword")<>"" then
  if instr(request("keyword"),"'")>0 then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ�����������������"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call article_nav()
call article_body()
call endpage()
end if
%>