<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<%
dim intId
dim sql
intId=Request("id")
set rs=server.createObject("adodb.recordset")
sql="select * from admin"
rs.open sql,conn,1,1
if rs.recordCount<=1 then%>
	�޷�ɾ�����һ������Ա��<br>
	<a href="Javascript:window.history.go(-1)">����</a>
<%
	response.End
end if
sql="delete from admin where id="&intId
'response.write sql
'response.End
conn.execute (sql)
%>
<script language=Javascript>
<!--
alert("ɾ���ɹ���");
window.location="<%=session("adminoldUrl")%>"
//-->
</script>