<%
sub top()
%>
<html>
<title>��Ƶ���� �������� ���� ��������</title>
<style type="text/css">
<!--
body {
	background-image: url('img/bg.gif');
	margin-top: 0px
}
-->
</style><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT language=javascript src="lib/nav.js" type=text/javascript></SCRIPT>
</head>
<body leftmargin="0" bgcolor="#808080" style="background-image: url('inctop_����(1).asp')">
<div align="center">
  <center>
<table width="778" border="0" cellspacing="0" cellpadding="0" height="162" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td valign="bottom" background="images/top.gif" width="163" height="54"><img src="images/top.gif">&nbsp;&nbsp;</td>
    <td align="right" valign="top" background="images/top.gif" width="615" height="54">
    
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="36">
      <tr>
        <td width="100%" height="20">��</td>
      </tr>
      <tr>
        <td width="100%" height="16">
        <p align="right"><a href="/">��ҳ</a>&nbsp; <a href="./">
		<span style="text-decoration: none">��������</span></a>&nbsp; 
                <a style="text-decoration: none" href="../bbs">��Ƶ����</a>&nbsp;
                <font color="#000000"> <a target="_blank" href="/bbbs">
		<span style="text-decoration: none">�ɰ���̳</span></a> </font>&nbsp;<a target="_blank" href="http://www.kd68.com"><span style="text-decoration: none">��������</span></a>&nbsp; ����&nbsp; </td>
      </tr>
    </table>
��</td>
  </tr>
  <tr>
    <td width="778" height="100" align="center" colspan="2">
    <img border="0" src="images/bb.jpg"></td>
  </tr>
  <tr bgcolor="#eeeeee">
    <td height="3" bgcolor="#FF9C42" width="778" colspan="2"></td>
  </tr>
</table>
  </center>
</div>

<%
end sub
function vcount()
OPENadmin  
set rscount=conn.execute("select * from Vcount")
sql="UPDATE vcount  SET vtotal = vtotal + 1"
conn.execute (sql)
rscount.close
set rscount=nothing
end function
vcount
%>