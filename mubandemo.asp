<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
On Error Resume Next
webmb = cint(Request("webmb"))
roomid = clng(Request("roomid"))
if webmb=0 or roomid=0 then  Call errstr("�Ƿ�������")
Set go = Server.CreateObject("lw.go")
go.dsnname="DSN=chatweb; UID=sa; PWD=letiandaye;" '�����ַ���
'Call go.Dnew()  '��������
go.roomid=roomid
Call go.OpenChatweb() '���ݿ�����
go.webmb=webmb
response.write go.enHtml("index.html") '����ģ��
%>