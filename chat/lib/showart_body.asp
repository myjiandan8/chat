<%sub showart_body()
openarticle
sql="select * from art where art_id="&request.querystring("art_id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td colspan="3" height="10"></td>
  </tr>
  <tr> 
    <td width="554" valign="top"> 
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td background="images/tablebg.gif">所属分类： 
            <%sql="select cat_id,cat_name from cat where cat_id="&rs("cat_id")
		  set rs1=conn.execute(sql)%>
            <a href="article.asp?cat_id=<%=rs1("cat_id")%>"><%=rs1("cat_name")%></a> 
            <%rs1.close
		  set rs1=nothing%>
            <!--作者： 
            <%if rs("art_from")<>"" then%>
            <a href="<%=rs("art_from")%>"><%=rs("art_poster")%></a> 
            <%else%>
            <%=rs("art_poster")%> 
            <%end if%>-->&nbsp;
            更新日期：<%=rs("art_date")%> 阅读次数：<font color=red><%=rs("art_count")%></font></td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table>
      <br>
	  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
		  <td align="center">页内搜索: 
            <input type="text" name="searchstr" size="10" class="input">
<input type="button" value="Search" onclick="javascript:findIt();" class="input"></td>
		<td align="center">查看:[ <a href="javascript:doZoom(16)">大字</a> <a href="javascript:doZoom(14)">中字</a> <a href="javascript:doZoom(12)">小字</a> ]</td>
		</tr>
	  </table>
      <br>
      <table width="98%" border="0" cellspacing="1" cellpadding="6" align="center" >
        <tr> 
          <td id="zoom"> <span class="line">
            <div align="center"><b><%=rs("art_title")%></b><hr size="1" color="#CCCCCC"> 来源:<font color=#669999><%=rs("art_from")%></font>&nbsp;&nbsp;作者:<%=rs("art_poster")%></div>
            <br>　　<%=ubb2html(formatStr(autourl(rs("art_content"))),true,true)%> <br><br>
            <div align="right"><!--#include file="bottom_fun.inc"-->
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <%
dim totalremark,Currentpage,totalpages,i
sql5="select * from remark where art_id="&rs("art_id")
set rs5=server.createobject("adodb.recordset")
rs5.open sql5,conn,1,1
%>
                <tr> 
                  <td height="22" bgcolor="#f3f3f3"><font color="#003399">【公共评论】</font>[<strong><font color="#FF0000"><%=rs5.recordcount%></font></strong>条评论]</td>
                </tr>
				<%
if not rs5.eof then
rs5.movefirst
rs5.pagesize=remarkperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs5.pagecount then
      currentpage=rs5.pagecount
   end if
else
   currentpage=1
end if
   totalremark=rs5.recordcount
   if currentpage<>1 then
       if (currentpage-1)*remarkperpage<totalremark then
	       rs5.move(currentpage-1)*remarkperpage
		   dim bookmark
		   bookmark=rs5.bookmark
	   end if
   end if
   if (totalremark mod remarkperpage)=0 then
      totalpages=totalremark\remarkperpage
   else
      totalpages=totalremark\remarkperpage+1
   end if
   i=0
do while not rs5.eof and i<remarkperpage%>
                <tr>
                  <td>&nbsp;<%=ubb2html(formatStr(autourl(rs5("remark"))), true, true)%>&nbsp;--<font color="#cccccc"><%=rs5("remarker")%>&nbsp;&nbsp;<%=rs5("remark_date")%></font></td>
                </tr>
<%
i=i+1
rs5.movenext
loop
else
if rs5.eof and rs5.bof then
%>
                <tr>
                  <td>暂时还没有评论</td>
                </tr>
        <%end if
end if%>
                <tr>
                  <td align="right">Page <%=currentpage%> of <%=totalpages%>,<%=totalremark%> records, 
            <%
i=1
for i=1 to totalpages
if i=currentpage then
%>
            <%=i%> 
            <%else%>
            <a href="showart.asp?art_id=<%=request.querystring("art_id")%>&cat_id=<%=request.querystring("cat_id")%>&page=<%=i%>"><%=i%></a> 
            <%end if
next%>
</td>
                </tr>
              </table>
            </div>
            &nbsp;&nbsp;&nbsp; <font color="#eeeeee">------------------------------------------------------------------------------------</font> 
            <b>相关文章</b><br>
            <%sql="select top 16 * from art where art_content like '%"&rs("art_keyword")&"%' or art_keyword='"&rs("art_keyword")&"' order by art_date ASC"
			set rs2=server.createobject("adodb.recordset")
            rs2.open sql,conn,1,1
			do while not rs2.eof
            %>
            <a href="showart.asp?art_id=<%=rs2("art_id")%>&cat_id=<%=rs2("cat_id")%>"><%=rs2("art_title")%></a> <%=rs2("art_date")%><br>
            <%
			rs2.movenext
			loop
			if rs2.eof and rs2.bof then
			response.write "没有相关文章"
			end if
			rs2.close
			set rs2=nothing
			%></span>
          </td>
        </tr>
      </table>
	  <IFRAME name="art" marginWidth=0 marginHeight=0 src="about:blank" frameBorder=0 width=0 height=0 scrolling=no framespacing=0></IFRAME>
      <br>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="205" align="center" valign="top"> 
      <%call articlecat()%>
    </td>
  </tr>
  <tr> 
    <td colspan="3" background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>
<%end sub%>
