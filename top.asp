<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
sysff= Clng(Request("sysff"))
ff= Clng(Request("ff"))
port= Clng(Request("id"))
id = port

if port=0 then guanbi("输入不完整！" & port)
if (InStr(USER, "*") + InStr(USER, "&") + InStr(USER, "#") + InStr(USER, "."))>0 then guanbi("用户名里面严禁含有*&#.字符！")
if port < 1000 then guanbi("聊天室不合法！")

sub guanbi(message)
Response.Write "<script>alert('" & message & "');window.close();</script>"
response.end
end sub

Call OpenChatConn()
set rs=server.createObject("adodb.recordset")

sql="select * from [web] where ID=" & port
rs.open sql,Chatconn,1,3

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then 
'guanbi("本聊天室不存在！")
roomname ="未被收录聊天室"
else

if rs("roomadd")=1 then guanbi("本聊天室已经被关闭！")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	sysff=rs("sysff")
	ff=rs("ff")
	logins = rs("logins")
	loginw = rs("loginw")
	'host = rs("host")
	'start = rs("start")
	'userroompasswd = rs("adminpasswd")
	roomname= rs("roomname")
	rs("renqi")=rs("renqi")
	rs.Update
	rs.close
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'显示网页
sql="select * from newweb where webid=" & ff & " order by webid asc"
set rsm=chatconn.execute (sql)
webname=rsm("webname")
weburl=rsm("weburl")
%> 

<LINK href="images/Style.css" rel=stylesheet>
<script language=JavaScript> 
<!-- // 广告图片动画效果
var bannerAD=new Array(); 
var bannerADlink=new Array(); 
var adNum=0; 

bannerAD[0]="logo.gif"; 
bannerADlink[0]="#"; 

bannerAD[1]="logo.jpg"; 
bannerADlink[1]="#"; 

/*/可以几张图片就写i<几，记得图片名 zp 数字 .jpg
for (i=0;i<11;i++){ 
bannerAD[i]="/ad/img/zp" + i + ".jpg";
bannerADlink[i]="#"; 
} 
*/
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
theTimer=setTimeout("nextAd()", 15000); 
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
<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<div align="center">
	<table border="0" width="100%" id="table1" cellspacing="0" height="50" background="PIC/IMG/1bg1.gif" cellpadding="0">
		<tr>
			<td height="100%">
			<table border="0" width="100%" id="table3" cellspacing="0" cellpadding="0" height="41">
				<tr>
					<td width="123" align="center">
					<a href="<%=weburl%>" target=_blank><img border="0" src="PIC/weblogo/<%=ff%>.gif"></a></td>
					<td width="5">　</td>
					<td>
      <TABLE cellSpacing=0 width=80 border=0 id="table4">
        <TBODY>
        <TR>
          <TD width=42 height=40 style="text-decoration: none; font-size: 9pt">
			<a target="_blank" title="〖<%=roomname%>〗主页 http://<%=id%>.liaowan.com" href="http://<%=id%>.liaowan.com" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2 style="text-decoration: none; font-size: 9pt">
			<IMG height=38 src="pic/toppic/b6.gif" width=2></TD>
          
          <TD style="text-decoration: none; font-size: 9pt">
			<a href="<%=rsm("regurl")%>" target="_blank" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2 style="text-decoration: none; font-size: 9pt">
			<IMG height=38 src="pic/toppic/b6.gif" width=2></TD>
          
          <TD style="text-decoration: none; font-size: 9pt">
			<a href="http://<%=id%>.liaowan.com/?index=news" target="_blank" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2 style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/b6.gif" width=2></TD>
          
          <TD style="text-decoration: none; font-size: 9pt">
			<a href="http://<%=id%>.liaowan.com/?index=xiangce" target="_blank" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/b6.gif" width=2></TD>
          
          <TD style="text-decoration: none; font-size: 9pt">
			<a title="《<%=roomname%>》社区" target="_blank" href="http://bbs.liaowan.com" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2 style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/b6.gif" width=2></TD>
          
          <TD style="text-decoration: none; font-size: 9pt">
			<a href="http://<%=id%>.liaowan.com/?index=guest/index" target="_blank" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2 style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/b6.gif" width=2></TD>
          
          <TD style="text-decoration: none; font-size: 9pt">
			<a target="_blank" href="info/shop.asp" style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/d7.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2 style="text-decoration: none; font-size: 9pt">
			<IMG height=36 src="pic/toppic/b6.gif" width=2></TD>
          </TR></TBODY></TABLE>
    				</td>
				</tr>
			</table>
			</td>
			<td width="315" valign="top">
			<div align="right">
			<table border="0" cellpadding="0" cellspacing="0" width="100" id="table2" height="43">
				<tr>
					<td>
					<a target="_blank" id="hideA" href="http://redirect.union.163.com/process_product2.jsp?ID=vcucn&NO=0&url=http://photo.163.com/">
					<img src="ad/PIC/163AD.gif" style="FILTER:revealTrans(duration=2,transition=120);" width="332" height="45" border="0" id="imgInit"></a><noa onMouseOver="displayStatusMsg();return document.returnValue" href="javascript:jump2url()"></noa>
					</td>
				</tr>
			</table>
			</div>
			</td>
		</tr>
	</table>
</div>
<script language=JavaScript>nextAd();//拥有JS对象实体之后启动图片幻灯片函数</script>
<p>
								<iframe WIDTH=468 HEIGHT=60 align=center MARGINWIDTH=0 Name=I1 MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 
SCROLLING=no src="http://news2.163.com/product/photo/tpl1.jsp?ID=vcucn&NO=0&codeDate=2005n6y18h&productid=0422"></iframe>
</p>
