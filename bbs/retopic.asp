<!-- #include file="setup.asp" -->
<%
top

if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")

DetectPost

id=int(Request("id"))
forumid=Conn.Execute("Select forumid From forum where id="&id)(0)
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
topic=HTMLEncode(Request.Form("topic"))
content=ContentEncode(Request.Form("content"))

if badwords<>empty then
filtrate=split(badwords,"|")
for i = 0 to ubound(filtrate)
topic=ReplaceText(topic,""&filtrate(i)&"",string(len(filtrate(i)),"*"))
content=ReplaceText(content,""&filtrate(i)&"",string(len(filtrate(i)),"*"))
next
end if

if Request.ServerVariables("request_method") = "POST" and Request("preview")="" then

If not conn.Execute("Select username From [prison] where username='"&Request.Cookies("username")&"'" ).eof Then error("<li>�����ؽ�<a href=prison.asp>����</a>")

username=Request.Cookies("username")


if Conn.Execute("Select locktopic From [forum] where ID="&ID&"")(0)=1 then error("<li>�������Ѿ��رգ��������µĻظ�")

if Len(content)<2 then message=message&"<li>�������ݲ���С�� 2 �ַ�"


if Request.Cookies("posttime")<>empty then
if DateDiff("s",Request.Cookies("posttime"),Now()) < int(PostTime) then message=message&"<li>Ϊ��ֹ�����ó����ˮ����̳����һ�������η�������������"&PostTime&"�룡"
end if

if message<>"" then error(""&message&"")

sql="select * from [user] where username='"&HTMLEncode(username)&"'"
rs.Open sql,Conn,1,3


if rs("userlife")<3 then
message=message&"<li>��������ֵ < <FONT color=red>3</FONT> ���ܷ�������<li>ÿ��Чͣ��ʱ��<FONT color=red> 10 </FONT>���ӣ�����ֵ��<FONT color=red>+10</FONT>"
end if

if rs("experience")<1 and Reg10 = 1 then message=message&"<li>��ע���û���¼����ͣ��<FONT color=red> 10 </FONT>�������ϲſɷ�������"

if message<>"" then error(""&message&"")

if rs("membercode")<4 and instr("|"&Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&"")(0)&"|","|"&Request.Cookies("username")&"|")=0 then
rs("userlife")=rs("userlife")-2
end if



rs("landtime")=now()
rs("postrevert")=rs("postrevert")+1
rs("money")=rs("money")+2
rs("experience")=rs("experience")+2
rs.update
rs.close



sql="insert into reforum (topicid,username,content,postip) values ('"&id&"','"&Request.Cookies("username")&"','"&content&"','"&remoteaddr&"')"
conn.Execute(SQL)

conn.execute("update [forum] set lastname='"&username&"',replies=replies+1,lasttime='"&now()&"' where ID="&ID&"")
conn.execute("update [bbsconfig] set lasttopic='<a href=ShowPost.asp?id="&id&">"&left(topic,15)&"</a>',lastname='"&username&"',lasttime='"&now()&"',today=today+1,tolrestore=tolrestore+1 where id="&forumid&"")
conn.execute("update [clubconfig] set today=today+1")

Response.Cookies("posttime")=now


Application.Lock
Application(CacheName&"CountReforum") = Application(CacheName&"CountReforum")+1
Application.UnLock

message=message&"<li>�ظ�����ɹ�<li><a href=ShowPost.asp?id="&id&">��������</a><li><a href=ShowForum.asp?forumid="&forumid&">������̳</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=ShowForum.asp?forumid="&forumid&">")


end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''



sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)
bbsname=rs("bbsname")
logo=rs("logo")
followid=rs("followid")
rs.close



if Request("quote")=1 and Request("preview")="" then

if isnumeric(""&Request("retopicid")&"") then
sql="select * from reforum where id="&Request("retopicid")&""
else
sql="select * from forum where ID="&id&""
end if
Set Rs=Conn.Execute(sql)
content =rs("content")
quote="<blockquote><strong>����</strong>��<hr>ԭ���� <b>"&rs("username")&"</b> ������ <i>"&rs("posttime")&"</i> :<br>"&content&""&vbCrlf&"<hr></blockquote>"
rs.close

end if


%>
<script>
if ("<%=logo%>"!=''){logo.innerHTML="<img border=0 src=<%=logo%> onload='javascript:if(this.height>60)this.height=60;'>"}
</script>

	<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class=a2>
		<tr class=a3>
			<td height="25">&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <%ForumTree(followid)%><%=ForumTreeList%> <a href=ShowForum.asp?forumid=<%=forumid%>><%=bbsname%></a> �� <a href="ShowPost.asp?id=<%=id%>"><%=Request("topic")%></a> �� �ظ�����</td>
		</tr>
	</table><br>



<SCRIPT>valigntop()</SCRIPT>
<TABLE cellSpacing=1 cellPadding=5 width=99% border=0 class=a2 align="center">





<form name="yuziform" method="post" onSubmit="return CheckForm(this);">
<input name="content" type="hidden" value='<%=quote%>'>
<input type="hidden" value="<%=Request("topic")%>" name="topic">

<input type=hidden name=id value=<%=id%>>

<TR>
<TD vAlign=left class=a1 colSpan=2 height=25><b>�ظ�����</b></TD></TR>
<TR>
<TD width=160 class=a4 height=25><B>�û�����</B></TD>
<TD width=574 class=a4 height=25><%=Request.Cookies("username")%> [<a href="login.asp?menu=out">�˳���¼</a>]</TD>
</TR>
<TR>
<TD vAlign=top class=a3>
<TABLE cellSpacing=0 cellPadding=0 width=100% align=left border=0>

<TR>
<TD vAlign=top align=left width=100% class=a3><B>��������</B><BR>
(<a href="javascript:CheckLength();">�鿴���ݳ���</a>)<BR><BR>
</TD></TR>
<TR>
<TD vAlign=center align=center width=100%>
<TABLE
style="BORDER-RIGHT: 1px inset; BORDER-TOP: 1px inset; BORDER-LEFT: 1px inset; BORDER-BOTTOM: 1px inset"
cellSpacing=1 cellPadding=3 border=0>
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

</TR></TABLE>
</TD></TR>
</TABLE></TD>
<TD class=a3 height=250>

<SCRIPT src="inc/post.js"></SCRIPT>
</TD></TR>



<TR>
<TD align=left class=a4>
<IMG src=images/affix.gif><b>���Ӹ���</b></TD>

<TD align=left class=a4><font color="FFFFFF"><b><IFRAME src="upfile.asp" frameBorder=0 width="100%" scrolling=no height=21></IFRAME></b></font></TD></TR>

<TR>
<TD align=middle class=a3 colSpan=2 height=27>
<INPUT tabIndex=4 type=submit value=�ظ����� name=submit1>&nbsp; <input name=preview type="Button" value=" Ԥ �� " onclick="Gopreview()">   <INPUT type=reset value=" �� �� "></TD></TR></FORM>
</TABLE>
<SCRIPT>valignbottom()</SCRIPT>
<form name=preview action=preview.asp method=post target=preview_page><input name="content" type="hidden"></form>

<%

htmlend
%>