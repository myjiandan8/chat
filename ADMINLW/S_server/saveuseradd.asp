<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<%
if Request("passwd1")<>Request("passwd2") then
	response.write "���롢ȷ�����벻ͬ<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if

sql="select * from admin where uID='"&Request("uID")&"'"
'response.write sql
'response.End
set rs=conn.execute (sql)
if not rs.eof then
	response.write "���û����Ѵ���<br><a href='Javascript:window.history.go(-1)'>����</a>"
	response.End
end if
       Set cmdTemp = Server.CreateObject("ADODB.Command")
       Set InsertCursor = Server.CreateObject("ADODB.Recordset")
       cmdTemp.CommandText = "SELECT * FROM admin WHERE (name is null)"
       cmdTemp.CommandType = 1
       Set cmdTemp.ActiveConnection = conn
       InsertCursor.Open cmdTemp, , 1, 3
       InsertCursor.addnew 
       InsertCursor("uID") =Request("uID")
       InsertCursor("name") =Request("name")
       InsertCursor("quanxian") =Request("quanxian")
       InsertCursor("shuoming") =Request("shuoming")
       InsertCursor("passwd") =Request("passwd1")
       InsertCursor.Update
       InsertCursor.close
	   conn.close
       set InsertCursor=nothing
       set conn=nothing
%>
<script language=Javascript>
<!--
alert("��ӳɹ���");
this.document.location="userAdd.asp";
-->
</script>