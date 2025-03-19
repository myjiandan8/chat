<%sub shownews_body()
opennews
sql="select * from news where news_id="&request.querystring("news_id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if rs.eof and rs.bof then
response.write "错误参数"
response.end 
end if
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td colspan="3" height="10"></td>
  </tr>
  <tr> 
    <td width="554" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td background="images/tablebg.gif">作者：<%=rs("news_ahome")%>&nbsp;<%=rs("news_author")%>
            更新日期：<%=rs("news_date")%> 阅读次数：<%=rs("news_count")%></td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table> 
      <br>
	  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
		<td align="center">搜索:<input type="text" name="searchstr" size="10" class="input">
<input type="button" value="Search" onclick="javascript:findIt();" class="input"></td>
		<td align="center">查看:[ <a href="javascript:doZoom(16)">大字</a> <a href="javascript:doZoom(14)">中字</a> <a href="javascript:doZoom(12)">小字</a> ]</td>
		</tr>
	  </table>
	  <br>
      <table width="98%" border="0" cellspacing="1" cellpadding="6" align="center">
        <tr> 
          <td  id="zoom"> <span class="line">
            <div align="center"><b><%=rs("news_title")%></b></div>
            <br>　　<%=ubb2html(formatStr(autourl(rs("news_content"))),true,true)%> <br><br><div align="right"><!--#include file="bottom_news.inc"--></div>
            &nbsp;&nbsp;&nbsp;
            <font color="#eeeeee">-------------------------------------------------------------------------------------</font><b>相关新闻</b><br>
            <%sql="select top 10 * from news where news_content like '%"&rs("news_keyword")&"%' and news_id <> "&rs("news_id")&" order by news_date DESC"
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
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="205" align="center" valign="top"> 
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
<%set rs = server.createobject("adodb.recordset")
sql="select top 10 news_id,news_title,news_date from news order by news_count DESC"
rs.open sql,conn,1,1 
	if rs.bof and rs.eof then 
		response.write "很抱歉！内容正在更新之中！" 
	else 
	do while not rs.eof 
	    response.write "<a href=shownews.asp?news_id="&rs("news_id")&">"&rs("news_title")&"</a><br>"
        rs.movenext     
	loop 
	end if  
	rs.close 
    set rs=nothing%>
	</td></tr></table>
</td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td colspan="3" background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>
<%
end sub%>
