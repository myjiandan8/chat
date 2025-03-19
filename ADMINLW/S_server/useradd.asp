<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call quanxian(session("UID"),"admin",0)
%>
<html>
<head>
<title>添加管理员</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</head>
<body bgcolor="#9CC7EF" text="#000000">
<br>
<br>
<br>
<form method="post" action="saveUserAdd.asp" name="form1">
  <table width="60%" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" align="center" height="231">
    <tr bgcolor="#4296E7"> 
      <td colspan="2" height="19"> 
        <div align="center"><font color="#FFFFFF">添加管理员</font></div>
      </td>
    </tr>
    <tr> 
      <td width="41%" nowrap height="19"> 
        <div align="right">管理员帐号</div>
      </td>
      <td width="59%" height="19"> 
        <input type="text" name="UID" size="10">
      </td>
    </tr>
    <tr>
      <td width="41%" nowrap height="2">
        <div align="right">管理员姓名</div>
      </td>
      <td width="59%" height="2">
        <input type="text" name="name" size="10">
      </td>
    </tr>
    <tr>
      <td width="41%" nowrap height="5">
        <p align="right">管理员权限</td>
      <td width="59%" height="5">
        <select size="1" name="quanxian">
        <option value="0">超级管理员</option>
        <option value="1" selected>巡站管理员</option>
        <option value="2">新闻编辑</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        </select></td>
    </tr>
    <tr> 
      <td width="41%" nowrap height="19"> 
        <div align="right">管理员密码</div>
      </td>
      <td width="59%" height="19"> 
        <input type="passwd" name="passwd1" size="10">
      </td>
    </tr>
    <tr> 
      <td width="41%" nowrap height="4"> 
        <div align="right">再输入密码</div>
      </td>
      <td width="59%" height="4"> 
        <input type="passwd" name="passwd2" size="10">
      </td>
    </tr>
    <tr>
      <td width="41%" nowrap height="14"> 
        <p align="right">其他说明</td>
      <td width="59%" height="14"> 
        <textarea rows="7" name="shuoming" cols="32"></textarea></td>
    </tr>
    <tr> 
      <td colspan="2" height="22"> 
        <div align="center"> 
          <input type="submit" name="Submit" value=" 添 加 ">
        </div>
      </td>
    </tr>
    <tr bgcolor="#4296E7"> 
      <td colspan="2" height="19">　</td>
    </tr>
  </table>
</form>
</body>
</html>