<%sub download_body()
dim keyword,class_id,colname,totalsoft,Currentpage,totalpages,i
opendown
keyword=request.form("keyword")
cat_id=request("cat_id")
class_id=request("class_id")
colname=request("colname")

sql="SELECT * FROM soft order by soft_joindate desc"
if cat_id<>"" and class_id="" then
    sql="SELECT * FROM soft where soft_catid="&cat_id&" order by soft_joindate desc"
elseif class_id<>"" and keyword="" then
	sql="SELECT * FROM soft where soft_classid="&class_id&" order by soft_joindate desc"
elseif keyword<>"" and colname<>"0" then
	sql="select * from soft where "&colname&" like '%"&keyword&"%' order by soft_joindate desc"
else
	sql="SELECT * FROM soft order by soft_joindate desc"
end if

set rssoft=server.createobject("adodb.recordset")
rssoft.open sql,conn,1,1
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td width="554" valign="top"><br>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td background="images/tablebg.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
                <td width="75%"> <a href="download.asp">下载首页</a> 
                  <%
Set rscat = Server.CreateObject("ADODB.Recordset")
sqlcat="SELECT * FROM cat"
rscat.OPEN sqlcat,Conn,1,1
do while not rscat.eof
colparam1=rscat("cat_id")
%>
                  <font color="#ff8040">|</font> <a href="download.asp?cat_id=<%=rscat("cat_id")%>"><%=rscat("cat_name")%></a> 
                  <%
set rsclass=nothing
rscat.movenext
loop
%>
                </td>
                <td width="25%" align="right" class="chinese"> 
                  <%dim flname
			flname=""
			if request.querystring("class_id")<>"" then
			sql="select class_name from class where class_id="&request.querystring("class_id")
			set rsclass=conn.execute(sql)
			flname=rsclass("class_name")
			rsclass.close
			set rsclass=nothing
			elseif request.querystring("class_id")="" and request.querystring("cat_id")<>"" then
			sql="select cat_name from cat where cat_id="&request.querystring("cat_id")
			set rscat=conn.execute(sql)
			flname=rscat("cat_name")
			rscat.close
			set rscat=nothing
			end if%>
                  <font color="#ff6600"><%=flname%></font>共有<%=rssoft.recordcount%>个程序 
                </td>
              </tr>
            </table></td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <%
if not rssoft.eof then
rssoft.movefirst
rssoft.pagesize=softperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rssoft.pagecount then
      currentpage=rssoft.pagecount
   end if
else
   currentpage=1
end if
   totalsoft=rssoft.recordcount
   if currentpage<>1 then
       if (currentpage-1)*softperpage<totalsoft then
	       rssoft.move(currentpage-1)*softperpage
		   dim bookmark
		   bookmark=rssoft.bookmark
	   end if
   end if
   if (totalsoft mod softperpage)=0 then
      totalpages=totalsoft\softperpage
   else
      totalpages=totalsoft\softperpage+1
   end if
%>
        <form name="form2" method="post" action="download.asp?cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>">
          <tr> 
            <td class="chinese" align="right"><br><!--%=currentpage%> /<%=totalpages%>页,<%=totalsoft%>条记录/<%=softperpage%>个每页. 
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
              <a href="download.asp?page=<%=i%>&cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="download.asp?page=<%=page%>&cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button"-->
            </td>
          </tr>
        </form>
      </table>
      <%
i=0
do while not rssoft.eof and i<softperpage
%>
      <table width="98%" border="0" cellspacing="1" cellpadding="0" align="center" class="chinese">
        <tr> 
          <td height="22" colspan="4" background="images/soft.gif"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="48%"><a href="showsoft.asp?soft_id=<%=rssoft("soft_id")%>" target="_blank"><b><font color="#FF9900"><%=rssoft("soft_name")%></font></b></a></td>
                <td width="52%" align="right"><%=rssoft("soft_catname")%> 
            | <%=rssoft("soft_classname")%>&nbsp;&nbsp; 
            <%if rssoft("soft_demo")<>"" then%>
            <a href="<%=rssoft("soft_demo")%>" target=_blank>演示</a> 
            <%else%>
            没有演示 
            <%end if%></td>
              </tr>
            </table> </td>
        </tr>
        <tr> 
          <td width="15%" height="30" align="center"><strong>加入时间</strong></td>
          <td bgcolor="#FFFFFF" width="35%"><%=rssoft("soft_joindate")%></td>
          <td width="15%" align="center"><strong>推荐程度</strong></td>
          <td bgcolor="#FFFFFF" width="35%" align="center"><img src="images/<%=rssoft("soft_commend")%>stars.gif" width=55 height=12 align="absmiddle" style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse"> 
            &nbsp;&nbsp;&nbsp;<%=rssoft("soft_dcount")%>/<%=rssoft("soft_rcount")%> 
          </td>
        </tr>
        <tr> 
          <td bgcolor="#FFFFFF" colspan="4" style="TABLE-LAYOUT: fixed; BORDER-COLLAPSE: collapse"><span class="line">&nbsp;&nbsp;&nbsp; <%=cutstr(rssoft("soft_desc"),160,false,none)%></span></td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td bgcolor="#FFFFFF" colspan="4" height="17"></td>
        </tr>
      </table>
      <%
i=i+1
rssoft.movenext
loop
else
if rssoft.eof and rssoft.bof then
%>
      <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="25" colspan="4"> 
            <%if keyword<>"" then%>
            <div align="center">对不起，没有找到你想要的软件！</div>
            <%else%>
            <div align="center">该类别当前还没有软件下载！</div>
            <%end if%>
          </td>
        </tr>
      </table>
      <%end if
end if%>
      <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form3" method="post" action="download.asp?cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>">
          <tr> 
            <td class="chinese" align="right"><%=currentpage%> /<%=totalpages%>页,<%=totalsoft%>条记录/<%=softperpage%>个每页. 
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
              <a href="download.asp?page=<%=i%>&cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="download.asp?page=<%=page%>&cat_id=<%=request("cat_id")%>&keyword=<%=request("keyword")%>&colname=<%=request("colname")%>" title="下一页">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">
            </td>
          </tr>
        </form>
      </table>
      <br>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="205" align="center" valign="top"> <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01.gif"><br>
            :::<strong>下载分类</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6" colspan="3"></td>
        </tr>
        <tr> 
          <td width="29" height="53" align="center">&nbsp; </td>
          <td width="179" colspan="2"> 
            <%
Set rscat = Server.CreateObject("ADODB.Recordset")
sqlcat="SELECT * FROM cat"
rscat.OPEN sqlcat,Conn,1,1
do while not rscat.eof
colparam1=rscat("cat_id")
%><a href="download.asp?cat_id=<%=rscat("cat_id")%>"><img src="images/plus.gif" border="0"> <strong><%=rscat("cat_name")%></strong></a><br> 
            <%
Set rsclass = Server.CreateObject("ADODB.Recordset")
sqlclass="SELECT * FROM class where cat_id=" &colparam1& ""
rsclass.OPEN sqlclass,Conn,1,1
	do while not rsclass.eof
%>&nbsp;&nbsp;&nbsp;<a href='download.asp?cat_id=<%=rsclass("cat_id")%>&class_id=<%=rsclass("class_id")%>'><%=rsclass("class_name")%></a><br>
            <%
rsclass.movenext
loop
rsclass.close
%>
            <%
set rsclass=nothing
rscat.movenext
loop
set rscat=nothing
set rstotal=nothing
%>
            <br>
          </td>
        </tr>
        <tr>
          <td width="29" height="23">　<p>　</td>
          <td width="155" height="23"><hr noshade size="1" color="#C0C0C0">
			<p>主&nbsp; 编：绝恋<br>
			副主编：小依 丰子<br>
			编&nbsp; 辑：轩 感觉 等<br>
			整&nbsp; 理：绝恋<br>
			注：我们提供的软件都是来自网络收集，如果侵犯了您的权益，请及时同我们联系！</td>
          <td width="24" height="23">　</td>
          </tr>
        <tr> 
          <td colspan="3" valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01s.gif"><br>
            :::<strong>软件搜索</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
              <form name="form1" method="post" action="">
                <tr> 
                  <td align="center" class="chinese"> <select name="colname">
                      <option value=0 selected>请选择搜索范围</option>
                      <option value="soft_name">软件名称</option>
                      <option value="soft_desc">软件描述</option>
                    </select> <input name="keyword" type="text" class="textarea" size="14" maxlength="50"> 
                    <br> <input type="submit" name="Submit2" value="搜索" class="button"> 
                  </td>
                </tr>
              </form>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <%
sql1="SELECT top " &topsoftnum& " soft_dcount,soft_rcount,soft_id,soft_name,soft_joindate FROM soft  ORDER BY soft_dcount DESC"
sql2="SELECT top " &newsoft& " soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft order by soft_joindate DESC"
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
set rs2=server.createobject("adodb.recordset")
rs2.open sql2,conn,1,1
if request.querystring("class_id")<>"" or request.querystring("cat_id")<>"" then
if request.querystring("class_id")="" and request.querystring("cat_id")<>"" then
sql3="SELECT top 10 soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft WHERE soft_classid= " &request.querystring("cat_id")& " order by soft_dcount DESC"
elseif request.querystring("class_id")<>"" then
sql3="SELECT top 10 soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft WHERE soft_classid= " &request.querystring("class_id")& " order by soft_dcount DESC"
end if
set rs3=server.createobject("adodb.recordset")
rs3.open sql3,conn,1,1
%>
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01d.gif"><br>
            :::本类下载Top 10:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table> 
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="53" class="chinese"><table width="85%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <%do while not rs3.eof%>
                    <tr> 
                      <td class="chinese"><a href="showsoft.asp?soft_id=<%=rs3("soft_id")%>" target="_blank"><%=rs3("soft_name")%></a>&nbsp;&nbsp;(<font color="#66CC33"><%=rs3("soft_dcount")%></font>/<font color="#66CC33"><%=rs3("soft_rcount")%></font>)</td>
                    </tr>
                    <%rs3.movenext
loop
if rs3.eof and rs3.bof then%>
                    <tr> 
                      <td align="center" class="chinese">目前还没有软件程序！</td>
                    </tr>
                    <%end if%>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <table width="94%" border="0" cellspacing="1" cellpadding="8" bgcolor="#293863" class="chinese">
      </table>
      <%
rs3.close
set rs3=nothing
end if
%><table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01t.gif"><br>
            :::下载Top <%=topsoftnum%>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table> 
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="53" class="chinese"><table width="84%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <%do while not rs1.eof%>
                    <tr> 
                      <td class="chinese"><a href="showsoft.asp?soft_id=<%=rs1("soft_id")%>" target="_blank"><%=rs1("soft_name")%></a>&nbsp;&nbsp;(<font color="#66CC33"><%=rs1("soft_dcount")%></font>/<font color="#66CC33"><%=rs1("soft_rcount")%></font>)</td>
                    </tr>
                    <%rs1.movenext
loop
if rs1.eof and rs1.bof then%>
                    <tr> 
                      <td align="center" class="chinese">目前还没有软件程序！</td>
                    </tr>
                    <%end if%>
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
          <td height="40" align="right" background="images/lefttablo_01u.gif"><br>
            :::更新Top <%=newsoft%>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="53" class="chinese"><table width="83%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td> <table width="102%" border="0" cellspacing="0" cellpadding="0">
                    <%do while not rs2.eof%>
                    <tr> 
                      <td class="chinese"><a href="showsoft.asp?soft_id=<%=rs2("soft_id")%>" target="_blank"><%=rs2("soft_name")%></a>&nbsp;&nbsp;(<font color="#66CC33"><%=rs2("soft_dcount")%></font>/<font color="#66CC33"><%=rs2("soft_rcount")%></font>)</td>
                    </tr>
                    <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
                    <tr> 
                      <td align="center" class="chinese">目前还没有软件程序！</td>
                    </tr>
                    <%end if%>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <%
rs1.close
set rs1=nothing
rs2.close
set rs2=nothing
%>
    </td>
  </tr>
  <tr> 
    <td colspan="3" background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>
<%
rssoft.close
set rssoft=nothing
end sub%>