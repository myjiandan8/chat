<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<%
if Request("passwd1")<>Request("passwd2") then
	response.write "密码、确认密码不同<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

sql="select * from admin where uID='"&Request("uID")&"'"
'response.write sql
'response.End
set rs=conn.execute (sql)
if not rs.eof then
	response.write "该用户名已存在<br><a href='Javascript:window.history.go(-1)'>返回</a>"
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
alert("添加成功！");
this.document.location="userAdd.asp";
-->
</script>