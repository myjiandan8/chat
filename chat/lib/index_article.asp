<%sub index_article()
openarticle
sql="select top "&indexarticle&" art_id,cat_id,art_title,art_date,art_count from art order by art_date DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%> 
<table width="100%" border="0" cellspacing="0" cellpadding="1" align="center">
  <%do while not rs.eof
sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
set rscat=server.createobject("adodb.recordset")
rscat.open sql,conn,1,1%>
  <tr> 
    <td width="6%" align="center"><img src="images/ico.png"> 
    </td>
    <td class="chinese" width="96%"><a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=rs("art_title")%></a> 
      &nbsp;[<a href="article.asp?cat_id=<%=rscat("cat_id")%>" target="_blank"><%=rscat("cat_name")%></a>] 
    </td>
  </tr>
  <tr> 
    <td height="1" colspan="2" background="images/dotlineh.gif"></td>
  </tr>
  <%
rscat.close
set rscat=nothing
rs.movenext
loop
if rs.eof and rs.bof then
%>
  <tr> 
    <td class="chinese" colspan="2">正在更新之中........</td>
  </tr>
  <%end if%>
      <%if not rs.eof or not rs.bof then%>
  <tr> 
    <td colspan="2" align="right" class="chinese">&nbsp;</td>
  </tr>
  <%end if%>
</table>
<%
rs.close
set rs=nothing
end sub
%>
