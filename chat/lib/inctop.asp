<%
sub top()
%>
<html>
<title>聊湾 视频聊天 语音聊天 蓝天语音 LiaoWan.Com</title>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT language=javascript src="lib/nav.js" type=text/javascript></SCRIPT>
<link rel="stylesheet" href="Sams.css" type="text/css">
</head>
<body leftmargin="0" bgcolor="#808080" topmargin="0" bottommargin="0" rightmargin="0">


<div align="center">
  <center>

<TABLE cellSpacing=0 width="778" border=0 cellpadding="0">
  <TBODY>
  <TR>
    <TD width=448 background=pic/b2.gif height=40 align="left">
      <TABLE cellSpacing=0 width=80 border=0>
      <TABLE cellSpacing=0 width=80 border=0>
        <TBODY>
        <TR>
          <TD width=42 height=40><a title="聊湾主页" href="http://liaowan.com"><IMG height=36 src="pic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="新用户注册" href="http://liaowan.com/newuser/regadd.asp"  target="_blank" ><IMG height=36 src="pic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="最新公告" href="news.asp"><IMG height=36 src="pic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="相册" href="http://liaowan.com/"><IMG height=36 src="pic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="聊湾视频社区" target="_blank" href="http://liaowan.com/bbs"><IMG height=36 src="pic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="留言" href="guestbook.asp"><IMG height=36 src="pic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><IMG height=36 src="pic/d7.gif" width=40 border=0></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          </TR></TBODY></TABLE>
    </TD>
    <TD width=62 background=pic/b2.gif height=40></TD>
    <TD width=258 background=pic/b2.gif height="40" align="right">

     <table border="0" width="100%" cellspacing="0" cellpadding="0" height="24">
		<tr>
			<td height="24" valign="top" align="right">
			<a title="把聊湾添加到收藏夹" href="javascript:window.external.addFavorite('http://liaowan.com','聊湾视频聊天中心')">
			<img border="0" src="pic/top.gif"></a></td>
		</tr>
	</table>

      </TD>
    <TD width=10 background=pic/b2.gif height="40" align="right">

     　</TD>
   </TR></TBODY></TABLE>


  
<table width="778" border="0" cellspacing="0" cellpadding="0" height="100" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
  <tr>
    <td width="778" height="100" valign="top">
    <p align="center">
	<img border="0" src="images/bb.jpg" width="778" height="100"></td>
  </tr>
</table>
  </center>
</div>
<link rel="stylesheet" href="Sams.css" type="text/css">

<div align="center">
<table width="778" border="0" cellpadding="0" cellspacing="0" bgcolor="#666666" height="25">
  <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
  <tr> 
    <td height="25" bgcolor="#999999">
	<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="18">
		<tr>
			<td width="117">　</td>
			<td>乐天</td>
			<td width="62">　</td>
		</tr>
	</table>
	</td>
  </tr>
    <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
</table>
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


<%sub index_nav()%>
<link rel="stylesheet" href="Sams.css" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
//-->
</script>
<% Call caidan() %>
<%end sub%>

<%sub news_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub article_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub download_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub service_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub coolsites_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub admin_nav()
%>
<body background="images/bg1.gif" topmargin="0">
<SCRIPT language=javascript src="lib/nav.js" type=text/javascript></SCRIPT>
<% Call caidan() %>

<%end sub%>

<% sub caidan %>

<%end sub%>