<!-- #include file="setup.asp" --><%

if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")


id=int(Request("id"))

url=HTMLEncode(Request("url"))
name=HTMLEncode(Request("name"))

top


select case Request("menu")
case "add"

If not conn.Execute("Select id From [favorites] where username='"&Request.Cookies("username")&"' and name='"&name&"' and url='"&url&"'" ).eof Then error("<li>�ղؼ����Ѿ����ڴ�����")
conn.execute("insert into favorites(username,name,url)values('"&Request.Cookies("username")&"','"&name&"','"&url&"')")
message="<li>��ӳɹ�<li><a href="&Request.ServerVariables("http_referer")&">"&Request.ServerVariables("http_referer")&"</a><li><a href=Default.asp>����������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url="&Request.ServerVariables("http_referer")&">")


case "delweb"
conn.execute("delete from [favorites] where username='"&Request.Cookies("username")&"' and id="&id&"")
message="<li>ɾ���ɹ�<li><a href="&Request.ServerVariables("http_referer")&">"&Request.ServerVariables("http_referer")&"</a><li><a href=Default.asp>����������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url="&Request.ServerVariables("http_referer")&">")


case "del"
conn.execute("delete from [favorites] where username='"&Request.Cookies("username")&"' and url='"&url&"' and name='"&name&"'")
message="<li>ɾ���ɹ�<li><a href="&Request.ServerVariables("http_referer")&">"&Request.ServerVariables("http_referer")&"</a><li><a href=Default.asp>����������ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url="&Request.ServerVariables("http_referer")&">")


end select

%>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� 
�ղؼ�</td>
</tr>
</table><br>

<SCRIPT>valigntop()</SCRIPT>
<%

pagesetup=10 '�趨ÿҳ����ʾ����

select case Request("menu")
case ""
%>

<table width="99%"  border=0 align=center cellPadding=3 cellSpacing=1 class=a2>
<tr class=a1><td width="69%" align="center" bgcolor="FFFFFF" height="20"><b>�� ��</b></td>
	<td width="20%" align="center" bgcolor="FFFFFF" height="20">
		<b>���ʱ��</b></td>
	<td width="11%" align="center" bgcolor="FFFFFF" height="20"><b>����</b></td></tr><%

sql="select * from favorites where username='"&Request.Cookies("username")&"' and url<>'topic' and url<>'forum' order by id Desc"
rs.Open sql,Conn,1

rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��

i=0 
Do While Not RS.EOF and i<pagesetup 
i=i+1 

%> <tr><td bgcolor="FFFFFF"><img src=images/ie.gif> <a target=_blank href="<%=rs("url")%>"><%=rs("name")%></a></td><td align=center bgcolor="FFFFFF"><%=rs("addtime")%><td align=center bgcolor="FFFFFF"><a href="?menu=delweb&id=<%=rs("id")%>"><img src=images/del.gif border=0></a></td></tr><%          
RS.MoveNext
loop
RS.Close      
%> <tr><td vAlign="top" colSpan="3"  class=a1 align="center"><b>&gt;&gt; ��������� &lt;&lt;</b></td></tr><tr><td align="center" colspan="3" bgcolor="FFFFFF"><form method=post name=form action=favorites.asp><input type=hidden name=menu value=add>
<b>���ƣ�</b><INPUT size=20 name=name>��<b>���ӵ�ַ��</b><INPUT size=40 name=url value="http://">��<input type=submit value="�� ��" name="Submit"> </td></form></tr></table>


<%

case "topic"
%>

<script>
var key_word="<%=Request.Cookies("key_word")%>"
var cookieusername="<%=Request.Cookies("username")%>"
</script>

    <table  cellSpacing="1" cellPadding="0" width=99% align="center" border="0" class=a2>
  <tr height="25">
    <td width="3%" class=a1>��</td>
    <td width="3%" class=a1></td>
    <td align="middle" height="24" class=a1 width="45%"> ����</td>
    <td align="middle" width="9%" height="24" class=a1> ����</td>
    <td align="middle" width="6%" height="24" class=a1> �ظ�</td>
    <td align="middle" width="7%" height="24" class=a1> ���</td>
    <td width="27%" height="24" class=a1 align="center">������</td>
  </tr>

<%
sql="select * from favorites where username='"&Request.Cookies("username")&"' and url='topic' order by id Desc"
rs.Open sql,Conn,1
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��


i=0
Do While Not RS.EOF and i<pagesetup
i=i+1


if not isnumeric(rs("name")) then conn.execute("delete from [favorites] where id="&rs("id")&"")

sql="Select * From forum where id="&rs("name")&""
Set Rs1=Conn.Execute(sql)

if Rs1.eof then conn.execute("delete from [favorites] where id="&rs("id")&"")


newtopic=""
if rs1("posttime")+1>now() then newtopic="<img src=images/new.gif>"
%>
<script>ShowForum("<%=rs1("ID")%>","<%=rs1("topic")%>","<%=newtopic%>","<%=rs1("username")%>","<%=rs1("Views")%>","<%=rs1("icon")%>","<%=rs1("toptopic")%>","<%=rs1("locktopic")%>","<%=rs1("pollresult")%>","<%=rs1("goodtopic")%>","<%=rs1("replies")%>","<%=rs1("lastname")%>","<%=rs1("lasttime")%>");</script>
<%
Set Rs1 = Nothing


RS.MoveNext
loop
RS.Close



%>
</table>


<%


case "forum"

%>
<table cellspacing=1 cellpadding=4 width=99% align=center border=0 class=a2>
<%
sql="select * from favorites where username='"&Request.Cookies("username")&"' and url='forum' order by id Desc"
rs.Open sql,Conn,1
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��


i=0
Do While Not RS.EOF and i<pagesetup
i=i+1

if not isnumeric(rs("name")) then conn.execute("delete from [favorites] where id="&rs("id")&"")

sql="Select * From bbsconfig where id="&rs("name")&""
Set Rs1=Conn.Execute(sql)

if Rs1.eof then conn.execute("delete from [favorites] where id="&rs("id")&"")


if ""&Rs1("password")&""="" then:password=0:else:password=1:end if
%><script>ShowList("<%=Rs1("pass")%>","<%=Rs1("id")%>","<%=Rs1("bbsname")%>","<%=Rs1("icon")%>","<%=Rs1("intro")%>","<%=Rs1("moderated")%>","<%=Rs1("today")%>","<%=Rs1("toltopic")%>","<%=Rs1("tolrestore")%>","<%=Rs1("lasttime")%>","<%=Rs1("lastname")%>","<%=Rs1("lasttopic")%>","<%=password%>");</script>
<%
Set Rs1 = Nothing


RS.MoveNext
loop
RS.Close



%>
</table>

<%

end select

%>

<SCRIPT>valignbottom()</SCRIPT>


<center><br>Page��[ 

<script>
PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?menu=<%=Request("menu")%>&topage="+i+">"+ i +"</a> ");
}
}
}
</script>
 

 ]<br><%
htmlend
%>