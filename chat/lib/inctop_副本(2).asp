<%
sub top()
%>
<html>
<title>聊湾 视频聊天 语音聊天 蓝天语音 LiaoWan.Com</title>
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
<body leftmargin="0" bgcolor="#808080" topmargin="0" bottommargin="0" rightmargin="0" style="background-image: url('inctop_副本(2).asp')">
<div align="center">
  <center>
<table width="778" border="0" cellspacing="0" cellpadding="0" height="140" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td valign="bottom" background="../../images/bg_top_01.gif" width="163" height="34"></td>
    <td align="right" valign="top" background="../../images/bg_top_01.gif" width="337" height="34">
    

	</td>
    <td background="../../images/bg_top_01.gif" width="270" height="34">
    

			<img border="0" src="../../images/topnew.gif" width="260" height="25"></td>
    <td align="right" valign="top" background="../../images/bg_top_01.gif" width="8" height="34">
    

　</td>
  </tr>
  <tr>
    <td width="778" height="100" align="center" colspan="4">
    <img border="0" src="images/bb.jpg"></td>
  </tr>
  <tr bgcolor="#eeeeee">
    <td height="5" bgcolor="#FF9C42" width="778" colspan="4"></td>
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