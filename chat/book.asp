<!--#include file="mdb.asp"-->
<!--#include file="inc/config.asp"-->
<%
page = Request.QueryString("page")
action = Request.QueryString("action")
action_e = Request.Form("action_e")
call head
call top
call menu
call listmenu
Call Main_Menu()
call list_menu%><TABLE align=center border=1 width=760 frame=vsides rules=none><TBODY><TR><TD background=img/bg2.gif colSpan=5 height=1 width="100%"></TD></TR><%call tableone%><font color=000000>����վ���ԡ�</font><%call table_one%><%call tabletwo%>����˵��<%call table_two%><TR><TD>1.��վ�ṩ������������,��Ȩ��ԭ��������!���а�Ȩ���⾴��<a href="book.asp">����</a>ָ��!<br>2.��������ԭ���е��������ӽ����������ĵȴ���<br>3.���и����������,������������,��<a href="book.asp">����</a>��ֱ�ӵ�������󱨸������Աָ����������!</TD></TR><TR><TD background=img/xu_bg.gif colSpan=5 height=1 width="100%"></TD></TR></TBODY></TABLE><br></td><td width="1" background=img/xu_bg.gif></td><td vAlign=top width="553" ><%
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'������
Select Case action_e
	Case ""
	
	Case "Add_New"
		Call Add_New_Execute()
	Case "reply"
		Call Reply_Execute()
	Case "admin"
		Call Admin_Login_Execute()
	Case "EditPWD"
		Call EditPWD_Execute()
	Case "Edit"
		Call Edit_Execute()
End Select
Select Case action
Case "Admin_Login"
		Call Admin_Login()
	Case "Exit"
		Call Exit_Admin()
		
		Call View_Words()
		
	Case ""
		
		Call View_Words()
		
	Case "Add_New"
		Call Add_New()
	Case "reply"
		Call Reply()
	Case "View_Words"
		
		Call View_Words()
		
	Case "Delete"
		Call Delete()
		Call View_Words()
	Case "EditPWD"
		Call EditPWD()
	Case "Edit"
		Call Edit()
				
End Select
Call footer()%>	
<% ' ���Ա��˵�
Sub Main_Menu() %>
<a href="book.asp?action=Add_New"> �������</a> <a href="book.asp?action=View_Words">�鿴����</a> 
      <% If Session("Admin")="Login" Then %> <a href="book.asp?action=Exit">�˳�����</a> <% Else %> <a href="book.asp?action=Admin_Login">��������</a> <% End If %><% If Session("Admin")="Login" Then %> <a href="book.asp?action=EditPWD">�޸�����</a><% End If %>
<% End Sub 
'�鿴����
Sub View_Words() 
		Set Rs = Server.CreateObject("ADODB.RecordSet")
		Sql="Select * From words Order By date Desc"
		Rs.Open Sql,Conn,1,1
		TotalRecord=Rs.RecordCount
		Rs.PageSize = 8
		PageSize = Rs.PageSize
		PageCount=Rs.PageCount
		If page="" Then  
			Rs.AbsolutePage = 1
		Else
			Rs.AbsolutePage = page
		End If
%>
	<%
    do while i < PageSize And not rs.eof 
	%>
<table width="520" align=center cellspacing="1" cellpadding="0" bgcolor="#cccccc"><tr bgcolor="#f7f7f7"><td rowspan=2 width=90><center><font color=#ff6600><%=Rs("name")%></font><br><%if Rs("sex")="0" then%><img src=img/yao.gif><%elseif Rs("sex")="1" then%><img src=img/boy.gif><%elseif Rs("sex")="2" then%><img src=img/girl.gif><%End If%></center></td>
<td bgcolor="#f7f7f7" height=20><table border=0 cellpadding=0 cellspacing=0 width="100%"><tbody><tr><td valign=bottom width="40%"><font color=#000000>&nbsp;<%=Rs("date")%></font></td><td align=right width="60%"><%If Rs("city")<>"" Then%><img align=absBottom title="<%=Rs("name")%>����<%=Rs("city")%>" border=0 height=16 src="img/city.gif" width=16>&nbsp;<%End If%><%If Rs("email")<>"" Then%><a href="mailto:<%=Rs("email")%>"><img align=absBottom border=0 height=16 src="img/email.gif" width=16 title="��<%=Rs("name")%>д��"></a>&nbsp;<%End If%><%If Rs("qq")<>"" Then%><img align=absBottom title="<%=Rs("name")%>��QQ������<%=Rs("qq")%>" border=0 height=16 src="img/qq.gif" width=16>&nbsp;<%End If%><%If Rs("uc")<>"" Then%><img align=absBottom title="<%=Rs("name")%>��uc������<%=Rs("uc")%>" border=0 height=16 src="img/qq.gif" width=16>&nbsp;<%End If%><%If Rs("web")<>"" Then%><a href="<%=Rs("web")%>" target="_blank"><img align=absBottom border=0 height=16 src="img/web.gif" width=16 title="ȥ<%=Rs("name")%>����ҳ����"></a>&nbsp;<%End If%><img align=absBottom title="<%=Rs("name")%>��IP��ַΪ<%=Rs("ip")%>" height=16 src="img/ip.gif" width=16>&nbsp;<% If Session("Admin") = "Login" Then %><a href="book.asp?action=Delete&id=<%=Rs("id")%>"><img align=absBottom border=0 title="��ɾ����" height=16 src="img/Delete.gif" width=16></a>&nbsp;<a href="book.asp?action=reply&id=<%=Rs("id")%>"><img align=absBottom border=0 title="���ظ���" height=16 src="img/reply.gif" width=16></a>&nbsp;<a href="book.asp?action=Edit&id=<%=Rs("id")%>"><img align=absBottom border=0 title="���༭��" height=16 src="img/edit.gif" width=16></a>&nbsp;<% End If %></td></tr></tbody></table></td></tr>
<tr> <td bgcolor="#ffffff" height=80> <table border=0 cellpadding=0 cellspacing=2 width="100%">
<tbody><tr><td><%If Rs("admin")="0" Then%>
[<%if Rs("title")="1" then%><font color=#0000FF>����</font><%elseif Rs("title")="2" then%><font color=#FF00FF>����</font><%elseif Rs("title")="3" then%><font color=#FF7F50>����</font><%elseif Rs("title")="4" then%><font color=#228B22>����</font><%elseif Rs("title")="5" then%><font color=#1E90FF>����</font><%End If%>]<%=Ubb(unHtml(Rs("words")))%><%elseif Session("Admin") = "Login" Then %>
[<%if Rs("title")="1" then%><font color=#0000FF>����</font><%elseif Rs("title")="2" then%><font color=#FF00FF>����</font><%elseif Rs("title")="3" then%><font color=#FF7F50>����</font><%elseif Rs("title")="4" then%><font color=#228B22>����</font><%elseif Rs("title")="5" then%><font color=#1E90FF>����</font><%End If%>]<%=Ubb(unHtml(Rs("words")))%>
<%else%><font color=#1E90FF>****�������ԣ�����Ա�ɼ���****</font>
<%End If%></td></tr><%If Rs("reply")<>"" Then%><tr><td height="20" bgColor=#ffffff><img src=img/fu.gif>��<font color=red><%=Ubb(unHtml(Rs("reply")))%></font></td></tr><%End If%></table></td></tr></table><br>
<%
		 
		rs.movenext
		i=i+1
    	loop
		Rs.Close
		Set Rs = Nothing
		%>
<table width="530" height="24" border="0" cellpadding="0" cellspacing="0" align="center"><tr><td width="16" align="right"><img border="0" src="img/title_l.gif"></td><td width="500" background="img/title_bg.gif" align="right"><font color=000000>����<%=TotalRecord%>������</font> ��ҳ 
<%
    For m = 1 To PageCount
    %>
      [<a href="book.asp?page=<%=m%>"><%=m%></a>] 
      <%
    Next
    %>
    &nbsp;</td><td width="14"><img src="img/title_2.gif"></td></tr></table><br></td></tr></table>
<% End Sub
'���һ��������
Sub Add_New() %>
<table width="520" border="0" cellspacing="1" cellpadding="0" align="center"><tr><td> 
<table width="450" cellpadding="1" cellspacing="0" align="center" >
<form name="new" method="post" action="book.asp">
<tr>
<td width="80">��������:</td>
<td width="300"><input type="text" name="name" maxlength="14" size="20" value="">   <font color=red>*</font></td>
</tr>
<tr> 
<td>�����Ա�:</td>
<td><input type="radio" name="SEX" value="0" checked>���� <input type="radio" name="SEX" value="1">�ǵ� <input type="radio" name="SEX" value="2">����</td>
</tr>
<tr> 
<td>�������䣺</td>
<td><input type="text" name="email" maxlength="30" size="20" value=""></td>
</tr>
<tr> 
<td>��Ѹ QQ:</td>
<td><input type="text" name="qq" maxlength="15" size="20" value=""></td>
</tr>
<tr> 
<td>������ҳ:</td>
<td><input type="text" name="web" maxlength="15" size="20" value=""></td>
</tr>
<tr> <td>��������:</td>
<td><input type="text" name="city" maxlength="40" size="20" value=""></td>
</tr>
<tr><td>����ѡ��:</td>
<td><input type="radio" name="title" value="1" checked><font color=#0000FF>����</font> <input type="radio" name="title" value="2"><font color=#FF00FF>����</font> <input type="radio" name="title" value="3"><font color=#FF7F50>����</font> <input type="radio" name="title" value="4"><font color=#228B22>����</font> <input type="radio" name="title" value="5"><font color=#1E90FF>����</font></td>
</tr>
<tr> 
<td valign="middle">��������: <br></td>
<td  valign="top"><textarea name="words" cols="40" rows="6"></textarea></td>
</tr>
<tr> 
<td valign="middle">�Ƿ����أ�</td>
<td valign="top"> 
<input type="radio" name="admin" value="0" checked> �� <input type="radio" name="admin" value="1"> ��&nbsp;&nbsp;<font color=#009900>*</font> ѡ�����غ󣬴�����ֻ�й���Ա���Կ�����</td>
</tr><tr> 
<td align="center"  height="40" colspan="2"> 
<input type="hidden" name="action_e" value="Add_New"> <input type="submit"  class='button' name="Submit" value="�ύ" class="input1"> 
        <input type="reset" name="Submit2" value="��д"  class='button'>
</td>
</tr>
</form>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
<% End Sub
'����Ա��½�ӿ�
Sub Admin_Login() %>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="new" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center" colSpan=2>�����½</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">�� ����</td>
<td width="226"><input type="text" name="username" class="input1"></td>
</tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">�� �룺</td>
<td width="226"><input type="password" name="password" class="input1"></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td colspan="2"><input type="hidden" name="action_e" value="admin"><input type="submit" name="Submit32" value="��½" class="input1"></td></tr>
</form>
</table><br><br><br><br><br><br><br><br>
</td>
</tr>
</table>
<% End Sub 
'�༭����
Sub Edit()
Set Rs = Server.CreateObject("ADODB.RecordSet")
Sql="Select * From words Where id="&Request.QueryString("id")
Rs.Open Sql,Conn,1,1
%>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="reply" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center">������������</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="center" bgcolor="#f7f7f7"><textarea name="words" cols="50" rows="5" class="input1"><%=Rs("words")%></textarea></td></tr>
<tr bgcolor="#f7f7f7">
 <TD align="center">�ظ�����</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="center" bgcolor="#f7f7f7"><textarea name="reply" cols="50" rows="5" class="input1"><%=Rs("reply")%></textarea></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td colspan="2"><input type="hidden" name="action_e" value="Edit">
        <input type="hidden" name="id" value="<%=Request.QueryString("id")%>">
        <input type="submit" name="Submit" value="�޸�����" id="Submit" class="input1"></td></tr>
</form>
</table><br><br><br><br>
</td>
</tr>
</table>
<% End Sub 
'����Ա�ظ�����
Sub Reply() %>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="reply" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center">�ظ�����</TD></tr>
<tr bgcolor="#f7f7f7">
<td width="226" align="center" > <textarea name="reply" cols="50" rows="5"></textarea></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td><input type="hidden" name="action_e" value="reply"> <input type="hidden" name="id" value="<%=Request.QueryString("id")%>">
						<input type="submit" name="Submit3" value="�ύ" ID="Submit1" class="input1"> <input type="reset" name="Submit22" value="��д" class="input1"></td></tr>
</form>
</table><br><br><br><br><br><br><br><br>
</td>
</tr>
</table>	
<% End Sub
'�޸�����
Sub EditPWD()%>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="new" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center" colSpan=2>�޸�����</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">���û�����</td>
<td width="226"><input type="text" name="oldusername" class="input1"></td>
</tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">���û�����</td>
<td width="226"><input type="text" name="username" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">ȷ���û���</td>
<td width="226"><input type="text" name="username_c" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">�� �� �룺</td>
<td width="226"><input type="password" name="oldpwd" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">�� �� �룺</td>
<td width="226"><input type="password" name="newpwd" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">ȷ�����룺</td>
<td width="226"><input type="password" name="newpwd_c" class="input1">
        <input type="hidden" name="action_e" value="EditPWD"></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td colspan="2"><input type="submit" name="EditPWD" value="�޸�����" class="input1"></td></tr>
</form>
</table><br><br><br>
</td>
</tr>
</table>
<%End Sub%>
<%
'��������Ե����ݿ�
Sub Add_New_Execute()
	If Request.Form("name")="" Then
	Response.Write "<script language=javascript>alert('��������Ϊ�գ�');javascript:history.back();</script>"
	Response.End
	End If
	If Len(Request.Form("name"))>20 Then
	Response.Write "<script language=javascript>alert('��������̫����');javascript:history.back();</script>"
	Response.End
	End If
	If Request.Form("email")<>"" Then
	If instr(Request.Form("email"),"@")=0 or instr(Request.Form("email"),"@")=1 or         instr(Request.Form("email"),"@")=len(email) then
	Response.Write "<script language=javascript>alert('���������ʽ��д����ȷ��');javascript:history.back();</script>"
	Response.End
	End If
	End If
	If Request.Form("words")="" Then
	Response.Write "<script language=javascript>alert('���Բ���Ϊ�գ�');javascript:history.back();</script>"
	Response.End
	End If
	Set Rs = Server.CreateObject("ADODB.RecordSet")
	Sql="Select * From words"
	Rs.Open Sql,Conn,2,3
	Rs.AddNew
	Rs("name")=Server.HTMLEncode(Request.Form("name"))
	Rs("sex")=Server.HTMLEncode(Request.Form("sex"))
        Rs("qq")=Server.HTMLEncode(Request.Form("qq"))
        Rs("uc")=Server.HTMLEncode(Request.Form("uc"))
	Rs("city")=Server.HTMLEncode(Request.Form("city"))
	Rs("web")=Server.HTMLEncode(Request.Form("web"))
	Rs("email")=Server.HTMLEncode(Request.Form("email"))
        Rs("admin")=Server.HTMLEncode(Request.Form("admin"))
        Rs("title")=Server.HTMLEncode(Request.Form("title"))
	Rs("words")=Server.HTMLEncode(Request.Form("words"))
	Rs("date")=Now()
        Rs("ip")=request.servervariables("remote_addr")
	Rs.Update
	Rs.Close
	Set Rs = Nothing
End Sub
'��֤����Ա��½

Sub Admin_Login_Execute()
	username = Server.HTMLEncode(Request.Form("username"))
	password = Server.HTMLEncode(Request.Form("password"))
	If username = "" OR password = "" Then
		Response.Write "<script language=javascript>alert('�û�����������Ϊ�գ�');javascript:history.back();</script>"
		Response.End
	End If
	Set Rs = Server.CreateObject("ADODB.RecordSet")
	Sql="Select * From gl"
	Rs.Open Sql,Conn,1,1
	If username = Rs("username") AND password = Rs("password") Then
		Session("Admin") = "Login"
		Else
		Response.Write "<script language=javascript>alert('�û����������벻�ԣ���½ʧ�ܣ�');javascript:history.back();</script>"
	End If
	Rs.Close
	Set Rs = Nothing
End Sub
Sub EditPWD_Execute()
	oldusername=Server.HTMLEncode(Request.Form("oldusername"))
	username = Server.HTMLEncode(Request.Form("username"))
	username_c = Server.HTMLEncode(Request.Form("username_c"))
	oldpwd = Server.HTMLEncode(Request.Form("oldpwd"))
	newpwd = Server.HTMLEncode(Request.Form("newpwd"))
	newpwd_c = Server.HTMLEncode(Request.Form("newpwd_c"))
	If username = "" OR username_c="" Then
		Response.Write "<script language=javascript>alert('�¾��û���������Ϊ�գ�');javascript:history.back();</script>"
		Response.End
	End If
	If oldpwd = "" OR newpwd = "" OR newpwd_c="" Then
		Response.Write "<script language=javascript>alert('�¾����������Ϊ�գ�');javascript:history.back();</script>"
		Response.End
	End If
	If username<>username_c Then
		Response.Write "<script language=javascript>alert('����д���������û�����һ�£���������д��');javascript:history.back();</script>"
		Response.End
	End If
	If newpwd<>newpwd_c Then
		Response.Write "<script language=javascript>alert('����д���������벻һ�£���������д��');javascript:history.back();</script>"
		Response.End
	End If
	Set Rs = Server.CreateObject("ADODB.RecordSet")
	Sql="Select * From gl"
	Rs.Open Sql,Conn,2,3
	If Rs("password")=oldpwd And Rs("username")=oldusername Then
		Rs("username")=username
		Rs("password")=newpwd
		Rs.Update
	Else
		Response.Write "<script language=javascript>alert('��ľ�������д���Ի��߾��û������ԣ��޸Ĳ��ɹ���');javascript:history.back();</script>"
		Response.End
	End If
	Rs.Close
	Set Rs = Nothing
End Sub
Sub Exit_Admin()
	Session.Abandon
End Sub
'ɾ������
Sub Delete()
	'ɾ������
	Conn.Execute("Delete * From words Where id="&Request.QueryString("id"))
End Sub
'�ظ�������ӵ����ݿ�
Sub Reply_Execute()
	Set Rs = Server.CreateObject("ADODB.RecordSet")
	Sql="Select reply From words Where id="&Request.Form("id")
	Rs.Open Sql,Conn,2,3
	Rs("reply") = Server.HTMLEncode(Request.Form("reply"))
	Rs.Update
	Rs.Close
	Set Rs=Nothing
End Sub
Sub Edit_Execute()
	Set Rs = Server.CreateObject("ADODB.RecordSet")
	Sql="Select * From words Where id="&Request.Form("id")
	Rs.Open Sql,Conn,2,3
	Rs("words") = Server.HTMLEncode(Request.Form("words"))
	Rs("reply") = Server.HTMLEncode(Request.Form("reply"))
	Rs.Update
	Rs.Close
	Set Rs=Nothing
End Sub
Conn.Close
Set Conn = Nothing
function unHtml(content)
unHtml=content
if content <> "" then
unHtml=replace(unHtml,"&","&amp;")
unHtml=replace(unHtml,"<","&lt;")
unHtml=replace(unHtml,">","&gt;")
unHtml=replace(unHtml,chr(34),"&quot;")
unHtml=replace(unHtml,chr(13),"<br>")
unHtml=replace(unHtml,chr(32),"&nbsp;")
end if
end function
function ubb(content)
ubb=content
    nowtime=now()
    UBB=Convert(ubb,"code")
    UBB=Convert(ubb,"html")
    UBB=Convert(ubb,"url")
    UBB=Convert(ubb,"color")
    UBB=Convert(ubb,"font")
    UBB=Convert(ubb,"size")
    UBB=Convert(ubb,"quote")
    UBB=Convert(ubb,"email")
    UBB=Convert(ubb,"img")
    UBB=Convert(ubb,"swf")

    UBB=AutoURL(ubb)
    ubb=replace(ubb,"[b]","<b>",1,-1,1)
    ubb=replace(ubb,"[/b]","</b>",1,-1,1)
    ubb=replace(ubb,"[i]","<i>",1,-1,1)
    ubb=replace(ubb,"[/i]","</i>",1,-1,1)
    ubb=replace(ubb,"[u]","<u>",1,-1,1)
    ubb=replace(ubb,"[/u]","</u>",1,-1,1)
    ubb=replace(ubb,"[blue]","<font color='#000099'>",1,-1,1)
    ubb=replace(ubb,"[/blue]","</font>",1,-1,1)
    ubb=replace(ubb,"[red]","<font color='#990000'>",1,-1,1)
    ubb=replace(ubb,"[/red]","</font>",1,-1,1)
    for i=1 to 28
    ubb=replace(ubb,"{:em"&i&"}","<IMG SRC=emot/emotface/em"&i&".gif></img>",1,6,1)
    ubb=replace(ubb,"{:em"&i&"}","",1,-1,1)
    next
    ubb=replace(ubb,"["&chr(176),"[",1,-1,1)
    ubb=replace(ubb,chr(176)&"]","]",1,-1,1)
    ubb=replace(ubb,"/"&chr(176),"/",1,-1,1)
end function


function Convert(ubb,CovT)
cText=ubb
startubb=1
do while Covt="url" or Covt="color" or Covt="font" or Covt="size"
startubb=instr(startubb,cText,"["&CovT&"=",1)
if startubb=0 then exit do
endubb=instr(startubb,cText,"]",1)
if endubb=0 then exit do
Lcovt=Covt
startubb=startubb+len(lCovT)+2
text=mid(cText,startubb,endubb-startubb)
codetext=replace(text,"[","["&chr(176),1,-1,1)
codetext=replace(codetext,"]",chr(176)&"]",1,-1,1)
codetext=replace(codetext,"/","/"&chr(176),1,-1,1)
select case CovT
    case "color"
	cText=replace(cText,"[color="&text&"]","<font color='"&text&"'>",1,1,1)
	cText=replace(cText,"[/color]","</font>",1,1,1)
    case "font"
	cText=replace(cText,"[font="&text&"]","<font face='"&text&"'>",1,1,1)
	cText=replace(cText,"[/font]","</font>",1,1,1)
    case "size"
	if IsNumeric(text) then
	if text>6 then text=6
	if text<1 then text=1
	cText=replace(cText,"[size="&text&"]","<font size='"&text&"'>",1,1,1)
	cText=replace(cText,"[/size]","</font>",1,1,1)
	end if
    case "url"
	cText=replace(cText,"[url="&text&"]","<a href='"&codetext&"' target=_blank>",1,1,1)
	cText=replace(cText,"[/url]","</a>",1,1,1)
    case "email"
	cText=replace(cText,"["&CovT&"="&text&"]","<a href=mailto:"&text&">",1,1,1)
	cText=replace(cText,"[/"&CovT&"]","</a>",1,1,1)
end select
loop

startubb=1
do
startubb=instr(startubb,cText,"["&CovT&"]",1)
if startubb=0 then exit do
endubb=instr(startubb,cText,"[/"&CovT&"]",1)
if endubb=0 then exit do
Lcovt=Covt
startubb=startubb+len(lCovT)+2
text=mid(cText,startubb,endubb-startubb)
codetext=replace(text,"[","["&chr(176),1,-1,1)
codetext=replace(codetext,"]",chr(176)&"]",1,-1,1)
codetext=replace(codetext,"/","/"&chr(176),1,-1,1)
select case CovT
    case "url"
	cText=replace(cText,"["&CovT&"]"&text,"<a href='"&codetext&"' target=_blank>"&codetext,1,1,1)
	cText=replace(cText,"<a href='"&codetext&"' target=_blank>"&codetext&"[/"&CovT&"]","<a href="&codetext&" target=_blank>"&codetext&"</a>",1,1,1)
    case "email"
	cText=replace(cText,"["&CovT&"]","<a href=mailto:"&text&">",1,1,1)
	cText=replace(cText,"[/"&CovT&"]","</a>",1,1,1)
    case "html"
	codetext=replace(codetext,"<br>",chr(13),1,-1,1)
	codetext=replace(codetext,"&nbsp;",chr(32),1,-1,1)
	Randomize
	rid="temp"&Int(100000 * Rnd)
	cText=replace(cText,"[html]"&text,"����Ƭ�����£�<TEXTAREA id="&rid&" rows=15 style='width:100%' class='bk'>"&codetext,1,1,1)
	cText=replace(cText,"����Ƭ�����£�<TEXTAREA id="&rid&" rows=15 style='width:100%' class='bk'>"&codetext&"[/html]","����Ƭ�����£�<TEXTAREA id="&rid&" rows=15 style='width:100%' class='bk'>"&codetext&"</TEXTAREA><INPUT onclick=runEx('"&rid&"') type=button value=���д˶δ��� name=Button1 class='Tips_bo'> <INPUT onclick=JM_cc('"&rid&"') type=button value=���Ƶ��ҵļ����� name=Button2 class='Tips_bo'>",1,1,1)
    case "img"
	cText=replace(cText,"[img]"&text,"<a href="&chr(34)&"about:<img src="&codetext&" border=0>"&chr(34)&" target=_blank><img src="&codetext,1,1,1)
	cText=replace(cText,"[/img]"," vspace=2 hspace=2 border=0 alt=::���ͼƬ���´����д�::></a>",1,1,1)
    case "code"
	cText=replace(cText,"[code]"&text,"��������Ϊ�������<hr noshade>"&codetext,1,1,1)
	cText=replace(cText,"��������Ϊ�������<hr noshade>"&codetext&"[/code]","��������Ϊ�������<hr noshade>"&codetext&"<hr noshade>",1,1,1)
    case "quote"
	atext=replace(text,"[img]","",1,-1,1)
	atext=replace(atext,"[/img]","",1,-1,1)
	atext=replace(atext,"[swf]","",1,-1,1)
	atext=replace(atext,"[/swf]","",1,-1,1)
	atext=replace(atext,"[html]","",1,-1,1)
	atext=replace(atext,"[/html]","",1,-1,1)
	atext=SplitWords(atext,350)
	atext=replace(atext,chr(32),"&nbsp;",1,-1,1)
	cText=replace(cText,"[quote]"&text,"<blockquote><hr noshade>"&atext,1,1,1)
	cText=replace(cText,"<blockquote><hr noshade>"&atext&"[/quote]","<blockquote><hr noshade>"&atext&"<hr noshade></blockquote>",1,1,1)
    case "swf"
	cText=replace(cText,"[swf]"&text,"ӰƬ��ַ:<br>"&text&"<br><object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0' width='500' height='500'><param name=movie value='"&codetext&"'><param name=quality value=high><embed src='"&codetext&"' quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width='500' height='500'>",1,1,1)
	cText=replace(cText,"<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0' width='500' height='500'><param name=movie value='"&codetext&"'><param name=quality value=high><embed src='"&codetext&"' quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width='500' height='500'>"&"[/swf]","<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0' width='500' height='500'><param name=movie value='"&codetext&"'><param name=quality value=high><embed src='"&codetext&"' quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width='500' height='500'>"&"</embed></object>",1,1,1)
end select
loop
Convert=cText
end function
function AutoURL(ubb)
cText=ubb
startubb=1
do
startubb=1
endubb_a=0
endubb_b=0
endubb=0
startubb=instr(startubb,cText,"http://",1)
if startubb=0 then exit do
endubb_b=instr(startubb,cText,"<",1)
endubb_a=instr(startubb,cText,"&nbsp;",1)
endubb=endubb_a
if endubb=0 then
endubb=endubb_b
end if
if endubb_b<endubb and endubb_b>0 then
endubb=endubb_b
end if
if endubb=0 then
lenc=ctext
endubb=len(lenc)+1
end if
if startubb>endubb then exit do
text=mid(cText,startubb,endubb-startubb)
codetext=text
urllink="<a href='"&codetext&"' target=_blank>"&codetext&"</a> "
urllink=replace(urllink,"/","/"&chr(176),1,-1,1)
cText=replace(cText,text,urllink,1,1,1)
loop
AutoURL=cText
end function
%>