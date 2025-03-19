<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/Chatfl.asp" -->
<!--#include file="UBBshow.asp"-->
<!--#include file="UBB_news.asp"-->
<%
Call openchatconn
set rs=server.createObject("adodb.recordset")
newsperpage=15
dim founderr,errmsg
founderr=false
errmsg=""

'推荐模块
if Request("adj")<>"" then
chatconn.execute("update [news] set adj="& Request("dj") &" where news_id=" & Request("adj"))
Call wenti("修改成功！！")
end if




Function isinteger(newid)
set rsr=server.CreateObject("adodb.recordset")
sql = "Select roomid from news where news_id="& newid
rsr.open sql,chatconn,1,1
if rsr.eof then
isinteger= False
else
isinteger= True
end if




End Function


if Request.form("MM_insert") then
if request.form("action")="newnews" then
sql="select * from news"
set rs=server.createobject("adodb.recordset")
rs.open sql,chatconn,1,3
rs.addnew  '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
dim author,ahome,keyword,title,content
author=trim(replace(request.form("news_author"),"'",""))
ahome=trim(replace(request.form("news_ahome"),"'",""))
keyword=trim(replace(request.form("news_keyword"),"'",""))
title=trim(replace(request.form("news_title"),"'",""))
content=trim(replace(request.form("news_content"),"'",""))

rs("fenlei")=request.form("fenlei")
''rs("roomid")=id

if author="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入作者或来源名称！"
else
  rs("news_author")=author
end if

  ''rs("news_ahome")=roomname

if keyword="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入该新闻的关键字！"
else
  rs("news_keyword")=keyword
end if
if title="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入新闻的标题！"
else
  rs("news_title")=title
end if
if content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入来源的地址！"
else
  rs("news_content")=content
end if

rs("news_date")=now()

if not founderr then
rs.update
rs.close
set rs=nothing

response.cookies("0")=""
response.redirect "news.asp"
else
	errstr(errmsg)
end if
end if



if request.form("action")="editnews" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的新闻id参数。"
  end if
end if
if founderr then
	errstr(errmsg)
end if
sql="select * from news where news_id="&cint(request.Form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,chatconn,1,3   ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
author=trim(replace(request.form("news_author"),"'",""))
''ahome=trim(replace(request.form("news_ahome"),"'",""))
keyword=trim(replace(request.form("news_keyword"),"'",""))
title=trim(replace(request.form("news_title"),"'",""))
content=trim(replace(request.form("news_content"),"'",""))


rs("fenlei")=request.form("fenlei")
rs("news_ahome")=roomname


if author="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入作者或来源名称！"
else
  rs("news_author")=author
end if


if keyword="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入该新闻的关键字！"
else
  rs("news_keyword")=keyword
end if
if title="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入新闻的标题！"
else
  rs("news_title")=title
end if
if content="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须输入来源的地址！"
else
  rs("news_content")=content
end if

if not founderr then
rs.update
rs.close
set rs=nothing
response.redirect "news.asp"
else
call diserror()
response.end
end if
end if
if request.form("action")="delnews" then
if request.Form("id")="" then
  founderr=true
  errmsg=errmsg+"<br>"+"<li>你必须指定操作的对象！"
else
  if not isInteger(request.form("id")) then
    founderr=true
    errmsg=errmsg+"<br>"+"<li>非法的新闻id参数。"
  end if
end if
if founderr then
  errstr("非法的新闻ID参数")
end if

sql="select * from news where news_id="&cint(request.Form("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,chatconn,1,3
rs.delete
rs.close
set rs=nothing

response.redirect "news.asp"
end if
end if



dim totalnews,Currentpage,totalpages,i
sql="select * from news order by news_id DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,chatconn,1,1
%>
<LINK href="../../images/Style.css" rel=stylesheet>

<div align="center">

<table width="636" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td height="8" bgcolor="#FFFFFF"></td>
  </tr>
  <tr> 
    <td width="636" bgcolor="#FFFFFF" valign="top" align="center"> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="6"><table width="98%" border="0" align="center" cellpadding="8" cellspacing="1" bgcolor="#C7C7C7">
              <tr align="center" bgcolor="#E8E8E8"> 
                <td width="50%" class="chinese"><a href="news.asp">新闻管理</a></td>
                <td width="50%" class="chinese"><a href="news.asp?action=newnews#newnews">新增新闻</a></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="6"></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="623" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <tr bgcolor="#eeeeee"> 
          <td colspan="5" class="diaryhead">新闻管理</td>
        </tr>
        <tr bgcolor="#E8E8E8" align="center"> 
          <td class="chinese" width="31">编号</td>
          <td class="chinese" width="45">分类</td>
          <td class="chinese" width="317">标题&amp;发表时间</td>
          <td class="chinese" width="40">房间</td>
          <td class="chinese" width="144">操作</td>
        </tr>
<%if not rs.eof then
rs.movefirst
rs.pagesize=8
if v<>"" then
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
          <td bgcolor="#FFFFFF" class="chinese" align="center" width="31"><%=rs("news_id")%></td>
          <td bgcolor="#FFFFFF" class="chinese" align="center" width="45"><%=newf(rs("fenlei"))%></td>
          <td bgcolor="#FFFFFF" class="chinese" width="317"><a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank"><%=rs("news_title")%></a> <span class="date"><%=rs("news_date")%></span></td>
          <td bgcolor="#FFFFFF" class="chinese" width="40" align="center">
			<a target="_blank" href="http://<%=rs("roomid")%>.liaowan.com/"><%=rs("roomid")%></a></td>
          <td bgcolor="#FFFFFF" class="chinese" align="center">
			<a href="news.asp?id=<%=rs("news_id")%>&action=editnews#editnews">
			编辑</a> 
            <a href="news.asp?id=<%=rs("news_id")%>&action=delnews#delnews">删除</a> <a href="shownews.asp?news_id=<%=rs("news_id")%>" target="_blank">观看</a>
			<%if rs("adj")=0 then%><a href="news.asp?adj=<%=rs("news_id")%>&dj=1&page=<%=request("page")%>">推荐</a><%else%><a href="news.asp?adj=<%=rs("news_id")%>&dj=0&page=<%=request("page")%>"><font color="#FF0000">取消推荐</font></a><font color="#FF0000"><%end if%></font></td>
        </tr>
<%i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then%>
        <tr align="center"> 
          <td bgcolor="#FFFFFF" colspan="5" class="chinese">当前没有新闻！</td>
        </tr>
<%end if
end if%>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
	    <form name="form2" method="post" action="news.asp">
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
              <a href="news.asp?page=<%=i%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="news.asp?page=<%=page%>" title="下一页">>></a> 
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
            <td bgcolor="#FFFFFF" class="chinese" height="28">分类- 
        
<select size="1" name="fenlei">
<%
i=1
do while (i<newfs) %>
<option value="<%=i%>"><%=newf(i)%></option>
<%
 i=i+1
 loop %>
        </select>&nbsp; &nbsp; 关键字- 
              <input type="text" name="news_keyword" size="20" class="textarea"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">作者- 
              <input type="text" name="news_author" class="textarea" size="17"> 
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
	errstr("非法的新闻ID参数")
  end if
end if
sql="select * from news where news_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,chatconn,1,1
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" bgcolor="#293863">
        <form name="form1" method="post" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#eeeeee" class="diaryhead"><a name="editnews">修改新闻</a></td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">分类- 
        
<select size="1" name="fenlei">
<%
i=1
do while (i<newfs) %>
<option value="<%=i%>" <%if rs("fenlei")=i then response.write "selected"%>><%=newf(i)%></option>
<%
 i=i+1
 loop %>
        </select>  
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 关键字- 
              <input type="text" name="news_keyword" size="20" class="textarea" value="<%=rs("news_keyword")%>"> 
            </td>
          </tr>
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese">作者- 
              <input type="text" name="news_author" class="textarea" size="50" value="<%=rs("news_author")%>"> 
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
              [<a href="news.asp">返回</a>] </td>
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
	errstr("非法的新闻ID参数")
  end if
end if
sql="select * from news where news_id="&cint(request.querystring("id"))
set rs=server.createobject("adodb.recordset")
rs.open sql,chatconn,1,1%>
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
            <td bgcolor="#FFFFFF" class="chinese"><%=HTMLEncode(rs("news_content"))%>
            </td>
          </tr>
          <tr> 
            <td bgcolor="#E8E8E8" class="chinese" height="30" align="center"> 
              <input name="Submit" type="submit" class="button" id="Submit" value="确定删除"> 
              [<a href="news.asp">返回</a>] </td>
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
    <td height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
</div>

<%
rs.close
set rs=nothing
%>