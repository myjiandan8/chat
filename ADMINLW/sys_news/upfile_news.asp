<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<%
sub error2(message)
%>
<script>alert('<%=message%>');history.back();</script>
<script>window.close();</script>
<%
responseend
end sub
%>
<!--#include FILE="../sys/upfile"-->
<body topmargin=0  rightmargin=0  leftmargin=0 bgcolor="#F7F7FF">
<link href=../img/lw.css rel=stylesheet>
<%

formPath=Request("formPath")

path=formPath & Year(Now()) &"/"&right("0" & month(date),2)& "/"& right("0" & day(date),2) &"/"


dim fileUP,cluburl,size,xxx
'活动图标地址
cluburl="/news"
'设定上传文件大小限制
size=512000
imgsize=51200
'检查有没有错误的变量
xxx=0



if Request("menu")="up" then
On Error Resume Next
Set upl = Server.CreateObject("SoftArtisans.FileUp")
If -2147221005 = Err Then
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

set FileUP=new Upload_file 

FileUP.GetDate(-1)
set file=FileUP.file("file")


'建立文件夹，使用FSO组件

	Dim fs
	Set fs = CreateObject(fso)
		
	dim tdir
	tdir=server.mappath(formPath)&"\"
	
	if Not fs.FolderExists(tdir) then
		getfilenameloop = 0
		error2(tdir)
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


'文件重新命名　这个上传类谁写的啊这么厉害

filetitle=right("0" & hour(now),2)&right("0" & minute(now),2)&right("0" & Second(now),2)&"-lwoo."&file.FileExt
filetype=file.FileExt
filesize=file.filesize

filename=Path&filetitle

'验证所有文件大小

if session("timesup")=minute(now) then 
error2("您上传操作太快！为广大用户的服务正常，请等1分钟后再上传！")
xxx=1
end if


if file.filesize > size then
error2("文件大小不得超过 "&int(size/1024)&" K\n当前的文件大小为 "&int(file.filesize/1024)&" K")
xxx=1
end if

'验证图片文件大小
if LCase(file.FileExt)="gif" or LCase(file.FileExt)="jpeg" or LCase(file.FileExt)="jpg" then
   
	if file.filesize > imgsize then
	error2("图片大小不得超过 "&int(imgsize/1024)&" K\n当前的文件大小为 "&int(file.filesize/1024)&" K")
	xxx=1
	end if
	
	filepic=1
	
end if

'定义ＵＢＢ代码
select case LCase(file.FileExt)

case "gif"
img="[img]"&filename&"[/img]"
case "jpg"
img="[img]"&filename&"[/img]"
case "jpeg"
img="[img]"&filename&"[/img]"

case "swf"
img="[img]"&cluburl&"/imgico/flash.gif[/img][url="&filename&"]相关附件[/url]"
case "ace"
img="[img]"&cluburl&"/imgico/ace.gif[/img][url="&filename&"]相关附件[/url]"
case "app"
img="[img]"&cluburl&"/imgico/app.gif[/img][url="&filename&"]相关附件[/url]"
case "arj"
img="[img]"&cluburl&"/imgico/arj.gif[/img][url="&filename&"]相关附件[/url]"
case "asf"
img="[img]"&cluburl&"/imgico/asf.gif[/img][url="&filename&"]相关附件[/url]"
case "av"
img="[img]"&cluburl&"/imgico/av.gif[/img][url="&filename&"]相关附件[/url]"
case "avi"
img="[img]"&cluburl&"/imgico/avi.gif[/img][url="&filename&"]相关附件[/url]"
case "bmp"
img="[img]"&cluburl&"/imgico/bmp.gif[/img][url="&filename&"]相关附件[/url]"
case "cab"
img="[img]"&cluburl&"/imgico/cab.gif[/img][url="&filename&"]相关附件[/url]"
case "cad"
img="[img]"&cluburl&"/imgico/cad.gif[/img][url="&filename&"]相关附件[/url]"
case "doc"
img="[img]"&cluburl&"/imgico/doc.gif[/img][url="&filename&"]相关附件[/url]"
'case "exe"
'img="[img]"&cluburl&"/imgico/exe.gif[/img][url="&filename&"]相关附件[/url]"
'case "dll"
'img="[img]"&cluburl&"/imgico/dll.gif[/img][url="&filename&"]相关附件[/url]"
case "htm"
img="[img]"&cluburl&"/imgico/htm.gif[/img][url="&filename&"]相关附件[/url]"
case "html"
img="[img]"&cluburl&"/imgico/html.gif[/img][url="&filename&"]相关附件[/url]"
'case "mdb"
'img="[img]"&cluburl&"/imgico/mdb.gif[/img][url="&filename&"]相关附件[/url]"
case "mid"
img="[img]"&cluburl&"/imgico/mid.gif[/img][url="&filename&"]相关附件[/url]"
case "mp3"
img="[img]"&cluburl&"/imgico/mp3.gif[/img][url="&filename&"]相关附件[/url]"
case "mpeg"
img="[img]"&cluburl&"/imgico/mpeg.gif[/img][url="&filename&"]相关附件[/url]"
case "mpg"
img="[img]"&cluburl&"/imgico/mpg.gif[/img][url="&filename&"]相关附件[/url]"
case "ppt"
img="[img]"&cluburl&"/imgico/ppt.gif[/img][url="&filename&"]相关附件[/url]"
case "rm"
img="[img]"&cluburl&"/imgico/rm.gif[/img][url="&filename&"]相关附件[/url]"
case "ram"
img="[img]"&cluburl&"/imgico/ram.gif[/img][url="&filename&"]相关附件[/url]"
case "rar"
img="[img]"&cluburl&"/imgico/rar.gif[/img][url="&filename&"]相关附件[/url]"
case "zip"
img="[img]"&cluburl&"/imgico/zip.gif[/img][url="&filename&"]相关附件[/url]"
case "tar"
img="[img]"&cluburl&"/imgico/tar.gif[/img][url="&filename&"]相关附件[/url]"
case "txt"
img="[img]"&cluburl&"/imgico/txt.gif[/img][url="&filename&"]相关附件[/url]"
case "wav"
img="[img]"&cluburl&"/imgico/wav.gif[/img][url="&filename&"]相关附件[/url]"
case "wave"
img="[img]"&cluburl&"/imgico/wave.gif[/img][url="&filename&"]相关附件[/url]"
case "wmv"
img="[img]"&cluburl&"/imgico/wmv.gif[/img][url="&filename&"]相关附件[/url]"

case else
error2("对不起，为了服务器系统安全不应许上传 "&file.FileExt&" 格式的文件")
xxx=1
end select
if ""&file.filesize&""=Request.Cookies("TotalBytes") then
error2("请不要上传相同的文件！")
xxx=1
end if

if xxx=0 then
'执行存储
file.SaveToFile Server.mappath(filename)
Response.Cookies("TotalBytes")=file.filesize
set FileUP=nothing

session("timesup")=minute(now)

	'加入文件数据库
	set rsc=server.CreateObject ("adodb.recordset")
	sql="select * from SYS_File "
	rsc.Open sql,conn,1,3
	
		    rsc.addnew
    		rsc("suzhu")=0
    		rsc("uid")=session("userID")
    		rsc("icp")="news"
    		
    		if filepic=1 then
    		
    		rsc("lx")=1
	
    		else
    		
    		rsc("lx")=0
    		
    		end if
    		
    		rsc("filetitle")=filetitle
    		rsc("filePath")=filename
    		rsc("filetype")=filetype
    		rsc("filesize")=filesize
    		rsc("times")=now()
    		rsc.Update
			rsc.close

end if

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

else
error2("系统出错！")
xxx=1
End If
%>
文件上传成功,要<a href=upFile_news.asp?formPath=<%=formPath%>>继续上传请点这里</a>
<script language=javascript>
<!--

	function addcontent(tmpstr)
	{
		parent.document.form1.Form_Content.value = parent.document.form1.Form_Content.value + tmpstr;
	}

//-->
</script>
	<script language=javascript>
		function ctlent()
		{
			if(window.event.keyCode==27)
			{
				window.close();
			}
		}
	</script>

	<script language=javascript>
	<!--
	addcontent("\n<%=img%>\n");

	//-->
	</script>
<%
responseend

else

%>

<form enctype=multipart/form-data method=post action=upfile_news.asp?menu=up&formPath=<%=formPath%>>
<table cellpadding=0 cellspacing=0 width=459 class=a4 style="border-collapse: collapse; background-color:#F7F7FF" bordercolor="#111111">
<tr><td width="387"><IMG src=../img/affix.gif>附件500K以内<img border="0" src="../imgico/img.gif">图片50K以内</td>
<td align=right width="369">
<input type=file style=FONT-SIZE:9pt name=file size="19"> <input style=FONT-SIZE:9pt type="submit" value=" 上 传 " name=Submit></td></tr></table>
</form>

<%
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end if
%>