<% 

''''''密码检测模块
'
Call OpenConn()
if Request.Cookies("username")<>"" then
sql="select passwd,uid,name from [user] where name='"&HTMLEncode(Request.Cookies("username"))&"'"
Set Rs=Conn.Execute(SQL)
if rs.eof then 
Response.Cookies("username")=""

else

uid=rs("uid")
name=rs("name")

end if
if Request.Cookies("userpass") <> rs("passwd") & asc(rs("passwd")) then Response.Cookies("username")=""
rs.close
set connn=nothing
end if
'
''''''
UN= Request.Cookies("username")

if UN="" then
response.redirect "login.asp?m=由于你没有登陆或停留时间过长！"
end if

sub wenti(message)
%>
<script>alert('<%=message%>');</script>
<%
end sub
%>