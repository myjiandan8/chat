<%
sub top()
%>
<html>
<title>聊湾-VCU视频聊天同盟 视频聊天|语音聊天|远程教育|网络电话|网络交友|可视语音聊天 音乐之声国际企业  LiaoWan.Com VCU.CN</title>
<head>
<META content="视频聊天 语音聊天 聊天 聊湾视频聊天网 远程教育 网络电话 网络交友 可视语音聊天" name=Keywords>
<META content="聊湾视频聊天网" name=Description>
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
    <TD width=380 background=pic/b2.gif height=40 align="left">
      <TABLE cellSpacing=0 width=80 border=0>
      <TABLE cellSpacing=0 width=80 border=0>
        <TBODY>
        <TR>
          <TD width=42 height=40><a title="聊湾主页" href="http://liaowan.com"><IMG height=36 src="pic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a href="http://liaowan.com/vip/regadd.asp" target="_blank"><IMG height=36 src="pic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="最新公告" href="/news"><IMG height=36 src="pic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="相册" href="xiangce.asp"><IMG height=36 src="pic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="网址之家" href="http://w.liaowan.com" target="_blank">
			<IMG height=36 src="pic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="聊湾视频社区" target="_blank" href="http://liaowan.com/bbs">
			<IMG height=36 src="pic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a target="_blank" href="http://bbs.liaowan.com">
			<IMG height=36 src="pic/d8.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><IMG height=36 src="pic/d7.gif" width=40 border=0></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          </TR></TBODY></TABLE>
    </TD>
    <TD width=102 background=pic/b2.gif height=40>
    <% if maxroom>0 then %>
	<table border="0" width="100%" id="table2" cellspacing="1">
		<tr>
			<td>总在线<b><font color="#FF0000"><%=maxnum%></font></b>人</td>
		</tr>
		<tr>
			<td>运行<b><font color="#008000"><%=maxroom%></font></b>聊天室</td>
		</tr>
	</table>
	<% end if %>
	</TD>
    <TD width=286 background=pic/b2.gif height="40" align="right">

     <table border="0" width="100%" cellspacing="0" cellpadding="0" height="24">
		<tr>
			<td height="24" valign="top" align="right">
			<a title="把聊湾添加到收藏夹" href="javascript:window.external.addFavorite('http://liaowan.com','聊湾-VCU视频聊天同盟')">
			<img border="0" src="pic/top.gif"></a></td>
		</tr>
	</table>

      </TD>
    <TD width=10 background=pic/b2.gif height="40" align="right">

     　</TD>
   </TR></TBODY></TABLE>


  
<table width="778" border="0" cellspacing="0" cellpadding="0" height="100" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
  <tr>
    <td width="778" height="120" valign="top" align="center"><% 
	if index_top_pic="" then index_top_pic="../ad/show/top-mics.jpg"
	if index_url<>"" then 
   %><a href="<%=index_url%>">
   <%
   	    aaa="</a>"
     end if
   %>
	<img border="0" src="<%=index_top_pic%>" width="778" height="120"><%=aaa%></td>
  </tr>
</table>
  </center>
</div>
<link rel="stylesheet" href="Sams.css" type="text/css">

<div align="center">
<table width="778" border="0" cellpadding="0" cellspacing="0" height="36" background="pic/B1.gif">
  <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
  <tr> 
    <td height="35">
	<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="16">
		<tr>
			<td width="114">　</td>
			<td valign="bottom"> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="/">聊天中心</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="news.asp">最新动态</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="xiangce.asp">聊友相册</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="article.asp">配置教程</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="download.asp">资源下载</a>&nbsp; <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="peizhi.asp">配置脚本</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="z_pic.asp">精品图库</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a target="_blank" href="http://bbs.liaowan.com">视聊社区</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a target="_blank" href="../info/shop.asp">购买房间</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="../info/aboutus.asp">聊湾简介</a></td>
			<td width="4">　</td>
		</tr>
	</table>
	</td>
  </tr>

</table>
</div>

<%
end sub
%>


<%sub index_nav()%>




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