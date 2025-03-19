<%sub diserror()%>
<link rel="stylesheet" href="Sams.css" type="text/css">
<body>
<br>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="38%" background="images/tablebg.gif" class="newshead">&nbsp;::::: 
      ERROR ::::::</td>
    <td width="54%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
<br>
<table width="70%" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td bgcolor="#FFFFFF" class="chinese"><%=errmsg%></td>
  </tr>
  <tr>
    <td align="right" bgcolor="#FFFFFF" class="chinese"><a href="javascript:history.go(-1)">[·µ»Ø]</a></td>
  </tr>
</table>
<br><br><br><br>
</body>
<%end sub%>