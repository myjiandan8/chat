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
dim starttime
starttime=timer()
%>
<body background="images/bg1.gif" topmargin="0">
<SCRIPT language=javascript src="lib/nav.js" type=text/javascript></SCRIPT>
<% Call caidan() %>
<%end sub%>

<% sub caidan %>
<link rel="stylesheet" href="Sams.css" type="text/css">
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lang.gif">
  <tr> 
    <td colspan="10" height="1" bgcolor="#aaaaaa"></td>
  </tr>
  <tr> 
    <td width="9%" height="26" align="center"> 
    </td>
    <td align="center" width="10%" onclick=MM_goToURL('parent','index.asp');return document.MM_returnValue onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6" > 
      聊天中心</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','news.asp');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      最新动态</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','article.asp');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      配置教程</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','download.asp');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      资源下载</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','model.asp');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      房间模板</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','z_pic.asp');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      精品图库</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','show.asp');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      合作网站</td>
    <td align="center" width="10%" onmouseover="this.style.backgroundColor='#ffffff'" onmouseout="this.style.backgroundColor=''" onclick=MM_goToURL('parent','/bbs');return document.MM_returnValue style="CURSOR: hand"><img src="images/square_topmenu.gif" width="5" height="6"> 
      视频社区</td>
    <td width="3%"></td>
  </tr>
  <tr> 
    <td colspan="10" height="1" bgcolor="#cccccc"></td>
  </tr>
</table>
<%end sub%>