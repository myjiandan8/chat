<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="error.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="incjs.asp"-->
<!--#include file="lib/adminmenu.asp"-->
<!--#include file="lib/admin_body.asp"-->
<!--#include file="lib/security.inc"-->
<!--#include file="lib/adminfoot.asp"-->
<title>视频聊天 语音聊天 聊湾 蓝天语音-管理登录</title>
<%
dim founderr,errmsg
founderr=false
errmsg=""
call top()
call admin_nav()
call admin_body()
call adminendpage()
%>