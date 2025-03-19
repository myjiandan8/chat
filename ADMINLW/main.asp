<!-- #include file="checkuser.asp"-->
<!-- #include file="sys/sys.asp"-->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>管理首页</title>
<LINK href="img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">

<% call top %>
<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="286">
    <tr>
      <td width="100%" background="img/bg.gif" height="22">&nbsp;<img border="0" src="img/jt.gif">
      <span lang="zh-cn">各位[聊湾]管理员同事须知</span></td>
    </tr>
    <tr>
      <td width="100%" height="262" valign="top">　<p><span lang="zh-cn">&nbsp;&nbsp;&nbsp; 
      大家拥有不同的权限来从事不同管理工作.</span></p>
      <p><span lang="zh-cn">&nbsp;&nbsp;&nbsp; 如果遇到问题和系统错误请及时同超管 李志军 联系 
      QQ:779811&nbsp; 0351-6179283 避免造成不必要的损失</span></p>
      <p>&nbsp;&nbsp;&nbsp; <b>您的管理权限是:
     <% 
      Select Case session("quanxian")
        Case 0
      	response.write "系统超级管理员,拥有所有的权限,那你一定是乐天大大拉!"
      	Case 1
      	response.write "系统管理员,拥有除系统设定外的所有权限!"
      
      end Select
      %> </b>
      
      </p>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="55">
    <tr>
      <td width="648" background="img/bg.gif" height="23" colspan="2">&nbsp;<img border="0" src="img/jt.gif">
      <span lang="zh-cn">你目前的电脑系统状态</span></td>
    </tr>
    <tr>8008061800
      <td width="32" height="30">&nbsp;<img border="0" src="img/ip.gif"></td>
      <td width="612" height="30">
<%
strsplit=split(Request.Servervariables("HTTP_USER_AGENT"),";")
strsplit(1)=replace(strsplit(1),"MSIE","Internet Explorer")
strsplit(2)=replace(strsplit(2),")","")
strsplit(2)=replace(strsplit(2),"NT 5.1","XP")
strsplit(2)=replace(strsplit(2),"NT 5.0","2000")
strsplit(1)=Trim(strsplit(1))
strsplit(2)=Trim(strsplit(2))

%>
&nbsp; 您的IP:<%=Request.ServerVariables("REMOTE_ADDR")%>&nbsp;&nbsp;&nbsp;&nbsp; 端口:<%=Request.ServerVariables("REMOTE_PORT")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                操作系统:<%=strsplit(2)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                浏览器:<%=strsplit(1)%></td>
    </tr>
    </table>
  </center>
</div>

<% call di  %>

</body>

</html>