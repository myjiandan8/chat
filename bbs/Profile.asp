<!-- #include file="setup.asp" -->
<%
top
username=HTMLEncode(Request("username"))


sql="select * from [user] where username='"&username&"'"
Set Rs=Conn.Execute(sql)

if rs.eof then error("<li>"&username&"���û����ϲ�����")

select case rs("sex")
case "male"
sex="��"
case "female"
sex="Ů"
end select

%>
<title><%=rs("username")%>�û����� - Powered By BBSxp</title>
<script src="inc/birth.js"></script>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� �鿴�û�����</td>
</tr>
</table><br>
<table width=99% border="0" cellspacing="0" cellpadding="5" align="center">
<tr>
<td><img src="<%=rs("userface")%>" width="32" height="32">��<b><%=rs("username")%></b></td>
<td align="right" valign="bottom"><b>:::��ز���:::</b>����
<img src="images/finds.gif"> <a href=search.asp?menu=ok&search=author&searchxm=username&content=<%=rs("username")%>> ��������</a>��
<img src="images/badlist.gif"> <a href=friend.asp?menu=bad&username=<%=rs("username")%>> ��Ϊ����</a>��

<img src="images/friend1.gif"> <a href=friend.asp?menu=add&username=<%=rs("username")%>> ��Ϊ����</a>��
<img src="images/message1.gif"> <a href=# onclick="javascript:open('friend.asp?menu=post&incept=<%=rs("username")%>','','width=320,height=170')"> ����ѶϢ</a> ��
</tr>
</table>

<SCRIPT>valigntop()</SCRIPT>
<table width=99% align=center cellspacing=0 cellpadding=0 border=0>
<tr>
<td class=a2 height="676">
<table width=100% cellspacing=1 cellpadding=6 border=0>
<tr>
<td height="20" align="center" colspan="2" class=a1><b>�鿴�û���<%=rs("username")%>��������</b></td>
</tr>
<tr bgcolor="FFFFFF">
<td colspan="2" height="25" valign="middle" align="left"><b>&nbsp;:::������Ϣ:::</b></td>
</tr>
<tr>
<td class=a3 height="5" align="left" valign="middle" width="50%"><b>���ǡ����ƣ�</b><%=rs("username")%></td>
<td class=a3 height="5" align="left" valign="middle" width="50%"><b>������ԭ����</b><%=rs("posttopic")%></td>
</tr>
<tr>
<td class=a4 align="left" valign="middle" width="50%"><b>
���ȼ����ƣ�</b><Script>document.write(level(<%=rs("experience")%>,<%=rs("membercode")%>,'','')+levelname);</Script></td>
<td class=a4 align="left" valign="middle" width="50%"><b>�����������</b><%=rs("postrevert")%></td>
</tr>
<tr class=a4>
<td align="left" width="50%" class=a3><b>���š����ɣ�</b><%
if rs("faction")=empty then
response.write "��"
else
response.write rs("faction")
end if
%></td>
<td align="left" width="50%" class=a3>

<b>����¼������</b><%=rs("goodtopic")%></td>
</tr>
<tr class=a4>
<td align="left" width="50%"><b>���䡡��ż��</b><%
if rs("consort")=empty then
response.write "��"
else
response.write "<a href=Profile.asp?username="&rs("consort")&">"&rs("consort")&"</a>"
end if
%></td>
<td align="left" width="50%">

<b>����ɾԭ����</b><%=rs("deltopic")%></td>
</tr>
<tr class=a3>
<td align="left" width="50%"><b>
��ע�����ڣ�</b><%=rs("regtime")%></td>
<td align="left" width="50%"><b>��������ң�</b><%=rs("money")%></td>
</tr>
<tr class=a4>
<td align="left" width="50%"><b>
���ϴε�¼��</b><%=rs("landtime")%></td>
<td align="left" width="50%"><b>
���� �� ֵ��</b><%=rs("userlife")%></td>
</tr>
<tr class=a3>
<td align="left" width="50%"><b>
����¼������</b><%=rs("degree")%></td>
<td align="left" width="50%"><b>���� �� ֵ��</b><%=rs("experience")%></td>
</tr>

<tr bgcolor="FFFFFF">
<td height="25" align="left" valign="middle" colspan="2"><b>&nbsp;:::������Ϣ:::</b></td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%"> ��<b>��ʵ������</b><%=rs("realname")%>
</td>
<td height="71" align="left" valign="top" class=a3 rowspan="18" width="50%">
<table width="100%" border="0" cellspacing="0" cellpadding="0">



<tr><td height=153 valign=top align=center><div align=left><b> ���û���Ƭ��</b></div><br>
<script>
if("<%=rs("userphoto")%>"!=""){
document.write("<a target=_blank href=<%=rs("userphoto")%>><img src=<%=rs("userphoto")%> onload='javascript:if(this.height>112)this.height=112' border=0></a>")
}
</script>



</td></tr>





<tr>
<td height="100">
<table width="100%" border="0" cellspacing="0" cellpadding="1">
<tr>
<td class=a2>
<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td class=a4 height="100" valign="top"><b>
&nbsp;�ԡ�����</b><br>
��<table border="0">
<tr>
<td width="100%"><%=rs("character")%></td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="120">
<table width="100%" border="0" cellspacing="0" cellpadding="1">
<tr>
<td class=a2 height="100">
<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td class=a4 height="100" valign="top"><b>&nbsp;�򡡽飺</b><br>
<br>
<%=rs("personal")%> </td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td height="100">
<table width="100%" border="0" cellspacing="0" cellpadding="1" style=TABLE-LAYOUT:fixed>
<tr>
<td class=a2>
<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr>
<td class=a4 height="100" valign="top"><b>&nbsp;ǩ������</b><br>
<br><script>document.write(ybbcode("<%=rs("sign")%>"))</script>
</td>
</tr>
</table>
</td>
</tr>
</table>


</td>
</tr>


</table>
</td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%"><b>���ԡ�����</b><%=sex%> </td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%"><b> ���������ң�</b><%=rs("country")%>
</td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>ʡ�����ݣ�</b><%=rs("province")%> </td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>�ǡ����У�</b><%=rs("city")%></td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>������Ф��</b><script>document.write(getpet("<%=rs("birthday")%>"));</script></td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>Ѫ�����ͣ�</b><%=rs("blood")%> </td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>�ǡ�������</b><script>document.write(astro("<%=rs("birthday")%>"));</script></td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>�š�������</b><%=rs("belief")%>
</td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>ְ����ҵ��</b><%=rs("occupation")%>
</td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>����״����</b><%=rs("marital")%>
</td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>���ѧ����</b><%=rs("education")%>
</td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>��ҵԺУ��</b><%=rs("college")%>
</td>
</tr>
<tr class=a4>
<td valign="top" bgcolor="FFFFFF" width="50%"><b>&nbsp;:::��ϵ����:::</b></td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>�ѣѺ��룺</b><a target=_blank href=http://search.tencent.com/cgi-bin/friend/user_show_info?ln=<%=rs("userqq")%>><%=rs("userqq")%></a></td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>ICQ ���룺</b><a target=_blank href=http://web.icq.com/wwp?Uin=<%=rs("icq")%>><%=rs("icq")%></a></td>
</tr>
<tr class=a4>
<td valign="top" class=a3 width="50%">��<b>�����ʼ���</b><a href="mailto:<%=rs("usermail")%>"><%=rs("usermail")%></a></td>
</tr>
<tr class=a4>
<td valign="top" class=a4 width="50%">��<b>������ҳ��</b><a target="_blank" href="<%=rs("userhome")%>"><%=rs("userhome")%></a></td>
</tr>

</table>

</td>
</tr>
</table>


<%rs.close%>

<center>
<table width=99% cellspacing=1 cellpadding=6 border=0 class=a2><tr><td height=25 align=center class=a1><b>:::������������:::</b></td></tr><tr bgcolor=FFFFFF><td>

<%
sql="select top 5 id,icon,topic,posttime from forum where deltopic<>1 and username='"&username&"' order by id Desc"
Set Rs=Conn.Execute(sql)
Do While Not RS.EOF
%>
<IMG src=images/brow/<%=rs("icon")%>.gif border=0> <a href=ShowPost.asp?id=<%=rs("id")%>><%=rs("topic")%></a> -- <%=rs("posttime")%><br>
<%
RS.MoveNext
loop
RS.Close   
%>
</td></tr></table><SCRIPT>valignbottom()</SCRIPT>

<br>
<INPUT onclick=history.back(-1) type=button value=" << �� �� ">
<br><%htmlend%>