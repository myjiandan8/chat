<!-- #include file="setup.asp" -->
<%
if adminpassword<>session("pass") then response.redirect "admin.asp?menu=login"
log(""&Request.ServerVariables("script_name")&"<br>"&Request.ServerVariables("Query_String")&"<br>"&Request.form&"")

TimeLimit=HTMLEncode(Request("TimeLimit"))
username=HTMLEncode(Request("username"))
membercode=HTMLEncode(Request("membercode"))


response.write "<center>"

select case Request("menu")

case "affiche"
affiche

case "afficheok"
afficheok

case "message"
message

case "broadcast"
broadcast

case "sendmail"
sendmail

case "sendmailok"
sendmailok



case "messageok"
if TimeLimit="" then error2("��û��ѡ�����ڣ�")
conn.execute("delete from [message] where time<"&SqlNowString&"-"&TimeLimit&"")
error2("�Ѿ���"&TimeLimit&"����ǰ�Ķ�ѶϢɾ���ˣ�")


case "delmessageuser"
if username="" then error2("��û�������û�����")
conn.execute("delete from [message] where author='"&username&"' or incept='"&username&"'")
error2("�Ѿ���"&username&"�Ķ�ѶϢȫ��ɾ���ˣ�")

case "delmessagekey"
key=HTMLEncode(Request("key"))
if key="" then error2("��û������ؼ��ʣ�")
conn.execute("delete from [message] where content like '%"&key&"%'")
error2("�Ѿ��������а��� "&key&" �Ķ�ѶϢɾ���ˣ�")

end select


sub sendmail
%>

<form method="post" action="?menu=sendmailok">
<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>Ⱥ���ʼ�</td>
  </tr>
  <tr height=25>
    <td class=a3 align=left>&nbsp;&nbsp; ���⣺<input size="40" name="title"></td>
    <td class=a3 align=middle>���ն���
<select name=membercode>
<option value="">���л�Ա</option>
<option value="1">��ͨ��Ա</option>
<option value="4">�� �� Ա</option>
<option value="5">��������</option>
</select>&nbsp;&nbsp;&nbsp; </td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
 <textarea name="content" rows="5" cols="70"></textarea>
</td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
 <input type="submit" value=" �� �� " name="submit">
<input type="reset" value=" �� �� " name="Submit2"><br></td></tr></table></form>

<%
end sub


sub sendmailok

if Request("title")="" then error2("����д�ʼ�����")
if Request("content")="" then error2("����д�ʼ�����")


if membercode<>"" then
sql="select usermail from [user] where membercode="&membercode&""
else
sql="select usermail from [user]"
end if

Set Rs=Conn.Execute(sql)
do while not rs.eof

mailaddress=""&rs("usermail")&""
mailtopic=Request("title")
body=""&Request("content")&""&vbCrlf&""&vbCrlf&"���ʼ�ͨ�� BBSxp Ⱥ��ϵͳ���͡�����������Yuzi������(http://www.yuzi.net)"
%><!-- #include file="inc/mail.asp" --><%

rs.movenext
loop
rs.close

response.write "�ʼ����ͳɹ���"

end sub


sub message
%>




���ݿ⹲�� <%=conn.execute("Select count(id)from message")(0)%> ����ѶϢ
<br><br>

<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25 class=a1>
		<td align="center">����ɾ������Ϣ</td>
	</tr>
	<tr class=a3>
		<td align="center"><form method="post" action="?menu=delmessageuser">����ɾ�� <input size="13" name="username" value="�û���" onfocus="this.value=''"> �Ķ�ѶϢ
<input type="submit" value="ȷ��">
		</td></form>
	</tr>
	
	<tr class=a3>
		<td align="center"><form method="post" action="?menu=delmessagekey">����ɾ�����ݺ��� <input size="20" name="key" value="�ؼ���" onfocus="this.value=''"> �Ķ�ѶϢ
<input type="submit" value="ȷ��">
		</td></form>
	</tr>
	
		<tr class=a3>
		<td align="center"><form method="post" action="?menu=messageok">ɾ�� <INPUT size=2 name=TimeLimit value="15">
			����ǰ�Ķ�ѶϢ
<input type="submit" value="ȷ��">

		</td></form>
	</tr>
	
</table>
</form>
<form method="post" action="?menu=broadcast">
<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle width="50%">ϵͳ�㲥</td>
    <td class=a1 align=middle width="50%">���ն���
<select name=membercode>
<option value="">���߻�Ա</option>
<option value="1">��ͨ��Ա</option>
<option value="4">�� �� Ա</option>
<option value="5">��������</option>
</select>
</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
	<textarea name="content" rows="5" cols="70"></textarea>
</td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
	<input type="submit" value=" �� �� " name="submit5">
<input type="reset" value=" �� �� " name="Submit6"></td></tr></table></form>
<%
end sub

sub broadcast
content=HTMLEncode(Request.Form("content"))

if content="" then error2("����д�㲥����!")

if membercode<>"" then
sql="select username from [user] where membercode="&membercode&""
else
sql="select username from online where username<>''"
end if

Set Rs=Conn.Execute(sql)
do while not rs.eof
Count=Count+1
conn.Execute("insert into message (author,incept,content) values ('"&Request.Cookies("username")&"','"&rs("username")&"','��ϵͳ�㲥����"&content&"')")
conn.execute("update [user] set newmessage=newmessage+1 where username='"&rs("username")&"'")
rs.movenext
loop
rs.close

%>
�����ɹ�
<br><br>
�����͸� <%=Count%> λ�����û�<br><br>
<a href=javascript:history.back()>�� ��</a>
<%
end sub


sub affiche
%>
<form name="yuziform" method="post" action="?menu=afficheok" onSubmit="return CheckForm(this);">
<input name="content" type="hidden" value='<%=affichecontent%>'>

<table cellspacing="1" cellpadding="2" width="90%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>��������</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle width="16%">
���⣺</td>
    <td class=a3 width="82%">
<input type="text" name="affichetitle" size="60" value="<%=affichetitle%>"></td></tr>
   <tr height=25>
    <td class=a3 align=middle width="16%">
���ݣ�</td>
    <td class=a3 width="82%" height="250">
    
    <SCRIPT src="inc/post.js"></SCRIPT>

</td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
<input type="submit" value=" �� �� " name="submit1">
<input name=preview type="Button" value=" Ԥ �� " onclick="Gopreview()">
<input type="reset" value=" �� �� ">
</td></tr></table></form><form name=preview action=preview.asp method=post target=preview_page><input name="content" type="hidden"></form>
<%
end sub

sub afficheok
rs.Open "clubconfig",Conn,1,3
rs("affichetitle")=Request("affichetitle")
rs("affichecontent")=replace(replace(Request("content"),vbCrlf,""),"'","&#39;")
rs("affichetime")=now()
rs("afficheman")=Request.Cookies("username")
rs.update
rs.close
%> �����ɹ�<br><br><a href=javascript:history.back()>�� ��</a>
<%
end sub

htmlend

%>