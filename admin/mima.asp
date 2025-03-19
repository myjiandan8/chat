<!--顶部内容#include file="../inc/BBTOP.asp" -->
<!--数据库连接文件#include file="../INC/SQLconn.asp" -->

<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>室主密码找回</TITLE>

<% call top %>

<meta http-equiv="Content-Language" content="zh-cn">
<style type="text/css">
<!--
td    { font-size: 12px} 
-->
</style>
<%
 Call openchatconn
 
 if request("huida")="" and request("name")<>"" then 
			
			set rs=server.createobject("adodb.recordset")
			sql="select * from [Web] where id like "&request("name")
			rs.Open sql,chatconn,1,3
			
			if  rs.eof then  
			Call errstr("ID非法！！")	
 			else 
 			
   question=trim(rs("question")&" ")
   
   if question="" or question=null then Call errstr("该房间没有启用密码找回功能！！")	

%>



 <form method=post action="mima.asp">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="206" height="1" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="204" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          <font color="#FFFFFF">聊湾室主密码找回</font></b></td>
        </tr>
        <tr>
          <td width="204" height="25" bordercolor="#D6D3CE">&nbsp; 第二步</td>
        </tr>
        <tr>
          <td width="204" height="5" bordercolor="#D6D3CE">&nbsp; 问题：<%=question%></td>
        </tr>
        <tr>
          <td width="204" height="21" bordercolor="#D6D3CE">&nbsp;&nbsp;回答： 
                      <input name=huida size=17>	<INPUT TYPE="HIDDEN" NAME="name" VALUE="<%=rs("ID")%>"> </td>
        </tr>
        <tr>
          <td width="204" height="1" bordercolor="#D6D3CE">
          <p align="right">
<input type=submit name=ddd value="下一步">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="204" height="1" bordercolor="#D6D3CE">
          　</td>
        </tr>
        <tr>
          <td width="204" height="1" bordercolor="#D6D3CE">
          <p align="right">　</td>
        </tr>
      </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>
</body>
<% end if %>
<% elseif   request("huida")<>"" and request("name")<>"" then 
			set rs=server.createobject("adodb.recordset")
			sql="select * from [Web] where id like "&request("name")
			rs.Open sql,chatconn,1,3
			
			if len(rs("question"))<3 then Call errstr("该房间没有启用该功能！！")	
			
			if request("huida")<>rs("answer") then
			%>
	<script language=vbs>
<!--
        MsgBox "问题答案错误！"
        window.location.href="Javascript:window.history.go(-1)"

-->
   </script>
          <% else %>
             
             
			<script language=vbs>
<!--
        MsgBox "您的密码是：<%=rs("adminpasswd")%>  以后不要忘记了啊"
        window.close()

-->
   </script>
             
         <% end if %>
			
			
			
<% else %>
<body>
 <form method=post action="mima.asp">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="206" height="1" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="204" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          <font color="#FFFFFF">聊湾室主密码找回</font></b></td>
        </tr>
        <tr>
          <td width="204" height="31" bordercolor="#D6D3CE">&nbsp; 第一步</td>
        </tr>
        <tr>
          <td width="204" height="21" bordercolor="#D6D3CE">&nbsp;&nbsp;房间ID： 
                      <input name=name size=11> </td>
        </tr>
        <tr>
          <td width="204" height="1" bordercolor="#D6D3CE">
          <p align="right">
<input type=submit name=dd value="下一步">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="204" height="1" bordercolor="#D6D3CE">
          　</td>
        </tr>
        <tr>
          <td width="204" height="1" bordercolor="#D6D3CE">
          <p align="right">　</td>
        </tr>
      </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>

<% end if %>
<% call di %>