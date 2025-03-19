<!--数据库连接文件#include file="cool.asp" -->
<!--#include file="../INC/newsconvert.asp" -->
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/Style.css" rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>相册 聊天室 聊湾</title>
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
if InStr(ContentEncode(Request("id")), " ") > 0 then response.end
sql = "Select * from xiangce where id="& ContentEncode(Request("id"))
rs.open sql,conn,1,1
if rs.eof then
Call errstr("你图片不存在！！")
end if
%>
<div align="center">

			<table border="0" width="399" id="table1" cellspacing="0" cellpadding="0" height="385" bgcolor="#FFFFFF">
				<tr>
					<td height="21" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#B1FAE2">
					<b>&nbsp;<%=rs("zhiwu")%> &nbsp;<%=rs("username")%></b>
					　&nbsp;&nbsp;&nbsp;&nbsp; <a href="javascript:history.go(-1);">返回</a></td>
				<tr>
					<td height="264" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px" bordercolor="#B1FAE2"> 
					<p align="center">

					<a title="点击放大看" target="_blank" href="/image/<%=id%>/b<%=rs("picname")%>">
							<img border="0" src="/image/<%=id%>/b<%=rs("picname")%>" <%if rs("PicWidth")>360 then %>width="360" height="<%=rs("PicHeight") * 360 / rs("PicWidth")%>"<%end if%>></a></td>
				</tr>
				<tr>
					<td height="27" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B1FAE2">
	
					<p align="center">
	
					<%=rs("jianjie")%>
					
					　</td>
				</tr>

				<tr>
					<td height="47" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B1FAE2" valign="top">
					&nbsp;<b>介绍:</b> <%=newsConvert(rs("txt"))%>
					</td>
				</tr>
				<tr>
					<td height="26" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#B1FAE2">
	
					&nbsp;<b>尺寸</b>:<%=rs("PicWidth")%>px×<%=rs("PicHeight")%>px&nbsp;&nbsp; 
					<b>大小</b>:<%=rs("PicSize")%>K&nbsp;&nbsp;&nbsp;<b>发布时间</b>:<%=CDate(rs("times"))%>
					
					　</td>
				</tr>

			</table>
　</div>


</body>
</html>