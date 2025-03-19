<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
if Request("passwd")<>"" and (Request("passwd1")=Request("passwd2"))  then

	sql="select * from admin where UID='"& session("UID") &"'and passwd='"& request("passwd") &"'"
	rs.open sql,conn,1,3
	
	if not (rs.eof or err) then
	
	rs("passwd")=Request("passwd1")
	rs.update
	rs.close

%>

<script language=Javascript>
	alert("修改成功！");
	window.history.go(-1);	
</script>
<%

	else
%>

<script language=Javascript>
	alert("密码错误！请重新输入");
	window.history.go(-1);	
</script>
<%	
	end if
else
%>
<html>
<head>
<title>管理员管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</head>

<body bgcolor="#9CC7EF" text="#000000">
<br>
<br>
<br>
<br>
<form method="post" action="mima.asp" name="form1">
  <table width="12" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" align="center" height="197">
    <tbody> 
    <tr> 
      <td colspan=2 height="19" bgcolor="#4296E7" width="691"> 
        <p align="center"><b><span lang="zh-cn"><font color="#FFFFFF">修改密码</font></span></b></p>
      </td>
    </tr>
    <tr> 
      <td width=213 align="right" height="1" nowrap> 
        <div align="right"><span lang="zh-cn">旧密码</span>：</div>
      </td>
      <td width="468" height="1"> 
        <input type="passwd" name="passwd" size="12">&nbsp;
      </td>
    </tr>
    <tr>
      <td width=213 align="right" height="30" nowrap> 
        <span lang="zh-cn">新密码</span>：</td>
      <td width="468" height="30"> 
        <input type="passwd" name="passwd1" size="12"></td>
    </tr>
    <tr>
      <td width=213 align="right" height="1" nowrap> 
        <span lang="zh-cn">重输新密码：</span></td>
      <td width="468" height="1"> 
        <input type="passwd" name="passwd2" size="12"></td>
    </tr>
    <tr> 
      <td colspan="2" align="right" height="22" nowrap bgcolor="#4296E7" width="691"> 
        <div align="center"> 
          <input type="submit" name="Submit2" value="修改">
        </div>
      </td>
    </tr>
    </tbody> 
  </table>
</form>
</body>
</html>
<% end if %>