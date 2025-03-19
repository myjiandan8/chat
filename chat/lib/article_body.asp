<%sub article_body()
dim totalart,Currentpage,totalpages,i,j,colname
openarticle
sql="select art_id,cat_id,art_title,art_content,art_date,art_count from art order by art_date DESC"
if request("cat_id")<>"" then
sql="select art_id,cat_id,art_title,art_content,art_date,art_count from art where cat_id="&request("cat_id")&" order by art_date DESC"
elseif request("keyword")<>"" then
sql="select art_id,cat_id,art_title,art_content,art_date,art_count from art where "&request("select")&" like '%"&request("keyword")&"%'order by art_date DESC"
elseif request("cat_id")<>"" and request("keyword")<>"" then
sql="select art_id,cat_id,art_title,art_content,art_date,art_count from art where art_title or art_content like '%"&request("keyword")&"%'order by art_date DESC"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td colspan="3" height="10"></td>
  </tr>
  <tr> 
    <td valign="top" width="554"> 
      <div align="center">
        <center>
          <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr> 
              <td class="chinese"> <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr> 
                    <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
                    <td width="31%" background="images/tablebg.gif">&nbsp;:::::最新主题::::::</td>
                    <td width="57%" align="right" background="images/tablebg.gif"> 
                      <%if request("cat_id")<> "" then%>
                      <span class="newshead">Count <%=rs.recordcount%></span> 
                      <%elseif request("select")<>"" then%>
                      <span class="newshead">Search Count <%=rs.recordcount%></span> 
                      <%else%>
                      <span class="newshead">Top 10 Title</span>
                      <%end if%>
                    </td>
                    <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
                  </tr>
                </table></td>
            </tr>
          </table>
        </center>
      </div>
      <div align="center">
        <center>
      <table width="92%" border="0" cellspacing="0" cellpadding="0" style="border-collapse: collapse">
      <%
if not rs.eof then
rs.movefirst
rs.pagesize=articleperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalart=rs.recordcount
   if currentpage<>1 then
      if(currentpage-1)*articleperpage<totalart then
	     rs.move(currentpage-1)*articleperpage
		 dim bookmark
		 bookmark=rs.bookmark
	  end if
   end if
   if (totalart mod articleperpage)=0 then
      totalpages=totalart\articleperpage
   else
      totalpages=totalart\articleperpage+1
   end if
   i=0
do while not rs.eof and i<articleperpage
%>
        <tr> 
              <td width="60%" height="25" bgcolor="#FFFFFF" colspan="2"><br>&nbsp;&nbsp;<IMG SRC="images/b.gif"> <a href="showart.asp?art_id=<%=rs("art_id")%>&cat_id=<%=rs("cat_id")%>" target="_blank"><strong><font color=#FF9900><%=rs("art_title")%></font></strong></a> 
                 --- <font color="#CCCCCC"><%=rs("art_date")%></font><br><br><%response.write keys(left(formatStr(rs("art_content")),160))&" ..."%><br><br></td>
        </tr>
		<tr><td height="1" background="images/dotlineh.gif" colspan=2></td></tr>
        <%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" height="22" colspan="2" class="chinese">当前没有文章！</td>
        </tr>
        <%end if
end if%>
      </table>
        </center>
      </div>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <form name="form1" method="post" action="article.asp?cat_id=<%=request("cat_id")%>&select=<%=request("select")%>&keyword=<%=request("keyword")%>">
          <tr> 
            <td class="chinese" align="right"><%=currentpage%> /<%=totalpages%>页,<%=totalart%>条记录/<%=articleperpage%>篇每页. 
              <%
if currentpage>9 then
i=int(currentpage/10)*10-1
if i+9>totalpages then
showye=totalpages
else
showye=int(currentpage/10)*10+10
end if
elseif totalpages<=10 then
i=1
showye=totalpages
else
i=1
showye=10
end if
for j=i to showye
if j=currentpage then
%>
              <%=j%> 
              <%else%>
              <a href="article.asp?page=<%=j%>&cat_id=<%=request("cat_id")%>&select=<%=request("select")%>&keyword=<%=request("keyword")%>"><%=j%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=2
else
page=currentpage+1
end if%>
              <a href="article.asp?page=<%=page%>&cat_id=<%=request("cat_id")%>&select=<%=request("select")%>&keyword=<%=request("keyword")%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
          </tr>
        </form>
      </table>
      <br>
      <br>
    </td>
    <td background="images/dotlinev.gif" width="1"></td>
    <td width="205" valign="top" align="center"> 
      <%call articlecat()%>
    </td>
  </tr>
  <tr> 
    <td colspan="3" background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>