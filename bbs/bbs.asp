<!-- #include file="setup.asp" -->
<%
id=int(Request("id"))
if id<>empty then Response.Cookies("forumid")=id
if ""&adminpassword&""=empty then response.redirect "install.asp"
top
if ""&nowdate&""<>""&date()&"" then
today=conn.execute("Select SUM(today)from bbsconfig")(0)
if ""&today&""="" then today=0
conn.execute("update [clubconfig] set today=0,oldday="&today&",Nowdate='"&date()&"'")
conn.execute("update [bbsconfig] set today=0")
end if
%>
<SCRIPT>valigntop()</SCRIPT>
<table cellspacing="1" cellpadding="2" width="99%"  align="center" border="0" class="a2"><tr class="a1" height=25>
<td width="94%" colspan="4">

<table border="0" width="100%">
	<tr id=TableTitleLink class="a1">
		<td><img src=images/announce.gif align="absbottom"> <marquee onmouseover="this.stop()" onmouseout="this.start()" width="80%" scrollamount="3"><a style=cursor:hand href=# onclick="javascript:open('affiche.asp','','width=400,height=180,resizable,scrollbars')"><%=affichetitle%></a>����<%=affichetime%>��</marquee></td>
		<td width="100" align="center">
        <a target="_blank" href="http://liaowan.com/">������ҳ</a></td>
	</tr>
</table>

</td><tr class=a3>
<td height="25" align="center" width="10%" rowspan="2">
			
<SCRIPT>
if ("<%=userface%>"==""){
index = Math.floor(Math.random() * 84+1);
document.write("<img src=images/face/" + index + ".gif>");
}else{
document.write("<img src=<%=userface%> onload='javascript:if(this.height>100)this.height=100'>");
}
</SCRIPT></td>
<td align="center"> 
<%
if Request.Cookies("username") = empty then
%>
<form action="/userlogin.asp" method="post" target="_top">
<input type="hidden" value="add" name="menu">
<input type="hidden" value="/bbs" name="url">
<table border="0" width="351" height="66">
	<tr>
		<td align="center" width="151" height="13">�û�����:
<input size="9" name="username" value="<%=Request.Cookies("username")%>"></td>
		<td width="113" height="13">

<input type="checkbox" value="1" name="eremite" id="eremite"><label for="eremite">�����¼</label> 
		</td>
		<td align="center" width="73" height="13">

<input type="submit" value=" ��¼ " name="Submit1"></td>
	</tr>
	<tr>
		<td align="center" width="151" height="45">

�û�����: <input type="password" size="9" value name="userpass"></td>
		<td width="113" height="45"> 

��֤:<input name="adminid" size="4" maxLength=4 ><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>��
</td>
		<td align="center" width="73" height="45"> <input type="reset" value=" ȡ�� " name="Submit"></td>
	</tr></form>
</table>
<%
else%>


<table border="0" width="100%">
	<tr>
		<td>&nbsp;::
		<a href="profile.asp">�ҵ�����</a></td>
		<td>&nbsp;::
		<a onclick="javascript:open('message.asp?menu=post','','width=320,height=170')" href="#">���Ͷ���</a></td>
		<td>&nbsp;::
		<a href="upface.asp">�ϴ�ͷ��</a></td>
	</tr>
	<tr>
		<td>&nbsp;::
		<a href="ShowBBS.asp?menu=5">�ҵ�����</a></td>
		<td>&nbsp;::
		<a href="message.asp">�ҵ�����</a></td>
		<td>&nbsp;::
		<a href="upphoto.asp">�ϴ���Ƭ</a></td>
	</tr>
	<tr>
		<td>&nbsp;::
		<span style="text-decoration: none"><a href="calendar.asp">�ҵ��ռ�</a></span></td>
		<td>&nbsp;::
		<a href="friend.asp">�ҵĺ���</a></td>
		<td>&nbsp;::
		<a href="favorites.asp">�ҵ��ղ�</a></td>
	</tr>
</table>


<%
end if
%>
			</td>
			<td> 

<table border="0" width="100%">
	<tr>
		<td>ע���Ա:<b><%=Application(CacheName&"CountUser")%></b></td>
		<td><%
if Application(CacheName&"NewUserName")<>empty then response.write "�½���Ա:<b><a href=Profile.asp?username="&Application(CacheName&"NewUserName")&">"&Application(CacheName&"NewUserName")&"</a></b>"
%></td>
	</tr>
	<tr>
		<td>��������:<b><%=Application(CacheName&"CountForum")%></b></td>
		<td>��������:<b><%=Application(CacheName&"CountReforum")%></b></td>
	</tr>
	<tr>
		<td>��������:<b><font color=red><%=today%></font></b></td>
		<td>��������:<b><%=oldday%></b></td>
	</tr>
	</table>

</td>
	

			<td height="25" align="center" width="10%" rowspan="2"> 
<embed src=images/Clock.swf width=100 height=80 wmode=transparent></td>
		</tr>
	<tr class=a3><td height="12" align="center" width="78%" colspan="2"> 
<font face=Wingdings>v</font> <a href="ShowBBS.asp?menu=2">������������</a> 
<font face=Wingdings>v</font> <a href="ShowBBS.asp?menu=1">������������</a>
<font face=Wingdings>v</font> <a href="ShowBBS.asp">��������</a>  
<font face=Wingdings>v</font> <a href="ShowBBS.asp?menu=3">��������</a>  
<font face=Wingdings>v</font> <a href="ShowBBS.asp?menu=4">ͶƱ����</a> 
<font face=Wingdings>v</font></td>
	

		</tr>
	</table>

<SCRIPT>valignbottom()</SCRIPT>

<br>

<SCRIPT>valigntop()</SCRIPT>
<table width="99%"  align="center" border="0" class="a2" cellspacing=1 cellpadding=0>
<%
if Request.Cookies("forumid")<>empty then

sql="select * from bbsconfig where id="&int(Request.Cookies("forumid"))&""
Set Rs=Conn.Execute(sql)
if Rs.eof then Response.Cookies("forumid")=""
if ""&Rs("password")&""="" then:password=0:else:password=1:end if
%><script>ShowList("<%=Rs("pass")%>","<%=Rs("id")%>","<%=Rs("bbsname")%>","<%=Rs("icon")%>","<%=Rs("intro")%>","<%=Rs("moderated")%>","<%=Rs("today")%>","<%=Rs("toltopic")%>","<%=Rs("tolrestore")%>","<%=Rs("lasttime")%>","<%=Rs("lastname")%>","<%=Rs("lasttopic")%>","<%=password%>");</script><%
rs.close

else
ForumList(0)
end if
%>

</table>
<SCRIPT>valignbottom()</SCRIPT>

<br>

<SCRIPT>valigntop()</SCRIPT>
<table cellspacing="1" cellpadding="1" width="99%"  align="center" border="0" class="a2"><tr><td height="25" class="a1" colspan="2">����<b> </b>���ĸ���״̬</td></tr><tr>
		<td align="middle" width="5%" bgcolor=FFFFFF><img src="images/mystate.gif"></td><td class="a4"><table cellspacing="0" cellpadding="3" width="100%" border="0" style="border-left: 0px none; border-top: 0px none; border-bottom: 1px none"><tr><td><table border="0" cellpadding="0" cellspacing="0" width="100%"><%
if Request.Cookies("username") <> "" then

sql="select * from [user] where username='"&Request.Cookies("username")&"'"
Set Rs=Conn.Execute(sql)


%> <tr><td width="25%"><%=rs("username")%> - �� <font face="Georgia, Times New Roman, Times, serif"><%=rs("newmessage")%> ��������</font></td><td width="20%">
				������<font face="Georgia, Times New Roman, Times, serif"><%=rs("userlife")%></font></td><td width="20%">
				������ң�<font face="Georgia, Times New Roman, Times, serif"><%=rs("money")%></font></td><td width="17%">�������£�<font face="Georgia, Times New Roman, Times, serif"><%=rs("posttopic")%></font></td><td width="18%">��ɾ���£�<font face="Georgia, Times New Roman, Times, serif"><%=rs("deltopic")%></font></td></tr><tr><td>�ȼ����ƣ�<Script>document.write(level(<%=rs("experience")%>,<%=rs("membercode")%>,'','')+levelname);</Script></td><td>
						���飺<font face="Georgia, Times New Roman, Times, serif"><%=rs("experience")%></font></td><td>
				������<font face="Georgia, Times New Roman, Times, serif"><%=rs("savemoney")%></font></td><td>�ظ����£�<font face="Georgia, Times New Roman, Times, serif"><%=rs("postrevert")%></font></td><td>�������£�<font face="Georgia, Times New Roman, Times, serif"><%=rs("goodtopic")%> </font></td></tr><%
rs.close
end if
bbsname=clubname
forumid=0

%> <!-- #include file="inc/line.asp" --><tr><td>
<script>
temp=navigator.appVersion
temp=temp.replace(")","");
temp=temp.replace("MSIE","Internet Explorer");
temp=temp.replace("NT 5.0","2000");
temp=temp.replace("NT 5.1","XP");
temp=temp.replace("NT 5.2","2003");
var appVersion= temp.split ('; '); 
</script>
���ģɣУ�<font face="Georgia, Times New Roman, Times, serif"><%=remoteaddr%></font></td><td>�˿ڣ�<font face="Georgia, Times New Roman, Times, serif"><%=Request.ServerVariables("REMOTE_PORT")%></font></td><td>����ϵͳ��<script>document.write(appVersion[2])</script></td><td colspan="2">�������<script>document.write(appVersion[1])</script></td></tr></table></td></tr></table></td></tr></table><%
regonline=conn.execute("Select count(sessionid)from online where username<>''")(0)

if Application(CacheName&"BestOnline")<onlinemany then
Application(CacheName&"BestOnline")=onlinemany
Application(CacheName&"BestOnlineTime")=now()
end if
%><SCRIPT>valignbottom()</SCRIPT>
<br>


<SCRIPT>valigntop()</SCRIPT><table cellspacing="1" cellpadding="0" width="99%"  align="center" border="0" class="a2"><tr><td height="25" class="a1" colspan="2">��<b>�� </b>����ͳ��</td></tr><tr><td align="middle" width="5%" bgcolor=FFFFFF><img src="images/totel.gif"></td><td valign="top" class="a4"><table cellspacing="0" cellpadding="3" width="100%"><tr><td height="15">&nbsp;<img loaded="no" src="images/plus.gif" id="followImg0" style="cursor:hand;" onclick="loadThreadFollow(0,<%=forumid%>)"> Ŀǰ��̳�ܹ��� <b><%=onlinemany%></b> �����ߡ�����ע���û� <b><%=regonline%></b> �ˣ��ÿ� <b><%=onlinemany-regonline%></b> 
	�ˡ������������ <font color=red><b><%=Application(CacheName&"BestOnline")%></b></font> �ˣ������� <b><%=Application(CacheName&"BestOnlineTime")%></b> </td></tr><tr height="25" style="display:none" id="follow0"><td id="followTd0" align="left" class="a4" width="94%" colspan="5">
		��Loading...</td></tr></table></td></tr></table>

<SCRIPT>valignbottom()</SCRIPT>
<br>
<SCRIPT>valigntop()</SCRIPT>
<table cellspacing="1" cellpadding="5" width="99%"  border="0" class="a2" align="center"><tr><td height="25" colspan="2" class="a1">����<b> </b>��������</td></tr><tr>
<td align="center" bgcolor=FFFFFF width="5%" rowspan="2"><img src="images/shareforum.gif"></td>
<td class="a4"><%
rs.Open "link",Conn
do while not rs.eof
if rs("logo")="" or rs("logo")="http://" then
link1=link1+"<a title='"&rs("intro")&"' href="&rs("url")&" target=_blank>"&rs("name")&"</a> "
else
link2=link2+"<a title='"&rs("name")&""&chr(10)&""&rs("intro")&"' href="&rs("url")&" target=_blank><img src="&rs("logo")&" border=0 width=88 height=31></a> "
end if
rs.movenext
loop
rs.close
%>
<%=link1%>
</td></tr><tr>
<td class="a4"><%=link2%></td></tr></table>
<SCRIPT>valignbottom()</SCRIPT>
<br>
<center>&nbsp;<img src=images/skins/<%=Request.Cookies("skins")%>/Board0.gif alt="��ֹ���">&nbsp;�ر���̳&nbsp;&nbsp;<img src=images/skins/<%=Request.Cookies("skins")%>/Board1.gif alt="�κ��˾������">&nbsp;������̳&nbsp;&nbsp;<img src=images/skins/<%=Request.Cookies("skins")%>/Board2.gif alt="�οͽ�ֹ���">&nbsp;��Ա��̳&nbsp;&nbsp;<img src=images/skins/<%=Request.Cookies("skins")%>/Board3.gif alt="��Ҫ��Ȩ�������">&nbsp;˽����̳<br>

<%
htmlend


sub ForumList(selec)

sql="Select * From bbsconfig where followid="&selec&" and hide=0 order by SortNum"
Set Rs1=Conn.Execute(sql)
do while not Rs1.eof
if ii=0 then
%>
<tr class=a1 id=TableTitleLink><td colspan=7 height=25><b>��<img src=images/1.gif> <a href=ShowForum.asp?forumid=<%=Rs1("id")%>><%=Rs1("bbsname")%></a></b></td></tr>
<%
else
if ""&Rs1("password")&""="" then:password=0:else:password=1:end if

if ListStyle=0 then
%><script>SmallShowList("<%=Rs1("id")%>","<%=Rs1("bbsname")%>","<%=Rs1("intro")%>","<%=Rs1("moderated")%>","<%=Rs1("today")%>","<%=Rs1("toltopic")%>","<%=Rs1("tolrestore")%>");</script><%
else
%><script>ShowList("<%=Rs1("pass")%>","<%=Rs1("id")%>","<%=Rs1("bbsname")%>","<%=Rs1("icon")%>","<%=Rs1("intro")%>","<%=Rs1("moderated")%>","<%=Rs1("today")%>","<%=Rs1("toltopic")%>","<%=Rs1("tolrestore")%>","<%=Rs1("lasttime")%>","<%=Rs1("lastname")%>","<%=Rs1("lasttopic")%>","<%=password%>");</script><%
end if

end if

ii=ii+1
if ii < int(floor) then ForumList Rs1("id")
ii=ii-1

Rs1.movenext
loop
Set Rs1 = Nothing
if ListStyle=0 then
%><script>makeupShowList();</script><%
end if

end sub
%>