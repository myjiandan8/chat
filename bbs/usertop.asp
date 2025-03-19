<!-- #include file="setup.asp" -->
<%

order=HTMLEncode(Request("order"))

top
%>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> → 会员列表</td>
</tr>
</table><br>

<center>


<SCRIPT>valigntop()</SCRIPT>
<TABLE cellSpacing=1 cellPadding=0 width=99% border=0 class=a2>
<TR align=middle id=TableTitleLink class=a1>
<TD height="25">用户名</TD>
<TD>主页</TD>
<TD>QQ</TD>
<TD>ICQ</TD>
<TD>短讯息</TD>
<TD><a href="?order=regtime">注册时间</a></TD>
<TD><a href="?order=posttopic">发表文章</a></TD>
<TD><a href="?order=postrevert">回复文章</a></TD>
<TD><a href="?order=money">社区金币</a></TD>
<TD><a href="?order=experience">经验值</a></TD>
<TD><a href="?order=landtime">最后登录时间</a></TD>
</TR>
<%



if order="" then order="experience"

pagesetup=20 '设定每页的显示数量

count=conn.execute("Select count(id) from [user]")(0)
TotalPage=cint(count/pagesetup)  '总页数
if TotalPage < count/pagesetup then TotalPage=TotalPage+1
PageCount = cint(Request.QueryString("ToPage"))
if PageCount < 1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage


sql="select * from [user] order by "&order&" Desc "

if PageCount>100 then
rs.Open sql,Conn,1
else
Set Rs=Conn.Execute(sql)
end if

if TotalPage>1 then RS.Move (PageCount-1) * pagesetup
i=0
Do While Not RS.EOF and i<pagesetup
i=i+1


if rs("userhome")<>"http://" then
userhome="<a href="&rs("userhome")&" target=_blank><img border=0 src=images/home.gif></a>"
else
userhome=""
end if

if rs("icq")<>"" then
icq="<img border=0 src=http://web.icq.com/whitepages/online?img=5&icq="&rs("icq")&" alt=ICQ:"&rs("icq")&" width=18 height=18>"
else
icq=""
end if

if rs("userqq")<>"" then
qq="<img border=0 src=images/qq.gif alt=QQ:"&rs("userqq")&">"
else
qq=""
end if



%>

<TR align=middle height="25">
<TD class=a4><a href=Profile.asp?username=<%=rs("username")%>><%=rs("username")%></a></TD>
<TD class=a3><%=userhome%></TD>
<TD class=a4><%=qq%></TD>
<TD class=a4><%=icq%></TD>
<TD class=a3><a style=cursor:hand onclick="javascript:open('friend.asp?menu=post&incept=<%=rs("username")%>','','width=320,height=170')">
<img border="0" src="images/message1.gif"></a></TD>
<TD class=a4><%=rs("regtime")%></TD>
<TD class=a3><%=rs("posttopic")%></TD>
<TD class=a4><%=rs("postrevert")%></TD>
<TD class=a3><%=rs("money")%></TD>
<TD class=a4><%=rs("experience")%></TD>
<TD class=a3><%=rs("landtime")%></TD></TR>
<%


RS.MoveNext
loop
RS.Close

%>
</TABLE>
<SCRIPT>valignbottom()</SCRIPT>
<center>


	<table border="0" width="99%" >
		<tr>
			<td width="50%" align="center"><form action="Profile.asp" method="post">查询用户名：<input size="15" name="username"> <input type="submit" value=" 确定 "></td></form></td>
			<td width="50%" align="center"><b>[
<script>
PageCount=<%=TotalPage%>
topage=<%=PageCount%>
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?topage="+i+"&order=<%=Request("order")%>>"+ i +"</a> ");
}
}
}
</script>
]</b></td>
		</tr>
	</table>
	


<br>
<%
htmlend
%>