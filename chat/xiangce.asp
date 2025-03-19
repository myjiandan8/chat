<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--#include file="inctop.asp"-->
<!--#include file="incfooter.asp"-->
<% call top() %>
<title>相册 - 聊湾 视频聊天 语音聊天 蓝天语音 LiaoWan.Com</title>
<link rel="stylesheet" href="Sams.css" type="text/css">
<%
Call OpenChatConn

On Error Resume Next

zhiwu = ContentEncode(Request("zhiwu"))
set rs=server.createObject("adodb.recordset")
sql = "Select * from xiangce where 1=1"
if zhiwu<>"" then sql=sql & " and zhiwu like '%"& zhiwu &"%'"
sql=sql&" order by adj desc,id desc"
rs.open sql,chatconn,1,1

IF not IsNumeric(Request("page")) Or IsEmpty(Request("page")) Then
page=1
Else
Page=Int(Abs(Request("page")))
End if

rs.pagesize = 16
total  = rs.RecordCount
mypagesize = rs.pagesize
if not (rs.eof) then rs.absolutepage = page
i=1

%>

<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td height="30" colspan="3"></td>
  </tr>
  <tr> 
    <td align="center" valign="top" width="554"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td width="37%" background="images/tablebg.gif">::::: 聊湾相册 :::::</td>
          <td width="51%" align="right" background="images/tablebg.gif">当前共有<span class="newshead"><%=total%></span>张相片</td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table> 
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>

      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">
          
          

<div align="center">

			<table border="0" width="541" id="table1" cellspacing="0" cellpadding="0">
				<tr>
					<td height="35" width="547" colspan="4">
					
					<a href="xiangce.asp">全部</a>: <a href="xiangce.asp?zhiwu=站">
					房间站长</a>&nbsp; <a href="xiangce.asp?zhiwu=室">室主</a>&nbsp;
					<a href="xiangce.asp?zhiwu=主持">主持人</a>&nbsp;
					<a href="xiangce.asp?zhiwu=歌">歌手</a>&nbsp;
					<a href="xiangce.asp?zhiwu=舞">舞者</a>&nbsp;
					<a href="xiangce.asp?zhiwu=宾">嘉宾</a>&nbsp;
					<a href="xiangce.asp?zhiwu=友">聊友</a></td>
				</tr>
<% do while not rs.eof  and mypagesize>0 %>
				<tr>
					<td height="117" width="135" align="center" valign="top">
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a href="showpic.asp?id=<%=rs("id")%>">
							<img border="0" src="http://liaowan.com/image/<%=rs("roomid")%>/s<%=rs("picname")%>"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					</td>
					<td height="117" width="135" align="center" valign="top">	
					<% 
					mypagesize=mypagesize-1
					i=i+1
					rs.movenext
					if (not rs.eof) and mypagesize>0 then 
					 %>
					
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a href="showpic.asp?id=<%=rs("id")%>">
							<img border="0" src="http://liaowan.com/image/<%=rs("roomid")%>/s<%=rs("picname")%>"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					<% end if %>
							</td>
					<td height="117" width="135" align="center"  valign="top">
					<% 
					mypagesize=mypagesize-1
					i=i+1
					rs.movenext
					if (not rs.eof) and mypagesize>0 then 
					 %>
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a href="showpic.asp?id=<%=rs("id")%>">
							<img border="0" src="http://liaowan.com/image/<%=rs("roomid")%>/s<%=rs("picname")%>"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					<% end if %>
							</td>
					<td height="117" width="136" align="center"  valign="top">
					<% 
					mypagesize=mypagesize-1
					i=i+1
					rs.movenext
					if (not rs.eof) and mypagesize>0 then 
					 %>
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a href="showpic.asp?id=<%=rs("id")%>">
							<img border="0" src="http://liaowan.com/image/<%=rs("roomid")%>/s<%=rs("picname")%>"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					<% end if %>
							</td>
				</tr>
				<tr>
					<td height="8" width="547" align="center" colspan="4">
				</td>
				</tr>
<%
mypagesize=mypagesize-1
i=i+1
rs.movenext
loop
%>
				<tr>
					<td height="13" width="547" colspan="4"></td>
				</tr>
				<tr>
					<td height="30" width="547" colspan="4">
					 <table cellspacing="5" cellpadding=0 width="536" border=0>
                        <tbody> 
                        <tr> 
                          <td width="526"> 共<%=total%>条&nbsp;&nbsp;共<%=rs.pagecount%>页 当前第<%=page%>页 分页： 
                            <%
if page>1 then%>
                            <a href="xiangce.asp?page=<%=page-1%>&zhiwu=<%=zhiwu%>">上一页</a> 
                            <%
end if
%>
                            <%
if rs.pagecount <= 12 then
for j=1 to rs.pagecount
response.write "<a href='xiangce.asp?page="&j&"&zhiwu="&zhiwu&"'>["&j&"]</a>"
next
else
for j=1 to 12
response.write "[<a href='xiangce.asp?page="&j&"&zhiwu="& zhiwu &"'>"&j&"</a>]&nbsp;"
next
response.write  "[<a href='xiangce.asp?page="&rs.pagecount&"&zhiwu="& zhiwu &"' title='最后一页'>&gt;&gt;</a>]"
end if
%>
                            <%
if page<rs.pagecount   then%>
                            <a href="xiangce.asp?page=<%=page+1%>&zhiwu=<%=zhiwu%>">下一页</a> <font color="#336699"> 
                            <%
end if
%>
                            </font></td>
                        </tr>
                        </tbody> 
                      </table>
					
					
					</td>
				</tr>

			</table>
　</div>


          
          </td>
        </tr>
      </table>

      <br>
    </td>
    <td align="center" valign="top" width="1" background="images/dotlinev.gif"></td>
    <td align="center" valign="top" width="205"><table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01.gif"><br>
            :::<strong>相册公告</strong>:::&nbsp;&nbsp;&nbsp;</td>
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
				<table width="94%" border="0" cellspacing="0" cellpadding="4" height="131">
					<tr> 
                      <td height="20"> 
                        　</td>
                    </tr>
                    <tr> 
                      <td class="chinese" height="95" valign="top">&nbsp;&nbsp; 
						各位聊室室主、管理、聊友可不要把你们照片藏起来哦。只要真片真实就可以了。我们要的真实的交流。<br>
&nbsp;&nbsp; 展示自己聊室风采。<br>
&nbsp;&nbsp; 加油！加油！加油！GO,GO<br>
						<font color="#008000">注意：每个聊天室加的照片都拥有自己聊天室的LOGO印记和声明。<br>
&nbsp;&nbsp;&nbsp; </font><font color="#FF9900">&nbsp;超级SHOW吧！还不赶快行动</font><br>
						<font color="#FF0000">注意：严禁发色情照片，我们直接封房间ID的</font></td>
                    </tr>

                     <tr>
                      <td height="20">　</td>
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
            :::<strong>热门照片</strong>:::&nbsp;&nbsp;&nbsp;</td>
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
                     <td>
                     
</td>
                    </tr>
                    <tr> 
                      <td align="center" class="chinese">资料正在更新之中........</td>
                    </tr>
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
call endpage()
%>