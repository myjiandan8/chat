<%
sub error2(message)
%>
<script>alert('<%=message%>');</script>
<%
end sub
%>
<%

dim fso

'FSO 组件名
fso="Scripting.FileSystemObject"

formPath="/news/images/newspic"


'建立文件夹，使用FSO组件

	Dim fs
	Set fs = CreateObject(fso)
		
	dim tdir
	tdir=server.mappath(formPath)&"\"
	dc=server.mappath(formPath)&"\"
	
	if Not fs.FolderExists(tdir) then
		getfilenameloop = 0
		error2("错误")
		xxx=1
	end if
	
	tdir = tdir & year(date) & "\"
	UploadPhotoUrl = UploadPhotoUrl & year(date) & "/"
	If Not fs.FolderExists(tdir) then
		fs.CreateFolder(tdir)
	End If

	tdir = tdir & right("0" & month(date),2) & "\"
	UploadPhotoUrl = UploadPhotoUrl & right("0" & month(date),2) & "/"
	if Not fs.FolderExists(tdir) then
		fs.CreateFolder(tdir)
	end if
	
	tdir = tdir & right("0" & day(date),2) & "\"
	UploadPhotoUrl = UploadPhotoUrl & right("0" & day(date),2) & "/"
	if Not fs.FolderExists(tdir) then
		fs.CreateFolder(tdir)
	end if
	
'建立文件夹结束

%>
<%=dc%>