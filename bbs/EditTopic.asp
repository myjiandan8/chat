<!-- #include file="setup.asp" -->
<%
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")
id=int(Request("id"))
top

forumid=Conn.Execute("Select forumid From forum where id="&id)(0)


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

if Request.ServerVariables("request_method") = "POST" then

topic=HTMLEncode(Request.Form("idtopic"))
content=ContentEncode(Request.Form("content"))

if badwords<>empty then
filtrate=split(badwords,"|")
for i = 0 to ubound(filtrate)
topic=ReplaceText(topic,""&filtrate(i)&"",string(len(filtrate(i)),"*"))
content=ReplaceText(content,""&filtrate(i)&"",string(len(filtrate(i)),"*"))
next
end if

if content=empty then message=message&"<li>����û����д"

if message<>"" then error(""&message&"")

if isnumeric(""&Request("retopicid")&"") then
sql="select * from reforum where id="&Request("retopicid")&""
else
sql="select * from forum where ID="&ID&" and forumid="&forumid&""
end if

rs.Open sql,Conn,1,3
if rs("username")<>Request.Cookies("username") and instr("|"&Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&"")(0)&"|","|"&Request.Cookies("username")&"|")=0 and membercode<4 then
error("<li>�Բ�������Ȩ�޲�����")
end if


if topic<>empty then rs("topic")=""&topic&""

content=""&content&"<p>�۴������ѱ� "&Request.Cookies("username")&" �� "&now()&" �༭����"
rs("content")=content
rs.update
rs.close


 
message="<li>�޸����ӳɹ�<li><a href=ShowPost.asp?id="&id&">��������</a><li><a href=ShowForum.asp?forumid="&forumid&">������̳</a><li><a href=Default.asp>����������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=ShowForum.asp?forumid="&forumid&">")

end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)
bbsname=rs("bbsname")
logo=rs("logo")
followid=rs("followid")
rs.close

if isnumeric(Request("retopicid")) then
sql="select * from reforum where id="&Request("retopicid")&""
else
sql="select * from forum where ID="&id&" and forumid="&forumid&""
end if
Set Rs=Conn.Execute(sql)
if rs.eof then error("<li>���ݿ��в����ڴ����ӵ�����")

if rs("username")<>Request.Cookies("username") and instr("|"&Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&"")(0)&"|","|"&Request.Cookies("username")&"|")=0 and membercode<4 then
error("<li>�Բ�������Ȩ�޲�����")
end if

content =rs("content")
rs.close

%>
<script>function runEx(){var winEx = window.open('', '', 'resizable,scrollbars');winEx.document.write(unescape(event.srcElement.parentElement.children[0].value));}
if ("<%=logo%>"!=''){logo.innerHTML="<img border=0 src=<%=logo%> onload='javascript:if(this.height>60)this.height=60;'>"}
</script>


	<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class=a2>
		<tr class=a3>
			<td height="25">&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <%ForumTree(followid)%><%=ForumTreeList%> <a href=ShowForum.asp?forumid=<%=forumid%>><%=bbsname%></a> �� <a href="ShowPost.asp?id=<%=id%>"><%=Request("topic")%></a> �� �༭����</td>
		</tr>
	</table><br>


<SCRIPT>valigntop()</SCRIPT>
<TABLE cellSpacing=1 cellPadding=5 width=99% border=0 class=a2 align="center">
<form name="yuziform" method="post" onSubmit="return CheckForm(this);">
<input name="content" type="hidden" value='<%=server.htmlencode(content)%>'>


<TR>
<TD id=titlelarge vAlign=left colSpan=2 height=25 class=a1><b>�༭����</b></TD></TR>

<%if not isnumeric(Request("retopicid")) then%>

<TR class=a4>
<TD width="20%" height=25><B>���±���</B>&nbsp; </TD>
<TD width=574 height=25>
<INPUT maxLength=30 size=60 name=idtopic value="<%=Request("topic")%>"></TD></TR>


<%end if%>

<TR>
<TD vAlign=top class=a3 width="20%">
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
</TD></TR></TABLE></TD>
<TD class=a3 height=250>
<SCRIPT src="inc/post.js"></SCRIPT>
</TD></TR>

<TR>
<TD align=left class=a4 width="20%">
<IMG src=images/affix.gif><b>���Ӹ���</b></TD>

<TD align=left class=a4><font color="FFFFFF"><b><IFRAME src="upfile.asp" frameBorder=0 width="100%" scrolling=no height=21></IFRAME></b></font></TD></TR>


<TR>
<TD align=middle class=a3 colSpan=2 height=27>
<INPUT tabIndex=4 type=submit value=ȷ���༭ name=submit1> <input name=preview type="Button" value=" Ԥ �� " onclick="Gopreview()"> <INPUT type=reset value=" �� �� "></TD></TR></FORM>
</TABLE>
<SCRIPT>valignbottom()</SCRIPT>


<form name=preview action=preview.asp method=post target=preview_page><input name="content" type="hidden"></form>

<%
htmlend
%>