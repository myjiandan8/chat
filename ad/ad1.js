//浮动广告JS脚本 聊湾版权所有 乐天设计
var imgheight
document.ns = navigator.appName == "Netscape"
window.screen.width>800 ? imgheight=460:imgheight=205

function closediv()  //关闭浮动层
{
ctw.style.display = "none";
ctw1.style.display = "none";
}

function myload()
{
if (navigator.appName == "Netscape")
{document.ctw1.pageY=pageYOffset+window.innerHeight-imgheight-100;
document.ctw1.pageX=6;
leftmove();
}
else
{
ctw1.style.top=document.body.scrollTop+document.body.offsetHeight-imgheight-100;
ctw1.style.left=6;
leftmove();
}
}
 function leftmove()
 {
 if(document.ns)
 {
 document.ctw1.top=pageYOffset+window.innerHeight-imgheight-100;
 document.ctw1.left=pageXOffset+6;
 setTimeout("leftmove();",50)
 }
 else
 {
 ctw1.style.top=document.body.scrollTop+document.body.offsetHeight-imgheight-100;
 ctw1.style.left=document.body.scrollLeft+6;
 setTimeout("leftmove();",50)
 }
 }

function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}




 function myload1()
{
if (navigator.appName == "Netscape")
{document.ctw.pageY=pageYOffset+window.innerHeight-imgheight-100;
document.ctw.pageX=+window.innerWidth-125;
mymove();
}
else
{
ctw.style.top=document.body.scrollTop+document.body.offsetHeight-imgheight-100;
ctw.style.left=document.body.offsetWidth-125;
mymove();
}
}
 function mymove()
 {
 if(document.ns)
 {
 document.ctw.top=pageYOffset+window.innerHeight-imgheight-100;
 document.ctw.left=pageXOffset+window.innerWidth-125;
 setTimeout("mymove();",50)
 }
 else
 {
 ctw.style.top=document.body.scrollTop+document.body.offsetHeight-imgheight-100;
 ctw.style.left=document.body.scrollLeft+document.body.offsetWidth-125;
 setTimeout("mymove();",50)
 }
 }

MM_reloadPage(true)

if (navigator.appName == "Netscape")
{
	document.write("<layer id=ctw1 top=50 width=105 height=80 left:8><a href='#'><img src=images/pl1.gif border=0 height=200 width=100></a></layer>");
	document.write("<layer id=ctw top=50 width=105 height=80 right:8><a href='#'><img src=images/pl1.gif border=0 height=200 width=100></a></layer>");
	myload()
	myload1()
}
else
{
	document.write("<div id=ctw1 style='position: absolute;width:105;top:0;left:8;visibility: visible;z-index: 1'><div style='position:absolute; left:14px; top:15px; width:80px; height:150px; z-index:1'><a href='javascript:closediv()'><font color='#555555'>关闭</font></a></div><a href='/info/blt.asp' target='_blank'><img src=/ad/blt/blt3.gif border=0 height=300 width=100></a></div>");
	document.write("<div id=ctw style='position: absolute;width:105;top:0;right:8;visibility: visible;z-index: 1'><div style='position:absolute; left:14px; top:15px; width:80px; height:150px; z-index:1'><a href='javascript:closediv()'><font color='#555555'>关闭</font></a></div><a href='/info/shop_host.asp' target='_blank'><img src=/ad/images/host1.gif border=0 height=300 width=100></a></div>");
	myload()
	myload1()
}
