<!-- #include file="setup.asp" -->
<%
top
%>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> ��  ��¼����</td>
</tr>
</table><br>
<table width="333" border="0" cellspacing="1" cellpadding="2" align="center" class=a2>

<form method="post" action="../userlogin.asp" target="_top">
<input type="hidden" value="add" name="menu">
<input type="hidden" value="/bbs" name="url">
<tr>
<td width="328" height="25" align="center" class=a1 colspan="2">
��¼����
</td></tr><tr>
<td height="23" width="110" valign="top" align="center" class=a3>
�û�����: </td>
<td height="23" width="212" valign="top" align="center" class=a3>
<input size="15" name="username" value="<%=Request.Cookies("username")%>" style="float: left"><a target="_blank" href="../vip/regadd.asp">û��ע��?</a><br>
</td></tr> 
<tr>
<td height="8" width="110" valign="top" align="center" class=a3>
�û�����:
</td>
<td height="8" width="212" valign="top" align="center" class=a3>
<input type="password" size="15" name="userpass" style="float: left"><a target="_blank" href="../vip/usermima.asp">��������?</a></td>
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