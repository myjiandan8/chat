<%sub showcs_body()
dim totalcs,Currentpage,totalpages,i
opensites
if request.querystring("cscat_id")="" then
sql="select * from coolsites order by cs_id DESC"
elseif request.querystring("cscat_id")<>"" then
sql="select * from coolsites where cscat_id="&request.querystring("cscat_id")&" order by cs_id DESC"
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
          <td width="37%" background="images/tablebg.gif">::::: ��վ�Ƽ� :::::</td>
          <td width="51%" align="right" background="images/tablebg.gif">��ǰ����<span class="newshead"><%=totalcs%></span>����Ʒ</td>
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
rs.pagesize=coolsitesperpage
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
       if (currentpage-1)*coolsitesperpage<totalcs then
	       rs.move(currentpage-1)*coolsitesperpage
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalcs mod coolsitesperpage)=0 then
      totalpages=totalcs\coolsitesperpage
   else
      totalpages=totalcs\coolsitesperpage+1
   end if
i=0
do while not rs.eof and i<coolsitesperpage
%>
      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td width="37%" align="center"> 
            <table width="98%" border="0" cellspacing="1" cellpadding="3" bgcolor="#D2D2D2">
              <tr> 
                <td bgcolor="#FFFFFF" align="center"><img src="<%=rs("cs_pic")%>"></td>
              </tr>
            </table>
          </td>
          <td width="63%" class="chinese">��վ���ƣ�<%=rs("cs_name")%><br>
            ��վ��ַ��<a href="redirectcs.asp?cs_id=<%=rs("cs_id")%>" target="_blank"><%=rs("cs_url")%></a><br>
            ����ʱ�䣺<%=rs("cs_date")%><br>
            ���������<%=rs("cs_count")%></td>
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
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">�������ڸ���֮��........</td>
        </tr>
      </table>
      <%end if
end if%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="show.asp<%if request.querystring("cscat_id")<>"" then%>?&cscat_id=<%=request.querystring("cscat_id")%><%end if%>">
          <tr> 
            <td align="right"> <%=currentpage%> /<%=totalpages%>ҳ,<%=totalcs%>����¼/<%=coolsitesperpage%>ƪÿҳ. 
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
              <a href="show.asp?page=<%=i%><%if request.querystring("cscat_id")<>"" then%>&cscat_id=<%=request.querystring("cscat_id")%><%end if%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if%>
              <a href="show.asp?page=<%=page%><%if request.querystring("cscat_id")<>"" then%>&cscat_id=<%=request.querystring("cscat_id")%><%end if%>" title="��һҳ">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="input" size="4">
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
          <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
            :::<strong>��Ʒ����</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="96%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td align="center"> <table width="85%" border="0" cellspacing="0" cellpadding="4">
                    <%sql="select * from cscat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>
                    <tr> 
                      <td align="center" class="chinese"> 
                        <%if cint(request.querystring("cscat_id"))<>rs("cscat_id") then%>
                       <img src="images/plus.gif"> <a href="show.asp?cscat_id=<%=rs("cscat_id")%>"><%=rs("cscat_name")%></a> 
                        <%else%>
                        <img src="images/plus.gif"> <font color="#ff6600"><%=rs("cscat_name")%></font> 
                        <%end if%>
                      </td>
                    </tr>
                    <%rs.movenext
loop
if rs.eof and rs.bof then%>
                    <tr> 
                      <td align="right" class="chinese">��ǰ��û�з��࣡</td>
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
          <td height="40" align="right" background="images/lefttablo_01k.gif"><br>
            :::<strong>���ŵ��</strong>:::&nbsp;&nbsp;&nbsp;</td>
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
                    <%sql="SELECT top 1 * FROM coolsites ORDER by cs_count DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>
                    <tr> 
                      <td align="center" class="chinese"><img src="<%=rs("cs_pic")%>"></td>
                    </tr>
                    <tr> 
                      <td class="chinese">��վ���ƣ�<%=rs("cs_name")%><br>
                        ��վ��ַ��<a href="redirectcs.asp?cs_id=<%=rs("cs_id")%>" target="_blank"><%=rs("cs_url")%></a><br>
                        ����ʱ�䣺<%=rs("cs_date")%><br>
                        ���������<%=rs("cs_count")%> </td>
                    </tr>
                    <%rs.movenext
loop
if rs.eof and rs.bof then%>
                    <tr> 
                      <td align="center" class="chinese">�������ڸ���֮��........</td>
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
      <br>
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
