<!-- #include file="setup.asp" -->
<!-- #include file="inc/MD5.asp" -->

<%
top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")


select case Request("menu")

case "editProfileok"
editProfileok

case "contactok"
contactok

case "passok"
passok

end select


%>
<SCRIPT src="inc/birthday.js"></SCRIPT>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� �������</td>
</tr>
</table><br>

<table cellspacing="1" cellpadding="1" width="99%"  align="center" border="0" class="a2">
  <TR id=TableTitleLink class=a1 height="25">
      <Td width="14%" align="center"><b><a href="usercp.asp">���������ҳ</a></b></td>
      <TD width="14%" align="center"><b><a href="../vip/vip_dangan.asp">���������޸�</a></b></td>
      <TD width="14%" align="center"><b><a href="../vip/mima.asp">�û������޸�</a></b></td>
      <TD width="14%" align="center"><b><a href="EditProfile.asp?menu=option">�༭��̳ѡ��</a></b></td>
      <TD width="14%" align="center"><b><a href="message.asp">�û����ŷ���</a></b></td>
      <TD width="14%" align="center"><b><a href="friend.asp">�༭�����б�</a></b></td>
      </TR></TABLE>
<br>
<%


select case Request("menu")
case ""
index
case "option"
OptionPage
case "pass"
pass
end select




sub index
sql="select * from [user] where username='"&Request.Cookies("username")&"'"
Set Rs=Conn.Execute(sql)
%>
<script>function New(para_URL){var URL=new String(para_URL);window.open(URL,'','resizable,scrollbars')}</script>


<SCRIPT>valigntop()</SCRIPT>

<table width=99% cellspacing=1 cellpadding=4 align=center border=0 class=a2>
  <form method="POST" name="form" action="EditProfile.asp?menu=editProfileok">

<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>
��������</b></td>
</tr>
<tr>
    <td height="2" valign="top" class=a3 width="30%"> ��<b>��ʵ������</b> 
      <input type="text" name="realname" size="17" value="<%=rs("realname")%>">
</td>
    <td height="71" align="left" valign="top" class=a4 rowspan="11" width="70%"> 
      <table width="486" cellspacing="0" cellpadding="5">
<tr>
<td width="476"><b>ͷ<font color="000000">��</font>��</b>
<img src="<%=rs("userface")%>" name="tus" width="32" height="32">��<script>function showimage(){document.images.tus.src=""+document.form.userface.options[document.form.userface.selectedIndex].value+"";}</script><select name=userface size=1 onChange="showimage()">
<option value="<%=rs("userface")%>">Ĭ��</option>
<script>
for(i=1;i<=84;i++) {
document.write("<option value='images/face/"+i+".gif'>"+i+"</option>")
}
</script>
</select>��<a href="JavaScript:New('register.asp?menu=face')">�鿴���е�ͷ���б�</a></td>
</tr>
<tr>
<td width="466"><b>��<font color="000000">��</font>�գ�</b> <input onfocus="show_cele_date(birthday,'','',birthday)" value="<%=rs("birthday")%>" name="birthday"></td>
</tr>
<tr>
<td width="476"><b><font color="000000">�ԡ���</font>�� &nbsp; </b>

<textarea name=character rows=5 cols=65><%=rs("character")%></textarea><font color="000000">�� </font>
</td>
</tr>
<tr>
<td width="476"><b>���˼�飺 &nbsp;
<textarea name=personal rows=5 cols=65><%=rs("personal")%></textarea>
</b></td>
</tr>
<tr>
<td height="10" width="476"><b>ǩ������ &nbsp;
<textarea name=sign rows=5 cols=65><%=rs("sign")%></textarea> </b> </td>
</tr>
</table>
</td>
</tr>
<tr>
    <td height="2" valign="top" class=a4 width="30%"><b> ���ԡ�����</b> 
      <select size=1 name=sex>
<option value="" selected>[��ѡ��]</option>
<option value=male <%if rs("sex")="male" then%>selected<%end if%>>��</option>
<option value=female <%if rs("sex")="female" then%>selected<%end if%>>Ů</option>
</select>



</td>
</tr>
<tr>
    <td height="2" valign="top" class=a3 width="30%">��<b>�������ң�</b> <b> 
      <input type="text" name="country" size="17" value="<%=rs("country")%>">
</b> </td>
</tr>
<tr>
    <td height="2" valign="top" class=a4 width="30%">��<b>ʡ�����ݣ�</b> 
      <input type="text" name="province" size="17" value="<%=rs("province")%>">
</td>
</tr>
<tr>
    <td height="2" valign="top" class=a3 width="30%">��<b>�ǡ����У� </b> 
      <input type="text" name="city" size="17" value="<%=rs("city")%>">
</td>
</tr>
<tr>
    <td height="2" valign="top" class=a4 width="30%">��<b>Ѫ�����ͣ�</b> 
      <input maxlength=4 size=4
name=blood value="<%=rs("blood")%>">
</td>
</tr>
<tr>
    <td height="2" valign="top" class=a3 width="30%">��<b>�š�������</b> 
      <input type="text" name="belief" size="17" value="<%=rs("belief")%>"></td>
</tr>
<tr>
    <td height="2" valign="top" class=a4 width="30%">��<b>ְ����ҵ��</b> 
      <input type="text" name="occupation" size="17" value="<%=rs("occupation")%>"></td>
</tr>
<tr>
    <td height="2" valign="top" class=a3 width="30%">��<b>����״����</b> 
      <input maxlength=4 size=4
name=marital value="<%=rs("marital")%>"></td>
</tr>
<tr>
    <td height="2" valign="top" class=a4 width="30%">��<b>���ѧ����</b> 
      <input type="text" name="education" size="17" value="<%=rs("education")%>"></td>
</tr>
<tr>
    <td height="2" valign="top" class=a3 width="30%">��<b>��ҵԺУ��</b> 
      <input type="text" name="college" size="17" value="<%=rs("college")%>"></td>
</tr>
  <form method="POST" name="form"action="EditProfile.asp">
<input type=hidden name="menu" value="contactok">
<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>��ϵ����</b></td>
</tr>
<tr>
    <td height="2" align="right" width="45%" class=a4><b>QQ���룺</b></td>
    <td height="2" align="left" width="55%" class=a4> &nbsp; 
      <input type="text" name="userqq" size="40" value="<%=rs("userqq")%>" onkeyup=if(isNaN(this.value))this.value=''>
</td>
</tr>
<tr>
    <td height="2" align="right" width="45%" class=a3><b>ICQ���룺</b></td>
    <td height="2" align="left" width="55%" class=a3> &nbsp; 
      <input type="text" name="icq" size="40" value="<%=rs("icq")%>" onkeyup=if(isNaN(this.value))this.value=''>
</td>
</tr>
<tr>
    <td class=a4 height="2" align="right" valign="middle" width="45%"><b>Email��ַ��</b></td>
    <td class=a4 height="2" align="left" valign="middle" width="55%"> &nbsp; 
      <input type="text" name="usermail" size="40" value="<%=rs("usermail")%>">
</td>
</tr>

<tr class=a3>
    <td height="1" align="right" width="45%"><b>������ҳ��</b></td>
    <td height="1" align="left" width="55%"> &nbsp; 
      <input type="text" name="userhome" size="40" value="<%=rs("userhome")%>">
</td>
</tr>

<tr class=a4>
    <td height="1" align="center" width="100%" colspan="2">

<input type="submit" name="Submit1" value=" ȷ �� "></td>
</tr>
</table>

<SCRIPT>valignbottom()</SCRIPT>

</form>

<Script>
document.form.sign.value = unybbcode(document.form.sign.value);
document.form.personal.value = unybbcode(document.form.personal.value);
document.form.character.value = unybbcode(document.form.character.value);
function unybbcode(temp) {
temp = temp.replace(/<br>/ig,"\n");
return (temp);
}
</Script><%
end sub





sub editProfileok
username=Request.Cookies("username")
realname=HTMLEncode(Request("realname"))
birthday=HTMLEncode(Request("birthday"))
userface=HTMLEncode(Request("userface"))
sex=HTMLEncode(Request("sex"))
country=HTMLEncode(Request("country"))
province=HTMLEncode(Request("province"))
city=HTMLEncode(Request("city"))
blood=HTMLEncode(Request("blood"))
character=HTMLEncode(Request("character"))
belief=HTMLEncode(Request("belief"))
college=HTMLEncode(Request("college"))
marital=HTMLEncode(Request("marital"))
education=HTMLEncode(Request("education"))
personal=HTMLEncode(Request("personal"))
occupation=HTMLEncode(Request("occupation"))
usermail=HTMLEncode(Request("usermail"))
userhome=HTMLEncode(Request("userhome"))
userqq=HTMLEncode(Request("userqq"))
icq=HTMLEncode(Request("icq"))
sign=HTMLEncode(Request.Form("sign"))
temp=UCase(sign)

if instr(temp,"[/FLASH]")>0 or instr(temp,"[/RM]")>0 or instr(temp,"[/MP]")>0 then message=message&"<li>ǩ�����в��ܺ���[FLASH] [RM] [MP]����"

if Len(character)>255 then message=message&"<li>�Ը��ܴ��� 255 ���ַ�"

if Len(personal)>255 then message=message&"<li>���˼�鲻�ܴ��� 255 ���ַ�"

if Len(sign)>255 then message=message&"<li>ǩ�������ܴ��� 255 ���ֽ�"

if not isnumeric(userqq) and userqq<>"" then message=message&"<li>QQ��������������д"

if not isnumeric(icq) and icq<>"" then message=message&"<li>ICQ��������������д"

if instr(usermail,"@")=0 then message=message&"<li>���ĵ����ʼ���ַ��д����"

if instr(userface,";")>0 then message=message&"<li>ͷ��URL�в��ܺ����������"

if message<>"" then error(""&message&"")

sql="select * from [user] where username='"&HTMLEncode(username)&"'"
rs.Open sql,Conn,1,3
rs("realname")=realname
rs("birthday")=birthday
rs("userface")=userface
rs("sex")=sex
rs("country")=country
rs("province")=province
rs("city")=city
rs("blood")=blood
rs("character")=character
rs("belief")=belief
rs("college")=college
rs("marital")=marital
rs("education")=education
rs("personal")=personal
rs("sign")=sign
rs("occupation")=occupation
rs("usermail")=usermail
rs("userhome")=userhome
if icq<>empty then rs("icq")=icq
if userqq<>empty then rs("userqq")=userqq
rs("landtime")=now()
rs.update
rs.close
message=message&"<li>�޸����ϳɹ�<li><a href=usercp.asp>���������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=usercp.asp>")
end sub





sub OptionPage
sql="select * from [user] where username='"&Request.Cookies("username")&"'"
Set Rs=Conn.Execute(sql)
%>

<SCRIPT>valigntop()</SCRIPT>
<table width=99% cellspacing=1 cellpadding=4 border=0 class=a2 align=center>
  <form method="POST" name="form"action="EditProfile.asp">
<input type=hidden name="menu" value="contactok">
<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>�༭��̳ѡ��</b></td>
</tr>
<tr>
    <td height="2" align="right" width="45%" class=a4><b>YBB���룺</b></td>
    <td height="2" align="left" width="55%" class=a4> &nbsp; 
      
<input type=radio name="ybbcode" value="0" <%if Request.Cookies("ybbcode")="0" then%>checked<%end if%> id=ybbcode><label for=ybbcode>�ر�</label>
<input type=radio name="ybbcode" value="1" <%if Request.Cookies("ybbcode")="1" then%>checked<%end if%> id=ybbcode_1><label for=ybbcode_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[��]</font>
      
</td>
</tr>
<tr>
    <td height="2" align="right" width="45%" class=a3><b>[IMG]���룺</b></td>
    <td height="2" align="left" width="55%" class=a3> &nbsp; 
<input type=radio name="ybbimg" value="0" <%if Request.Cookies("ybbimg")="0" then%>checked<%end if%> id=ybbimg><label for=ybbimg>�ر�</label>
<input type=radio name="ybbimg" value="1" <%if Request.Cookies("ybbimg")="1" then%>checked<%end if%> id=ybbimg_1><label for=ybbimg_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[��]</font>
</td>
</tr>
<tr>
    <td class=a4 height="2" align="right" valign="middle" width="45%"><b>
    [FLASH]���룺</b></td>
    <td class=a4 height="2" align="left" valign="middle" width="55%"> &nbsp; 
<input type=radio name="ybbflash" value="0" <%if Request.Cookies("ybbflash")="0" then%>checked<%end if%> id=ybbflash><label for=ybbflash>�ر�</label>
<input type=radio name="ybbflash" value="1" <%if Request.Cookies("ybbflash")="1" then%>checked<%end if%> id=ybbflash_1><label for=ybbflash_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[��]</font>
</td>
</tr>

<tr class=a3>
    <td height="2" align="right" width="45%"><b>������룺</b></td>
    <td height="2" align="left" width="55%"> &nbsp; 
<input type=radio name="ybbbrow" value="0" <%if Request.Cookies("ybbbrow")="0" then%>checked<%end if%> id=ybbbrow><label for=ybbbrow>�ر�</label>
<input type=radio name="ybbbrow" value="1" <%if Request.Cookies("ybbbrow")="1" then%>checked<%end if%> id=ybbbrow_1><label for=ybbbrow_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[��]</font>
</td>
</tr>


<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>�༭����ѡ��</b></td>
</tr>


<tr class=a4>
    <td height="2" align="right" width="45%"><b>����������ʾ�û�ͷ��</b></td>
    <td height="2" align="left" width="55%"> &nbsp; 
<input type=radio name="showface" value="0" <%if Request.Cookies("showface")="0" then%>checked<%end if%> id=showface><label for=showface>�ر�</label>
<input type=radio name="showface" value="1" <%if Request.Cookies("showface")="1" then%>checked<%end if%> id=showface_1><label for=showface_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[��]</font></td>
</tr>


<tr class=a3>
    <td height="2" align="right" width="45%"><b>����������ʾ�û�ǩ����</b></td>
    <td height="2" align="left" width="55%"> &nbsp; 
<input type=radio name="sign" value="0" <%if Request.Cookies("sign")="0" then%>checked<%end if%> id=sign><label for=sign>�ر�</label>
<input type=radio name="sign" value="1" <%if Request.Cookies("sign")="1" then%>checked<%end if%> id=sign_1><label for=sign_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[��]</font></td>
</tr>

<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>�༭����ѡ��</b></td>
</tr>

<tr class=a3>
    <td height="2" align="right" width="45%"><b>ÿҳ��ʾ��������</b></td>
    <td height="2" align="left" width="55%"> &nbsp; 
<select name="pagesetup" size="1">
<option value="">Ĭ��</option>
<option value="10" <%if Request.Cookies("pagesetup")="10" then%>selected<%end if%>>10</option>
<option value="20" <%if Request.Cookies("pagesetup")="20" then%>selected<%end if%>>20</option>
<option value="30" <%if Request.Cookies("pagesetup")="30" then%>selected<%end if%>>30</option>
</select>
    </td>
</tr>
<tr class=a4>
    <td height="2" align="right" width="45%"><b>�����б���ͻ���ؼ��ʣ�</b><br>�趨�Ĺؼ��ʽ���<font color="FF0000">��ɫ</font>��ʾ&nbsp;&nbsp; </td>
    <td height="2" align="left" width="55%"> &nbsp; 
<input size=20 name=key_word value="<%=Request.Cookies("key_word")%>"></td>
</tr>


<tr class=a3>
    <td height="2" align="right" width="45%"><b>�����û�������</b><br><font color="FF0000">�������á�|���ָ�</font>&nbsp;&nbsp; </td>
    <td height="2" align="left" width="55%"> &nbsp; 
<input size=30 name=badlist value="<%=Request.Cookies("badlist")%>"></td>
</tr>




<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>����״̬�趨</b></td>
</tr>


<tr class=a4>
    <td height="2" align="right" width="45%"> <b>����״̬��</b></td>
    <td height="2" align="left" width="55%"> &nbsp; 
<input type=radio name="eremite" value="0" <%if Request.Cookies("eremite")="0" then%>checked<%end if%> id=eremite><label for=eremite>����</label>
<input type=radio name="eremite" value="1" <%if Request.Cookies("eremite")="1" then%>checked<%end if%> id=eremite_1><label for=eremite_1>����</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[����]</font></td>
</tr>

<tr class=a3>
    <td height="1" align="right" width="45%"><b>�յ���Ѷʱ������ʾ��</b></td>
    <td height="1" align="left" width="55%"> &nbsp; 
<input type=radio name="newmessage" value="0" <%if Request.Cookies("newmessage")="0" then%>checked<%end if%> id=newmessage><label for=newmessage>�ر�</label>
<input type=radio name="newmessage" value="1" <%if Request.Cookies("newmessage")="1" then%>checked<%end if%> id=newmessage_1><label for=newmessage_1>��</label> 
    <font color="FF0000">&nbsp;&nbsp; Ĭ��:[�ر�]</font></td>
</tr>


<tr class=a4>
    <td height="1" align="center" width="100%" colspan="2">
<input type="submit" name="Submit2" value=" ȷ �� "></td>
</tr>


</table>
<SCRIPT>valignbottom()</SCRIPT>
</form><%
end sub



sub contactok


Response.Cookies("ybbcode")=Request("ybbcode")
Response.Cookies("ybbimg")=Request("ybbimg")
Response.Cookies("ybbflash")=Request("ybbflash")
Response.Cookies("ybbbrow")=Request("ybbbrow")
Response.Cookies("eremite")=Request("eremite")
Response.Cookies("newmessage")=Request("newmessage")
Response.Cookies("showface")=Request("showface")
Response.Cookies("sign")=Request("sign")
Response.Cookies("badlist")=Request("badlist")
Response.Cookies("key_word")=Request("key_word")
Response.Cookies("pagesetup")=Request("pagesetup")



Response.Cookies("ybbcode").Expires=date+365
Response.Cookies("ybbimg").Expires=date+365
Response.Cookies("ybbflash").Expires=date+365
Response.Cookies("ybbbrow").Expires=date+365
Response.Cookies("eremite").Expires=date+365
Response.Cookies("newmessage").Expires=date+365
Response.Cookies("showface").Expires=date+365
Response.Cookies("sign").Expires=date+365
Response.Cookies("badlist").Expires=date+365
Response.Cookies("key_word").Expires=date+365
Response.Cookies("pagesetup").Expires=date+365
message=message&"<li>�������óɹ�<li><a href=usercp.asp>���������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=usercp.asp>")
end sub



sub pass
sql="select * from [user] where username='"&Request.Cookies("username")&"'"
Set Rs=Conn.Execute(sql)
%>
<SCRIPT>valigntop()</SCRIPT>
<table width=99% cellspacing=1 cellpadding=4 border=0 class=a2 align=center>
  <form method="POST" name="form"action="EditProfile.asp">
<input type=hidden name="menu" value="passok">
<tr>
<td height="20" align="center" colspan="2" valign="bottom" class=a1>
<b>�û������޸�</b></td>
</tr>
<tr class=a4>
    <td height="2" align="right" width="45%"><b> ԭ���룺</b></td>
    <td height="2" align="left" width="55%"> &nbsp; 
      <input type="password" name="olduserpass" size="40">
</td>
</tr>
<tr class=a3>
    <td height="2" align="right" width="45%"><b> �����룺</b><br>
      <font color="#FF0000">�粻��������˴�������</font></td>
    <td height="2" align="left" width="55%"> &nbsp; 
      <input type="password" name="userpass" size="40" maxlength="16">
</td>
</tr>
<tr class=a4>
    <td height="2" align="right" width="45%"><b>ȷ�������룺</b><br>
      <font color="#FF0000">�������������뱣��һ��</font></td>
    <td height="2" align="left" valign="middle" width="55%"> &nbsp; 
      <input type="password" name="userpass2" size="40" maxlength="16"></td>
</tr>
<tr class=a3>
    <td height="1" align="right" width="45%"><b>������ʾ���⣺</b></td>
    <td height="1" align="left" width="55%"> &nbsp; 
      <input type="text" name="question" size="40" value="<%=rs("question")%>">
</td>
</tr>
<tr class=a4>
    <td height="1" align="right" width="45%"><b>������ʾ�𰸣�</b><br>
	<font color="#FF0000">�粻���Ĵ𰸴˴�������</font></td>
    <td height="1" align="left" width="55%" class=a4> &nbsp; 
      <input type="text" name="answer" size="40" value=""></td>
</tr>
<tr class=a4>
    <td align="center" width="100%" colspan="2">
<input type="submit" name="Submit" value=" ȷ �� "></td>
</tr>
</table>
<SCRIPT>valignbottom()</SCRIPT>
</form>
<%
end sub

sub passok
username=Request.Cookies("username")
userpass=Trim(Request("userpass"))
olduserpass=Trim(Request("olduserpass"))
userpass2=Trim(Request("userpass2"))
question=HTMLEncode(Request("question"))

sql="select * from [user] where username='"&HTMLEncode(username)&"'"
rs.Open sql,Conn,1,3


if md5(olduserpass)<>rs("userpass") then message=message&"<li>����ԭ�������"

if userpass<>userpass2 then message=message&"<li>�����������ȷ�������벻ͬ"

if message<>"" then error(""&message&"")

rs("question")=question
if userpass<>empty then rs("userpass")=md5(userpass)
if Request("answer")<>empty then rs("answer")=md5(Request("answer"))

rs("landtime")=now()
rs.update
rs.close
message=message&"<li>�޸����ϳɹ�<li><a href=usercp.asp>���������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=usercp.asp>")
end sub


htmlend
%>