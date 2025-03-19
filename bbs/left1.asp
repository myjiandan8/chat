<!-- #include file="conn.asp" -->
<STYLE type=text/css>TD {FONT-SIZE: 9pt; FONT-FAMILY: "宋体"}
BODY {FONT-SIZE: 9pt; FONT-FAMILY: "宋体"}
SELECT {FONT-SIZE: 9pt; FONT-FAMILY: "宋体"}
A {FONT-SIZE: 9pt; COLOR: #ffffff; FONT-FAMILY: "宋体"; TEXT-DECORATION: none}
A:hover {FONT-SIZE: 9pt; COLOR: #000000; FONT-FAMILY: "宋体"; TEXT-DECORATION: underline}
A.black {FONT-SIZE: 9pt; COLOR: #000000; FONT-FAMILY: "宋体"; TEXT-DECORATION: none}
BODY   {
	SCROLLBAR-HIGHLIGHT-COLOR: #CD5105;
 	SCROLLBAR-SHADOW-COLOR: #CD5105;
 	SCROLLBAR-3DLIGHT-COLOR: #CD5105;
 	SCROLLBAR-TRACK-COLOR: #ffffff;
 	SCROLLBAR-DARKSHADOW-COLOR: #CD5105;
	scrollbar-Base-Color: #CD5105;
	SCROLLBAR-Arrow-COLOR: #ffffff;

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

//菜单项目函数 版权所有聊湾  欢迎学习 --- 龙软乐天
function menuliaowan(sid,sname) {

document.write('<div id=KB'+ sid +'Parent><a onClick="expandIt(\'KB'+ sid +'\');return false" href="#">')
document.write('<IMG src="images/line_01.gif" align=absMiddle border=0>')
document.write('<IMG height=16 src="images/i_option.gif" width=16 align=absMiddle border=0> '+ sname +'</a>')
document.write('</div><div class=child id=KB'+ sid +'Child>')


var num=2, count=rooms.length/num; 
function Gname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// 数据名
function Gid(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return null;} 	// 数据连接


	for(var i=0; i<count; i++) 
	{	
		document.write('<a href="'+ Gid(i) +'"><nobr><img border="0" src="images/line_05.gif"><img border="0" src="images/dot_01.gif">'+ Gname(i) +'</nobr></a><br>')
	}
document.write('</div>')

}



</script>
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<base target="main">

<BODY bgColor=#CD5105 topmargin="0" leftmargin="0">

<img border="0" src="img/logo1.gif"><br>

<A 
href="http://news.163.com/" target=main><IMG height=16 
src="images/line_01_2.gif" width=18 align=absMiddle border=0><IMG height=16 
src="images/i_option.gif" width=16 align=absMiddle border=0> </A>
<a href="Default.asp">社区导航</a><BR>
<script>
var rooms = new Array("面板首页",'usercp.asp',"资料修改",'../vip/vip_dangan.asp',"密码修改",'../vip/mima.asp',"论坛选项",'EditProfile.asp?menu=option',"短消息服务",'message.asp',"好友列表",'friend.asp');menuliaowan(1,'控制面板');
var rooms = new Array("更换用户",'login.asp',"我的帖子",'ShowBBS.asp?menu=5',"上传头像",'upface.asp',"上传照片",'upphoto.asp',"我的日记",'calendar.asp',"我的资料",'profile.asp');menuliaowan(2,'个人服务');
var rooms = new Array("社区搜索",'search.asp',"社区帮助",'help.asp',"论坛状态",'online.asp');menuliaowan(3,'社区服务');
</script>
<IMG src="images/line_2.gif" align=absMiddle width="126" height="8"><br>
<script>var rooms = new Array("帖子收藏夹",'favorites.asp?menu=topic',"论坛收藏夹",'favorites.asp?menu=forum',"网站收藏夹",'favorites.asp');menuliaowan(4,'私人珍藏');</script>
<script>
<%

Set conn=Server.CreateObject("ADODB.Connection")
conn.open ConnStr
i=4
if vid="" then
set rs=conn.execute ("select id,bbsname from bbsconfig where followid=0 and hide=0 order by SortNum")
else
set rs=conn.execute ("select id,bbsname from bbsconfig where followid=" & vid & " and hide=0 order by SortNum")
end if
do while not (rs.eof or err)
 i=i+1
rooms=""
douhao=""
set rsr=conn.execute ("select id,bbsname from bbsconfig where followid="& rs("ID") &" and hide=0 order by SortNum")
do while not (rsr.eof or err)
 
rooms= rooms & douhao & """" & rsr("bbsname") & """,""ShowForum.asp?forumid=" & rsr("id") & """"
douhao=","
  rsr.moveNext
  loop

 response.write "var rooms = new Array(" & rooms & ");"
 response.write "menuliaowan(" & i & ",'"& rs("bbsname") &"');"

  rs.moveNext
  loop
%>

</script>

<script><% 
response.write "numTotal=" & i & ";"
for io=1 to i  
response.write "scores[" & io & "]='KB" & io & "';"
next
%></script>

<A href="http://liaowan.com/bbs" target=_top>
<IMG src="images/line_01_2.gif" align=absMiddle  border=0><IMG src="images/i_option.gif" align=absMiddle border=0> 
聊湾总社区</A> <BR>
<A href="http://<% if roomid>0 then response.write roomid & "."%>liaowan.com" target=_top>
<IMG src="images/line_01_2.gif" align=absMiddle  border=0><IMG src="images/i_exit.gif" align=absMiddle border=0> 
返回首页</A> <BR>
<script>
top.document.title="<% if bbsnames<>"" then response.write bbsnames & " - "%>聊湾视频聊天社区 - 语音聊天 LianWan.com"; 
</script>
</body>