<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<title>�ظ����</title>
<link rel="stylesheet" href="../../../admin/img/lw.css" type="text/css">
<%
abc=Request("abc")
name=Trim(Request("name"))

if abc=1 and name<>"" then
'���������Ƿ��Ѿ�����
sql="select softname from soft where softname='"& name &"'"
rs.Open sql,Conn
if not rs.eof then
response.write "<font color=#ff0000>��������Ѿ�����:(</font>"
else
response.write "���ƿ���ʹ�ã�:)"
end if
rs.close

elseif abc=2 and name<>"" then

'����ļ����Ƿ��Ѿ�����
sql="select filename from soft where filename='"& name &"'"
rs.Open sql,Conn
if not rs.eof then
response.write "<font color=#ff0000>���ļ����Ѿ�����:(</font>"
else
response.write "���ֿ���ʹ�ã�:)"
end if
rs.close

end if
%>