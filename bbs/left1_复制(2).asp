<!-- #include file="setup.asp" -->
<STYLE type=text/css>TD {
	FONT-SIZE: 9pt; FONT-FAMILY: "宋体"
}
BODY {
	FONT-SIZE: 9pt; FONT-FAMILY: "宋体"
}
SELECT {
	FONT-SIZE: 9pt; FONT-FAMILY: "宋体"
}
A {
	FONT-SIZE: 9pt; COLOR: #ffffff; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
}
A:hover {
	FONT-SIZE: 9pt; COLOR: #ff0000; FONT-FAMILY: "宋体"; TEXT-DECORATION: underline
}
A.black {
	FONT-SIZE: 9pt; COLOR: #000000; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
}
</STYLE>
<script language=JavaScript1.2>
scores = new Array(20);
var numTotal=0;
NS4 = (document.layers) ? 1 : 0;
IE4 = (document.all) ? 1 : 0;
ver4 = (NS4 || IE4) ? 1 : 0;

if (ver4) {
    with (document) {
        write("<STYLE TYPE='text/css'>");
        if (NS4) {
            write(".parent {position:absolute; visibility:visible}");
            write(".child {position:absolute; visibility:visible}");
            write(".regular {position:absolute; visibility:visible}")
        }
        else {
            write(".child {display:none}")
        }
        write("</STYLE>");
    }
}

function getIndex(el) {
    ind = null;
    for (i=0; i<document.layers.length; i++) {
        whichEl = document.layers[i];
        if (whichEl.id == el) {
            ind = i;
            break;
        }
    }
    return ind;
}

function arrange() {
    nextY = document.layers[firstInd].pageY +document.layers[firstInd].document.height;
    for (i=firstInd+1; i<document.layers.length; i++) {
        whichEl = document.layers[i];
        if (whichEl.visibility != "hide") {
            whichEl.pageY = nextY;
            nextY += whichEl.document.height;
        }
    }
}

function initIt(){
    if (!ver4) return;
    if (NS4) {
        for (i=0; i<document.layers.length; i++) {
            whichEl = document.layers[i];
            if (whichEl.id.indexOf("Child") != -1) whichEl.visibility = "hide";
       }
        arrange();
    }
    else {
        divColl = document.all.tags("DIV");
        for (i=0; i<divColl.length; i++) {
            whichEl = divColl(i);
            if (whichEl.className == "child") whichEl.style.display = "none";
        }
    }
}

function expandIt(el) {
	if (!ver4) return;
    if (IE4) {
        whichEl1 = eval(el + "Child");
		for(i=1;i<=numTotal;i++){
			whichEl = eval(scores[i] + "Child");
			if(whichEl!=whichEl1) {
				whichEl.style.display = "none";
			}
		}
        whichEl1 = eval(el + "Child");
        if (whichEl1.style.display == "none") {
            whichEl1.style.display = "block";
        }
        else {
            whichEl1.style.display = "none";
        }
    }
    else {
        whichEl = eval("document." + el + "Child");
		for(i=1;i<=numTotal;i++){
			whichEl = eval("document." + scores[i] + "Child");
			if(whichEl!=whichEl1) {
				whichEl.visibility = "hide";
			}
		}
        if (whichEl.visibility == "hide") {
            whichEl.visibility = "show";
        }
        else {
            whichEl.visibility = "hide";
        }
        arrange();
    }
}
onload = initIt;

//菜单项目函数
function menuliaowan(sid,sname) {

document.write('<div id=KB'+ sid +'Parent><a onClick="expandIt(\'KB'+ sid +'\');return false" href="#">')
document.write('<IMG src="images/line_01.gif" align=absMiddle border=0>')
document.write('<IMG height=16 src="images/i_option.gif" width=16 align=absMiddle border=0> '+ sname +'</a>')
document.write('</div><div class=child id=KB'+ sid +'Child>')


var num=2, count=rooms.length/num; 
function Gname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// 数据名
function Gid(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// 数据ID


	for(var i=0; i<count; i++) 
	{	
		document.write('<a href="ShowForum.asp?forumid='+ Gid(i) +'"><nobr><img border="0" src="images/line_05.gif"><img border="0" src="images/dot_01.gif">'+ Gname(i) +'</nobr></a><br>')
	}
document.write('</div>')

}



</script>
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY bgColor=#3399FF topmargin="0" leftmargin="0">

<img border="0" src="img/logo.gif"><br>

<A 
href="http://news.163.com/" target=main><IMG height=16 
src="images/line_01_2.gif" width=18 align=absMiddle border=0><IMG height=16 
src="images/i_option.gif" width=16 align=absMiddle border=0> 社区快报</A><BR><A 
href="http://help.163.com/club/index.html" target=_blank><IMG height=16 
src="images/line_01_2.gif" width=18 align=absMiddle border=0><IMG height=16 
src="images/i_option.gif" width=16 align=absMiddle border=0> 社区导读</A><BR><A 
href="http://uh1.bj.163.com/cgi/docelite" target=main><IMG height=16 
src="images/line_01_2.gif" width=18 align=absMiddle border=0><IMG height=16 
src="images/i_option.gif" width=16 align=absMiddle border=0> 社区精华区</A><BR><A href="http://uh10.bj.163.com/cgi/boa?o=1">
<IMG 
src="images/line_01.gif" align=absMiddle border=0 width="18" height="16"><IMG 
src="images/i_option.gif" align=middle border=0 width="16" height="16"> 社区服务</A><BR>
<IMG 
src="images/line_2.gif" align=absMiddle width="126" height="8"><br>
<A href="http://uh10.bj.163.com/cgi/boa?c=favor"><IMG 
      src="images/line_01.gif" align=absMiddle border=0><IMG 
      src="images/i_person.gif" align=absMiddle border=0> 私人珍藏</A><br>

<div id="KB1Parent">
  <a onclick="expandIt('KB1');return false" href="#">
  <img src="http://a.com/bbs/images/line_01.gif" align="absMiddle" border="0" width="18" height="16"><img src="http://a.com/bbs/images/i_option.gif" align="absMiddle" border="0" width="16" height="16"> 
  测试拉大哥</a></div>
<div class="child" id="KB1Child" style="DISPLAY: none">
  <a href="http://a.com/bbs/ShowForum.asp?forumid=1"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">哈哈啊</nobr></a><br>
  <a href="http://a.com/bbs/ShowForum.asp?forumid=2"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">hoho</nobr></a></div>
<div id="KB2Parent">
  <a onclick="expandIt('KB2');return false" href="#">
  <img src="http://a.com/bbs/images/line_01.gif" align="absMiddle" border="0" width="18" height="16"><img src="http://a.com/bbs/images/i_option.gif" align="absMiddle" border="0" width="16" height="16"> 
  免费申请</a>
</div>
<div class="child" id="KB2Child" style="DISPLAY: none">
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a>
</div>
<div id="KB3Parent">
  <a onclick="expandIt('KB3');return false" href="#">
  <img src="http://a.com/bbs/images/line_01.gif" align="absMiddle" border="0" width="18" height="16"><img src="http://a.com/bbs/images/i_option.gif" align="absMiddle" border="0" width="16" height="16"> 
  酷站源码</a>
</div>
<div class="child" id="KB3Child" style="DISPLAY: none; WIDTH: 763px; HEIGHT: 75px">
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a>
</div>
<div id="KB4Parent">
  <a onclick="expandIt('KB4');return false" href="#">
  <img src="http://a.com/bbs/images/line_01.gif" align="absMiddle" border="0" width="18" height="16"><img src="http://a.com/bbs/images/i_option.gif" align="absMiddle" border="0" width="16" height="16"> 
  酷站源码</a>
</div>
<div class="child" id="KB4Child" style="DISPLAY: block; WIDTH: 763px; HEIGHT: 75px">
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我
  爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a><br>
  <a href="#"><nobr>
  <img src="http://a.com/bbs/images/line_05.gif" border="0" width="37" height="16"><img src="http://a.com/bbs/images/dot_01.gif" border="0" width="6" height="11">今天我爱</nobr></a></div>

<script>numTotal=4;scores[1]='KB1';scores[2]='KB2';scores[3]='KB3';scores[4]='KB4';</script>

<A href="http://knl.bj.163.com/cgi/login?a=logout" target=_top>
<IMG src="images/line_01_2.gif" align=absMiddle  border=0><IMG src="images/i_exit.gif" align=absMiddle border=0>返回首页</A> <BR>
</body>