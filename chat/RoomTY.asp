<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--数据库连接文件#include file="../INC/BBTOP.asp" -->
<!--数组数据库文件#include file="../INC/Chatfl.asp" -->
<%
page=Request("page")
if (page="" or isempty(page)) then page=1
%>
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
<LINK href="images/Style.css" rel=stylesheet>
<TITLE>特约<%=page%>--聊湾可视语音聊天网-BCHAT OR LWOO 龙软科技</TITLE>

<% call top %>
<SCRIPT language=Javascript src="/Room.asp?page=<%=page%>&maxPerPage=70" type=text/javascript></SCRIPT>
<SCRIPT language=javascript>
<!--
//代码开始 脚本设计：龙软科技

var num=7, count=rooms.length/num; // count = 总开放房间数, num=房间数组的Field数量
function GetRoomname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// 房间名称,参数n表示第几个房间
function Getnum(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// 取得指定房间在线人数
function GetRoomAdmin(n){n=n*num;if(n<rooms.length)return rooms[n+2];else return null;} 	// 房间主人
function GetRoomURL(n)	{n=n*num;if(n<rooms.length)return rooms[n+3];else return null;} 	// 端口 
function GetRoomType(n)	{n=n*num;if(n<rooms.length)return rooms[n+4];else return 0;} 		// 房间分类 
function GetrType(n)	{n=n*num;if(n<rooms.length)return rooms[n+5];else return null;} 	// 支持语音.视频
function Getmaxnum(n)	{n=n*num;if(n<rooms.length)return rooms[n+6];else return 100;} 		// 最大在线数

/*登陆模块*/

function OnLogin(n) // 登录聊天室
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login.asp" ;
	login.port.value=GetRoomURL(n);
	login.submit() ;		
}

//if(count<=0)alert("系统错误，请尽快联络管理员。"); // 如果房间数为0的话就提示错误信息

function ROMS(i,vvv) // 固定公房读出是代码块,也就是为了少点垃圾代码
{    if(i<(count)){
        document.writeln("<TR><TD class=l15 width=120>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000>" + Getnum(i) + "</font>)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='可视聊天'>");
		document.writeln("</TD><TD width=120>");
	 };
		
  if(i<vvv){i++;
	  if(i<(count)){
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000>" + Getnum(i) + "</font>)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='可视聊天'>");
		document.writeln("<TR>");
	  };
   };
}


function validstr(str) // 验证用户名
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("帐户|呢称不能为空！");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("帐户|名字中不能包含特殊字符: +=|'#&<>%*`^/\\\";,.空格.");
 		str.focus(); return false;
  }}}return true;
}

function validpass(str) // 验证密码
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("密码不能为空！");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("密码有问题: +=|'#&<>%*`^/\\\";,.空格.");
 		str.focus(); return false;
  }}}return true;
}


function OnLogins() // 登陆管理中心

{
	if(!validstr(login.user))return ;
	if(!validpass(login.pass))return ;
	login.target = "_blank" ;
	login.action = "USadmin/login.asp" ;
	login.submit() ;		
}
function OnLogins() // 登陆管理中心

{
	if(!validstr(login.user))return ;
	if(!validpass(login.pass))return ;
	login.target = "_blank" ;
	login.action = "/userlogin.asp" ;
	login.submit() ;		
}

//-->
</SCRIPT>

<div align="center">
  <center>
  <table border="0" cellpadding="2" width="600" id="AutoNumber1" height="157">
    <form name="login" onsubmit="return false;" action="/" method="post">
<input type="hidden" name="port">
<input type="hidden" name="ROOMID">
    <tr>
      <td width="600" height="32" align="center" colspan="3">
      
      特约聊天室： <a href="ROOMTY.ASP?page=1">特约一</a>&nbsp;
      <a href="ROOMTY.ASP?page=2">特约二</a>&nbsp; <a href="ROOMTY.ASP?page=3">特约三</a>&nbsp;
      <a href="ROOMTY.ASP?page=4">特约四</a></td>
    </tr>
    <tr>
      <td width="600" height="32" align="center" colspan="3">
      
      用户名:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=15 size=6 name=user title="会员请写会员编号,游客填写昵称就可以"></font> 
                        密码(游客不添):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="游客登陆无需密码"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1"></font>男 <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>女 &nbsp;验证码: <font color="#336699">
<input name="adminid" size="4" maxLength=4 style="border:1px inset; BACKGROUND-COLOR: #efefef"></font><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
                <font color="#336699">
                <input onclick="OnLogins();"  type="button" value="登陆" name="B1"> 
                </td>
    </tr>
    </form>
    <tr>
      <td width="600" height="18" colspan="3">
      <p align="center">当前为：<font color="#800080"><b> 特约<%=page%></b></font></td>
    </tr>
               
<script>
	for(var i=0; i<50; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='198' height='30' valign='top'>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(在线<font color=#ff0000><b>" + Getnum(i) + "</b></font>人)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='视频语音聊天聊天'>");
		document.writeln("</td>");
	 	};  
	 	i++
	 	if(i<(count)){
        document.writeln("<td width='198' height='30' valign='top'>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(在线<font color=#ff0000><b>" + Getnum(i) + "</b></font>人)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='视频语音聊天聊天'>");
		document.writeln("</td>");
	 	};  
	 	i++
	 	if(i<(count)){
        document.writeln("<td width='198' height='30' valign='top'>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(在线<font color=#ff0000><b>" + Getnum(i) + "</b></font>人)");
		if(GetrType(i)=="V")document.write("<img border=0 src=images/eye.gif alt='视频语音聊天聊天'>");
		document.writeln("</td></TR>");
	 	};  

  
	 }
    </script>

           
    <tr>
      <td width="198" height="23" valign="top">　</td>
      <td width="200" height="23" valign="top">　</td>
      <td width="202" height="23" valign="top">　</td>
    </tr>
    
    <tr>
      <td width="198" height="69" valign="top">　</td>
      <td width="200" height="69" valign="top">　</td>
      <td width="202" height="69" valign="top">　</td>
    </tr>
    </table>
  </center>
</div>

    
<p>
</p>
<%
Set rs = Nothing
Set conn = Nothing
%>
<% call di %>