<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
if Request("port")="" then Call yanzheng()

url=Request("url")
username=HTMLEncode(Trim(Request("username")))
userpass=Trim(Request("userpass"))
user=HTMLEncode(Trim(Request("user")))
pass=Trim(Request("pass"))

if Request("user")<>"" and Request("pass")<>""  then
username=user
userpass=pass
end if 

if username=empty or userpass=empty or len(userpass)>16 then errstr("请输入完整！")

Call OpenConn()

sql="select name,passwd from [user] where name='"&username&"'"
Set Rs1=Conn.Execute(SQL)
if rs1.eof then errstr("此用户名还未注册")

if userpass<>rs1("passwd") then errstr("您输入的密码错误")


Response.Cookies("username")=username
Response.Cookies("userpass")=userpass & asc (userpass)
Response.Cookies("eremite")="0"

if Request("eremite")="1" then Response.Cookies("eremite")="1"

if url<>empty and instr(url,"login.asp")=0 and instr(url,"error.asp")=0 then
response.redirect url
elseif instr(url,"left1.asp")<>0 or instr(url,"/bbs")<>0  then
response.write "<SCRIPT>location='/bbs';</SCRIPT>"
else
response.write "<SCRIPT>location='/vip/?LUANQIBAZAODEHAIYAOSHIMEAHEHE&Time="&now()&"';</SCRIPT>"
end if

Call Closedb()
%>