<%
sub articlecat()
sql="select * from cat"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
%>
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
      :::<strong>主题类目</strong>:::&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
  <tr> 
    <td height="6"></td>
  </tr>
  <tr> 
    <td height="66" align="center">
    <%
			do while not rs2.eof
			response.write "<table width=95% border=0 cellspacing=0 cellpadding=0><tr onmouseover=""this.style.backgroundColor='#f9f9f9'"" onmouseout=""this.style.backgroundColor=''""><td align=center height=25><font color=#cccccc>≡≡≡</font> "
			if request("cat_id")=cstr(rs2("cat_id")) then
			response.write "<a href='article.asp?cat_id="&rs2("cat_id")&"'><font color='#ff6600'>"&rs2("cat_name")&"</font></a>"
			else
			response.write "<a href='article.asp?cat_id="&rs2("cat_id")&"'>"&rs2("cat_name")&"</a>"
			end if
			response.write " <font color=#cccccc>≡≡≡</font></td></tr></table>"
			rs2.movenext
			loop
			if rs2.eof and rs2.bof then
			response.write "当前没有分类！"
			end if
			%>
    </td>
  </tr>
  <tr> 
    <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
  </tr>
</table>
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td height="40" align="right" background="images/lefttablo_01.gif"><br>
      :::<strong>热门文章</strong>:::&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
  <tr> 
    <td height="6"></td>
  </tr>
  <tr> 
    <td height="66" align="center"><table width="85%" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse">
        <tr> 
          <td><%
set rs3=server.createobject("adodb.recordset")
if request.querystring("cat_id")<>"" then
sql="select top 12 art_id,art_title,art_count,cat_id from art where cat_id="&request.querystring("cat_id")&" order by art_count DESC"
else
sql="select top 12 art_id,art_title,art_count,cat_id from art order by art_count DESC"
end if
rs3.open sql,conn,1,1
do while not rs3.eof
%>
            <a href="showart.asp?art_id=<%=rs3("art_id")%>&cat_id=<%=rs3("cat_id")%>" target="_blank"> 
            <font color="#808080"> 
            <%if len(Rs3("art_title"))>14 then
 response.write left(Rs3("art_title"),12)&"..."
else
 response.write Rs3("art_title")
end if%>
            </font></a><span style='font-size: 9pt;color=#66CC33'><font color="#666666">(</font><%=rs3("art_count")%><font color="#666666">)</font></span><br> 
            <%
   rs3.movenext
   loop
   if rs3.eof and rs3.bof then
   response.write "没有相关文章"
   end if
   rs3.close
   set rs3=nothing
   %>
          </td>
        </tr>
      </table></td>
  </tr>
  <tr> 
    <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
  </tr>
</table>
<table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td height="40" align="right" background="images/lefttablo_01s.gif"><br>
      :::<strong>文章搜索</strong>:::&nbsp;&nbsp;&nbsp;</td>
  </tr>
</table>
<table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
 <form name="form2" method="post" action="article.asp">
  <tr> 
    <td height="6"></td>
  </tr>
  <tr> 
    <td height="77" align="center">
	          <select name="select">
              <option value="art_title">搜索文章标题</option>
              <option value="art_content">搜索文章内容</option>
              </select>
              <br>
              <input name="keyword" type="text" class="input" size="14" maxlength="50">
              <br>
              <input type="submit" name="search" value=" 搜索 " class="input"></td>
  </tr>
  <tr> 
    <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
  </tr>
  </form>
</table>
<br>
<table width="182" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td height="40">主&nbsp; 编：老刀<br>
	副主编：文哥 蚂蚁 <br>
	编&nbsp; 辑：感觉 小东 丰子 等<br>
	整&nbsp; 理：绝恋<br>
	注：BChat聊天室界面配置脚本，创始人:寒江（自由软件作者，软件工程师）<strong><br>
	<br>
	版权声明:</strong><br>
      　　本站资料文章其版权归作者本人所有，如果有任何侵犯您版权的地方，请尽快与我联系!</td>
  </tr>
</table>
<br>
<%rs2.close
set rs2=nothing
end sub%>