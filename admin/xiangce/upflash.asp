<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--数组数据库文件#include file="../../INC/CLA.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">


<%
if Request("menu")="up" then

Set UP = Server.CreateObject("lw.up")

set file = UP.file("file")
EXT=LCase(file.FileExt)

	if EXT="swf" then

	file.SaveFile Server.mappath("../../pic/flash/"&file.FileName&"")

%>

&nbsp;
<br>文件上传成功,要<a href=upflash.asp>继续上传请点这里</a>
<%
	else
	
	wenti "出错！只能上传.swf文件！"

	end if

set UP = Nothing

else

%>


<html>
<head>
<title>FLASH文件上传</title>
<link rel="stylesheet" href="../img/lw.css" type="text/css">

</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">

<p>　</p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="586" id="AutoNumber1" bgcolor="#FFFFFF" height="179">
    <tr>
      <td width="586" height="38" align="center"><font size="4"><b>FLASH</b></font><b><font size="4">上传文件</font></b></td>
    </tr>
    <tr>
      <td width="586" height="22">只能上传.swf文件</td>
    </tr>
    <form enctype=multipart/form-data method=post name="myform"  action=upflash.asp?menu=up>
    <tr>
      <td width="586" height="13">　</td>
    </tr>
    <tr>
      <td width="586" height="46">选择要上传的文件：<input type=file style=FONT-SIZE:9pt name=file size="45"></td>
    </tr>
    <tr>
      <td width="586" height="28" align="center"><input style=FONT-SIZE:9pt type="submit" value=" 上 传 " name=Submit></td>
    </tr>
    <tr>
      <td width="586" height="32"></td>
    </tr>
    </form>
  </table>
  </center>
</div>
</body>
</html>
<%
end if
%>