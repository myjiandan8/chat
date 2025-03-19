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


ff= Clng(Request("ff"))
sql="select * from newweb where webid=" & ff & " order by webid asc"
set rsm=chatconn.execute (sql)
webname=rsm("webname")
weburl=rsm("weburl")
%> 

<SCRIPT language=javascript>
<!--
//代码开始 脚本设计：龙软科技

<%
'第几页
fenge = ""
sql="select top 32 Roomname,num,admin,host,id,RoomType,rtype,max,newtype,sysff from [web] where [liebiao]=0 and [ff]=" & ff & " order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=32)

	rooms = rooms & fenge & """" & left(rs("Roomname"),7) & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max") & "," & rs("newtype") & "," & rs("sysff")
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
<SCRIPT src="/ad/baidu.js"></SCRIPT>
<style type="text/css">
<!--
.yin1 {	FILTER: DropShadow(Color=#ffffff, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.yin2 {	BORDER-BOTTOM: #000000 1px solid; BORDER-TOP: #000000 1px solid; FILTER: DropShadow(Color=#ffffcc, OffX=1, OffY=1, Positive=1); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt; }
.yin3 {	FILTER: DropShadow(Color=#ffffFF, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 10pt}
-->
</style>
</head>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<link rel="stylesheet" href="Sams.css" type="text/css">
<!--聊湾主页模块1-->
<script language=JavaScript> 
<!-- // 广告图片动画效果
var bannerAD=new Array(); 
var bannerADlink=new Array(); 
var adNum=0; 

/*--
bannerAD[0]="/ad/img/zp1.jpg"; 
bannerADlink[0]="#"; 
--*/

//可以几张图片就写i<几，记得图片名 zp 数字 .jpg
for (i=0;i<3;i++){ 
bannerAD[i]="../ad/index_pic/" + i + ".jpg";
bannerADlink[i]="#"; 
} 

var preloadedimages=new Array(); 
for (i=1;i<bannerAD.length;i++){ 
preloadedimages[i]=new Image(); 
preloadedimages[i].src=bannerAD[i]; 
} 

function setTransition(){ 
if (document.all){ 
bannerADrotator.filters.revealTrans.Transition=Math.floor(Math.random()*23); 
bannerADrotator.filters.revealTrans.apply(); 
} 
} 

function playTransition(){ 
if (document.all) 
bannerADrotator.filters.revealTrans.play() 
} 

function nextAd(){ 
if(adNum<bannerAD.length-1)adNum++ ; 
else adNum=0; 
setTransition(); 
document.images.bannerADrotator.src=bannerAD[adNum]; 
playTransition(); 
theTimer=setTimeout("nextAd()", 4000); 
} 

function jump2url(){ 
jumpUrl=bannerADlink[adNum]; 
jumpTarget='_blank'; 
if (jumpUrl != ''){ 
if (jumpTarget != '')window.open(jumpUrl,jumpTarget); 
else location.href=jumpUrl; 
} 
} 
function displayStatusMsg() { 
status=bannerADlink[adNum]; 
document.returnValue = true; 
} 

//--> 
</script>


<div align="center">
	<table border="0" width="778" id="table221" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="75">
		<tr>
			<td height="5"></td>
		</tr>
		<tr>
			<td height="70" valign="top">
			<table border="0" width="100%" id="table228" cellspacing="0" cellpadding="0" height="63">
				<tr>
					<td width="185" align="center">
					<table border="0" width="100%" id="table321" cellpadding="2">
						<tr>
							<td align="center" width="113" rowspan="3">
					<a href="<%=weburl%>" target=_blank><img border="0" src="/PIC/weblogo/<%=ff%>.gif"></a></td>
							<td><a href="<%=weburl%>" target=_blank>网站主页</a></td>
						</tr>
						<tr>
							<td><a href="<%=regurl%>" target=_blank>用户注册</a></td>
						</tr>
						<tr>
							<td><a href="<%=passurl%>" target=_blank>密码找回</a></td>
						</tr>
					</table>
					</td>
					<td valign="top">
					<table border="0" width="100%" id="table231" height="70" cellspacing="0" cellpadding="0">
						<tr>
							<td height="70" valign="top">
							<table border="0" width="100%" id="table276" height="50">
								<tr>
									<td align="center">
									<a target="_blank" href="z-music.asp">
									<img border="0" src="pic/t1.gif" width="60" height="60"></a></td>
									<td align="center">
									<a href="z-wd.asp">
									<img border="0" src="pic/t2.gif" width="60" height="60"></a></td>
									<td align="center">
									<a href="z-huati.asp">
									<img border="0" src="pic/t3.gif" width="60" height="60"></a></td>
									<td align="center">
									<a href="z-qinggan.asp">
									<img border="0" src="pic/t4.gif" width="60" height="60"></a></td>
									<td align="center">
									<a target="_blank" href="http://news.liaowan.com">
									<img border="0" src="pic/t5.gif" width="60" height="60"></a></td>
									<td align="center">
									<a target="_blank" href="http://radio.liaowan.com">
									<img border="0" src="pic/t6.gif" width="60" height="60"></a></td>
									<td align="center">
									<a target="_blank" href="http://bbs.liaowan.com">
									<img border="0" src="pic/t7.gif" width="60" height="60"></a></td>
									<td align="center">
									<a href="http://shop.liaowan.com">
									<img border="0" src="pic/t8.gif" width="60" height="60"></a></td>
								</tr>
							</table>
							</td>
						</tr>
						</table>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		</table>
</div>
<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="410">
  <tr> 
    <td valign="top" width="209" height="410" rowspan="3"> 

	  <table border="0" width="100%" id="table14" height="304">
		<tr>
			<td height="5">
			
			</td>
		</tr>
		<tr>
			<td align="center" valign="top" height="139">
			<table border="1" width="100%" id="table223" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#0099FF" height="143" bgcolor="#D9F0FF">
				<tr>
					<td valign="top">
			<table border="0" width="100%" id="table224" cellspacing="0" cellpadding="0" height="140">
				<tr>
					<td bgcolor="#0099CC" height="5"></td>
				</tr>
				<tr>
					<td height="38" bgcolor="#FFFFFF">&nbsp;<img border="0" src="images/f-vcu.gif" width="134" height="27">
					<font color="#FF9900">[vcu.cn]</font></td>
				</tr>
				<tr>
					<td bgcolor="#66CCFF" height="1"></td>
				</tr>
				<tr>
					<td height="106" valign="top">
					<table border="0" width="100%" id="table230" cellpadding="2" height="104">
						<tr>
							<td style="FILTER: dropshadow(color=#ffffff,offx=1,offy=1);color:#4b4b4b">
					<font color="#005B99">&nbsp;&nbsp;&nbsp; 
					亲爱的聊湾忠实聊友们，聊湾新开通后，立志成为创立中国视频聊天第一门户，为聊友提供便捷和最完善视频聊天系统，为同盟网站提供展示本站风采的平台。聊湾以龙软强大的技术支持为基础，为同盟网站提供最专业的技术支持。</font></td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>&nbsp;<font color="#008000">当前运行房间</font><font color="#FF0000"><b><%=maxroom%></b></font><font color="#008000">间&nbsp;在线</font><b><font color="#FF0000"><%=maxnum%></font></b><font color="#008000">人</font></td>
				</tr>
				</table>
			
					</td>
				</tr>
			</table>
			
			</td>
		</tr>
		<tr>
			<td align="center" valign="top" height="125">

			<table border="1" cellspacing="1" width="206" id="table222" style="border-collapse: collapse" bordercolor="#FFCCFF">
				<tr>
					<td bgcolor="#800080" height="23" width="200" colspan="4">
					<font color="#FFFFFF">&nbsp;[VCU]视盟成员实时表 [点击]</font></td>
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
sql="select * from newweb where webid>2 order by webid asc"
set rsm=chatconn.execute (sql)
do while not (rsm.eof or err)
%> 
				<tr>
					<td width="57" align="center"><a target="_blank" href="<%=rsm("weburl")%>"><%=rsm("webname")%></a></td>
					<td width="37" align="center"><%=rsm("maxroom")%></td>
					<td width="46" align="center"><%=rsm("maxnum")%></td>
					<td width="46" align="center"><font color="#C0C0C0"><%=rsm("Tnum")%></font></td>
				</tr>
<%
  rsm.moveNext
  loop
  rsm.close
%>
				<tr>
					<td width="186" colspan="4"><font color="#93DA14">&nbsp;注 
					此数据与实际有偏差仅供参考</font></td>
				</tr>
			</table>
			
			</td>
		</tr>
		<tr>
			<td align="center" valign="top" height="5"></td>
		</tr>
		
		</table>

</td>
    <td width="4" height="410" rowspan="3"></td>
    <td width="4" valign="top" height="410" rowspan="3"></td>
    <td width="555" valign="top" height="409"> 
      
      
    <table border="0" cellpadding="2" cellspacing="1" width="100%" id="AutoNumber1" height="409">
      	<tr>
        <td width="100%" height="5" align="center" colspan="2"></td>
      </tr>
      

               <tr>
                <td width="100%" height="15" align="center" colspan="2">
        
											<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table173">
												<tr>
													<td width="4">
													<img height="26" src="images/subnav_head2.gif" width="4"></td>
													<td align="middle" background="images/subnav_bg2.gif">
													<div align="center">
													<table cellSpacing="1" cellPadding="0" width="100%" border="0" id="table174" height="22">
														<tr>
															<td height="22">
															<div align="center" width:100%;>
                    <div align="center">
<TABLE height=25 cellSpacing=0 cellPadding=0 width="99%" border=0 style="font-size: 12px; line-height: 150%" id="table175">
<form name="login" onsubmit="return false;" action="/userlogo.asp" method="post">
  <input type="hidden" name="ROOMID" value=0><input type="hidden" name="port" value=0>
  <TBODY>
  <TR align=middle>
    <TD width="8%" valign="bottom">用户名:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=16 size=6 name=user title="会员请写会员编号,游客填写昵称就可以"></font> 
                        密码(可不添):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="游客登陆无需密码"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1" checked></font>男 <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>女 
	&nbsp;<font color="#336699"><a href="../vip/regadd.asp">用户注册</a>
	<a href="../vip/usermima.asp">密码找回</a>
                &nbsp;<input onclick="OnLogins();" title="登陆用户管理中心！" type="button" value="会员登陆" style=" border-bottom: #999999 1px solid ; border-right: #999999 1px solid ; border-top: #efefef 1px solid ; border-left: #FFD9EC 1px solid ; background:#eeeeee ; color: #555555 ; font-size: 12px; PADDING-RIGHT: 1px; PADDING-LEFT: 1px;PADDING-BOTTOM: 1px; PADDING-TOP: 1px; HEIGHT: 18px;" name="B1" class="put1"></font></TD>
    </TR></FORM></TBODY></TABLE>
					</div>
                    										</div>

															</td>
														</tr>
													</table>
													</div>
													</td>
													<td width="4">
													<img height="26" src="images/subnav_tail2.gif" width="4"></td>
												</tr>
											</table>
											</td>
              </tr>

      <tr>
        <td width="66%" height="369" valign="top" align="center">
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
        <td width="34%" height="369" valign="top" align="center" bordercolor="#800000">
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
                                <td width="100%" height="20">
							   &nbsp;ID<font color="#336699"><input name="ports" size="6" maxLength=6 class=input > 
								<input onclick="OnLogind(ss.ports.value);" type="button" name="Submit0" value="直接进入" class="input"></font></td>
                              </tr>
                              <tr>
                                <td width="100%" height="23">
                               &nbsp;搜<font color="#336699"><input name="ports0" size="6" maxLength=6 class=input >
                               
                               <select style="color: #006699; font-size: 9pt; font-family: 宋体,SimSun" onchange="gotolinkroom(this)" name="weblist" size="1">
<option value="0">全部</option>
<%
sql="select * from newweb order by webid asc"
set rsm=chatconn.execute (sql)
%>

&nbsp;<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("webid")%>" <%if rsm("webid")=ff then response.write "selected"%>><%=rsm("webname")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
								</select><input onclick="OnLogind(ss.ports.value);" type="button" name="Submit1" value="搜" class="input"></font></td>
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
				<font color="#006600">&nbsp;</font><font color="#FFFFFF">分类专栏</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#008000">
					<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="20">
                              <tr>
                                <td width="100%" height="18" align="center">
                               <a href="ROOMTY.ASP?page=1">音乐</a>&nbsp;
								<a href="ROOMTY.ASP?page=2">秀舞</a>&nbsp;
								<a href="ROOMTY.ASP?page=3">话题</a>&nbsp;&nbsp;情感&nbsp;
								<a href="ROOMTY.ASP?page=4">其他</a>
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
				</font>
				<a target="_blank" href="paihang.asp"><font color="#008000">本日人气排行榜 </font></a></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B7FF6F" align="center" valign="top">
				<table border="0" width="178" id="table3" cellpadding="2">
				<%
				'Call Openchatconn
				set rss=server.createobject("adodb.recordset")
				sql="select top 8 id,roomname,total,num,admin from [web] where roomadd=0 and [ff]=" & ff & " ORDER BY TODAY DESC"
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
    <td width="6" valign="top" height="410" rowspan="3">　</td>
  </tr>
  <tr>
    <td width="555" valign="top" background="images/BG.gif" height="1"> 
      
      
    </td>
    </tr>
	<tr>
    <td width="555" valign="top" background="images/BG.gif" height="1"> 
      
      
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
    <td valign="top" width="193" height="353"> 
    &nbsp;
   


    
	<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="64%" background="images/tablebg.gif">::<b> <font color="#FF9900">最新动态</font> </b>:::</td>
    <td width="17%" align="right" background="images/tablebg.gif">&nbsp; </td>
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


<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="65%" background="images/tablebg.gif">::<b> <font color="#FF9900">聊室动态</font> </b>:::</td>
    <td width="15%" align="right" background="images/tablebg.gif">&nbsp; </td>
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
                <A target="_blank"  href="http://<%=rsr("roomid")%>.vcucn.com/c/shownews.asp?news_id=<%=rsr("news_id")%>" title="<%=rsr("news_title")%>"><%=left(rsr("news_title"),10)%><%if len(rsr("news_title"))>11 then response.write ".."%></A> </TD>
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



	<div align="center">
		<table border="0" width="98%" id="table18" cellpadding="2">
			<tr>
				<td height="22"><b><font color="#FF3300">VCU视盟平台开发单位</font></b></td>
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
				<td height="21">
				&nbsp;<a target="_blank" href="http://eliao.net">E聊</a>
				<a target="_blank" href="http://aliao.net">情聊</a>
				<a target="_blank" href="http://haoliao.net">好聊</a>
				<a target="_blank" href="http://www.yeliao.cn">夜聊</a>
				<a target="_blank" href="http://www.ccliao.com">西西聊</a> </td>
			</tr>
			<tr>
				<td height="21">&nbsp;潇洒聊 520聊 QQ聊 华聊 TV聊</td>
			</tr>
			<tr>
				<td height="21">&nbsp;163聊 6SEE聊 网站加盟QQ779811</td>
			</tr>
			<tr>
				<td align="left" height="21"><font color="#FF3300"><b>
				VCU合作与鸣谢视频站点</b></font></td>
			</tr>
			<tr>
				<td height="21">&nbsp;碧聊 聊聊 银沙伊吾 </td>
			</tr>
			<tr>
				<td height="21"><font color="#FF3300"><b>VCU鸣谢为视频事业付出个人</b></font></td>
			</tr>
			<tr>
				<td height="21">&nbsp;<a target="_blank" href="http://www.liantang.net/">小林</a>
				<a target="_blank" href="http://www.liaoliao.com">包子</a>
				<a target="_blank" href="http://www.bluesky.cn/">蓝天</a>
				<a target="_blank" href="http://www.mechat.com">小尤</a>
				<a target="_blank" href="http://www.vpu.cn/">猪头</a> 寒江</td>
			</tr>
			<tr>
				<td height="21">&nbsp;淡淡 老狼 老牛 需感谢的人很多</td>
			</tr>
			<tr>
				<td height="21">　</td>
			</tr>
		</table>
	</div>
</td>
    <td width="4" background="images/dotlinev.gif" height="353"></td>
    <td width="4" valign="top" height="353"></td>
    <td width="575" valign="top" height="353"> 
      
      
    <table border="0" width="100%" id="table181" cellspacing="0" cellpadding="0">
		<tr>
			<td height="12"></td>
		</tr>
		<tr>
			<td height="108" valign="top">
									<table cellSpacing="4" cellPadding="0" width="100%" border="0" id="table186">
										<tr align="middle">
											<td>
											<table cellSpacing="0" cellPadding="0" border="0" id="table187">
												<tr>
													<td>
													<table cellSpacing="0" cellPadding="0" border="0" id="table188">
														<tr>
															<td>
															<table cellSpacing="1" cellPadding="0" bgColor="#b0b0ae" border="0" id="table189">
																<tr>
																	<td bgColor="#ffffff">
																	<table cellSpacing="0" cellPadding="0" border="0" id="table190">
																		<tr>
																			<td>
																			<img height="23" src="images/z-qg.gif" width="175" border="0"></td>
																		</tr>
																		<tr>
																			<td align="middle" height="200">
																			<table height="200" cellSpacing="3" cellPadding="0" width="100%" border="0" id="table191">
																				<tr>
																					<td height="74">
																					<table cellSpacing="0" cellPadding="4" width="100%" border="0" id="table192">
																						<tr>
																							<td width="10">
																							<table cellSpacing="0" cellPadding="0" border="0" id="table193">
																								<tr>
																									<td>
																									<table cellSpacing="1" cellPadding="0" bgColor="#000000" border="0" id="table194">
																										<tr>
																											<td bgColor="#ffffff"><img height="52" src="images/20041228down_index_07.jpg" width="74" border="0"></td>
																										</tr>
																									</table>
																									</td>
																									<td vAlign="top" width="6" bgColor="#d1d1d1">
																									<table height="6" cellSpacing="0" cellPadding="0" width="6" bgColor="#ffffff" border="0" id="table195">
																										<tr>
																											<td bgColor="#ffffff"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																								</tr>
																								<tr>
																									<td height="6">
																									<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table196">
																										<tr>
																											<td width="6" height="6"></td>
																											<td bgColor="#d1d1d1"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																									<td bgColor="#d1d1d1"></td>
																								</tr>
																							</table>
																							</td>
																							<td><font color="#21ADEC">申请情感话<br>
																							题聊天室</font></td>
																						</tr>
																					</table>
																					</td>
																				</tr>
																				<tr>
																					<td background="images/dotline.gif" height="1"></td>
																				</tr>
																				<tr>
																					<td valign="top" height="150">
																					<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table286">


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
							<td>
							<INPUT name=r2 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></font></SPAN> <IMG 
                                src="images/s.gif"><IMG height=13 alt="" hspace=0 src="images/v.gif" width=11 border=0><font color="#FF0000">(<%=rss("num")%>)</font>
							</td>
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


																						<tr>
																							<td align="right">&gt;&gt;更多</td>
																						</tr>
																					</table>
																					</td>
																				</tr>
																			</table>
																			</td>
																		</tr>
																		<tr>
																			<td>
																			<img height="15" src="images/tab15_dow01.jpg" width="175"></td>
																		</tr>
																	</table>
																	</td>
																</tr>
															</table>
															</td>
														</tr>
														<tr>
															<td>
															<img height="7" src="images/tab15_left.gif" width="113"></td>
														</tr>
													</table>
													</td>
													<td vAlign="top">
													<img height="205" src="images/tab15_right.gif" width="8"></td>
												</tr>
											</table>
											</td>
											<td>
											<table cellSpacing="0" cellPadding="0" border="0" id="table198">
												<tr>
													<td>
													<table cellSpacing="0" cellPadding="0" border="0" id="table199">
														<tr>
															<td>
															<table cellSpacing="1" cellPadding="0" bgColor="#b0b0ae" border="0" id="table200">
																<tr>
																	<td bgColor="#ffffff">
																	<table cellSpacing="0" cellPadding="0" border="0" id="table201">
																		<tr>
																			<td>
																			<img height="23" src="images/z-wb.gif" width="175" border="0"></td>
																		</tr>
																		<tr>
																			<td align="middle" height="200">
																			<table height="200" cellSpacing="3" cellPadding="0" width="100%" border="0" id="table202">
																				<tr>
																					<td height="74">
																					<table cellSpacing="0" cellPadding="4" width="100%" border="0" id="table203">
																						<tr>
																							<td width="10">
																							<table cellSpacing="0" cellPadding="0" border="0" id="table204">
																								<tr>
																									<td>
																									<table cellSpacing="1" cellPadding="0" bgColor="#000000" border="0" id="table205">
																										<tr>
																											<td bgColor="#ffffff"><img height="52" src="images/20041228down_index_06.gif" width="74" border="0"></td>
																										</tr>
																									</table>
																									</td>
																									<td vAlign="top" width="6" bgColor="#d1d1d1">
																									<table height="6" cellSpacing="0" cellPadding="0" width="6" bgColor="#ffffff" border="0" id="table206">
																										<tr>
																											<td bgColor="#ffffff"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																								</tr>
																								<tr>
																									<td height="6">
																									<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table207">
																										<tr>
																											<td width="6" height="6"></td>
																											<td bgColor="#d1d1d1"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																									<td bgColor="#d1d1d1"></td>
																								</tr>
																							</table>
																							</td>
																							<td><font color="#7EDB02">比舞竞技<br>
																							乐在参与<br>
																							点击申请</font></td>
																						</tr>
																					</table>
																					</td>
																				</tr>
																				<tr>
																					<td background="images/dotline.gif" height="1"></td>
																				</tr>
																				<tr>
																					<td valign="top" height="150">
																					<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table287">


<%
Call tuijian(tj2)
%>


																						<tr>
																							<td align="right">&gt;&gt;更多</td>
																						</tr>
																					</table>
																					</td>
																				</tr>
																			</table>
																			</td>
																		</tr>
																		<tr>
																			<td>
																			<img height="15" src="images/tab15_dow02.jpg" width="175"></td>
																		</tr>
																	</table>
																	</td>
																</tr>
															</table>
															</td>
														</tr>
														<tr>
															<td>
															<img height="7" src="images/tab15_left.gif" width="113"></td>
														</tr>
													</table>
													</td>
													<td vAlign="top">
													<img height="205" src="images/tab15_right.gif" width="8"></td>
												</tr>
											</table>
											</td>
											<td>
											<table cellSpacing="0" cellPadding="0" border="0" id="table209">
												<tr>
													<td>
													<table cellSpacing="0" cellPadding="0" border="0" id="table210">
														<tr>
															<td>
															<table cellSpacing="1" cellPadding="0" bgColor="#b0b0ae" border="0" id="table211">
																<tr>
																	<td bgColor="#ffffff">
																	<table cellSpacing="0" cellPadding="0" border="0" id="table212">
																		<tr>
																			<td>
																			<img height="23" src="images/z-KTV.gif" width="175" border="0"></td>
																		</tr>
																		<tr>
																			<td align="middle" height="200">
																			<table height="200" cellSpacing="3" cellPadding="0" width="100%" border="0" id="table213">
																				<tr>
																					<td height="74">
																					<table cellSpacing="0" cellPadding="4" width="100%" border="0" id="table214">
																						<tr>
																							<td width="10">
																							<table cellSpacing="0" cellPadding="0" border="0" id="table215">
																								<tr>
																									<td>
																									<table cellSpacing="1" cellPadding="0" bgColor="#000000" border="0" id="table216">
																										<tr>
																											<td bgColor="#ffffff"><img height="52" src="images/t-ktv.jpg" width="74" border="0"></td>
																										</tr>
																									</table>
																									</td>
																									<td vAlign="top" width="6" bgColor="#d1d1d1">
																									<table height="6" cellSpacing="0" cellPadding="0" width="6" bgColor="#ffffff" border="0" id="table217">
																										<tr>
																											<td bgColor="#ffffff"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																								</tr>
																								<tr>
																									<td height="6">
																									<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table218">
																										<tr>
																											<td width="6" height="6"></td>
																											<td bgColor="#d1d1d1"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																									<td bgColor="#d1d1d1"></td>
																								</tr>
																							</table>
																							</td>
																							<td><font color="#CC3300">网络唱K<br>
																							其乐无穷<br>
																							点击申请</font></td>
																						</tr>
																					</table>
																					</td>
																				</tr>
																				<tr>
																					<td background="images/dotline.gif" height="1"></td>
																				</tr>
																				<tr>
																					<td valign="top" height="150">
																					<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table288">


<%
Call tuijian(tj3)
%>


																						<tr>
																							<td align="right">&gt;&gt;更多</td>
																						</tr>
																					</table>
																					</td>
																				</tr>
																			</table>
																			</td>
																		</tr>
																		<tr>
																			<td>
																			<img height="15" src="images/tab15_dow03.jpg" width="175"></td>
																		</tr>
																	</table>
																	</td>
																</tr>
															</table>
															</td>
														</tr>
														<tr>
															<td>
															<img height="7" src="images/tab15_left.gif" width="113"></td>
														</tr>
													</table>
													</td>
													<td vAlign="top">
													<img height="205" src="images/tab15_right.gif" width="8"></td>
												</tr>
											</table>
											</td>
										</tr>
									</table>
									</td>
		</tr>
		<tr>
			<td height="12">　</td>
		</tr>
		<tr>
			<td valign="top">
			<table border="0" width="100%" id="table252" cellpadding="0" style="border-collapse: collapse">
				<tr>
        <td width="100%" height="27" valign="top" align="center" style="border-bottom-style: none; border-bottom-width: medium">
		<table border="0" width="575" id="table253" cellspacing="0" height="27" background="img/chord_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="img/chord_l.jpg" width="8" height="27"></td>
				<td width="90">&nbsp;<b> <font color="#008000">秀舞聊天室</font></b></td>
				<td width="126">　<font color="#33CC33">[月排行榜TOP15]&nbsp; </font></td>
				<td width="43">　</td>
				<td align="right" width="305">
				<img border="0" src="img/chord_r.jpg" width="54" height="27"></td>
			</tr>
		</table>
		</td>
        		</tr>
				<tr>
        <td width="100%" height="101" valign="top" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#86C43D">
        	<table border="0" width="100%" id="table274" height="94" cellspacing="0" cellpadding="0">
				<tr>
					<td width="102" align="center">
																							<table cellSpacing="0" cellPadding="0" border="0" id="table317">
																								<tr>
																									<td>
																									<table cellSpacing="0" cellPadding="0" bgColor="#000000" border="0" id="table318">
																										<tr>
																											<td bgColor="#ffffff"><img border="0" src="images/sbanr-1.gif" width="85" height="85"></td>
																										</tr>
																									</table>
																									</td>
																									<td vAlign="top" width="6" bgColor="#d1d1d1">
																									<table height="6" cellSpacing="0" cellPadding="0" width="6" bgColor="#ffffff" border="0" id="table319">
																										<tr>
																											<td bgColor="#ffffff"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																								</tr>
																								<tr>
																									<td height="6">
																									<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table320">
																										<tr>
																											<td width="6" height="6"></td>
																											<td bgColor="#d1d1d1"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																									<td bgColor="#d1d1d1"></td>
																								</tr>
																							</table>
																							</td>
					<td valign="top">
					<table border="0" width="100%" id="table275" cellspacing="1">
					
				<%
				'Call Openchatconn
				On Error Resume Next
				set rss=server.createobject("adodb.recordset")
				sql="select top 15 id,roomname,total,num,admin from [web] where roomadd=0 and ufid=2  and [ff]=" & ff & "  ORDER BY MONTH DESC"
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>

						<tr>
							<td height="19" width="141">
							<INPUT name=r3 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>
							</td>
							
							<td height="19">
								<% rss.movenext %>
								<%   id=0
									 id=rss("id")
									 if id>0 then %><INPUT name=r12 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>&nbsp;<% end if %>
							</td>
							<td height="19">
								<% rss.movenext %>
								<%   id=0
									 id=rss("id")
									 if id>0 then %><INPUT name=r12 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>&nbsp;<% end if %>
							</td>
						</tr>
			<%
			i=i+1
    		rss.movenext
			loop
			rss.Close
    		%>
					
					

						</table>
					</td>
				</tr>
			</table>
		</td>
        		</tr>
				<tr>
        <td width="100%" height="5" style="border-top-style: solid; border-top-width: 1px"></td>
        		</tr>
				<tr>
        <td width="100%" height="35" valign="top" align="center">
		<table border="0" width="575" id="table261" cellspacing="0" height="27" background="showpic/b_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="showpic/b_l.jpg" width="9" height="27"></td>
				<td width="90">&nbsp; <b><font color="#008AA8">音乐聊天室</font></b></td>
				<td width="127">　<font color="#21ADEC">[月排行榜TOP15] </font></td>
				<td width="41">　</td>
				<td align="right" width="306">
				<img border="0" src="showpic/b_r.jpg" width="55" height="27"></td>
			</tr>
		</table>
		<table border="0" width="100%" id="table262" cellspacing="0" cellpadding="0" height="92">

			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#66B8AB" valign="top">
        	<table border="0" width="100%" id="table295" height="94" cellspacing="0" cellpadding="0">
				<tr>
					<td width="102" align="center">
																							<table cellSpacing="0" cellPadding="0" border="0" id="table296">
																								<tr>
																									<td>
																									<table cellSpacing="0" cellPadding="0" bgColor="#000000" border="0" id="table297">
																										<tr>
																											<td bgColor="#ffffff"><img border="0" src="images/sbanr-2.gif" width="85" height="85"></td>
																										</tr>
																									</table>
																									</td>
																									<td vAlign="top" width="6" bgColor="#d1d1d1">
																									<table height="6" cellSpacing="0" cellPadding="0" width="6" bgColor="#ffffff" border="0" id="table298">
																										<tr>
																											<td bgColor="#ffffff"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																								</tr>
																								<tr>
																									<td height="6">
																									<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table299">
																										<tr>
																											<td width="6" height="6"></td>
																											<td bgColor="#d1d1d1"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																									<td bgColor="#d1d1d1"></td>
																								</tr>
																							</table>
																							</td>
					<td valign="top">
					<table border="0" width="100%" id="table300" cellspacing="1">
					
				<%
				'Call Openchatconn
				set rss=server.createobject("adodb.recordset")
				sql="select top 15 id,roomname,total,num,admin from [web] where roomadd=0 and ufid=1 and [ff]=" & ff & " ORDER BY MONTH DESC"
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>

						<tr>
							<td height="19" width="141">
							<INPUT name=r6 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></font></SPAN><font color="#008AA8">(<%=rss("num")%>)</font>
							</td>
							
							<td height="19">
								<% rss.movenext %>
								<%   id=0
									 id=rss("id")
									 if id>0 then %><INPUT name=r12 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>&nbsp;<% end if %>
							</td>
							<td height="19">
								<% rss.movenext %>
								<%   id=0
									 id=rss("id")
									 if id>0 then %><INPUT name=r12 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>&nbsp;<% end if %>
							</td>
						</tr>
			<%
			i=i+1
    		rss.movenext
			loop
			rss.Close
    		%>
					
					

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
        <td width="100%" height="5" align="center" valign="top">

        
        </td>
        		</tr>
				<tr>
        <td width="100%" height="27" valign="top" align="center">
		
		 <table border="0" width="100%" id="table272" cellspacing="0" height="27" background="img/sp_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="img/sp_l.jpg" width="9" height="27"></td>
				<td>&nbsp;<font color="#FF02A2"><b>话题聊天室</b></font></td>
				<td width="165">　<font color="#FF02A2">[月排行榜TOP15] </font></td>
				<td align="right" width="309">
				<a target="_blank">
				<img border="0" src="img/sp_r.jpg" width="55" height="27"></a></td>
			</tr>
		</table>
		
		</td>
        		</tr>
				<tr>
        <td width="100%" height="97" valign="top" align="center">
		<table cellPadding="0" width="100%" border="0" id="table273" height="97" style="border-collapse: collapse" bordercolor="#FF02A2">
			<tr>
				<td align="top" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1px" valign="top">


        	<table border="0" width="100%" id="table307" height="94" cellspacing="0" cellpadding="0">
				<tr>
					<td width="102" align="center">
																							<table cellSpacing="0" cellPadding="0" border="0" id="table308">
																								<tr>
																									<td>
																									<table cellSpacing="0" cellPadding="0" bgColor="#000000" border="0" id="table309">
																										<tr>
																											<td bgColor="#ffffff"><img border="0" src="images/sbanr-3.gif" width="85" height="85"></td>
																										</tr>
																									</table>
																									</td>
																									<td vAlign="top" width="6" bgColor="#d1d1d1">
																									<table height="6" cellSpacing="0" cellPadding="0" width="6" bgColor="#ffffff" border="0" id="table310">
																										<tr>
																											<td bgColor="#ffffff"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																								</tr>
																								<tr>
																									<td height="6">
																									<table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table311">
																										<tr>
																											<td width="6" height="6"></td>
																											<td bgColor="#d1d1d1"><img height="1" src="images/spacer.gif" width="1"></td>
																										</tr>
																									</table>
																									</td>
																									<td bgColor="#d1d1d1"></td>
																								</tr>
																							</table>
																							</td>
					<td valign="top">
					<table border="0" width="100%" id="table312" cellspacing="1">
					
				<%
				'Call Openchatconn
				set rss=server.createobject("adodb.recordset")
				sql="select top 15 id,roomname,total,num,admin from [web] where roomadd=0 and ufid=3 and [ff]=" & ff & " ORDER BY MONTH DESC"
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>

						<tr>
							<td height="19" width="141">
							<INPUT name=r9 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></font></SPAN><font color="#FF0000">(<%=rss("num")%>)</font>
							</td>
							
							<td height="19">
								<% rss.movenext %>
								<%   id=0
									 id=rss("id")
									 if id>0 then %><INPUT name=r12 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>&nbsp;<% end if %>
							</td>
							<td height="19">
								<% rss.movenext %>
								<%   id=0
									 id=rss("id")
									 if id>0 then %><INPUT name=r12 onclick="OnLogind(<%=rss("id")%>);" type=radio value="V1"><a href="javascript:OnLogind(<%=rss("id")%>);" title="点击进入"><%=rss("roomname")%></a></SPAN></font><font color="#008000">(<%=rss("num")%>)</font>&nbsp;<% end if %>
							</td>
						</tr>
			<%
			i=i+1
    		rss.movenext
			loop
			rss.Close
    		%>
					
					

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
					<td>　</td>
				</tr>
			</table>
			</td>
		</tr>
		</table>
	</td>
    <td width="2" valign="top" height="353">　</td>
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
    <td width="778" height="47" bgcolor="#FFFFFF" valign="top">

<div align="center">
	<table border="0" width="100%" id="table176" bgcolor="#FFFFFF">
		<tr>
			<td>
			<table border="0" width="100%" id="table177" cellpadding="4" bgcolor="#C0C0C0" cellspacing="4">
				<tr>
					<td bgcolor="#FFFFFF">
					<table border="0" width="756" id="table178" cellspacing="1">
						<tr>
							<td width="752">
					<IMG height=10 
                  src="images/25.gif" width=10><strong style="FONT-SIZE: 14px" >
					</strong><b>友情联接</b><font color="#C0C0C0">[<a target="_blank" href="http://vcu.cn/">VCU</a>]</font></td>
						</tr>
						<tr>
							<td width="749">
							<SELECT style="border:1px solid #000000; WIDTH: 88; BACKGROUND-COLOR: #F7F7F7;" onchange=javascript:window.open(this.options[this.selectedIndex].value) size=2 name=wangy0>  
		
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
					</td>
				</tr>
			</table>
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
<iframe id="baiduframe" border="0" vspace="0" hspace="0" marginwidth="0" marginheight="0"
  framespacing="0" frameborder="0" scrolling="no" width="0" height="0"
  src="http://unstat.baidu.com/bdun.bsc?tn=vcucn&csid=102&rkcs=0&bgcr=FFFFFF&ftcr=000000&rk=0&bd=0&bdas=0">
</iframe>
<iframe id="baiduframe" scrolling="no" width="0" height="0"
  src="/ad/51vip.htm">
</iframe>
<%
rswebcount.close
set rswebcount=nothing
%><%call endpage()%></body></html>