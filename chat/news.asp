<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/news_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="最新动态"
dim founderr,errmsg
founderr=false
errmsg=""
if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的新闻分页参数。"
  end if
end if
if request("type")<>"" then
  if not isInteger(request("type")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的新闻显示参数。"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call news_nav()
call news_body()
call endpage()
end if
%>