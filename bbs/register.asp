<!-- #include file="setup.asp" -->
<!-- #include file="inc/MD5.asp" -->
<%
username=HTMLEncode(Trim(Request("username")))
errorchar=array(" ","��","	","#","`","|","%","&","","+",";")
for i=0 to ubound(errorchar)
if instr(username,errorchar(i))>0 then error2("�û����в��ܺ����������")
next

if Request("menu")="face" then


%>
<body topmargin=0>
<title>BBSxp--ͷ���б� - Powered By BBSxp</title>
<table border=0 width=100% cellspacing=1 cellpadding=1>
<tr class=a1><td colspan="10" height="25" align=center>BBSxpͷ��</td></tr>
<tr align=center>
<script>
var ii=1
for (var i=1; i <= 84; i++) {
ii++
document.write("<td class=a3><img src=images/face/"+i+".gif><br>"+i+"</td>");
if(ii >5){document.write("</tr><tr align=center>");ii=1}
}
</script>
</tr>
</table>

<%
responseend
end if



if Request("menu")="Check" then

If conn.Execute("Select id From [user] where username='"&username&"'" ).eof Then
response.write "�û���&quot; <font color=red>"&HTMLEncode(username)&"</font> &quot;��������ע�ᣡ"
else
response.write "����ѡ���û���&quot; <font color=red>"&username&"</font> &quot;�Ѿ����û�ʹ�ã�������ѡ��һ���û�����"
end if

responseend
end if



if CloseRegUser = 1 then error("<li>����̳��ʱ���������û�ע�ᣡ")


top

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if Request.ServerVariables("request_method") = "POST" then

if Request("sessionid")<> session.sessionid then error("<li>Ч�������<li>�����·���ˢ������")

password=Trim(Request("password"))
userpass2=Trim(Request("userpass2"))
usermail=HTMLEncode(Request("usermail"))
userhome=HTMLEncode(Request("userhome"))
question=HTMLEncode(Request("question"))
answer=HTMLEncode(Request("answer"))
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
personal=""&HTMLEncode(Request("personal"))&""
occupation=HTMLEncode(Request("occupation"))
userqq=HTMLEncode(Request("userqq"))
icq=HTMLEncode(Request("icq"))
sign=HTMLEncode(Request.Form("sign"))
temp=UCase(sign)

if instr(temp,"[/FLASH]")>0 or instr(temp,"[/RM]")>0 or instr(temp,"[/MP]")>0 then message=message&"<li>ǩ�����в��ܺ���[FLASH] [RM] [MP]����"

if username="" then message=message&"<li>�����û���û����д"

if Len(username)>16 then message=message&"<li>�����û����в��ܳ���16���ֽ�"


if password="" then
Randomize
password=int(rnd*999999)+1
elseif password<>userpass2 then
message=message&"<li>��2����������벻��ȷ"
end if

if instr(usermail,"@")=0 then message=message&"<li>���ĵ����ʼ���ַ��д����"

if not isnumeric(userqq) and userqq<>"" then message=message&"<li>QQ��������������д"

if not isnumeric(icq) and icq<>"" then message=message&"<li>ICQ��������������д"

if Len(personal)>255 then message=message&"<li>���˼�鲻�ܴ��� 255 ���ֽ�"

if Len(sign)>255 then message=message&"<li>ǩ�������ܴ��� 255 ���ֽ�"

if instr(userface,";")>0 then message=message&"<li>ͷ��URL�в��ܺ����������"

If not conn.Execute("Select id From [user] where username='"&username&"'" ).eof Then
message=message&"<li>���û����Ѿ�������ע����"
end if


if RegOnlyMail = 1 then
If not conn.Execute("Select id From [user] where usermail='"&usermail&"'" ).eof Then
message=message&"<li>��Email�Ѿ�������ע����"
end if
end if

if message<>"" then error(""&message&"")

for each ho in request.form("character")
allcharacter=""&allcharacter&""&ho&""
next


rs.Open "[user]",conn,1,3

rs.addnew
rs("username")=username
rs("userpass")=md5(password)
rs("usermail")=usermail
rs("userhome")=userhome
rs("question")=question
rs("membercode")=ActivationUser
if Request("answer")<>empty then rs("answer")=md5(Request("answer"))
rs("realname")=realname
rs("birthday")=birthday
rs("userface")=userface
rs("sex")=sex
rs("country")=country
rs("province")=province
rs("city")=city
rs("blood")=blood
rs("character")=allcharacter
rs("belief")=belief
rs("occupation")=occupation
rs("college")=college
rs("marital")=marital
rs("education")=education
if icq<>empty then rs("icq")=icq
if userqq<>empty then rs("userqq")=userqq
rs("personal")=personal
rs("sign")=sign
rs("friend")="|"
rs("regtime")=""&Date()&""
rs.update
rs.close


Application.Lock
Application(CacheName&"NewUserName")=username
Application(CacheName&"CountUser") = Application(CacheName&"CountUser")+1
Application.UnLock


mailaddress=usermail
mailtopic="�û���ע��ɹ�"
body=""&vbCrlf&"�װ���"&username&", ����!"&vbCrlf&""&vbCrlf&"������ϲ! ���Ѿ��ɹ���ע������������, �ǳ���л��ʹ��"&homename&"�ķ���!"&vbCrlf&""&vbCrlf&"��* �����ʺ���:"&username&"��������:"&password&""&vbCrlf&""&vbCrlf&"��* "&clubname&"("&cluburl&"Default.asp)"&vbCrlf&""&vbCrlf&"��* ���, �м���ע�����������μ�"&vbCrlf&"1�������ء��������Ϣ�������������ȫ��������취�����һ�й涨��"&vbCrlf&"2��ʹ�����ɶ������Ļ��⣬�����벻Ҫ�漰���Ρ��ڽ̵����л��⡣"&vbCrlf&"3���е�һ����������Ϊ��ֱ�ӻ��ӵ��µ����»����·������Ρ�"&vbCrlf&""&vbCrlf&""&vbCrlf&"��̳������ "&homename&"("&homeurl&") �ṩ������������Yuzi������(http://www.yuzi.net)"&vbCrlf&""&vbCrlf&""&vbCrlf&""
%>
<!-- #include file="inc/mail.asp" -->
<%



if SendPassword<>1 and ActivationUser<>0 then
Response.Cookies("username")=username
Response.Cookies("userpass")=md5(password)
end if


message=message&"<li>ע�����û����ϳɹ�<li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url="&LocationUrl&">")



end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
%>
<script>
function Check(){var Name=document.form.username.value;
window.open("register.asp?menu=Check&username="+Name,"","width=200,height=20");
}
</script>
<SCRIPT src="inc/birthday.js"></SCRIPT>


<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� ע�����û�</td>
</tr>
</table><br>
<SCRIPT>valigntop()</SCRIPT>
<table width=99% align=center cellspacing=0 cellpadding=0 border=0 class=a1>
<form method="POST" name="form" onsubmit="return VerifyInput();">
<input type=hidden name=sessionid value=<%=session.sessionid%>>
<tr>
<td>
<table width=100% cellspacing=1 cellpadding=4 border=0 class=a2>
<tr>
<td height="20" align="center" colspan="2" class=a1><b>��д�û�����</b></td>
</tr>
<tr bgcolor="FFFFFF">
<td colspan="2" height="25" valign="middle" align="left"><b>&nbsp;����������Ϣ</b>���������ݱ��</td>
</tr>
<tr>
<td class=a3 height="5" align="right" valign="middle" width="46%"><b>�û�����</b></td>
<td class=a3 height="5" align="left" valign="middle" width="54%">
&nbsp;
<input type="text" name="username" size="28" maxlength="12" value="<%=Request("username")%>">&nbsp;<input onclick="javascript:Check()" type="button" value="����ʺ�" name="button">
</td>
</tr>
<%if SendPassword=0 then%>
<tr>
<td class=a4 height="2" align="right" valign="middle" width="46%"><b>���룺</b></td>
<td class=a4 height="2" align="left" valign="middle" width="54%">
&nbsp;
<input type="password" name="password" size="40" maxlength="16">
</td>
</tr>
<tr class=a3>
<td height="2" align="right" valign="middle" width="46%"><b>ȷ�����룺</b><br>�����������뱣��һ��</td>
<td height="2" align="left" valign="middle" width="54%" class=a3>
&nbsp;
<input type="password" name="userpass2" size="40">
</td>
</tr>
<%end if%>
<tr>
<td class=a4 height="2" align="right" valign="middle" width="46%"><b>����Email��ַ��</b><br>
<font color="FF0000">���뽫ͨ��Email����</font></td>
<td class=a4 height="2" align="left" valign="middle" width="54%">
&nbsp;
<input type="text" name="usermail" size="40">
</td>
</tr>
<tr bgcolor="FFFFFF">
<td height="25" align="left" valign="middle" colspan="2"><b>&nbsp;����������Ϣ</b>���������ݽ�����д��</td>
</tr>
<tr class=a3>
<td height="2" valign="top" class=a3 width="46%"> ��<b>��ʵ������</b>
<input type="text" name="realname" size="18">
</td>
<td height="71" align="left" valign="top" class=a4 rowspan="14" width="54%">
<table width="100%" border="0" cellspacing="0" cellpadding="5">
<tr>
<td><b>ͷ<font color="000000">��</font>��</b> 


<script>function showimage(){document.images.tus.src=""+document.form.userface.options[document.form.userface.selectedIndex].value+"";}

facetol=84;
temp = Math.floor(Math.random() * facetol+1);


document.write("<img src=images/face/"+temp+".gif name=tus> ")
document.write("<select name=userface size=1 onChange=showimage()>")

for(i=1;i<=facetol;i++) {
if (i==temp) ii="selected";else ii=""
document.write("<option value='images/face/"+i+".gif' "+ii+">"+i+"</option>")
}
</script>


</select> <a href="#" onclick="javascript:open('register.asp?menu=face','','width=500,height=500,resizable,scrollbars')">�鿴���е�ͷ���б�</a></td>
</tr>
<tr>
<td><b>�����գ�</b> <input onfocus="show_cele_date(birthday,'','',birthday)" value="" name="birthday"></td>
</tr>
<tr>
<td><b><font color="000000">�ԡ���</font>�� &nbsp; </b>
<br>
<SCRIPT>
var moderated="�������� ���ɵ�Ƥ �������� ���ÿɰ� Ƣ������ ������ ������ �ĵ����� ��Ȥ��Ĭ ����˹�� ������ȡ �����ѻ� �������� Բ������ ���Ų�� �����쿪 ����Ƹ� �������� ������� ��С���� ѭ�浸�� �������� ���Կ��� �������� ׷��̼�"
var list= moderated.split (' '); 
for(i=0;i<list.length;i++) {
if (i==5 || i==10 || i==15 || i==20) document.write("<br>")
if (list[i] !=""){document.write("�� <input type=checkbox value=' "+list[i]+"' name=character id=character"+i+"> <label for=character"+i+">"+list[i]+"</label>")}
}
</SCRIPT>

</td>
</tr>
<tr>
<td><b>���˼�飺 &nbsp;
<textarea name=personal rows=6 cols=65></textarea>
</b></td>
</tr>
<tr>
<td height="10"><b>ǩ������ &nbsp;
<textarea name=sign rows=6 cols=65></textarea> </b> </td>
</tr>
</table>
</td>
</tr>
<tr class=a3>
<td height="2" valign="top" class=a4 width="46%"><b> ���ԡ�����</b>
<select size=1 name=sex>
<option value="" selected>[��ѡ��]</option>
<option value=male>��</option>
<option value=female>Ů</option>
</select>
</td>
</tr>

<tr class=a3>
<td height="2" valign="top" width="46%">��<b>�������ң�</b>
<b>
<input type="text" name="country" size="18">
</b> </td>
</tr>
<tr class=a3>
<td height="2" valign="top" class=a4 width="46%">��<b>ʡ�����ݣ�</b>
<input type="text" name="province" size="18">
</td>
</tr>
<tr class=a3>
<td height="2" valign="top" width="46%">��<b>�ǡ����У�
</b>
<input type="text" name="city" size="18">
</td>
</tr>
<tr class=a3>
<td height="2" valign="top" class=a4 width="46%">
��<b>Ѫ�����ͣ�</b>
<select size=1 name=blood>
<option value="" selected>[��ѡ��]</option>
<option
value=A>A</option>
<option value=B>B</option>
<option
value=AB>AB</option>
<option value=O>O</option>
<option
value=����>����</option>
</select>
</td>
</tr>
<tr class=a3>
<td height="2" valign="top" width="46%">��<b>�š�������</b>
<select size=1 name=belief>
<option value="" selected>[��ѡ��]</option>
<option value=���>���</option>
<option
value=����>����</option>
<option value=������>������</option>
<option
value=������>������</option>
<option value=�ؽ�>�ؽ�</option>
<option
value=��������>��������</option>
<option value=����������>����������</option>
<option
value=����>����</option>
</select></td>
</tr>
<tr class=a3>
<td height="2" valign="top" class=a4 width="46%">��<b>ְ����ҵ�� </b>
<select name="occupation">
<option value="" selected>[��ѡ��]</option>
<option value="�ƻ�/����">�ƻ�/����</option>
<option value="����ʦ">����ʦ</option>
<option value="����">����</option>
<option value="����������ҵ">����������ҵ</option>
<option value="��ͥ����">��ͥ����</option>
<option value="����/��ѵ">����/��ѵ</option>
<option value="�ͻ�����/֧��">�ͻ�����/֧��</option>
<option value="������/�ֹ�����">������/�ֹ�����</option>
<option value="����">����</option>
<option value="��ְҵ">��ְҵ</option>
<option value="����/�г�/���">����/�г�/���</option>
<option value="ѧ��">ѧ��</option>
<option value="�о��Ϳ���">�о��Ϳ���</option>
<option value="һ�����/�ල">һ�����/�ල</option>
<option value="����/����">����/����</option>
<option value="ִ�й�/�߼�����">ִ�й�/�߼�����</option>
<option value="����/����/����">����/����/����</option>
<option value="רҵ��Ա">רҵ��Ա</option>
<option value="�Թ�/ҵ��">�Թ�/ҵ��</option>
<option value="����">����</option>
</select></td>
</tr>
<tr class=a3>
<td height="2" valign="top" width="46%">��<b>����״����</b>
<select size=1 name=marital>
<option value="" selected>[��ѡ��]</option>
<option value=δ��>δ��</option>
<option
value=�ѻ�>�ѻ�</option>
<option value=����>����</option>
<option
value=ɥż>ɥż</option>
</select></td>
</tr>
<tr class=a3>
<td height="2" valign="top" class=a4 width="46%">��<b>���ѧ����</b>
<select size=1 name=education>
<option value="" selected>[��ѡ��]</option>
<option value=Сѧ>Сѧ</option>
<option
value=����>����</option>
<option value=����>����</option>
<option
value=��ѧ>��ѧ</option>
<option value=˶ʿ>˶ʿ</option>
<option
value=��ʿ>��ʿ</option>
</select></td>
</tr>
<tr class=a3>
<td height="2" valign="top" width="46%">��<b>��ҵԺУ��</b>
<input type="text" name="college" size="18"></td>
</tr>

<tr class=a3>
<td height="1" valign="top" class=a4 width="46%">��<b>�ѣѺ��룺 <input type="text" name="userqq" size="18" onkeyup=if(isNaN(this.value))this.value=''>
</b></td>
</tr>
<tr class=a3>
<td height="1" valign="top" class=a3 width="46%">��<b>ICQ ���룺 
<input type="text" name="icq" size="18" onkeyup=if(isNaN(this.value))this.value=''>
</b></td>
</tr>
<tr class=a3>
<td valign="top" class=a4 width="46%">��<b>������ҳ��</b> 
<input type="text" name="userhome" size="20" value="http://"></td>
</tr>
<tr bgcolor="FFFFFF">
<td colspan="2" height="25" valign="middle" align="left"><b>&nbsp;���뱣����Ϣ</b>���������ݽ�����д��</td>
</tr>
<tr>
<td class=a4 height="2" align="right" valign="middle" width="46%"><b>������ʾ���⣺</b></td>
<td class=a4 height="2" align="left" valign="middle" width="54%">
&nbsp;


<select name="question">
<option value="" selected>[��ѡ��]</option>
<option value="��ϲ���ĳ��">��ϲ���ĳ��</option>
<option value="��ϲ���ĵ�Ӱ��">��ϲ���ĵ�Ӱ��</option>
<option value="��������� [��/��/��]��">��������� [��/��/��]��</option>
<option value="���׵����֣�">���׵����֣�</option>
<option value="��ż�����֣�">��ż�����֣�</option>
<option value="��һ�����ӵİ��ƣ�">��һ�����ӵİ��ƣ�</option>
<option value="��ѧ��У����">��ѧ��У����</option>
<option value="���𾴵���ʦ��">���𾴵���ʦ��</option>
<option value="��ϲ�������жӣ�">��ϲ�������жӣ�</option>
</select>

</td>
</tr>
<tr class=a3>
<td height="2" align="right" valign="middle" width="46%"><b>������ʾ�𰸣�</b></td>
<td height="2" align="left" valign="middle" width="54%"> &nbsp;
<input type="text" name="answer" size="40">
</td>
</tr>

<tr bgcolor="FFFFFF" align="center">
<td height="2" valign="middle" colspan="2">
<input type="submit" value=" ע �� >>�� һ �� ">
</td>
</tr>
</table>
</td>
</tr></table>

<SCRIPT>valignbottom()</SCRIPT>

<SCRIPT>
language=navigator.language?navigator.language:navigator.browserLanguage
if (language=="zh-cn"){country="�й�"}
else
if (language=="zh-hk"){country="�й����"}
else
if (language=="zh-tw"){country="�й�̨��"}
else
if (language=="zh-sg"){country="�¼���"}
else
if (language=="en-us"){country="����"}
else
if (language=="en-gb"){country="Ӣ��"}
else
if (language=="en-au"){country="�Ĵ�����"}
else
if (language=="en-ca"){country="���ô�"}
else
if (language=="en-nz"){country="������"}
else
if (language=="en-ie"){country="������"}
else
if (language=="en-za"){country="�Ϸ�"}
else
if (language=="en-jm"){country="�����"}
else
if (language=="en-bz"){country="������"}
else
country=""
document.form.country.value=country


function VerifyInput()
{
username=document.form.username.value
//if (/[^\x00-\xff]/g.test(username)){alert("�û������ܺ��к���");return false;}

if (username == "")
{
alert("�����������û���");
document.form.username.focus();
return false;
}

var mail = document.form.usermail.value;
if(mail.indexOf('@',0) == -1 || mail.indexOf('.',0) == -1){
alert("�������Email�д���\n�����¼������Email");
document.form.usermail.focus();
return false;
}

if (document.form.usermail.value == "")
{
alert("����������EMAIL��ַ");
document.form.usermail.focus();
return false;
}

return true;
}
</SCRIPT>

<%
htmlend
%>