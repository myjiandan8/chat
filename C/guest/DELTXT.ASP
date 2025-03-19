<!--数据库连接文件#include file="../cool.asp" -->
<LINK href="../../images/Style.css" rel=stylesheet>
<%
  if session("admin")="" then
  response.redirect "login.asp"
  else
	if session("flag")>2 then
		response.write "<br><p align=center>您没有操作的权限</p>"
		response.end
	end if
  end if

%>
<%
id=request("id")
dim rs,sql
set rs=server.createobject("adodb.recordset")
sql="delete from book where id="&id
conn.execute sql
if err.Number<>0 then
err.clear
response.write "删 除 失 败 !<br>"
else
response.write "留言删除成功！<br>"
end if
%>

<html>
<meta http-equiv=refresh content="1; url=index.asp">
<title>回复成功</title><BODY bgcolor="#ffffff"  text="#000000" link="#000080" alink="#800000" vlink="#2f2f4f" marginheight=0 marginwidth=0 topmargin=10 leftmargin=20 rightmargin=0>
<p>　</p><p align="center"><FONT size=2>Please Wait......</FONT></p>
<p align="center"><FONT size=2>删除成功！二秒钟后系统自动返回留言簿页面</FONT></p>
<p>　</p>
</body>

</html>