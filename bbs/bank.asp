<!-- #include file="setup.asp" -->
<%
top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")

sql="select * from [user] where username='"&Request.Cookies("username")&"'"
rs.Open sql,Conn,1,3

accrual=fix(rs("savemoney")/1000*(now-rs("savetime")))


select case Request.Form("menu")
case "save"
save
case "draw"
draw
case "virement"
virement
end select

%>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� 
<a href="bank.asp">��������</a></td>
</tr>
</table><br>




<center>
<table border="0" width="99%" >
	<tr>
		<td width="50%" align="center" valign="top">

<img src="images/plus/bank.gif"><br>
��<table border="0" cellpadding="4" cellspacing="1" width="377" class=a2>
<tr>
<td width="50%" colspan="4" class=a1 align="center">���������˺�</td>
</tr>
<tr class=a4>
<td width="16%" align="center">�ֽ�</td>
<td width="28%"><b><font color="aa0000"><%=rs("money")%> </font>
���</b></td>
<td width="16%" align="center">��Ϣ��</td>
<td width="31%"><b><font color="aa0000"><%=accrual%></font> ���</b></td>
</tr>
<tr class=a4>
<td width="16%" align="center">��</td>
<td width="28%"><b><font color="aa0000"><%=rs("savemoney")%></font> ���</b></td>
<td width="16%" align="center">�ܹ���</td>
<td width="31%"><b><font color="aa0000"><%=rs("savemoney")+rs("money")+accrual%></font>
���</b></td>
</tr>
<tr class=a4>
<td width="23%" align="center">���ʱ�䣺</td>
<td width="68%" colspan="3"><%=rs("savetime")%></td>
</tr>
<tr class=a4>
<td width="91%" colspan="4">�����е���ϢΪÿ�� <font color="#FF0000"><b>0.1%</b></font>��ÿ�δ�ȡ���Զ�������Ϣ��</td>
</tr>
</table>
		</td>
		<td align="center">
		
<table cellSpacing="1" cellPadding="3" border="0" width="377" height="47" class=a2><tr>
<td class=a1 height="25">&nbsp; <b>��Ҫ���</b>&nbsp;</td>
<td class=a1 height="25" align="center">�����ֽ� <b><%=rs("money")%></b> <b>���</b></td></tr><tr class=a4>
<td height="25" align="center">
<form action="bank.asp?menu=save" method="post">&nbsp; ��Ҫ��
<input size="10" value="1000" name="qmoney" MAXSIZE="32"><b> ���</b>
</td>
<td height="25" align="center">
<input type="submit" value=" �� �� " name="B2"></td></tr></table></form>

<table cellSpacing="1" cellPadding="3" border="0" width="377" height="47" class=a2><tr>
<td class=a1 height="25">&nbsp; <b>��Ҫȡ��</b>&nbsp;
</td>
<td class=a1 height="25" align="center">���д�� <b><%=rs("savemoney")%></b> <b>���</b></td></tr><tr class=a4>
<td height="25" align="center">
<form action="bank.asp?menu=draw" method="post">&nbsp; ��Ҫȡ
<input size="10" value="1000" name="qmoney" MAXSIZE="32"><b> ���</b>
</td>
<td height="25" align="center">
<input type="submit" value=" ȡ �� " name="B2"></td></tr></table></form>
		
		
<table cellSpacing="1" cellPadding="3" border="0" width="377" height="47" class=a2><tr>
<td class=a1 height="25">&nbsp; <b>��Ҫת��</b>&nbsp;
</td>
<td class=a1 height="25" align="right">���ת�˽��Ϊ <b>1000</b> <b>���</b></td></tr><tr class=a4>
<td height="25" align="center" colspan="2">
<form action="bank.asp?menu=virement" method="post">&nbsp; ��Ҫ��
<input size="5" value="1000" name="qmoney" MAXSIZE="32"><b> ���</b> ת��
<input size="10" name="dxname" MAXSIZE="32"> ���˻�
<input type="submit" value=" ȷ �� " name="B2"></td>
</tr></table></form>
		
		</td>
	</tr>
	</table>






<%
rs.close
htmlend

sub save
qmoney=int(Request("qmoney"))
if qmoney > rs("money") then error("<li>�����ֽ�û����ô��ɣ�")
if qmoney<1 then error("<li>����Ϊ�㣡")

rs("savemoney")=rs("savemoney")+qmoney+accrual
rs("money")=rs("money")-qmoney
rs("savetime")=now()
rs.update
rs.close
message="<li>���ɹ�<li><a href=bank.asp>��������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(message&"<meta http-equiv=refresh content=3;url='bank.asp'>")
end sub


sub draw
qmoney=int(Request("qmoney"))
if qmoney>rs("savemoney") then error("<li>���Ĵ�����")
if qmoney<1 then error("<li>����Ϊ�㣡")

rs("savemoney")=rs("savemoney")-qmoney+accrual
rs("money")=rs("money")+qmoney
rs("savetime")=now()
rs.update
rs.close
message="<li>ȡ��ɹ�<li><a href=bank.asp>��������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(message&"<meta http-equiv=refresh content=3;url='bank.asp'>")
end sub

sub virement
dxname=HTMLEncode(Request("dxname"))

if dxname=Request.Cookies("username") then error("<li>����������Լ����˺ţ�")


qmoney=int(Request("qmoney"))
if qmoney>rs("savemoney") then error"<li>�����ʻ���������"
if qmoney<1000 then error"<li>ת�ʲ��ܵ���1000��"
If conn.Execute("Select id From [user] where username='"&dxname&"'" ).eof Then error("<li>����"&dxname&"���˺�")

rs("savemoney")=rs("savemoney")-qmoney+accrual
rs("savetime")=now()
rs.update
rs.close

conn.execute("update [user] set [money]=[money]+"&qmoney&" where username='"&dxname&"'")

message="<li>ת�˳ɹ�<li><a href=bank.asp>��������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(message&"<meta http-equiv=refresh content=3;url='bank.asp'>")
end sub


%>