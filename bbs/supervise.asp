<!-- #include file="setup.asp" -->
<%
top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")

forumid=int(Request("forumid"))


moderated=Conn.Execute("Select moderated From [bbsconfig] where id="&forumid&" ")(0)
if ""&moderated&""="" then moderated="|"
moderated=split(moderated,"|")


if membercode<4 and moderated(0)<>Request.Cookies("username") then
error("<li>����Ȩ�޲���<li>ֻ�������� <font color=red>"&moderated(0)&"</font> ������Ա������������ӵ�д�Ȩ��")
end if


select case Request("menu")
case "up"

if Request("bbsname")="" then error("<li>��������̳����")

if Len(Request("intro"))>255 then  error("<li>��̳��鲻�ܴ��� 255 ���ֽ�")



master=split(HTMLEncode(Request("moderated")),"|")
for i = 0 to ubound(master)
If conn.Execute("Select id From [user] where username='"&master(i)&"'" ).eof and master(i)<>"" Then error("<li>"&master(i)&"���û����ϻ�δע��")
next


sql="select * from bbsconfig where id="&forumid&""
rs.Open sql,Conn,1,3
rs("bbsname")=HTMLEncode(Request("bbsname"))
rs("moderated")=Request("moderated")
rs("intro")=HTMLEncode(Request("intro"))
rs("icon")=HTMLEncode(Request("icon"))
rs("logo")=HTMLEncode(Request("logo"))
rs.update

rs.close

log("������̳��ID:"&forumid&"������Ϣ��")

message="<li>���³ɹ���<li><a href=ShowForum.asp?forumid="&forumid&">������̳</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=ShowForum.asp?forumid="&forumid&">")


case "delusertopic"

username=HTMLEncode(Request("username"))
if username="" then error("<li>��û�������ַ���")
conn.execute("update [forum] set toptopic=0,deltopic=1,lastname='"&Request.Cookies("username")&"',lasttime='"&now()&"' where username='"&username&"' and forumid="&forumid&" ")
error2("�Ѿ��� "&username&" ������ȫ��ɾ���ˣ�")

case "deltopic"


topic=HTMLEncode(Request("topic"))
if topic="" then error("<li>��û�������ַ���")
conn.execute("update [forum] set toptopic=0,deltopic=1,lastname='"&Request.Cookies("username")&"',lasttime='"&now()&"' where topic like '%"&topic&"%' and forumid="&forumid&" ")
error2("�Ѿ�������������� "&topic&" ������ȫ��ɾ���ˣ�")


end select




sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)


%>

<script>
if ("<%=rs("logo")%>"!=''){logo.innerHTML="<img border=0 src=<%=rs("logo")%> onload='javascript:if(this.height>60)this.height=60;'>"}
</script>
	<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class=a2>
		<tr class=a3>
			<td height="25">&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <%ForumTree(rs("followid"))%><%=ForumTreeList%> <a href="ShowForum.asp?forumid=<%=forumid%>"><%=rs("bbsname")%></a> �� ������̳</td>
		</tr>
	</table><br>
 
 



<SCRIPT>valigntop()</SCRIPT>
<table width=99% cellspacing=1 cellpadding=4 border=0 class=a2 align=center>
<tr>
<td height="20" align="center" colspan="2" class=a1><b>������̳</b></td>
</tr>
<tr>
<td colspan="2" height="25" align="left" bgcolor="#FFFFFF"><b>&nbsp;��������</b></td>
</tr>
<tr class=a3>
<td align="right" width="20%"><form name="form" method="post" action="supervise.asp?menu=delusertopic&forumid=<%=forumid%>">
����û� </td>
<td align="left" width="77%">
<input size="30" name="username"> ����������
<input type="submit" value=" ȷ ��" name="Submit0"></td></form>
</tr>
<tr class=a4>
<td align="right" width="20%"><form name="form" method="post" action="supervise.asp?menu=deltopic&forumid=<%=forumid%>">
ɾ����������� </td>
<td align="left" width="77%">
<input size="30" name="topic"> ����������
<input type="submit" value=" ȷ ��" name="Submit1"></td></form>
</tr>
<form name="form2" method="post" action="supervise.asp">
<input type=hidden name=menu value="up">
<input type=hidden name=forumid value="<%=forumid%>">
<tr>
<td colspan="2" height="25" align="left" bgcolor="#FFFFFF"><b>&nbsp;��̳��Ϣ</b></td>
</tr>
<tr>
<td class=a3 height="5" align="right" valign="middle" width="20%">��̳����<b>��</b></td>
<td class=a3 height="5" align="left" valign="middle" width="77%">
<input type="text" name="bbsname" size="30" maxlength="12" value="<%=rs("bbsname")%>">
</td>
</tr>
<tr>
<td class=a4 height="2" align="right" valign="middle" width="20%">��̳����<b>��</b></td>
<td class=a4 height="2" align="left" valign="middle" width="77%">
<input size="30" name="moderated" value="<%=rs("moderated")%>">
������������|�ָ����磺yuzi|ԣԣ
</td>
</tr>
<tr class=a3>
<td height="2" align="right" width="20%">��̳����<b>��</b></td>
<td height="2" align="left" valign="middle" width="77%">
<textarea name="intro" rows="4" cols="50"><%=rs("intro")%></textarea>&nbsp;
</td>
</tr>
<tr>
<td class=a4 height="1" align="right" valign="middle" width="20%">Сͼ��URL��</td>
<td class=a4 height="1" align="left" valign="middle" width="77%">
<input size="30" name="icon" value="<%=rs("icon")%>">����ʾ��������ҳ��̳�����ұ�</td>
</tr>
<tr>
<td class=a3 align="right" valign="bottom" width="20%">��ͼ��URL��</td>
<td class=a3 align="left" valign="bottom" width="77%">
<input size="30" name="logo" value="<%=rs("logo")%>">����ʾ����̳���Ͻ�</td>
</tr>
<tr>
<td align="right" width="98%" colspan="2" bgcolor="#FFFFFF">
<input type="submit" value=" �� �� &gt;&gt;�� һ �� " name="Submit"> </td>
</tr>
</table>
<SCRIPT>valignbottom()</SCRIPT>
</form>
<Script>
document.form2.intro.value = unybbcode(document.form2.intro.value);
function unybbcode(temp) {
temp = temp.replace(/<br>/ig,"\n");
return (temp);
}
</Script>
<%
rs.close
htmlend
%>