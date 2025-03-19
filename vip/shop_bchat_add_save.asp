<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<!--模板生成#include file="../INC/sysChat.asp" -->
<!--模板生成#include file="../INC/sysBChat.asp" -->
<%
if InStr(Request.ServerVariables("HTTP_REFERER"), ".com/vip/shop_bchat_add.asp")=0 then Call errstr("请从正确的网址进入注册！\n"&Request.ServerVariables("HTTP_REFERER"))
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
end if

renshu=request("renshu")
shipin=request("shipin")
liti=request("liti")

    'port=HTMLEncode(Request("port"))
	roomname = HTMLEncode(Request("roomname"))
	maxnum = HTMLEncode(Request("maxnum"))
	userpasswd = HTMLEncode(Request("userpasswd"))
	userpasswd1 = HTMLEncode(Request("userpasswd1"))
	userpasswd2 = HTMLEncode(Request("userpasswd2"))
	bodycolor = HTMLEncode(Request("bodycolor"))
	bodyurl =HTMLEncode( Request("bodyurl"))
	bottomcolor = HTMLEncode(Request("bottomcolor"))
	bottomurl = HTMLEncode(Request("bottomurl"))
	topcolor = HTMLEncode(Request("topcolor"))
	adnote = trim(Request("adnote"))
	scripturl = trim(Request("scripturl"))
	leaveurl = HTMLEncode(Request("leaveurl"))
	fullurl = HTMLEncode(Request("fullurl"))
	unauthurl = HTMLEncode(Request("unauthurl"))
	setadm = Request("setadm")
	setimg = Request("setimg")
	setdoor = Request("setdoor")
	setsex = Request("setsex")
	admintor = trim(Request("admintor"))
	channels = Request("channels")
	rtype = Request("rtype")
	admin = HTMLEncode(Request("admin"))
	adminid = HTMLEncode(Request("adminid"))
	RoomType = Request("RoomType")
	muban = Request("muban")
	vms =Request("vms")
	
	'liebiao = 0
	'id2 = 0

	keyfile = keyfile
	bindhost = chathostip
	bindserial = chatserialno


	if setadm<>"1" then setadm="0"
	if setimg<>"1" then setimg="0"
	if setsex<>"1" then setsex="0"
	if setdoor<>"1" then setdoor="0"
	if topcolor="" then topcolor="#EFF5FE"			'默认在线列表区背景颜色
	if bodycolor="" then bodycolor="#FFFFFF"		'默认聊天区区背景颜色
	if bottomcolor="" then bottomcolor="#EFF5FE"	'默认输入区背景颜色
	if adnote="" then adnote="<center>欢迎光临<font color=#ff0000><big>$1</big></font>！ 请文明聊天，切勿发布有关色情、政治、黑客等的信息。"


if renshu="" or shipin="" or liti="" then Call errstr("非法操作！！")
if InStr(Request.ServerVariables("HTTP_REFERER"), ".com/vip/shop_bchat.asp")=0 then Call errstr("请从正确的网址进入注册！\n"&Request.ServerVariables("HTTP_REFERER"))

jiage=renshu*6

if shipin=1 then jiage=jiage+renshu*3
if liti=1 then jiage=jiage+renshu*1
if

%>




          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>购买租用-财务管理中心</TITLE>

<% call top %>
<base target="_blank">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="550" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="550">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>欢迎 [ <%=UN%> 
          ] 来到</b>[购买租用聊天室]<b>-财务管理中心 </b>
          您的聊湾ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="550"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="12" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="329" valign="top">

     <% call caiwu %>

 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="314">
          <tr>
            <td width="592" bgcolor="#800080" height="30">
            <font color="#FFFFFF"><b>
            　BChat[聊天室]</b> - 购买成功</font></td>
          </tr>

     <tr>
            <td width="592" height="282" align="center" bgcolor="#FFFFFF" valign="top">
            

  <table border="0" width="586" id="table1" cellspacing="0" cellpadding="0" height="198">
	<tr>
		<td height="26" width="586">　</td>
	</tr>
	<tr>
		<td height="76" width="586"></td>
	</tr>
	<tr>
		<td width="586">　</td>
	</tr>
	</table>
 
            </td>
     </tr>
        	</table>
        </center>
      </div>
      　</td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="19" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

<%
call endpage()
%>