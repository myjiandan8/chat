<!-- #include file="setup.asp" -->
<%
if adminpassword<>session("pass") then response.redirect "admin.asp?menu=login"
log(""&Request.ServerVariables("script_name")&"<br>"&Request.ServerVariables("Query_String")&"<br>"&Request.form&"")
id=HTMLEncode(Request("id"))


response.write "<center>"

select case Request("menu")
case ""
show

case "add"
add

case "addok"
addok

case "edit"
edit

case "editok"
editok

case "del"
conn.execute("delete from [menu] where id="&id&" ")
show


end select

sub show
%>
��̳�˵�����<br>
<form method="post" action="?menu=addok" name=form>
<input type=hidden name=followid value=0>
<input type=hidden name=SortNum value=0>
<input type=hidden name=url value="#">
�˵����ƣ������磺���������<input name="name"> <input type="submit" value="���">
</form>
<table cellspacing=1 cellpadding=2 width=60% border=0 class=a2 align=center>

<%adminmenu(0)%>



</table>

<br>

<%
end sub

sub add
%>
<form method="post" action="?menu=addok" name=form>
<table cellspacing="1" cellpadding="2" width="60%" border="0" class="a2" align="center">
	<tr class=a1>
		<td align="center" colspan="4" height="25">��Ӳ˵�</td>
	</tr>
	<tr class=a3>
		<td align="right" width="10%">���⣺</td>
		<td width="40%"><input name="name"></td>
		<td align="right" width="10%">���ࣺ</td>
		<td width="40%">
		<select name="followid">
<option value="0">һ���˵�</option>
<%
sql="Select * From menu where followid=0 order by SortNum"
Set Rs1=Conn.Execute(sql)
do while not rs1.eof
%>
<option value="<%=rs1("ID")%>" <%if id=""&rs1("ID")&"" then%>selected<%end if%>><%=rs1("name")%></option>
<%
rs1.movenext
loop
Set Rs1 = Nothing
%>
</select></td>
</tr>
<tr class=a3>
		<td align="right" width="10%">���ӣ�</td>
		<td width="40%"><input name="url"></td>
		<td align="right" width="10%">����</td>
		<td width="40%"><input size="2" value="0" name="SortNum"> ��С��������</td>
	</tr>
	<tr class=a3>
		<td align="center" width="100%" colspan="4"> 
		<input type="submit" value=" �� �� ">
		<input type="reset" value=" �� �� " name="Submit2"></td>
	</tr>
</table><br><a href=javascript:history.back()>< �� �� ></a>
<%
end sub


sub addok

rs.Open "menu",conn,1,3
rs.addnew
rs("name")=Request("name")
rs("url")=Request("url")
rs("followid")=Request("followid")
rs("SortNum")=Request("SortNum")
rs.update
rs.close

%>
�� �� �� �� ��<p><a href=javascript:history.back()>< �� �� ></a><%

end sub

sub editok
rs.Open "select * from [menu] where id="&id&"",conn,1,3
rs("name")=Request("name")
rs("url")=Request("url")
rs("followid")=Request("followid")
rs("SortNum")=Request("SortNum")
rs.update
rs.close
%>
�� �� �� ������<p><a href=javascript:history.back()>< �� �� ></a><%
end sub



sub edit

sql="Select * From [menu] where id="&id&""
Set Rs=Conn.Execute(sql)



%>
<form method="post" action="?menu=editok" name=form>
<input type=hidden name=id value=<%=id%>>
<table cellspacing="1" cellpadding="2" width="60%" border="0" class="a2" align="center">

	<tr class=a1>
		<td align="center" colspan="4" height="25">�༭�˵�</td>
	</tr>
	<tr class=a3>
		<td align="right" width="10%">���⣺</td>
		<td width="40%"><input name="name" value="<%=rs("name")%>"></td>
		<td align="right" width="10%">���ࣺ</td>
		<td width="40%">
		<select name="followid">
<option value="0">һ���˵�</option>
<%
sql="Select * From menu where followid=0 order by SortNum"
Set Rs1=Conn.Execute(sql)
do while not rs1.eof
%>
<option value="<%=rs1("id")%>" <%if rs("followid")=rs1("id") then%>selected<%end if%>><%=rs1("name")%></option>
<%
rs1.movenext
loop
Set Rs1 = Nothing
%>
		</select></td>
	</tr>
	<tr class=a3>
		<td align="right" width="10%">���ӣ�</td>
		<td width="40%"><input name="url" value="<%=rs("url")%>" size="20"></td>
		<td align="right" width="10%">����</td>
		<td width="40%"><input size="2" value="<%=rs("SortNum")%>" name="SortNum"> ��С��������</td>
	</tr>
	<tr class=a3>
		<td align="center" width="100%" colspan="4"> 
		<input type="submit" value=" �� �� ">
		<input type="reset" value=" �� �� " name="Submit2"></td>
	</tr>
	</table><br><a href=javascript:history.back()>< �� �� ></a>
<%
end sub





sub adminmenu(selec)
sql="Select * From menu where followid="&selec&" order by SortNum"
Set Rs1=Conn.Execute(sql)
do while not rs1.eof
if rs1("followid")=0 then 
%><tr class=a1 id=TableTitleLink><td height=25 align=center><%=rs1("name")%></td><td height=25 align=right width=150><a href="admin_menu.asp?menu=add&id=<%=rs1("id")%>">���</a> | 
<a href=admin_menu.asp?menu=edit&id=<%=rs1("id")%>>�༭</a> | <a href=admin_menu.asp?menu=del&id=<%=rs1("id")%>>ɾ��</a></td></tr></p>
<%
else
response.write "<tr class=a3><td height=25>"&rs1("name")&"��<a href="&rs1("url")&" target=_blank>"&rs1("url")&"</a>��</td><td height=25 align=right><a href=admin_menu.asp?menu=edit&id="&rs1("id")&">�༭</a> | <a href=admin_menu.asp?menu=del&id="&rs1("id")&">ɾ��</a></td></tr>"
end if

adminmenu(rs1("id"))

rs1.movenext
loop
Set Rs1 = Nothing
end sub


htmlend

%>