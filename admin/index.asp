<%
response.redirect "login.asp"
response.end
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����</title>
<!--
ι����Ҫ͵������ɲ����ԣ����˾����㿴�ɣ�ף�����ճ�Ϊ�µĳ���Ա��
-->
</head>
<body>
<script language="JavaScript">
<!--
function CloseWin() //�رձ����ڵķ��� ����������Ʒ�ƺͰ汾
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
// �رպ���µĴ��� �ʹ��ڲ���/lwoo
window.open("login.asp?sx=lwoo","lwooadmin","height=300,width=420,left=180,top=100,resizable=no,scrollbars=no,status=no,toolbar=no,menubar=no,location=no");
//-->
</script>
</body>
</html>