<!-- #include file="setup.asp" -->
<%
if adminpassword<>session("pass") then response.redirect "admin.asp?menu=login"


response.write "<center>"

select case Request("menu")

case "discreteness"
discreteness

case "log"
log

case "circumstance"
circumstance

end select





sub circumstance

%>

<table border="0" cellpadding="2" cellspacing="1" width=90% class=a2 align=center>
<tr class=a1>
<td height="16" align="center">��Ŀ</td>
<td width="66%" align="center" height="25">ֵ</td>
</tr>
<tr class=a3>
<td height="25">������������</td>
<td width="66%" height="25"><%=Request.ServerVariables("server_name")%></td>
</tr>
<tr class=a4>
<td height="25">��������IP��ַ</td>
<td width="66%" height="25"><%=Request.ServerVariables("LOCAL_ADDR")%>
</tr>
<tr class=a3>
<td height="25">����������ϵͳ</td>
<td width="66%" height="25"><%=Request.ServerVariables("OS")%>
</tr>
<tr class=a4>
<td height="25">��������������</td>
<td width="66%" height="25"><%=ScriptEngine & "/"& ScriptEngineMajorVersion &"."&ScriptEngineMinorVersion&"."& ScriptEngineBuildVersion %>
</tr>
<tr class=a3>
<td height="25">��������������Ƽ��汾</td>
<td width="66%" height="25"><%=Request.ServerVariables("SERVER_SOFTWARE")%>
</tr>
<tr class=a4>
<td height="25">�������������еĶ˿�</td>
<td width="66%" height="25"><%=Request.ServerVariables("server_port")%>
</tr>
<tr class=a3>
<td height="25">������CPU����</td>
<td width="66%" height="25"><%=Request.ServerVariables("NUMBER_OF_PROCESSORS")%></td>
</tr>

<tr class=a4>
<td height="25">������Application����</td>
<td width="66%" height="25"><%=Application.Contents.Count%></td>
</tr>

<tr class=a3>
<td height="25">������Session����</td>
<td width="66%" height="25"><%=Session.Contents.Count%></td>
</tr>

<tr class=a4>
<td height="25">���������·��</td>
<td width="66%" height="25"><%=Request.ServerVariables("path_translated")%>
</tr>
<tr class=a3>
<td height="25">�����URL</td>
<td width="66%" height="25">http://<%=Request.ServerVariables("server_name")%><%=Request.ServerVariables("script_name")%></td>
</tr>
<tr class=a4>
<td height="25">��������ǰʱ��</td>
<td width="66%" height="25"><%=now()%>
</tr>
<tr class=a4>
<td height="25">�ű����ӳ�ʱʱ��</td>
<td width="66%" height="25"><%=Server.ScriptTimeout%> ��</td>
</tr>
</table>
<%
end sub

sub log
%>
����¼ֻ����һ������
<table cellspacing=1 width=90% cellpadding=2 class=a2 align=center>
<tr class=a1 id=TableTitleLink>
<td align="center" height="25"><a href="?menu=log&order=username">�û���</a></td>
<td align="center" height="25"><a href="?menu=log&order=ip">IP</a></td>
<td width=30% align=center height="25">������Ŀ</td>
<td width=20% align="center" height="25"><a href="?menu=log&order=logtime">����ʱ��</a></td>
<td width=30% align="center" height="25"><a href="?menu=log&order=windows">����ϵͳ</a></td>
</tr>
<%


if Request("order")<>"" then
order=HTMLEncode(Request("order"))
else
order="logtime"
end if

search=HTMLEncode(Request("search"))
if search<>"" then searchlist="where [username] like '%"&search&"%' or [ip] like '%"&search&"%' or [remark] like '%"&search&"%'"

sql="select * from log "&searchlist&" order by "&order&" Desc"
rs.Open sql,Conn,1

pagesetup=20 '�趨ÿҳ����ʾ����
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��


i=0
Do While Not RS.EOF and i<pagesetup
i=i+1

response.write "<tr class=a3><td align=center>"&rs("username")&"</td><td align=center>"&rs("ip")&"</td><td style=word-break:break-all>"&rs("remark")&"</td><td align=center>"&rs("logtime")&"</td><td align=center><font size=1>"&rs("windows")&"</font></td></tr>"



RS.MoveNext
loop
rs.close
%>
</table>
<table cellspacing=1 width=90% align=center>

	<tr>
		<td align="center" width="50%">ҳ��[<b>
<script>
PageCount=<%=TotalPage%>
topage=<%=PageCount%>
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?topage="+i+"&menu=log&search=<%=search%>>"+ i +"</a> ");
}
}
}

</script>
</b>]</td>

		<td align="right"><form action="admin_other.asp?menu=log" method="post">
			������¼��<input size="15" value="<%=search%>" name="search"> <input type="submit" value=" ȷ�� "></td></form>
	</tr>
</table>



<%
end sub

sub discreteness
%>
<table border=0 width="90%" cellspacing=1 cellpadding=3 class=a2 align=center>
<tr class=a1>
<td width="57%" height="25">&nbsp;�������</td><td width="41%" height="25">֧�ּ��汾</td>
</tr>
<%
Dim theInstalledObjects(17)
theInstalledObjects(0) = "MSWC.AdRotator"
theInstalledObjects(1) = "MSWC.BrowserType"
theInstalledObjects(2) = "MSWC.NextLink"
theInstalledObjects(3) = "MSWC.Tools"
theInstalledObjects(4) = "MSWC.Status"
theInstalledObjects(5) = "MSWC.Counters"
theInstalledObjects(6) = "MSWC.PermissionChecker"
theInstalledObjects(7) = "ADODB.Stream"
theInstalledObjects(8) = "adodb.connection"
theInstalledObjects(9) = "Scripting.FileSystemObject"
theInstalledObjects(10) = "SoftArtisans.FileUp"
theInstalledObjects(11) = "SoftArtisans.FileManager"
theInstalledObjects(12) = "JMail.Message"
theInstalledObjects(13) = "CDONTS.NewMail"
theInstalledObjects(14) = "Persits.MailSender"
theInstalledObjects(15) = "LyfUpload.UploadFile"
theInstalledObjects(16) = "Persits.Upload.1"
theInstalledObjects(17) = "w3.upload"
For i=0 to 17
Response.Write "<TR class=a3><TD>&nbsp;" & theInstalledObjects(i) & "<font color=888888>&nbsp;"
select case i
case 8
Response.Write "(ACCESS ���ݿ�)"
case 9
Response.Write "(FSO �ı��ļ���д)"
case 10
Response.Write "(SA-FileUp �ļ��ϴ�)"
case 11
Response.Write "(SA-FM �ļ�����)"
case 12
Response.Write "(JMail �ʼ�����)"
case 13
Response.Write "(WIN����SMTP ����)"
case 14
Response.Write "(ASPEmail �ʼ�����)"
case 15
Response.Write "(LyfUpload �ļ��ϴ�)"
case 16
Response.Write "(ASPUpload �ļ��ϴ�)"
case 17
Response.Write "(w3 upload �ļ��ϴ�)"
end select
Response.Write "</font></td><td height=25>"
If Not IsObjInstalled(theInstalledObjects(i)) Then
Response.Write "<font color=red><b>��</b></font>"
Else
Response.Write "<b>��</b> " & getver(theInstalledObjects(i)) & ""
End If
Response.Write "</td></TR>" & vbCrLf
Next
%>
</table>
<%
end sub

''''''''''''''''''''''''''''''
Function IsObjInstalled(strClassString)
On Error Resume Next
IsObjInstalled = False
Err = 0
Dim xTestObj
Set xTestObj = Server.CreateObject(strClassString)
If 0 = Err Then IsObjInstalled = True
Set xTestObj = Nothing
Err = 0
End Function
''''''''''''''''''''''''''''''
Function getver(Classstr)
On Error Resume Next
getver=""
Err = 0
Dim xTestObj
Set xTestObj = Server.CreateObject(Classstr)
If 0 = Err Then getver=xtestobj.version
Set xTestObj = Nothing
Err = 0
End Function

htmlend
%>