<!--数据库连接文件#include file="../INC/SQLconn.asp" -->

<%

Call OpenConn()

		if session("rniIP")>4 then

			sql="select * from ip" 
			rs.open sql,conn,1,3
		
			rs.addnew
		
			rs("ip")=Request.ServerVariables("REMOTE_ADDR")
			rs("times")=now()
		
			rs.update
			rs.close
			
		end if


if Request("uID")<>"" then
	
	Call yanzheng()

	sql="select * from admin where UID='" & trim(request("uID")) & "' and passwd='" & replace(trim(request("passwd")),"'","''") & "'"
	set rs = conn.Execute(sql)
	
	if not (rs.eof or err) then
	
		session("UID")=rs("UID")
		session("usercctvcomsinacom")="1"
		session("rniIP")=0
		response.redirect "index_kj.asp"
		rs.close
		
	else
	
		session("rniIP")=session("rniIP")+1
	
%>

<script language=Javascript>
	alert("用户名或密码错误！请重新输入");
	window.history.go(-1);	
</script>
<%	
	end if
else
%>
<HTML><HEAD>
<title>进入龙软[聊弯]后台管理</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>BODY {
	BACKGROUND: #799ae1; MARGIN: 0px; FONT: 9pt 宋体
}
TABLE {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
TD {
	FONT: 12px 宋体
}
</STYLE>

<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY style="border:0px none; background-color: #D6D3CE">
<table width="100%" border="0" cellspacing="0" cellpadding="0" HEIGHT="100%" ALIGN="CENTER">
 <tr bgcolor="#FFFFFF"> 
 <td HEIGHT="34" rowspan="2">&nbsp;&nbsp;
 <img src="img/logov.gif" hspace="2" vspace="2"></td>
 <td HEIGHT="17" align="right" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
 </tr>
 <tr bgcolor="#FFFFFF">
 <td HEIGHT="17" align="right" valign="bottom">&nbsp;进入聊湾<span lang="zh-cn">[<font color="#FF0000"><b>WEB系统</b></font>]管理中心</span>&nbsp;</td>
 </tr>
 <tr bgcolor="#666666"> 
 <td HEIGHT="1" colspan="2"></td>
 </tr>
 <tr bgcolor="#FFFFFF"> 
 <td HEIGHT="1" colspan="2"></td>
 </tr>
 <form name="form1" method="post" action="login.asp">
 <tr> 
 <td colspan="2" align="center"> 
 <table width="798" border="0" cellpadding="2" cellspacing="0" height="129">
 <tr> 
 <td height="12" ALIGN="center" width="794" colspan="2"> </td>
 </tr>
 <tr> 
 <td height="1" ALIGN="center" width="794" colspan="2"></td>
 </tr>
 <tr> 
 <td height="19" ALIGN="center" width="361">
 <p align="right"><font color="#666666">用 户 名:</font> </td>
 <td height="19" width="429">
 <input name="uid" type="text" size="15" maxlength="50"></td>
 </tr>
 <tr> 
 <td height="28" align="right" width="361">
 <font color="#666666">登录密码:</font> </td>
 <td height="28" align="center" width="429"> 
 <input name="passwd" type="password" size="15" maxlength="50" style="float: left"></td>
 </tr>
 <tr>
 <td height="17" align="right" width="361">
 <font color="#666666">验 证 码:</font></td>
 <td height="17" width="429">
 <input name="adminid" size="4" maxLength=4 ><iframe frameborder=0 width=40 height=10  src=/inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
  <script>window.open("../inc/code_s.htm","I2")</script>
 
 </td>
 </tr>
 <tr> 
 <td height="26" align="center" width="794" colspan="2"><br> 　</td>
 </tr>
 </table></td>
 </tr>
 <tr align="right"> 
 <td colspan="2" valign="bottom"> 
 <a target="_blank" href="../"><font color="#666666">返回聊湾</font></a>&nbsp;&nbsp; 
 </td>
 </tr>
 <tr bgcolor="#666666"> 
 <td height="1" colspan="2" align="center"></td>
 </tr>
 <tr bgcolor="#FFFFFF"> 
 <td height="1" colspan="2" align="center"></td>
 </tr>
 <tr align="center"> 
 <td colspan="2"><table width="75%" border="0">
 <tr> 
 <td height="28" align="right" valign="top"><input type="submit" name="S1" value=" 登 录 "> 
 <input type="button" name="S2" value=" 取 消 " onClick="top.close();"></td>
 </tr>
 </table></td>
 </tr>
 </form>
</table>
</BODY></HTML>
<% END IF
 %>