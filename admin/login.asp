<!--数据库连接文件#include file="../INC/SQLconn.asp" -->

<%

roomid=request("roomid")
name=request("name")
passwd=trim(request("passwd"))
m=Request("m")



if roomid<>"" and name<>"" and passwd<>""  then

if session("rmport")<>"" or session("rmpass")<>"" or session("rmnewdj")<>"" then  
			session("admincanshu")= ""
			session("adminname")=  ""
			session("rmpass")=  ""
			session("rmport")=  ""
end if

Call yanzheng()

On Error Resume Next

if roomid<1000 or roomid >9999 then errstr("用户名错误！\n房间ID必须是1000-9999的数字")

Call OpenChatconn()

if name="admin" then

	sql="select id from web where id=" & roomid & " and adminpasswd='" & passwd & "'"
	set rs = Chatconn.Execute(sql)
	if not (rs.eof or err) then
	
			//session("admincanshu")= "ok"
			session("adminname")= name
			session("rmpass")= passwd
			session("rmport")= roomid
			
			response.redirect "index_kj.asp"
			response.end
	else	

		Call errstr("用户名或密码错误！")
	
	end if		
	
else
	sql="select admin from admin where roomid=" & roomid & " and name='" & name & "' and passwd='" & passwd & "'"
	set rs = Chatconn.Execute(sql)
	if not (rs.eof or err) then
	
			//session("admincanshu")= rs("admin")
			session("adminname")= name
			session("rmpass")= passwd
			session("rmport")= roomid
			
			response.redirect "index_kj.asp"
			response.end
	else	

		Call errstr("用户名或密码错误！")
	
	end if	
	
end if

	







end if
%>
<HTML><HEAD>
<title>进入龙软[聊湾聊天室]后台管理</title>
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
 <td HEIGHT="17" align="right" valign="bottom">&nbsp;进入聊湾<span lang="zh-cn">[<font color="#FF0000"><b>聊天室产品</b></font>]管理中心</span>&nbsp;</td>
 </tr>
 <tr bgcolor="#666666"> 
 <td HEIGHT="1" colspan="2"></td>
 </tr>
 <tr bgcolor="#FFFFFF"> 
 <td HEIGHT="1" colspan="2"></td>
 </tr>
 <!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.roomid.value == "")
  {
    alert("请在 roomid 域中输入值。");
    theForm.roomid.focus();
    return (false);
  }

  if (theForm.roomid.value.length < 4)
  {
    alert("在 roomid 域中，请至少输入 4 个字符。");
    theForm.roomid.focus();
    return (false);
  }

  if (theForm.roomid.value.length > 4)
  {
    alert("在 roomid 域中，请最多输入 4 个字符。");
    theForm.roomid.focus();
    return (false);
  }

  var checkOK = "0123456789-.";
  var checkStr = theForm.roomid.value;
  var allValid = true;
  var validGroups = true;
  var decPoints = 0;
  var allNum = "";
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
    if (ch == ".")
    {
      allNum += ".";
      decPoints++;
    }
    else
      allNum += ch;
  }
  if (!allValid)
  {
    alert("在 roomid 域中，只能输入 数字 字符。");
    theForm.roomid.focus();
    return (false);
  }

  if (decPoints > 1 || !validGroups)
  {
    alert("请在 roomid 域中输入一个有效数字。");
    theForm.roomid.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><form name="FrontPage_Form1" method="post" action="login.asp" onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript">
 <tr> 
 <td colspan="2" align="center"> 
 <table width="100%" border="0" cellpadding="2" cellspacing="0" height="129">
 <tr> 
 <td height="12" ALIGN="center" width="794" colspan="2"> </td>
 </tr>
 <tr> 
 <td height="19" ALIGN="center" width="794" colspan="2"></td>
 </tr>
 <tr> 
 <td height="0" ALIGN="right" width="349">
 <p align="right"><font color="#666666">房间&nbsp; ID:</font></td>
 <td height="0" width="498">
         <!--webbot bot="Validation" s-data-type="Number" s-number-separators="x." b-value-required="TRUE" i-minimum-length="4" i-maximum-length="4" --><input name="roomid" type="text" size="15" maxlength="4"> 
			这里写房间的ID 如 2045</td>
 </tr>
 <tr>
 <td height="23" ALIGN="right" width="349">
 <p align="right"><font color="#666666">用 户 名:</font> </td>
 <td height="23" width="498">
<input name="name" type="text" size="15" maxlength="15"> 
这里写你建立的管理帐户名，室主的默认帐户为<font color="#FF0000">admin</font></td>
 </tr>
 <tr> 
 <td height="23" align="right" width="349">
 <font color="#666666">登录密码:</font> </td>
 <td height="23" width="498">
	<input name="passwd" type="password" size="15" maxlength="15"> 
	这里写你建立的管理帐户密码，室主默认密码为<font color="#FF0000">老室主密码</font></td>
 </tr>
 <tr>
 <td height="15" align="right" width="349">
 <font color="#666666">验 证 码:</font></td>
 <td height="15" width="498">
 <input name="adminid" size="4" maxLength=4 ><iframe frameborder=0 width=40 height=10  src=/inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
 <script>window.open("../inc/code_s.htm","I2")</script>
 </td>
 </tr>
 <tr>
 <td height="19" align="center" width="100%" colspan="2">
 <font color="#808080">取消配置帐号和设置管理员方式，采用新的管理分级方式。更科学管理更人性化！<br>
	</font>
 <font color="#FF0000">室主登陆后在 [基本配置] - [编辑管理员] 里可以添加多个拥有不同权限管理员帐号</font></td>
 </tr>
 <tr> 
 <td height="89" align="center" width="794" colspan="2"><br> 　</td>
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
 <input type="button" name="S2" value="密码找回" onClick="window.open('mima.asp');"></td>
 </tr>
 </table></td>
 </tr>
 </form>
</table>
</BODY></HTML>
