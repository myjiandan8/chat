<!-- #include file="checkuser.asp"-->
<HTML><HEAD><TITLE>[进入聊湾][聊天室]后台管理-聊湾 LiaoWan.Com</TITLE><LINK href="img/lwoo.css" rel=stylesheet>
<META http-equiv=Content-Type content=text/html;charset=gb2312>
<SCRIPT>
function switchSysBar(){
if (switchPoint.innerText==3){
switchPoint.innerText=4
document.all("frmTitle").style.display="none"
}else{
switchPoint.innerText=3
document.all("frmTitle").style.display=""
}}
</SCRIPT>

<STYLE type=text/css>.navPoint {
	FONT-SIZE: 9pt; CURSOR: hand; COLOR: white; FONT-FAMILY: Webdings
}
</STYLE>
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY style="border:0px none; margin:0px; " scroll=no onMouseOver="window.status='[进入聊湾][聊天室]后台管理-聊湾 LiaoWan.Com';return true">
<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD id=frmTitle vAlign=center noWrap align=middle name="frmTitle">
    <IFRAME 
      id=carnoc 
      style="Z-INDEX: 2; VISIBILITY: inherit; WIDTH: 190; HEIGHT: 100%" 
      name=carnoc src="index_left.asp" frameBorder=0 target="main">
    </IFRAME></TD>
    <TD class=a2 style="WIDTH: 9pt">
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD style="HEIGHT: 100%" onclick=switchSysBar()><FONT 
            style="FONT-SIZE: 9pt; CURSOR: default; COLOR: #ffffff"><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><SPAN 
            class=navPoint id=switchPoint 
            title=关闭/打开左栏>3</SPAN><BR><BR><BR><BR><BR><BR><BR><BR>屏幕切换
        </FONT></TD></TR></TBODY></TABLE></TD>
    <TD style="WIDTH: 100%">
    <IFRAME id=main 
      style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%" 
      name=main src="main.asp" frameBorder=0>
    </IFRAME></TD></TR></TBODY></TABLE>
<SCRIPT>if (window.screen.width<'1024'){switchSysBar()}</SCRIPT>
</BODY></HTML>