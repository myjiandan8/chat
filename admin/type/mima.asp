<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->


<%
	if Request("xx")<>"" then
		
	  if Request("xx")=1 then
		if Request("password")="" then Call errstr("新密码不能为空")
		if Request("password")<>Request("password1") then Call errstr("两次新密码输入不同！")
	  end if

	
	if adminname="admin" then
		sql="select adminpasswd,question,answer from [web] where id=" & rmport
		rs.open sql,chatconn,1,3
		if Request("xx")=1 and Request("adminpasswd")<>rs("adminpasswd") then Call errstr("原密码输入错误")
		if Request("xx")=1 then rs("adminpasswd") =trim(Request("password1"))
	else
		sql="select passwd,question,answer from [admin] where roomid=" & rmport & " and name='"& adminname &"'"
		rs.open sql,chatconn,1,3
		if Request("xx")=1 and Request("adminpasswd")<>rs("passwd") then Call errstr("原密码输入错误")
		if Request("xx")=1 then rs("passwd") =trim(Request("password1"))
	end if
		
		rs("question") =trim(Request("question"))
		rs("answer") =trim(Request("answer"))
		
       	rs.Update
       	rs.close
	
		session("rmpass") = trim(Request("password1"))
		
		Call errstr("室主密码资料修改成功！！")
	
	end if

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>密码修改</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="512">

<form name="form5" method="post" action="mima.asp">
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp; 修改密码</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
            
          <tr>
	    <td width="127" align=left height="26">端口号：</td>
	    <td width="455" height="26"> <%=rmport%></td>
	      </tr>
            
          <tr>
	    <td width="120" align=left height="26"><font color="#008000">管理帐号：</font></td>
	    <td width="459" align=left height="26"><font color="#FF0000"><b><%=adminname%></b></font></td>
	      </tr>
          <tr>
	    <td  align=left height="26" width="98">是否修改密码：</td>
	    <td height="26" width="484" >
        不修改<input type="radio" value="0" name="xx" checked>&nbsp;&nbsp; 修改<input type="radio" value="1" name="xx"></td>
	      </tr>
			<tr>
	    <td  align=left height="26" width="98">原密码：</td>
	    <td height="26" width="484" >
        <input type="password" name="adminpasswd" size="18"  maxlength=15></td>
	      </tr>
          <tr>
	    <td  align=left height="26" width="98">新密码：</td>
	    <td height="26" width="484" >
        <input type="password" name="password" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="26" width="98">密码验证：</td>
	    <td height="26" width="484" >
        <input type="password" name="password1" size="18"  maxlength=15></td>
	      </tr>

          <tr>
	    <td  align=left height="26" width="98">密码找回问题：</td>
	    <td height="26" width="484" >
        <input name="question" size="18"  maxlength=25 value="<%=question%>">
		<img border="0" src="../../chat/images/new.gif" width="28" height="11"> 
		空白为不启用密码找回功能</td>
	      	</tr>
			<tr>
	    <td  align=left height="26" width="98">密码找回答案：</td>
	    <td height="26" width="484" >
        <input name="answer" size="18"  maxlength=25 value="<%=answer%>">
		<img border="0" src="../../chat/images/new.gif" width="28" height="11"></td>
	      </tr>

          <tr>
	    <td  align=left height="26" width="582" colspan="2">
        <p align="center">
            
            <input type="submit" value=" 确认修改 " name="B2"></td>
	      </tr>
			<tr>
	    <td  align=left height="197" width="582" colspan="2">
        　</td>
	      </tr>
</form>

        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>