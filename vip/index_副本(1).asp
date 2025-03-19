<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<%
UN= Request.Cookies("username")
if UN<>""then
	sql="select name,sex,pic,uid from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
	UID=rs("uid")
end if
%>
<head>
<style>
<!--
TD			{FONT-SIZE: 12px; COLOR: #000000; WORD-BREAK: break-all; }
.text			{FONT-SIZE: 13px; line-height: 160%;font-family: "宋体"}
.en			{FONT-FAMILY: verdana; FONT-SIZE: 11px; }
-->
</style>
</head>          
          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>用户管理中心</TITLE>

<% call top %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="578" id="AutoNumber1" height="415">
    <tr>
      <td width="100%" height="1"></td>
    </tr>
    <tr>
      <td width="100%" height="364" align="center">
      <div align="left">
      <table cellSpacing="0" cellPadding="0" width="543" border="0" style="border-collapse: collapse" bordercolor="#111111" height="77">
        <tr>
          <td align="left" height="64" width="543">
          <font class="titletext" color="#ff0000">
          <b>
          <img border="0" src="img/Main_02.gif">欢迎 [ <%=UN%> ] 来到聊湾用户管理中心 </b>
          您的聊湾数字ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="543"></td>
        </tr>
        
        <tr>
          <td height="12" width="543">
          <p align="center"></td>
        </tr>
        
      </table>
      </div>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="578" id="AutoNumber2" height="250">
        <tr>
          <td width="578" height="1" colspan="4"></td>
        </tr>
        <tr>
          <td width="517" height="21" align="right" colspan="3">
          如果您是在公共场合使用计算机，离开时别忘了<a style="color: #0000FF; text-decoration: underline" target="_self" href="../Logout.asp?user=<%=UN%>">退出</a>聊湾用户管理中心...&nbsp;&nbsp;&nbsp; </td>
          <td width="61" height="249" rowspan="11" valign="bottom"><img border="0" src="img/girl01.gif"></td>
        </tr>

        <tr>
          <td width="104" height="19" align="center">
          我的虚拟形象</td>
          <td width="414" height="18" colspan="2">&nbsp;</td>
          </tr>
        <tr>
          <td width="104" height="162" align="center" rowspan="5">
<img border="0" src="../PIC/FACE/<%if rs("sex")=1 then Response.Write "gg"%><%if rs("sex")=2 then Response.Write "mm"%><%=rs("pic")%>.gif"><br>
<br>
<a href="dudu">更换形象</a></td>
          <td width="52" height="28"><img border="0" src="img/button_1.gif"> </td>
          <td width="363" height="28">
          <a href="vip_dangan.asp">修改档案</a> |
          <a href="vip_diqu.asp">修改所在地</a> |
          <a href="mima.asp">修改密码</a> |
          <a target="_self" href="../Logout.asp?user=<%=UN%>">退出登陆</a></td>
          </tr>
        <tr>
          <td width="52" height="28"><img border="0" src="img/button_2.gif"></td>
          <td width="363" height="28">
          <a href="../chat">聊天主页</a> |
          <a target="_blank" href="room_add.asp">自建房间</a> |
          <a href="shop_bchat.asp">购买房间</a> | 
			<a href="shop_bliaochat.asp"><font color="#FF0000">申请碧聊通</font></a> | 
			<a href="../admin">私房管理</a> 
          | </td>
          </tr>
        <tr>
          <td width="52" height="29"><img border="0" src="img/button_7.gif"></td>
          <td width="363" height="29">
          <a target="_blank" href="/bbs/favorites.asp">网址书签</a> | 
			<a target="_blank" href="/bbs/friend.asp">通讯录</a> | 
			<a href="calendar.asp">日记本</a> | <a href="/bbs/message.asp">查看留言</a> |</td>
          </tr>
        <tr>
          <td width="52" height="31"><img border="0" src="img/button_4.gif"></td>
          <td width="363" height="31"><a href="/bbs/friend.asp">好友列表</a> | 黑名单 |</td>
          </tr>
        <tr>
          <td width="52" height="33"><img border="0" src="img/button_5.gif"></td>
          <td width="363" height="33"><a target="_blank" href="/bbs">视频社区</a> | 音乐在线 | </td>
          </tr>
        <tr>
          <td width="517" height="1" colspan="3" align="center">
          </td>
          </tr>
        <tr>
          <td width="517" height="15" valign="top" colspan="3" align="center">
          <p></p>
			<p></p>
			<p>
          </td>
          </tr>

        <tr>
          <td width="517" height="16" valign="top" colspan="3">
          <font color="#008000">
          <b>【碧聊通】</b></font><p>&nbsp;&nbsp; 在碧聊拥有自己房间的用户你们有福了，聊湾的碧聊房间挂接系统[<font color="#FF0000">订价980元人民币</font>]，<font color="#008000">现<b>免费</b>提供试用</font>，<font color="#FF0000">使用期为2个月</font>，您将免费享受同聊湾的聊天室一样的服务，拥有自己的聊天室的<b><font color="#000080">网站系统（包括留言系统、新闻、友情连接、网站可自定义界面和聊天室标志。）、相册系统、论坛社区系统、俱乐部[帮会]系统</font></b>。让你一次拥有所有的这一切，而这一切现在都是免费的提供给你。GO 
			GO GO！<br>
&nbsp;&nbsp;&nbsp; <b><font color="#800000">注</font></b>：假如贵房间能在每日都达到80人以上的在先率，该服务将永久免费提供给你。<br>
&nbsp;&nbsp;&nbsp; <b><font color="#008000">注</font></b>：如果你现在拥有自己的网站。更应该申请本服务，服务中的所有系统都是可以独立挂接<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 到贵网站的子项目。<br>
&nbsp;&nbsp;&nbsp; <b><font color="#000080">注</font></b>：你要保证你是要申请房间的拥有人，否则在真真所有人申诉的话我们有权将系统收回或<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 转交真正的拥有人。<br>
			<br>
&nbsp;&nbsp;&nbsp; <b>【详细的功能与挂接说明点这里】</b><br>
　</td>
          </tr>
		<tr>
          <td width="517" height="15" valign="top" colspan="3" align="center">
          </td>
          </tr>

        </table>
      </td>
    </tr>
    <tr>
      <td width="100%" height="44" align="center">
      <p align="left"><font color="#008000">提示</font>:财务管理需要128位安全SSL传输，请IE5.5以下版本的浏览器 
		下载微软128bit加密包：<br>
&nbsp;&nbsp;&nbsp;&nbsp;
		<a target="_blank" href="http://www.microsoft.com/windows/ie_intl/cn/download/128bit/highenc.mspx">
		http://www.microsoft.com/windows/ie_intl/cn/download/128bit/highenc.mspx</a></td>
    </tr>
	<tr>
      <td width="100%" height="6" align="center">
      </td>
    </tr>
    </table>
  </center>
</div>

    
    <p>
          </p>



<%call endpage()
%>