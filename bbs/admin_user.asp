<!-- #include file="setup.asp" -->
<!-- #include file="inc/MD5.asp" -->
<%
if adminpassword<>session("pass") then response.redirect "admin.asp?menu=login"
log(""&Request.ServerVariables("script_name")&"<br>"&Request.ServerVariables("Query_String")&"<br>"&Request.form&"")

username=HTMLEncode(Request("username"))


response.write "<center>"

select case Request("menu")

case "user"
user


case "Activation"
Activation

case "user2"
user2

case "showall"
showall

case "showallok"
showallok

case "userdeltopic"
userdeltopic

case "userdel"
userdel

case "userok"
userok

case "fix"

conn.execute("update [user] set userpass='"&md5("123")&"'  where username='"&username&"'")
error2("�Ѿ��� "&username&" �����뻹ԭ�� 123 ")

case "sendmoney"

membercode=int(Request("membercode"))
sql="select username from [user] where membercode="&membercode&""
Set Rs=Conn.Execute(sql)
do while not rs.eof
Count=Count+1

content=HTMLEncode(Request.Form("content"))

conn.Execute("insert into message (author,incept,content) values ('"&Request.Cookies("username")&"','"&rs("username")&"','��ϵͳ�㲥����"&content&"')")

conn.execute("update [user] set newmessage=newmessage+1,[money]=[money]+"&int(Request("money"))&" where username='"&rs("username")&"'")
rs.movenext
loop
rs.close
error2("������ɣ�")



case "activationok"
for each ho in request.form("id")
conn.execute("update [user] set membercode=1 where id="&ho&"")
next
error2("�Ѿ���������ѡ�û���")

end select



sub showall





%>





�û����ϣ�<b><font color=red><%=conn.execute("Select count(id)from [user]")(0)%></font></b> ��


<table cellspacing="1" cellpadding="2" width="99%"  border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 colspan=2 align="center">�û�����</td>
  </tr>


<tr class=a4>
<td><form method="post" action="?menu=user2">
�������Ա������: <input size="13" name="username">
<input type="submit" value="ȷ��">

</td></form>
<td>
<form method="post" action="?menu=showallok">
�������� <select onchange="javascript:submit()" size="1" name="userSearch">
<option value="">��ѡ���ѯ����</option>


<option value="landtime">24Сʱ�ڵ�¼���û�</option>
<option value="regtime">24Сʱ��ע����û�</option>
<option value=" and membercode=4">���й���Ա</option>
<option value=" and membercode=5">������������</option>
<option value=" and experience<2">����ֵ����2���û�</option>
<option value=" and degree<2">��¼��������2���û�</option>
</select>



</td>
</tr>

  <tr height=25>
    <td class=a1 align=center colspan=2>�߼���ѯ</td>
  </tr>




  <tr height=25 class=a3>
    <td>�����ʾ��¼��</td>
    <td><input size="45" value="50" name="searchMax"></td>
  </tr>


  <tr height=25 class=a3>
    <td>�û�������</td>
    <td><input size="45" name="username"></td>
  </tr>


  <tr height=25 class=a3>
    <td>Email����</td>
    <td><input size="45" name="usermail"></td>
  </tr>


  <tr height=25 class=a3>
    <td>��ҳ����</td>
    <td><input size="45" name="userhome"></td>
  </tr>


  <tr height=25 class=a3>
    <td>QQ����</td>
    <td><input size="45" name="userqq"></td>
  </tr>


  <tr height=25 class=a3>
    <td>ICQ����</td>
    <td><input size="45" name="icq"></td>
  </tr>


  <tr height=25 class=a3>
    <td>ǩ������</td>
    <td><input size="45" name="sign"></td>
  </tr>


  <tr height=25 class=a3>
    <td>ע������</td>
    <td><input size="45" name="regtime"></td>
  </tr>


  <tr height=25 class=a3>
    <td colspan="2" align="center">
	<input type="submit" value="   ��  ��   " name="submit0"></td>
  </tr>

</form>
  </table>



</div>



<br>
<%
end sub







sub showallok


%>
<script>
function CheckAll(form){for (var i=0;i<form.elements.length;i++){var e = form.elements[i];if (e.name != 'chkall')e.checked = form.chkall.checked;}}
</script>

<table cellspacing="1" cellpadding="2" width="99%"  border="0" class="a2" align="center">
<TR align=middle>
<TD class=a1>�û���</TD>
<TD class=a1 height="25">Email</TD>

<TD class=a1>��ѶϢ</TD>

<TD class=a1 height="25">Ȩ��</TD>

<TD class=a1>ע��ʱ��</TD>
<TD class=a1>����¼ʱ��</TD>
<TD class=a1>ɾ��</TD>
</TR>
<form method="post" action="?menu=userdel">
<%

item=Request("userSearch")

if item="landtime" then item=" and landtime >"&SqlNowString&"-1"

if item="regtime" then item=" and regtime >"&SqlNowString&"-1"

if username<>"" then item=""&item&" and username like '%"&username&"%'"

if Request("usermail")<>"" then item=""&item&" and usermail like '%"&Request("usermail")&"%'"

if Request("userhome")<>"" then item=""&item&" and userhome like '%"&Request("userhome")&"%'"

if Request("userqq")<>"" then item=""&item&" and userqq like '%"&Request("userqq")&"%'"

if Request("icq")<>"" then item=""&item&" and icq like '%"&Request("icq")&"%'"

if Request("sign")<>"" then item=""&item&" and sign like '%"&Request("sign")&"%'"

if Request("regtime")<>"" then item=""&item&" and regtime like '%"&Request("regtime")&"%'"

if item="" or Request("searchMax")="" then error2("��������Ҫ����������")

item="where"&item&""
item=replace(item,"where and","where")

sql="select top "&Request("searchMax")&" * from [user] "&item&""
rs.Open sql,Conn,1

Do While Not RS.EOF

%>
<TR align=middle>
<TD class=a4><a target="_blank" href=Profile.asp?username=<%=rs("username")%>><%=rs("username")%></a>��</TD>
<TD class=a3><%=rs("usermail")%>��</TD>
<TD class=a4><a style=cursor:hand onclick="javascript:open('friend.asp?menu=post&incept=<%=rs("username")%>','','width=320,height=170')"><img border="0" src="images/message1.gif"></a></TD>
<TD class=a3>
<a href="admin_user.asp?menu=user2&username=<%=rs("username")%>">�༭</a></TD>
<TD class=a4><%=rs("regtime")%>��</TD>
<TD class=a3><%=rs("landtime")%>��</TD>
<TD class=a3><input type="checkbox" value="<%=rs("username")%>" name="username"></TD></TR>



<%
RS.MoveNext
loop
RS.Close
%>

	<TR align=middle class=a3>
<TD colspan="7" align="right">&nbsp;<input onclick="checkclick('��ȷ��Ҫɾ������ѡ�û���ȫ������?');"  type="submit" value="   ȷ ��   "> <input type=checkbox name=chkall onclick=CheckAll(this.form) value="ON">&nbsp;</TD></form>
	</TR>
</TABLE><br>


<%
end sub







sub user


%>

�û����ϣ�<b><font color=red><%=conn.execute("Select count(id)from [user]")(0)%></font></b> ��
<br>
<form method="post" action="?menu=sendmoney">
<table cellspacing="1" cellpadding="2" width="64%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>���Ź���</td>
  </tr>
  <tr height=25>
    <td class=a3 align=middle colspan=2>������
<select size="1" name="membercode">
<option value="1">��ͨ�û�</option>
<option value="4" selected>�� �� Ա</option>
<option value="5">��������</option>
</select>&nbsp;���ű��¹��� <input size="8" name="money" value="1000">
���
<input type="submit" value="ȷ��"> </td>
  </tr>
  <tr height=25 class=a3>
    <td align=middle width="13%">��<br>
		Ѷ<br>
		��<br>
		��</td>
    <td align=middle width="85%"><textarea name="content" rows="5" cols="55">���¹����Ѿ����͵������ʺ��У���ע����գ�</textarea></td>
  </tr>
   </table>

</form>
<%
end sub

sub user2

sql="select * from [user] where username='"&HTMLEncode(username)&"'"
Set Rs=Conn.Execute(sql)
if rs.eof then error2(""&username&" ���û����ϲ�����")

%>
<form method="post" name=form action="?menu=userok">
<input type=hidden name=username value="<%=rs("username")%>">
<div align="center">

<table cellSpacing="1" cellPadding="3" border="0" width="389" class=a2>
<tr class=a1 id=TableTitleLink>
<td height="25" width="300" colspan="2" align="center">
������ϢϢ</td>
<td height="25" align="center" width="300" colspan="2"><font color="000000"><a target="_blank" href="Profile.asp?username=<%=rs("username")%>">
�鿴��ϸ����</a></font></td>
</tr>
<tr class=a3>
<td width="300" colspan="2" height="25">&nbsp;�û�����
&nbsp;<%=rs("username")%></td>
<td width="300" colspan="2" height="25">&nbsp;�û�����
 
&nbsp;<a onclick="checkclick('�˲�������Ѹ��û�������ĳɣ�123');" href="?menu=fix&username=<%=rs("username")%>">��ԭ����</a>
</td>
</tr>
<tr class=a4>
<td width="300" colspan="2">&nbsp;�û�ͷ�� <input size="10" name="honor" value="<%=rs("honor")%>"></td>
<td width="300" colspan="2">&nbsp;�û�Ȩ��
<select size="1" name="membercode">
<option value=0 <%if rs("membercode")=0 then%>selected<%end if%>>��δ����</option>
<option value=1 <%if rs("membercode")=1 then%>selected<%end if%>>��ͨ��Ա</option>
<option value=4 <%if rs("membercode")=4 then%>selected<%end if%>>�� �� Ա</option>
<option value=5 <%if rs("membercode")=5 then%>selected<%end if%>>��������</option>
</select> </td>
</tr>
<tr class=a3>
<td width="300" colspan="2">&nbsp;�� �� ֵ <input size="10" name="userlife" value="<%=rs("userlife")%>"></td>
<td width="300" colspan="2">&nbsp;�������� <input size="10" name="posttopic" value="<%=rs("posttopic")%>"></td>
</tr>
<tr class=a4>
<td width="300" colspan="2">&nbsp;������� 
<input size="10" name="money" value="<%=rs("money")%>"></td>
<td width="300" colspan="2">&nbsp;�ظ����� <input size="10" name="postrevert" value="<%=rs("postrevert")%>"></td>
</tr>
<tr class=a3>
<td width="300" colspan="2">&nbsp;������� <input size="10" name="savemoney" value="<%=rs("savemoney")%>"></td>
<td width="300" colspan="2">&nbsp;��ɾ���� <input size="10" name="deltopic" value="<%=rs("deltopic")%>"></td>
</tr>
<tr class=a3>
<td width="300" colspan="2">&nbsp;ע������ 
<input size="10" name="regtime" value="<%=rs("regtime")%>"></td>
<td width="300" colspan="2">&nbsp;�� �� ֵ <input size="10" name="experience" value="<%=rs("experience")%>"></td>
</tr>
<tr class=a4>
<td width="600" colspan="4">&nbsp;�û�ǩ�� 
<textarea name="sign" rows="3" cols="40"><%=rs("sign")%></textarea></td>
</tr>
<tr class=a1 id=TableTitleLink>
<td width="201" align="center" height="25">
<a onclick="checkclick('��ȷ��Ҫɾ�����û����з����������?');" href="?menu=userdeltopic&username=<%=rs("username")%>">
ɾ�����û�����������</a>


<td width="201" colspan="2" align="center" height="25">
<input type="submit" value=" �� �� " name="Submit"></td>
<td width="201" align="center" height="25">

<a onclick="checkclick('��ȷ��Ҫɾ�����û�����������?');" href="?menu=userdel&username=<%=rs("username")%>">
ɾ�����û�����������</a></td>

</td>
</tr>
</table>
</form><A href="javascript:history.back()">�� ��</A>
<Script>
document.form.sign.value = unybbcode(document.form.sign.value);
function unybbcode(temp) {
temp = temp.replace(/<br>/ig,"\n");
return (temp);
}
</Script>
<%
end sub

sub userdeltopic
conn.execute("delete from [forum] where username='"&username&"'")
conn.execute("delete from [reforum] where username='"&username&"'")
%>
�Ѿ��� <%=username%> ���з����������ȫ��ɾ��<br><br><a href=javascript:history.back()>�� ��</a>
<%
end sub

sub userdel

if username=Request.Cookies("username") then error2("��������")

for each ho in Request("username")
ho=HTMLEncode(ho)
conn.execute("delete from [user] where username='"&ho&"'")
conn.execute("delete from [reforum] where username='"&ho&"'")

next

%>
�Ѿ��ɹ�ɾ�� <%=username%> ����������<br><br><a href=javascript:history.back()>�� ��</a>
<%
end sub


sub userok

if Request("userlife")>100 then error2("�������ܴ���100��")

sql="select * from [user] where username='"&username&"'"
rs.Open sql,Conn,1,3

rs("membercode")=Request("membercode")
rs("honor")=Request("honor")
rs("posttopic")=Request("posttopic")
rs("postrevert")=Request("postrevert")
rs("experience")=Request("experience")
rs("userlife")=Request("userlife")
rs("money")=Request("money")
rs("savemoney")=Request("savemoney")
rs("regtime")=Request("regtime")
rs("deltopic")=Request("deltopic")
rs("sign")=HTMLEncode(Request.Form("sign"))
rs.update
rs.close
%> ���³ɹ�</b></font></td>
</tr></table><br><br><a href=javascript:history.back()>�� ��</a>
<%
end sub

sub Activation
%>
<script>
function CheckAll(form){for (var i=0;i<form.elements.length;i++){var e = form.elements[i];if (e.name != 'chkall')e.checked = form.chkall.checked;}}
</script>
  <form method="POST" action=?menu=activationok>

<TABLE cellSpacing=1 cellPadding=1 width=60% align=center border=0 class=a2>
<TR height=25 class=a1>
		<td align="center">����</td>
		<td align="center">�û���</td>
		<td align="center">Email</td>
		<td align="center">ע��ʱ��</td></tr>
<%



sql="select * from [user] where membercode=0 order by id Desc"
rs.Open sql,Conn,1

pagesetup=20 '�趨ÿҳ����ʾ����
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��
i=0
Do While Not RS.EOF and i<pagesetup
i=i+1

%>
<TR height=25>

      <TD align=middle width="6%" class=a3>
<INPUT type=checkbox value=<%=rs("id")%> name=id></TD>
      <TD width="22%" align=left class=a4>&nbsp;<a target="_blank" href=Profile.asp?username=<%=rs("username")%>><%=rs("username")%></a></TD>
      <TD width="45%" class=a3>&nbsp;<%=rs("usermail")%></TD>

      <TD align=center width=30% class=a4>&nbsp;<%=rs("regtime")%></TD>
    </TR>

<%

RS.MoveNext
loop
RS.Close


%>


<TR height=25>

      <TD width="6%" class=a3 align="center"><input type=checkbox name=chkall onclick=CheckAll(this.form) value="ON"></TD>

      <TD width="22%" class=a3 align="center">		
<input type=submit  onclick="checkclick('��ȷ��Ҫ������ѡ���û�?');" value=" �� �� "></TD>

      <TD width="71%" class=a3 colspan="2">
		
		
&nbsp;<b>����
<font color="990000"><%=TotalPage%></font> ҳ [
<script>
PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?menu=activation&topage="+i+">"+ i +"</a> ");
}
}
}
</script>]</b>
		
</TD>
    </TR>
    


</table><%
end sub

htmlend

%>