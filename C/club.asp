<!--���ݿ������ļ�#include file="cool.asp" -->
<%  

dsnname="Provider=Sqloledb; User ID=newnewsa; Password=newnewpipao; Data Source=211.91.112.110; Initial Catalog = bbs;"					
Set bbsconn = Server.CreateObject("ADODB.Connection")
bbsconn.Open = liaowanbbs

	set rs=bbsconn.execute ("select * from [faction] where roomid=" & id)
	if rs.eof and rs.bof then
%> 

�������һ�û�г�ʼ�������ֲ����ݣ�����ϵ������ʼ�����ֲ����ݣ�</a>

<% 	response.end 
	
	else
	
	jvlid=rs("id")
	buildman=rs("buildman")
	factionname=rs("factionname")
	allname=rs("allname")
	tenet=rs("tenet")
	addtime=Cdate(rs("addtime"))
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
<title><%=factionname%> ���ֲ� - <%=roomname%> ��Ƶ���� �������� ����</title>
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


sql = "select top 100 * from [User] where faction='"& factionname &"'"
sql=sql&" order by dengji desc, uid desc"
rs.open sql,bbsconn,1,1

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
					<table border="1" width="99%" id="table2" cellspacing="0" cellpadding="0" style="border-collapse: collapse" height="88" bordercolor="#E1FEA7" bgcolor="#FFFFFF">
						<tr>
							<td bgcolor="#76AE02" height="22">
							<font color="#FFFFFF">:::<strong><%=factionname%>��Ϣ</strong>::: </font></td>
						</tr>
						<tr>
							<td align="center" valign="top">
							<table border="0" width="388" id="table3" cellspacing="0" cellpadding="0">
								<tr>
									<td height="20" width="83"> ���ֲ���ƣ�</td>
									<td height="20" width="142"> <%=factionname%></td>
									<td height="20" width="149"> ������<%=DateValue(addtime)%></td>
								</tr>
								<tr>
									<td height="20" width="83"> ���ֲ���ϯ��</td>
									<td height="20" width="295" colspan="2"> <%=buildman%></td>
								</tr>
								<tr>
									<td height="20" width="83">���ֲ�ȫ�ƣ�</td>
									<td height="20" width="295" colspan="2"> <%=allname%></td>
								</tr>
								<tr>
									<td height="20" width="83">
									���ֲ���ּ��</td>
									<td height="20" width="295" colspan="2"> <%=tenet%></td>
								</tr>
								<tr>
									<td height="23" align="center" width="382" colspan="3">
									<a target="_blank" href=/bbs/faction.asp?menu=factionadd&id=<%=jvlid%>>���� [<font color="#FF0000"><b><%=factionname%></b></font>] ���ֲ�</a></td>
								</tr>
								</table>
							</td>
						</tr>
					</table>

							</td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td height="25">

					<table border="1" width="98%" id="table2" cellspacing="0" cellpadding="0" style="border-collapse: collapse" height="88" bordercolor="#E1FEA7" bgcolor="#FFFFFF">
						<tr>
							<td bgcolor="#76AE02" height="22">
							<font color="#FFFFFF">:::<strong>����</strong>::: </font></td>
						</tr>
						<tr>
							<td align="center" valign="top">
							<table border="0" width="99%" id="table3">
								<tr>
									<td height="5"><b><%=ggtitle%></b></td>
								</tr>
								<tr>
									<td height="9"><%=gonggao%></td>
								</tr>
								<tr>
									<td height="29" align="right"><%=ggtimes%>��</td>
								</tr>
								<tr>
									<td height="3"></td>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					</td>
				</tr>

				<tr>
					<td height="1" width="385" align="center">


				</td>
				</tr>

				<tr>
					<td height="10" width="393"></td>
				</tr>
				<tr>
					<td height="21" width="393" bgcolor="#FFFFFF">
					 <table cellpadding=0 width="99%" border=0 bgcolor="#FFFFFF" style="border-collapse: collapse">
                        <tbody> 
                        <tr> 
                          <td width="395" bgcolor="#76AE02" style="border-bottom-style: solid; border-bottom-width: 1px"> 
							<font color="#FFFFFF">:::<strong>��Ա�б�</strong>:::</font></td>
                        </tr>
                        
                        <tr> 
                          <td width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#76AE02" height="5"></td>
                        </tr>
                        
                        <tr> 
                          <td width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px" bordercolor="#76AE02">
                         
					 <div align="center">
                         
					 <table border="0" width="90%" id="table4" height="48" cellspacing="1" bgcolor="#76AE02">
					 <% do while not rs.eof  and mypagesize>0 %>
							<tr>
								<td width="52" align="center" rowspan="2" bgcolor="#FFFFFF"><img src="<%=rs("userface")%>" width="32" height="32"></td>
								<td width="102" bgcolor="#FFFFFF">��<%=rs("username")%></td>
								<td width="74" bgcolor="#FFFFFF">���ֲ�ְ��</td>
								<td width="123" bgcolor="#FFFFFF">��<%=rs("shenfen")%></td>
							</tr>
						<tr>
								<td width="325" colspan="3" bgcolor="#FFFFFF">
								�Ա�<%
select case rs("sex")
case "male"
response.write "��"
case "female"
response.write "Ů"
end select
								%>&nbsp; <script>document.write(astro("<%=rs("birthday")%>"));</script> QQ��<%=rs("userqq")%>&nbsp; ����״̬��</td>
							</tr>
					<%
						mypagesize=mypagesize-1
						i=i+1
						rs.movenext
						loop
					%>
							</table>
                          
                          </div>
                          
                          </td>
                        </tr>
                        <tr> 
                          <td width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#76AE02"> &nbsp;��<%=total%>��&nbsp;&nbsp;��<%=rs.pagecount%>ҳ ��ǰ��<%=page%>ҳ ��ҳ�� 
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