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
stats="遍匈"
dim founderr,errmsg
founderr=false
errmsg=""

if request("page")<>"" then
  if not isInteger(request("page")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>掲隈議id歌方。"
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
//旗鷹蝕兵 重云譜柴�坐�罷親室

<%
'及叱匈
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


var num=7, count=rooms.length/num; // count = 悳蝕慧型寂方, num=型寂方怏議Field方楚
function GetRoomname(n)	{n=n*num;if(n<rooms.length)return rooms[n+0];else return null;} 	// 型寂兆各,歌方n燕幣及叱倖型寂
function Getnum(n)		{n=n*num;if(n<rooms.length)return rooms[n+1];else return 0;} 		// 函誼峺協型寂壓�瀏吠�
function GetRoomAdmin(n){n=n*num;if(n<rooms.length)return rooms[n+2];else return null;} 	// 型寂麼繁
function GetRoomURL(n)	{n=n*num;if(n<rooms.length)return rooms[n+3];else return null;} 	// 極笥 
function GetRoomType(n)	{n=n*num;if(n<rooms.length)return rooms[n+4];else return 0;} 		// 型寂蛍窃 
function GetrType(n)	{n=n*num;if(n<rooms.length)return rooms[n+5];else return null;} 	// 屶隔囂咄.篇撞
function Getmaxnum(n)	{n=n*num;if(n<rooms.length)return rooms[n+6];else return 100;} 		// 恷寄壓�瀛�

/*鞠遜庁翠*/

function OnLogin(n) // 鞠村祖爺片
{
	if(!validstr(login.user))return ;
	
	window.open("about:blank", "chat","toolbar=no,location=no,directories=no,menubar=no,scrollbars=yes,resizable=yes") ;
	login.target = "chat" ;
	login.action = "/login.asp" ;
	login.port.value=GetRoomURL(n);
	login.submit() ;		
}

if(count<=0)alert("狼由危列��萩勝酔選大砿尖埀。"); // 泌惚型寂方葎0議三祥戻幣危列佚連

function validstr(str) // 刮屬喘薩兆
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("嬖薩|椿各音嬬葎腎��");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("嬖薩|兆忖嶄音嬬淫根蒙歩忖憲: +=|'#&<>%*`^/\\\";,.腎鯉.");
 		str.focus(); return false;
  }}}return true;
}

function validpass(str) // 刮屬畜鷹
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("畜鷹音嬬葎腎��");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("畜鷹嗤諒籾: +=|'#&<>%*`^/\\\";,.腎鯉.");
 		str.focus(); return false;
  }}}return true;
}


function OnLogins() // 鞠遜砿尖嶄伉

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
            :::<strong>恷仟巷御</strong>:::&nbsp;&nbsp;&nbsp;</td>
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
            :::<strong>由柴佚連</strong>:::&nbsp;&nbsp;&nbsp;</td>
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
					<td width="55">蝕宥型寂:</td>
					<td width="34" align="right"><span class="newshead"><%=maxroom1%></span>　</td>
					<td width="23">寂</td>
					<td width="32">塰佩:</td>
					<td width="17" align="right"><span class="newshead"><%=maxroom%></span>　</td>
					<td width="18">寂</td>
				</tr>
				<tr>
					<td width="55">廣過氏埀:</td>
					<td width="34" align="right"><span class="newshead"><%=maxuser%></span>　</td>
					<td width="23">繁</td>
					<td width="32">壓��:</td>
					<td width="17" align="right"><span class="newshead"><%=maxnum%></span>　</td>
					<td width="18">繁</td>
				</tr>
				<tr>
					<td width="55">清爺塰佩:</td>
					<td width="34" align="right"><span class="newshead"><%=bchatr%></span>　</td>
					<td width="23">寂</td>
					<td width="32">壓��:</td>
					<td width="17" align="right"><span class="newshead"><%=bchatn%></span>　</td>
					<td width="18">繁</td>
				</tr>
				<tr>
					<td width="55">才塹塰佩:</td>
					<td width="34" align="right"><span class="newshead"><%=mechatr%></span>　</td>
					<td width="23">寂</td>
					<td width="32">壓��:</td>
					<td width="17" align="right"><span class="newshead"><%=mechatn%></span>　</td>
					<td width="18">繁</td>
				</tr>
				<tr>
					<td width="55">�牴疸嫺�:</td>
					<td width="34" align="right"><span class="newshead"><%=diarycount%></span>　</td>
					<td width="23">嫖</td>
					<td width="32">仟療:</td>
					<td width="17" align="right"><span class="newshead"><%=newscount%></span>　</td>
					<td width="18">鐙</td>
				</tr>
				<tr>
					<td width="55">縮僥猟嫗:</td>
					<td width="34" align="right"><span class="newshead"><%=articlecount%></span>　</td>
					<td width="23">鐙</td>
					<td width="32">罷周:</td>
					<td width="17" align="right"><span class="newshead"><%=softcount%></span>　</td>
					<td width="18">倖</td>
				</tr>
				<tr>
					<td width="55">娼瞳夕垂:</td>
					<td width="34" align="right"><span class="newshead"><%=piccount%></span>　</td>
					<td width="23">訳</td>
					<td width="32">庁医:</td>
					<td width="17" align="right"><span class="newshead"><%=gbcount%></span>　</td>
					<td width="18">耗</td>
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
    <td width="58%" background="images/tablebg.gif">::<b> 恷仟強蓑 </b>:::</td>
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
    <td height="25" align="left" class="chinese"> 屎壓厚仟岻嶄........</td>
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
    <td width="488" background="images/tablebg.gif" >　<a target="_blank" href="../newuser/regadd.asp">喘薩廣過</a>&nbsp; 
    <a href="../../newuser/usermima.asp">畜鷹孀指</a>&nbsp;
                  <a target="_blank" href="roomlist.asp">型寂双燕</a> &nbsp;型寂蛍窃&nbsp; <font color="#333399"><a target="_blank" href="paihang.asp">
                  電 佩 茨</a></font>&nbsp; <font color="#4D6B88">
                  <a target="_blank" href="/admin">型寂砿尖</a></font>&nbsp; 暴型杭択&nbsp;
              <a href="help">逸廁嶄伉</a></td>
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
                喘薩兆:<font color="#003300"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=15 size=6 name=user title="氏埀萩亟氏埀園催,嗄人野亟蠻各祥辛參"></font> 
                        畜鷹(嗄人音耶):<font color="#336699"><INPUT style="border:1px inset; BACKGROUND-COLOR: #efefef" maxLength=12 size=6 name=pass type="password" title="嗄人鞠遜涙俶畜鷹"></font> <font color="#336699">
<INPUT type="radio" name="SEX" value="1"></font>槻 <font color="#336699"> <INPUT type="radio" name="SEX" value="2" ></font>溺 &nbsp;刮屬鷹: <font color="#336699">
<input name="adminid" size="4" maxLength=4 style="border:1px inset; BACKGROUND-COLOR: #efefef"></font><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
                <font color="#336699">
                <input onclick="OnLogins();"  type="button" value="鞠遜" name="B1"> 
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
                    諮羽型寂茨&nbsp; 
					</font>&nbsp;&nbsp; <a title="厚謹..." href="Roomlist.asp?C=B">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
                    <td width="2%" height="347" rowspan="2">　</td>
                    <td width="49%" height="17" bgcolor="#FF9999" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-top-style: solid; border-top-width: 1" bordercolor="#FF9999">
                    <font color="#BF004D">&nbsp;MeChat<span lang="en">&reg;</span> 
                    諮卯型寂茨&nbsp;&nbsp; </font>
					<a title="厚謹..." href="Roomlist.asp?C=E">
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
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='片麼:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>繁)");
		if(GetrType(i)=="V")document.write("<img border=0 src=../images/eye.gif alt='篇撞囂咄祖爺祖爺'>");
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
		document.writeln("<a href='javascript:OnLogin(" + i + ");' style='text-decoration: none' title='片麼:" + GetRoomAdmin(i) + "'>" + GetRoomname(i) + "</a>");
		document.writeln("(<font color=#ff0000><b>" + Getnum(i) + "</b></font>繁)");
		if(GetrType(i)=="V")document.write("<img border=0 src=../images/eye.gif alt='篇撞囂咄祖爺祖爺'>");
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
				<font color="#006600">&nbsp;</font><font color="#FFFFFF">蒙埃祖爺片</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#008000">
				<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="27">
                              <tr>
                                <td width="100%" height="25" align="center">
                               <a href="ROOMTY.ASP?page=1">蒙埃匯</a>&nbsp;<a href="ROOMTY.ASP?page=2">蒙埃屈</a>
								<a href="ROOMTY.ASP?page=3">蒙埃眉</a>&nbsp;<a href="ROOMTY.ASP?page=4">蒙埃膨</a>
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
				<a target="_blank" href="paihang.asp"><font color="#008000">繁賑電佩茨 </font></a></td>
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
						<a target="_blank" href="http://<%=rss("id")%>.liaowan.com" title="電兆Top:<%=i%> 片麼:<%=rss("admin")%>"><%=rss("roomname")%></a><font color="#FFCC00">[<%=rss("num")%>]</font></td>
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
				<td>&nbsp; <font color="#458A00">型寂蛍窃</font></td>
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
				<font color="#458A00">&nbsp;仇曝蛍窃</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B4ED87">
				<div align="center">
				<table border="0" cellspacing="1" width="92%" id="AutoNumber27" height="62">
                              <tr>
                                <td width="100%" height="60">
                               
                                <a href="Roomdy.asp?id2=1">芦師</a>&nbsp;<a href="Roomdy.asp?id2=2">臼奨</a>&nbsp;<a href="Roomdy.asp?id2=3">嶷伯</a>&nbsp;<a href="Roomdy.asp?id2=4">牽秀</a>&nbsp;<a href="Roomdy.asp?id2=5">己摩</a>
								<a href="Roomdy.asp?id2=6">鴻叫</a>&nbsp;<a href="Roomdy.asp?id2=7">鴻廉</a>&nbsp;<a href="Roomdy.asp?id2=8">酷巒</a>&nbsp;<a href="Roomdy.asp?id2=9">今掴</a>
								<a href="Roomdy.asp?id2=10">采臼</a>
								<a href="Roomdy.asp?id2=12">采掴</a><br>
								<a href="Roomdy.asp?id2=13">刷臼</a>
								<a href="Roomdy.asp?id2=14">刷掴</a>&nbsp;<a href="Roomdy.asp?id2=15">臭釦</a>&nbsp;<a href="Roomdy.asp?id2=16">臭廉</a>
								<a href="Roomdy.asp?id2=17">耳爽</a>&nbsp;<a href="Roomdy.asp?id2=18">蘇逓</a>&nbsp;<a href="Roomdy.asp?id2=20">逓歪</a>&nbsp;<a href="Roomdy.asp?id2=21">楳今</a>&nbsp;<a href="Roomdy.asp?id2=22">表叫</a>
								<a href="Roomdy.asp?id2=23">貧今</a>
                                <a href="Roomdy.asp?id2=24">表廉</a><br>
								<a href="Roomdy.asp?id2=25">病廉</a>&nbsp;<a href="Roomdy.asp?id2=26">膨寒</a>&nbsp;<a href="Roomdy.asp?id2=27">爺薯</a>
								<a href="Roomdy.asp?id2=28">仟舟</a>&nbsp;<a href="Roomdy.asp?id2=29">廉茄</a>&nbsp;
								<a href="Roomdy.asp?id2=11">菜霜臭</a>
								<a href="Roomdy.asp?id2=19">坪檀硬</a>
								<a href="Roomdy.asp?id2=30">堝掴</a>&nbsp;<a href="Roomdy.asp?id2=31">寃臭</a>&nbsp;<a href="Roomdy.asp?id2=32">�禪�</a><br>
								<a href="Roomdy.asp?id2=33">按壇</a>&nbsp;<a href="Roomdy.asp?id2=34">岬羅</a>
                               
                               
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
				<font color="#006600">&nbsp;</font><font color="#458A00">來嵎蛍窃</font></td>
			</tr>
			<tr>
				<td style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#CCFF99">
				<table border="0" cellspacing="1" width="100%" id="AutoNumber27" height="60">
                              <tr>
                                <td width="100%" height="58" align="center">
                               
 <a href="Roomfl.asp?RoomType=1">秤湖</a>
 <a href="Roomfl.asp?RoomType=2">仇囃</a>&nbsp;<a href="Roomfl.asp?RoomType=3">猟僥</a>&nbsp;<a href="Roomfl.asp?RoomType=4">咄赤</a>&nbsp;<a href="Roomfl.asp?RoomType=5">嗄老</a><br>
	<a href="Roomfl.asp?RoomType=6">誘彿</a>&nbsp;<a href="Roomfl.asp?RoomType=7">老丞</a>&nbsp;<a href="Roomfl.asp?RoomType=8">嶄定</a>&nbsp;<a href="Roomfl.asp?RoomType=9">析定</a>&nbsp;<a href="Roomfl.asp?RoomType=10">忱縮</a><br>
	<a href="Roomfl.asp?RoomType=11">縮圄</a>&nbsp;<a href="Roomfl.asp?RoomType=12">翌囂</a>&nbsp;<a href="Roomfl.asp?RoomType=13">握挫</a>&nbsp;<a href="Roomfl.asp?RoomType=14">丕坩</a>&nbsp;<a href="Roomfl.asp?RoomType=15">二匍</a><br>
	<a href="Roomfl.asp?RoomType=16">氏咏</a>&nbsp;<a href="Roomfl.asp?RoomType=17">媾嗔</a>&nbsp;<a href="Roomfl.asp?RoomType=18">住嗔</a>&nbsp;<a href="Roomfl.asp?RoomType=19">椀霧</a>&nbsp;<a href="Roomfl.asp?RoomType=20">凪麿</a></td>
                              </tr>
                              </table>

				</td>
			</tr>
			</table>
        
        
        </td>
      </tr>

      <tr>
        <td width="100%" height="74" valign="top" align="center" colspan="2">
		<a title="祖羅篇撞芙曝散哭艇��" target="_blank" href="http://liaowan.com/bbs">
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
          height=25><b>玲の�帆�</b></TD></TR></TBODY></TABLE>
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
              color=#666666>厚謹...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>

		<td align="center" valign="top" height="25%" width="165">
		
				      <TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_sp.jpg 
          height=25><b>傴舵讒谺</b></TD></TR></TBODY></TABLE>
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
              color=#666666>厚謹...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
		<td align="center" valign="top" height="25%" width="165">
		
	<TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_sps.jpg 
          height=25><b>楳敢涙��</b></TD></TR></TBODY></TABLE>
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
              color=#666666>厚謹...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
		</td>
		<td align="center" valign="top" height="25%" width="165">
		
	<TABLE cellSpacing=0 cellPadding=0 width=158 border=0>
        <TBODY>
        <TR>
          <TD align=middle width=158 background=showpic/order_ser.jpg 
          height=25><b>嗔秤槙埖</b></TD></TR></TBODY></TABLE>
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
              color=#666666>厚謹...</FONT></A></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
		
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
				<td>&nbsp;<font color="#CC0066"> 蒙弼型寂容呪</font></td>
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
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[倔玲�帆�]</font></a></td>
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
								<td colSpan="2" height="17">&nbsp;<a title="溌匚我" onclick="open_sp(2284);return false;" href="javascript:"><font color="#ff66cc">溌匚我</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="胆洗伉秤" onclick="open_sp(2157);return false;" href="javascript:"><font color="#ff66cc">胆洗伉秤</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="秤音徭鋤��晩猟井)" onclick="open_sp(1969);return false;" href="javascript:"><font color="#ff66cc">秤音徭鋤��晩猟井)</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="知議泣砧_知のしずく(嶮嗤匯爺恠序咤嚏和)" onclick="open_sp(1293);return false;" href="javascript:"><font color="#ff66cc">知議泣砧_知のしずく</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="easy breezy" onclick="open_sp(1258);return false;" href="javascript:"><font color="#ff66cc">easy 
								breez</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="seasons(階匠卯玲爆詞咄)" onclick="open_sp(1238);return false;" href="javascript:"><font color="#ff66cc">seasons(階匠</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="艶參葎" onclick="open_sp(1127);return false;" href="javascript:"><font color="#ff66cc">艶參葎</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="down by the salley garden" onclick="open_sp(1050);return false;" href="javascript:"><font color="#ff66cc">down 
								by th</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="埖苧かりの和" onclick="open_sp(1022);return false;" href="javascript:"><font color="#ff66cc">埖苧かりの和</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="爺和涙黍の握" onclick="open_sp(1017);return false;" href="javascript:"><font color="#ff66cc">爺和涙黍の握</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table8">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=1070&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[髄梧讒讚]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="泌雑栖窮(忽)" onclick="open_sp(2748);return false;" href="javascript:"><font color="#9966cc">泌雑栖窮(忽)</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="栖宀採繁" onclick="open_sp(2744);return false;" href="javascript:"><font color="#9966cc">栖宀採繁</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="椿倖繁掲械碓栄" onclick="open_sp(2742);return false;" href="javascript:"><font color="#9966cc">椿倖繁掲械碓栄</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="楠炒塗勧繁" onclick="open_sp(2738);return false;" href="javascript:"><font color="#9966cc">楠炒塗勧繁</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="007窮三溺井" onclick="open_sp(2737);return false;" href="javascript:"><font color="#9966cc">007窮三溺井</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="007窮三槻井" onclick="open_sp(2736);return false;" href="javascript:"><font color="#9966cc">007窮三槻井</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="嘩侭戦議烏崕" onclick="open_sp(2734);return false;" href="javascript:"><font color="#9966cc">嘩侭戦議烏崕</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="寄運�黨袂�嚢" onclick="open_sp(2733);return false;" href="javascript:"><font color="#9966cc">寄運�黨袂�嚢</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="装�萠板祿垠�" onclick="open_sp(2682);return false;" href="javascript:"><font color="#9966cc">装�萠板祿垠�</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="貧肝揖低儺恣匯状" onclick="open_sp(2681);return false;" href="javascript:"><font color="#9966cc">貧肝揖低儺恣匯状</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="藍徨亜" onclick="open_sp(2680);return false;" href="javascript:"><font color="#9966cc">藍徨亜</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table9">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=1040&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[三籾謹謹]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="署嶝孛鑓下廟" onclick="open_sp(2712);return false;" href="javascript:"><font color="#ff66cc">署嶝孛鑓下廟</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="嶝蕗1" onclick="open_sp(1822);return false;" href="javascript:"><font color="#ff66cc">嶝蕗1</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="嶝蕗" onclick="open_sp(1821);return false;" href="javascript:"><font color="#ff66cc">嶝蕗</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="窮三槽" onclick="open_sp(1806);return false;" href="javascript:"><font color="#ff66cc">窮三槽</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="喝傑催" onclick="open_sp(1389);return false;" href="javascript:"><font color="#ff66cc">喝傑催</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="階吹耳麿" onclick="open_sp(481);return false;" href="javascript:"><font color="#ff66cc">階吹耳麿</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="嶝蕗" onclick="open_sp(238);return false;" href="javascript:"><font color="#ff66cc">嶝蕗</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="嶝肺" onclick="open_sp(237);return false;" href="javascript:"><font color="#ff66cc">嶝肺</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="嶄戻肺" onclick="open_sp(236);return false;" href="javascript:"><font color="#ff66cc">嶄戻肺</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="哂忽砿" onclick="open_sp(235);return false;" href="javascript:"><font color="#ff66cc">哂忽砿</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="弌戻肺" onclick="open_sp(234);return false;" href="javascript:"><font color="#ff66cc">弌戻肺</font></a></td>
								<td width="1" background="img/dot1.gif">　</td>
							</tr>
						</table>
						</td>
						<td>
						<table cellSpacing="0" cellPadding="0" width="100%" id="table10">
							<tr>
								<td width="125" bgColor="#ffe7f7" height="24">&nbsp;<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=1020&menu=yes&f=1815&menu=yes&float="><font color="#9966cc">[嶄翌住送]</font></a></td>
								<td align="middle" width="65" bgColor="#ffe7f7" height="24">
								<a target="_blank" href="http://c02.caishow.com/sp1.asp?orderby=1&chn=10801004&menu=yes&f=1815&menu=yes&float=">
								<img height="9" src="img/more1.gif" width="27" border="0"></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="弌昂￣垈玲爆" onclick="open_sp(1365);return false;" href="javascript:"><font color="#9966cc">弌昂￣垈玲爆</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="＾嚏砧￣念怙爆" onclick="open_sp(1364);return false;" href="javascript:"><font color="#9966cc">＾嚏砧￣念怙爆</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="繋声北" onclick="open_sp(1363);return false;" href="javascript:"><font color="#9966cc">繋声北</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="鯑鳰嚥鰡鰕(＾子甲弟￣暗碩玲丞)" onclick="open_sp(1359);return false;" href="javascript:"><font color="#9966cc">鯑鳰嚥鰡鰕(＾子甲弟</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="互紐親健-寄仔隙敬佩" onclick="open_sp(1357);return false;" href="javascript:"><font color="#9966cc">互紐親健-寄仔隙敬佩</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="雑岻垈玲爆 (＾鮭孟斜徨￣暗碩玲丞)" onclick="open_sp(1350);return false;" href="javascript:"><font color="#9966cc">雑岻垈玲爆 
								(＾鮭孟</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title=".＾埖高￣菰肺怙貯爆��及匯赤嫗" onclick="open_sp(1349);return false;" href="javascript:"><font color="#9966cc">.＾埖高￣菰肺怙貯爆</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title=".＾敢爺￣弌戻肺怙貯爆��及匯赤嫗" onclick="open_sp(1348);return false;" href="javascript:"><font color="#9966cc">.＾敢爺￣弌戻肺怙貯</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="痔重貧議弌塁...児絹寄壇 (夕鮫婢誓氏)" onclick="open_sp(1346);return false;" href="javascript:"><font color="#9966cc">痔重貧議弌塁...児</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="丶袷臭刷(肺��栽怙)" onclick="open_sp(894);return false;" href="javascript:"><font color="#9966cc">丶袷臭刷(肺��栽怙)</font></a></td>
							</tr>
							<tr>
								<td colSpan="2" height="17">&nbsp;<a title="徭喇" onclick="open_sp(828);return false;" href="javascript:"><font color="#9966cc">徭喇</font></a></td>
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