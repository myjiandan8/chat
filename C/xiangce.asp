<!--���ݿ������ļ�#include file="cool.asp" -->
<!--#include file="../INC/newsconvert.asp" -->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/Style.css" rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��� ������ ����</title>
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
zhiwu = ContentEncode(Request("zhiwu"))

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
On Error Resume Next
%>
<div align="center">

			<table border="0" width="399" id="table1" cellspacing="0" cellpadding="0">
				<tr>
					<td height="21" width="393" colspan="3">
					
					<a href="xiangce.asp">ȫ��</a>: <a href="xiangce.asp?zhiwu=����">����</a>
					<a href="xiangce.asp?zhiwu=����">������</a>
					<a href="xiangce.asp?zhiwu=��">����</a>
					<a href="xiangce.asp?zhiwu=��">����</a>
					<a href="xiangce.asp?zhiwu=��">�α�</a>
					<a href="xiangce.asp?zhiwu=����">����</a></td>
				</tr>
<% do while not rs.eof  and mypagesize>0 %>
				<tr>
					<td height="117" width="133" align="center" valign="top">
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a title="�ߴ�:<%=rs("PicWidth")%>px��<%=rs("PicHeight")%>px ��С:<%=rs("PicSize")%>K ʱ��:<%=CDate(rs("times"))%>" href="pic.asp?id=<%=rs("id")%>">
							<img border="0" src="../image/<%=id%>/s<%=rs("picname")%>" width="122" height="106"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					</td>
					<td height="117" width="133" align="center" valign="top">	
					<% 
					mypagesize=mypagesize-1
					i=i+1
					rs.movenext
					if (not rs.eof) and mypagesize>0 then 
					 %>
					
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a title="�ߴ�:<%=rs("PicWidth")%>px��<%=rs("PicHeight")%>px ��С:<%=rs("PicSize")%>K ʱ��:<%=CDate(rs("times"))%>" href="pic.asp?id=<%=rs("id")%>">
							<img border="0" src="../image/<%=id%>/s<%=rs("picname")%>" width="122" height="106"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					<% end if %>
							</td>
					<td height="117" width="133" align="center"  valign="top">
					<% 
					mypagesize=mypagesize-1
					i=i+1
					rs.movenext
					if (not rs.eof) and mypagesize>0 then 
					 %>
							<table border="0" width="130" id="table2" bgcolor="#000000">
								<tr>
									<td height="111" align="center">							
									<a title="�ߴ�:<%=rs("PicWidth")%>px��<%=rs("PicHeight")%>px ��С:<%=rs("PicSize")%>K ʱ��:<%=CDate(rs("times"))%>" href="pic.asp?id=<%=rs("id")%>">
							<img border="0" src="../image/<%=id%>/s<%=rs("picname")%>" width="122" height="106"></a></td>
								</tr>
								<tr>
									<td>&nbsp;<font color="#EFEFEF"><%=rs("zhiwu")%>:<%=rs("username")%></font></td>
								</tr>
							</table>
					<% end if %>
							</td>
				</tr>
				<tr>
					<td height="19" width="385" align="center" colspan="3">
				</td>
				</tr>
<%
mypagesize=mypagesize-1
i=i+1
rs.movenext
loop
%>
				<tr>
					<td height="10" width="393" colspan="3"></td>
				</tr>
				<tr>
					<td height="21" width="393" colspan="3">
					 <table cellspacing="5" cellpadding=0 width="387" border=0>
                        <tbody> 
                        <tr> 
                          <td width="377"> ��<%=total%>��&nbsp;&nbsp;��<%=rs.pagecount%>ҳ ��ǰ��<%=page%>ҳ ��ҳ�� 
                            <%
if page>1 then%>
                            <a href="xiangce.asp?page=<%=page-1%>&zhiwu=<%=zhiwu%>">��һҳ</a> 
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
response.write  "[<a href='xiangce.asp?page="&rs.pagecount&"&zhiwu="& zhiwu &"' title='���һҳ'>&gt;&gt;</a>]"
end if
%>
                            <%
if page<rs.pagecount   then%>
                            <a href="xiangce.asp?page=<%=page+1%>&zhiwu=<%=zhiwu%>">��һҳ</a> <font color="#336699"> 
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
��</div>

<p>��</p>

</body>
</html>