<!-- #include file="setup.asp" -->
<%
top
id=int(Request("id"))
forumid=Conn.Execute("Select forumid From forum where id="&id)(0)
sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)
bbsname=rs("bbsname")
moderated=rs("moderated")
logo=rs("logo")
followid=rs("followid")
pass=rs("pass")
password=rs("password")
userlist=rs("userlist")
Set Rs = Nothing

sql="select username from online where username<>'' and eremite<>1"
Set Rs=Conn.Execute(sql)
onlinelist="|"
Do While Not RS.EOF
onlinelist=""&onlinelist&""&rs("username")&"|"
rs.movenext
loop
Set Rs = Nothing



if Request("action")="next" then
sql="select top 1 * from forum where id > "&id&" and forumid="&forumid&" and deltopic<>1"
elseif Request("action")="Previous" then
sql="select top 1 * from forum where id < "&id&" and forumid="&forumid&" and deltopic<>1 order by id Desc"
else
sql="select * from forum where ID="&id&""
end if
Set Rs=Conn.Execute(sql)

if rs.eof or rs.bof then error"<li>ϵͳ�����ڸ����ӵ�����"
if rs("deltopic")=1 and membercode<4 then error"<li>�����ⲻ���ڣ�"
%> 
<!-- #include file="inc/validate.asp" -->
<script src="inc/birth.js"></script>

<title><%=rs("topic")%> - Powered By BBSxp</title>

<script>
function copyText(obj) {var rng = document.body.createTextRange();rng.moveToElementText(obj);rng.select();rng.execCommand('Copy');}

var i=0;

var onlinelist= "<%=onlinelist%>";
var badlist= "<%=badlist%>|<%=Request.Cookies("badlist")%>";
var moderated= "|<%=moderated%>|";
var topic="<%=rs("topic")%>"
var topicid="<%=Request("ID")%>"

if ("<%=logo%>"!=''){logo.innerHTML="<img border=0 src=<%=logo%> onload='javascript:if(this.height>60)this.height=60;'>"}
</script>

	<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class=a2>
		<tr class=a3>
			<td height="25">
&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <%ForumTree(followid)%><%=ForumTreeList%> <a href=ShowForum.asp?forumid=<%=forumid%>><%=bbsname%></a> �� <%=rs("topic")%></td>
		</tr>
	</table><br>
<table cellspacing="0" cellpadding="0" width="99%"  align="center" border="0"><tr>
	<td height="35" valign="bottom"><a href="newtopic.asp?forumid=<%=rs("forumid")%>"><img alt="����һ��������" src="images/skins/<%=Request.Cookies("skins")%>/post.gif" border="0"></a>��<a href="retopic.asp?id=<%=rs("id")%>&topic=<%=rs("topic")%>"><img alt="�ظ�����" src="images/skins/<%=Request.Cookies("skins")%>/reply.gif" border="0"></a></td><td align="right" height="35" valign="bottom"><font color="333333">���Ǳ����� <b><%=rs("views")%></b> ���Ķ���</font>����<a href="?action=Previous&id=<%=rs("id")%>"><img height="12" alt="�����һƪ����" src="images/prethread.gif" width="52" border="0"></a>��<a style="text-decoration: none" href="javascript:location.reload()"><img height="12" alt="ˢ�±�����" src="images/refresh.gif" width="40" border="0"></a>��<a href="?action=next&id=<%=rs("id")%>"><img height="12" alt="�����һƪ����" src="images/nextthread.gif" width="52" border="0"></a></font></td></tr></table>

<SCRIPT>valigntop()</SCRIPT>

<table width="99%"  border="0" cellspacing="1" class="a2" height="21" align="center"><tr class="a1">
	<td width="100%" height="18">
	<table border="0" width="100%" cellspacing="0">
		<tr class="a1">
			<td><b>&nbsp;����</b>��<%=rs("topic")%></td>
				<td align="right"> 
<a target=_blank href=print.asp?id=<%=id%>><img alt="�ʺϴ�ӡ����ӡ�İ汾" src=images/print.gif border=0></a>&nbsp; 
<script>document.write("<a target=_blank href='mailto:?subject=<%=rs("topic")%>&body="+location.href+"'>");</script><img alt="ͨ�������ʼ����ʹ�ҳ��" src=images/sendmail.gif border=0></a>&nbsp; 
<a href="javascript:window.external.AddFavorite(location.href,document.title)"><img alt="��Ӽӵ�IE�ղؼ�" src="images/favs.gif" border="0"></a>&nbsp; 
<script>document.write("<a style=cursor:hand onclick=\"javascript:open('message.asp?menu=post&report=1&moderated=<%=moderated%>&body=���������ӡ���"+location.href+"','','width=320,height=170')\">");</script><img alt="���汾��" src="images/feedback.gif" border="0"></a>&nbsp; 
</td></tr></table>
</td></tr></table>
<%
if Request("topage")<2 then
content=rs("content")
'''''''ͶƱ''''''''
if rs("polltopic")<>"" then
if rs("multiplicity")=1 then
multiplicity="checkbox"
else
multiplicity="radio"
end if
content=""&content&"<form action=postvote.asp?id="&rs("id")&" method=POST><table><tr><td><table>"
vote=split(rs("polltopic"),"|")
for i = 0 to ubound(vote)
if not vote(i)="" then
content=""&content&"<tr><td height=22 valign=bottom>"&i+1&".<input type="&multiplicity&" value="&i&" name=postvote id=postvote"&i&"><label for=postvote"&i&">"&vote(i)&"</label></td></tr>"
end if
next
content=""&content&"</table></td><td><table>"
allticket=0
vote=split(rs("pollresult"),"|")
for i = 0 to ubound(vote)
if not vote(i)="" then
content=""&content&"<tr><td height=22 valign=bottom>Ʊ����"&vote(i)&"</td></tr>"
allticket=vote(i)+allticket
end if
next
content=""&content&"</table></td><td><table>"
vote=split(rs("pollresult"),"|")
for i = 0 to ubound(vote)
if not vote(i)="" and allticket<>0 then
content=""&content&"<tr><td height=22 valign=bottom><img src=images/bar/0.gif width="&vote(i)/allticket*100&" height=10> ["&formatnumber(vote(i)/allticket*100)&"%]</td></tr>"
end if
next
content=""&content&"</table></td></tr><TR><TD align=center><INPUT type=submit value=Ͷ��Ʊ></TD><td colspan=5 align=center><a href=postvote.asp?menu=look&id="&id&">[�鿴���ղ���ͶƱ���û��б�]</a></td></TR></table></form>"
end if


'''''''����ͶƱ''''''''
sql="select * from [user] where username='"&rs("username")&"'"
Set Rs1=Conn.Execute(sql)
postcount=rs1("posttopic")+rs1("postrevert")
sign=rs1("sign")
%>


<script>ShowPost('yuzi','<%=rs("username")%>','<%=content%>','<%=rs("posttime")%>','<%=rs1("honor")%>','<%=rs1("userface")%>','<%=rs1("sex")%>','<%=rs1("birthday")%>','<%=rs1("experience")%>','<%=rs1("membercode")%>','<%=rs1("faction")%>','<%=rs1("consort")%>','<%=rs1("money")%>','<%=postcount%>','<%=rs1("regtime")%>','<%=rs1("userlife")%>','<%=rs1("usermail")%>','<%=rs1("userhome")%>','<%=sign%>');</script>
<%
end if
Set Rs1 = Nothing

id=rs("id")
act=rs("topic")
replies=rs("replies")
locktopic=rs("locktopic")
goodtopic=rs("goodtopic")
toptopic=rs("toptopic")
rs.close


if replies > 0 then
pagesetup=15 '�趨ÿҳ����ʾ����
TotalPage=cint(replies/pagesetup)  '��ҳ��
if TotalPage < replies/pagesetup then TotalPage=TotalPage+1
PageCount = cint(Request.QueryString("ToPage"))
if PageCount < 1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage

sql="select * from reforum where topicid="&id&" order by id"

if PageCount>100 then
rs.Open sql,Conn,1
else
Set Rs=Conn.Execute(sql)
end if
on error resume next 'ָ��ҳ��������ʱ ���Դ���
if TotalPage>1 then RS.Move (PageCount-1) * pagesetup

i=0
Do While Not RS.EOF and i<pagesetup
i=i+1

sql="select * from [user] where username='"&rs("username")&"'"
Set Rs1=Conn.Execute(sql)
sign=rs1("sign")
content=rs("content")
postcount=rs1("posttopic")+rs1("postrevert")
%><script>var i=<%=i+(PageCount-1)*pagesetup%>;ShowPost('<%=rs("id")%>','<%=rs("username")%>','<%=content%>','<%=rs("posttime")%>','<%=rs1("honor")%>','<%=rs1("userface")%>','<%=rs1("sex")%>','<%=rs1("birthday")%>','<%=rs1("experience")%>','<%=rs1("membercode")%>','<%=rs1("faction")%>','<%=rs1("consort")%>','<%=rs1("money")%>','<%=postcount%>','<%=rs1("regtime")%>','<%=rs1("userlife")%>','<%=rs1("usermail")%>','<%=rs1("userhome")%>','<%=sign%>');</script>
<%
Set Rs1 = Nothing
RS.MoveNext
loop
RS.Close

if i=0 then
replies=conn.execute("Select count(id)from reforum where topicid="&id&"")(0)
conn.execute("update [forum] set replies="&replies&" where id="&id&"")
end if

end if


if TotalPage=0 then
TotalPage=1
PageCount=1
end if
%>
<SCRIPT>valignbottom()</SCRIPT>

<table cellspacing="4" cellpadding="0" width="99%"  border="0" style="border-collapse: collapse" align=center><tr><td width="61%"><b>�����⹲�� <font color="990000"><%=TotalPage%></font> ҳ 
	[
<script>


PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ

for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?id=<%=id%>&topage="+i+">"+ i +"</a> ");
}
}
}
</script>

 ]</b></td><td width="39%" align="right">
<a href="favorites.asp?menu=add&url=topic&name=<%=id%>">�ղ�����</a> | <a href="favorites.asp?menu=del&url=topic&name=<%=id%>">ȡ���ղ�</a> | <a href="#">����ҳ��</a>&nbsp;</td></tr></table>
<%if Request.Cookies("username")<>"" then%>

<form name="yuziform" method="post" action="retopic.asp" onSubmit="return CheckForm(this);">
<input name="content" type="hidden">
<input type="hidden" value="<%=id%>" name="id">
<input type="hidden" value="<%=act%>" name="topic">
<SCRIPT>valigntop()</SCRIPT>


<table cellspacing="1" cellpadding="5" width="99%"  border="0" class="a2" align=center>

<tr><td width="20%" height="20" class="a1"><b>&nbsp;���ٻظ�����</b></td><td class="a1" width="80%"><b><%=act%></b></td></tr>


<tr>
	<td width="20%" class="a3" rowspan="2">

<b>&nbsp;�û���</b>��<%=Request.Cookies("username")%> [<a href="login.asp?menu=out"><font color="000000">�˳�</font></a>]
<hr>
<TABLE cellSpacing=1 cellPadding=3 border=0>
<TR>
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

	<td width="80%" height="150" class="a4">


<SCRIPT src="inc/post.js"></SCRIPT>
 <br>��</td></tr><tr>
			<td valign="top" class="a4"><input tabindex="4" type="submit" value="Ctrl+Enter �ظ�����" name="submit1">����<input name=preview type="Button" value=" Ԥ �� " onclick="Gopreview()">����<input type="reset" name="reset" value=" �� �� "></td></tr></table>
<SCRIPT>valignbottom()</SCRIPT>
</form>
<form name=preview action=preview.asp method=post target=preview_page><input name="content" type="hidden"></form>
<table cellspacing="0" cellpadding="0" width="99%"  align="center" border="0"><tr><td align="middle">����ѡ��: <%
response.write "<a href=manage.asp?menu=movenew&id="&id&">��ǰ����</a> | "
if locktopic=1 then
response.write "<a href=manage.asp?menu=dellocktopic&id="&id&">��������</a>"
else
response.write "<a href=manage.asp?menu=locktopic&id="&id&">�ر�����</a>"
end if
response.write " | "
if toptopic=2 then
response.write "<a href=manage.asp?menu=untop&id="&id&">ȡ�����ö�</a>"
else
response.write "<a href=manage.asp?menu=top&id="&id&">�������ö�</a>"
end if
response.write " | "
if toptopic=1 then
response.write "<a href=manage.asp?menu=deltoptopic&id="&id&">ȡ���ö�</a>"
else
response.write "<a href=manage.asp?menu=toptopic&id="&id&">�����ö�</a>"
end if
response.write " | "
if goodtopic=1 then
response.write "<a href=manage.asp?menu=delgoodtopic&id="&id&">�Ƴ�������</a>"
else
response.write "<a href=manage.asp?menu=goodtopic&id="&id&">��ӵ�������</a>"
end if
%>| <a href="move.asp?id=<%=id%>">�ƶ�����</a> | <a href="manage.asp?menu=deltopic&id=<%=id%>">ɾ������</a> </td></tr></table><%end if%> 

<!-- #include file="inc/line.asp" -->
<%
conn.execute("update [forum] set Views=Views+1 where id="&id&"")

htmlend
%>