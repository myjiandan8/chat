<%sub adminnews_body()
dim totalnews,Currentpage,totalpages,i
opennews
sql="select * from news order by news_id DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<link rel="stylesheet" href="Sams.css" type="text/css">

<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td colspan="3" height="8" bgcolor="#FFFFFF"></td>
  </tr>
  <tr> 
    <td width="205" bgcolor="#FFFFFF" valign="top">
      <%call adminmenu()%>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="554" bgcolor="#FFFFFF" valign="top" align="center"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="6"><table width="98%" border="0" align="center" cellpadding="8" cellspacing="1" bgcolor="#C7C7C7">
              <tr align="center" bgcolor="#E8E8E8"> 
                <td width="50%" class="chinese"><a href="admin_news.asp">新闻管理</a></td>
                <td width="50%" class="chinese"><a href="admin_news.asp?action=newnews#newnews">新增新闻</a></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="6"></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="3" class="diaryhead">新闻管理</td>
        </tr>
        <tr bgcolor="#E8E8E8" align="center"> 
          <td class="chinese" width="10%">编号</td>
          <td class="chinese" width="70%">标题&amp;发表时间</td>
          <td class="chinese" width="20%">操作</td>
        </tr>
<%if not rs.eof then
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
do while not rs.eof and i<newsperpage%>
        <tr> 
          <td bgcolor="#FFFFFF" class="chinese" align="center"><%=rs("news_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese"><a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank"><%=rs("news_title")%></a> <span class="date"><%=rs("news_date")%></span></td>
          <td bgcolor="#FFFFFF" class="chinese" align="center"><a href="admin_news.asp?id=<%=rs("news_id")%>&action=editnews#editnews">edit</a> 
            <a href="admin_news.asp?id=<%=rs("news_id")%>&action=delnews#delnews">del</a> <a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank">view</a></td>
        </tr>
<%i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then%>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" colspan="3" class="chinese">当前没有新闻！</td>
        </tr>
<%end if
end if%>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
	    <form name="form2" method="post" action="admin_news.asp">
        <tr>
          <td class="chinese" align="right"><%=currentpage%> /<%=totalpages%>页,<%=totalnews%>条记录/<%=newsperpage%>篇每页. 
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
              <a href="admin_news.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="admin_news.asp?page=<%=page%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button"></td>
        </tr>
		</form>
      </table>
      <br>
	  <%if request.QueryString("action")="newnews" then%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="newnews">新的新闻</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">作者- 
              <input type="text" name="news_author" size="20" class="textarea"> 
              &nbsp;<a href="javascript:setAuthor1('未知')">未知</a>&nbsp;<a href="javascript:setAuthor1('佚名')">佚名</a>&nbsp; 关键字- 
              <input type="text" name="news_keyword" size="20" class="textarea"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">来源- 
              <input type="text" name="news_ahome" class="textarea" size="50" value="客家品网 美美在线----美美设计  mz126.com xzggg "> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">标题- 
              <input type="text" name="news_title" class="textarea" size="50"> 
            </td>
          </tr>
          <tr>
            <td bgcolor="#FFFFFF" class="chinese">&nbsp;&nbsp;<a href="javascript" onclick="window.open('news_pic.asp','newwin','width=300,height=140');return false;"><font color="#FF0000"><strong>上传图片</strong></font> </a> &nbsp;<%=request.cookies("0")%></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> <textarea name="news_content" cols="85" rows="12" class="textarea"></textarea> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input type="submit" name="Submit2" value="确定新增" class="button"> 
              <input type="reset" name="Reset" value="清空重填" class="button"> </td>
          </tr>
          <input type="hidden" name="action" value="newnews">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
if request.QueryString("action")="editnews" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的新闻ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from news where news_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="editnews">修改新闻</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">作者- 
              <input type="text" name="news_author" size="20" class="textarea" value="<%=rs("news_author")%>"> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关键字- 
              <input type="text" name="news_keyword" size="20" class="textarea" value="<%=rs("news_keyword")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">来源- 
              <input type="text" name="news_ahome" class="textarea" size="50" value="<%=rs("news_ahome")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">标题- 
              <input type="text" name="news_title" class="textarea" size="50" value="<%=rs("news_title")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">
              <%call ubbshow()%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"> <textarea name="news_content" cols="85" rows="12" class="textarea" id="news_content"><%=rs("news_content")%></textarea> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input type="submit" name="Submit" value="确定修改" class="button"> 
              <input type="reset" name="Reset" value="清空重填" class="button">
              [<a href="admin_news.asp">返回</a>] </td>
          </tr>
		  <input type="hidden" name="id" value="<%=rs("news_id")%>">
		  <input type="hidden" name="action" value="editnews">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if
if request.QueryString("action")="delnews" then
if request.querystring("id")="" then
  errmsg=errmsg+"<br>"+"<li>请指定操作的对象！"
  call diserror()
  response.end
else
  if not isinteger(request.querystring("id")) then
    errmsg=errmsg+"<br>"+"<li>非法的新闻ID参数！"
	call diserror()
	response.end
  end if
end if
sql="select * from news where news_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="delnews" id="delnews">删除新闻</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">作者- <%=rs("news_author")%> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关键字- <%=rs("news_keyword")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">来源- <%=rs("news_ahome")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">标题- <%=rs("news_title")%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese"><%=ubb2html(formatStr(autourl(rs("news_content"))), true, true)%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="确定删除"> 
              [<a href="admin_news.asp">返回</a>] </td>
          </tr>
          <input type="hidden" name="id" value="<%=rs("news_id")%>">
          <input type="hidden" name="action" value="delnews">
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table>
	  <%end if%>
      <br>
    </td>
  </tr>
  <tr> 
    <td colspan="3" height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>