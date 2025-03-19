<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<%
if Request("modifypasswd")=1 then
	if Request("passwd1")<>Request("passwd2") then
		response.write "密码、确认密码不同<br><a href='Javascript:window.history.go(-1)'>返回</a>"
		response.End
	end if
	modifypasswd=1
end if
'	response.write modifypasswd
'	response.End
       Set cmdTemp = Server.CreateObject("ADODB.Command")
       Set InsertCursor = Server.CreateObject("ADODB.Recordset")
       cmdTemp.CommandText = "SELECT * FROM admin WHERE id="&Request("id")
       cmdTemp.CommandType = 1
       Set cmdTemp.ActiveConnection = conn
       InsertCursor.Open cmdTemp, , 1, 3
       'InsertCursor("uID") =Request("uID")	   
       InsertCursor("name") =Request("name")
       InsertCursor("quanxian") =Request("quanxian")
       InsertCursor("shuoming") =Request("shuoming")
if modifypasswd=1 then
       InsertCursor("passwd") =Request("passwd1")
end if
       InsertCursor.Update
       InsertCursor.close
	   conn.close
       set InsertCursor=nothing
       set conn=nothing
%>
<script language=Javascript>
<!--
alert("修改成功！");
this.document.location="<%=session("adminOldUrl")%>";
-->
</script>