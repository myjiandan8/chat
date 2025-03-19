<!--数据库连接文件#include file="../cool.asp" -->
<!--#include file="../../INC/newsconvert.asp" -->
<LINK href="../../images/Style.css" rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<STYLE>
BODY
{scrollbar-face-color:#efefef; scrollbar-shadow-color:#efefef; 
scrollbar-highlight-color:#efefef; scrollbar-3dlight-color:#efefef; 
scrollbar-darkshadow-color:#efefef; scrollbar-track-color:#ffffff; 
scrollbar-arrow-color:ffffff;}
</STYLE>

<body background="<%=webbg%>" style="background-attachment: fixed">

<TITLE><%=roomname%> -留言版 - 聊湾 - liaowan.com </TITLE>
<div align="center">

        <div align="center">
          <center> 
        <table height=309 cellspacing=0 cellpadding=5 width=238 border=0 style="border-collapse: collapse" bordercolor="#111111">
          <tbody> 
          <tr> 
            <td height="344" width="320"> 
              <div align="center" style="width: 365; height: 364"> 
                <table cellspacing=0 cellpadding=0 width="297" border=0 align="center">
                  <tr> 
                    <td valign=top height="12" width="186"> 
                      <div align="left"> <a href="Add.asp"><img src="IMAGES/liuyan.gif" width="45" height="18" border="0"></a> 
                        　</div>
                    </td>
                    <td valign=top height="12" width="192"> 
                      <div align="center">　</div>
                    </td>
                    <td valign=top height="12" width="80">　</td>
                  </tr>
                  <tbody> 
                  <tr> 
                    <td valign=top height="12" colspan="3" width="458">
                      <div align="left"> 
<!--#include file="code.asp"-->
<%
dim page
sql = "Select * from book where roomid=" & id &" and ss=1 Order By id Desc"
rs.open sql,conn,1,1

IF not IsNumeric(Request("page")) Or IsEmpty(Request("page")) Then
page=1
Else
Page=Int(Abs(Request("page")))
End if

rs.pagesize = 5
total  = rs.RecordCount
mypagesize = rs.pagesize
if not (rs.eof) then rs.absolutepage = page
%>

<%
dim i 
i=1
do while not rs.eof  and mypagesize>0

ids=rs("id")
name=rs("name")
email=rs("email")
homepage=rs("homepage")
qq=rs("qq")
content=rs("content")
addtime=rs("addtime")
reply=rs("reply")
head=rs("head")
uids = rs("uid")

T_Emot=rs("T_Emot")
%>
                      </div>
                      <table bordercolor=#cccccc cellspacing="3" cellpadding=3 width="378"  border="0" style="WORD-BREAK: break-all" align="center" >
                        <tr> 
                          <td valign=bottom bordercolor=#333333 height="2" width="366"> 
                            <table width="100%" border="0" align="center" height="1" bordercolor="#CC9999">
                              <tr> 
                                <td height="1"> 
                                  <div align="center">
<font size="1" color="#C0C0C0">◇◇◇ ◇◇◇ ◇◇◇ ◇◇◇ ◇◇◇ ◇◇◇ ◇◇◇ ◇◇◇ </font></div>
                                </td>
                              </tr>
                            </table>
                          </td>
                        </tr>
                        <tbody> 
                        <tr> 
                          <td valign=bottom bordercolor=#333333 width="366"> 
                            <table cellspacing=0 cellpadding=0 border=0 width="366" style="border-collapse: collapse" bordercolor="#111111">
                              <tbody> 
                              <tr> 
                                <td width=14><img 
                        src="IMAGES/top_l.gif"></td>
                                <td 
                      background="IMAGES/top_c.gif" width="444"></td>
                                <td width=16><img 
                        src="IMAGES/top_r.gif"></td>
                              </tr>
                              <tr> 
                                <td valign=top width=14 
                      background="IMAGES/center_l.gif">　</td>
                                <td style="LINE-HEIGHT: 14pt" 
                        bgcolor=#fffff1 width="444">&nbsp;<img src=" <%=T_Emot%>" border="0"> 
<%=newsConvert(rs("content"))%>
                                </td>
                                <td valign=top width=16 
                      background="IMAGES/center_r.gif"><img 
                        src="IMAGES/top_r2.gif"></td>
                              </tr>
                              <tr> 
                                <td valign=top width=14><img 
                        src="IMAGES/foot_l1.gif"></td>
                                <td 
                      background="IMAGES/foot_c.gif" width="444"><img 
                        src="IMAGES/foot_l3.gif"></td>
                                <td align=right width=16><img 
                        src="IMAGES/foot_r.gif"></td>
                              </tr>
                              </tbody> 
                            </table>
                            <table cellspacing=0 cellpadding=0 width="362" border=0>
                              <tbody> 
                              <tr> 
                                <td valign=top width="88" height="18" rowspan="2"> 
                                  <p align="center"><img src=" <%=head%>" border="0" alt="网友:<%=name%> " width="40" height="40"><br>
                                    [
                                    <% if uids="" then%>
                                    <%=name%>
                                    <% else %>
                                    <a target="_blank" href="http://<%=uids%>.liaowan.com"><%=name%></a> 
                                    <% end if %> ] 
                                </td>
                                <td valign=bottom height="9" width="274"><a href="<%=homepage%>" target="_blank"><img src="IMAGES/home.gif" width="16" height="16" border="0">主页</a> 
                                  <a href="mailto:<%=email%>"><img src="IMAGES/email.gif" width="18" height="18" border="0">邮箱</a> 
                                  <img src="IMAGES/qq.gif" width="16" height="16" border="0"><a target="_blank" href="http://search.tencent.com/cgi-bin/friend/user_show_info?ln=<%=qq%>">QQ:<%=qq%></a> 时间:<%=addtime%> </td>
                              </tr>
                              <tr> 
                                <td valign=bottom height="9" width="274"> 
                                  <table cellspacing=0 cellpadding=0 border=0 align="center" style="WORD-BREAK: break-all" width="267">
                                    <%
if reply<>"没有" then
%>
                                    <tbody> 
                                    <tr> 
                                      <td width=15 align="right"><img 
                        src="IMAGES/top_l.gif"></td>
                                      <td 
                      background="IMAGES/top_c.gif" width="402"></td>
                                      <td width=10><img 
                        src="IMAGES/top_r.gif"></td>
                                    </tr>
                                    <tr> 
                                      <td valign=top width=15 
                      background="IMAGES/center_l.gif"></td>
                                      <td style="LINE-HEIGHT: 14pt" 
                        bgcolor=#fffff1 width="402">&nbsp;<font color=red>室主回复：</font><font color="#666633"> 
                                        <%content=replace(rs("reply"),vbNewline,"<br>",1,-1,0)
content=""&reply
response.write reply%>
                                        <img src="IMAGES/new4.gif" width="19" height="18"> 
                                        </font> </td>
                                      <td valign=top width=10 
                      background="IMAGES/center_r.gif"><img 
                        src="IMAGES/top_r2.gif"></td>
                                    </tr>
                                    <tr> 
                                      <td valign=top width=15 height="23" align="right"><img 
                        src="IMAGES/foot_l1.gif"></td>
                                      <td 
                      background="IMAGES/foot_c.gif" width="402">　</td>
                                      <td align=right width=10 height="23"><img 
                        src="IMAGES/foot_r.gif"></td>
                                    </tr>
                                    </tbody> 
                                    <%else%>
                                    <%end if%>
                                  </table>
                                </td>
                              </tr>
                              <tr> 
                                <td valign=top colspan="2" width="320">&nbsp; </td>
                              </tr>
                              <tr> 
                                <td valign=top colspan="2" width="320"> 
                                </td>
                              </tr>
                              </tbody> 
                            </table>
                          </td>
                        </tr>
                        </tbody> 
<%
mypagesize=mypagesize-1
i=i+1
rs.movenext
loop
%>
                      </table>
                      <table cellspacing="5" cellpadding=0 width="385" border=0>
                        <tbody> 
                        <tr> 
                          <td width="375"> &nbsp;<font color="#336699">共</font><font color=red><%=total%></font><font color="#306898"> 
                          条</font><font color="#336699">&nbsp;&nbsp;共<%=rs.pagecount%>
                            页 当前第<%=page%>页 留言分页： 
                            <%
if page>1 then%>
                            </font><a href="index.asp?page=<%=page-1%>"><font color="#336699">上一页</font></a><font color="#336699"> 
                            <%
end if
%>
                            <%
 if rs.pagecount <= 8 then
for j=1 to rs.pagecount
response.write "<a href='index.asp?page="&j&"'>["&j&"]</a>"
next
else
for j=1 to 8
response.write "[<a href='index.asp?page="&j&"'>"&j&"</a>]&nbsp;"
next
response.write  "[<a href='index.asp?page="&rs.pagecount&"' title='最后一页'>&gt;&gt;</a>]"
end if
%>
                            <%
if page<rs.pagecount   then%>
                            </font><a href="index.asp?page=<%=page+1%>"><font color="#336699">下一页</font></a><font color="#336699"> 
                            <%
end if
%>
                            </font></td>
                        </tr>
                        </tbody> 
                      </table>
                    </td>
                  </tr>
                  </tbody> 
                </table>  　</div>
            </td>
          </tr>
          </tbody> 
        </table>
          </center>
        </div>
        </body>