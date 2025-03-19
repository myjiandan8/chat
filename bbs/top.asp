<%
sub top1()
%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../chat/Sams.css" type="text/css">
</head>
<body leftmargin="0" bgcolor="#808080" topmargin="0" bottommargin="0" rightmargin="0">

 <div align="center">
  <center>

<TABLE cellSpacing=0 width="778" border=0 cellpadding="0" id="table2">
  <TBODY>
  <TR>
    <TD width=448 background=../chat/pic/b2.gif height=40 align="left">
      <TABLE cellSpacing=0 width=80 border=0 id="table3">
      <TABLE cellSpacing=0 width=80 border=0 id="table4">
        <TBODY>
       <% if roomid=0 then %>
        <TR>
          <TD width=42 height=40><a title="聊湾主页" href="http://liaowan.com">
			<IMG height=36 src="../chat/pic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2>
			<IMG height=38 src="../chat/pic/b6.gif" width=2></TD>
          <TD>
			<a title="新用户注册" target="_blank" href="http://liaowan.com/vip/regadd.asp">
			<IMG height=36 src="../chat/pic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2>
			<IMG height=38 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a title="最新公告" href="../chat/news.asp">
			<IMG height=36 src="../chat/pic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2>
			<IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a title="相册" href="../chat/xiangce.asp">
			<IMG height=36 src="../chat/pic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a title="聊湾视频社区" target="_blank" href="http://liaowan.com/bbs">
			<IMG height=36 src="../chat/pic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2>
			<IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a title="留言" href="../chat/guestbook.asp">
			<IMG height=36 src="../chat/pic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2>
			<IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a target="_blank" href="../info/shop.asp"><IMG height=36 src="../chat/pic/d7.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2>
			<IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          </TR>
          
       <% else %>
        <TR>
          <TD width=42 height=40><a title="《<%=roomname%>》主页 " href=""><IMG height=36 src="../chat/pic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a href="http://liaowan.com/vip/regadd.asp" target="_blank"><IMG height=36 src="../chat/pic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a href="/?index=news" target="_blank"><IMG height=36 src="../chat/pic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD>
			<a href="/?index=xiangce"><IMG height=36 src="../chat/pic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a title="《<%=roomname%>》社区" href="/bbs"><IMG height=36 src="../chat/pic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD>
			<a href="/?index=guest/index"><IMG height=36 src="../chat/pic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          
          <TD><a href="../info/shop.asp"><IMG height=36 src="../chat/pic/d7.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="../chat/pic/b6.gif" width=2></TD>
          </TR>
        <% end if %>  
          </TBODY></TABLE>
    </TD>
    <TD width=62 background=../chat/pic/b2.gif height=40></TD>
    <TD width=258 background=../chat/pic/b2.gif height="40" align="right">

     <table border="0" width="100%" cellspacing="0" cellpadding="0" height="24" id="table5">
		<tr>
			<td height="24" valign="top" align="right">
			<% if roomid=0 then %>
			<a title="把聊湾社区添加到收藏夹" href="javascript:window.external.addFavorite('http://liaowan.com/bbs','聊湾社区')">
			<% else %>
			<a title="把《<%=roomname%>》社区添加到收藏夹" href="javascript:window.external.addFavorite('http://<%=roomid%>liaowan.com/bbs','《<%=roomname%>》-聊湾社区')">
			<% end if %>
			<img border="0" src="../chat/pic/top.gif"></a></td>
		</tr>
	</table>

      </TD>
    <TD width=10 background=../chat/pic/b2.gif height="40" align="right">

     　</TD>
   </TR></TBODY></TABLE>


  
<table width="778" border="0" cellspacing="0" cellpadding="0" height="100" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" id="table6">
    <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
  <tr>
    <td width="778" height="100" valign="top" align="center"><% if index_logo<>"" then %><img border="0" src="<%=index_logo%>"><% else %><img border="0" src="img/banr.jpg"><% end if %></td>
  </tr>
</table>
  </center>
</div>

<div align="center">
	<table border="0" width="778" id="table1" cellspacing="1" bgcolor="#FFFFFF">
		<tr>
			<td>



<%
end sub
%>	

<%
sub endpage()
%>

　</td>
		</tr>
	</table>
</div>


<div align="center">
  <center>
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="48" bgcolor="#f3f3f3" id="table7">
  <tr> 
    <td align="center">
	<br>
      <a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://liaowan.com');" href="#">设为首页</a>&nbsp;|&nbsp;<a href="javascript:window.external.addFavorite('http://liaowan.com','聊湾视频聊天中心')">加入收藏</a>&nbsp;|&nbsp;<a href="mailto:chat@liaowan.com?subject=我看了聊湾">联系我们</a>&nbsp;|&nbsp;<a href="../chat/link.asp">友情链接</a>&nbsp;|
    <a href="../chat/ad.asp">广告业务</a>&nbsp;|
    <a href="../info/shop.asp">购买房间</a>&nbsp;|
    <a href="/help">帮助手册</a>&nbsp;|
    <a href="../info/aboutus.asp">关于聊湾视频同盟</a>&nbsp;|
    <a href="../chat/guestbook.asp">来宾留言</a><br>
      <FONT color=#6b6d6b face="Arial">Copyright &copy; 2003-2004 
      LiaoWan.COM And VCU.CN&nbsp; Inc</FONT><FONT 
      color=#6b6d6b><FONT face=Arial>. All rights reserved. 
      </FONT>&nbsp;<b>聊湾-VCU视频聊天同盟（<a target="_blank" href="http://www.lwoo.net">龙软</a>）</b> </FONT>
      <a target="_blank" href="http://liaowan.com/"><font color="#939598">版权所有</font></a><FONT color=#6b6d6b><br>
	业务合作 广告投放 网站加盟 网站加盟 热线：<font face="Arial">乐天 020-80513192 QQ:779811&nbsp; 
	MSN:779811@qq.com<BR>客服电话:020-80513192 传真:020-8634636 转808&lt;音乐之声工作部&gt;&nbsp;&nbsp; QQ 
	779811&nbsp;&nbsp;</font><table border="0" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" width="172" id="table8" bgcolor="#FFFFFF" cellspacing="2">
          <tr>
            <td width="42" valign="top">
      <a href="http://musicest.com" target="_blank">
		<img border="0" src="../logo/muisc.gif" title="香港音乐之声国际企业(中国)文化传播有限公司"></a></td>
            <td width="54"><a href="http://vcu.cn" target="_blank">
			<img border="0" src="../logo/vcu.gif" width="51" height="51" title="VCU(聊湾)视频聊天同盟"></a></td>
            <td width="36">
			<a href="http://net.china.cn/chinese/index.htm" target="_blank">
			<img border="0" src="../logo/jvbao.gif" width="51" height="51" title="中国互联网不良信息举报中心"></a></td>
            <td width="9">
			<a target="_blank" href="http://www.monternet.com/moneditor/cs/index.html">
			<img border="0" src="../logo/yidong.gif" width="51" height="51" title="移动梦网"></a></td>
          </tr>
        	</table>
</td>
  </tr>
</table>
  </center>
</div>
</body></html>

<%
end sub
%>