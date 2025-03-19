<%sub model_body()
dim totalcs,Currentpage,totalpages,i
openmodel
sql="select * from coolsites order by cs_id DESC"
if request.querystring("type")<>"" then
sql="select * from coolsites where cscat_id="&request.querystring("type")&" order by cs_id DESC"
end if
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
totalcs=rs.recordcount
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td height="10" colspan="3"></td>
  </tr>
  <tr> 
    <td align="center" valign="top" width="554"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td width="37%" background="images/tablebg.gif"><a href="model.asp">::::: 模板中心 :::::</a></td>
          <td width="51%" align="right" background="images/tablebg.gif">当前共有<span class="newshead"><%=totalcs%></span>个模板</td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table> 
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
      <%
if not rs.eof then
rs.movefirst
rs.pagesize=model
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs.pagecount then
      currentpage=rs.pagecount
   end if
else
   currentpage=1
end if
   totalcs=rs.recordcount
   if currentpage<>1 then
       if (currentpage-1)*model<totalcs then
	       rs.move(currentpage-1)*model
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalcs mod model)=0 then
      totalpages=totalcs\model
   else
      totalpages=totalcs\model+1
   end if
i=0
do while not rs.eof and i<model
%>
      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td width="37%" align="center"> 
            <table width="98%" border="0" cellspacing="1" cellpadding="3" bgcolor="#D2D2D2">
              <tr> 
                <td bgcolor="#FFFFFF" align="center">
				<img src="<%=rs("cs_pic")%>" style="CURSOR: hand;filter:alpha(opacity=60)" onmouseover="javascript:toup2(this)"  onMouseOut="javascript:todown2(this)" onclick="window.open('<%=rs("cs_pic")%>');return false;" width="170" height="122"></td>
              </tr>
            </table>
          </td>
          <td width="63%" class="chinese"> 模板名称：<%=rs("cs_name")%><br>
            加入时间：<%=rs("cs_date")%><br>
            下载次数：<%=rs("cs_count")%><br>
            内容简介：<%=rs("cs_desc")%> 
            <div align="right"><a href="<%=rs("showurl")%>" target="_blank">演示</a> | <a href="model_down.asp?cs_id=<%=rs("cs_id")%>" target="models">下载 <B>&gt;&gt;&gt;</B></a></div>
			</td>
        </tr>
        <tr> 
          <td colspan="2" height="1" background="images/dotlineh.gif"></td>
        </tr>
      </table>
      <%
i=i+1
rs.movenext
loop
else
if rs.eof and rs.bof then
%>
      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">资料正在更新之中........</td>
        </tr>
      </table>
      <%end if
end if%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="model.asp?type=<%=request.querystring("cscat_id")%>">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>页,<%=totalcs%>条记录/<%=model%>篇每页. 
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
              <a href="model.asp?page=<%=i%><%if request.querystring("type")<>"" then%>&type=<%=request.querystring("type")%><%end if%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="model.asp?page=<%
			  if request("page")="" then
			  response.write "2"
			  else			  
			  response.write page
			  end if%><%if request.querystring("type")<>"" then%>&type=<%=request.querystring("type")%><%end if%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;
              <input type="text" name="page" class="input" size="2">
              <input type="submit" name="Submit" value="Go" class="input">
            </td>
          </tr>
        </form>
      </table>
      <br>
    </td>
    <td align="center" valign="top" width="1" background="images/dotlinev.gif"></td>
    <td align="center" valign="top" width="205"><table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01.gif"><br>
            :::<strong>模板分类</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="96%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td align="center"> 
				<table width="85%" border="0" cellspacing="0" cellpadding="4" height="154">
					<tr> 
                      <td align="center" class="chinese"> 
                        <img src="images/plus.gif"> <a href="model.asp"><B>模板首页</B></a>
                      </td>
                    </tr>
                    <%sql="select * from cscat order by cscat_id DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>
                    <tr> 
                      <td align="center" class="chinese"> 
                        <%if cint(request.querystring("cscat_id"))<>rs("cscat_id") then%>
                        <img src="images/plus.gif"> <a href="model.asp?type=<%=rs("cscat_id")%>"><%=rs("cscat_name")%></a> 
                        <%else%>
                        <font color="#ff6600"><%=rs("cscat_name")%></font> 
                        <%end if%>
                      </td>
                    </tr>
                    <%rs.movenext
loop
if rs.eof and rs.bof then%>
                    <tr> 
                      <td align="right" class="chinese">当前还没有分类！</td>
                    </tr>
                    <%end if%>
                     <tr>
                      <td class="chinese"><hr noshade size="1" color="#C0C0C0">
						<p>主&nbsp; 编：老刀<br>
						副主编：文哥 蚂蚁 <br>
						编&nbsp; 辑：感觉 小东 丰子 等<br>
						整&nbsp; 理：绝恋<br>
						注：BChat聊天室界面配置脚本，创始人:寒江（自由软件作者，软件工程师）</td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table> 
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
            :::<strong>热门模板</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="96%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td align="center"> <table width="100%" border="0" cellspacing="0" cellpadding="4">
				<tr> 
                     <td><span class="top_line">
                    <%sql="SELECT top 10 * FROM coolsites ORDER by cs_count DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>

                    &nbsp;<a href="<%=rs("showurl")%>" target="_blank"><%=rs("cs_name")%></a> <font color=red><%=rs("cs_count")%></font><br>
                    <%rs.movenext
loop
if rs.eof and rs.bof then%></span>
</td>
                    </tr>
                    <tr> 
                      <td align="center" class="chinese">资料正在更新之中........</td>
                    </tr>
                    <%end if%>
                  </table></td>
              </tr>
            </table>
      </td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <IFRAME name="models" marginWidth=0 marginHeight=0 src="about:blank" frameBorder=0 width=0 height=0 scrolling=no framespacing=0></IFRAME><br>
    </td>
  </tr>
  <tr> 
    <td background="images/dotlineh.gif" height="1" width="544"></td>
    <td background="images/dotlineh.gif" height="1" width="1"></td>
    <td background="images/dotlineh.gif" height="1" width="205"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>