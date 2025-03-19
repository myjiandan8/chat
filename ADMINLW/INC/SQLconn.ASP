<%
'连接MS-SQL数据库
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=SQLOLEDB.1;passwd=letian;" & "Persist Security Info=True;User ID=sa;" & "Initial Catalog=lwoo;" & "Data Source=127.0.0.1;Connect Timeout=15"

'错误消息
sub errstr(message)
%>
<script>alert('<%=message%>');</script>
<%
end sub
%>