<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--�������ݿ��ļ�#include file="../../INC/CLA.asp" -->
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
<br>�ļ��ϴ��ɹ�,Ҫ<a href=upflash.asp>�����ϴ��������</a>
<%
	else
	
	wenti "����ֻ���ϴ�.swf�ļ���"

	end if

set UP = Nothing

else

%>


<html>
<head>
<title>FLASH�ļ��ϴ�</title>
<link rel="stylesheet" href="../img/lw.css" type="text/css">

</head>

<body bgcolor="#9CC7EF" text="#000000" leftmargin="0" topmargin="0">

<p>��</p>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="586" id="AutoNumber1" bgcolor="#FFFFFF" height="179">
    <tr>
      <td width="586" height="38" align="center"><font size="4"><b>FLASH</b></font><b><font size="4">�ϴ��ļ�</font></b></td>
    </tr>
    <tr>
      <td width="586" height="22">ֻ���ϴ�.swf�ļ�</td>
    </tr>
    <form enctype=multipart/form-data method=post name="myform"  action=upflash.asp?menu=up>
    <tr>
      <td width="586" height="13">��</td>
    </tr>
    <tr>
      <td width="586" height="46">ѡ��Ҫ�ϴ����ļ���<input type=file style=FONT-SIZE:9pt name=file size="45"></td>
    </tr>
    <tr>
      <td width="586" height="28" align="center"><input style=FONT-SIZE:9pt type="submit" value=" �� �� " name=Submit></td>
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