<!-- #include file="setup.asp" -->

<%=nowtime%>
<%
top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")

DetectPost

forumid=int(Request("forumid"))
topic=HTMLEncode(Request.Form("topic"))
content=ContentEncode(Request.Form("content"))

if badwords<>empty then
filtrate=split(badwords,"|")
for i = 0 to ubound(filtrate)
topic=ReplaceText(topic,""&filtrate(i)&"",string(len(filtrate(i)),"*"))
content=ReplaceText(content,""&filtrate(i)&"",string(len(filtrate(i)),"*"))
next
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if Request.ServerVariables("request_method") = "POST" and Request("preview")="" then

If not conn.Execute("Select username From [prison] where username='"&Request.Cookies("username")&"'" ).eof Then error("<li>�����ؽ�<a href=prison.asp>����</a>")

username=Request.Cookies("username")
icon=Request("icon")

if Len(topic)<2 then message=message&"<li>�������ⲻ��С�� 2 �ַ�"
if Len(content)<2 then message=message&"<li>�������ݲ���С�� 2 �ַ�"

if Request.Cookies("posttime")<>empty then
if DateDiff("s",Request.Cookies("posttime"),Now()) < int(PostTime) then message=message&"<li>Ϊ��ֹ�����ó����ˮ����̳����һ�������η�������������"&PostTime&"�룡"
end if


if message<>"" then error(""&message&"")


sql="select * from [user] where username='"&HTMLEncode(username)&"'"
rs.Open sql,Conn,1,3

if rs("userlife")<3 then message=message&"<li>��������ֵ < <FONT color=red>3</FONT> ���ܷ�������<li>ÿ��Чͣ��ʱ��<FONT color=red> 10 </FONT>���ӣ�����ֵ��<FONT color=red>+10</FONT>"
if rs("experience")<1 and Reg10 = 1 then message=message&"<li>��ע���û���¼����ͣ��<FONT color=red> 10 </FONT>�������ϲſɷ�������"

if message<>"" then error(""&message&"")


if rs("membercode")<4 and instr("|"&Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&"")(0)&"|","|"&Request.Cookies("username")&"|")=0 then
rs("userlife")=rs("userlife")-3
end if

rs("landtime")=now()
rs("posttopic")=rs("posttopic")+1
rs("money")=rs("money")+3
rs("experience")=rs("experience")+3
rs.update
rs.close


rs.Open "forum",conn,1,3
rs.addnew
rs("username")=username
rs("lastname")=username
rs("forumid")=forumid
rs("topic")=topic
rs("content")=content
rs("postip")=remoteaddr
rs("icon")=icon
rs("deltopic")=ActivationForum
'''''''''''''''''''''''''''''''''''
'ͶƱ�������
if Request("vote")<>"" then
vote=Request("vote")
if instr(vote,"|") > 0 then error("<li>ͶƱѡ���в��ܺ��С�|���ַ�")
polltopic=split(vote,chr(13)&chr(10))
j=0
for i = 0 to ubound(polltopic)
if not (polltopic(i)="" or polltopic(i)=" ") then
allpolltopic=""&allpolltopic&""&polltopic(i)&"|"
j=j+1
end if
next

for y = 1 to j
votenum=""&votenum&"0|"
next
rs("polltopic")=HTMLEncode(allpolltopic)
rs("pollresult")=votenum
rs("multiplicity")=Request("multiplicity")
end if
'''''''''''''''''''''''''''''''''''
rs.update
id=rs("id")
rs.close



conn.execute("update [bbsconfig] set lasttopic='<a href=ShowPost.asp?id="&id&">"&left(topic,15)&"</a>',lastname='"&username&"',lasttime='"&now()&"',today=today+1,toltopic=toltopic+1,tolrestore=tolrestore+1 where id="&forumid&"")
conn.execute("update [clubconfig] set today=today+1")


Application.Lock
Application(CacheName&"CountForum") = Application(CacheName&"CountForum")+1
Application.UnLock

Response.Cookies("posttime")=now


if ActivationForum=1 then
ActivationForum="������̳��������ƶȣ��������������Ҫ�ȴ�����Ա���������ʾ����̳��"
else
ActivationForum="<a href=ShowPost.asp?id="&id&">��������</a>"
end if

message="<li>�����ⷢ��ɹ�<li>"&ActivationForum&"<li><a href=ShowForum.asp?forumid="&forumid&">������̳</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=ShowForum.asp?forumid="&forumid&">")

end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)
bbsname=rs("bbsname")
logo=rs("logo")
moderated=rs("moderated")
followid=rs("followid")
pass=rs("pass")
password=rs("password")
userlist=rs("userlist")
rs.close
%>
<!-- #include file="inc/validate.asp" -->
<script>
if ("<%=logo%>"!=''){logo.innerHTML="<img border=0 src=<%=logo%> onload='javascript:if(this.height>60)this.height=60;'>"}
</script>
	<table border="0" width="99%"  align=center cellspacing="1" cellpadding="4" class=a2>
		<tr class=a3>
			<td height="25">&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <%ForumTree(followid)%><%=ForumTreeList%> <a href=ShowForum.asp?forumid=<%=forumid%>><%=bbsname%></a> �� ��������</td>
		</tr>
	</table><br>


<script>
function showadv(){
if (document.yuziform.advshow.checked == true) {
adv.style.display = "";
}else{
adv.style.display = "none";
}
}
</script>



<SCRIPT>valigntop()</SCRIPT>

<TABLE cellSpacing=1 cellPadding=6 width=99% border=0 class=a2 align=center>


<form name="yuziform" method="post" onSubmit="return CheckForm(this);">
<input name="content" type="hidden">

<input type=hidden name=forumid value=<%=forumid%>>

<TR>
<TD vAlign=left colSpan=2 height=25 class=a1><b>��������</b></TD></TR>
<TR>
<TD width=160 class=a4 height=25><B>�û�����</B></TD>
<TD width=570 class=a4 height=25><%=Request.Cookies("username")%> [<a href="login.asp?menu=out">�˳���¼</a>]</TD>
</TR>
<TR>
<TD width=160 class=a3 height=25><B>���±��� </B> <SELECT onchange=DoTitle(this.options[this.selectedIndex].value)>
<OPTION value="" selected>&nbsp;����</OPTION> <OPTION
value=[ԭ��]>[ԭ��]</OPTION><OPTION value=[ת��]>[ת��]</OPTION> <OPTION
value=[��ˮ]>[��ˮ]</OPTION><OPTION value=[����]>[����]</OPTION> <OPTION
value=[����]>[����]</OPTION><OPTION value=[�Ƽ�]>[�Ƽ�]</OPTION> <OPTION
value=[����]>[����]</OPTION><OPTION value=[ע��]>[ע��]</OPTION> <OPTION
value=[��ͼ]>[��ͼ]</OPTION><OPTION value=[����]>[����]</OPTION> <OPTION
value=[����]>[����]</OPTION><OPTION value=[����]>[����]</OPTION></SELECT> </TD>
<TD width=570 class=a3 height=25>
<INPUT maxLength=30 size=60 name=topic value="<%=Request("topic")%>"></TD></TR>
<TR>
<TD vAlign=top align=left width=160 class=a4 height=23><B>���ı���</B></TD>
<TD width=570 class=a4>
<script>
index = Math.floor(Math.random() * 24+1);
for(i=1;i<=24;i++) {
if (i==index) ii="checked";else ii=""
document.write("<INPUT type=radio value="+i+" name=icon "+ii+"><IMG src=images/brow/"+i+".gif>��")
if (i==12) document.write("<br>")
}
</script>

 </TD></TR>

<TR>
<TD vAlign=top class=a3>
<TABLE cellSpacing=0 cellPadding=0 width=100% align=left border=0>

<TR>
<TD vAlign=top align=left width=100% class=a3><B>��������</B><BR>
(<a href="javascript:CheckLength();">�鿴���ݳ���</a>)<BR>
<BR></TD></TR>
<TR>
<TD align=center width=100%>
<TABLE style="BORDER-RIGHT: 1px inset; BORDER-TOP: 1px inset; BORDER-LEFT: 1px inset; BORDER-BOTTOM: 1px inset" cellSpacing=1 cellPadding=3 border=0>
<TR align=middle>
<script>
ii=0
for(i=1;i<=25;i++) {
index = Math.floor(Math.random() * 80+1);
ii=ii+1
document.write("<TD><a href=javascript:emoticon('"+index+"')><img border=0 src=images/Emotions/"+index+".gif></a></TD>")
if (ii==5){document.write("</TR><TR align=middle>");ii=0;}
}
</script>
</TR>

</TABLE>


</TD></TR>

<TR><TD><br>
<INPUT id=advcheck name=advshow type=checkbox value=1 onclick=showadv()><label for=advcheck> ��ʾͶƱѡ��</label>

</TD></TR>

</TABLE></TD>

<TD class=a3 height=250>

<SCRIPT src="inc/post.js"></SCRIPT>

</TD></TR>


<TR id=adv style=DISPLAY:none>
<TD vAlign=top align=left width=160 class=a4>


<FONT color=000000><B>ͶƱ��Ŀ</B><BR>
ÿ��һ��ͶƱ��Ŀ<BR><BR>
<INPUT type=radio CHECKED value=0 name=multiplicity id=multiplicity>
<label for=multiplicity>��ѡͶƱ</label>
<BR><INPUT type=radio value=1 name=multiplicity id=multiplicity_1> <label for=multiplicity_1>��ѡͶƱ</label></FONT>

</TD>
<TD class=a4>
<TEXTAREA name=vote rows=5 style="width:100%"></TEXTAREA>
</TD></TR>


<TR>
<TD align=left class=a4>
<IMG src=images/affix.gif><b>���Ӹ���</b></TD>
</TD>

<TD align=left class=a4><font color="FFFFFF"><b><IFRAME src="upfile.asp" frameBorder=0 width="100%" scrolling=no height=21></IFRAME></b></font></TD></TR>
<TR>
<TD align=middle class=a3 colSpan=2 height=27>
<INPUT tabIndex=4 type=submit value=���������� name=submit1> <input name=preview type="Button" value=" Ԥ �� " onclick="Gopreview()"> <INPUT type=reset value=" �� �� "></TD></TR></FORM>
</TABLE>
<SCRIPT>valignbottom()</SCRIPT>

<form name=preview action=preview.asp method=post target=preview_page><input name="content" type="hidden"></form>

<%
htmlend
%>