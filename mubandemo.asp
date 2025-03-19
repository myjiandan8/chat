<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
On Error Resume Next
webmb = cint(Request("webmb"))
roomid = clng(Request("roomid"))
if webmb=0 or roomid=0 then  Call errstr("非法操作！")
Set go = Server.CreateObject("lw.go")
go.dsnname="DSN=chatweb; UID=sa; PWD=letiandaye;" '连接字符串
'Call go.Dnew()  '解析域名
go.roomid=roomid
Call go.OpenChatweb() '数据库倾向
go.webmb=webmb
response.write go.enHtml("index.html") '倒入模板
%>