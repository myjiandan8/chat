<!-- #include file="setup.asp" -->
<%
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")
username=HTMLEncode(Request("username"))

if Request.Form("menu")="ok" then

if membercode < 4 then error("<li>����Ȩ�޲������޷�ץ��������")

If conn.Execute("Select username From [user] where username='"&username&"'" ).eof Then error("<li>"&username&"�����ϲ�����")
If not conn.Execute("Select username From [prison] where username='"&username&"'" ).eof Then error("<li>"&username&"�Ѿ����ؽ�����")


if username="" then error("<li>���˵�����û����д")


causation=HTMLEncode(Request("causation"))
prisonday=HTMLEncode(Request("prisonday"))

if causation="" then error("<li>��û����������ԭ��")
if prisonday>1000 then error("<li>����ʱ�䲻�ܳ���1000��")

sql="insert into prison (username,causation,constable,prisonday) values ('"&username&"','"&causation&"','"&Request.Cookies("username")&"','"&prisonday&"')"
conn.Execute(SQL)



end if

if Request("menu")="release" then

if membercode < 4 then error("<li>����Ȩ�޲������޷��ͷŷ��ˣ�")

conn.execute("delete from [prison] where username='"&username&"'")

log("�� "&username&" �ͷų�������")

error2("�Ѿ��� "&username&" �ͷų�������")
end if


if Request("menu")="look" then
sql="select * from prison where username='"&username&"'"
Set Rs=Conn.Execute(sql)


%>
<title>̽ �� - Powered By BBSxp</title>
<b><%=rs("username")%></b>
<SCRIPT>
tips = new Array;
tips[0] = "б���۾����һ�ۿ���,�����:����ĵ��̫��!";
tips[1] = "����������˵:�����Ҳ���!�Բ�������!";
tips[2] = "����¶�������Ц��:�ٺ�!Ҫ��Ҫ��������!";
tips[3] = "�п���ֵ�:һʧ��,��ǧ�ź�!��һ����������!";
tips[4] = "�����ص��ͷ:��!��ʮ���,����Ҫ��������!";
tips[5] = "���Ų�����������˿���ĸ�ǽ,ҡͷ̾Ϣ��!";
index = Math.floor(Math.random() * tips.length);
document.write("" + tips[index] + "");
  </SCRIPT><br><br>
����ԭ��<%=rs("causation")%><br><br>
����ʱ�䣺<%=rs("cometime")%><br><br>
����ʱ�䣺<%=rs("cometime")+rs("prisonday")%><br><br>
ִ�о��٣�<%=rs("constable")%>

<%
rs.close
responseend

end if

top

conn.execute("delete from [prison] where cometime<"&SqlNowString&"-prisonday")

%>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� 
<a href="prison.asp">��������</a></td>
</tr>
</table><br>

<SCRIPT>valigntop()</SCRIPT>

<TABLE cellSpacing=1 cellPadding=3 border=0 width=99% align=center class=a2><TR class=a1 height="25">
	<TD align=center width="10%"><b>�û���</b></TD>
<TD align=center><b>����ԭ��</b></TD>
<TD align=center width="20%"><b>����ʱ��</b></TD>
<TD align=center width="10%"><b>ִ�о���</b></TD>
<TD align=center width="15%"><b>����</b></TD>
</TR>

<%
rs.Open "prison order by cometime Desc",Conn,1
pagesetup=20 '�趨ÿҳ����ʾ����
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��
i=0
Do While Not RS.EOF and i<pagesetup
i=i+1


response.write "<tr class=a4><TD align=center><a href=Profile.asp?username="&rs("username")&">"&rs("username")&"</a></TD><TD>"&rs("causation")&"</TD><TD align=center>"&rs("cometime")&"</TD><TD align=center><a href=Profile.asp?username="&rs("constable")&">"&rs("constable")&"</a></TD><TD align=center><a href=?menu=release&username="&rs("username")&">�� ��</a> | <a href=# onClick=javascript:open('prison.asp?menu=look&username="&rs("username")&"','','resizable,scrollbars,width=220,height=180')>̽ ��</a></TD></tr>"


RS.MoveNext
loop
RS.Close

%>

<form METHOD=POST><input type=hidden name=menu value=ok><tr>
  <TD align=center colspan="5" class=a3>��
<input name="username" size="13"> ץ�������������������<input name="prisonday" size="2" value="30"><br>
����ԭ��<input name="causation" size="33"> <input type="submit" value=" ȷ �� "></TD>
  			</tr></form>
</TABLE>
<SCRIPT>valignbottom()</SCRIPT><center>
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

</b>]

<%
htmlend
%>