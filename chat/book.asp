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
call list_menu%><TABLE align=center border=1 width=760 frame=vsides rules=none><TBODY><TR><TD background=img/bg2.gif colSpan=5 height=1 width="100%"></TD></TR><%call tableone%><font color=000000>·本站留言·</font><%call table_one%><%call tabletwo%>留言说明<%call table_two%><TR><TD>1.本站提供舞曲来自网络,版权归原作者所有!如有版权问题敬请<a href="book.asp">留言</a>指明!<br>2.由于网络原因有的舞曲连接较慢，请耐心等待！<br>3.如有个别错误链接,不能听到舞曲,请<a href="book.asp">留言</a>或直接到点击错误报告给管理员指明错误链接!</TD></TR><TR><TD background=img/xu_bg.gif colSpan=5 height=1 width="100%"></TD></TR></TBODY></TABLE><br></td><td width="1" background=img/xu_bg.gif></td><td vAlign=top width="553" ><%
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'主程序
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
<% ' 留言本菜单
Sub Main_Menu() %>
<a href="book.asp?action=Add_New"> 添加留言</a> <a href="book.asp?action=View_Words">查看留言</a> 
      <% If Session("Admin")="Login" Then %> <a href="book.asp?action=Exit">退出管理</a> <% Else %> <a href="book.asp?action=Admin_Login">管理留言</a> <% End If %><% If Session("Admin")="Login" Then %> <a href="book.asp?action=EditPWD">修改密码</a><% End If %>
<% End Sub 
'查看留言
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
<td bgcolor="#f7f7f7" height=20><table border=0 cellpadding=0 cellspacing=0 width="100%"><tbody><tr><td valign=bottom width="40%"><font color=#000000>&nbsp;<%=Rs("date")%></font></td><td align=right width="60%"><%If Rs("city")<>"" Then%><img align=absBottom title="<%=Rs("name")%>来自<%=Rs("city")%>" border=0 height=16 src="img/city.gif" width=16>&nbsp;<%End If%><%If Rs("email")<>"" Then%><a href="mailto:<%=Rs("email")%>"><img align=absBottom border=0 height=16 src="img/email.gif" width=16 title="给<%=Rs("name")%>写信"></a>&nbsp;<%End If%><%If Rs("qq")<>"" Then%><img align=absBottom title="<%=Rs("name")%>的QQ号码是<%=Rs("qq")%>" border=0 height=16 src="img/qq.gif" width=16>&nbsp;<%End If%><%If Rs("uc")<>"" Then%><img align=absBottom title="<%=Rs("name")%>的uc号码是<%=Rs("uc")%>" border=0 height=16 src="img/qq.gif" width=16>&nbsp;<%End If%><%If Rs("web")<>"" Then%><a href="<%=Rs("web")%>" target="_blank"><img align=absBottom border=0 height=16 src="img/web.gif" width=16 title="去<%=Rs("name")%>的主页看看"></a>&nbsp;<%End If%><img align=absBottom title="<%=Rs("name")%>的IP地址为<%=Rs("ip")%>" height=16 src="img/ip.gif" width=16>&nbsp;<% If Session("Admin") = "Login" Then %><a href="book.asp?action=Delete&id=<%=Rs("id")%>"><img align=absBottom border=0 title="【删除】" height=16 src="img/Delete.gif" width=16></a>&nbsp;<a href="book.asp?action=reply&id=<%=Rs("id")%>"><img align=absBottom border=0 title="【回复】" height=16 src="img/reply.gif" width=16></a>&nbsp;<a href="book.asp?action=Edit&id=<%=Rs("id")%>"><img align=absBottom border=0 title="【编辑】" height=16 src="img/edit.gif" width=16></a>&nbsp;<% End If %></td></tr></tbody></table></td></tr>
<tr> <td bgcolor="#ffffff" height=80> <table border=0 cellpadding=0 cellspacing=2 width="100%">
<tbody><tr><td><%If Rs("admin")="0" Then%>
[<%if Rs("title")="1" then%><font color=#0000FF>留言</font><%elseif Rs("title")="2" then%><font color=#FF00FF>建议</font><%elseif Rs("title")="3" then%><font color=#FF7F50>报错</font><%elseif Rs("title")="4" then%><font color=#228B22>连接</font><%elseif Rs("title")="5" then%><font color=#1E90FF>其它</font><%End If%>]<%=Ubb(unHtml(Rs("words")))%><%elseif Session("Admin") = "Login" Then %>
[<%if Rs("title")="1" then%><font color=#0000FF>留言</font><%elseif Rs("title")="2" then%><font color=#FF00FF>建议</font><%elseif Rs("title")="3" then%><font color=#FF7F50>报错</font><%elseif Rs("title")="4" then%><font color=#228B22>连接</font><%elseif Rs("title")="5" then%><font color=#1E90FF>其它</font><%End If%>]<%=Ubb(unHtml(Rs("words")))%>
<%else%><font color=#1E90FF>****秘密留言！管理员可见！****</font>
<%End If%></td></tr><%If Rs("reply")<>"" Then%><tr><td height="20" bgColor=#ffffff><img src=img/fu.gif>：<font color=red><%=Ubb(unHtml(Rs("reply")))%></font></td></tr><%End If%></table></td></tr></table><br>
<%
		 
		rs.movenext
		i=i+1
    	loop
		Rs.Close
		Set Rs = Nothing
		%>
<table width="530" height="24" border="0" cellpadding="0" cellspacing="0" align="center"><tr><td width="16" align="right"><img border="0" src="img/title_l.gif"></td><td width="500" background="img/title_bg.gif" align="right"><font color=000000>共有<%=TotalRecord%>条留言</font> 分页 
<%
    For m = 1 To PageCount
    %>
      [<a href="book.asp?page=<%=m%>"><%=m%></a>] 
      <%
    Next
    %>
    &nbsp;</td><td width="14"><img src="img/title_2.gif"></td></tr></table><br></td></tr></table>
<% End Sub
'添加一条新留言
Sub Add_New() %>
<table width="520" border="0" cellspacing="1" cellpadding="0" align="center"><tr><td> 
<table width="450" cellpadding="1" cellspacing="0" align="center" >
<form name="new" method="post" action="book.asp">
<tr>
<td width="80">您的姓名:</td>
<td width="300"><input type="text" name="name" maxlength="14" size="20" value="">   <font color=red>*</font></td>
</tr>
<tr> 
<td>您的性别:</td>
<td><input type="radio" name="SEX" value="0" checked>人妖 <input type="radio" name="SEX" value="1">亚当 <input type="radio" name="SEX" value="2">夏娃</td>
</tr>
<tr> 
<td>电子邮箱：</td>
<td><input type="text" name="email" maxlength="30" size="20" value=""></td>
</tr>
<tr> 
<td>腾迅 QQ:</td>
<td><input type="text" name="qq" maxlength="15" size="20" value=""></td>
</tr>
<tr> 
<td>个人主页:</td>
<td><input type="text" name="web" maxlength="15" size="20" value=""></td>
</tr>
<tr> <td>来自哪里:</td>
<td><input type="text" name="city" maxlength="40" size="20" value=""></td>
</tr>
<tr><td>类型选择:</td>
<td><input type="radio" name="title" value="1" checked><font color=#0000FF>留言</font> <input type="radio" name="title" value="2"><font color=#FF00FF>建议</font> <input type="radio" name="title" value="3"><font color=#FF7F50>报错</font> <input type="radio" name="title" value="4"><font color=#228B22>连接</font> <input type="radio" name="title" value="5"><font color=#1E90FF>其它</font></td>
</tr>
<tr> 
<td valign="middle">留言内容: <br></td>
<td  valign="top"><textarea name="words" cols="40" rows="6"></textarea></td>
</tr>
<tr> 
<td valign="middle">是否隐藏：</td>
<td valign="top"> 
<input type="radio" name="admin" value="0" checked> 否 <input type="radio" name="admin" value="1"> 是&nbsp;&nbsp;<font color=#009900>*</font> 选择隐藏后，此留言只有管理员可以看到。</td>
</tr><tr> 
<td align="center"  height="40" colspan="2"> 
<input type="hidden" name="action_e" value="Add_New"> <input type="submit"  class='button' name="Submit" value="提交" class="input1"> 
        <input type="reset" name="Submit2" value="重写"  class='button'>
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
'管理员登陆接口
Sub Admin_Login() %>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="new" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center" colSpan=2>管理登陆</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">用 户：</td>
<td width="226"><input type="text" name="username" class="input1"></td>
</tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">密 码：</td>
<td width="226"><input type="password" name="password" class="input1"></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td colspan="2"><input type="hidden" name="action_e" value="admin"><input type="submit" name="Submit32" value="登陆" class="input1"></td></tr>
</form>
</table><br><br><br><br><br><br><br><br>
</td>
</tr>
</table>
<% End Sub 
'编辑留言
Sub Edit()
Set Rs = Server.CreateObject("ADODB.RecordSet")
Sql="Select * From words Where id="&Request.QueryString("id")
Rs.Open Sql,Conn,1,1
%>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="reply" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center">来客留言内容</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="center" bgcolor="#f7f7f7"><textarea name="words" cols="50" rows="5" class="input1"><%=Rs("words")%></textarea></td></tr>
<tr bgcolor="#f7f7f7">
 <TD align="center">回复内容</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="center" bgcolor="#f7f7f7"><textarea name="reply" cols="50" rows="5" class="input1"><%=Rs("reply")%></textarea></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td colspan="2"><input type="hidden" name="action_e" value="Edit">
        <input type="hidden" name="id" value="<%=Request.QueryString("id")%>">
        <input type="submit" name="Submit" value="修改留言" id="Submit" class="input1"></td></tr>
</form>
</table><br><br><br><br>
</td>
</tr>
</table>
<% End Sub 
'管理员回复留言
Sub Reply() %>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="reply" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center">回复留言</TD></tr>
<tr bgcolor="#f7f7f7">
<td width="226" align="center" > <textarea name="reply" cols="50" rows="5"></textarea></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td><input type="hidden" name="action_e" value="reply"> <input type="hidden" name="id" value="<%=Request.QueryString("id")%>">
						<input type="submit" name="Submit3" value="提交" ID="Submit1" class="input1"> <input type="reset" name="Submit22" value="重写" class="input1"></td></tr>
</form>
</table><br><br><br><br><br><br><br><br>
</td>
</tr>
</table>	
<% End Sub
'修改资料
Sub EditPWD()%>
<table width="400" align=center cellspacing="1" cellpadding="5" bgcolor="#cccccc">
<form name="new" method="post" action="book.asp">
<tr bgcolor="#f7f7f7">
 <TD align="center" colSpan=2>修改密码</TD></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">旧用户名：</td>
<td width="226"><input type="text" name="oldusername" class="input1"></td>
</tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">新用户名：</td>
<td width="226"><input type="text" name="username" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">确认用户：</td>
<td width="226"><input type="text" name="username_c" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">旧 密 码：</td>
<td width="226"><input type="password" name="oldpwd" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">新 密 码：</td>
<td width="226"><input type="password" name="newpwd" class="input1"></td></tr>
<tr bgcolor="#f7f7f7">
<td align="right" valign="top" width="105">确认密码：</td>
<td width="226"><input type="password" name="newpwd_c" class="input1">
        <input type="hidden" name="action_e" value="EditPWD"></td></tr>
<tr align="center" bgcolor="#f7f7f7"><td colspan="2"><input type="submit" name="EditPWD" value="修改密码" class="input1"></td></tr>
</form>
</table><br><br><br>
</td>
</tr>
</table>
<%End Sub%>
<%
'添加新留言到数据库
Sub Add_New_Execute()
	If Request.Form("name")="" Then
	Response.Write "<script language=javascript>alert('姓名不能为空！');javascript:history.back();</script>"
	Response.End
	End If
	If Len(Request.Form("name"))>20 Then
	Response.Write "<script language=javascript>alert('姓名不能太长！');javascript:history.back();</script>"
	Response.End
	End If
	If Request.Form("email")<>"" Then
	If instr(Request.Form("email"),"@")=0 or instr(Request.Form("email"),"@")=1 or         instr(Request.Form("email"),"@")=len(email) then
	Response.Write "<script language=javascript>alert('电子信箱格式填写不正确！');javascript:history.back();</script>"
	Response.End
	End If
	End If
	If Request.Form("words")="" Then
	Response.Write "<script language=javascript>alert('留言不能为空！');javascript:history.back();</script>"
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
'验证管理员登陆

Sub Admin_Login_Execute()
	username = Server.HTMLEncode(Request.Form("username"))
	password = Server.HTMLEncode(Request.Form("password"))
	If username = "" OR password = "" Then
		Response.Write "<script language=javascript>alert('用户名或者密码为空！');javascript:history.back();</script>"
		Response.End
	End If
	Set Rs = Server.CreateObject("ADODB.RecordSet")
	Sql="Select * From gl"
	Rs.Open Sql,Conn,1,1
	If username = Rs("username") AND password = Rs("password") Then
		Session("Admin") = "Login"
		Else
		Response.Write "<script language=javascript>alert('用户名或者密码不对，登陆失败！');javascript:history.back();</script>"
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
		Response.Write "<script language=javascript>alert('新旧用户名均不能为空！');javascript:history.back();</script>"
		Response.End
	End If
	If oldpwd = "" OR newpwd = "" OR newpwd_c="" Then
		Response.Write "<script language=javascript>alert('新旧密码均不能为空！');javascript:history.back();</script>"
		Response.End
	End If
	If username<>username_c Then
		Response.Write "<script language=javascript>alert('新填写的两个新用户名不一致，请重新填写！');javascript:history.back();</script>"
		Response.End
	End If
	If newpwd<>newpwd_c Then
		Response.Write "<script language=javascript>alert('新填写的两个密码不一致，请重新填写！');javascript:history.back();</script>"
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
		Response.Write "<script language=javascript>alert('你的旧密码填写不对或者旧用户名不对，修改不成功！');javascript:history.back();</script>"
		Response.End
	End If
	Rs.Close
	Set Rs = Nothing
End Sub
Sub Exit_Admin()
	Session.Abandon
End Sub
'删除数据
Sub Delete()
	'删除数据
	Conn.Execute("Delete * From words Where id="&Request.QueryString("id"))
End Sub
'回复留言添加到数据库
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
	cText=replace(cText,"[html]"&text,"代码片断如下：<TEXTAREA id="&rid&" rows=15 style='width:100%' class='bk'>"&codetext,1,1,1)
	cText=replace(cText,"代码片断如下：<TEXTAREA id="&rid&" rows=15 style='width:100%' class='bk'>"&codetext&"[/html]","代码片断如下：<TEXTAREA id="&rid&" rows=15 style='width:100%' class='bk'>"&codetext&"</TEXTAREA><INPUT onclick=runEx('"&rid&"') type=button value=运行此段代码 name=Button1 class='Tips_bo'> <INPUT onclick=JM_cc('"&rid&"') type=button value=复制到我的剪贴板 name=Button2 class='Tips_bo'>",1,1,1)
    case "img"
	cText=replace(cText,"[img]"&text,"<a href="&chr(34)&"about:<img src="&codetext&" border=0>"&chr(34)&" target=_blank><img src="&codetext,1,1,1)
	cText=replace(cText,"[/img]"," vspace=2 hspace=2 border=0 alt=::点击图片在新窗口中打开::></a>",1,1,1)
    case "code"
	cText=replace(cText,"[code]"&text,"以下内容为程序代码<hr noshade>"&codetext,1,1,1)
	cText=replace(cText,"以下内容为程序代码<hr noshade>"&codetext&"[/code]","以下内容为程序代码<hr noshade>"&codetext&"<hr noshade>",1,1,1)
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
	cText=replace(cText,"[swf]"&text,"影片地址:<br>"&text&"<br><object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0' width='500' height='500'><param name=movie value='"&codetext&"'><param name=quality value=high><embed src='"&codetext&"' quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width='500' height='500'>",1,1,1)
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