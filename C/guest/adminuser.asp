<%@language=vbscript%>
<!--���ݿ������ļ�#include file="../cool.asp" -->
<%
  if session("admin")="" then
  response.redirect "login.asp"
  else
	if session("flag")>1 then
		response.write "<br><p align=center>��û�в�����Ȩ��</p>"
		response.end
	end if
  end if

%>

<html>
<head>
<title>�û�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="3.css" rel="stylesheet" type="text/css">
<%
Set rs=Server.CreateObject("Adodb.RecordSet")

sql="select * from admin where flag>="&session("flag")&" order by id"

rs.Open sql,conn,1,1
%>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<div align="center">
  <p><a href="default.asp">�������԰�</a></p>
    <p>��</p>
<%while not rs.EOF %>
<%if (rs("flag")>Session("flag")) or (rs("name")=Session("admin")) then%>
<form method="post" action="saveuser.asp" style="margin:0">
<table width="500" border="0" cellspacing="2" cellpadding="0">
<tr bgcolor="#EBEBEB">
<td height="30" width="30">
<div align="center">1</div>
</td>
<td height="30" width="120">
<div align="center">
<input type="text" name="manager" value="<%=rs("name")%>" size="12">
</div>
</td>
<td height="30" width="120">
<div align="center">
<input type="passwd" name="newpin" value="<%=rs("passwd")%>" size="9">
</div>
</td>
<td height="30" width="130">
<p>��</p>
</td>
<td height="30" width="130">
<%if rs("flag")=1 then%>
<div align="center">�����û�</div>
<%end if%>
<%if rs("flag")=2 then%>
<div align="center">һ�����Ա</div>
<%end if%>
<%if rs("flag")=3 then%>
<div align="center">����</div>
<%end if%></td>
<td height="30" width="130">
<div align="center">
<input type="submit" name="Submit" value="�޸�">&nbsp;

<input type="hidden" name="oldmanager" value="<%=rs("name")%>">
<input type="hidden" name="oldpin" value="<%=rs("passwd")%>">
</div>
</td>
</tr>
</table>
</form>
<%else%>
    <p>��</p>
<%
end if

rs.MoveNext

Wend
%><%
rs.Close
set rs=Nothing

conn.Close
set conn=Nothing
%>
</div>
</body>
</html>
