<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/z_pic_body.asp"-->

<!--#include file="incfooter.asp"-->
<%
stats="ͼƬ�б�"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("cscat_id")<>"" then
  if not isInteger(request.querystring("cscat_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ��ķ��������"
  end if
end if
if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ������·�ҳ������"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call service_nav()
call pic_body()
call endpage()
end if
%>