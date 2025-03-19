<!--#include file="inc/config.asp"-->
<!--#include file="mdb.asp"-->
<%
  dim djid
    djid=cint(request.querystring("dj_id"))
sql="select * from dj where dj_id="&djid
set rs=conn.execute(sql)

dim djname
djname=rs("dj_name")
rs.close
set rs=nothing%>
<html>
<head>
<title><%=djname%>--美美在线----美美设计</title>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<script LANGUAGE="Javascript">
<!--
var Words ="%3CFRAMESET%20style%3D%22BORDER-RIGHT%3A%200px%20solid%3B%20BORDER-TOP%3A%200px%20solid%3B%20BORDER-LEFT%3A%200px%20solid%3B%20BORDER-BOTTOM%3A%200px%20solid%22%20rows%3D*%3E%0D%0A%3CFRAME%20name%3Dmain%20src%3D%223D.asp%3Fdj_id%3D<%=djid%>%22%20noResize%3E%0D%0A%3C/FRAMESET%3E"
function SetNewWords()
{
var NewWords;
NewWords = unescape(Words);
document.write(NewWords);
}
SetNewWords();
// -->
</script>
</head>
<body bgcolor="#000000" scroll="no" marginwidth="0" leftmargin="0" topmargin="0" oncontextmenu="window.event.returnValue=false" ondragstart="window.event.returnValue=false" onselectstart="event.returnValue=false">
<b>出现错误：</b><br><br>请将您的浏览器升级为IE5.0或更高的版本！
</body>
</html>
