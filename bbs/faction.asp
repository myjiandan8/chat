<!-- #include file="setup.asp" -->
<%
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")

id=int(Request("id"))

sql="select * from [user] where username='"&Request.Cookies("username")&"'"
Set Rs=Conn.Execute(sql)
faction=rs("faction")
experience=rs("experience")
money=rs("money")
rs.close

top


if Request("menu")="factionadd" then
if faction<>"" then error("<li>���Ѿ����� "&faction&" �ˣ�<li>�����˳� "&faction&" ���ܼ����¾��ֲ���")

factionname=Conn.Execute("Select factionname From faction where id="&id&"")(0)
xinxi=Conn.Execute("Select xinxi From faction where id="&id&"")(0)
roomids=Conn.Execute("Select roomid From faction where id="&id&"")(0)

if xinxi=2 then

message=message&"<li>����ʧ�ܣ�[�þ��ֲ��ܾ��û�����]<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"

elseif xinxi=1 then

conn.execute("update [user] set faction='"&factionname&"',shenfen='δ��֤��Ա',dengji=0,roomid="&roomids&" where username='"&Request.Cookies("username")&"'")
message=message&"<li>�ȴ���֤��[�þ��ֲ���Ҫ�û������֤]<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"

else

conn.execute("update [user] set faction='"&factionname&"',shenfen='��ͨ��Ա',dengji=1,roomid="&roomids&" where username='"&Request.Cookies("username")&"'")
message=message&"<li>����ɹ���[�þ��ֲ����������û�����]<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"

end if

succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="factionout" then
if faction=empty then error("<li>��Ŀǰû�м����κξ��ֲ���")
conn.execute("update [user] set faction='' where username='"&Request.Cookies("username")&"'")
message=message&"<li>�˳����ֲ��ɹ�<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="factiondel" then

sql="select * from faction where id="&id&""
Set Rs1=Conn.Execute(sql)
if rs1("buildman")<>""&Request.Cookies("username")&"" then error("<li>�����Ǹð�İ����޷���ɢ�ð�")
conn.execute("update [user] set faction='' where faction='"&rs1("factionname")&"'")
conn.execute("delete from [faction] where id="&id&"")
message=message&"<li>��ɢ���ֲ��ɹ�<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="look" then
sql="select * from faction where id="&id&""
Set Rs=Conn.Execute(sql)
%>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� 
<a href="faction.asp">��Ƶ���ֲ�</a></td>
</tr>
</table><br>

<title><%=rs("factionname")%> - Powered By BBSxp</title>

<table width="82%" border="0" align="center" cellspacing="1" cellpadding="2"  class=a2 height="249">
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>���ֲ����:</b></font></div>
</td>
<td width="81%"><%=rs("factionname")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>���ֲ�����:</b></font></div>
</td>
<td width="81%"><%=rs("allname")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>���ֲ���ּ:</b></font></div>
</td>
<td width="81%"><%=rs("tenet")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>����ʱ��:</b></font></div>
</td>
<td width="81%"><%=rs("addtime")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>��ʼ������:</b></font></div>
</td>
<td width="81%"><%=rs("buildman")%></td>
</tr>
<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>���л�Ա:</b></font></div>
</td>
<td width="81%">
<%
sql="select username from [user] where faction='"&rs("factionname")&"' and dengji>0"
Set Rs1=Conn.Execute(sql)
Do While Not RS1.EOF
i=i+1
list=list&""&rs1("username")&" "
RS1.MoveNext
loop
%><%=i%>��</td>
</tr>

<tr bgcolor="FFFFFF">
<td width="18%">
<div align="center"><font color="000066"><b>��Ա����:</b></font></div>
</td>
<td width="81%">
<%=list%>
</td>
</tr>

<tr>
<td width="18%" height="97" rowspan="3" bgcolor="#FFFFFF">
<b><font color="#000066">���ֲ����棺</font></b></td>
<td width="81%" height="18" bgcolor="#FFFFFF">
<font color="#FF0000"><b>
<%=rs("ggtitle")%>
</b></font>
</td>
</tr>
<tr>
<td width="81%" height="50" bgcolor="#FFFFFF">
<%=rs("gonggao")%>
��</td>
</tr>
<tr>
<td width="81%" height="13" bgcolor="#FFFFFF">
<%=rs("ggtimes")%>
</td>
</tr>

</table>
<br><center><INPUT onclick=history.back(-1) type=button value=" << �� �� ">
<%

htmlend

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="addok" then

factionname=HTMLEncode(Request("factionname"))
allname=HTMLEncode(Request("allname"))
tenet=HTMLEncode(Request("tenet"))

if faction<>empty then message=message&"<li>���Ѿ������˾��ֲ���"
if experience< 5000 then message=message&"<li>���ľ���ֵС�� 5000 ��"
if money< 5000 then message=message&"<li>���Ľ������ 5000 ��"
if factionname="" then message=message&"<li>���ֲ����û����д"
if Len(factionname)>7 then message=message&"<li>���ֲ�������7���ַ�"
if allname="" then message=message&"<li>���ֲ�����û����д"
if tenet="" then message=message&"<li>���ֲ���ּû����д"
If not conn.Execute("Select id From [faction] where factionname='"&factionname&"' or buildman='"&Request.Cookies("username")&"'").eof Then  message=message&"<li>�������Ѵ���ͬ�����ֲ�<li>���Ѿ����������ֲ�"
if message<>"" then error(""&message&"")

conn.Execute("insert into faction (factionname,allname,tenet,buildman) values ('"&factionname&"','"&allname&"','"&tenet&"','"&Request.Cookies("username")&"')")

conn.execute("update [user] set faction='"&factionname&"',[money]=[money]-5000 where username='"&Request.Cookies("username")&"'")


message=message&"<li>�������ֲ��ɹ�<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
elseif Request("menu")="xiuok" then

factionname=HTMLEncode(Request("factionname"))
allname=HTMLEncode(Request("allname"))
tenet=HTMLEncode(Request("tenet"))


if factionname="" then message=message&"<li>���ֲ����û����д"
if Len(factionname)>7 then message=message&"<li>���ֲ�������7���ַ�"
if allname="" then message=message&"<li>���ֲ�����û����д"
if tenet="" then message=message&"<li>���ֲ���ּû����д"
if Conn.Execute("Select buildman From [faction] where id="&id&"")(0)<>Request.Cookies("username")then message=message&"<li>�����Ǹð�İ����޷��޸���Ϣ"
If not conn.Execute("Select id From [faction] where factionname='"&factionname&"'").eof Then  message=message&"<li>�������Ѵ���ͬ�����ֲ�"

if message<>"" then error(""&message&"")

sql="select * from faction where id="&id&""
rs.Open sql,Conn,1,3
oldfactionname=rs("factionname")
rs("factionname")=factionname
rs("allname")=allname
rs("tenet")=tenet
rs.update
rs.close

conn.execute("update [user] set faction='"&factionname&"' where faction='"&oldfactionname&"'")
message=message&"<li>�޸ľ��ֲ��ɹ�<li><a href=faction.asp>������Ƶ���ֲ�</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=faction.asp>")
end if



%>
<center>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� 
<a href="faction.asp">��Ƶ���ֲ�</a></td>
</tr>
</table><br>
<%
if Request("menu")="adds" then

%>
<form method=post name=form action=faction.asp?menu=addok>

<table cellspacing=1 cellpadding=2 width=442 border=0 align="center" class=a2>
<tr class=a1>
<td width=526 colspan="2" align="center" height="25">
��������</td>
</tr>
<tr class=a3>
<td width=187 align="right">
<b><font color="0033CC">���ֲ���ƣ�</font></b></td>
<td width=339>
<input maxlength=7 name=factionname size="10"> ���7���ַ�</td>
</tr>
<tr class=a3>
<td width=187>
<div align="right"><b><font color="0033CC">���ֲ����ƣ� </font></b></div>
</td>
<td width=339>
<input size=30 name=allname>
</td>
</tr>
<tr class=a3>
<td width=187 height=15>
<div align="right"><b><font color="0033CC">���ֲ���ּ�� </font></b></div>
</td>
<td width=339 height=15>
<input size=40 name=tenet>
</td>
</tr>
<tr class=a3>
<td width=526 colspan=2 height=8>
<div align=center>
<input type=submit value=" �� �� " name=Submit23>
<input type=reset value=" �� �� " name=Submit24>
</div>
</td>
</tr>
<tr class=a3>
<td width=526 colspan=2 height=7>
<ol>
�������ɵı�Ҫ������
<li>���ľ���ֵ���� 5000 ����
<li>��Ҫ�۳������� 5000 �����Ϊ���ɻ��� </li>
</td>
</tr>
</table>


</form>



<%
elseif Request("menu")="xiu" then
sql="select * from faction where id="&id&""
Set Rs=Conn.Execute(SQL)
%>

<form method=post action=faction.asp?menu=xiuok&id=<%=rs("id")%>>
<table cellpadding="2" cellspacing="1" width="70%" border="0" class=a2>

<tr>
<td colspan="2" height="25" align="center" class=a1>���������趨</td>
</tr>


<tr class=a3>
<td>�������ֲ���ƣ� </td>
<td>
<input size="20" maxlength=7 name="factionname" value="<%=rs("factionname")%>"> 
���7���ַ�</td>
</tr>
<tr class=a3>
<td>�������ֲ����ƣ� </td>
<td><input size="30" name="allname" value="<%=rs("allname")%>"> </td>
</tr>
<tr class=a3>
<td>�������ֲ���ּ�� </td>
<td><input size="60" name="tenet" value="<%=rs("tenet")%>"> </td>
</tr>
<tr class=a3>
<td colSpan="2">
<div align="center">
<input type="submit" value=" �� �� " name="Submit">
<input type="reset" value=" �� �� " name="Submit2">
</div>
</td>
</tr>
</table>
</form>
<%
else
%>


<p>&nbsp;<img src="images/plus/niu05.gif" width="26" height="26" border="0">
<img border="0" src="img/jlb.gif" width="142" height="29"> <img src="images/plus/niu05.gif" width="26" height="26" border="0"><br>
</p>

<SCRIPT>valigntop()</SCRIPT>
<table border="0" cellpadding="5" cellspacing="1" class=a2 width=99%>
<tr>
<td width="15%" align="center" height="25" class=a1>���ֲ�����</td>
<td width="41%" align="center" height="25" class=a1>�� ּ</td>
<td width="12%" align="center" height="25" class=a1>������</td>
<td width="12%" align="center" height="25" class=a1>��ʼ��</td>
<td width="13%" align="center" height="25" class=a1>�� ��</td>
</tr>


<%
faction=Conn.Execute("Select faction From [user] where username='"&Request.Cookies("username")&"'")(0)

 
sql="select * from faction order by addtime Desc"
rs.Open sql,Conn,1


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





%>

<tr>
<td width="10%" align="center" height="25" bgcolor="FFFFFF"> <a href=faction.asp?menu=look&id=<%=rs("id")%>><%=rs("factionname")%></a></td>
<td width="41%" align="center" height="25" bgcolor="FFFFFF"><%=rs("tenet")%></td>
<td width="12%" align="center" height="25" bgcolor="FFFFFF"><a href=http://<%=rs("roomid")%>.liaowan.com target=_blank><%=rs("roomname")%></a></td>
<td width="12%" align="center" height="25" bgcolor="FFFFFF"><a href=Profile.asp?username=<%=rs("buildman")%>><%=rs("buildman")%></a></td>

<td width="13%" align="center" height="25" bgcolor="FFFFFF"><%
if faction=rs("factionname") then
response.write "<a onclick=checkclick('��ȷ��Ҫ�˳��þ��ֲ���') href=?menu=factionout>�˳��˾��ֲ�</a>"
else
response.write "<a onclick=checkclick('��ȷ��Ҫ����þ��ֲ���') href=?menu=factionadd&id="&rs("id")&">����˾��ֲ�</a>"
end if
%>

</td>
</tr>

<%
RS.MoveNext
loop
RS.Close
%>

</table>
<SCRIPT>valignbottom()</SCRIPT>
Page��[
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
 ]<br>

<%
end if



%><%
htmlend
%>