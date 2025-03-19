<%

on error resume next
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB.1;passwd=letian;" & "Persist Security Info=True;User ID=sa;" & "Initial Catalog=lwoo;" & "Data Source=127.0.0.1;Connect Timeout=15"


session.Timeout=20        'session生存时间-这里的10指的是10分钟

sub wenti(message)
%>
<script>alert('<%=message%>');</script>
<script>window.history.go(-1)</script>
<%
responseend
end sub
%>