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

//���ͻ����Ƿ�װ�ؼ�
function checkActiveStatus(){
  try{
    var vGoldGrid = new ActiveXObject("LwChat.Quick");
    alert("��ϲ��������Ƶ������ ��װ�ɹ���");
    OnLogin();
  }
  catch(e)
   {
     //alert("������Ƶ������ �밲װ...");
     //chatmain.document.URL ="lwchat.asp?user=<%=user%>&pass=<%=pass%>&port=<%=port%>&SEX=<%=SEX%>"
   }
}
setTimeout('checkActiveStatus();',2000)
</script>


<title>������Ƶ������</title>

<table border="0" cellpadding="0" cellspacing="0" width="100%" id="table1" height="100%">
	<tr>
		<td>
		<p align="center"><br>
		������Ƶ������V1.0 �Զ���װ��....<br>
		<br>
		������<b><font color="#000080">15</font></b>��û�е��� ����װ��ʾ��
		<a href="http://www.liaowan.com/Chatjs/LWSeTup.exe">�������ֹ����ذ�װ������Ƶ������V1.0</a><br>
		<br>
		����װ�ɹ� <a href="javascript:OnLogin()"><font color="#FF0000">��ϲ�����������µ�½����</font></a><p align="center">
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