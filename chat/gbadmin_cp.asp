<!--#include file="CONFIG.ASP" -->
<!--#include file="CONN.ASP" -->
<!--#include file="FORMAT.ASP" -->
<!--#include file="error.ASP" -->
<!--#include file="lib/gbadmincp.ASP" -->
<!--#include file="lib/gbfooter.asp" -->
<link rel="stylesheet" href="<%=themepath%>/gbstyle.css" type="text/css">
<%
if request.cookies("NGB")("adminname")="" or request.cookies("NGB")("adminpwd")="" then
response.redirect "admin_index.asp"
else

dim founderr,errmsg
founderr=false
errmsg=""

if request("cp")<>"yes" then
  call admin_cp()
else
  if trim(replace(request.form("adminname"),"'",""))="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>��û����д����Ա���ơ�"
  end if
  if trim(replace(request.form("adminpwd"),"'",""))="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>��û����д����Ա���롣"
  end if
  if trim(replace(request.form("newpwd"),"'",""))="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>��û����д�����롣"
  end if
  if trim(replace(request.form("newpwd2"),"'",""))="" then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>��û����дȷ��������ѡ�"
  end if
  if trim(replace(request.form("newpwd2"),"'",""))<>trim(replace(request.form("newpwd"),"'","")) then
    founderr=true
	errmsg=errmsg+"<br>"+"<li>��������������벻һ�¡�"
  end if
  if founderr then
    call diserror()
	response.end
  else
    opengb
    sql="select * from admin"
    set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,3
    if trim(replace(request.form("adminname"),"'",""))=rs("admin_name") and trim(replace(request.form("adminpwd"),"'",""))=rs("admin_password") then
	  rs("admin_password")=trim(replace(request.form("newpwd"),"'",""))
	  rs.update
	  rs.close
	  set rs=nothing
	  response.write "<P class=messagetext>Update Success!<a href='index.asp'>������ҳ</a>"
	else
	  errmsg=errmsg+"<br>"+"<li>����Ա���ƻ���������"
      call diserror()
      response.end
	end if
  end if
end if
end if
%>