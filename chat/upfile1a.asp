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
set upload=new upload_5xsoft ''建立上传对象

if upload.form("filepath")="" then   ''得到上传目录
 HtmEnd "请输入要上传至的目录!"
 set upload=nothing
 response.end
else
 formPath=upload.form("filepath")

 ''在目录后加(/)
 if right(formPath,1)<>"/" then formPath=formPath&"/" 
end if

iCount=0
for each formName in upload.objForm ''列出所有form数据
 'response.write formName&"="&upload.form(formName)&"<br>"
next
for each formName in upload.objFile ''列出所有上传了的文件
formName=formName
set file=upload.file(formName)  ''生成一个文件对象

'-----------------------------判断文件类型---------------------------------
dim wm
wm=right(file.FileName,3)
'Response.Write wm
if wm="gif" or wm="GIF" or wm="jpg" or wm="JPG" or wm="bmp" or wm="BMP" or wm="png" or wm="PNG" then
'-----------------------------判断文件类型---------------------------------
if file.FileSize>0 and file.filesize<10240000  then '如果 FileSize > 0 说明有文件数据
  file.SaveAs Server.mappath(formPath&file.FileName)   ''保存文件

  response.write "<center><form name=""test"">操作成功!<input  name=""select1"" type=""text"" value=""/upload/"&file.FileName&""" size=""30"">"
  if upload.form("new")="1" then
  response.write "<br><font color=red size=3><a href=""javascript:HighlightAll('test.select1')""><font color=red size=3>复制字符</font></a>"
  else
  response.write "<br><a href=""javascript:;"" onclick=""re()""><font color=red size=3>返回刷新</font></a></form></center>"
  end if
  response.cookies(""&iCount&"")=formPath&File.FileName
  iCount=iCount+1
  else
  Response.Write "<script>"
  Response.Write "alert('错误:\n1.请确定您的信息是否正确\n2.请确定您上传的图片格式是否为jpg/gif\n3.您的图片容量太大，请不要超过250K！');"
  Response.Write "history.go(-1)"
  Response.Write "</script>"
  end if
  set file=nothing

'-----------------------------判断文件类型---------------------------------
else
response.write "<a href='javascript:history.go(-1)'>图片格式不对,请重新输入!</a>"
response.end
end if
'-----------------------------判断文件类型---------------------------------
next
set upload=nothing  ''删除此对象
Htmend iCount&" 个文件上传结束!"

sub HtmEnd(Msg)
 set upload=nothing
 'response.write "<br>"&Msg&" [<a href=""javascript:history.back();"">返回</a>]</body></html>"
 response.end
end sub
'返回
%>
</body>
</html>