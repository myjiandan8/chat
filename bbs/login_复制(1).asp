<!-- #include file="setup.asp" -->
<!-- #include file="inc/MD5.asp" -->
<%
top

select case Request("menu")

case "password"


%>



<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� ��֤����</td>
</tr>
</table>
<br>
<table width="333" border="0" cellspacing="1" cellpadding="2" align="center" class=a2>

<form action="login_����(1).asp" method="post">
<input type="hidden" value="passwordok" name="menu">
<input type="hidden" value="<%=Request("url")%>" name="url">
<tr>
<td width="328" height="25" align="center" class=a1>
��¼��̳
</td></tr><tr>
<td height="19" width="328" valign="top" align="center" class=a3>
ͨ������: <input type="password" size="15" name="password"><br>

<input type="submit" value=" ��¼ " name="Submit1">��<input type="reset" value=" ȡ�� " name="Submit">
</td></tr> </form></table>

<br>
<center>
<a href=javascript:history.back()>BACK </a><br>


<%
htmlend
case "passwordok"
Response.Cookies("password")=Request("password")
response.redirect Request("url")

case "add"


url=Request("url")
username=HTMLEncode(Trim(Request("username")))
userpass=md5(Trim(Request("userpass")))
if username=empty then error("<li>�û���û������")

sql="select * from [user] where username='"&username&"'"
Set Rs1=Conn.Execute(SQL)
if rs1.eof then error("<li>���û�����δ<a href=register.asp?username="&username&">ע��</a>")

if Len(rs1("userpass"))<16 then
if Request("userpass")<>rs1("userpass") then error("<li>��������������")
conn.execute("update [user] set userpass='"&userpass&"' where username='"&username&"'")

elseif Len(rs1("userpass"))=16 then
mdfive=16
if md5(Request("userpass"))<>rs1("userpass") then error("<li>��������������")
conn.execute("update [user] set userpass='"&userpass&"' where username='"&username&"'")

else
if userpass<>rs1("userpass") then error("<li>��������������")
end if


if rs1("membercode")=0 then error("<li>�����ʺ���δ����")
Response.Cookies("username")=username
Response.Cookies("userpass")=userpass
Response.Cookies("eremite")="0"

if Request("eremite")="1" then Response.Cookies("eremite")="1"

'if Request("xuansave")=1 then
'Response.Cookies("eremite").Expires=date+365
'Response.Cookies("username").Expires=date+365
'Response.Cookies("userpass").Expires=date+365
'end if

if url<>empty and instr(url,"login.asp")=0 and instr(url,"left.asp")=0 and instr(url,"error.asp")=0 then
response.redirect url
else
response.write "<SCRIPT>location='Default.asp';</SCRIPT>"
end if

case "out"
conn.execute("delete from [online] where sessionid='"&session.sessionid&"'")
Response.Cookies("username")=""
Response.Cookies("userpass")=""
succtitle="�Ѿ��ɹ��˳�"
message=message&"<li><a href=Default.asp>������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=Default.asp>")

end select
%>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> ��  ��¼����</td>
</tr>
</table><br>
<table width="333" border="0" cellspacing="1" cellpadding="2" align="center" class=a2>

<form method="post" action="../userlogin.asp" target="_top">
<input type="hidden" value="add" name="menu">
<input type="hidden" value="<%=Request.ServerVariables("HTTP_REFERER")%>" name="url">
<tr>
<td width="328" height="25" align="center" class=a1 colspan="2">
��¼����
</td></tr><tr>
<td height="23" width="110" valign="top" align="center" class=a3>
�û�����: </td>
<td height="23" width="212" valign="top" align="center" class=a3>
<input size="15" name="username" value="<%=Request.Cookies("username")%>" style="float: left"><a target="_blank" href="../newuser/regadd.asp">û��ע��?</a><br>
</td></tr> 
<tr>
<td height="8" width="110" valign="top" align="center" class=a3>
�û�����:
</td>
<td height="8" width="212" valign="top" align="center" class=a3>
<input type="password" size="15" name="userpass" style="float: left"><a target="_blank" href="../newuser/usermima.asp">��������?</a></td>
</tr>
<tr>
<td height="9" width="110" valign="top" align="center" class=a3>
�� ֤ ��:</td>
<td height="9" width="212" valign="top" align="center" class=a3>
<p align="left">
<input name="adminid" size="4" maxLength=4 ><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>

</td>
</tr>
<tr>
<td height="26" width="328" valign="top" align="center" class=a3 colspan="2">

<input type="checkbox" value="1" name="eremite" id="eremite"><label for="eremite">�����¼</label><br>
<input type="submit" value=" ��¼ " name="Submit1">��<input type="reset" value=" ȡ�� " name="Submit">
</td>
</tr>
</form></table>

<br>
<center>
<a href=javascript:history.back()>BACK </a><br>


<%htmlend%>