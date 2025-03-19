<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
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
	无法删除最后一个管理员。<br>
	<a href="Javascript:window.history.go(-1)">返回</a>
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
alert("删除成功！");
window.location="<%=session("adminoldUrl")%>"
//-->
</script>