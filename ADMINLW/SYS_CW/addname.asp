<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<title>�ظ����</title>
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<%
abc=Request("abc")
name=Trim(Request("name"))

if abc=1 and name<>"" then
'���������Ƿ��Ѿ�����
set rs=server.createobject("adodb.recordset")
sql="select uid from [user] where name='"& name &"'"
rs.Open sql,Conn
if not rs.eof then
response.write "<font color=#ff0000>"&name&"��ID�ǣ�</font>" & rs("uid")
else
response.write "���û���������"
end if
rs.close
else
response.write "�Ƿ�����"
end if

%>