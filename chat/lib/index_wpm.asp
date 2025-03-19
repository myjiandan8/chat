<%sub index_wpm()%>
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr valign="top"> 
    <td width="195" background="images/mkt_line.gif"><img src="images/mkt_hot.gif" width="195" height="41"></td>
    <td width="195" background="images/mkt_line.gif"><img src="images/mkt_new.gif" width="195" height="41"></td>
    <td width="195" background="images/mkt_line.gif"><img src="images/mkt_o.gif" width="195" height="41"></td>
    <td width="195" background="images/mkt_line.gif"><img src="images/mkt_down.gif" width="195" height="41"></td>
  </tr>
  <tr> 
    <td height="220" valign="top" background="images/mkt_bg.gif" class="line">
	<%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=8 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
	&nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),10)&"..."%></a> <br>
	<%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%>
	</td>
    <td height="220"  valign="top" background="images/mkt_bg.gif">
	<%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=10 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
	&nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),10)&"..."%></a> <br>
	<%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%>
	</td>
    <td height="220" valign="top" background="images/mkt_bg.gif">
	<%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=11 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
	&nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),10)&"..."%></a> <br>
	<%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%>
	</td>
    <td height="220" valign="top" background="images/mkt_bg2.gif">
	<%
	openarticle
	sql="select top 10 art_id,cat_id,art_title,art_date,art_count from art where cat_id=12 order by art_date DESC"
	set rs=server.createobject("adodb.recordset")
	rs.open sql,conn,1,1
	do while not rs.eof
	sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
	set rscat=server.createobject("adodb.recordset")
	rscat.open sql,conn,1,1%>
	&nbsp;&nbsp;<img src="images/none.gif"><img src="images/biao.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" title="<%=rs("art_title")%>,发表于<%=rs("art_date")%>,已经被阅读<%=rs("art_count")%>次。" target="_blank"><%=left(rs("art_title"),10)&"..."%></a> <br>
	<%
	rscat.close
	set rscat=nothing
	rs.movenext
	loop
	if rs.eof and rs.bof then
	response.write "&nbsp;正在更新之中........"
	end if
	%>
	</td>
  </tr>
  <tr> 
    <td colspan="4" height="1" background="images/mkt_line_bg.gif"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub
%>
