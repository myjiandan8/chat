<!-- #include file="checkuser.asp"-->
<HTML><HEAD>
<STYLE type=text/css>
BODY {	BACKGROUND: #799ae1; MARGIN: 0px; FONT: 9pt ����}
TABLE {	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px}
TD {	FONT: 12px ����}
IMG {	BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px}
A {	FONT: 12px ����; COLOR: #000000; TEXT-DECORATION: none}
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
      target=main><B><FONT color=#215dc6>������ҳ</FONT></B></A> | 

    <a target="_top" href="logout.asp"><font color="#215DC6"><b>�˳�ϵͳ</b></font></a></SPAN></TD></TR></TBODY></TABLE>&nbsp; <TD height="100%" 
valign="top" width="100%"><BR>
<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
  <TBODY>
  <TR>

 
   <TD class=menu_title id=menuTitle1 
    onmouseover="this.className='menu_title2';" onclick=showsubmenu(1) 
    onmouseout="this.className='menu_title';" 
    background=img/admin_left_1.gif height=25 title=���չ��><SPAN>ϵͳ�趨 </SPAN></TD>


  <TR>
    <TD id=submenu1 style="DISPLAY: none">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="65">
        <TBODY>
        <tr>
          <TD height=22><span lang="zh-cn"><a href="S_ADMIN/mima.asp">�����޸�</a></span></TD>
          </tr>
        <tr>
          <TD height=22><a href="S_ADMIN/userlist.asp">����Ա����</a></TD>
          </tr>
        <tr>
          <TD height=22><span lang="zh-cn"><a href="S_ADMIN/IP.ASP">����IP����</a></span></TD>
          </tr>
        <tr>
          <TD height=22><span lang="zh-cn">
          <a href="server.asp">������״̬</a></span></TD>
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
    background=img/admin_left_2.gif height=25 title=���չ�� width="158"><SPAN>������� </SPAN></TD></TR>
  <TR>
    <TD id=submenu3 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:175px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="178">
        <TBODY>
        <TR>
          <TD height=22><a href="SYS_CW/DJ.asp">��Ʒ����</a></TD></TR>
        <tr>
          <TD height=24><a href="SYS_CW/sou.asp">�ʻ���������</a></TD>
        </tr>
        <TR>
          <TD height=22><a href="SYS_CW/ruzhang.asp">�û��ʻ���ֵ</a></TD></TR>
        <tr>
          <TD height=21>
          �û�����˿�</TD>
        </tr>
        <tr>
          <TD height=22>
          <a href="SYS_CW/BB.asp">���񱨱�</a></TD>
        </tr>
        <tr>
          <TD height=22>
          ���ۼ�¼</TD>
        </tr>
        <tr>
          <TD height=24>
          <a href="daili/daili.asp">Ӫ����Ա����</a></TD>
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
    background=img/admin_left_3.gif height=25 title=���չ�� width="158"><span >�û�����</span> </TD></TR>
  <TR>
    <TD id=submenu2 style="DISPLAY: none" width="158">
      <DIV class=sec_menu style="WIDTH: 158px; height:188px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="159">
        <TBODY>
        <TR>
          <TD height=22><a href="user/listuser.asp">�û��б�</a></TD>
          </TR>
        <tr>
          <TD height=22>����ģ�����</TD>
          </tr>
        <tr>
          <TD height=22>���˹������ݹ���</TD>
          </tr>
        <tr>
          <TD height=22>���԰����ݹ���</TD>
          </tr>

        <tr>
          <TD height=22>������ݹ���</TD>
          </tr>
        <tr>
          <TD height=22>�ռ����ݹ���</TD>
          </tr>
        <tr>
          <TD height=22>˽�˾��ֲ�����[��̳]</TD>
          </tr>
        <tr>
          <TD height=22>���ַ�ɹ���</TD>
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
    background=img/admin_left_8.gif height=25 title=���չ�� width="158"><span>�����ҹ���</span> </TD></TR>
  <TR>
    <TD id=submenu6 style="DISPLAY: none" width="158" height="30">
      <DIV class=sec_menu style="WIDTH: 158px; height:255px">
      <div align="center">
      <TABLE cellSpacing=0 cellPadding=0 width=135 height="0">
        <TBODY>
        <TR>
          <TD height=20><a href="newnewchat/weblist.asp">����������</a></TD>
          </TR>
        <tr>
          <TD height=20><a href="newnewchat/chatff.asp">�����ҷ������</a></TD>
          </tr>
		<tr>
          <TD height=21><a href="chat/addBchat.asp">���������</a></TD>
          </tr>
		<tr>
          <TD height=25><a href="chat/addchat.asp">��ӹҽ�������</a></TD>
          </tr>
		<tr>
          <TD height=20><a href="chat/listchat.asp">�������б�</a></TD>
          </tr>
		<tr>
          <TD height=20>��Ϣ����</TD>
          </tr>
<!--
        <tr>
          <TD height=22><a href="chat/reloadtemplate.asp">����װģ��</a></TD>
          </tr>
        <tr>
          <TD height=22><a href="chat/reloadroom.asp">����װ����</a></TD>
          </tr>
        <tr>
          <TD height=22><a href="chat/sotpchat.asp">������������</a></TD>
          </tr>

        <tr>
          <TD height=20><a href="chat/Chatadmin.asp">����Ѳ��</a></TD>
          </tr>
-->
        <tr>
          <TD height=22><a href="chat/indexchat.asp">��ҳ�Ƽ�������</a></TD>
          </tr>
        <tr>
          <TD height=18><a href="chat/Chatadmin.asp">����Ѳ��</a></TD>
          </tr>
        <tr>
          <TD height=20>����������֤</TD>
          </tr>

        <tr>
          <TD height=20><a href="xiangce/edit.asp">������������</a></TD>
          </tr>
		<tr>
          <TD height=20><a href="news/news.asp">�����ҹ�����Ϣ����</a></TD>
          </tr>

        <tr>
          <TD height=20><a href="ServerDB/list.asp">����������</a></TD>
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
    background=img/admin_left_9.gif height=25><span lang="zh-cn">��������</span> 
  </TD></TR>
  <TR>
    <TD height="60">
      <DIV class=sec_menu style="WIDTH: 158px">
      <TABLE cellSpacing=0 cellPadding=0 width=135 align=center height="72">
        <TBODY>
        <TR>
          <TD height=20><span lang="zh-cn">��������ʹ�ð���</span></TD></TR>
        <tr>
          <TD height=52>��Ȩ���У�<BR>��LWOO.COM ������ҵ</TD>
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
��</CENTER></BODY></HTML>