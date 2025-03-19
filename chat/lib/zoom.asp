<%
sub index_vote()
openadmin
today=formatdatetime(now(),2)
sql="select top 1 * from votetopic where vt_expiredate>="&today&" order by vt_id desc"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
if not rs.eof then
%>
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
          
    <td height="40" align="right" background="images/lefttablo_01.gif" class="newshead"><br>
      ::: Vote :::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
   <%if request.cookies("npw")("voted")<>"yes" then%>   
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif" class="chinese">
  <form name="form1" method="post" action="savevote.asp" target="_blank">
    <tr> 
      <td height="10" colspan="2"></td>
    </tr>
    <tr> 
      <td width="16%" align="center">&nbsp;</td>
      <td width="84%"><%=rs("vt_name")%></td>
    </tr>
    <%sql="select * from voteitem where vt_id="&rs("vt_id")
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
do while not rs2.eof
%>
    <tr> 
      <td align="center">&nbsp; </td>
      <td><input type="radio" name="item_id" value="<%=rs2("item_id")%>" class="textarea"> 
        <%=rs2("item_name")%></td>
    </tr>
    <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
    <tr> 
      <td colspan="2" align="center">当前没有投票选项！</td>
    </tr>
    <%end if
rs2.close
set rs2=nothing%>
    <tr> 
      <td height="30" align="center">&nbsp;</td>
      <td height="30"><input type="submit" name="Submit2" value="投票" class="input"> 
        <input type="button" name="Button" value="结果" class="input" onclick="window.open('showvote.asp?vt_id=<%=rs("vt_id")%>','newwin','width=230,height=248');return false;"></td>
    </tr>
    <tr valign="bottom"> 
      <td colspan="2" align="center"><img src="images/lefttablo_05.gif"></td>
    </tr>
    <input name="itemname" type="hidden" value="<%=rs("vt_name")%>">
  </form>
</table>
	  <%else%>
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif" class="chinese">
  <tr> 
    <td height="10" colspan="2"></td>
  </tr>
  <tr> 
    <td colspan="2" align="center"><%=rs("vt_name")%></td>
  </tr>
  <%sql="select * from voteitem where vt_id="&rs("vt_id")
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
totalvote=0
rs2.movefirst
do while not rs2.eof
totalvote=totalvote+rs2("item_count")
rs2.movenext
loop
rs2.movefirst
do while not rs2.eof
%>
  <tr> 
    <td width="44%" align="center"><%=rs2("item_name")%></td>
    <td width="56%"><img src="images/votebar.gif" width="<%= FormatNumber((rs2("item_count")/totalvote*100),4) %>" height="10" title="<%=rs2("item_count")%>票"></td>
  </tr>
  <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
  <tr> 
    <td colspan="2" align="center">当前没有投票选项！</td>
  </tr>
  <%end if
rs2.close
set rs2=nothing%>
  <tr>
    <td height="30" colspan="2" align="center" class="chinese">你已经投过票了。总计票数<span class="newshead"><%=totalvote%></span>票 
    </td>
  </tr>
  <tr valign="bottom"> 
    <td colspan="2" align="center"><img src="images/lefttablo_05.gif"></td>
  </tr>
</table>
<%
end if
else
%>
<%
response.write "<div align='center' class='chinese'>当前没有投票主题！</div>"
end if
rs.close
set rs=nothing
end sub

sub index_coolsites()
opensites
sql="select top "&indexcoolsite&" * from coolsites order by cs_date DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td height="40" align="right" background="images/lefttablo_01f.gif" class="newshead"><br>
      ::: 酷站推荐 :::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
  <%do while not rs.eof%>
  <tr> 
    <td align="center" height="125"><a href="redirectcs.asp?cs_id=<%=rs("cs_id")%>" target="_blank" title="<%=rs("cs_name")%>-<%=rs("cs_url")%>,已被点击<%=rs("cs_count")%>次">
      <img src="<%=rs("cs_pic")%>" border="0" alt="<%=rs("cs_name")%>"><br>
      </a> </td>
  </tr>
  <%rs.movenext
loop
if rs.bof and rs.eof then%>
  <tr> 
    <td align="center" height="25" class="chinese">暂时还没有推荐站点！</td>
  </tr>
  <%end if%>
  <tr>
    <td align="right" valign="bottom"><a href="show.asp"><img src="images/bottom.gif" width="40" height="13" border="0"></a>&nbsp;&nbsp;</td>
  </tr>
  <tr> 
    <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub

sub index_flink()
opensites
sql="select top "&indexfriendlink&" * from friendlink where fl_logo<>'0' and passed=0 order by fl_id DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1 
%>
<br>
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td height="40" align="right" background="images/lefttablo_01o.gif" class="newshead"><br>
      ::: 友情链接 :::&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
      
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
  <tr> 
  <tr>
  <%do while not rs.eof%>
  <tr> 
    <td align="center" height="40"><a href="<%=rs("fl_url")%>" title="<%=rs("fl_name")%>" target="_blank"><img src="<%=rs("fl_logo")%>" border="0"></a></td>
  </tr>
  <%rs.movenext
loop
if rs.eof and rs.bof then%>
  <tr> 
    <td align="center" height="40" class="chinese">暂时还没有友情链接！</td>
  </tr>
  <%end if%>
  <tr>
    <td align="right" valign="bottom"><a href="link.asp"><img src="images/bottom.gif" width="40" height="13" border="0"></a>&nbsp;&nbsp;</td>
  </tr>
  <tr> 
    <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
  </tr>
</table>
<%    
end sub
%>
