<!--#include file="../tongji.asp" -->
<!--#include file="config.asp"-->
<!--#include file="conn.asp"-->
<!--#include file="format.asp"-->
<!--#include file="error.asp"-->
<!--#include file="incjs.asp"-->
<!--#include file="inctop.asp"-->

<!--#include file="lib/index_pic.asp"-->
<!--#include file="lib/index_model.asp"-->
<!--#include file="lib/index_diary.asp"-->
<!--#include file="lib/index_article.asp"-->
<!--#include file="lib/index_soft.asp"-->
<!--#include file="lib/index_wpm.asp"-->
<!--#include file="incfooter.asp"-->
<!--#include file="lib/zoom.asp"-->
<%
session("download")="#89*&%"
stats="首页"
dim founderr,errmsg
founderr=false
errmsg=""

if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的id参数。"
  end if
end if

if founderr then
  call diserror()
  response.end
else
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
set rs=nothing

call top()
call index_nav()
%>

<%
openadmin
set rswebcount=conn.execute("select * from vcount")
%> 

<SCRIPT language=javascript>
<!--
//代码开始 脚本设计：龙软科技

<%
'第几页
Set chatconn = Server.CreateObject("ADODB.Connection")
chatconn.Open = "DSN=chatweb; UID=sa; PWD=letiandage;"
fenge = ""
sql="select top 14  Roomname,num,admin,host,id,RoomType,rtype,max from [web] where [liebiao]=0 and ff=0 order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=14)

	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max")
	fenge = ","
	i=i+1
  rs.moveNext
  loop
  rs.close

sql="select top 14  Roomname,num,admin,host,id,RoomType,rtype,max from [web] where liebiao=0 and ff=1 order by num desc"
set rs=Chatconn.execute (sql)
 i=0
 do while not (rs.eof or err or i=14)

	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max")
	i=i+1
  rs.moveNext
  loop
  rs.close
  

response.write "var rooms = new Array(" & rooms & ");"
%>


var num=7, count=rooms.length/num; // count = 总开放房间数, num=房间数组的Field数量
function GetRoomname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// 房间名称,参数n表示第几个房间
function Getnum(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// 取得指定房间在线人数
function GetRoomAdmin(n){n=n*num;if(n<rooms.length)return rooms[n+2];else return null;} 	// 房间主人
function GetRoomURL(n)	{n=n*num;if(n<rooms.length)return rooms[n+3];else return null;} 	// 端口 
function GetRoomType(n)	{n=n*num;if(n<rooms.length)return rooms[n+4];else return 0;} 		// 房间分类 
function GetrType(n)	{n=n*num;if(n<rooms.length)return rooms[n+5];else return null;} 	// 支持语音.视频
function Getmaxnum(n)	{n=n*num;if(n<rooms.length)return rooms[n+6];else return 100;} 		// 最大在线数

/*登陆模块*/

function OnLogin(n) // 登录聊天室
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login.asp" ;
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

//-->
</SCRIPT>
<link rel="stylesheet" href="Sams.css" type="text/css">
<div align="center">
  <center> 
<table width="778" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111" height="643">
  <tr> 
    <td valign="top" width="209" height="641"> 

	  <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01o.gif"><br>
            :::<strong>最新公告</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
	  <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
		<td height="66" class="chinese" align="center" valign="top">
		<table width="90%"><tr><td>

<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="0">
        <tr> 
          <td height="1" align="center" class="newshead"></td>
        </tr>
        <tr> 
          <td height="1" align="center">
          </td>
        </tr>
        <tr> 
          <td align="center" class="chinese" height="129">

　</td>
        </tr>
        <tr> 
          <td align="center" class="chinese"></td>
        </tr>
      </table>







	</td></tr></table>
</td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>


	  <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01.gif"><br>
            :::<strong>统计信息</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
	  <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
		<td height="66" class="chinese" align="center">
		<table width="90%"><tr><td>

<table width="180" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="0">
        <tr> 
          <td height="1" align="center" class="newshead"></td>
        </tr>
        <tr> 
          <td height="1" align="center">
          </td>
        </tr>
        <tr> 
          <td align="center" class="chinese">

<table border="0" width="180" id="table4" cellspacing="0" cellpadding="0">
				<tr>
					<td width="55">开通房间:</td>
					<td width="34" align="right"><span class="newshead"><%=maxroom1%></span>　</td>
					<td width="23">间</td>
					<td width="32">运行:</td>
					<td width="17" align="right"><span class="newshead"><%=maxroom%></span>　</td>
					<td width="18">间</td>
				</tr>
				<tr>
					<td width="55">注册会员:</td>
					<td width="34" align="right"><span class="newshead"><%=maxuser%></span>　</td>
					<td width="23">人</td>
					<td width="32">在线:</td>
					<td width="17" align="right"><span class="newshead"><%=maxnum%></span>　</td>
					<td width="18">人</td>
				</tr>
				<tr>
					<td width="55">蓝天运行:</td>
					<td width="34" align="right"><span class="newshead"><%=bchatr%></span>　</td>
					<td width="23">间</td>
					<td width="32">在线:</td>
					<td width="17" align="right"><span class="newshead"><%=bchatn%></span>　</td>
					<td width="18">人</td>
				</tr>
				<tr>
					<td width="55">和韵运行:</td>
					<td width="34" align="right"><span class="newshead"><%=mechatr%></span>　</td>
					<td width="23">间</td>
					<td width="32">在线:</td>
					<td width="17" align="right"><span class="newshead"><%=mechatn%></span>　</td>
					<td width="18">人</td>
				</tr>
				<tr>
					<td width="55">相册照片:</td>
					<td width="34" align="right"><span class="newshead"><%=diarycount%></span>　</td>
					<td width="23">张</td>
					<td width="32">新闻:</td>
					<td width="17" align="right"><span class="newshead"><%=newscount%></span>　</td>
					<td width="18">篇</td>
				</tr>
				<tr>
					<td width="55">教学文章:</td>
					<td width="34" align="right"><span class="newshead"><%=articlecount%></span>　</td>
					<td width="23">篇</td>
					<td width="32">软件:</td>
					<td width="17" align="right"><span class="newshead"><%=softcount%></span>　</td>
					<td width="18">个</td>
				</tr>
				<tr>
					<td width="55">精品图库:</td>
					<td width="34" align="right"><span class="newshead"><%=piccount%></span>　</td>
					<td width="23">条</td>
					<td width="32">模板:</td>
					<td width="17" align="right"><span class="newshead"><%=gbcount%></span>　</td>
					<td width="18">套</td>
				</tr>
				</table>

          </td>
        </tr>
        <tr> 
          <td align="center" class="chinese"></td>
        </tr>
      </table>







	</td></tr></table>
</td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>

      <br> 

<%
opennews
sql="SELECT top "&indexnews&" news_ahome, news_author, news_date, news_id, news_title FROM news ORDER BY news_date DESC"   
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="58%" background="images/tablebg.gif">::<b> 最新动态 </b>:::</td>
    <td width="34%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
<table width="94%" border="0" cellspacing="0" cellpadding="0" align="center">
  <%do while not rs.eof%>
  <tr> 
    <td width="94%" height="25">&nbsp;<img border="0" src="images/new.gif">&nbsp;<a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank" title="<%=rs("news_title")%>"><%=left(rs("news_title"),11)%><%if len(rs("news_title"))>11 then response.write ".."%></a>
    </td>
  </tr>
  <tr> 
    <td valign="top" background="images/dotlineh.gif" height="2"></td>
  </tr>
  <%rs.movenext
		loop
		if rs.eof and rs.bof then%>
  <tr> 
    <td height="25" align="left" class="chinese"> 正在更新之中........</td>
  </tr>
  <%end if%>
  <%if not rs.eof or not rs.bof then%>
  <tr> 
    <td align="right" class="chinese"> <a href="news.asp"><img src="images/bottom.gif" border="0" alt="More News"></a> 
    </td>
  </tr>
  <%end if%>
</table>
<%
rs.close
set rs=nothing
%>
      

</td>
    <td width="4" background="images/dotlinev.gif" height="641"></td>
    <td width="4" valign="top" height="641"></td>
    <td width="555" valign="top" background="images/BG.gif" height="641"> 
      
      
    <table border="0" cellpadding="2" cellspacing="1" width="101%" id="AutoNumber1" height="646">
      <tr>
        <td width="100%" height="31" align="center" colspan="2">
        
<table width="544" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td height="5" width="17"></td>
  </tr>
  <tr> 
    <td width="17" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="488" background="images/tablebg.gif" >　<a target="_blank" href="../newuser/regadd.asp">用户注册</a>&nbsp; 
    <a href="../../newuser/usermima.asp">密码找回</a>&nbsp;
                  <a target="_blank" href="roomlist.asp">房间列表</a> &nbsp;房间分类&nbsp; <font color="#333399"><a target="_blank" href="paihang.asp">
                  排 行 榜</a></font>&nbsp; <font color="#4D6B88">
                  <a target="_blank" href="/admin">房间管理</a></font>&nbsp; 私房购买&nbsp;
              <a href="help">帮助中心</a></td>
    <td width="11" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="28" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
    <tr> 
    <td height="5" width="17"></td>
  </tr>
</table>

        </td>
      </tr>
                    <tr>
<form name="login" onsubmit="return false;" action="/userlogo.asp" method="post">
                <td width="100%" height="15" align="center" colspan="2">
                用户名:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=15 size=6 name=user title="会员请写会员编号,游客填写昵称就可以"></font> 
                        密码(游客不添):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="游客登陆无需密码"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1"></font>男 <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>女 &nbsp;验证码: <font color="#336699">
<input name="adminid" size="4" maxLength=4 style="border:1px inset; BACKGROUND-COLOR: #efefef"></font><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
                <font color="#336699">
                <input onclick="OnLogins();"  type="button" value="登陆" name="B1"> 
                <input type="hidden" name="ROOMID">
<input type="hidden" name="port"></td>
</form>
              </tr>
      <tr>
        <td width="66%" height="355" valign="top" align="center">
        <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber20" height="351">
                  <tr>
                    <td width="50%" height="17" bgcolor="#86D0FD" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-top-style: solid; border-top-width: 1" bordercolor="#86D0FD">
                    <font color="#2969AD">&nbsp;BChat<span lang="en">&reg;</span> 
                    火暴房间榜&nbsp; 
					</font>&nbsp;&nbsp; <a title="更多..." href="Roomlist.asp?C=B">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
                    <td width="2%" height="347" rowspan="2">　</td>
                    <td width="49%" height="17" bgcolor="#FF9999" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-top-style: solid; border-top-width: 1" bordercolor="#FF9999">
                    <font color="#BF004D">&nbsp;MeChat<span lang="en">&reg;</span> 
                    火爆房间榜&nbsp;&nbsp; </font>
					<a title="更多..." href="Roomlist.asp?C=E">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
                  </tr>
                  <tr>
                    <td width="50%" height="330" valign="top" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1" bordercolor="#86D0FD">                    
<div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber23">

<script>
	for(var i=0; i<14; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='100%' height=23>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>人)");
		if(GetrType(i)=="V")document.write("<img border=0 src=../images/eye.gif alt='视频语音聊天聊天'>");
		document.writeln("</TD></TR>");
	 	};    
	 }
  </script>


</table>
                      
                      
           
  </center>
</div>
                    
                    </td>
                    <td width="49%" height="330" valign="top" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1" bordercolor="#FF9999">
                    <div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber23">
<script>
	for(var i=14; i<28; i++) 
	{	
		if(i<(count)){
        document.writeln("<TR><td width='100%' height=23>");
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='室主:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>人)");
		if(GetrType(i)=="V")document.write("<img border=0 src=../images/eye.gif alt='视频语音聊天聊天'>");
		document.writeln("</TD></TR>");
	 	};    
	 }
  </script>

</table>

  </center>
</div>
                    
                    </td>
                  </tr>
                </table>

        
        </td>
        <td width="34%" height="355" valign="top" align="center" bordercolor="#339933">
		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="57">
			<tr>
				<td height="19" bgcolor="#008000" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#008000">
				<font color="#006600">&nbsp;</font><font color="#FFFFFF">特约聊天室</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#008000">
				<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="27">
                              <tr>
                                <td width="100%" height="25" align="center">
                               <a href="ROOMTY.ASP?page=1">特约一</a>&nbsp;<a href="ROOMTY.ASP?page=2">特约二</a>
								<a href="ROOMTY.ASP?page=3">特约三</a>&nbsp;<a href="ROOMTY.ASP?page=4">特约四</a>
							   </td>
                              </tr>
                              </table>
								</td>
			</tr>
			</table>
			<br>
		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="280">
			<tr>
				<td height="22" bgcolor="#CCFF99" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#CCFF99">
				<font color="#008000">&nbsp;</font><b><font color="#458A00">Top10 </font></b>
				<a target="_blank" href="paihang.asp"><font color="#008000">人气排行榜 </font></a></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#CCFF99" align="center" valign="top">
				<table border="0" width="178" id="table3" cellpadding="2">
				<%
				'Call Openchatconn
				set rss=server.createobject("adodb.recordset")
				sql="select top 10 id,roomname,total,num,admin from [web] ORDER BY TOTAL DESC"
				rss.open sql,chatconn,1,1
				i=1
				do while not rss.eof	
				%>
					<tr>
						<td width="114">
						<img border="0" src="../images/home.gif" width="14" height="14">
						<a target="_blank" href="http://<%=rss("id")%>.liaowan.com" title="排名Top:<%=i%> 室主:<%=rss("admin")%>"><%=rss("roomname")%></a><font color="#FFCC00">[<%=rss("num")%>]</font></td>
						<td width="50">
						<img border="0" src="../images/male.gif" width="9" height="15"><font color="#5BB700"> <%=rss("TOTAL")%></font></td>
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
        <td width="100%" height="35" valign="top" align="center" colspan="2">
		<table border="0" width="100%" id="table5" cellspacing="0" height="27" background="img/chord_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="img/chord_l.jpg" width="8" height="27"></td>
				<td>&nbsp; <font color="#458A00">房间分类</font></td>
				<td width="23">　</td>
				<td align="right" width="434">
				<img border="0" src="img/chord_r.jpg" width="54" height="27"></td>
			</tr>
		</table>
		</td>
        </tr>
      <tr>
        <td width="65%" height="99" align="center" valign="top">
        	<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="92">
			<tr>
				<td height="19" bgcolor="#CCFF99" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#B4ED87">
				<font color="#458A00">&nbsp;地区分类</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B4ED87">
				<div align="center">
				<table border="0" cellspacing="1" width="92%" id="AutoNumber27" height="62">
                              <tr>
                                <td width="100%" height="60">
                               
                                <a href="Roomdy.asp?id2=1">安徽</a>&nbsp;<a href="Roomdy.asp?id2=2">北京</a>&nbsp;<a href="Roomdy.asp?id2=3">重庆</a>&nbsp;<a href="Roomdy.asp?id2=4">福建</a>&nbsp;<a href="Roomdy.asp?id2=5">甘肃</a>
								<a href="Roomdy.asp?id2=6">广东</a>&nbsp;<a href="Roomdy.asp?id2=7">广西</a>&nbsp;<a href="Roomdy.asp?id2=8">贵州</a>&nbsp;<a href="Roomdy.asp?id2=9">海南</a>
								<a href="Roomdy.asp?id2=10">河北</a>
								<a href="Roomdy.asp?id2=12">河南</a><br>
								<a href="Roomdy.asp?id2=13">湖北</a>
								<a href="Roomdy.asp?id2=14">湖南</a>&nbsp;<a href="Roomdy.asp?id2=15">江苏</a>&nbsp;<a href="Roomdy.asp?id2=16">江西</a>
								<a href="Roomdy.asp?id2=17">吉林</a>&nbsp;<a href="Roomdy.asp?id2=18">辽宁</a>&nbsp;<a href="Roomdy.asp?id2=20">宁夏</a>&nbsp;<a href="Roomdy.asp?id2=21">青海</a>&nbsp;<a href="Roomdy.asp?id2=22">山东</a>
								<a href="Roomdy.asp?id2=23">上海</a>
                                <a href="Roomdy.asp?id2=24">山西</a><br>
								<a href="Roomdy.asp?id2=25">陕西</a>&nbsp;<a href="Roomdy.asp?id2=26">四川</a>&nbsp;<a href="Roomdy.asp?id2=27">天津</a>
								<a href="Roomdy.asp?id2=28">新疆</a>&nbsp;<a href="Roomdy.asp?id2=29">西藏</a>&nbsp;
								<a href="Roomdy.asp?id2=11">黑龙江</a>
								<a href="Roomdy.asp?id2=19">内蒙古</a>
								<a href="Roomdy.asp?id2=30">云南</a>&nbsp;<a href="Roomdy.asp?id2=31">浙江</a>&nbsp;<a href="Roomdy.asp?id2=32">香港</a><br>
								<a href="Roomdy.asp?id2=33">澳门</a>&nbsp;<a href="Roomdy.asp?id2=34">台湾</a>
                               
                               
 								</td>
                              </tr>
                              </table>



				</div>



				</td>
			</tr>
			</table>
        
        </td>
        <td width="35%" height="99" align="center" valign="top">
        		<table border="0" width="98%" id="table1" cellspacing="0" cellpadding="0" height="92">
			<tr>
				<td height="19" bgcolor="#CCFF99" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#B4ED87">
				<font color="#006600">&nbsp;</font><font color="#458A00">性质分类</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#CCFF99">
				<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="60">
                              <tr>
                                <td width="100%" height="58" align="center">
                               
 <a href="Roomfl.asp?RoomType=1">情感</a>
 <a href="Roomfl.asp?RoomType=2">地域</a>&nbsp;<a href="Roomfl.asp?RoomType=3">文学</a>&nbsp;<a href="Roomfl.asp?RoomType=4">音乐</a>&nbsp;<a href="Roomfl.asp?RoomType=5">游戏</a><br>
	<a href="Roomfl.asp?RoomType=6">投资</a>&nbsp;<a href="Roomfl.asp?RoomType=7">戏剧</a>&nbsp;<a href="Roomfl.asp?RoomType=8">中年</a>&nbsp;<a href="Roomfl.asp?RoomType=9">老年</a>&nbsp;<a href="Roomfl.asp?RoomType=10">宗教</a><br>
	<a href="Roomfl.asp?RoomType=11">教育</a>&nbsp;<a href="Roomfl.asp?RoomType=12">外语</a>&nbsp;<a href="Roomfl.asp?RoomType=13">爱好</a>&nbsp;<a href="Roomfl.asp?RoomType=14">校园</a>&nbsp;<a href="Roomfl.asp?RoomType=15">企业</a><br>
	<a href="Roomfl.asp?RoomType=16">会议</a>&nbsp;<a href="Roomfl.asp?RoomType=17">战友</a>&nbsp;<a href="Roomfl.asp?RoomType=18">交友</a>&nbsp;<a href="Roomfl.asp?RoomType=19">闲谈</a>&nbsp;<a href="Roomfl.asp?RoomType=20">其他</a></td>
                              </tr>
                              </table>

				</td>
			</tr>
			</table>
        
        
        </td>
      </tr>

      <tr>
        <td width="100%" height="74" valign="top" align="center" colspan="2">
		<a title="聊湾视频社区欢迎您！" target="_blank" href="http://liaowan.com/bbs">
		<img border="0" src="images/shequ.gif" width="138" height="67"></a><img border="0" src="images/show.gif" width="138" height="67"><img border="0" src="images/wenxue.gif" width="138" height="67"><img border="0" src="images/shop.gif" width="138" height="67"></td>
        </tr>        

 
    	</table>
      
      
    </td>
    <td width="6" valign="top" height="641">　</td>
  </tr>
  <tr> 
    <td height="2" background="images/dotlineh.gif" colspan=5 width="778"></td>
  </tr>
</table>
  </center>
</div>

<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td align="center" valign="top" width="25%"> 

<table border="0" width="778" id="table12" height="189" cellspacing="1">
	<tr>
			<td align="center" valign="top" height="25%" width="130">
		
		      　</td>
	
		<td align="center" valign="top" height="25%" width="165">
		
		      <TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_gif.jpg 
          height=25><b>舞の魅力</b></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=ccccc border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>
              <TR>
                <TD align=right width=39></TD>
                <TD align=middle width=117><A 
                  href="http://www.caishow.com/colorpic.asp?chn=10200001&amp;f=1815&amp;menu=yes&amp;float=" 
                  target=_blank><FONT 
              color=#666666>更多...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>

		<td align="center" valign="top" height="25%" width="165">
		
				      <TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_sp.jpg 
          height=25><b>旋律飑飚</b></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=#9DD8F4 border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>
              <TR>
                <TD align=right width=39></TD>
                <TD align=middle width=117><A 
                  href="http://www.caishow.com/colorpic.asp?chn=10200001&amp;f=1815&amp;menu=yes&amp;float=" 
                  target=_blank><FONT 
              color=#666666>更多...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
		<td align="center" valign="top" height="25%" width="165">
		
	<TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_sps.jpg 
          height=25><b>青春无限</b></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=#FF7DCD border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>
              <TR>
                <TD align=right width=39></TD>
                <TD align=middle width=117><A 
                  href="http://www.caishow.com/colorpic.asp?chn=10200001&amp;f=1815&amp;menu=yes&amp;float=" 
                  target=_blank><FONT 
              color=#666666>更多...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
		<td align="center" valign="top" height="25%" width="165">
		
	<TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_ser.jpg 
          height=25><b>友情岁月</b></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=156 bgColor=#FCCB84 border=0>
        <TBODY>
        <TR>
          <TD align=top>
            <TABLE style="COLOR: #666666" cellSpacing=0 cellPadding=0 width=156 
            bgColor=#ffffff border=0>
              <TBODY>
              <TR>
                <TD align=right width=39></TD>
                <TD align=middle width=117><A 
                  href="http://www.caishow.com/colorpic.asp?chn=10200001&amp;f=1815&amp;menu=yes&amp;float=" 
                  target=_blank><FONT 
              color=#666666>更多...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
	</tr>
</table>
	</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr> 
    <td height="110" width="181"> 

　</td>
    <td height="110" width="8"> 

　</td>
    <td height="110" width="589" align="center" valign="top"> 

<table border="0" width="100%" id="table11" cellspacing="1">
	<tr>
		<td width="100%" height="35" align="center" valign="top">
        		<table border="0" width="100%" id="table5" cellspacing="0" height="27" background="img/sp_m.jpg" cellpadding="0">
			<tr>
				<td width="11">
				<img border="0" src="img/sp_l.jpg" width="9" height="27"></td>
				<td>&nbsp;<font color="#CC0066"> 特色房间推荐</font></td>
				<td width="23">　</td>
				<td align="right" width="402">
				<img border="0" src="img/sp_r.jpg" width="55" height="27"></td>
			</tr>
		</table>
        
        </td>
      </tr>
      <tr>
        <td width="100%" height="237" align="center" valign="top">
        
        

		<table cellSpacing="1" cellPadding="0" width="100%" bgColor="#ff02a2" border="0" id="table5">
			<tr>
				<td align="top">


				<table cellSpacing="0" cellPadding="0" width="100%" bgColor="#ffffff" border="0" id="table6">
					<tr>


						<td>
						<table cellSpacing="0" cellPadding="0" width=100%" id="table7">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[秀舞魅力]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="miss monday" onclick="open_sp(2418);return false;" href="javascript:"><font color="#ff66cc">miss 
								monda</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="犬夜叉" onclick="open_sp(2284);return false;" href="javascript:"><font color="#ff66cc">犬夜叉</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="美丽心情" onclick="open_sp(2157);return false;" href="javascript:"><font color="#ff66cc">美丽心情</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="情不自禁（日文版)" onclick="open_sp(1969);return false;" href="javascript:"><font color="#ff66cc">情不自禁（日文版)</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="梦的点滴_梦のしずく(终有一天走进樱雨下)" onclick="open_sp(1293);return false;" href="javascript:"><font color="#ff66cc">梦的点滴_梦のしずく</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="easy breezy" onclick="open_sp(1258);return false;" href="javascript:"><font color="#ff66cc">easy 
								breez</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="seasons(超劲爆舞曲混音)" onclick="open_sp(1238);return false;" href="javascript:"><font color="#ff66cc">seasons(超劲</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="别以为" onclick="open_sp(1127);return false;" href="javascript:"><font color="#ff66cc">别以为</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="down by the salley garden" onclick="open_sp(1050);return false;" href="javascript:"><font color="#ff66cc">down 
								by th</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="月明かりの下" onclick="open_sp(1022);return false;" href="javascript:"><font color="#ff66cc">月明かりの下</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="天下无敌の爱" onclick="open_sp(1017);return false;" href="javascript:"><font color="#ff66cc">天下无敌の爱</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table8">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=1070&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[狂歌飑飙]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="如花来电(国)" onclick="open_sp(2748);return false;" href="javascript:"><font color="#9966cc">如花来电(国)</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="来者何人" onclick="open_sp(2744);return false;" href="javascript:"><font color="#9966cc">来者何人</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="呢个人非常卑鄙" onclick="open_sp(2742);return false;" href="javascript:"><font color="#9966cc">呢个人非常卑鄙</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="骑咧派传人" onclick="open_sp(2738);return false;" href="javascript:"><font color="#9966cc">骑咧派传人</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="007电话女版" onclick="open_sp(2737);return false;" href="javascript:"><font color="#9966cc">007电话女版</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="007电话男版" onclick="open_sp(2736);return false;" href="javascript:"><font color="#9966cc">007电话男版</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="厕所里的报纸" onclick="open_sp(2734);return false;" href="javascript:"><font color="#9966cc">厕所里的报纸</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="大笨象揸支枪" onclick="open_sp(2733);return false;" href="javascript:"><font color="#9966cc">大笨象揸支枪</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="刘翔稳你吃饭" onclick="open_sp(2682);return false;" href="javascript:"><font color="#9966cc">刘翔稳你吃饭</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="上次同你训左一觉" onclick="open_sp(2681);return false;" href="javascript:"><font color="#9966cc">上次同你训左一觉</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="王子啊" onclick="open_sp(2680);return false;" href="javascript:"><font color="#9966cc">王子啊</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table9">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=1040&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[话题多多]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="金钟罩铁布衫" onclick="open_sp(2712);return false;" href="javascript:"><font color="#ff66cc">金钟罩铁布衫</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="钟声1" onclick="open_sp(1822);return false;" href="javascript:"><font color="#ff66cc">钟声1</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="钟声" onclick="open_sp(1821);return false;" href="javascript:"><font color="#ff66cc">钟声</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="电话铃" onclick="open_sp(1806);return false;" href="javascript:"><font color="#ff66cc">电话铃</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="冲锋号" onclick="open_sp(1389);return false;" href="javascript:"><font color="#ff66cc">冲锋号</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="超酷吉他" onclick="open_sp(481);return false;" href="javascript:"><font color="#ff66cc">超酷吉他</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="钟声" onclick="open_sp(238);return false;" href="javascript:"><font color="#ff66cc">钟声</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="钟琴" onclick="open_sp(237);return false;" href="javascript:"><font color="#ff66cc">钟琴</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="中提琴" onclick="open_sp(236);return false;" href="javascript:"><font color="#ff66cc">中提琴</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="英国管" onclick="open_sp(235);return false;" href="javascript:"><font color="#ff66cc">英国管</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="小提琴" onclick="open_sp(234);return false;" href="javascript:"><font color="#ff66cc">小提琴</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table10">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=1020&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[中外交流]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="小狗”圆舞曲" onclick="open_sp(1365);return false;" href="javascript:"><font color="#9966cc">小狗”圆舞曲</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="“雨滴”前奏曲" onclick="open_sp(1364);return false;" href="javascript:"><font color="#9966cc">“雨滴”前奏曲</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="芬兰颂" onclick="open_sp(1363);return false;" href="javascript:"><font color="#9966cc">芬兰颂</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="蚱蜢与蜻蜓(“灰姑娘”芭蕾舞剧)" onclick="open_sp(1359);return false;" href="javascript:"><font color="#9966cc">蚱蜢与蜻蜓(“灰姑娘</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="高沙科夫-大黄蜂飞行" onclick="open_sp(1357);return false;" href="javascript:"><font color="#9966cc">高沙科夫-大黄蜂飞行</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="花之圆舞曲 (“胡桃夹子”芭蕾舞剧)" onclick="open_sp(1350);return false;" href="javascript:"><font color="#9966cc">花之圆舞曲 
								(“胡桃</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title=".“月光”钢琴奏鸣曲，第一乐章" onclick="open_sp(1349);return false;" href="javascript:"><font color="#9966cc">.“月光”钢琴奏鸣曲</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title=".“春天”小提琴奏鸣曲，第一乐章" onclick="open_sp(1348);return false;" href="javascript:"><font color="#9966cc">.“春天”小提琴奏鸣</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="鸡脚上的小屋...基辅大门 (图画展览会)" onclick="open_sp(1346);return false;" href="javascript:"><font color="#9966cc">鸡脚上的小屋...基</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="笑傲江湖(琴萧合奏)" onclick="open_sp(894);return false;" href="javascript:"><font color="#9966cc">笑傲江湖(琴萧合奏)</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="自由" onclick="open_sp(828);return false;" href="javascript:"><font color="#9966cc">自由</font></a></td>
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
	<tr>
		<td>　</td>
	</tr>
	</table>


</td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif" width="778" colspan="3"></td>
  </tr>
</table>
<div align="center">
  <center>
<table width="778" border="0" cellpadding="0" cellspacing="0" height="51" bgcolor="#FFFFFF">
  <tr> 
    <td width="778" height="50" bgcolor="#FFFFFF"><div align="center">
    　</div></td>
  </tr>
  <tr> 
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
  </center>
</div>
<%
rswebcount.close
set rswebcount=nothing
%><%call endpage()
end if
%></body></html>