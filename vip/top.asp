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
			�û�ID��<%=uid%></td>
		</tr>
				<tr>
			<td height="3" style="border-bottom-style: solid; border-bottom-width: 1px">
			</td>
		</tr>

		<tr>
			<td style="border-style: solid; border-width: 1px" height="23" align="center" bgcolor="#555555">
			<font color="#FFFFFF">���ʺŹ���</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="3" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="50" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><a href="index.asp">������ҳ</a></td>
				</tr>
				<tr>
					<td align="center"><a href="mima.asp">�޸�����</a></td>
				</tr>
				<tr>
					<td align="center"><a href="vip_dangan.asp">�޸�����</a></td>
				</tr>
				<tr>
					<td align="center"><a href="vip_diqu.asp">��������</a></td>
				</tr>
				<tr>
					<td align="center"><a href="../logout.asp">�˳���½</a></td>
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
			<font color="#FFFFFF">���������</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="3" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="115" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><a href="shop_index.asp">�����������</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#FF0000">��</font><a href="shop_bchat.asp">����������</a></td>
				</tr>
				<tr>
					<td align="center"><a href="shop_index.asp#cp">����������Ʒ</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#FF9900">��</font>����������</td>
				</tr>
				<tr>
					<td align="center">����������Ʒ</td>
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
			<font color="#FFFFFF">�����˷���</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="3" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="99" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><font color="#93DA14">��</font><a target="_blank" href="/bbs/friend.asp">�����б�</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#93DA14">��</font><a target="_blank" href="/bbs/message.asp">���ŷ���</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#800000">��</font><a target="_blank" href="/bbs/favorites.asp">��ַ��ǩ</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#FF00FF">��</font><a target="_blank" href="/bbs/calendar.asp">�� �� ��</a></td>
				</tr>
				<tr>
					<td align="center"><font color="#93DA14">��</font><a target="_blank" href="/bbs/EditProfile.asp?menu=option">����ѡ��</a></td>
				</tr>
				<tr>
					<td align="center"><a href="room_add.asp">�Խ�������</a></td>
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
			<font color="#FFFFFF">���û���½��</font></td>
		</tr>
		<tr>
			<td style="border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" height="7" align="center">
			</td>
		</tr>
		<tr>
			<td style="border-style: solid; border-width: 1px" height="50" align="center" bgcolor="#EFEFEF" bordercolor="#C0C0C0">
			<table border="0" width="100%" id="table10" cellspacing="3" cellpadding="3">
				<tr>
					<td align="center"><a href="login.asp">�û���½</a></td>
				</tr>
				<tr>
					<td align="center"><a href="regadd.asp">�û�ע��</a></td>
				</tr>
				<tr>
					<td align="center"><a href="regadd.asp">ע��Э��</a></td>
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
    <td width="6" valign="top" height="353">��</td>
  </tr>
  
</table>
  </center>
</div>


<%
Call dibu 
end sub
%>