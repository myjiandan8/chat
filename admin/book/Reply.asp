<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/newsconvert.asp" -->


<LINK href="../../images/Style.css" rel=stylesheet>


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<title>回复留言</title>
<link rel="stylesheet" type="text/css" href="3.css">


</head>

<body>
<br>
<form method="POST" name="myform" action="savere.asp?id=<%=request("id")%>">
  <div align="center"><center><table cellspacing="0" border="1" cellpadding="0" cellspacing="0" bordercolor="#999999">
    <tr>
      <td width="99%" bgcolor="#999999" height="20">
          <p><font color="#FFFFFF"><b>&nbsp;添 加 留 言 </b></font>
        </td>
    </tr>
    <tr align="center">
      <td width="99%">
	<table border="0" cellspacing="1" width="100%">
        <tr>
          <td width="12%" align="right" valign="top"><b><font color="red">*</font>回复内容</b></td>
          <td width="86%"><textarea rows="11" name="reply" cols="60" class="smallarea"></textarea></td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
<p><input type="submit" value=" 添 加 "
  name="cmdok" class="buttonface">&nbsp; <input type="reset" value=" 清 除 "
  name="cmdcancel" class="buttonface"></p>
  </center></div>
</form>
</body>
</html>
