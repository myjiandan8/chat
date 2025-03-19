<!-- #include file="setup.asp" -->
<%
if adminpassword<>session("pass") then response.redirect "admin.asp?menu=login"
log(""&Request.ServerVariables("script_name")&"<br>"&Request.ServerVariables("Query_String")&"<br>"&Request.form&"")

TimeLimit=HTMLEncode(Request("TimeLimit"))
username=HTMLEncode(Request("username"))
membercode=HTMLEncode(Request("membercode"))


response.write "<center>"

select case Request("menu")

case "affiche"
affiche

case "afficheok"
afficheok

case "message"
message

case "broadcast"
broadcast

case "sendmail"
sendmail

case "sendmailok"
sendmailok



case "messageok"
if TimeLimit="" then error2("您没有选择日期！")
conn.execute("delete from [message] where time<"&SqlNowString&"-"&TimeLimit&"")
error2("已经将"&TimeLimit&"天以前的短讯息删除了！")


case "delmessageuser"
if username="" then error2("您没有输入用户名！")
conn.execute("delete from [message] where author='"&username&"' or incept='"&username&"'")
error2("已经将"&username&"的短讯息全部删除了！")

case "delmessagekey"
key=HTMLEncode(Request("key"))
if key="" then error2("您没有输入关键词！")
conn.execute("delete from [message] where content like '%"&key&"%'")
error2("已经将内容中包含 "&key&" 的短讯息删除了！")

end select


sub sendmail
%>

<form method="post" action="?menu=sendmailok">
<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>群发邮件</td>
  </tr>
  <tr height=25>
    <td class=a3 align=left>&nbsp;&nbsp; 主题：<input size="40" name="title"></td>
    <td class=a3 align=middle>接收对象：
<select name=membercode>
<option value="">所有会员</option>
<option value="1">普通会员</option>
<option value="4">管 理 员</option>
<option value="5">社区区长</option>
</select>&nbsp;&nbsp;&nbsp; </td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
 <textarea name="content" rows="5" cols="70"></textarea>
</td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
 <input type="submit" value=" 发 送 " name="submit">
<input type="reset" value=" 重 填 " name="Submit2"><br></td></tr></table></form>

<%
end sub


sub sendmailok

if Request("title")="" then error2("请填写邮件主题")
if Request("content")="" then error2("请填写邮件内容")


if membercode<>"" then
sql="select usermail from [user] where membercode="&membercode&""
else
sql="select usermail from [user]"
end if

Set Rs=Conn.Execute(sql)
do while not rs.eof

mailaddress=""&rs("usermail")&""
mailtopic=Request("title")
body=""&Request("content")&""&vbCrlf&""&vbCrlf&"该邮件通过 BBSxp 群发系统发送　程序制作：Yuzi工作室(http://www.yuzi.net)"
%><!-- #include file="inc/mail.asp" --><%

rs.movenext
loop
rs.close

response.write "邮件发送成功！"

end sub


sub message
%>




数据库共有 <%=conn.execute("Select count(id)from message")(0)%> 条短讯息
<br><br>

<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25 class=a1>
		<td align="center">批量删除短消息</td>
	</tr>
	<tr class=a3>
		<td align="center"><form method="post" action="?menu=delmessageuser">批量删除 <input size="13" name="username" value="用户名" onfocus="this.value=''"> 的短讯息
<input type="submit" value="确定">
		</td></form>
	</tr>
	
	<tr class=a3>
		<td align="center"><form method="post" action="?menu=delmessagekey">批量删除内容含有 <input size="20" name="key" value="关键词" onfocus="this.value=''"> 的短讯息
<input type="submit" value="确定">
		</td></form>
	</tr>
	
		<tr class=a3>
		<td align="center"><form method="post" action="?menu=messageok">删除 <INPUT size=2 name=TimeLimit value="15">
			天以前的短讯息
<input type="submit" value="确定">

		</td></form>
	</tr>
	
</table>
</form>
<form method="post" action="?menu=broadcast">
<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle width="50%">系统广播</td>
    <td class=a1 align=middle width="50%">接收对象：
<select name=membercode>
<option value="">在线会员</option>
<option value="1">普通会员</option>
<option value="4">管 理 员</option>
<option value="5">社区区长</option>
</select>
</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
	<textarea name="content" rows="5" cols="70"></textarea>
</td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
	<input type="submit" value=" 发 送 " name="submit5">
<input type="reset" value=" 重 填 " name="Submit6"></td></tr></table></form>
<%
end sub

sub broadcast
content=HTMLEncode(Request.Form("content"))

if content="" then error2("请填写广播内容!")

if membercode<>"" then
sql="select username from [user] where membercode="&membercode&""
else
sql="select username from online where username<>''"
end if

Set Rs=Conn.Execute(sql)
do while not rs.eof
Count=Count+1
conn.Execute("insert into message (author,incept,content) values ('"&Request.Cookies("username")&"','"&rs("username")&"','【系统广播】："&content&"')")
conn.execute("update [user] set newmessage=newmessage+1 where username='"&rs("username")&"'")
rs.movenext
loop
rs.close

%>
发布成功
<br><br>
共发送给 <%=Count%> 位在线用户<br><br>
<a href=javascript:history.back()>返 回</a>
<%
end sub


sub affiche
%>
<form name="yuziform" method="post" action="?menu=afficheok" onSubmit="return CheckForm(this);">
<input name="content" type="hidden" value='<%=affichecontent%>'>

<table cellspacing="1" cellpadding="2" width="90%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>发布公告</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle width="16%">
标题：</td>
    <td class=a3 width="82%">
<input type="text" name="affichetitle" size="60" value="<%=affichetitle%>"></td></tr>
   <tr height=25>
    <td class=a3 align=middle width="16%">
内容：</td>
    <td class=a3 width="82%" height="250">
    
    <SCRIPT src="inc/post.js"></SCRIPT>

</td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
<input type="submit" value=" 发 送 " name="submit1">
<input name=preview type="Button" value=" 预 览 " onclick="Gopreview()">
<input type="reset" value=" 重 置 ">
</td></tr></table></form><form name=preview action=preview.asp method=post target=preview_page><input name="content" type="hidden"></form>
<%
end sub

sub afficheok
rs.Open "clubconfig",Conn,1,3
rs("affichetitle")=Request("affichetitle")
rs("affichecontent")=replace(replace(Request("content"),vbCrlf,""),"'","&#39;")
rs("affichetime")=now()
rs("afficheman")=Request.Cookies("username")
rs.update
rs.close
%> 发布成功<br><br><a href=javascript:history.back()>返 回</a>
<%
end sub

htmlend

%>