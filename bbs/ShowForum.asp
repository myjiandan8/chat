<!-- #include file="setup.asp" -->
<%
top

forumid=int(Request("forumid"))
sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)
bbsname=rs("bbsname")
moderated=rs("moderated")
logo=rs("logo")
followid=rs("followid")
hide=rs("hide")
pass=rs("pass")
password=rs("password")
userlist=rs("userlist")
rs.close

%>


<!-- #include file="inc/validate.asp" -->

<meta http-equiv=refresh content=300>
<script>
var key_word="<%=Request.Cookies("key_word")%>"
var cookieusername="<%=Request.Cookies("username")%>"
if ("<%=logo%>"!=''){logo.innerHTML="<img border=0 src=<%=logo%> onload='javascript:if(this.height>60)this.height=60;'>"}
</script>


<title><%=bbsname%> - ��������</title>
	<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class=a2>
		<tr class=a3>
			<td colspan=2><table border="0" width="100%" cellspacing="0" cellpadding="0"><tr>
				<td height="18">&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <%ForumTree(followid)%><%=ForumTreeList%> <a href=ShowForum.asp?forumid=<%=forumid%>><%=bbsname%></a></td>
				<td height="18" align="right"><img src=images/jt.gif> <a href=supervise.asp?forumid=<%=forumid%>>��̳����</a>
</td></table>
</td>
</tr>
<%
ShowForum=1
sql="Select * From bbsconfig where followid="&forumid&" and hide=0 order by SortNum"
Set Rs1=Conn.Execute(sql)
if not Rs1.eof then
Response.write ""
do while not rs1.eof
if ""&Rs1("password")&""="" then:password=0:else:password=1:end if
%><script>ShowList("<%=Rs1("pass")%>","<%=Rs1("id")%>","<%=Rs1("bbsname")%>","<%=Rs1("icon")%>","<%=Rs1("intro")%>","<%=Rs1("moderated")%>","<%=Rs1("today")%>","<%=Rs1("toltopic")%>","<%=Rs1("tolrestore")%>","<%=Rs1("lasttime")%>","<%=Rs1("lastname")%>","<%=Rs1("lasttopic")%>","<%=password%>");</script>
<%
rs1.movenext
loop
Set Rs1 = Nothing

ShowForum=0
end if


%>
</table>


<br>
<!-- #include file="inc/line.asp" -->
<%

if ShowForum=1 or SortShowForum=1 then

forumidonline=conn.execute("Select count(sessionid)from online where forumid="&forumid&"")(0)
regforumidonline=conn.execute("Select count(sessionid)from online where forumid="&forumid&" and username<>''")(0)
%><table cellspacing="1" cellpadding="0" width="99%"  align="center" border="0" class="a2"><tr><td width="93%" height="25" class="a1">��<img loaded="no" src="images/plus.gif" id="followImg0" style="cursor:hand;" onclick="loadThreadFollow(0,<%=forumid%>)"> Ŀǰ��̳������  <b><%=onlinemany%></b> �ˣ�������̳���� <b><%=forumidonline%></b> �����ߡ�����ע���û� <b><%=regforumidonline%></b> �ˣ��ÿ� <b><%=forumidonline-regforumidonline%></b> �ˡ�</td><td align="middle" width="7%" height="25" class="a1"><a href="javascript:this.location.reload()"><img src="images/refresh.gif" border="0"></a></td></tr><tr height="25" style="display:none" id="follow0"><td id="followTd0" align="left" class="a4" width="94%" colspan="5">
��Loading...</td></tr></tr></table>
<br>



<table height="30" cellspacing="0" cellpadding="0" width="99%"  align="center" border="0"><tr><td align="left" width="20%"><a href="newtopic.asp?forumid=<%=forumid%>"><img src="images/skins/<%=Request.Cookies("skins")%>/post.gif" border="0" alt="��������"></a></td><td align="right" width="80%">
<img src=images/showdigest.gif> <a onmouseover="showmenu(event,'<div class=menuitems><a href=favorites.asp?menu=add&url=forum&name=<%=forumid%>>�ղ���̳</a></div><div class=menuitems><a href=favorites.asp?menu=del&url=forum&name=<%=forumid%>>ȡ���ղ�</a></div>')" style=cursor:default>��̳�ղ�</a>
<SCRIPT>
var moderated="<%=moderated%>"
var listmoderated=""
var list= moderated.split ('|'); 
for(i=0;i<list.length;i++) {
if (list[i] !=""){
listmoderated=listmoderated+"<div class=menuitems><a href=profile.asp?username="+list[i]+">"+list[i]+"</a></div>";
}
}
document.write("<img src=images/team.gif> <a onmouseover=\"showmenu(event,'"+listmoderated+"')\" style=cursor:default>��̳����</a>");
</SCRIPT>
</td></tr></table><table height="28" cellspacing="1" cellpadding="1" width="99%"  align="center" border="0"><tr><td align="middle" width="3%"><img height="18" src="images/announce.gif" width="18" align="middle" alt="��������"></td>
		<td><marquee onmouseover="this.stop()" onmouseout="this.start()" width="90%" scrollamount="3"><a style=cursor:hand onclick="javascript:open('affiche.asp','','width=400,height=180,resizable,scrollbars')"><%=affichetitle%></a>����<%=affichetime%>��</marquee></td>
		<td align="right" width="200">
	&nbsp;<img src=images/jt.gif> <a onmouseover="showmenu(event,'<div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=1>�鿴һ���ڵ�����</a></div><div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=3>�鿴�����ڵ�����</a></div><div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=7>�鿴һ�����ڵ�����</a></div><div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=14>�鿴�������ڵ�����</a></div><div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=30>�鿴һ�����ڵ�����</a></div><div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=90>�鿴�������ڵ�����</a></div><div class=menuitems><a href=?forumid=<%=forumid%>&TimeLimit=180>�鿴�������ڵ�����</a></div>')" href=?forumid=<%=forumid%>>
	�鿴��������</a>
	<img src=images/jt.gif> <a href="ShowForum.asp?forumid=<%=forumid%>&search=goodtopic">
�鿴��������</a>
			


</td></tr></table>


<SCRIPT>valigntop()</SCRIPT>
<table cellspacing="1" cellpadding="0" width="99%"  align="center" border="0" class="a2"><tr height="25" id=TableTitleLink><td width="3%" class="a1"><td width="3%" class="a1"><td align="middle" height="24" class="a1" width="45%"><a href="ShowForum.asp?forumid=<%=forumid%>&order=id&search=<%=Request("search")%>&TimeLimit=<%=Request("TimeLimit")%>">����</a></td><td align="middle" width="9%" height="24" class="a1"><a href="ShowForum.asp?forumid=<%=forumid%>&order=username&search=<%=Request("search")%>&TimeLimit=<%=Request("TimeLimit")%>">����</a></font></td><td align="middle" width="6%" height="24" class="a1"><a href="ShowForum.asp?forumid=<%=forumid%>&order=replies&search=<%=Request("search")%>&TimeLimit=<%=Request("TimeLimit")%>">�ظ�</a></td><td align="middle" width="7%" height="24" class="a1"><a href="ShowForum.asp?forumid=<%=forumid%>&order=Views&search=<%=Request("search")%>&TimeLimit=<%=Request("TimeLimit")%>">���</a></td><td width="20%" height="24" class="a1" align="center"><a href="ShowForum.asp?forumid=<%=forumid%>&search=<%=Request("search")%>&TimeLimit=<%=Request("TimeLimit")%>">������</a></td></tr>


<%

if Request("order")<>"" then
order=HTMLEncode(Request("order"))
else
order="lasttime"
end if


if Request("TimeLimit")<>"" then TimeLimit="and lasttime>"&SqlNowString&"-"&int(Request("TimeLimit"))&""

if Request("search")="goodtopic" then search="and goodtopic=1 "

if Request.Cookies("pagesetup")=empty then
pagesetup=20   '�趨ÿҳ����ʾ����
else
pagesetup=int(Request.Cookies("pagesetup"))
if pagesetup > 30 then pagesetup=20
end if

topsql="where deltopic<>1 and forumid="&forumid&" "&search&" "&TimeLimit&" or toptopic=2"

count=conn.execute("Select count(id) from [forum] "&topsql&"")(0)
TotalPage=cint(count/pagesetup)  '��ҳ��
if TotalPage < count/pagesetup then TotalPage=TotalPage+1
PageCount = cint(Request.QueryString("ToPage"))
if PageCount < 1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage

sql="select * from [forum] "&topsql&" order by toptopic Desc,"&order&" Desc"

if PageCount>100 then
rs.Open sql,Conn,1
else
Set Rs=Conn.Execute(sql)
end if

if TotalPage>1 then RS.Move (PageCount-1) * pagesetup



i=0
Do While Not RS.EOF and i<pagesetup
i=i+1
if Not Response.IsClientConnected then responseend

newtopic=""
if rs("posttime")+1>now() then newtopic="<img src=images/new.gif>"

%><script>ShowForum("<%=rs("ID")%>","<%=rs("topic")%>","<%=newtopic%>","<%=rs("username")%>","<%=rs("Views")%>","<%=rs("icon")%>","<%=rs("toptopic")%>","<%=rs("locktopic")%>","<%=rs("pollresult")%>","<%=rs("goodtopic")%>","<%=rs("replies")%>","<%=rs("lastname")%>","<%=rs("lasttime")%>");</script>
<%
RS.MoveNext
loop
RS.Close
%></table>
<SCRIPT>valignbottom()</SCRIPT>
<table cellspacing="1" cellpadding="1" width="99%"  align="center" border="0"><tr height="25"><td width="100%" height="2"><table cellspacing="0" cellpadding="3" width="100%" border="0"><tr><td height="2">
		<b>����̳���� <font color=990000><%=TotalPage%></font> ҳ [ 


<b>
<script>
PageCount=<%=TotalPage%>
topage=<%=PageCount%>
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?topage="+i+"&forumid=<%=forumid%>&order=<%=Request("order")%>&search=<%=Request("search")%>&TimeLimit=<%=Request("TimeLimit")%>>"+ i +"</a> ");
}
}
}
</script>

</b>]

</b></td><form name="form" action="search.asp?menu=ok&forumid=<%=forumid%>&search=key&searchxm2=topic" method="post"><td height="2" align="right">����������<input name="content" value="����ؼ���" onfocus="this.value = &quot;&quot;;" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px" size="20"> <input type="submit" value="����" name="submit" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px"> </td></form></tr></table></td></tr></table>

��<table cellspacing="4" cellpadding="0" width="80%" border="0" align=center><tr><td nowrap width="200"><img alt="" src="images/f_new.gif" border="0"> ������ (�лظ�������)</td><td nowrap width="100"><img alt="" src="images/f_hot.gif" border="0"> ��������</td><td nowrap width="100"><img alt="" src="images/f_locked.gif" border="0"> �ر�����</td><td nowrap width="150"><img src="images/topicgood.gif"> ��������</td></tr><tr><td nowrap width="200"><img alt="" src="images/f_norm.gif" border="0"> ������ (û�лظ�������)</td><td nowrap width="100"><img alt="" src="images/f_poll.gif" border="0"> ͶƱ����</td><td nowrap width="100"><img alt="" src="images/f_top.gif" border="0"> �ö�����</td><td nowrap width="150"><img src="images/my.gif"> �Լ����������</td></tr></table></center></div>
<%

end if

htmlend

%>