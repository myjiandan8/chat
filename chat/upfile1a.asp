<%OPTION EXPLICIT%>
<%
Server.ScriptTimeOut=5000
response.cookies("0")=""
response.cookies("1")=""
%>
<!--#include FILE="upload.asp"-->
<html>
<head>
<title>upload........</title>
<style type="text/css">
td		{  
		font-size: 12px;  
                }

A:link
{
    text-decoration: none;
    color: #666666;
    font-size:9pt
 
}
A:visited
{
    text-decoration: none;
    color: #666666;
    font-size:9pt
}
A:hover
{
    text-decoration: none;
    COLOR: #eeeeee;
    font-size:9pt   
}
body {
	font-size: 12px;
</style>
<script language="Javascript">
var copytoclip=1
function HighlightAll(theField) {
var tempval=eval("document."+theField)
tempval.focus()
tempval.select()
if (document.all&&copytoclip==1){
therange=tempval.createTextRange()
therange.execCommand("Copy")
window.status="Contents highlighted and copied to clipboard!"
setTimeout("window.status=''",1800)
}
window.close();
}

function re()
{
window.opener.document.location.reload();
window.close();
}
</script>
</head>
<body>
<%
dim upload,file,formName,formPath,iCount
set upload=new upload_5xsoft ''�����ϴ�����

if upload.form("filepath")="" then   ''�õ��ϴ�Ŀ¼
 HtmEnd "������Ҫ�ϴ�����Ŀ¼!"
 set upload=nothing
 response.end
else
 formPath=upload.form("filepath")

 ''��Ŀ¼���(/)
 if right(formPath,1)<>"/" then formPath=formPath&"/" 
end if

iCount=0
for each formName in upload.objForm ''�г�����form����
 'response.write formName&"="&upload.form(formName)&"<br>"
next
for each formName in upload.objFile ''�г������ϴ��˵��ļ�
formName=formName
set file=upload.file(formName)  ''����һ���ļ�����

'-----------------------------�ж��ļ�����---------------------------------
dim wm
wm=right(file.FileName,3)
'Response.Write wm
if wm="gif" or wm="GIF" or wm="jpg" or wm="JPG" or wm="bmp" or wm="BMP" or wm="png" or wm="PNG" then
'-----------------------------�ж��ļ�����---------------------------------
if file.FileSize>0 and file.filesize<10240000  then '��� FileSize > 0 ˵�����ļ�����
  file.SaveAs Server.mappath(formPath&file.FileName)   ''�����ļ�

  response.write "<center><form name=""test"">�����ɹ�!<input  name=""select1"" type=""text"" value=""/upload/"&file.FileName&""" size=""30"">"
  if upload.form("new")="1" then
  response.write "<br><font color=red size=3><a href=""javascript:HighlightAll('test.select1')""><font color=red size=3>�����ַ�</font></a>"
  else
  response.write "<br><a href=""javascript:;"" onclick=""re()""><font color=red size=3>����ˢ��</font></a></form></center>"
  end if
  response.cookies(""&iCount&"")=formPath&File.FileName
  iCount=iCount+1
  else
  Response.Write "<script>"
  Response.Write "alert('����:\n1.��ȷ��������Ϣ�Ƿ���ȷ\n2.��ȷ�����ϴ���ͼƬ��ʽ�Ƿ�Ϊjpg/gif\n3.����ͼƬ����̫���벻Ҫ����250K��');"
  Response.Write "history.go(-1)"
  Response.Write "</script>"
  end if
  set file=nothing

'-----------------------------�ж��ļ�����---------------------------------
else
response.write "<a href='javascript:history.go(-1)'>ͼƬ��ʽ����,����������!</a>"
response.end
end if
'-----------------------------�ж��ļ�����---------------------------------
next
set upload=nothing  ''ɾ���˶���
Htmend iCount&" ���ļ��ϴ�����!"

sub HtmEnd(Msg)
 set upload=nothing
 'response.write "<br>"&Msg&" [<a href=""javascript:history.back();"">����</a>]</body></html>"
 response.end
end sub
'����
%>
</body>
</html>