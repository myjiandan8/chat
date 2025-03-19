<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
'On Error Resume Next
GETH = Request.ServerVariables("HTTP_HOST")
If InStr(GETH, "vcu.cn") = 0 Then
	webmbs = 0
	webmbs = cint(Request("webmb"))
	Set go = Server.CreateObject("lw.go")
	go.dsnname=chatweb '连接字符串
	Call go.Dnew()  '解析域名
	Call go.OpenChatweb() '数据库倾向
	if webmbs>0 then go.webmb=webmbs
	response.write go.enHtml("index.html") '倒入模板
end if
%>