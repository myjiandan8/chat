<!-- #include file="setup.asp" -->

<%
top
if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")

if Request("menu")="up" then

id=Conn.Execute("Select id From [user] where username='"&Request.Cookies("username")&"'")(0)

select case selectup
case ""
error("<li>�Բ��𣬱�ϵͳ�ر��ļ��ϴ�����")
case "SA-FileUp"
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Set upl = Server.CreateObject("SoftArtisans.FileUp")
if upl.TotalBytes > int(MaxPhoto) then error("<li>ͼƬ��С���ó��� "&int(MaxPhoto/1024)&" KB<br>��ǰ��ͼƬ��СΪ "&int(upl.TotalBytes/1024)&" KB")
if upl.ContentType<>"image/gif" and upl.ContentType<>"image/pjpeg" then error("<li>���ϴ�����Ƭ����GIF��JPG��ʽ���ļ�")
upl.SaveAs Server.mappath("images/upphoto/"&id&".jpg")
set upl=nothing
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "FSO"
strFileName = Request.Form("file")
types=LCase(mid(strFileName,InStrRev(strFileName, ".")+1))
if types <> "gif" and types <> "jpg" then error("<li>�Բ��𣬱�������ֻ֧��GIF��JPG��ʽ���ļ�<li>��֧�� "&types&" ��ʽ���ļ�")
Set objStream = Server.CreateObject("ADODB.Stream")
objStream.Type=1
objStream.Open
objStream.LoadFromFile strFileName
if objStream.size = 0 then error2("��ǰ�ļ�Ϊ���ļ�")
if objStream.size > int(MaxPhoto) then error2("�ļ���С���ó��� "&int(MaxPhoto/1024)&" KB\n��ǰ���ļ���СΪ "&int(objStream.size/1024)&" KB")
objStream.SaveToFile Server.mappath("images/upphoto/"&id&".jpg"),2
objStream.Close
Set objStream = Nothing
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end select

conn.execute("update [user] set userphoto='images/upphoto/"&id&".jpg' where username='"&Request.Cookies("username")&"'")
message=message&"<li>��Ƭ�ϴ��ɹ�<li><a href=upphoto.asp>�����ϴ���Ƭ</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=upphoto.asp>")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

elseif Request("menu")="custom" then

userphoto=HTMLEncode(Request("userphoto"))
if userphoto="" then error("<li>��ƬURL����û����д")
if instr(userphoto,";")>0 then error2("URL�в��ܺ����������")
conn.execute("update [user] set userphoto='"&userphoto&"' where username='"&Request.Cookies("username")&"'")

End If



%>

<table border=0 width=99% align=center cellspacing=1 cellpadding=4 class=a2>
<tr class=a3>
<td height=25>&nbsp;<img src=images/Forum_nav.gif>&nbsp; <%ClubTree%> �� <a href="upphoto.asp">�ϴ���Ƭ</a></td>
</tr>
</table><br>

<form <%if selectup<>"FSO" then%>enctype=multipart/form-data<%end if%> method=post action=upphoto.asp?menu=up>
<SCRIPT>valigntop()</SCRIPT>
<table width=99% border=0 cellpadding="0" cellspacing="1" class=a2 height="218" align="center"><tr>
	<td class=a1 height="25" width="70%"><p align=center>���ȡ����ġ����������ѡ����Ҫ�ϴ���ͼƬ</p>
	</td><td class=a1><div align=center>��Ŀǰ����Ƭ</span></div></td>
</tr><tr><td class=a3 width="70%"><center>
<input type=file name="file" size=33><br><br><input name="Submit" type=submit value=" ȷ �� "></form></td>
		<td rowspan=3 class=a3 align="center"><img src="<%=Conn.Execute("Select userphoto From [user] where username='"&Request.Cookies("username")&"'")(0)%>" onload='javascript:if(this.width>200)this.width=200'></td>
</tr><tr><td class=a1 height="25" width="70%"><center>�Զ�����Ƭ</td><tr>
<td class=a3 width="70%"><form method=post action=upphoto.asp?menu=custom><center>
	��ƬURL��<input size="35" value="<%=Conn.Execute("Select userphoto From [user] where username='"&Request.Cookies("username")&"'")(0)%>" name="userphoto">
<br><br><input name="Submit0" type=submit value=" �� �� "></form></td></table>
<SCRIPT>valignbottom()</SCRIPT>



<%
htmlend
%>