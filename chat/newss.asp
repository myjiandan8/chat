<%sub index_news()
opennews
sql="SELECT top "&indexnews&" news_ahome, news_author, news_date, news_id, news_title FROM news ORDER BY news_date DESC"   
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="58%" background="images/tablebg.gif" class="newshead">&nbsp;:: 
      最新动态 ::</td>
    <td width="34%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
  <%do while not rs.eof%>
  <tr> 
    <td width="94%" height="25">&nbsp;<img border="0" src="images/new.gif">&nbsp;<a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank"><%=left(rs("news_title"),12)%><%if len(rs("news_title"))>12 then response.write "..."%></a>
    </td>
  </tr>
  <tr> 
    <td valign="top" background="images/dotlineh.gif" height="1"></td>
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
end sub%>