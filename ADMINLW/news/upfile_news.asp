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
'�ͼ���ַ
cluburl="/news"
'�趨�ϴ��ļ���С����
size=512000
imgsize=51200
'�����û�д���ı���
xxx=0



if Request("menu")="up" then
On Error Resume Next
Set upl = Server.CreateObject("SoftArtisans.FileUp")
If -2147221005 = Err Then
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

set FileUP=new Upload_file 

FileUP.GetDate(-1)
set file=FileUP.file("file")


'�����ļ��У�ʹ��FSO���

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
	
'�����ļ��н���


'�ļ���������������ϴ���˭д�İ���ô����

filetitle=right("0" & hour(now),2)&right("0" & minute(now),2)&right("0" & Second(now),2)&"-lwoo."&file.FileExt
filetype=file.FileExt
filesize=file.filesize

filename=Path&filetitle

'��֤�����ļ���С

if session("timesup")=minute(now) then 
error2("���ϴ�����̫�죡Ϊ����û��ķ������������1���Ӻ����ϴ���")
xxx=1
end if


if file.filesize > size then
error2("�ļ���С���ó��� "&int(size/1024)&" K\n��ǰ���ļ���СΪ "&int(file.filesize/1024)&" K")
xxx=1
end if

'��֤ͼƬ�ļ���С
if LCase(file.FileExt)="gif" or LCase(file.FileExt)="jpeg" or LCase(file.FileExt)="jpg" then
   
	if file.filesize > imgsize then
	error2("ͼƬ��С���ó��� "&int(imgsize/1024)&" K\n��ǰ���ļ���СΪ "&int(file.filesize/1024)&" K")
	xxx=1
	end if
	
	filepic=1
	
end if

'����գ£´���
select case LCase(file.FileExt)

case "gif"
img="[img]"&filename&"[/img]"
case "jpg"
img="[img]"&filename&"[/img]"
case "jpeg"
img="[img]"&filename&"[/img]"

case "swf"
img="[img]"&cluburl&"/imgico/flash.gif[/img][url="&filename&"]��ظ���[/url]"
case "ace"
img="[img]"&cluburl&"/imgico/ace.gif[/img][url="&filename&"]��ظ���[/url]"
case "app"
img="[img]"&cluburl&"/imgico/app.gif[/img][url="&filename&"]��ظ���[/url]"
case "arj"
img="[img]"&cluburl&"/imgico/arj.gif[/img][url="&filename&"]��ظ���[/url]"
case "asf"
img="[img]"&cluburl&"/imgico/asf.gif[/img][url="&filename&"]��ظ���[/url]"
case "av"
img="[img]"&cluburl&"/imgico/av.gif[/img][url="&filename&"]��ظ���[/url]"
case "avi"
img="[img]"&cluburl&"/imgico/avi.gif[/img][url="&filename&"]��ظ���[/url]"
case "bmp"
img="[img]"&cluburl&"/imgico/bmp.gif[/img][url="&filename&"]��ظ���[/url]"
case "cab"
img="[img]"&cluburl&"/imgico/cab.gif[/img][url="&filename&"]��ظ���[/url]"
case "cad"
img="[img]"&cluburl&"/imgico/cad.gif[/img][url="&filename&"]��ظ���[/url]"
case "doc"
img="[img]"&cluburl&"/imgico/doc.gif[/img][url="&filename&"]��ظ���[/url]"
'case "exe"
'img="[img]"&cluburl&"/imgico/exe.gif[/img][url="&filename&"]��ظ���[/url]"
'case "dll"
'img="[img]"&cluburl&"/imgico/dll.gif[/img][url="&filename&"]��ظ���[/url]"
case "htm"
img="[img]"&cluburl&"/imgico/htm.gif[/img][url="&filename&"]��ظ���[/url]"
case "html"
img="[img]"&cluburl&"/imgico/html.gif[/img][url="&filename&"]��ظ���[/url]"
'case "mdb"
'img="[img]"&cluburl&"/imgico/mdb.gif[/img][url="&filename&"]��ظ���[/url]"
case "mid"
img="[img]"&cluburl&"/imgico/mid.gif[/img][url="&filename&"]��ظ���[/url]"
case "mp3"
img="[img]"&cluburl&"/imgico/mp3.gif[/img][url="&filename&"]��ظ���[/url]"
case "mpeg"
img="[img]"&cluburl&"/imgico/mpeg.gif[/img][url="&filename&"]��ظ���[/url]"
case "mpg"
img="[img]"&cluburl&"/imgico/mpg.gif[/img][url="&filename&"]��ظ���[/url]"
case "ppt"
img="[img]"&cluburl&"/imgico/ppt.gif[/img][url="&filename&"]��ظ���[/url]"
case "rm"
img="[img]"&cluburl&"/imgico/rm.gif[/img][url="&filename&"]��ظ���[/url]"
case "ram"
img="[img]"&cluburl&"/imgico/ram.gif[/img][url="&filename&"]��ظ���[/url]"
case "rar"
img="[img]"&cluburl&"/imgico/rar.gif[/img][url="&filename&"]��ظ���[/url]"
case "zip"
img="[img]"&cluburl&"/imgico/zip.gif[/img][url="&filename&"]��ظ���[/url]"
case "tar"
img="[img]"&cluburl&"/imgico/tar.gif[/img][url="&filename&"]��ظ���[/url]"
case "txt"
img="[img]"&cluburl&"/imgico/txt.gif[/img][url="&filename&"]��ظ���[/url]"
case "wav"
img="[img]"&cluburl&"/imgico/wav.gif[/img][url="&filename&"]��ظ���[/url]"
case "wave"
img="[img]"&cluburl&"/imgico/wave.gif[/img][url="&filename&"]��ظ���[/url]"
case "wmv"
img="[img]"&cluburl&"/imgico/wmv.gif[/img][url="&filename&"]��ظ���[/url]"

case else
error2("�Բ���Ϊ�˷�����ϵͳ��ȫ��Ӧ���ϴ� "&file.FileExt&" ��ʽ���ļ�")
xxx=1
end select
if ""&file.filesize&""=Request.Cookies("TotalBytes") then
error2("�벻Ҫ�ϴ���ͬ���ļ���")
xxx=1
end if

if xxx=0 then
'ִ�д洢
file.SaveToFile Server.mappath(filename)
Response.Cookies("TotalBytes")=file.filesize
set FileUP=nothing

session("timesup")=minute(now)

	'�����ļ����ݿ�
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
error2("ϵͳ����")
xxx=1
End If
%>
�ļ��ϴ��ɹ�,Ҫ<a href=upFile_news.asp?formPath=<%=formPath%>>�����ϴ��������</a>
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
<tr><td width="387"><IMG src=../img/affix.gif>����500K����<img border="0" src="../imgico/img.gif">ͼƬ50K����</td>
<td align=right width="369">
<input type=file style=FONT-SIZE:9pt name=file size="19"> <input style=FONT-SIZE:9pt type="submit" value=" �� �� " name=Submit></td></tr></table>
</form>

<%
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end if
%>