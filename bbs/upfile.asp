<!-- #include file="setup.asp" -->
<!--#include FILE="inc/upfile.asp"-->
<%
if Request.Cookies("username")=empty then error2("����δ��¼����")

sub check(typ)
if instr("|"&UpFileGenre&"|","|"&typ&"|") <= 0 or typ="asp" then error2("�Բ��𣬱���������֧�� "&typ&" ��ʽ���ļ�")
end sub


if Request("menu")="up" then

'����Ŀ¼
on error resume next
Set fso = Server.CreateObject("Scripting.FileSystemObject")
strDir="./images/upfile/"&year(now)&"-"&month(now)&""
if not fso.folderexists(Server.MapPath(strDir)) then fso.CreateFolder(Server.MapPath(strDir))
if Err=0 then catalog=""&year(now)&"-"&month(now)&"/"
ftime=""&catalog&year(now)&month(now)&day(now)&hour(now)&minute(now)&second(now)&""


select case ""&selectup&""
case ""
error2("�Բ��𣬱�ϵͳ�ر��ļ��ϴ�����")

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
case "SA-FileUp"

Set FileUP = Server.CreateObject("SoftArtisans.FileUp")

if FileUP.TotalBytes = 0 then error2("��ǰ�ļ�Ϊ���ļ�")
if FileUP.TotalBytes > int(MaxFile) then error2("�ļ���С���ó��� "&int(MaxFile/1024)&" KB\n��ǰ���ļ���СΪ "&int(FileUP.TotalBytes/1024)&" KB")

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

if file.filesize = 0 then error2("��ǰ�ļ�Ϊ���ļ�")

if file.filesize > int(MaxFile) then error2("�ļ���С���ó��� "&int(MaxFile/1024)&" KB\n��ǰ���ļ���СΪ "&int(file.filesize/1024)&" KB")

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
img="<img src=images/affix.gif><a target=_blank href=<%=filename%>>��ظ���</a>"
}
document.oncontextmenu = new Function('return false')
parent.IframeID.document.body.innerHTML+='\n'+img+''
</script>
<table cellpadding=0 cellspacing=0 width=100%  height=100% class=a4><tr><td><a target=_blank href=<%=filename%>><%=cluburl%><%=filename%></a> [<a href=upfile.asp>�����ϴ�</a>] </td></tr></table>
<%else%>
<script>if(top==self)document.location='';</script>
<body topmargin=0  rightmargin=0  leftmargin=0>
<form enctype=multipart/form-data method=post action=upfile.asp?menu=up>
<table cellpadding=0 cellspacing=0 width=100% class=a4>
<tr><td>
<td><input type=file style=FONT-SIZE:9pt name=file size=60> <input style=FONT-SIZE:9pt type="submit" value=" �� �� " name=Submit></td></tr></table>
<%
end if


responseend
%>