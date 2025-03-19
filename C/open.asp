<!--数据库连接文件#include file="cool.asp" -->
<!--#include file="../INC/Chatfl.asp" -->
<%
sql="select fenlei,news_id,news_title,news_date from news where roomid=" & id
if request("fenlei")>0 then sql=sql &" and fenlei=" & request("fenlei")
sql=sql & " order by news_date DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1

%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/Style.css" rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>新闻 聊天室 聊湾</title>
<STYLE>
BODY
{scrollbar-face-color:#efefef; scrollbar-shadow-color:#efefef; 
scrollbar-highlight-color:#efefef; scrollbar-3dlight-color:#efefef; 
scrollbar-darkshadow-color:#efefef; scrollbar-track-color:#ffffff; 
scrollbar-arrow-color:ffffff;}
</STYLE>
</head>
<body background="<%=webbg%>" style="background-attachment: fixed" topmargin="0">




<div align="center">

					

<table border="0" width="418" id="table1">
	<tr>
		<td> <b><a href="open.asp?fenlei=0">全部</a>：</b>
		
		

<%
i=1
do while (i<newfs) %><a href="news.asp?fenlei=<%=i%>"><%=newf(i)%></a>&nbsp;<%
 i=i+1
 loop %>

		
		
		</td>
	</tr>

	<tr>
		<td>
		
		
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
<td class="chinese">
　</td>
        </tr>
      </table>
      <table width="96%" border="0" cellspacing="1" cellpadding="3" align="center">
<%
newsperpage=10
if not rs.eof then
rs.movefirst
rs.pagesize=newsperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalnews=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*newsperpage<totalnews then
	       rs.move(currentpage-1)*newsperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalnews mod newsperpage)=0 then
      totalpages=totalnews\newsperpage
   else
      totalpages=totalnews\newsperpage+1
   end if
i=0
do while not rs.eof and i<newsperpage
%>
        <tr> 
          <td width="3%" height="25" class="chinese">
			<img border="0" src="images/forum_readme.gif" width="10" height="10"></td>
          <td width="94%" class="chinese">[<font color="#880000"><%=newf(rs("fenlei"))%></font>]<a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank"><%=rs("news_title")%></a> 
            -- <font color="#CCCCCC"><%=DateValue(rs("news_date"))%></font></td>
        </tr>
		<tr><td height="1" background="images/dotlineh.gif" colspan=2></td></tr>
        <%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
        <tr> 
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">当前没有新闻！</td>
        </tr>
        <%end if
end if%>
      </table>
      <%if not request("type")=1 then%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="open.asp">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>页,<%=totalnews%>条记录/<%=newsperpage%>篇每页. 
              <%
i=1
showye=totalpages
if showye>10 then
showye=10
end if
for i=1 to showye
if i=currentpage then
%>
              <%=i%> 
              <%else%>
              <a href="news.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if %>
              <a href="news.asp?page=<%=page%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
		
		     </tr>
        </form>
      </table>
      <%end if%>
		
		
		</td>
	</tr>
</table>
<p>

					

</div>




</body>
</html>