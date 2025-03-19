<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/showcs_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="酷站列表"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("cscat_id")<>"" then
  if not isInteger(request.querystring("cscat_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的酷站分类参数。"
  end if
end if
if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的文章分页参数。"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call coolsites_nav()
call showcs_body()
call endpage()
end if
%>