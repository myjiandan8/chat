<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/download_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="程序下载"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("cat_id")<>"" then
  if not isInteger(request.querystring("cat_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的程序分类参数。"
  end if
end if
if request.querystring("class_id")<>"" then
  if not isInteger(request.querystring("class_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的程序分类参数。"
  end if
end if
if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的程序分页参数。"
  end if
end if
if request("keyword")<>"" then
  if instr(request("keyword"),"'")>0 then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的程序搜索参数。"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call download_nav()
call download_body()
call endpage()
end if
%>