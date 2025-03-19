<%
response.redirect "login.asp"
response.end
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>聊湾</title>
<!--
喂！不要偷看代码可不可以！算了就让你看吧！祝你早日成为新的程序员！
-->
</head>
<body>
<script language="JavaScript">
<!--
function CloseWin() //关闭本窗口的方法 检查浏览器的品牌和版本
{
var ua=navigator.userAgent;
var ie=navigator.appName=="Microsoft Internet Explorer"?true:false;
if(ie){
    var IEversion=parseFloat(ua.substring(ua.indexOf("MSIE ")+5,ua.indexOf(";",ua.indexOf("MSIE "))));
 if(IEversion< 5.5){
    var str  = '<OBJECT id=closes type="application/x-oleobject" classid="clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11"><param name="Command" value="Closes"></object>'
    document.all.c.innerHTML=str;
    closes.Click();
    }
    else{
    window.opener =null;
    window.close();
    }
}
else{
window.close()
}
}
CloseWin();
// 关闭后打开新的窗口 和窗口参数/lwoo
window.open("login.asp?sx=lwoo","lwooadmin","height=300,width=420,left=180,top=100,resizable=no,scrollbars=no,status=no,toolbar=no,menubar=no,location=no");
//-->
</script>
</body>
</html>