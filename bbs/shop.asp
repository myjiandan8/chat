<!-- #include file="setup.asp" -->
<%
top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")


money=Conn.Execute("Select money From [user] where username='"&Request.Cookies("username")&"'")(0)

select case Request("menu")

case "experience"
if Request("sessionid")<> session.sessionid then error("<li>Ч�������<li>�����·���ˢ������")


how=int(Request("how"))
if how<1 then error("<li>��������С��1")
if money<300*how then error("<li>���Ľ�Ҳ�����")

Randomize
d1=fix(rnd*300)+1


sql="select * from [user] where username='"&Request.Cookies("username")&"'"
rs.Open sql,Conn,1,3
rs("experience")=rs("experience")+d1*how
rs("money")=rs("money")-300*how
rs.update
rs.close

error2("�Ѿ������� "&d1*how&" �㾭��ֵ��")




case "honor"
if Request("sessionid")<> session.sessionid then error("<li>Ч�������<li>�����·���ˢ������")
honor=HTMLEncode(Request("honor"))
if Len(honor)>6 then error"<li>ͷ�β��ܴ���6���ַ���"

if money<2000 then error("<li>���Ľ�Ҳ�����")
conn.execute("update [user] set honor='"&honor&"',[money]=[money]-2000 where username='"&Request.Cookies("username")&"'")
error2("���Ѿ�����˸�ͷ�Σ�")




case "colony"
if Request("sessionid")<> session.sessionid then error("<li>Ч�������<li>�����·���ˢ������")
content=HTMLEncode(Request("content"))

howmoney=conn.execute("Select count(sessionid)from online where username<>''")(0)*10

if content="" then error("<li>����дȺ������!")
if money<howmoney then error("<li>���Ľ�Ҳ�����<li>���ι��� "&howmoney&" ���")

conn.execute("update [user] set [money]=[money]-"&howmoney&" where username='"&Request.Cookies("username")&"'")

sql="select username from online where username<>''"
Set Rs=Conn.Execute(sql)
do while not rs.eof
conn.Execute("insert into message (author,incept,content) values ('"&Request.Cookies("username")&"','"&rs("username")&"','����Ա�㲥����"&content&"')")
conn.execute("update [user] set newmessage=newmessage+1 where username='"&rs("username")&"'")
rs.movenext
loop
Set Rs = Nothing
error2("���ͳɹ���\n\n������ "&howmoney&" ���")



case "thew"
if money<100 then error("<li>���Ľ�Ҳ�����")

userlife=Conn.Execute("Select userlife From [user] where username='"&Request.Cookies("username")&"'")(0)
if userlife=100 then error("<li>�����������������ӣ�")

conn.execute("update [user] set userlife=100,[money]=[money]-100 where username='"&Request.Cookies("username")&"'")
error2("���������Ѿ�ȫ����")

case "flowers"
if Request("sessionid")<> session.sessionid then error("<li>Ч�������<li>�����·���ˢ������")

if money<50 then error("<li>���Ľ�Ҳ�����")

vs=HTMLEncode(Request("vs"))
if vs=Request.Cookies("username") then error("<li>�����Լ����Լ���")
if Application(CacheName&"flowers")=vs then error("<li>�����ͬһ���û����в�����")
If conn.Execute("Select id From [user] where username='"&vs&"'" ).eof Then error("<li>ϵͳ������"&vs&"������")

conn.execute("update [user] set [money]=[money]-50 where username='"&Request.Cookies("username")&"'")


Randomize
d1=fix(rnd*50)+1

conn.execute("update [user] set experience=experience+"&d1&" where username='"&vs&"'")

sql="insert into message(author,incept,content) values ('"&Request.Cookies("username")&"','"&vs&"','��ϵͳ��Ϣ����"&Request.Cookies("username")&"����1���ʻ�����������"&d1&"�㾭��ֵ��')"
conn.Execute(SQL)
conn.execute("update [user] set newmessage=newmessage+1 where username='"&vs&"'")

Application(CacheName&"flowers") = vs

error2(""&vs&"�Ѿ�������"&d1&"�㾭��ֵ��")



case "egg"
if Request("sessionid")<> session.sessionid then error("<li>Ч�������<li>�����·���ˢ������")
if money<50 then error("<li>���Ľ�Ҳ�����")

vs=HTMLEncode(Request("vs"))
if vs=Request.Cookies("username") then error("<li>�����Լ����Լ���")

if Application(CacheName&"egg")=vs then error("<li>�����ͬһ���û����в�����")

If conn.Execute("Select id From [user] where username='"&vs&"'" ).eof Then error("<li>ϵͳ������"&vs&"������")

If conn.Execute("Select experience From [user] where username='"&vs&"'" )(0)<50 Then error("<li>�Է�����ֵ����50����������������������������")

conn.execute("update [user] set [money]=[money]-50 where username='"&Request.Cookies("username")&"'")


Randomize
d1=fix(rnd*50)+1

conn.execute("update [user] set experience=experience-"&d1&" where username='"&vs&"'")

sql="insert into message(author,incept,content) values ('"&Request.Cookies("username")&"','"&vs&"','��ϵͳ��Ϣ����"&Request.Cookies("username")&"����1����������������"&d1&"�㾭��ֵ��')"
conn.Execute(SQL)
conn.execute("update [user] set newmessage=newmessage+1 where username='"&vs&"'")

Application(CacheName&"egg") = vs
error2(""&vs&"�Ѿ�������"&d1&"�㾭��ֵ��")

end select

%>
<title>�����̳�</title>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <a href="shop.asp">�����̵�</a></td>
</tr>
</table><br>


<SCRIPT>
function colony(){
var id=prompt("��������ҪȺ����ѶϢ��","");if(id){document.location='?menu=colony&sessionid=<%=session.sessionid%>&content='+id+'';}
}

function experience(){
var id=prompt("��������Ҫ�����������","1");if(id){document.location='?menu=experience&sessionid=<%=session.sessionid%>&how='+id+'';}
}

function flowers(){
var id=prompt("������Է��û�����","");if(id){document.location='?menu=flowers&sessionid=<%=session.sessionid%>&vs='+id+'';}
}

function egg(){
var id=prompt("������Է��û�����","");if(id){document.location='?menu=egg&sessionid=<%=session.sessionid%>&vs='+id+'';}
}

function honor(){
var id=prompt("�������ٻ��ͷ�Σ�","");if(id){document.location='?menu=honor&sessionid=<%=session.sessionid%>&honor='+id+'';}
}

</SCRIPT>
<center>



<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="111111" width="90%">
<tr>
<td width="100%">
<div align="center">
<center>
<table border="0" cellpadding="3" cellspacing="1" width="100%" class=a2>
<tr class=a1>
<td width="50%" height="5" align="center" colspan="2"><b>
����ҩ��</b></td>
<td width="50%" height="5" align="center" colspan="2"><b>
����ҩ��</b></td>
</tr>
<tr>
<td width="15%" height="4" align="center" bgcolor="FFFFFF" rowspan="2"><FONT color=cccccc>
<IMG src="images/plus/life.gif" border=1></FONT></td>
<td width="25%" height="2" bgcolor="FFFFFF">���ƣ�����ҩ��<br>
�۸�100 <b>���</b><br>
���ܣ����ٲ�������</td>
<td width="15%" height="4" align="center" bgcolor="FFFFFF" rowspan="2"><FONT color=cccccc>
<IMG src="images/plus/experience.gif" border=1></FONT></td>
<td width="25%" height="2" bgcolor="FFFFFF">
  ���ƣ�����ҩ��<br>
  �۸�300 <b>���</b><br>
  ���ܣ���������</td>
</tr>
<tr>
<td width="25%" height="2" bgcolor="FFFFFF"><form method=POST action=?menu=thew>
<input type="submit" value="��Ҫ����" name="Submit"></td></form>
<td width="25%" height="2" bgcolor="FFFFFF">

<input type="submit" value="��Ҫ����" name="Submit" onclick="experience()"></td>
</tr>
</table>
</center>
</div><br>
</td>
</tr>


<tr>
<td width="100%" height="97"><div align="center">
<center>
<table border="0" cellpadding="3" cellspacing="1" width="100%" class=a2>
<tr class=a1>
<td width="50%" height="5" align="center" colspan="2"><b>
��</b>��<b>��</b></td>
<td width="50%" height="5" align="center" colspan="2"><b>
��</b>��<b>��</b></td>
</tr>
<tr>
<td width="15%" height="4" align="center" rowspan="2" bgcolor="FFFFFF"><FONT color=cccccc>
<IMG src="images/plus/flowers.gif" border=1></FONT></td>
<td width="25%" height="2" bgcolor="FFFFFF">���ƣ��ʻ�<br>
�۸�50 <b>���</b><br>
���ܣ����ӶԷ��ľ���ֵ</td>
<td width="15%" height="4" align="center" rowspan="2" bgcolor="FFFFFF"><FONT color=cccccc>
<IMG src="images/plus/egg.gif" border=1></FONT></td>
<td width="25%" height="2" bgcolor="FFFFFF">���ƣ�����<br>
�۸�50 <b>���</b><br>
���ܣ����ͶԷ��ľ���ֵ</td>
</tr>
<tr>
<td width="25%" height="2" bgcolor="FFFFFF">
<input type="submit" value="��Ҫ����" name="Submit1" onclick="flowers()"></td>
<td width="25%" height="2" bgcolor="FFFFFF">
<input type="submit" value="��Ҫ����" name="Submit2"  onclick="egg()"></td>
</tr>
</table>
</center>
</div><br>
</td>
</tr>


<tr>
<td width="100%" height="97"><div align="center">
<center>
<table border="0" cellpadding="3" cellspacing="1" width="100%" class=a2>
<tr class=a1>
<td width="50%" height="5" align="center" colspan="2"><b>
ѶϢȺ����</b></td>
<td width="50%" height="5" align="center" colspan="2"><b>ͷ����</b></td>
</tr>
<tr>
<td width="15%" height="4" align="center" rowspan="2" bgcolor="FFFFFF"><FONT color=cccccc>
<IMG src="images/plus/colony.gif" border=1></FONT></td>
<td width="25%" height="2" bgcolor="FFFFFF">���ƣ�ѶϢȺ����<br>
�۸����߻�Ա�� �� 10<b>���</b><br>
���ܣ�Ⱥ��ѶϢ�����߻�Ա</td>
<td width="15%" height="4" align="center" rowspan="2" bgcolor="FFFFFF">
<FONT color=cccccc>
<IMG src="images/plus/honor.gif" border=1></FONT><td width="25%" height="2" bgcolor="FFFFFF">
���ƣ�ͷ��<br>
�۸�2000 <b>���</b><br>
���ܣ��Զ���ͷ��</tr>
<tr>
<td width="25%" height="2" bgcolor="FFFFFF">
<input type="submit" value="��Ҫ����" name="Submit3" onclick="colony()"></td>
<td width="25%" height="2" bgcolor="FFFFFF">

<input type="submit" value="��Ҫ����" name="Submit4" onclick="honor()"></tr>
</table>
</center>
</div>
</td>
</tr>



</table>




<%htmlend%>