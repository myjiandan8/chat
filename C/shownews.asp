<!--数据库连接文件#include file="cool.asp" -->
<!--#include file="UBB_news.asp" -->
<!--#include file="format.asp" -->
<%
if InStr(ContentEncode(Request("news_id")), " ") > 0 then response.end
sql="select * from news where news_id="& request("news_id") &" and roomid=" & id
rs.open sql,conn,1,3
if rs.eof and rs.bof then
response.write "错误参数"
response.end 
end if
rs("news_count") = rs("news_count")+1
rs.update
%>
<html><head><title><%=rs("news_title")%> - <%=roomname%> 视频聊天 语音聊天 聊湾</title>
<style type="text/css">
<!--
.yin1 {	FILTER: DropShadow(Color=#ffffff, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.yin2 {	BORDER-BOTTOM: #000000 1px solid; BORDER-TOP: #000000 1px solid; FILTER: DropShadow(Color=#ffffcc, OffX=1, OffY=1, Positive=1); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt; }
.yin3 {	FILTER: DropShadow(Color=#ffffFF, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 10pt}
-->
</style>
<script language="JavaScript">
<!-- 
function doZoom(size){
	document.getElementById('zoom').style.fontSize=size+'px'
}
var NS4 = (document.layers);  
var IE4 = (document.all);
var win = window;   
var n   = 0;
function findIt() {
	if (searchstr.value != "")
		findInPage(searchstr.value);
}
// -->
</script>
<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/Style.css" rel=stylesheet>
</HEAD>
<BODY marginheight="0" topmargin="0">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" height="86">
  <tr>
    <td width="100%" height="86" background="images/top.gif" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4" height="83">
      <tr>
                <td width="100%" height="30"  style="position:relative">　
<div id="Layer2" align="center" style="position:absolute; left:520px; top:4px; width:183px; height:81px; z-index:1">

<%	if index_logo<>"" then %>
<img border="0" src="<%=index_logo%>">
<% else %>
<img border="0" src="images/logoo.gif">
<% end if%>
</div>　
        
        </td>
      </tr>
      <tr>
        <td width="100%" height="23" class="yin1">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber6">
          <tr>
            <td width="26%">&nbsp;　<font color="#828282"><%=id%>.LiaoWan.com</font></td>
            <td width="47%">
            <p align="right"><font color="#828282"><a href="http://<%=id%>.LiaoWan.com"><font color="#828282"><%=roomname%></font></a> - 视频语音聊天室</font></td>
            <td width="27%"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td width="100%" height="30" valign="bottom">
              <font color="#FF0000">&nbsp;</font></td>
      </tr>
    </table>
    </td>
  </tr>
  </table></center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber1" height="88">
    <tr>
      <td width="100%" height="52" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7" height="74">
        <tr>
          <td width="70%" height="74" align="center">
          <img border="0" src="../images/banr.gif" width="468" height="60"></td>
          <td width="2%" height="74">　</td>
          <td width="28%" height="74">
          <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#ADADAD" width="185" id="AutoNumber8" height="60" bgcolor="#F7F7F7">
            <tr>
              <td width="183" height="60" valign="top">
              <div align="center">
                <center>
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="95%" id="AutoNumber9" height="61">
                  <tr>
                    <td width="50%" height="23" align="center">
                    <img border="0" src="images/forum_readme.gif"> 
					<A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://<%=id%>.liaowan.com');" 
                        href="javascript:;" style="text-decoration: none">
    				设为首页</A></td>
                    <td width="50%" height="23" align="center">
                    <img border="0" src="images/forum_readme.gif"> 
					<a style="text-decoration: none" href="javascript:window.external.AddFavorite('http://<%=id%>.liaowan.com',%20'<%=roomname%>%20-%20视频聊天%20语音聊天%20聊湾')">收藏本房</a></td>
                  </tr>
                  <tr>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif">
              		<a target="_blank" href="../newuser/regadd.asp">用户注册</a> </td>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif">
              		<a target="_blank" href="../newuser/usermima.asp">密码找回</a> </td>
                  </tr>
                  <tr>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif">
                    <a target="_blank" href="http://liaowan.com/admin">房间管理</a></td>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif"> 帮助信息</td>
                  </tr>
                </table>
                </center>
              </div>
              </td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="100%" height="1" bgcolor="#ADADAD"></td>
    </tr>
    </tr>
    <tr>
      <td width="100%" height="12" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" background="images/bg.gif">
      </td>
    </tr>
    <tr>
      <td width="100%" height="1" bgcolor="#ADADAD"></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber1" height="317">
    <tr>
      <td width="100%" height="269" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber10" height="529" bgcolor="#F1F2F2">
        <tr>
          <td width="100%" height="19" valign="top" colspan="5">
       
          
          　</td>
          
        </tr>
        <tr>
          <td width="2%" height="513" valign="top">
       
          
          　</td>
          
          <td width="28%" height="513" valign="top">
          
	<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
            :::<strong>热点推荐</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      
	  <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
		<td height="66" class="chinese" align="center">
		<table width="90%"><tr><td>
<%
set rsr = server.createobject("adodb.recordset")
sql="select top 10 news_id,news_title,news_date from news where roomid="& id &" order by news_count DESC"
rsr.open sql,conn,1,1 
	if rsr.bof and rsr.eof then 
		response.write "很抱歉！内容正在更新之中！" 
	else 
	do while not rsr.eof 
	    response.write "<a href=shownews.asp?news_id="&rsr("news_id")&">"&rsr("news_title")&"</a><br>"
        rsr.movenext     
	loop 
	end if  
	rsr.close 
 %>
	</td></tr></table>
</td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>    
          　</td>
          
          <td width="1%" height="513" valign="top">
          
          
           　</td>
          
          <td width="72%" height="513" valign="top">
          

<div align="center">
<table width="462" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="10"></td>
  </tr>
  <tr> 
    <td width="462" valign="top">
	<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="3%" background="images/tablebg.gif">　</td>
          <td background="images/tablebg.gif">作者：<%=rs("news_ahome")%>&nbsp;<%=rs("news_author")%>
            更新日期：<%=rs("news_date")%> 阅读次数：<%=rs("news_count")%></td>
          <td width="1%" align="right" background="images/tablebg.gif">　</td>
        </tr>
      </table> 
      <br>
	  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
		<td align="center"> </td>
		<td align="center">查看:[ <a href="javascript:doZoom(16)">大字</a> <a href="javascript:doZoom(14)">中字</a> <a href="javascript:doZoom(12)">小字</a> ]</td>
		</tr>
	  </table>
	  <br>
      <table width="99%" border="0" cellspacing="1" cellpadding="6" align="center">
        <tr> 
          <td  id="zoom"> <span class="line">
            <div align="center"><b><%=rs("news_title")%></b></div>
            <br>　　<%=ubb2html(formatStr(autourl(rs("news_content"))),true,true)%> <br><br>
            <div align="right">
             <a href="javascript:;">【发送给朋友】</a> 
              <a href="javascript:window.print()">【打印页面】</a> <a href="javascript:window.close()">【关闭窗口】</a>
            </div>
            &nbsp;&nbsp;&nbsp;
            <font color="#eeeeee">----------------------------------------------------------</font><b>相关新闻</b><br>
            <%sql="select top 10 * from news where news_content like '%"&rs("news_keyword")&"%' and news_id <> "&rs("news_id") & " and roomid="& id &" order by news_date DESC"
			set rs2=server.createobject("adodb.recordset")
            rs2.open sql,conn,1,1
			do while not rs2.eof
            %>
            <a href="shownews.asp?news_id=<%=rs2("news_id")%>"><%=rs2("news_title")%></a> <%=rs2("news_date")%><br>
            <%
			rs2.movenext
			loop
			if rs2.eof and rs2.bof then
			response.write "没有相关新闻"
			end if
			rs2.close
			set rs2=nothing
			%></span>
          </td>
        </tr>
      </table>
      <br>
    </td>
  </tr>
  <tr> 
    <td background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>

          
           </div>
　</td>
          
          <td width="1%" height="513" valign="top">
          
          
           　</td>
        </tr>
        <tr>
          <td width="100%" height="19" colspan="5">　</td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber2">
    <tr>
      <td width="100%" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" bgcolor="#FF7201" height="5"></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber3">
    <tr>
      <td width="100%" height="51" background="images/di.jpg" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="33">
        <tr>
          <td width="100%" height="17"></td>
        </tr>
        <tr>
          <td width="100%" height="16">
          <p align="center">本聊天室由<a target="_blank" href="http://www.bluesky.com.cn/">蓝天工作室</a>&amp;<a target="_blank" href="http://www.mechat.com">和韵科技</a>&amp;<a target="_blank" href="http://lwoo.net">龙软</a>提供软件和技术支持 
          Powered by <a target="_blank" href="http://liaowan.com/">聊湾</a> 1999 - 
          2004</td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  </center>
</div>
</body></html>