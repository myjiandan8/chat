<!-- #include file="setup.asp" -->
<%
id=int(Request("id"))

content=HTMLEncode(Request.Form("content"))

top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")


consort=Conn.Execute("Select consort From [user] where username='"&Request.Cookies("username")&"'")(0)



select case Request("menu")
case "add"

if content=empty then error("<li>������ݲ���Ϊ��")

aim=HTMLEncode(Request("aim"))

if aim=Request.Cookies("username") then error("<li>�����Լ�׷���Լ���")

If conn.Execute("Select id From [user] where username='"&aim&"'" ).eof Then
error("<li>ϵͳ������"&aim&"������")
end if

If Not conn.Execute("Select id From [consort] where username='"&Request.Cookies("username")&"' and aim='"&aim&"'" ).eof Then
error("<li>"&aim&"�Ѿ�������׷���б���")
end if


sql="insert into consort (username,aim,unburden) values ('"&Request.Cookies("username")&"','"&aim&"','"&content&"')"
conn.Execute(SQL)


sql="insert into message(author,incept,content) values ('"&Request.Cookies("username")&"','"&aim&"','"&content&"')"
conn.Execute(SQL)




conn.execute("update [user] set newmessage=newmessage+1 where username='"&aim&"'")

case "accept"

if consort<>empty then error("<li>����ǰ������ż")

aim=Conn.Execute("Select aim From [consort] where id="&id&"")(0)
if aim<>Request.Cookies("username") then error("<li>�Ƿ�����")

consort=Conn.Execute("Select username From [consort] where id="&id&"")(0)
if Conn.Execute("Select consort From [user] where username='"&consort&"'")(0)<>empty then error("<li>"&consort&"�Ѿ�����ż��")

conn.execute("update [user] set consort='"&aim&"' where username='"&consort&"'")
conn.execute("update [user] set consort='"&consort&"' where username='"&aim&"'")
conn.execute("delete from [consort] where id="&id&"")
succeed("<li>���Ѿ�������"&consort&"��׷��<li><a href=consort.asp>����������ż</a><meta http-equiv=refresh content=3;url=consort.asp>")



case "del"
conn.execute("delete from [consort] where id="&id&" and (username='"&Request.Cookies("username")&"' or aim='"&Request.Cookies("username")&"') ")

case "part"
conn.execute("update [user] set consort='' where username='"&consort&"'")
conn.execute("update [user] set consort='' where username='"&Request.Cookies("username")&"'")
succeed("<li>���ֳɹ�<li><a href=consort.asp>����������ż</a><meta http-equiv=refresh content=3;url=consort.asp>")

end select

%>
<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <a href="consort.asp">������ż</a></td>
</tr>
</table><br>

<center>
<SCRIPT>valigntop()</SCRIPT>
		<table cellspacing="1" cellpadding="6" width="99%"  border="0" class=a2>
			<tr>
				<td width="100%" height="10" align="middle" class="a1" colspan="4">
				<font face="����">�ҵ�׷����</font></td>
			</tr>
			<tr class=a3>
				<td width="10%" height="5" align="middle">
				�û���</td>
				<td height="5" align="middle">
				���ı��</td>
				<td width="20%" height="5" align="middle">
				<font face="����">׷��</font>ʱ��</td>
				<td width="15%" height="5" align="middle">
				����</td>
			</tr>
			
<%
sql="select * from consort where aim='"&Request.Cookies("username")&"' order by id Desc"
Set Rs=Conn.Execute(sql)
Do While Not RS.EOF 
%>
			<tr class=a4>
				<td height="5" align="middle">
				<a href="Profile.asp?username=<%=rs("username")%>"><%=rs("username")%></a></td>
				<td height="5" align="middle">
				<%=rs("unburden")%></td>
				<td height="5" align="middle">
				<%=rs("addtime")%></td>
				<td height="5" align="middle">
				
				
<%if consort=rs("username") then%>
 <a href="?menu=part">�� ��</a> 
<%else%>
 <a href="?menu=accept&id=<%=rs("id")%>">����</a>  <a href="?menu=del&id=<%=rs("id")%>">�ܾ�</a>
<%end if%>
				
				</td>
			</tr>
<%
RS.MoveNext
loop
RS.Close
%>


			</table>
<SCRIPT>valignbottom()</SCRIPT>
<br><br><br>
<SCRIPT>valigntop()</SCRIPT>
		<table cellspacing="1" cellpadding="6" width="99%"  border="0" class=a2>
			<tr>
				<td width="100%" height="10" align="middle" class="a1" colspan="4">
				<font face="����">��׷�����</font></td>
			</tr>
			<tr class=a3>
				<td width="10%" height="5" align="middle">
				�û���</td>
				<td height="5" align="middle">
				���ı��</td>
				<td width="20%" height="5" align="middle">
				<font face="����">׷��</font>ʱ��</td>
				<td width="15%" height="5" align="middle">
				����</td>
			</tr>
<%
sql="select * from consort where username='"&Request.Cookies("username")&"' order by id Desc"
Set Rs=Conn.Execute(sql)
Do While Not RS.EOF 
%>
			<tr class=a4>
				<td height="5" align="middle">
				<a href="Profile.asp?username=<%=rs("aim")%>"><%=rs("aim")%></a></td>
				<td height="5" align="middle">
				<%=rs("unburden")%></td>
				<td height="5" align="middle">
				<%=rs("addtime")%></td>
				<td height="5" align="middle">
<%if consort=rs("aim") then%>
<a href="?menu=part">�� ��</a> 
<%else%>
 <a href="?menu=del&id=<%=rs("id")%>">ȡ��׷��</a>
<%end if%>

</td>
			</tr>
<%
RS.MoveNext
loop
RS.Close

on error resume next  '�Ҳ�����żͷ��ʱ����Դ���
%>
			</table>
<SCRIPT>valignbottom()</SCRIPT>
<br><br><br>

<form action="consort.asp" method="post">
<input type="hidden" value="add" name="menu">
<SCRIPT>valigntop()</SCRIPT>
		<table cellspacing="1" cellpadding="6" width="99%"  border="0" class=a2>
				<tr>
		
<%if consort<>empty then%>	
				<td width="19%" height="10" align="middle" class="a3" rowspan="4">
				<img src="<%=Conn.Execute("Select userface From [user] where username='"&consort&"'")(0)%>">
				
				
<br><br>
				��ǰ��ż��<a href="profile.asp?username=<%=consort%>"><%=consort%></a><br>
				<br>
				<a href="?menu=part">�뵱ǰ��ż����</a></td>

<%end if%>			
			
				<td width="77%" height="2" align="middle" class="a1" colspan="2">
				<font face="����">�������׷�����</font></td>
			</tr>			
			<tr>
				<td width="12%" height="2" align="left" class="a4">
				�Է��û�����</td>
				<td width="64%" height="2" align="left" class="a4">
				<input maxLength="30" size="15" name="aim"></td>
			</tr>
			<tr>
				<td width="12%" height="1" align="left" class="a4" valign="top">
				���ı�ף�</td>
				<td width="64%" height="1" align="left" class="a4">
				<textarea name="content" rows="5" style=width:95%></textarea></td>
			</tr>
			<tr>
				<td width="77%" height="1" align="center" class="a4" colspan="2">
				<input tabIndex="4" type="submit" value=" ȷ �� ">
				<input onclick="checkclick('�������Ҫ���ȫ�������ݣ���ȷ��Ҫ�����?');" type="reset" value=" �� д "></td>
			</tr>
			</table>
<SCRIPT>valignbottom()</SCRIPT>

			</form>
<%htmlend%>