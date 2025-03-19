<%
sub endpage()
  dim endtime
  endtime=timer()
%>
<div align="center">
  <center>
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="48" bgcolor="#f3f3f3">
  <tr> 
    <td align="center">
	<br>
      <a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://liaowan.com');" href="#">设为首页</a>&nbsp;|&nbsp;<a href="javascript:window.external.addFavorite('http://liaowan.com','聊湾')">加入收藏</a>&nbsp;|&nbsp;<a href="mailto:chat@liaowan.com?subject=我看了聊湾">联系我们</a>&nbsp;|&nbsp;<a href="link.asp">友情链接</a>&nbsp;|
    <a href="guestbook.asp">来宾留言</a><br>
      CopyRight &copy; 聊湾 All Rights Reserved .
      <table border="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" width="171" id="AutoNumber24" bgcolor="#FFFFFF">
          <tr>
            <td width="25">
      <a target="_blank" title="违法和不良信息举报中心" href="http://net.china.cn/chinese/index.htm">
      <img border="0" src="../../images/jvbao.gif" width="25" height="25"></a></td>
            <td width="143"><font color="#6B6D6B">
            <a target="_blank" href="http://net.china.cn/chinese/index.htm" style="text-decoration: none">
            违法和不良信息举报中心</a></font></td>
          </tr>
        </table>
        </td>
  </tr>
</table>
  </center>
</div><%
CloseDatabase
end sub
%>