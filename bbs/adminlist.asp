<!-- #include file="setup.asp" -->
<%
top
%>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� �����Ŷ�</td>
</tr>
</table><br>

<SCRIPT>valigntop()</SCRIPT>

<table cellpadding=3 cellspacing=1 border=0 width=99% height="25" class=a2 align=center><tr>
<td align=center style="font-size: 9pt" class=a1 height="17" width="30%">
<b>�� �� �� Ա</b></td>
<td align=center style="font-size: 9pt" class=a1 height="17">
<b>�� ϸ �� Ϣ</b></td></tr>
<%

sql="select * from [user] where membercode > 3 order by membercode Desc,landtime Desc"
rs.Open sql,Conn,1

pagesetup=10 '�趨ÿҳ����ʾ����
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��
i=0
Do While Not RS.EOF and i<pagesetup
i=i+1
%>
<tr class=a3><td width="30%" align="center" valign="top">
<br>
<script>
if("<%=rs("userphoto")%>"!=""){
document.write("<a target=_blank href=<%=rs("userphoto")%>><img src=<%=rs("userphoto")%> border=0 onload='javascript:if(this.width>200)this.width=200'></a>")
}
</script>

</td><td valign=top>
<table cellSpacing=0 cellPadding=5 border=0 style="border-collapse: collapse" style="TABLE-LAYOUT: fixed">
<tr><td align=middle width="50">
<img src=<%=rs("userface")%> width="32" height="32"></td>
<td width="80"><b>�� ��</b></td>
<td align=left width="120"><a href=Profile.asp?username=<%=rs("username")%>><%=rs("username")%></a>
<td align=left width="30">
<img src=images/add.gif align=abscenter border=0 width="16" height="16"></td>
<td align=left width="80"><a href=friend.asp?menu=add&username=<%=rs("username")%>> ��Ϊ����</a></td>
<td align=left>
<img src=images/msg.gif width="16" height="16"> <a href=# onclick=javascript:open('friend.asp?menu=post&incept=<%=rs("username")%>','','width=320,height=170')> ����ѶϢ</a></td>
</tr><tr><td align=middle width="50">
<img src=images/level.gif border=0 width="16" height="16"></td>
<td width="80"><b>�û��ȼ�</b></td>
<td align=left width="120"><Script>document.write(level(<%=rs("experience")%>,<%=rs("membercode")%>,'','')+levelname);</Script></td>
<td align=left width="30">
<img src=images/mail.gif border=0 width="16" height="16"></td>
<td align=left width="80"><b>EMAIL</b></td><td align=left><a href=mailto:<%=rs("usermail")%>><%=rs("usermail")%></a>
</tr><tr><td align=middle width="50">
<img src=images/registered.gif border=0 width="16" height="16"></td>
<td width="80"><b>ע������</b></td><td align=left width="120"><%=rs("regtime")%>
<td align=left width="30">
<img src=images/home.gif border=0 width="16" height="16"></td>
<td align=left width="80"><b>��ҳ��ַ</b></td>
<td align=left><a target="_blank" href="<%=rs("userhome")%>"><%=rs("userhome")%></a></tr><tr>
<td align=middle width="50">
<img src=images/posts.gif border=0 width="16" height="16"></td>
<td width="80"><b>��������</b></td>
<td align=left width="120"><%=rs("posttopic")+rs("postrevert")%>
<td align=left width="30">
<img border=0 src=images/qq.gif>
</td>
<td align=left width="80"><b>QQ</b></td>
<td align=left><%=rs("userqq")%></td>
</tr><tr>
<td align=middle width="50">
<img src=images/sig.gif border=0 width="16" height="16"></td>
<td colspan=5><b>ǩ��</b>
<br>
<script>document.write(ybbcode("<%=rs("sign")%>"))</script>
</td></tr>
</table></td></tr>
<%
RS.MoveNext
loop
RS.Close

%></table><center>
<SCRIPT>valignbottom()</SCRIPT>
[<b>
<script>
PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?topage="+i+">"+ i +"</a> ");
}
}
}
</script>

</b>]<br><%
htmlend
%>