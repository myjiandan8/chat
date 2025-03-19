
<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin9.asp"-->

<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>用户密码找回</TITLE>

<meta http-equiv="Content-Language" content="zh-cn">
<style type="text/css">
<!--
td    { font-size: 12px} 
-->
</style>
<% 
s=request("s")
ss=request("ss")
%>
<body>
 <form method=post action="ruzhang.asp">

          <INPUT TYPE="HIDDEN" NAME="s" VALUE="<%=s%>">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%" valign="top">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="624" height="376" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="622" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          <font color="#FFFFFF">聊弯财务报表</font></b></td>
        </tr>
        <tr>
          <td width="622" height="28">&nbsp;日报表&nbsp; 周报表&nbsp; 月报表&nbsp; 季报表&nbsp; 
          年报表</td>
        </tr>
        <tr>
          <td width="622" height="381" valign="top">

　</td>
        </tr>
        <tr>
          <td width="622" height="21">
          <p align="right">　</td>
        </tr>
      </table>
      </center>
    </div>　</td>
  </tr>
</table></form>

</html>