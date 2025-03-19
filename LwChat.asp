<%
Roomid	= 0
port	= Clng(Request("port"))
USER	= Request("user")
PASS	= Request("pass")
SEX		= Request("SEX")
%>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<!--setTimeout('this.location='',1000)-->

</head>

<script language="JavaScript">

//检测客户端是否安装控件
function checkActiveStatus(){
  try{
    var vGoldGrid = new ActiveXObject("LwChat.Quick");
    alert("恭喜！聊湾视频聊天插件 安装成功！");
    OnLogin();
  }
  catch(e)
   {
     //alert("聊湾视频聊天插件 请安装...");
     //chatmain.document.URL ="lwchat.asp?user=<%=user%>&pass=<%=pass%>&port=<%=port%>&SEX=<%=SEX%>"
   }
}
setTimeout('checkActiveStatus();',2000)
</script>


<title>聊湾视频聊天插件</title>

<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1" height="100%">
	<tr>
		<td>
		<p align="center"><br>
		聊湾视频聊天插件V1.0 自动安装中....<br>
		<br>
		若超过<b><font color="#000080">15</font></b>秒没有弹出 “安装提示”
		<a href="http://www.liaowan.com/Chatjs/LWSeTup.exe">点这里手工下载安装聊湾视频聊天插件V1.0</a><br>
		<br>
		若安装成功 <a href="javascript:OnLogin()"><font color="#FF0000">恭喜请点击这里重新登陆聊天</font></a><p align="center">
		</td>
	</tr>
</table>

<FORM action=login2.asp method=post name=form1 target="_top">
<input type="hidden" name="USER" size="11" MAXLENGTH="15" onBlur="document.cookie = 'chatname='+escape(this.value)" value="<%=USER%>"> 
<input TYPE="hidden" NAME="PASS" size="11"  MAXLENGTH="15" onBlur="document.cookie = 'chatpass='+escape(this.value)" value="<%=PASS%>">
<INPUT type="hidden" name="SEX" value="<%=SEX%>">
<input type="hidden" name="roomid" value=<%=roomid%>>
<INPUT type="hidden" name="port" value="<%=port%>">
</FORM>
<SCRIPT language=javascript>
function OnLogin()
{
	  	document['form1'].method='POST';
  		document.form1.submit();
}
//OnLogin();
</SCRIPT>