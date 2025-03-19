<%@ Language=VBScript %>
<!--数据库连接文件#include file="../cool.asp" -->
<!--#include file="../../INC/newsconvert.asp" -->
<LINK href="../../images/Style.css" rel=stylesheet>

<%
if session("admin")="" then
response.redirect "mytxt/login.asp"
else
if session("flag")>1 then
response.write "<br><p align=center>您没有操作的权限</p>"
response.end
end if
end if

%>
<%
reply=request("reply")
Set rs= Server.CreateObject("ADODB.Recordset")
sql="select * from book where id="&request("id")
rs.open sql,conn,1,3

		rs("reply")=reply
		rs.update
rs.close
%>
<meta http-equiv=refresh content="1; url=index.asp">
<title>回复成功</title><BODY bgcolor="#ffffff"  text="#000000" link="#000080" alink="#800000" vlink="#2f2f4f" marginheight=0 marginwidth=0 topmargin=10 leftmargin=20 rightmargin=0>
<p>　</p><p align="center"><FONT size=2>Please Wait......</FONT></p>
<p align="center"><FONT size=2>回复成功！二秒钟后系统自动返回留言簿页面</FONT></p>