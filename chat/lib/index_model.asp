<%sub index_model()
openmodel
sql="SELECT top 8 showurl,cs_pic FROM coolsites ORDER BY cs_id DESC"   
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%> 
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr><td height="5"></td></tr>
 <tr><td align="center">
 <%do while not rs.eof%>
<img src="<%=rs("cs_pic")%>" border="1" width="170" height="130" onclick="window.open('<%=rs("showurl")%>');return false;" style="CURSOR: hand;filter:alpha(opacity=60)" onmouseover="javascript:toup2(this)"  onMouseOut="javascript:todown2(this)">&nbsp;
  <%rs.movenext
	loop
%>
  </td>
  </tr>
  <tr> 
    <td colspan="2" align="right"><a href="model.asp">全新视觉 全新感受 ........&nbsp;&nbsp;&nbsp;<img src="images/bottom.gif" border="0" alt="More News"></a></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>