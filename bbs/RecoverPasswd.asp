<!-- #include file="setup.asp" -->
<!-- #include file="inc/MD5.asp" -->


<%
top

username=HTMLEncode(Request("username"))
userpass=Trim(Request("userpass"))
if Request("username")="" then error("<li>�û�����û����д")

sql="select * from [user] where username='"&HTMLEncode(username)&"'"
rs.Open sql,Conn,1,3
if rs.eof then error2(""&username&"���û����ϲ�����")
if ""&rs("birthday")&""="" then error2("��ע���ʱ��û����д�������ڣ������޷�ͨ���˹����һ�����")
if Request("birthday")<>rs("birthday") then error2("����������д����")

if Request("menu")=2 then

if ""&rs("answer")&""="" or ""&rs("question")&""="" then error2("��ע���ʱ��û����д������ʾ�������������ʾ�𰸣������޷�ͨ���˹����һ�����")
if md5(Request("answer"))<>rs("answer") then error2("�𰸴���")
if Request("userpass")="" then error2("�������µ�����")
if Request("userpass")<>Request("userpass2") then error2("��2����������벻ͬ")

rs("userpass")=md5(userpass)
rs.update
rs.close


message=message&"<li>��������ɹ�<li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=Default.asp>")


end if

%>


<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� ��������</td>
</tr>
</table><br>



<table width="333" border="0" cellspacing="1" cellpadding="2" align="center" class=a2>
<form method="POST" action=RecoverPasswd.asp>
<input type=hidden name=username value=<%=Request("username")%>>
<input type=hidden name=birthyear value=<%=Request("birthyear")%>>
<input type=hidden name=birthmonth value=<%=Request("birthmonth")%>>
<input type=hidden name=birthday value=<%=Request("birthday")%>>
<input type=hidden name=menu value=2>
<tr>
<td width="100%" align="center" height="20" class=a1 colspan="2">��������</td>
</tr>
<tr class=a3>
<td width="50%" align="right" height="20">��ش����⣺</td>
<td width="50%" height="20"><%=rs("question")%></td>
</tr>
<tr class=a4>
<td width="50%" align="right" height="20">�𰸣�</td>
<td width="50%" height="20"><input size="15" value name="answer"></td>
</tr>
<tr class=a3>
<td width="50%" align="right" height="20">�������µ����룺</td>
<td width="50%" height="20"><input type="password" size="15" name="userpass"></td>
</tr>
<tr class=a4>
<td width="50%" align="right" height="20">���ٴ��������룺</td>
<td width="50%" height="20"><input type="password" size="15" name="userpass2"></td>
</tr>

<tr>
<td width="100%" align="center" height="20" colspan="2" bgcolor="FFFFFF"><input type="submit" value=" ȷ�� " name="Submit1">��<input type="reset" value=" ȡ�� " name="Submit"></td>
</tr>
</form>

</table>



<br>
<center>
<a href=javascript:history.back()>BACK </a><br>

<%
htmlend
%>