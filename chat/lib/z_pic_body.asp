<%sub pic_body()
dim totalcs,Currentpage,totalpages,i
openpic
sql="select * from pic order by cs_id DESC"
if request.querystring("cscat_id")<>"" then
sql="select * from pic where cscat_id="&request.querystring("cscat_id")&" order by cs_id DESC"
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
          <td background="images/tablebg.gif"> :::::��Ʒͼ��:::::</td>
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
rs.pagesize=pic
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
       if (currentpage-1)*pic<totalcs then
	       rs.move(currentpage-1)*pic
		   dim bookmark
		   bookmark=rs.bookmark
	   end if
   end if
   if (totalcs mod pic)=0 then
      totalpages=totalcs\pic
   else
      totalpages=totalcs\pic+1
   end if
'i=0
'do while not rs.eof and i<pic
num=totalcs
dim q(300),x(300),y(300),z(300),c(300)
			i=1
			if not rs.eof then
			  while not rs.eof 
			   q(i)=rs("cs_id")
			   x(i)=rs("cs_pic")
			   y(i)=rs("cs_name")
			   z(i)=rs("cs_url")
			   c(i)=rs("cs_count")
			   i=i+1
			   rs.movenext
			  wend
			end if
			
			rs.close
			k=int(9/3)
			if num mod 3 <>0 then
			   k=k+1
			end if
			for j=1 to k 
%>
      <table width="525" border="0" cellspacing="0" cellpadding="0">
        <tr> <%for i=1+(j-1)*3 to j*3%> 
          <td height="113" align="center">
		 		  <%if x(i)<>"" then%>
		  <!--img src="<%=x(i)%>" border="1" width="160" height="120" onclick="newimg('picredirectcs.asp?cs_id=<%=q(i)%>')" style="CURSOR: hand"-->
 <img src="<%=x(i)%>" border="1" onclick="window.open('<%=x(i)%>','newwin');return false;" style="CURSOR: hand;filter:alpha(opacity=70)" onmouseover="javascript:toup2(this)"  onMouseOut="javascript:todown2(this)" width="160" height="120">
		  <%else%>
		  <img src="pic/none.gif" border="1" width="160" height="120">
		  <%end if%>
		
          </td>  <%next%>
        </tr>
		<tr>
		<%for i=1+(j-1)*3 to j*3%>
          <td height="30" align="center"><a href="<%=x(i)%>" title="�����:<%=c(i)%>" target="_blank"><%=y(i)%></a> <font color=red><%=c(i)%></font></td>
		<%next%>
        </tr>
      </table>
	  <%next%>
<%
'i=i+1
'rs.movenext
'loop
else
	if rs.eof and rs.bof then
	response.write "�������ڸ���֮��........"
	end if
end if
%>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center" class="chinese">
        <form name="form1" method="post" action="z_pic.asp?cscat_id=<%=request.querystring("cscat_id")%>">
          <tr> 
            <td align="right"> <%showpage totalcs,pic,"z_pic.asp"%>
<!--<%=currentpage%> /<%=totalpages%>ҳ,<%=totalcs%>����¼/<%=pic%>ƪÿҳ. 
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
              <%else
			  if request.querystring("cscat_id")="" then
cpage=0
elseif request.querystring("cscat_id")<>"" then
cpage=request.querystring("cscat_id")
end if%>
              <a href="z_pic.asp?page=<%=i%><%if request.querystring("cscat_id")<>"" then%>&cscat_id=<%=cpage%><%end if%>"><%=i%></a> 
              <%end if
next
if totalpages>currentpage then
if request("page")="" then
page=1
else
page=request("page")+1
end if
if request.querystring("cscat_id")="" then
cpage=0
elseif request.querystring("cscat_id")<>"" then
cpage=request.querystring("cscat_id")
end if
%>
              <a href="z_pic.asp?page=<%=page%>&cscat_id=<%=cpage%>" title="��һҳ">>></a> 
              <%end if%>
              &nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="text" name="page" class="textarea" size="4">
              <input type="submit" name="Submit" value="Go" class="button">-->
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
                <td align="center"> <table width="85%" border="0" cellspacing="0" cellpadding="4"><tr>
                      <td align="center"><a href="z_pic.asp"><b>��Ʒ��ҳ</b></a></td>
                    </tr>
                    <%sql="select * from cscat"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>
                    <tr> 
                      <td align="center"> 
                        <%
						if request.querystring("cscat_id")<>"" then

						if cint(request.querystring("cscat_id"))<>rs("cscat_id") then%>
                        <img src="images/plus.gif"> <a href="z_pic.asp?cscat_id=<%=rs("cscat_id")%>"><%=rs("cscat_name")%></a> 
                        <%else%>
                        <img src="images/plus.gif"> <font color="#ff6600"><%=rs("cscat_name")%></font> 
                        <%end if
						else%>
<img src="images/plus.gif"> <a href="z_pic.asp?cscat_id=<%=rs("cscat_id")%>"><%=rs("cscat_name")%></a> 
						<%end if
						%>
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
          <td height="40" align="right" background="images/lefttablo_01s2.gif"><br>
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
                <td align="center"> <table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <%sql="SELECT top 10 * FROM pic ORDER by cs_count DESC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>
                    <tr> 
                      <td><a href="javascript:;" onclick="window.open('picredirectcs.asp?cs_id=<%=rs("cs_id")%>','newwin');return false;"><%=rs("cs_name")%></a> <font color="#FF0000"><%=rs("cs_count")%></font> <font color="#cccccc"><%=rs("cs_date")%></font></td>
                    </tr>
                    <%rs.movenext
loop%>
<%if rs.eof and rs.bof then%>
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
end sub

function showpage(totalcs,pic,filename)
dim n,page
page=request.querystring("page")
if page="" then
page=1
end if
cscat_id=request.querystring("cscat_id")
if totalcs mod pic=0 then
n= totalcs \ pic
else
n= totalcs \ pic+1
end if
response.write "<table><tr><td>"
response.write "<p align='center'><font color='red'></font>&nbsp;"
if Page<2 then
response.write "<font color='#000080'>��ҳ ��һҳ</font>&nbsp;"
else
response.write "<a href="&filename&"?page=1&cscat_id="&cscat_id&">��ҳ</a>&nbsp;"
response.write "<a href="&filename&"?page="&Page-1&"&cscat_id="&cscat_id&">��һҳ</a>&nbsp;"
end if
if n-page<1 then
response.write "<font color='#000080'>��һҳ βҳ</font>"
else
response.write "<a href="&filename&"?page="&(Page+1)&"&cscat_id="&cscat_id&">"
response.write "��һҳ</a> <a href="&filename&"?page="&n&"&cscat_id="&cscat_id&">βҳ</a>"
end if
response.write "<font color='#000080'>&nbsp;ҳ�Σ�</font><strong><font color=red>"&Page&"</font><font color='#000080'>/"&n&"</strong>ҳ</font> "
response.write "<font color='#000080'>&nbsp;��<b>"&totalcs&"</b>��ͼƬ <b>"&pic&"</b>��ͼƬ/ҳ</font> "
response.write " <font color='#000080'>ת����</font></td><td><input type='text' name='page' value='"&page&"' size='2' class='input'>"

response.write "</td><td valign=buttom><input name='' type='submit' value='GO'  class='input'></td></tr></table>"
end function%>