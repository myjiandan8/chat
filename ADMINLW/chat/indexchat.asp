<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<%

tj1=request("tj1")
tj2=request("tj2")
tj3=request("tj3")
tj4=request("tj4")

Call OpenChatConn

if tj1<>"" or tj2<>"" then

set rs=server.CreateObject("adodb.recordset")
rs.open "select * from tuijian",chatconn,1,3
rs("tj1")=tj1
rs("tj2")=tj2
rs("tj3")=tj3
rs("tj4")=tj4
rs.update
rs.close

wenti("修改成功")

else

set rs=server.CreateObject("adodb.recordset")
rs.open "select * from tuijian",chatconn,1,3

tj1=rs("tj1")
tj2=rs("tj2")
tj3=rs("tj3")
tj4=rs("tj4")
rs.close

end if


%>

<STYLE type=text/css>
<!--
td {  font-family: "宋体"; font-size: 9pt}
body {  font-family: "宋体"; font-size: 11pt; line-height: 15pt}
.title {  font-family: "宋体"; font-size: 11pt}
A {text-decoration: none; font-family: "宋体"}
A:hover {text-decoration: underline; color: #FF0000; font-family: "宋体"} 
-->
</style>
<meta http-equiv="Content-Language" content="zh-cn">
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" width="600" id="AutoNumber1" style="border-collapse: collapse" bordercolor="#111111" height="350">
    <tr>
      <td width="598" height="20" colspan="2">
      <p align="center">首页推荐聊天室</td>
    </tr>
    <form name="form2" method="post" action="indexchat.asp">
    <tr>
      <td width="98" height="71">

        话题推荐1</td>
      <td width="499" height="71">

        <textarea rows="4" name="tj1" cols="56"><%=tj1%></textarea></td>
    </tr>
    <tr>
      <td width="98" height="77">

        <font color="#009999"><b>舞之魅力2</b></font></td>
      <td width="499" height="77">

        <textarea rows="4" name="tj2" cols="56"><%=tj2%></textarea></td>
    </tr>
	<tr>
      <td width="98" height="65">

        <font color="#cc0099"><b>KTV3</b></font></td>
      <td width="499" height="65">

        <textarea rows="4" name="tj3" cols="56"><%=tj3%></textarea></td>
    </tr>
	<tr>
      <td width="98" height="66">

        <font color="#CC6600"><b>新房推荐4</b></font></td>
      <td width="499" height="66">

        <textarea rows="4" name="tj4" cols="56"><%=tj4%></textarea></td>
    </tr>

    <tr>
      <td width="598" height="27" colspan="2">
		<p align="center">范例: 2088,2111,2981,3445&nbsp; 用英文逗号格开ID&nbsp; 每种10个</td>
    </tr>
    <tr>
      <td width="598" height="36" colspan="2">
		<p align="center">
        <input type="submit" value="提交" name="B1"></td>
    </tr>
    <tr>
      <td width="598" height="33" colspan="2"></td>
    </tr>
        </form>
  </table>
  </center>
</div>