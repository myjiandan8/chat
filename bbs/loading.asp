<!-- #include file="setup.asp" -->
<%
id=int(Request("id"))


if id="0" then

if Request("forumid")="0" then
sql="select * from online where username<>'' and eremite<>1"
else
sql="select * from online where forumid="&int(Request("forumid"))&" and username<>'' and eremite<>1"
end if

Set Rs=Conn.Execute(sql)

do while not rs.eof

if NO_count < 6 then
NO_count=NO_count+1
else
NO_count=1
end if


allline=""&allline&"<td width=16% style=word-break:break-all><img src="&rs("userface")&" width=16 height=16> <a href=Profile.asp?username="&rs("username")&">"&rs("username")&"</a></td>"

if NO_count = 6 then
allline=""&allline&"</tr><tr>"
end if

rs.movenext
loop
rs.close

allline="<TABLE cellSpacing=0 cellPadding=3 width=100% border=0><TR>"&allline&"</TR></TABLE>"
%>
<SCRIPT>
parent.followImg0.loaded="yes";
parent.followTd0.innerHTML="<table width=100% cellpadding=5 style=TABLE-LAYOUT:fixed><tr><td width=100% style=WORD-WRAP:break-word><%=allline%></td></tr></table>";
</SCRIPT>
<%
else


sql="Select * From forum where id="&id&""
Set Rs=Conn.Execute(sql)
content=rs("content")
forumid=rs("forumid")
rs.close

sql="select * from bbsconfig where id="&forumid&""
Set Rs=Conn.Execute(sql)
pass=rs("pass")
password=rs("password")
userlist=rs("userlist")
rs.close


if pass="0" then
content="����̳��ʱ�رգ����ٽ��ܷ��ʣ�"
elseif pass="3" then
if instr("|"&userlist&"|","|"&Request.Cookies("username")&"|")<=0 then content="����̳��δ��Ȩ�����ʣ�"
end if

if password<>empty then
if password<>Request.Cookies("password") then content="����̳��Ҫ������ܷ��ʣ�"
end if

%>
<SCRIPT>
parent.followImg<%=id%>.loaded="yes";
parent.followTd<%=id%>.innerHTML='<table width=100% cellpadding=10 style=TABLE-LAYOUT:fixed><tr><td width=100% style=WORD-WRAP:break-word><%=content%></td></tr></table>';
</SCRIPT>
<%
end if
responseend
%>