<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
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
<BODY onMouseOver="window.status='[进入聊湾][聊天室]后台管理-聊湾 LiaoWan.Com';return true">
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
    background=img/admin_left_1.gif height=25 title=点击展开><SPAN>基本配置 </SPAN></TD>


  <TR>
    <TD id=submenu1 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px; height:234px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="165">
        <TBODY>
        <tr>
          <TD height=26><span lang="zh-cn"><a href="type/mima.asp">密码修改</a></span></TD>
          </tr>
        <tr>
          <TD height=26><a href="S_ADMIN/userlist.asp">编辑管理员</a></TD>
          </tr>
        <tr>
          <TD height=26><a href="type/gexing.asp">个性设置</a></TD>
          </tr>
        <TR>
          <TD height=26><a href="type/liuliang.asp">流量统计</a></TD></TR>
        <tr>
          <TD height=26><a href="type/tuiguang.asp">聊天室推广</a></TD>
		</tr>
		<tr>
          <TD height=26><a href="type/regedit.asp">备案资料变更</a></TD>
		</tr>
		<% if ff<2 then %>
		<tr>
          <TD height=27><a href="type/Party.asp">Party申请</a></TD>
		</tr>
		<tr>
          <TD height=25>工具窗口设订</TD>
		</tr>
		<% end if %>
		<tr>
          <TD height=26><a target="_top" href="logout.asp">退出登陆</a></TD>
		</tr>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>

<% if ff=1 then %>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(3) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_2.gif height=25 title=点击展开 width="160"><SPAN>BChat操作 </SPAN></TD></TR>
  <TR>
    <TD id=submenu3 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:142px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="139">
        <TBODY>
        <TR>
          <TD height=22><a href="bchat/peizhi.asp">基本配置</a></TD></TR>
        <tr>
          <TD height=24><a href="bchat/admin.asp">设置主持人</a></TD>
        </tr>

        <tr>
          <TD height=20>
          <a href="bchat/js.asp">自定义JS脚本</a></TD>
        </tr>
        <tr>
          <TD height=24>
          自定义模板编辑</TD>
        </tr>
		<tr>
          <TD height=24>
          <a href="bchat/start.asp">重启聊天室</a></TD>
        </tr>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>



<div align="center">
  <center>
  <% elseif ff=3 then %>
<TABLE cellSpacing=0 cellPadding=0 width=158 style="border-collapse: collapse" bordercolor="#111111">
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(2) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_3.gif height=25 title=点击展开 width="160"><span >
	MeChat操作</span> </TD></TR>
  <TR>
    <TD id=submenu2 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:109px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="100">
        <TBODY>
        <TR>
          <TD height=25><a href="mechat/peizhi.asp">基本配置</a></TD>
          </TR>
        <tr>
          <TD height=25><a href="mechat/muban.asp">模板选择</a></TD>
          </tr>
        <tr>
          <TD height=25><a href="mechat/zidingyi.asp">自定义模板编辑</a></TD>
          </tr>
        <tr>
          <TD height=25><a href="mechat/start.asp">聊天室复位</a></TD>
          </tr>

        <tr>
          <TD height=16></TD>
          </tr>

        </TBODY></TABLE></DIV>
        <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV>
        </TD></TR>
        </TBODY></TABLE></DIV>
              
<% else %>
          <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(11) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_12.gif height=25 title=点击展开><SPAN>碧聊挂接管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu11 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px; height:63px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="58">
        <TBODY>
        <TR>
          <TD height=27><a href="chat/peizhi.asp">基本信息</a></TD>
          </TR>
        <TR>
          <TD height=31><a href="bchat/js.asp">JS脚本空间</a></TD>
          </TR>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          
          

<% end if %>
        
          
<TABLE cellSpacing=0 cellPadding=0 width=158 style="border-collapse: collapse" bordercolor="#111111">
  <TBODY>    
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(6) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_8.gif height=25 title=点击展开 width="158"><span>网站内容管理</span> </TD></TR>
  <TR>
    <TD id=submenu6 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:209px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="213">
        <TBODY>
        <TR>
          <TD height=26><a href="web/peizhi.asp">基本设定</a></TD>
          </TR>
        <tr>
          <TD height=26><a href="web/add.asp">上传自定义网页模板</a></TD>
          </tr>
        <TR>
          <TD height=26><a href="web/zhenqing.asp">真情寄语</a></TD>
          </TR>
		<tr>
          <TD height=26><a href="news/news.asp">公告信息</a></TD>
          </tr>

        <tr>
          <TD height=26><a href="book/nj.asp">处理申请聊管</a></TD>
          </tr>

        <tr>
          <TD height=26><a href="book/index.asp">留言板管理</a></TD>
          </tr>
		<tr>
          <TD height=26><a href="link/link.asp">友情连接</a></TD>
          </tr>
		<tr>
          <TD height=26><a href="web/diaoyong.asp">聊天室调用代码</a></TD>
          </tr>

        <tr>
          <TD height=5></TD>
          </tr>

        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          
          
          
  </center>
</div>
          
          
          
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(7) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_10.gif height=25 title=点击展开><SPAN>相册管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu7 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="58">
        <TBODY>
        <TR>
          <TD height=20 width="135"><a href="xiangce/add.asp">添加照片</a></TD>
          </TR>
        <TR>
          <TD height=20 width="135">
          <a href="xiangce/edit.asp">照片列表</a></TD>
          </TR>
        <tr>
          <TD height=12 width="135"></TD>
          </tr>
        <tr>
          <TD height=7 width="135"></TD>
          </tr>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>



<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(8) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_11.gif height=25 title=点击展开><SPAN>论坛管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu8 style="DISPLAY: none" height="26">
      <DIV class=sec_menu style="WIDTH: 158px; height:83px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="76">
        <TBODY>
        <TR>
          <TD height=26><a href="bbs/peizhi.asp">基本配置</a></TD>
          </TR>
        <TR>
          <TD height=26><a href="bbs/listbbs.asp">论坛版块管理</a></TD>
          </TR>
        <tr>
          <TD height=24><a href="bbs/gonggao.asp">论坛公告发布</a></TD>
          </tr>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          
    
          <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(4) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_6.gif height=25 title=点击展开><SPAN>俱乐部管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu4 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px; height:105px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="79">
        <TBODY>
        <TR>
          <TD height=26><a href="bangpai/peizhi.asp">基本配置</a></TD>
          </TR>
        <TR>
          <TD height=26><a href="bangpai/list.asp">俱乐部成员</a></TD>
          </TR>
        <TR>
          <TD height=26><a href="bangpai/gonggao.asp">公告信息</a></TD>
          </TR>
		<tr>
          <TD height=26><a href="bangpai/xinxi.asp">群发短信息</a></TD>
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
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(11) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_12.gif height=25 title=点击展开><SPAN>聊天室产品管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu11 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px; height:144px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="126">
        <TBODY>
        <TR>
          <TD height=20>聊天室续费</TD>
          </TR>
        <TR>
          <TD height=20>购买国际域名</TD>
          </TR>
        <TR>
          <TD height=20>购买虚拟服务器</TD>
          </TR>
        <tr>
          <TD height=20>购买聊天室</TD>
          </tr>
		<tr>
          <TD height=20></TD>
          </tr>
		<tr>
          <TD height=20></TD>
          </tr>
		<tr>
          <TD height=20>　</TD>
          </tr>
        </TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          
          

 <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(12) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_13.gif height=25 title=点击展开><SPAN>购物管理 </SPAN></TD></TR>
  <TR>
    <TD id=submenu12 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins" 
            target=main>默认风格</A></TD>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins&amp;no=1" 
            target=main>紫色风格</A></TD></TR>
        <TR>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins&amp;no=2" 
            target=main>绿色风格</A></TD>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins&amp;no=3" 
            target=main>灰色风格</A></TD></TR>
        <TR>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins&amp;no=4" 
            target=main>红色风格</A></TD>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins&amp;no=5" 
            target=main>橘色风格</A></TD></TR>
        <TR>
          <TD height=20><A onclick=message() 
            href="http://lzj:8/bbsxp/cookies.asp?menu=skins&amp;no=6" 
            target=main>蓝色风格</A></TD>
          <TD height=20>　</TD></TR></TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          


 <TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(14) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_14.gif height=25 title=点击展开><SPAN>网站内容</SPAN></TD></TR>
  <TR>
    <TD id=submenu14 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20>分类管理</TD>
          </TR>
        <TR>
          <TD height=20>新闻管理</TD>
          </TR>
        <TR>
          <TD height=20>新闻来源</TD>
          </TR>
        <TR>
          <TD height=20>　</TD>
          </TR></TBODY></TABLE></DIV>
      <DIV style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
        <TBODY>
        <TR>
          <TD height=20></TD></TR></TBODY></TABLE></DIV></TD></TR></TBODY></TABLE>
          


          
          
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>
    <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(5) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_5.gif height=25 title=点击展开><span>设置管理操作 </span> </TD></TR>
  <TR>
    <TD id=submenu5 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158; height:44">
      　</DIV></TD></TR></TBODY></TABLE>&nbsp; 
          
       -->        
          

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
          <TD height=52>版权所有：<br>
			<BR>聊湾VCU同盟</TD>
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