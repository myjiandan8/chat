<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/adminfoot.asp"-->
<!--#include file="lib/adminarticle2_body.asp"-->
<%
dim founderr,errmsg
founderr=false
errmsg=""

if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>����δ��¼�����߳�ʱ�ˣ���<a href='admin_index.asp'>���µ�¼</a>��"
  call diserror()
  response.end
else
call top()
call admin_nav()
call adminarticle2_body()
closedatabase
call adminendpage()
end if
%>