<!-- #include file="setup.asp" -->
<!--#include FILE="inc/upfile.asp"-->
<%
if Request.Cookies("username")=empty then error2("您还未登录社区")

sub check(typ)
if instr("|"&UpFileGenre&"|","|"&typ&"|") <= 0 or typ="asp" then error2("对不起，本服务器不支持 "&typ&" 格式的文件")
end sub


if Request("menu")="up" then

'生成目录
on error resume next
Set fso = Server.CreateObject("Scripting.FileSystemObject")
strDir="./images/upfile/"&year(now)&"-"&month(now)&""
if not fso.folderexists(Server.MapPath(strDir)) then fso.CreateFolder(Server.MapPath(strDir))
if Err=0 then catalog=""&year(now)&"-"&month(now)&"/"
ftime=""&catalog&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&""


select case ""&selectup&""
case ""
error2("对不起，本系统关闭文件上传功能")

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "SA-FileUp"

Set FileUP = Server.CreateObject("SoftArtisans.FileUp")

if FileUP.TotalBytes = 0 then error2("当前文件为空文件")
if FileUP.TotalBytes > int(MaxFile) then error2("文件大小不得超过 "&int(MaxFile/1024)&" KB\n当前的文件大小为 "&int(FileUP.TotalBytes/1024)&" KB")

FullPath=FileUP.ShortFilename
types=mid(FullPath,InStrRev(FullPath, ".")+1)
types=LCase(types)
check(types)

filename="images/upfile/"&ftime&"."&types&""
FileUP.SaveAs Server.mappath(""&filename&"")
set FileUP=nothing

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "FSO"

set FileUP=new Upload_file
FileUP.GetDate(-1)
set file=FileUP.file("file")

if file.filesize = 0 then error2("当前文件为空文件")

if file.filesize > int(MaxFile) then error2("文件大小不得超过 "&int(MaxFile/1024)&" KB\n当前的文件大小为 "&int(file.filesize/1024)&" KB")

types=LCase(file.FileExt)
check(types)

filename="images/upfile/"&ftime&"."&types&""
file.SaveToFile Server.mappath(filename)
set FileUP=nothing

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
end select
%>

<body topmargin=0  rightmargin=0  leftmargin=0>
<script>
if ("<%=types%>"=="gif" || "<%=types%>"=="jpg" || "<%=types%>"=="png" || "<%=types%>"=="bmp"){
img="<img src=<%=filename%>>"
}else{
img="<img src=images/affix.gif><a target=_blank href=<%=filename%>>相关附件</a>"
}
document.oncontextmenu = new Function('return false')
parent.IframeID.document.body.innerHTML+='\n'+img+''
</script>
<table cellpadding=0 cellspacing=0 width=100%  height=100% class=a4><tr><td><a target=_blank href=<%=filename%>><%=cluburl%><%=filename%></a> [<a href=upfile.asp>继续上传</a>] </td></tr></table>
<%else%>
<script>if(top==self)document.location='';</script>
<body topmargin=0  rightmargin=0  leftmargin=0>
<form enctype=multipart/form-data method=post action=upfile.asp?menu=up>
<table cellpadding=0 cellspacing=0 width=100% class=a4>
<tr><td>
<td><input type=file style=FONT-SIZE:9pt name=file size=60> <input style=FONT-SIZE:9pt type="submit" value=" 上 传 " name=Submit></td></tr></table>
<%
end if


responseend
%>