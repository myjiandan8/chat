<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="lib/model_body.asp"-->
<!--#include file="incfooter.asp"-->
<%
stats="ģ������"
dim founderr,errmsg
founderr=false
errmsg=""

if request.querystring("cscat_id")<>"" then
  if not isInteger(request.querystring("cscat_id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ���ģ����������"
  end if
end if
if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>�Ƿ��ķ�ҳ������"
  end if
end if

if founderr then
  call diserror()
  response.end
else
call top()
call model_body()
call endpage()
end if
%>