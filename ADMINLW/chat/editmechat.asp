<!--数组数据库文件#include file="../../INC/Chatfl.asp" -->
<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--模板生成#include file="../../INC/sysBChat.asp" -->
<%
Set rs= Server.CreateObject("ADODB.Recordset")
Call OpenChatConn()
Call OpenMeChatConn()


sql="select * from web where id="& Request("Roomid")
set rs=chatconn.execute (sql)

	userpasswd = rs("adminpasswd")
	userpasswd1 = rs("userpasswd1")
	userpasswd2 = rs("userpasswd2")
	admin = rs("admin")
	adminid = rs("adminid")
	rs.close



sql="select * from [Room] where Roomid="&Request("Roomid")
set rs=mechatconn.execute (sql)
if rs.eof and rs.bof then
%>

没有找到该数据 <a href='Javascript:window.history.go(-1)'>返回</a>

<% else %>

<HTML>
<HEAD>
<TITLE>新开房间</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT LANGUAGE="JavaScript">
<!--
function validResume(str) // 验证
{ var s,i,j; s="+=|'#&<>%*`^/\\\""; str1=str.value.toString();
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("简介中包含特殊字符: +=|'#&<>%*`^/\\\"");
 		str.focus(); return false;
  }}}return true;
}

function check()
{
	return;
/*	if(ValidEmail(regist.Email.value))
	{
		alert("请输入有效的Email地址!") ;
		regist.Email.focus() ;
		return false ;
	}
*/	if(regist.Photo.value.length > 60)
	{
		alert("照片路径太长!") ;
		regist.Photo.focus() ;
		return false ;
	}

	if(!validResume(regist.Resume))
	{
		return false;
	}

	if(regist.Resume.value.length > 100)
	{
		alert("简介太多了点吧!") ;
		regist.Resume.focus() ;
		return false ;
	}
	return true;
}
function ValidEmail(item){
var etext
var elen
var i
var aa
etext=item
elen=etext.length
if (elen<5)
 return true;
i= etext.indexOf("@",0)
if (i==0 || i==-1 || i==elen-1)
 return true;
else
 {if (etext.indexOf("@",i+1)!=-1)
  return true;}
if (etext.indexOf("..",i+1)!=-1)
 return true;
i=etext.indexOf(".",0)
if (i==0 || i==-1 || etext.charAt(elen-1)=='.')
 return true;
if ( etext.charAt(0)=='-' ||  etext.charAt(elen-1)=='-')
 return true;
if ( etext.charAt(0)=='_' ||  etext.charAt(elen-1)=='_')
 return true;
for (i=0;i<=elen-1;i++)
{ aa=etext.charAt(i)
  if (!((aa=='.') || (aa=='@') || (aa=='-') ||(aa=='_') || (aa>='0' && aa<='9') || (aa>='a' && aa<='z') || (aa>='A' && aa<='Z')))
   return true;
}
return false;
}
//-->
</SCRIPT>
</HEAD>
<STYLE type=text/css>
<!--
td {  font-family: "宋体"; font-size: 9pt}
body {  font-family: "宋体"; font-size: 11pt; line-height: 15pt}
.title {  font-family: "宋体"; font-size: 11pt}
A {text-decoration: none; font-family: "宋体"}
A:hover {text-decoration: underline; color: #FF0000; font-family: "宋体"} 
-->
</style>
<BODY bgcolor="#EEEEFF" LANGUAGE="JavaScript">
<div align=center>
  <FORM action="editmechatsave.asp" method="POST" name="roomedit" onsubmit="return check();">
  <TABLE border="3" width="564" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" cellspacing="0" height="912">

<TR>
        <TD align="center" class="title" height="20" width="554"> 
        <font color="#FF0000">编辑</font><font color=red>修改MECHAT聊天室信息</font> ID：<%=Request("Roomid")%></TD>
      </TR>
<TR>
        <TD height="20" width="554"> &nbsp;<INPUT type="hidden" name="UserNameAdmin" value="<!--$UserNameAdmin-->"><INPUT type="hidden" name="TempPassword" value="<!--$TempPassword-->"></TD></TR>
<TR>
        <TD height="6" width="554"> 聊天室名称:
          <input type=hidden name=Roomid value="<%=Request("Roomid")%>">
          <INPUT type="text" name="RoomName" maxlength="20" size="20" value="<%=rs("RoomName")%>">
        </TD>
      </TR>
<tr>
        <TD height="8" width="554"> 房间管理密码:
          <INPUT type="text" name="password" maxlength="20" size="20" value="<%=userpasswd%>">
        </TD>
      </tr>
<tr>
        <TD height="13" width="554"> 配置管理密码:
		<INPUT type="text" name="userpasswd1" maxlength="20" size="20" value="<%=userpasswd1%>"></TD>
      </tr>
<tr>
        <TD height="28" width="554"> 设置主持密码:
		<INPUT type="text" name="userpasswd2" maxlength="20" size="20" value="<%=userpasswd2%>"></TD>
      </tr>
<tr>
        <TD height="33" width="554"> 室主名:<input type="text" name="Admin" maxlength="200" size="24" value="<%=admin%>"> 
		真实姓名</TD>
      </tr>
<tr>
        <TD height="40" width="554"> 室主ID:<input type="text" name="Adminid" maxlength="200" size="24" value="<%=adminid%>"> 
		用户的数字ID</TD>
      </tr>
<TR>
        <TD height="60" width="554"> 一级管理员,多个管理员之间可用<b>英文逗号</b>分开<br> 
        <% On Error Resume Next %>
          <input type="text" name="Administrators1" maxlength="200" size="50" value="<%=Left(rs("Administrators"), InStr(rs("Administrators"), ";") - 1)%>">
        </TD>
      </TR>
<TR>
        <TD height="70" width="554"> 二级管理员,多个管理员之间可用<b>英文逗号</b>分开<br>
          <INPUT type="text" name="Administrators2" maxlength="200" size="50" value="<%=Mid(rs("Administrators"), InStr(rs("Administrators"), ";") + 1)%>"> 
</TD></TR>	  
<TR>
        <TD height="20" width="554"> 最到在线用户数: 
        
<select size="1" name="MaxUser">

<option <%if rs("MaxUser")=20 then response.write "selected"%>>20</option>
<option <%if rs("MaxUser")=30 then response.write "selected"%>>30</option>
<option <%if rs("MaxUser")=50 then response.write "selected"%>>50</option>
<option <%if rs("MaxUser")=60 then response.write "selected"%>>60</option>
<option <%if rs("MaxUser")=80 then response.write "selected"%>>80</option>
<option <%if rs("MaxUser")=100 then response.write "selected"%>>100</option>
<option <%if rs("MaxUser")=150 then response.write "selected"%>>150</option>
<option <%if rs("MaxUser")=200 then response.write "selected"%>>200</option>
<option <%if rs("MaxUser")=300 then response.write "selected"%>>300</option>
<option <%if rs("MaxUser")=400 then response.write "selected"%>>400</option>
<option <%if rs("MaxUser")=500 then response.write "selected"%>>500</option>

        </select>
        </TD>
      </TR>
<TR>
        <TD height="15" width="554">热闹状态的在线用户数%:&nbsp; 
        
<select size="1" name="NearMaxUser">

<option <%if rs("NearMaxUser")=50 then response.write "selected"%>>50</option>
<option <%if rs("NearMaxUser")=60 then response.write "selected"%>>60</option>
<option <%if rs("NearMaxUser")=70 then response.write "selected"%>>70</option>
<option <%if rs("NearMaxUser")=80 then response.write "selected"%>>80</option>


        </select></TD>
      </TR>
<TR>
        <TD height="60" width="554"> 配置文件的编号，例如 IniNo= 1 ,则对应的配置文件在目录/SysData/ini/1里面<br>
          <INPUT type="text" name="IniNo" maxlength="30" value="<%=rs("IniNo")%>" size="20"> 
</TD></TR>
<TR>
        <TD height="60" width="554"> web网页的Template编号,例如 TemplateNo= 2，则对应的网页在目录/SysData/template/2里面: 
          <br>
          <INPUT type="text" name="TemplateNo" maxlength="20" size="20" value="<%=rs("TemplateNo")%>"> 
</TD></TR>
<TR>
        <TD height="40" width="554"> 是否记录聊天的内容,当人数多时,记录日志影响系统性能<br>
          否
          <input type="radio" name="LogRoom" value="0" <%if rs("LogRoom")=0 then response.write "checked"%>>
          是 <input type="radio" name="LogRoom" value="1" <%if rs("LogRoom")=2 then response.write "checked"%>>
        </TD>
      </TR>
<TR>
        <TD height="40" width="554"> 是否记录聊天的内容包括IP:<br>
          否
          <input type="radio" name="LogIP" value="0" <%if rs("LogIP")=0 then response.write "checked"%>>
          是 
          <input type="radio" name="LogIP" value="1" <%if rs("LogIP")=1 then response.write "checked"%>>
          </TD>
      </TR>
<TR>
        <TD height="40" width="554"> 记录最后发言数量: <br>
          <INPUT type="text" name="LastMessage" maxlength="20" size="20" value="<%=rs("LastMessage")%>"> 
</TD></TR>
<TR>
        <TD height="20" width="554"> 是否允许游客发言: 
          否<input type="radio" name="AllowGuest" value="0"  <%if rs("AllowGuest")=0 then response.write "checked"%>>
          是 
          <input type="radio" name="AllowGuest" value="1" <%if rs("AllowGuest")=1 then response.write "checked"%>>
        </TD>
      </TR>
<TR>
        <TD height="20" width="554"> 是否允许聊天室列出: 
          否<input type="radio" name="AllowPublic" value="0" <%if rs("AllowPublic")=0 then response.write "checked"%>>
          是 
          <input type="radio" name="AllowPublic" value="1" <%if rs("AllowPublic")=1 then response.write "checked"%>>
        </TD>
      </TR>
<TR>
        <TD height="20" width="554"> 聊天室类型: 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<11) %>
<option value="<%=i%>" <%if rs("RoomType")=i then response.write "selected"%>><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
        </select></TD></TR>
<TR>
        <TD height="20" width="554">是否支持语音: 
          否<input type="radio" name="SupportAudio" value="0" <%if rs("SupportAudio")=0 then response.write "checked"%>>
          是 
          <input type="radio" name="SupportAudio" value="1" <%if rs("SupportAudio")=1 then response.write "checked"%>>
        </TD>
      </TR>
<TR>
        <TD height="20" width="554"> 是否支持视频: 
         否<input type="radio" name="SupportVideo" value="0" <%if rs("SupportVideo")=0 then response.write "checked"%>>
          是 
          <input type="radio" name="SupportVideo" value="1" <%if rs("SupportVideo")=1 then response.write "checked"%>>
        </TD>
      </TR>
<TR>
        <TD height="46" width="554"> 背景图片的url: <br>
          <INPUT type="text" name="Background" maxlength="100" size="50" value="<%=rs("Background")%>"> 
</TD></TR>
<TR>
        <TD height="40" width="554"> 聊天室主题: 
          <INPUT type="text" name="RoomTopic" maxlength="200" size="50" value="<%=rs("RoomTopic")%>"> 
</TD></TR>
<TR>
        <TD height="40" width="554">聊天室密码,当不为空会,聊天室会加锁: <br>
          <INPUT type="text" name="RoomPassword" maxlength="20" size="20" value="<%=rs("RoomPassword")%>"> 
</TD></TR>
<TR>
        <TD height="18" width="554"> 退出聊天室url: <br>
          <INPUT type="text" name="LogoutUrl" maxlength="50" size="33" value="<%=rs("LogoutUrl")%>"> 
</TD></TR>
 <tr>
        <TD height="22" width="554"> 房间配置连接:<br>
          <INPUT type="text" name="ExternValue" maxlength="200" size="50" value="<%=rs("ExternValue")%>"></TD>
</tr>
 <TR><TD align="center" height="21" width="554">
<INPUT type="submit" value="修改聊天室" name=submit1>
        </TD>
      </TR>
</TABLE>
</form>
</div>
</BODY>
</HTML>
<% end if %>