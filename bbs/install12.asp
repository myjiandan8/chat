<!-- #include file="setup.asp" -->
<!-- #include file="inc/MD5.asp" -->
<%
youip="127.0.0.1" '��������IP��ַ

if adminpassword<>"" and remoteaddr<>youip then error("<li>Ϊ�˰�ȫ�������༭ <font color=red>install.asp</font> �ڱ�����IP��ַ<li>��������ó� <font color=red>"&remoteaddr&"</font>")

top

administrators=Request("administrators")
if Request("menu")="ok" then

if administrators="" then error("<li>��û��������������")
if Request("adminpassword")="" then error("<li>��û�����ù�������")
If conn.Execute("Select id From [user] where username='"&administrators&"'" ).eof Then error("<li>"&administrators&"���û����ϻ�δ<a href=register.asp?username="&administrators&">ע��</a>")

conn.execute("update [clubconfig] set adminpassword='"&MD5(Request("adminpassword"))&"'")
conn.execute("update [user] set membercode=5 where username='"&administrators&"'")

message=message&"<li>��װ�ɹ�<li><a href=admin.asp target=_top>������������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=Default.asp>")
end if

%>
<title>��װBBSxp... - Powered By BBSxp</title><br><form method="post"><input type="hidden" value="ok" name="menu">  </div>
<center><table cellSpacing="0" cellPadding="3" width="160" border="0">
<tr>
<td width="626" bordercolor="FFFFFF">
<table width=435 cellpadding="1" cellspacing="1" border="0" class=a2><tbody>
<tr>
<td align=center colspan="2" height="25" class=a1><p><b>����������������</b></p></td>
</tr>


<tr class=a3><td align=right width="30%" height="20">����������</td>
<td height="20">
<input name=administrators size="30"></td></tr>
<tr class=a4><td align=right width="30%" height="10">�������룺</td>
<td height="10">
<input name=adminpassword type=password size="30"></td></tr>
<tr class=a3><td align=center height="10" colspan="2"><input type="submit" value=" ��һ�� "></td>
</tr>
</tbody></table>
</td></tr></table></FORM>
ע��<a href="register.asp">��������û�����û��ע�������������ע��</a>
<%htmlend%>