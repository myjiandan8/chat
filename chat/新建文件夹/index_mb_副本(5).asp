<!--#include file="../tongji.asp" -->
<!--#include file="../INC/Chatfl.asp" -->
<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="inctop.asp"-->
<!--#include file="incfooter.asp"-->
<%
Server.ScriptTimeOut=9000
stats="首页"
dim founderr,errmsg
founderr=false
errmsg=""

openadmin
sql="select articlecount,softcount,piccount,modelcount,coolsitescount,friendlinkcount,newscount,diarycount,gbcount from allcount"
set rs=conn.execute(sql)
articlecount=rs("articlecount")
softcount=rs("softcount")
piccount=rs("piccount")
modelcount=rs("modelcount")
coolsitescount=rs("coolsitescount")
friendlinkcount=rs("friendlinkcount")
newscount=rs("newscount")
diarycount=rs("diarycount")
gbcount=rs("gbcount")
rs.close

call top()

openadmin
set rswebcount=conn.execute("select * from vcount")
%> 

<SCRIPT language=javascript>
<!--
//代码开始 脚本设计：龙软科技

<%
'第几页
fenge = ""

sql="select top 32 Roomname,num,admin,host,id,RoomType,rtype,max,newtype,sysff from [web] where [liebiao]=0 order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=32)

	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max") & "," & rs("newtype") & "," & rs("sysff")
	fenge = ","
	i=i+1
  rs.moveNext
  loop
  rs.close
 

response.write "var rooms = new Array(" & rooms & ");"
%>


var num=9, count=rooms.length/num; // count = 总开放房间数, num=房间数组的Field数量
function GetRoomname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// 房间名称,参数n表示第几个房间
function Getnum(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// 取得指定房间在线人数
function GetRoomAdmin(n){n=n*num;if(n<rooms.length)return rooms[n+2];else return null;} 	// 房间主人
function GetRoomURL(n)	{n=n*num;if(n<rooms.length)return rooms[n+3];else return null;} 	// 端口 
function GetRoomType(n)	{n=n*num;if(n<rooms.length)return rooms[n+4];else return 0;} 		// 房间分类 
function GetrType(n)	{n=n*num;if(n<rooms.length)return rooms[n+5];else return null;} 	// 支持语音.视频
function Getmaxnum(n)	{n=n*num;if(n<rooms.length)return rooms[n+6];else return 100;} 		// 最大在线数
function Getnewtype(n)	{n=n*num;if(n<rooms.length)return rooms[n+7];else return 3;} 		// 新分类
function Getff(n)		{n=n*num;if(n<rooms.length)return rooms[n+8];else return 0;} 		// 房间类型

/*登陆模块*/

function OnLogin(n) // 登录聊天室
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login2.asp" ;
	login.port.value=GetRoomURL(n);
	login.submit() ;		
}

if(count<=0)alert("系统错误，请尽快联络管理员。"); // 如果房间数为0的话就提示错误信息

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
	login.action = "/userlogin.asp" ;
	login.submit() ;		
}

function OnLogind(n) // 登录聊天室 定ID
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login2.asp" ;
	login.port.value= n;
	login.submit() ;		
}

//-->
</SCRIPT>
<style type="text/css">
<!--
.yin1 {	FILTER: DropShadow(Color=#ffffff, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.yin2 {	BORDER-BOTTOM: #000000 1px solid; BORDER-TOP: #000000 1px solid; FILTER: DropShadow(Color=#ffffcc, OffX=1, OffY=1, Positive=1); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt; }
.yin3 {	FILTER: DropShadow(Color=#ffffFF, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 10pt}
-->
</style>
<SCRIPT src="/ad/ad1.js"></SCRIPT>
</head>
<head>
<link rel="stylesheet" href="Sams.css" type="text/css">
<!--聊湾主页模块1-->
<!--
<DIV id=Layer11 style="Z-INDEX: 1; LEFT: 564px; VISIBILITY: visibility; WIDTH: 123px; POSITION: absolute; TOP: -1px; HEIGHT: 31px">
            <OBJECT 
            codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0 
            height=439 width=440 
            classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000>
              <PARAM NAME="movie" VALUE="../ad/images/newnew.swf">
				<PARAM NAME="quality" VALUE="High"><PARAM NAME="wmode" VALUE="transparent">
                                                                            
  			<param name="menu" value="false">
                                                                            
  <embed src="../ad/images/newnew.swf" 
            quality=High 
            pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" 
            type="application/x-shockwave-flash" width="440" height="439" 
            wmode="transparent" menu="false">                 </embed> </OBJECT>
</DIV>-->
<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="896">
  <tr> 
    <td valign="top" width="209" height="896" rowspan="3"> 

	  <table border="0" width="100%" id="table14" height="593">
		<tr>
			<td height="235" align="center" background="images/zi2.gif" valign="top">
			<table border="0" width="94%" id="table16" height="221" cellspacing="1">
				<tr>
					<td height="48">　</td>
				</tr>
				<tr>
					<td height="148" valign="top" class=yin1><b><font color="#FF0000">&nbsp; 
					视盟责任，为视聊行业提供技术支持、广告投放、经营项目联合服务。作为一个视聊的门户。我们的责任，为本行业的网站提供宣传的平台，并研究商讨盈利方法，
					制订行业自律规范，合理性竞争。共同实现盈利的契机。<br>
&nbsp; 聊湾在这里感谢，各系统开发公司与各大视频聊网站的支持。</font></b><font color="#000080"><br>
&nbsp;&nbsp;&nbsp; 有意经营视聊事业的网友或公司请联系010-81430388 QQ779811</font></td>
				</tr>
				<tr>
					<td><font color="#000000">总运行房间:</font><font color="#FF0000"><b><%=maxroom%></b></font><font color="#000000">间 
					在线:</font><font color="#FF0000"><b><%=maxnum%></b></font><font color="#000000">人</font></td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td align="center" valign="top" height="5"></td>
		</tr>
		<tr>
			<td align="center" valign="top" height="85">　</td>
		</tr>
		<tr>
			<td align="center" valign="top" height="66">
			<table border="1" cellspacing="1" width="206" id="table19" style="border-collapse: collapse" bordercolor="#FFCCFF">
				<tr>
					<td bgcolor="#800080" height="23" width="200" colspan="4">
					<font color="#FFFFFF">&nbsp;视盟成员统计表</font></td>
				</tr>
				<tr>
					<td width="57" align="center" height="19">
					<font color="#800080">站点</font></td>
					<td width="37" align="center" height="19">
					<font color="#800080">热房</font></td>
					<td width="46" align="center" height="19">
					<font color="#800080">在线</font></td>
					<td width="46" align="center" height="19">
					<font color="#800080">最高</font></td>
				</tr>
				
<%
sql="select * from newweb order by webid asc"
set rsm=chatconn.execute (sql)
do while not (rsm.eof or err)
%> 
				<tr>
					<td width="57" align="center"><%=rsm("webname")%></td>
					<td width="37" align="center"><%=rsm("maxroom")%></td>
					<td width="46" align="center"><%=rsm("maxnum")%></td>
					<td width="46" align="center"><%=rsm("Tnum")%></td>
				</tr>
<%
  rsm.moveNext
  loop
  rsm.close
%>
				<tr>
					<td width="186" colspan="4"><font color="#93DA14">注 
					*为以授权个人名义加盟形式</font></td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td align="center" valign="top">
			　</td>
		</tr>
		<tr>
			<td align="center" valign="top">
			<a target="_blank" href="../info/shop.asp">
			<img border="0" src="../ad/PIC/3.gif" width="200" height="71"></a></td>
		</tr>
		<tr>
			<td align="center" valign="top">
			<a target="_blank" href="../info/shop.asp">
			<img border="0" src="../ad/PIC/1.gif"></a></td>
		</tr>
		<tr>
			<td align="center" valign="top" height="54">
			<a target="_blank" href="../info/blt.asp">
			<img border="0" src="../ad/PIC/2.gif" width="200" height="90"></a></td>
		</tr>

		<tr>
			<td align="center" valign="top" height="56">
			　</td>
		</tr>
		<tr>
			<td align="center" valign="top" height="53">
			　</td>
		</tr>

		</table>

</td>
    <td width="4" height="896" rowspan="3"></td>
    <td width="4" valign="top" height="896" rowspan="3"></td>
    <td width="555" valign="top" background="images/BG.gif" height="447"> 
      
      
    <table border="0" cellpadding="2" cellspacing="1" width="101%" id="AutoNumber1" height="433">
      <tr>
        <td width="100%" height="31" align="center" colspan="2">
        
<table width="544" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="9" width="17"></td>
  </tr>
  <tr> 
    <td width="17" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="488" background="images/tablebg.gif" >　<a target="_blank" href="../vip/regadd.asp">聊湾用户注册</a>&nbsp;<a href="../vip/usermima.asp">密码找回</a>&nbsp;
                  <a target="_blank" href="roomlist.asp">房间列表</a>&nbsp;<font color="#333399"><a target="_blank" href="paihang.asp">排行榜</a></font> <font color="#4D6B88"><font color="#339933">&nbsp;</font><a target="_blank" href="http://admin.bliao.com/user/login.htm"><font color="#339933">碧聊用户注册</font></a></font>|<font color="#4D6B88"><a target="_blank" href="http://admin.bliao.com/user/getpasswd.php"><font color="#339933">密码找回</font></a>&nbsp;
	<a target="_blank" href="/admin">房间管理</a></font>&nbsp;
              <a href="/help">帮助</a></td>
    <td width="11" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="28" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
    <tr> 
    <td height="5" width="17"></td>
  </tr>
</table>

        </td>
      </tr>
      
<form name="login" onsubmit="return false;" action="/userlogo.asp" method="post">
               <tr>
                <td width="100%" height="15" align="center" colspan="2">
                用户名:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=16 size=6 name=user title="会员请写会员编号,游客填写昵称就可以"></font> 
                        密码(游客不添):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="游客登陆无需密码"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1"></font>男 <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>女 &nbsp;验证码: <font color="#336699">
<input name="adminid" size="4" maxLength=4 style="border:1px inset; BACKGROUND-COLOR: #efefef"></font><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
                <font color="#336699">
                &nbsp;<input onclick="OnLogins();" title="登陆用户管理中心！" type="button" value="用户登陆" style=" border-bottom: #999999 1px solid ; border-right: #999999 1px solid ; border-top: #efefef 1px solid ; border-left: #FFD9EC 1px solid ; background:#eeeeee ; color: #555555 ; font-size: 12px; PADDING-RIGHT: 1px; PADDING-LEFT: 1px;PADDING-BOTTOM: 1px; PADDING-TOP: 1px; HEIGHT: 18px;" name="B1" class="put1" onClick="document.location = 'javascript:OnLogin(0);'"><input type="hidden" name="ROOMID"><input type="hidden" name="port"></font></td>
              </tr>
</form>
      <tr>
        <td width="66%" height="356" valign="top" align="center">
        <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber20" height="351">
                  <tr>
                    <td width="97%" height="22" bgcolor="#86D0FD" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-top-style: solid; border-top-width: 1" bordercolor="#86D0FD">
                    <font color="#025E95">&nbsp;<b>火爆房间排行</b> Top 32&nbsp;&nbsp;&nbsp; 
					[鼠标停放在房间名上查看信息信息]</font></td>
                    <td width="1%" height="347" rowspan="2">　</td>
                  </tr>
                  <tr>
                    <td width="97%" height="330" valign="top" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1" bordercolor="#86D0FD">                    
<div align="center">
  <center>
<table border="0" width="100%" id="table15">
<script>
	for(var i=0; i<31; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='50%' height=20>");
        document.write("<img border=0 src=../PIC/imgico/vv" + Getff(i) + ".gif> ");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>)");
		if(GetrType(i)==0)document.write("<img border=0 src=../images/eye.gif alt='视频语音聊天'>");
		if(GetrType(i)==1)document.write("<img border=0 src=../PIC/IMG/A.gif alt='语音聊天'>");
		document.writeln("</TD>");
	 	};   
	 	i++;
	 	if(i<(count)){
        document.writeln("<td width='50%' height=20>");
        document.write("<img border=0 src=../PIC/imgico/vv" + Getff(i) + ".gif> ");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>)");
		if(GetrType(i)==0)document.write("<img border=0 src=../images/eye.gif alt='视频语音聊天'>");
		if(GetrType(i)==1)document.write("<img border=0 src=../PIC/IMG/A.gif alt='语音聊天'>");
		document.writeln("</TD></TR>");
	 	};   
	 }
  </script>
  
	<tr>
		<td colspan="2"><font color="#000080"><u>下载插件</u>: </font><img border="0" src="../PIC/imgico/vv0.gif" width="14" height="13"><a target="_blank" href="http://www.bluesky.cn/download/bluesky.exe"><font color="#0000FF">BChat</font></a><font color="#008000">
		</font>
		<img border="0" src="../PIC/imgico/vv1.gif" width="14" height="13"><a target="_blank" href="http://www.vpu.cn/vp/vphelp/vpclient1.0.0.16.exe"><font color="#FF6600">VP</font></a><font color="#008000">
		</font>
		<img border="0" src="../PIC/imgico/vv2.gif" width="14" height="13"><a target="_blank" href="http://www.mechat.com/cn/download/MeChatUser.exe"><font color="#FF3083">MeChat</font></a><font color="#008000">
		</font>
		<img border="0" src="../PIC/imgico/vv3.gif" width="14" height="13"><a target="_blank" href="http://ltrj.cn/down/ltrins.exe"><font color="#008000">流之光</font></a>
		<img border="0" src="../images/eye.gif" width="19" height="11"><font color="#FF3300">视频<img border="0" src="../PIC/IMG/A.gif">语音</font></td>
	</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber23">




</table>
                      
                      
           
  </center>
</div>
                    
                    </td>
                  </tr>
                </table>

        
        </td>
        <td width="34%" height="356" valign="top" align="center" bordercolor="#800000">
		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="70">
			<tr>
				<td height="22" bgcolor="#CC0000" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#CC0000">
				&nbsp;<b><font color="#FFFFFF">输入ID直接进入 - GO</font></b></td>
			</tr>
	
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#CC0000">
					<table border="0" cellspacing="0" width="100%" id="AutoNumber27" height="46" cellpadding="0">
<form name="ss" onsubmit="return false;" action="/ss.asp" method="post">
                              <tr>
                                <td width="100%" height="23">
                               <font color="#336699">&nbsp;</font>搜索<font color="#336699"><input name="ports0" size="6" maxLength=6 style="border:1px inset; BACKGROUND-COLOR: #efefef">
                               
                               <select style="color: #006699; font-size: 9pt; font-family: 宋体,SimSun" onchange="gotolinkroom(this)" name="weblist" size="1">
								<option>全部</option>
								<option style="COLOR: #006699" selected>
								碧聊</option>
								</select><input onclick="OnLogind(ss.ports.value);" type="button" name="Submit1" value="搜索" class="input"></font></td>
                              </tr>
                              <tr>
                                <td width="100%" height="20">
							   &nbsp;填ID<font color="#336699"><input name="ports" size="6" maxLength=6 style="border:1px inset; BACKGROUND-COLOR: #efefef"> 
								<input onclick="OnLogind(ss.ports.value);" type="button" name="Submit0" value="直接进入" class="input"></font></td>
                              </tr>
                              </table>
								</td>
			</tr>
</form>
			</table>
        <br>
		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="44">
			<tr>
				<td height="19" bgcolor="#008000" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#008000">
				<font color="#006600">&nbsp;</font><font color="#FFFFFF">特约聊天室</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#008000">
					<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="20">
                              <tr>
                                <td width="100%" height="18" align="center">
                               <a href="ROOMTY.ASP?page=1">特约一</a>&nbsp;<a href="ROOMTY.ASP?page=2">特约二</a>
								<a href="ROOMTY.ASP?page=3">特约三</a>&nbsp;<a href="ROOMTY.ASP?page=4">特约四</a>
							   </td>
                              </tr>
                              </table>
								</td>
			</tr>
			</table>
			<br>
		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="221">
			<tr>
				<td height="22" bgcolor="#CCFF99" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#B7FF6F">
				<font color="#008000">&nbsp;</font><font color="#458A00"><b>Top8 </b>
				</font><font color="#008000">本月</font><a target="_blank" href="paihang.asp"><font color="#008000">人气排行榜 </font></a></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B7FF6F" align="center" valign="top">
				<table border="0" width="178" id="table3" cellpadding="2">
				<%
				'Call Openchatconn
				set rss=server.createobject("adodb.recordset")
				sql="select top 8 id,roomname,total,num,admin from [web] where roomadd=0 ORDER BY TOTAL DESC"
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>
					<tr>
						<td width="114" height="20">
						<a target="_blank" href="http://<%=rss("id")%>.liaowan.com" title="进入《<%=rss("roomname")%>》主页"><img border="0" src="../images/home.gif" width="14" height="14"></a>
						<a href="javascript:OnLogind(<%=rss("id")%>);" title="人气:<%=rss("TOTAL")%> 室主:<%=rss("admin")%>"><%=left(rss("roomname"),4)%></a>&nbsp;<font color="#FFCC00">[<b><%=rss("num")%></b>]</font></td>
						<td width="50" height="20">
						<img border="0" src="../images/male.gif" width="9" height="15"><font color="#5BB700"> <%=rss("TOTAL")%></font></td>
					</tr>
			<%
			i=i+1
    		rss.movenext
			loop
			rss.Close
    		%>
    		
					<tr>
						<td align="middle" colSpan="2"><img height="1" src="showpic/dot.gif" width="126"></td>
					</tr>
					<tr>
						<td width="164" colspan="2" align="right" height="24">
						<a target="_blank" href="paihang.asp">查看更多排行...</a></td>
					</tr>
				</table>
				</td>
			</tr>
			</table>

			
					
		</td>
      </tr>

    	</table>
      
      
    </td>
    <td width="6" valign="top" height="896" rowspan="3">　</td>
  </tr>
  <tr>
    <td width="555" valign="top" background="images/BG.gif" height="455"> 
      
      
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="table17" height="442">
		<tr>
			<td align="center" height="38">　</td>
			<td align="center" height="38" width="273">　</td>
		</tr>
		<tr>
			<td valign="top" align="center">　</td>
			<td valign="top" align="center" width="273">　</td>
		</tr>
		<tr>
			<td height="38" align="center"></td>
			<td height="38" align="center" width="273"></td>
		</tr>
		<tr>
			<td height="182" valign="top" align="center">　</td>
			<td height="182" valign="top" align="center" width="273">　</td>
		</tr>
	</table>
      
      
    </td>
    </tr>
	<tr>
    <td width="555" valign="top" background="images/BG.gif" height="10"> 
      
      
    </td>
    </tr>
  <!--
  <tr> 
    <td height="2" background="images/dotlineh.gif" colspan=5 width="778"></td>
  </tr>
  -->
</table>
  </center>
</div>



<!--聊湾主页模块2-->


<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td align="center" valign="top" width="25%" height="205">
<table border="0" width="778" id="table12" height="230" cellspacing="1">
	<tr>
			<td height="7" width="790" colspan="5"></td>
	
	</tr>
	<tr>

			<td align="center" valign="top" height="17%" width="114">

				<img border="0" src="img/tuijian.gif"><br>
				<br>
				<b><a href="javascript:OnLogind(2046);"><font color="#99CC00">〖网管值班室〗</font></a></b></td>
		<td align="center" valign="top" height="17%" width="163">
		
		      <TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_gif.jpg 
          height=25><font color="#666699"><b>舞の魅力</b></font></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=ccccc border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>
                <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
<%
Sub tuijian(ports)
		
		ports = replace(ports,"'","")		'过滤关键字
		ports = replace(ports,"[","")
		ports = trim(ports)

		portslist = split(ports,",")		'按空格分割关键字
		portslistS=UBound(portslist)
		
		
		sql="select top 10 id,roomname,total,num,admin from [web] where 1=1"
		
		if not (ports="") then
	
			sql = sql & " and ( "

				for i = 0 to portslists
	
					if i=0 then
	
					sqls =" (id like "& portslist(i) &") "
		
					else
		
					sqls = sqls&" or (id like "& portslist(i) &")"
		
					end if
	
				next

			sql = sql & sqls &" ) "

		end if
		
		sql=sql&" and liebiao=0 ORDER BY TOTAL DESC"
		
				set rss=server.createobject("adodb.recordset")
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>
					<tr>
						<td width="143">&nbsp;<a target="_blank" href="http://<%=rss("id")%>.liaowan.com" title="进入《<%=rss("roomname")%>》主页"><img border="0" src="../images/home.gif" width="14" height="14"></a>&nbsp;<a href="javascript:OnLogind(<%=rss("id")%>);" title="人气:<%=rss("TOTAL")%> 室主:<%=rss("admin")%>"><%=left(rss("roomname"),6)%></a>&nbsp;<font color="#FFCC00">[<b><%=rss("num")%></b>]</font></td>
						<td width="13">
						</td>
					</tr>
		<tr>
		<td align="middle" colSpan="2"><img height="1" src="showpic/dot.gif" width="126"></td>
	</tr>
			<%
			i=i+1
    		rss.movenext
			loop
			rss.Close
			
End Sub


set rss=server.CreateObject("adodb.recordset")
rss.open "select * from tuijian",chatconn,1,3

tj1=rss("tj1")
tj2=rss("tj2")
tj3=rss("tj3")
tj4=rss("tj4")
rss.close

Call tuijian(tj1)
%>
              
              <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
                
                
                </TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>

		<td align="center" valign="top" height="17%" width="163">
		
				      <TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_sp.jpg 
          height=25><font color="#009999"><b>旋律飑飚</b></font></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=#9DD8F4 border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>

                <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
              	<%
				Call tuijian(tj2)
    		%>
              
              <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
                

			</TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
		<td align="center" valign="top" height="17%" width="159">
		
	<TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_sps.jpg 
          height=25><font color="#CC0099"><b>友情岁月</b></font></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=#FF7DCD border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>

                <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
              	<%
Call tuijian(tj3)
    		%>
              
              <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
                

				</TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
		<td align="center" valign="top" height="17%" width="163">
		
	<TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_ser.jpg 
          height=25><font color="#CC6600"><b>聊湾新房</b></font></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=#FCCB84 border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>

                <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
<%



		
		   sql="select top 10 id,roomname,total,num,admin from [web] where liebiao=0 ORDER BY inputdate DESC"
		
				set rss=server.createobject("adodb.recordset")
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>
					<tr>
						<td width="143">&nbsp;<a target="_blank" href="http://<%=rss("id")%>.liaowan.com" title="进入《<%=rss("roomname")%>》主页"><img border="0" src="../images/home.gif" width="14" height="14"></a>&nbsp;<a href="javascript:OnLogind(<%=rss("id")%>);" title="人气:<%=rss("TOTAL")%> 室主:<%=rss("admin")%>"><%=left(rss("roomname"),6)%></a>&nbsp;<font color="#FFCC00">[<b><%=rss("num")%></b>]</font></td>
						<td width="13">
						</td>
					</tr>
		<tr>
		<td align="middle" colSpan="2"><img height="1" src="showpic/dot.gif" width="126"></td>
	</tr>
			<%
			i=i+1
    		rss.movenext
			loop
			rss.Close

%>
              <TR>
                <TD align=right width=143 height="5"></TD>
                <TD align=middle width=13 height="5"></TD></TR>
                

				</TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>

	</tr>
	<tr>
			<td height="7" width="790" colspan="5"></td>
	
	</tr>

</table>
	</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>

<!--聊湾主页模块3-->

<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="356">
  <tr> 
    <td valign="top" width="209" height="353">

<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="356">
  <tr> 
    <td valign="top" width="209" height="353"> 
    &nbsp;
   
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="58%" background="images/tablebg.gif">::<b> <font color="#FF9900">聊室动态</font> </b>:::</td>
    <td width="34%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>

    

<table width="94%" border="0" cellspacing="0" cellpadding="0" align="center">

               <TR>
                <TD height=6 colspan="2"></TD>
				</TR>
 
<%
set rsr = server.createobject("adodb.recordset")
sql="select top 10 roomid,fenlei,news_id,news_title,news_date from news where adj>0 order by news_id DESC"
rsr.open sql,chatconn,1,1 
do while not rsr.eof 
%>

              <TR>
                <TD align=center width=5 height=21>
                  　</TD>
                <TD width=189 height="21"><font color="#008AA8">[<%=newf(rsr("fenlei"))%>]</font> 
                <A target="_blank"  href="http://<%=rsr("roomid")%>.liaowan.com/c/shownews.asp?news_id=<%=rsr("news_id")%>" title="<%=rsr("news_title")%>"><%=left(rsr("news_title"),10)%><%if len(rsr("news_title"))>11 then response.write ".."%></A> </TD>
                </TR>
     <tr> <td background="images/dotlineh.gif" height="2" colspan="2"></td></tr>
<%  rsr.movenext     
	loop  
	rsr.close 
 %>
   <tr> 
    <td align="right" class="chinese" colspan="2"> <a href="news.asp"><img src="images/bottom.gif" border="0" alt="More News"></a> 
    </td>
  </tr>
               <TR>
                <TD height=6 colspan="2"></TD>
				</TR>
</table>

    
	<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="58%" background="images/tablebg.gif">::<b> <font color="#FF9900">最新动态</font> </b>:::</td>
    <td width="34%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
<%
opennews
sql="SELECT top 10 news_ahome, news_author, news_date, news_id, news_title FROM news ORDER BY news_date DESC"   
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="94%" border="0" cellspacing="0" cellpadding="0" align="center">
               <TR>
                <TD height=6></TD>
				</TR>
  <%do while not rs.eof%>
  <tr> 
    <td width="94%" height="21">&nbsp;<img border="0" src="img/dian.gif" width="11" height="7">&nbsp;<a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank" title="<%=rs("news_title")%>"><%=left(rs("news_title"),11)%><%if len(rs("news_title"))>11 then response.write ".."%></a>
    </td>
  </tr>
  <tr> 
    <td valign="top" background="images/dotlineh.gif" height="2"></td>
  </tr>
  <%rs.movenext
		loop %>
  <tr> 
    <td align="right" class="chinese"> <a href="news.asp"><img src="images/bottom.gif" border="0" alt="More News"></a> 
    </td>
  </tr>
</table>
<%
rs.close
set rs=nothing
%>
	<div align="center">
		<table border="0" width="98%" id="table18" cellpadding="2">
			<tr>
				<td height="22"><font color="#FF3300"><b>视聊</b></font><b><font color="#FF3300">平台开发单位</font></b><font color="#FF9377">[排序无意义]</font></td>
			</tr>
			<tr>
				<td height="24">
				&nbsp;<a target="_blank" href="http://www.bluesky.cn/">蓝天工作室</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a target="_blank" href="http://www.liantang.net/">北京莲塘流之光</a></td>
			</tr>
			<tr>
				<td height="21">
				&nbsp;<a target="_blank" href="http://www.vpu.cn/">西安超人VP</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a target="_blank" href="http://www.mechat.com/">广州和韵MeChat</a></td>
			</tr>
			<tr>
				<td height="21"><b><font color="#FF3300">视频联盟网站成员</font></b><font color="#FF9377">[排序无意义]</font></td>
			</tr>
			<tr>
				<td height="21" align="center">
				　</td>
			</tr>
			<tr>
				<td align="center">　</td>
			</tr>
			<tr>
				<td align="center">　</td>
			</tr>
			<tr>
				<td>　</td>
			</tr>
			<tr>
				<td>　</td>
			</tr>
		</table>
	</div>
</td>
    <td width="4" background="images/dotlinev.gif" height="353"></td>
    <td width="4" valign="top" height="353"></td>
    <td width="555" valign="top" height="353"> 
      
      
    <table border="0" cellpadding="2" cellspacing="1" width="101%" id="AutoNumber1" height="488">
            <tr>
        <td width="100%" height="8" valign="top" align="center" colspan="2">

		</td>
        </tr>
        
              <tr>
        <td width="100%" height="76" valign="top" align="center" colspan="2">
		<a title="聊湾视频社区欢迎您！" target="_blank" href="http://liaowan.com/bbs">
		<img border="0" src="images/shequ.gif" width="138" height="67"></a><img border="0" src="images/show.gif" width="138" height="67"><img border="0" src="images/wenxue.gif" width="138" height="67"><img border="0" src="images/shop.gif" width="138" height="67"></td>
        </tr> 
        
      <tr>
        <td width="100%" height="35" valign="top" align="center" colspan="2">
		<table border="0" width="100%" id="table5" cellspacing="0" height="27" background="img/chord_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="img/chord_l.jpg" width="8" height="27"></td>
				<td>&nbsp; <font color="#458A00">房间分类</font></td>
				<td width="23">　</td>
				<td align="right" width="434">
				<img border="0" src="img/chord_r.jpg" width="54" height="27"></td>
			</tr>
		</table>
		</td>
        </tr>
      <tr>
        <td width="65%" height="99" align="center" valign="top">
        	<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="92">
			<tr>
				<td height="19" bgcolor="#CCFF99" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#B4ED87">
				<font color="#458A00">&nbsp;地区分类</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B4ED87">
				<div align="center">
				<table border="0" cellspacing="1" width="92%" id="AutoNumber27" height="62">
                              <tr>
                                <td width="100%" height="60">
                               
                                <a href="Roomdy.asp?id2=1">安徽</a>&nbsp;<a href="Roomdy.asp?id2=2">北京</a>&nbsp;<a href="Roomdy.asp?id2=3">重庆</a>&nbsp;<a href="Roomdy.asp?id2=4">福建</a>&nbsp;<a href="Roomdy.asp?id2=5">甘肃</a>
								<a href="Roomdy.asp?id2=6">广东</a>&nbsp;<a href="Roomdy.asp?id2=7">广西</a>&nbsp;<a href="Roomdy.asp?id2=8">贵州</a>&nbsp;<a href="Roomdy.asp?id2=9">海南</a>
								<a href="Roomdy.asp?id2=10">河北</a>
								<a href="Roomdy.asp?id2=12">河南</a><br>
								<a href="Roomdy.asp?id2=13">湖北</a>
								<a href="Roomdy.asp?id2=14">湖南</a>&nbsp;<a href="Roomdy.asp?id2=15">江苏</a>&nbsp;<a href="Roomdy.asp?id2=16">江西</a>
								<a href="Roomdy.asp?id2=17">吉林</a>&nbsp;<a href="Roomdy.asp?id2=18">辽宁</a>&nbsp;<a href="Roomdy.asp?id2=20">宁夏</a>&nbsp;<a href="Roomdy.asp?id2=21">青海</a>&nbsp;<a href="Roomdy.asp?id2=22">山东</a>
								<a href="Roomdy.asp?id2=23">上海</a>
                                <a href="Roomdy.asp?id2=24">山西</a><br>
								<a href="Roomdy.asp?id2=25">陕西</a>&nbsp;<a href="Roomdy.asp?id2=26">四川</a>&nbsp;<a href="Roomdy.asp?id2=27">天津</a>
								<a href="Roomdy.asp?id2=28">新疆</a>&nbsp;<a href="Roomdy.asp?id2=29">西藏</a>&nbsp;
								<a href="Roomdy.asp?id2=11">黑龙江</a>
								<a href="Roomdy.asp?id2=19">内蒙古</a>
								<a href="Roomdy.asp?id2=30">云南</a>&nbsp;<a href="Roomdy.asp?id2=31">浙江</a>&nbsp;<a href="Roomdy.asp?id2=32">香港</a><br>
								<a href="Roomdy.asp?id2=33">澳门</a>&nbsp;<a href="Roomdy.asp?id2=34">台湾</a>
                               
                               
 								</td>
                              </tr>
                              </table>



				</div>



				</td>
			</tr>
			</table>
        
        </td>
        <td width="35%" height="99" align="center" valign="top">
        		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="92">
			<tr>
				<td height="19" bgcolor="#CCFF99" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#B4ED87">
				<font color="#006600">&nbsp;</font><font color="#458A00">性质分类</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#CCFF99">
				<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="60">
                              <tr>
                                <td width="100%" height="58" align="center">
                               
 <a href="Roomfl.asp?RoomType=1">情感</a>
 <a href="Roomfl.asp?RoomType=2">地域</a>&nbsp;<a href="Roomfl.asp?RoomType=3">文学</a>&nbsp;<a href="Roomfl.asp?RoomType=4">音乐</a>&nbsp;<a href="Roomfl.asp?RoomType=5">游戏</a><br>
	<a href="Roomfl.asp?RoomType=6">投资</a>&nbsp;<a href="Roomfl.asp?RoomType=7">戏剧</a>&nbsp;<a href="Roomfl.asp?RoomType=8">中年</a>&nbsp;<a href="Roomfl.asp?RoomType=9">老年</a>&nbsp;<a href="Roomfl.asp?RoomType=10">宗教</a><br>
	<a href="Roomfl.asp?RoomType=11">教育</a>&nbsp;<a href="Roomfl.asp?RoomType=12">外语</a>&nbsp;<a href="Roomfl.asp?RoomType=13">爱好</a>&nbsp;<a href="Roomfl.asp?RoomType=14">校园</a>&nbsp;<a href="Roomfl.asp?RoomType=15">企业</a><br>
	<a href="Roomfl.asp?RoomType=16">会议</a>&nbsp;<a href="Roomfl.asp?RoomType=17">战友</a>&nbsp;<a href="Roomfl.asp?RoomType=18">交友</a>&nbsp;<a href="Roomfl.asp?RoomType=19">闲谈</a>&nbsp;<a href="Roomfl.asp?RoomType=20">其他</a></td>
                              </tr>
                              </table>

				</td>
			</tr>
			</table>
        
        
        </td>
      </tr>

       




   
      <tr>
        <td width="100%" height="35" valign="top" align="center" colspan="2">
		<table border="0" width="100%" id="table5" cellspacing="0" height="27" background="showpic/b_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="showpic/b_l.jpg" width="9" height="27"></td>
				<td>&nbsp; <font color="#008AA8">相册精选</font></td>
				<td width="23">　</td>
				<td align="right" width="434">
				<a href="xiangce.asp">
				<img border="0" src="showpic/b_r.jpg" width="55" height="27"></a></td>
			</tr>
		</table>
		<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="92">

			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#66B8AB" valign="top">
				<div align="center">
				<table border="0" cellspacing="1" width="98%" id="AutoNumber27" height="289" style="border-left-width: 0px; border-top-width: 0px">
                              <tr>
                                <td width="99%" height="5" colspan="4">
                               
                                </td>
                                
                              </tr>
<%
sql = "Select top 8 * from xiangce order by adj desc,id desc "
rss.open sql,chatconn,1,1 
%>

                				<tr>
                                <td width="25%" height="136" align="center" style="border-style: none; border-width: medium">
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
							
								</td>
                                <td width="25%" height="136" align="center" style="border-left-style: none; border-left-width: medium">
                            <% rss.movenext %>  
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("username") & "#" &rss("zhiwu") ,7)%><%if len(rss("username") & "#" &rss("zhiwu"))>7 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
                               
                                </td>
                                <td width="25%" height="136" align="center">
                             <% rss.movenext %>   
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
							
                                </td>
                                <td width="25%" height="136" align="center">
                            <% rss.movenext %>    
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
                               
                                </td>
                              </tr>
                              <tr>
                                <td width="99%" height="4" colspan="4">
                               
                                	</td>
                              </tr>
                              
                              
								<tr>
                                <td width="25%" height="133" style="border-top-style: none; border-top-width: medium">
                            <% rss.movenext %>    
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
                                	</td>
                                <td width="25%" height="133">
                            <% rss.movenext %>    
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
                                	</td>
                                <td width="25%" height="133">
                            <% rss.movenext %>    
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
                                	</td>
                                <td width="25%" height="133">
                            <% rss.movenext %>    
                            <table border="0" width="130" id="table2" bgcolor="#5B736B" cellspacing="1">
                            	<tr>
									<td bgcolor="#5B736B">&nbsp;<font color="#EFEFEF"><%=left(rss("zhiwu") & ":" & rss("username"),7)%><%if len(rss("zhiwu") & ":" & rss("username"))>11 then response.write "."%></font></td>
								</tr>
								<tr>
									<td height="111" align="center" bgcolor="#B4C3BE">							
									<a href="showpic.asp?id=<%=rss("id")%>" target="_blank">
							<img border="0" src="http://liaowan.com/image/<%=rss("roomid")%>/s<%=rss("picname")%>" width="122" height="106"></a></td>
								</tr>
							</table>
                                	</td>
                              </tr>
 						<tr>
                                <td width="99%" height="5" colspan="4">
                               
                                	</td>
                              </tr>
				<% rss.close %>
                </table>
				</div>
				</td>
			</tr>
			</table>
		</td>
        </tr>
      <tr>
        <td width="100%" height="5" align="center" valign="top" colspan="2">

        
        </td>
        <tr>
        <td width="100%" height="31" valign="top" align="center" colspan="2">
		
		 <table border="0" width="100%" id="table5" cellspacing="0" height="27" background="img/sp_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="img/sp_l.jpg" width="9" height="27"></td>
				<td>&nbsp; <a target="_blank" href="/bbs">
				<font color="#CC0099">社区精选</font></a></td>
				<td width="111"><a target="_blank" href="/bbbs">*旧版论坛入口</a></td>
				<td align="right" width="79">
				<a target="_blank" href="../bbs">
				<img border="0" src="img/sp_r.jpg" width="55" height="27"></a></td>
			</tr>
		</table>
		
		</td>
        	</tr>
			<tr>
        <td width="100%" height="226" valign="top" align="center" colspan="2">
		<table cellSpacing="1" cellPadding="0" width="100%" bgColor="#ff02a2" border="0" id="table5">
			<tr>
				<td align="top">


				<table cellSpacing="0" cellPadding="0" width="100%" bgColor="#ffffff" border="0" id="table6">
					<tr>


						<td>
						<table cellSpacing="0" cellPadding="0" width=100%" id="table7">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<font color="#9966cc">[室主天空]</font></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="/bbs/ShowForum.asp?forumid=7">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
	

<%
Call Openbbsconn()

Sub Cbbs(strzifu,Fcolor)
		
		sql="select top 11 * from forum where deltopic=0 "& strzifu &" order by lasttime desc"
	
			set rss=server.createobject("adodb.recordset")
			rss.open sql,bbsconn,1,1
			do while not rss.eof	
				%>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a href=/bbs/ShowPost.asp?id=<%=rss("id")%> target=_blank title="标题:<%=rss("Topic")%>  作者:<%=rss("username")%>"><font color=<%=Fcolor%>><%=left(rss("Topic"),10)%></font></a></td>
								<td width="1" background="img/dot1.gif"></td>
							</tr>
							
			<%
    		rss.movenext
			loop
			rss.Close
			
End Sub


Call Cbbs("and (forumid=8 or forumid=29 or forumid=30)","#ff66cc")
%>
							
							
							
							
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table8">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<font color="#9966cc">[休闲时尚]</font></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a href="/bbs/ShowForum.asp?forumid=36" target="_blank">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
<% Call Cbbs("and (forumid=76 or forumid=77 or forumid=78 or forumid=75 or forumid=18 or forumid=23 or forumid=20)","#9966cc") %>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table9">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<font color="#9966cc">[情感交流]</font></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a href="/bbs/ShowForum.asp?forumid=45" target="_blank">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
<% Call Cbbs("and (forumid=79 or forumid=80 or forumid=81 or forumid=82 or forumid=22 or forumid=26 or forumid=61)","#ff66cc") %>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table10">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<font color="#9966cc">[论坛新贴]</font></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a href="/bbs" target="_blank">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
							</tr>
<% Call Cbbs("","#9966cc") %>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
        
        

		
		
		</td>
        	</tr>

 
    		<tr>
        <td width="100%" height="5" valign="top" align="center" colspan="2">
				</td>
        	</tr>

 
    	</table>
      
      
    </td>
    <td width="6" valign="top" height="353">　</td>
  </tr>
</table>
  </center>
</div>




<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td height="1" background="images/dotlineh.gif" width="778"></td>
  </tr>
</table>
<div align="center">
  <center>
<table width="778" border="0" cellpadding="0" cellspacing="0" height="48" bgcolor="#FFFFFF">
  <tr> 
    <td width="778" height="47" bgcolor="#FFFFFF" valign="top"><div align="center">
    <table border="0" width="100%" id="table13" cellpadding="2" height="47">
		<tr>
			<td>
						
<SELECT style="border:1px solid #000000; WIDTH: 88; BACKGROUND-COLOR: #F7F7F7;" onchange=javascript:window.open(this.options[this.selectedIndex].value) size=2 name=wangy>  
		
	<% 
		opensites
		rss.open "select * from friendlink where flcat_id=3 and passed=0",conn,1,1
		dim i
		i=rss.recordcount
		if rss.eof and rss.bof then
		  response.write "还没有友情连接，请添加！"
		  else
		do while not rss.eof
%>
<OPTION value=<%=rss("fl_url")%>><%=rss("fl_name")%></OPTION>
         <%rss.movenext
		  loop
		  end if
		  rss.close
		  %>
</SELECT>
<%     ii=1
		rss.open "select * from friendlink where flcat_id=2 and passed=0",conn,1,1
		i=rss.recordcount
		if rss.eof and rss.bof then
		  response.write "还没有图片友情连接，请添加！"
		  else
		do while not rss.eof
		if ii=8 then 
		response.write "<br>"
		ii=0
		end if
%>
<a title="<%=rss("fl_name")%>" target="_blank" href="<%=rss("fl_url")%>">
<img border="0" src="<%=rss("fl_logo")%>" width="88" height="31"></a><%
		  ii=ii+1
		  rss.movenext
		  loop
		  end if
		  rss.close
		  %>
			
			
			</td>
		</tr>
		</table>
	</div>
	
	</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
  </table>
  </center>
</div>
  <%
rswebcount.close
set rswebcount=nothing
%><%call endpage()
%></body></html>