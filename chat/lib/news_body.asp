<%sub news_body()
dim totalnews,Currentpage,totalpages,i
opennews
sql="select news_id,news_title,news_date from news order by news_date DESC"
if request("type")=1 then
sql="select top 10 news_id,news_title,news_date from news order by news_date DESC"
elseif request("type")=2 then
sql="select news_id,news_title,news_date from news order by news_date DESC"
elseif request("type")=3 then
sql="select news_id,news_title,news_date from news order by news_date ASC"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td colspan="3" height="10"></td>
  </tr>
  <tr> 
    <td width="554" valign="top"> 
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td class="chinese">
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
                <td width="31%" background="images/tablebg.gif">&nbsp;:::::最新动态::::::</td>
                <td width="57%" align="right" background="images/tablebg.gif"> 
                  <%if request("type")=1 then%>
                  最新的10篇新闻 
                  <%else%>
                  共有<span class="newshead"><%=rs.recordcount%></span>篇新闻 
                  <%end if%>
                </td>
                <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
              </tr>
            </table> </td>
        </tr>
      </table>
      <table width="96%" border="0" cellspacing="1" cellpadding="3" align="center">
        <%
if not rs.eof then
rs.movefirst
rs.pagesize=newsperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalnews=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*newsperpage<totalnews then
	       rs.move(currentpage-1)*newsperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalnews mod newsperpage)=0 then
      totalpages=totalnews\newsperpage
   else
      totalpages=totalnews\newsperpage+1
   end if
i=0
do while not rs.eof and i<newsperpage
%>
        <tr> 
          <td bgcolor="#FFFFFF" width="2%" height="25" class="chinese">　</td>
          <td bgcolor="#FFFFFF" width="98%" class="chinese"><img border="0" src="img/dian.gif" width="11" height="7">&nbsp; <a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank"><%=rs("news_title")%></a> 
            --- <font color="#CCCCCC"><%=rs("news_date")%></font></td>
        </tr>
		<tr><td height="1" background="images/dotlineh.gif" colspan=2></td></tr>
        <%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
        <tr> 
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">当前没有新闻！</td>
        </tr>
        <%end if
end if%>
      </table>
      <%if not request("type")=1 then%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="news.asp">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>页,<%=totalnews%>条记录/<%=newsperpage%>篇每页. 
              <%
i=1
showye=totalpages
if showye>10 then
showye=10
end if
for i=1 to showye
if i=currentpage then
%>
              <%=i%> 
              <%else%>
              <a href="news.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="news.asp?page=<%=page%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
          </tr>
        </form>
      </table>
      <%end if%>
      <br>
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
      </table>
	  
	  </td>
  </tr>
  <tr> 
    <td colspan="3" background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>
<%end sub%>