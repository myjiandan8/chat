<!--#include file="../inc/top.asp"-->
<%
sub top()
Call toubu
%>

<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="356">

  <tr> 
    <td valign="top" width="209" height="353">

<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="356">
  <tr> 
    <td valign="top" width="167" height="353" align="center"> 
    <table border="0" width="130" id="table9" cellspacing="0" cellpadding="0">
		<tr>
			<td height="5" style="border-bottom-style: solid; border-bottom-width: 1px">
			</td>
		</tr>
		<% if un<>"" then %>
				<tr>
			<td height="20" style="border-bottom-style: solid; border-bottom-width: 1px">
			用户ID：<%=uid%></td>
		</tr>
				<tr>
			<td height="3" style="border-bottom-style: solid; border-bottom-width: 1px">
			</td>
		</tr>

		<tr>
			<td style="border-style: solid; border-width: 1px" height="23" align="center" bgcolor="#555555">
			<font color="#FFFFFF">·帐号管理·</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="3" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="50" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><a href="index.asp">管理首页</a></td>
				</tr>
				<tr>
					<td align="center"><a href="mima.asp">修改密码</a></td>
				</tr>
				<tr>
					<td align="center"><a href="vip_dangan.asp">修改资料</a></td>
				</tr>
				<tr>
					<td align="center"><a href="vip_diqu.asp">地区资料</a></td>
				</tr>
				<tr>
					<td align="center"><a href="../logout.asp">退出登陆</a></td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="10" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="23" align="center" bgcolor="#555555">
			<font color="#FFFFFF">·财务管理·</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="3" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="115" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><a href="shop_index.asp">财务管理中心</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#FF0000">·</font><a href="shop_bchat.asp">购买聊天室</a></td>
				</tr>
				<tr>
					<td align="center"><a href="shop_index.asp#cp">购买其他产品</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#FF9900">·</font>管理聊天室</td>
				</tr>
				<tr>
					<td align="center">管理其他产品</td>
				</tr>

			</table>
			</td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="10" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="23" align="center" bgcolor="#555555">
			<font color="#FFFFFF">·个人服务·</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="3" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="99" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><font color="#93DA14">·</font><a target="_blank" href="/bbs/friend.asp">好友列表</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#93DA14">·</font><a target="_blank" href="/bbs/message.asp">短信服务</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#800000">·</font><a target="_blank" href="/bbs/favorites.asp">网址书签</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#FF00FF">·</font><a target="_blank" href="/bbs/calendar.asp">日 记 本</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#93DA14">·</font><a target="_blank" href="/bbs/EditProfile.asp?menu=option">社区选项</a></td>
				</tr>
				<tr>
					<td align="center"><a href="room_add.asp">自建聊天室</a></td>
				</tr>

				</table>
			</td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="15" align="center">
			</td>
		</tr>
		<% else %>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="23" align="center" bgcolor="#555555">
			<font color="#FFFFFF">·用户登陆·</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="7" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="50" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><a href="login.asp">用户登陆</a></td>
				</tr>
				<tr>
					<td align="center"><a href="regadd.asp">用户注册</a></td>
				</tr>
				<tr>
					<td align="center"><a href="regadd.asp">注册协议</a></td>
				</tr>
				
			</table>
			</td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="125" align="center">
			</td>
		</tr>
	  <% end if %>

	</table>
   

</td>
    <td width="4" background="../chat/images/dotlinev.gif" height="353"></td>
    <td width="4" valign="top" height="353"></td>
    <td width="597" valign="top" height="353"> 
      
      
    <table border="0" cellpadding="2" cellspacing="1" width="101%" id="AutoNumber1" height="434">
            <tr>
        <td width="100%" height="3" valign="top" align="center">

		</td>
        </tr>
        
              <tr>
        <td width="100%" height="427" valign="top" align="center">
<%
end sub
%>	
	

<%
sub endpage()
%>
	
	</td>
        	</tr>
			
 
    	</table>
      
      
    </td>
    <td width="6" valign="top" height="353">　</td>
  </tr>
  
</table>
  </center>
</div>


<%
Call dibu 
end sub
%>