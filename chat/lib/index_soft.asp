<%sub index_soft()
opendown
sql="select top "&indexsoft&" soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount from soft order by soft_joindate DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%> 
<table width="100%" border="0" cellspacing="0" cellpadding="1" align="center">
  <%do while not rs.eof%>
  <tr> 
    <td class="chinese" width="6%" align="center"><img src="images/down.png"></td>
    <td height="24" class="chinese"><a href="showsoft.asp?soft_id=<%=rs("soft_id")%>" target="_blank" title="<%=rs("soft_name")%>,已经被下载<%=rs("soft_dcount")%>次"><%=rs("soft_name")%></a>&nbsp;[<font color="#ff6600"><%=rs("soft_dcount")%></font>/<font color="#ff6600"><%=rs("soft_rcount")%></font>] </td>
  </tr>
  <tr> 
    <td height="1" colspan="2"background="images/dotlineh.gif"></td>
  </tr>
  <%rs.movenext
loop
if rs.eof and rs.bof then%>
  <tr> 
    <td class="chinese" colspan="2">正在更新之中........</td>
  </tr>
  <%end if%>
    <%if not rs.eof or not rs.bof then%>
  <tr> 
    <td colspan="2" align="right" class="chinese">&nbsp; </td>
  </tr>
  <%end if%>
</table>
<%
rs.close
set rs=nothing
end sub
%>
