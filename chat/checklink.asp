<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<%
if session("adminlogin")<>sessionvar then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>����δ��¼�����߳�ʱ�ˣ���<a href='admin_index.asp'>���µ�¼</a>��"
  call diserror()
  response.end
else

if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>��ָ��Ҫ�����Ķ���"
  call diserror()
  response.end
else

opensites
sql="select * from friendlink where fl_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,3
if request.querystring("action")="pass" then
rs("passed")=0
rs.update
elseif request.querystring("action")="del" then
rs.delete
end if
rs.close
set rs=nothing
openadmin
  sql="update allcount set friendlinkcount = friendlinkcount + 1"
  conn.execute(sql)
  closedatabase
response.redirect "admin_friendlink.asp?action=check"

end if

end if
%>