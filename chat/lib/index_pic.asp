<%sub index_pic()
openpic
sql="SELECT top 4 cs_pic,cs_id FROM pic ORDER BY cs_id DESC"   
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%> 
<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
 <tr><td height="5"></td></tr>
 <tr><td align="center">
 <%do while not rs.eof%>
<img src="<%=rs("cs_pic")%>" border="1" onclick="window.open('picredirectcs.asp?cs_id=<%=rs("cs_id")%>','newwin');return false;" style="CURSOR: hand;filter:alpha(opacity=70)" onmouseover="javascript:toup2(this)"  onMouseOut="javascript:todown2(this)">&nbsp;
  <%rs.movenext
	loop
%>
  </td>
  </tr>
  <tr> 
    <td colspan="2" align="right"><a href="z_pic.asp">个性、创意、新锐..........&nbsp;&nbsp;&nbsp;
<img src="images/bottom.gif" border="0" alt="More News"></a></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>