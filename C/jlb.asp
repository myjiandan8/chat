<!--数据库连接文件#include file="cool.asp" -->
<%  

dsnname="Provider=Sqloledb; User ID=sa; Password=letiandaye; Data Source=211.167.74.61; Initial Catalog = bbs;"					
Set bbsconn = Server.CreateObject("ADODB.Connection")
bbsconn.Open = dsnname

	set rs=bbsconn.execute ("select * from [faction] where roomid=" & id)
	if rs.eof and rs.bof then
%> 

本聊天室还没有初始化，俱乐部数据！请联系室主初始化俱乐部数据！</a>

<% 	response.end 
	
	else
	
	buildman=rs("buildman")
	factionname=rs("factionname")
	gonggao=rs("gonggao")
	ggtitle=rs("ggtitle")
	ggtimes=rs("ggtimes")
	
 	rs.close
	end if
%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/Style.css" rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=factionname%> 俱乐部 - <%=roomname%> 视频聊天 语音聊天 聊湾</title>
<STYLE>
BODY
{scrollbar-face-color:#efefef; scrollbar-shadow-color:#efefef; 
scrollbar-highlight-color:#efefef; scrollbar-3dlight-color:#efefef; 
scrollbar-darkshadow-color:#efefef; scrollbar-track-color:#ffffff; 
scrollbar-arrow-color:ffffff;}
</STYLE>
</head>
<body background="<%=webbg%>" style="background-attachment: fixed" topmargin="0">

<%


sql = "Select * from xiangce where roomid=" & id
if zhiwu<>"" then sql=sql & " and zhiwu like '%"& zhiwu &"%'"
sql=sql&" order by id desc"
rs.open sql,conn,1,1

IF not IsNumeric(Request("page")) Or IsEmpty(Request("page")) Then
page=1
Else
Page=Int(Abs(Request("page")))
End if

rs.pagesize = 12
total  = rs.RecordCount
mypagesize = rs.pagesize
if not (rs.eof) then rs.absolutepage = page
i=1

%>

<div align="center">

			<table border="0" width="399" id="table1" cellspacing="0" cellpadding="0">
				<tr>
					<td height="10" width="393">
					
					</td>
				</tr>
				<tr>
					<td height="62" width="393" valign="top">
					
					<table border="1" width="100%" id="table2" cellspacing="0" cellpadding="0" style="border-collapse: collapse" height="101" bordercolor="#E1FEA7">
						<tr>
							<td bgcolor="#76AE02" height="25">
							<font color="#FFFFFF">:::<strong><%=factionname%>公告</strong>:::</font></td>
						</tr>
						<tr>
							<td align="center" valign="top">
							<table border="0" width="100%" id="table3">
								<tr>
									<td height="5"><b><%=ggtitle%></b></td>
								</tr>
								<tr>
									<td height="9"><%=gonggao%></td>
								</tr>
								<tr>
									<td height="29" align="right"><%=ggtimes%>　</td>
								</tr>
								<tr>
									<td>　</td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					</td>
				</tr>
<% do while not rs.eof  and mypagesize>0 %>
				<tr>
					<td height="1" width="385" align="center">


				</td>
				</tr>
<%
mypagesize=mypagesize-1
i=i+1
rs.movenext
loop
%>
				<tr>
					<td height="10" width="393"></td>
				</tr>
				<tr>
					<td height="21" width="393">
					 <table cellspacing="5" cellpadding=0 width="387" border=0>
                        <tbody> 
                        <tr> 
                          <td width="377"> 共<%=total%>条&nbsp;&nbsp;共<%=rs.pagecount%>页 当前第<%=page%>页 分页： 
                            <%
if page>1 then%>
                            <a href="xiangce.asp?page=<%=page-1%>&zhiwu=<%=zhiwu%>">上一页</a> 
                            <%
end if
%>
                            <%
 if rs.pagecount <= 8 then
for j=1 to rs.pagecount
response.write "<a href='xiangce.asp?page="&j&"&zhiwu="&zhiwu&"'>["&j&"]</a>"
next
else
for j=1 to 8
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

<p>　</p>

</body>
</html>