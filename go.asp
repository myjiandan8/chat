<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
'On Error Resume Next
GETH = Request.ServerVariables("HTTP_HOST")
If InStr(GETH, "vcu.cn") = 0 Then
	webmbs = 0
	webmbs = cint(Request("webmb"))
	Set go = Server.CreateObject("lw.go")
	go.dsnname=chatweb '�����ַ���
	Call go.Dnew()  '��������
	Call go.OpenChatweb() '���ݿ�����
	if webmbs>0 then go.webmb=webmbs
	response.write go.enHtml("index.html") '����ģ��
end if
%>