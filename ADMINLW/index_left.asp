<!-- #include file="checkuser.asp"-->
<HTML><HEAD>
<STYLE type=text/css>
BODY {	BACKGROUND: #799ae1; MARGIN: 0px; FONT: 9pt 宋体}
TABLE {	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px}
TD {	FONT: 12px 宋体}
IMG {	BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px}
A {	FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none}
A:hover {	COLOR: #428eff; TEXT-DECORATION: underline}
.sec_menu {	BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid}
.menu_title {}
.menu_title SPAN {	FONT-WEIGHT: bold; LEFT: 8px; COLOR: #215dc6; POSITION: relative; TOP: 2p }
.menu_title2 { }
.menu_title2 SPAN {FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px}
BODY   {
	SCROLLBAR-HIGHLIGHT-COLOR: #2159CE;
 	SCROLLBAR-SHADOW-COLOR: #2159CE;
 	SCROLLBAR-3DLIGHT-COLOR: #2159CE;
 	SCROLLBAR-TRACK-COLOR: #ffffff;
 	SCROLLBAR-DARKSHADOW-COLOR: #2159CE;
	scrollbar-Base-Color: #2159CE;
	SCROLLBAR-Arrow-COLOR: #ffffff;

	}
</STYLE>

<script language="JavaScript">
<!--
if (window.Event) 
document.captureEvents(Event.MOUSEUP); 

function nocontextmenu() 
{
event.cancelBubble = true
event.returnValue = false;

return false;
}

function norightclick(e) 
{
if (window.Event) 
{
if (e.which == 2 || e.which == 3)
return false;
}
else
if (event.button == 2 || event.button == 3)
{
event.cancelBubble = true
event.returnValue = false;
return false;
}

}

document.oncontextmenu = nocontextmenu; // for IE5+
document.onmousedown = norightclick; // for all others
//-->
</script>
<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{

whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}

function message()
{
window.open('loading.htm','message')
}
</SCRIPT>

<base target="main">

<TBODY><TR><TD vAlign="top">
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY>
<CENTER>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD vAlign=bottom height=42><IMG src="img/admin_left_0.gif"> </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title onmouseover="this.className='menu_title2';" 
    onmouseout="this.className='menu_title';" 
    background=img/title_bg_quit.gif height=25><SPAN><A href="main.asp" 
      target=main><B><FONT color=#215dc6>管理首页</FONT></B></A> | 

    <a target="_top" href="logout.asp"><font color="#215DC6"><b>退出系统</b></font></a></SPAN></TD></TR></TBODY></TABLE>&nbsp; <TD height="100%" 
valign="top" width="100%"><BR>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>

 
   <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(1) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_1.gif height=25 title=点击展开><SPAN>系统设定 </SPAN></TD>


  <TR>
    <TD id=submenu1 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="65">
        <TBODY>
        <tr>
          <TD height=22><span lang="zh-cn"><a href="S_ADMIN/mima.asp">密码修改</a></span></TD>
          </tr>
        <tr>
          <TD height=22><a href="S_ADMIN/userlist.asp">管理员管理</a></TD>
          </tr>
        <tr>
          <TD height=22><span lang="zh-cn"><a href="S_ADMIN/IP.ASP">被封IP处理</a></span></TD>
          </tr>
        <tr>
          <TD height=22><span lang="zh-cn">
          <a href="server.asp">服务器状态</a></span></TD>
          </tr>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>

<!--
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(3) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_2.gif height=25 title=点击展开 width="158"><SPAN>财务管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu3 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:175px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="178">
        <TBODY>
        <TR>
          <TD height=22><a href="SYS_CW/DJ.asp">产品定价</a></TD></TR>
        <tr>
          <TD height=24><a href="SYS_CW/sou.asp">帐户管理中心</a></TD>
        </tr>
        <TR>
          <TD height=22><a href="SYS_CW/ruzhang.asp">用户帐户存值</a></TD></TR>
        <tr>
          <TD height=21>
          用户余额退款</TD>
        </tr>
        <tr>
          <TD height=22>
          <a href="SYS_CW/BB.asp">财务报表</a></TD>
        </tr>
        <tr>
          <TD height=22>
          销售记录</TD>
        </tr>
        <tr>
          <TD height=24>
          <a href="daili/daili.asp">营销人员管理</a></TD>
        </tr>
        <tr>
          <TD height=21>
          </TD>
        </tr>
        </TBODY></TABLE></DIV>

      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>        -->
<div align="center">
  <center>
<TABLE cellSpacing=0 cellPadding=0 width=158 style="border-collapse: collapse" bordercolor="#111111">
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(2) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_3.gif height=25 title=点击展开 width="158"><span >用户管理</span> </TD></TR>
  <TR>
    <TD id=submenu2 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:188px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="159">
        <TBODY>
        <TR>
          <TD height=22><a href="user/listuser.asp">用户列表</a></TD>
          </TR>
        <tr>
          <TD height=22>个人模版管理</TD>
          </tr>
        <tr>
          <TD height=22>个人公告数据管理</TD>
          </tr>
        <tr>
          <TD height=22>留言版数据管理</TD>
          </tr>

        <tr>
          <TD height=22>像册数据管理</TD>
          </tr>
        <tr>
          <TD height=22>日记数据管理</TD>
          </tr>
        <tr>
          <TD height=22>私人俱乐部管理[论坛]</TD>
          </tr>
        <tr>
          <TD height=22>主持风采管理</TD>
          </tr>

        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(6) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_8.gif height=25 title=点击展开 width="158"><span>聊天室管理</span> </TD></TR>
  <TR>
    <TD id=submenu6 style="DISPLAY: none" width="158" height="30">
      <DIV class=sec_menu style="WIDTH: 158px; height:255px">
      <div align="center">
      <TABLE cellSpacing=0 cellPadding=0 width=135 height="0">
        <TBODY>
        <TR>
          <TD height=20><a href="newnewchat/weblist.asp">聊天网管理</a></TD>
          </TR>
        <tr>
          <TD height=20><a href="newnewchat/chatff.asp">聊天室分类管理</a></TD>
          </tr>
		<tr>
          <TD height=21><a href="chat/addBchat.asp">添加聊天室</a></TD>
          </tr>
		<tr>
          <TD height=25><a href="chat/addchat.asp">添加挂接聊天室</a></TD>
          </tr>
		<tr>
          <TD height=20><a href="chat/listchat.asp">聊天室列表</a></TD>
          </tr>
		<tr>
          <TD height=20>消息管理</TD>
          </tr>
<!--
        <tr>
          <TD height=22><a href="chat/reloadtemplate.asp">重新装模版</a></TD>
          </tr>
        <tr>
          <TD height=22><a href="chat/reloadroom.asp">重新装房间</a></TD>
          </tr>
        <tr>
          <TD height=22><a href="chat/sotpchat.asp">重新启动服务</a></TD>
          </tr>

        <tr>
          <TD height=20><a href="chat/Chatadmin.asp">设置巡管</a></TD>
          </tr>
-->
        <tr>
          <TD height=22><a href="chat/indexchat.asp">首页推荐聊天室</a></TD>
          </tr>
        <tr>
          <TD height=18><a href="chat/Chatadmin.asp">设置巡管</a></TD>
          </tr>
        <tr>
          <TD height=20>备案资料认证</TD>
          </tr>

        <tr>
          <TD height=20><a href="xiangce/edit.asp">聊天室相册管理</a></TD>
          </tr>
		<tr>
          <TD height=20><a href="news/news.asp">聊天室公告信息管理</a></TD>
          </tr>

        <tr>
          <TD height=20><a href="ServerDB/list.asp">服务器管理</a></TD>
          </tr>

        </TBODY></TABLE></div>
		</DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          
          
          
  </center>
</div> 
          
   
          

<TABLE cellSpacing=0 cellPadding=0 width=158 align=center height="85">
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_9.gif height=25><span lang="zh-cn">帮助中心</span> 
  </TD></TR>
  <TR>
    <TD height="60">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="72">
        <TBODY>
        <TR>
          <TD height=20><span lang="zh-cn">管理中心使用帮助</span></TD></TR>
        <tr>
          <TD height=52>版权所有：<BR>LWOO.COM 龙网企业</TD>
        </tr>
        </TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>&nbsp; 
</TR></TBODY></TABLE>
<SCRIPT>
function initIt(){
divColl=document.all.tags("DIV");
for(i=0; i<divColl.length; i++) {
whichEl=divColl(i);
if(whichEl.className=="child")whichEl.style.display="none";}
}
function expands(el) {
whichEl1=eval(el+"Child");
if (whichEl1.style.display=="none"){
initIt();
whichEl1.style.display="block";
}else{whichEl1.style.display="none";}
}
var tree= 0;
function loadThreadFollow(){
if (tree==0){
document.frames["hiddenframe"].location.replace("tree.asp");
tree=1
}
}
</SCRIPT>
　</CENTER></BODY></HTML>