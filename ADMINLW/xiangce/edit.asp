<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/newsconvert.asp" -->

<%  Call openchatconn
	set rs=server.createObject("adodb.recordset")
	
	if Request("adj")<>"" then
		chatconn.execute("update [xiangce] set adj="& Request("dj") &" where id=" & Request("adj"))
		Call errstr("�޸ĳɹ�����")
	end if
	
	
	if Request("id")<>"" then

		chatconn.execute "delete from xiangce where id=" & Request("id")
		On Error Resume Next
		Set UP = Server.CreateObject("lw.up")
		UP.delfile Server.mappath("/image/"& id &"/s"& Request("picname"))
		UP.delfile Server.mappath("/image/"& id &"/b"& Request("picname"))	
		Set UP = Nothing	
		
		Call errstr("ɾ���ɹ�������")
	
	end if

%>

<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="../../images/Style.css" rel=stylesheet>
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

sql = "Select * from xiangce where 1=1"
if Request("zhiwu")<>"" then sql=sql & " and zhiwu like '%"& Request("zhiwu") &"%'"
sql=sql&" order by id desc"
rs.open sql,chatconn,1,1

IF not IsNumeric(Request("page")) Or IsEmpty(Request("page")) Then
page=1
Else
Page=Int(Abs(Request("page")))
End if

rs.pagesize = 20
total  = rs.RecordCount
mypagesize = rs.pagesize
if not (rs.eof) then rs.absolutepage = page
i=1
%>
<div align="center">

			<table border="0" width="384" id="table1" height="224">
				<tr>
					<td height="23">
					
					����: <a href="edit.asp?zhiwu=����">����</a>
					<a href="edit.asp?zhiwu=����">������</a>
					<a href="edit.asp?zhiwu=��">����</a> <a href="edit.asp?zhiwu=��">����</a>
					<a href="edit.asp?zhiwu=��">�α�</a>
					<a href="edit.asp?zhiwu=����">����</a></td>
				</tr>
				<tr>
					<td height="42">
					
					��</td>
				</tr>
<% do while not rs.eof  and mypagesize>0 %>
				<tr>
					<td height="118" bgcolor="#FFFFFF">
					<table border="0" width="96%" id="table2" height="116">
						<tr>
							<td width="144" align="center" style="border-left-style: solid; border-left-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">
							<a title="�ߴ�:<%=rs("PicWidth")%>px��<%=rs("PicHeight")%>px ��С:<%=rs("PicSize")%>K ʱ��:<%=CDate(rs("times"))%>" target="_blank" href="http://liaowan.com/image/<%=rs("roomid")%>/b<%=rs("picname")%>">
							<img border="0" src="http://liaowan.com/image/<%=rs("roomid")%>/s<%=rs("picname")%>"></a></td>
							<td valign="top" style="border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px; border-bottom-style: solid; border-bottom-width: 1px">
							<table border="0" width="501" id="table3" height="106" cellspacing="1">
								<tr>
									<td width="497" height="21">
									<img border="0" src="../../PIC/IMG/jt.gif"> <%=rs("zhiwu")%>��<img border="0" src="../../PIC/IMG/newtopic.gif" width="14" height="14"> <%=rs("username")%>&nbsp;&nbsp; 
									���ԣ�<a target="_blank" href="http://<%=rs("roomid")%>.liaowan.com"><%=rs("roomid")%>.liaowan.com</a></td>
								</tr>
								<tr>
									<td width="497">
									<img border="0" src="../img/forum_online.gif" width="10" height="10"> 
									<%=rs("jianjie")%></td>
								</tr>
								<tr>
									<td width="497" height="38" valign="top">
									<img border="0" src="../img/forum_online.gif" width="10" height="10"> 
									<%=newsConvert(rs("txt"))%></td>
								</tr>
								<tr>
									<td width="497" height="17">
									<p align="center"><a href="edits.asp?id=<%=rs("id")%>">�༭</a>&nbsp; 
									<a href="edit.asp?id=<%=rs("id")%>&picname=<%=rs("picname")%>">ɾ��</a>&nbsp;&nbsp; 
									��������&nbsp;
<SELECT name=DMID2 onChange=location.href=options[selectedIndex].value;>
<%
i=1
do while not (i>9)

%> 
<option value=edit.asp?adj=<%=rs("id")%>&dj=<%=i%> <%if rs("adj")=i then response.write " selected"%>><%=i%></option>

<% 
  i=i+1
  loop
%>
</SELECT>&nbsp; ���ִ�����ҳ��ʾԽ��ǰ��</td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td height="2"></td>
				</tr>
<%
mypagesize=mypagesize-1
i=i+1
rs.movenext
loop
%>
				<tr>
					<td height="27">
					 <table cellspacing="5" cellpadding=0 width="638" border=0>
                        <tbody> 
                        <tr> 
                          <td width="628"> ��<%=total%>��&nbsp;&nbsp;��<%=rs.pagecount%>ҳ ��ǰ��<%=page%>ҳ ��ҳ�� 
                            <%
if page>1 then%>
                            <a href="edit.asp?page=<%=page-1%>&zhiwu=<%=Request("zhiwu")%>">��һҳ</a> 
                            <%
end if
%>
                            <%
 if rs.pagecount <= 8 then
for j=1 to rs.pagecount
response.write "<a href='edit.asp?page="&j&"&zhiwu="&Request("zhiwu")&"'>["&j&"]</a>"
next
else
for j=1 to 8
response.write "[<a href='edit.asp?page="&j&"&zhiwu="& Request("zhiwu") &"'>"&j&"</a>]&nbsp;"
next
response.write  "[<a href='edit.asp?page="&rs.pagecount&"&zhiwu="& Request("zhiwu") &"' title='���һҳ'>&gt;&gt;</a>]"
end if
%>
                            <%
if page<rs.pagecount   then%>
                            <a href="edit.asp?page=<%=page+1%>&zhiwu=<%=Request("zhiwu")%>">��һҳ</a> <font color="#336699"> 
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
</body>
</html>