<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->

<%

roomid=request("roomid")
name=request("name")
passwd=trim(request("passwd"))
m=Request("m")



if roomid<>"" and name<>"" and passwd<>""  then

if session("rmport")<>"" or session("rmpass")<>"" or session("rmnewdj")<>"" then  
			session("admincanshu")= ""
			session("adminname")=  ""
			session("rmpass")=  ""
			session("rmport")=  ""
end if

Call yanzheng()

On Error Resume Next

if roomid<1000 or roomid >9999 then errstr("�û�������\n����ID������1000-9999������")

Call OpenChatconn()

if name="admin" then

	sql="select id from web where id=" & roomid & " and adminpasswd='" & passwd & "'"
	set rs = Chatconn.Execute(sql)
	if not (rs.eof or err) then
	
			//session("admincanshu")= "ok"
			session("adminname")= name
			session("rmpass")= passwd
			session("rmport")= roomid
			
			response.redirect "index_kj.asp"
			response.end
	else	

		Call errstr("�û������������")
	
	end if		
	
else
	sql="select admin from admin where roomid=" & roomid & " and name='" & name & "' and passwd='" & passwd & "'"
	set rs = Chatconn.Execute(sql)
	if not (rs.eof or err) then
	
			//session("admincanshu")= rs("admin")
			session("adminname")= name
			session("rmpass")= passwd
			session("rmport")= roomid
			
			response.redirect "index_kj.asp"
			response.end
	else	

		Call errstr("�û������������")
	
	end if	
	
end if

	







end if
%>
<HTML><HEAD>
<title>��������[����������]��̨����</title>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>BODY {
	BACKGROUND: #799ae1; MARGIN: 0px; FONT: 9pt ����
}
TABLE {
	BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px
}
TD {
	FONT: 12px ����
}
</STYLE>
<META content="Microsoft FrontPage 6.0" name=GENERATOR></HEAD>
<BODY style="border:0px none; background-color: #D6D3CE">
<table width="100%" border="0" cellspacing="0" cellpadding="0" HEIGHT="100%" ALIGN="CENTER">
 <tr bgcolor="#FFFFFF"> 
 <td HEIGHT="34" rowspan="2">&nbsp;&nbsp;
 <img src="img/logov.gif" hspace="2" vspace="2"></td>
 <td HEIGHT="17" align="right" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
 </tr>
 <tr bgcolor="#FFFFFF">
 <td HEIGHT="17" align="right" valign="bottom">&nbsp;��������<span lang="zh-cn">[<font color="#FF0000"><b>�����Ҳ�Ʒ</b></font>]��������</span>&nbsp;</td>
 </tr>
 <tr bgcolor="#666666"> 
 <td HEIGHT="1" colspan="2"></td>
 </tr>
 <tr bgcolor="#FFFFFF"> 
 <td HEIGHT="1" colspan="2"></td>
 </tr>
 <!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  if (theForm.roomid.value == "")
  {
    alert("���� roomid ��������ֵ��");
    theForm.roomid.focus();
    return (false);
  }

  if (theForm.roomid.value.length < 4)
  {
    alert("�� roomid ���У����������� 4 ���ַ���");
    theForm.roomid.focus();
    return (false);
  }

  if (theForm.roomid.value.length > 4)
  {
    alert("�� roomid ���У���������� 4 ���ַ���");
    theForm.roomid.focus();
    return (false);
  }

  var checkOK = "0123456789-.";
  var checkStr = theForm.roomid.value;
  var allValid = true;
  var validGroups = true;
  var decPoints = 0;
  var allNum = "";
  for (i = 0;  i < checkStr.length;  i++)
  {
    ch = checkStr.charAt(i);
    for (j = 0;  j < checkOK.length;  j++)
      if (ch == checkOK.charAt(j))
        break;
    if (j == checkOK.length)
    {
      allValid = false;
      break;
    }
    if (ch == ".")
    {
      allNum += ".";
      decPoints++;
    }
    else
      allNum += ch;
  }
  if (!allValid)
  {
    alert("�� roomid ���У�ֻ������ ���� �ַ���");
    theForm.roomid.focus();
    return (false);
  }

  if (decPoints > 1 || !validGroups)
  {
    alert("���� roomid ��������һ����Ч���֡�");
    theForm.roomid.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><form name="FrontPage_Form1" method="post" action="login.asp" onsubmit="return FrontPage_Form1_Validator(this)" language="JavaScript">
 <tr> 
 <td colspan="2" align="center"> 
 <table width="100%" border="0" cellpadding="2" cellspacing="0" height="129">
 <tr> 
 <td height="12" ALIGN="center" width="794" colspan="2"> </td>
 </tr>
 <tr> 
 <td height="19" ALIGN="center" width="794" colspan="2"></td>
 </tr>
 <tr> 
 <td height="0" ALIGN="right" width="349">
 <p align="right"><font color="#666666">����&nbsp; ID:</font></td>
 <td height="0" width="498">
         <!--webbot bot="Validation" s-data-type="Number" s-number-separators="x." b-value-required="TRUE" i-minimum-length="4" i-maximum-length="4" --><input name="roomid" type="text" size="15" maxlength="4"> 
			����д�����ID �� 2045</td>
 </tr>
 <tr>
 <td height="23" ALIGN="right" width="349">
 <p align="right"><font color="#666666">�� �� ��:</font> </td>
 <td height="23" width="498">
<input name="name" type="text" size="15" maxlength="15"> 
����д�㽨���Ĺ����ʻ�����������Ĭ���ʻ�Ϊ<font color="#FF0000">admin</font></td>
 </tr>
 <tr> 
 <td height="23" align="right" width="349">
 <font color="#666666">��¼����:</font> </td>
 <td height="23" width="498">
	<input name="passwd" type="password" size="15" maxlength="15"> 
	����д�㽨���Ĺ����ʻ����룬����Ĭ������Ϊ<font color="#FF0000">����������</font></td>
 </tr>
 <tr>
 <td height="15" align="right" width="349">
 <font color="#666666">�� ֤ ��:</font></td>
 <td height="15" width="498">
 <input name="adminid" size="4" maxLength=4 ><iframe frameborder=0 width=40 height=10  src=/inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
 <script>window.open("../inc/code_s.htm","I2")</script>
 </td>
 </tr>
 <tr>
 <td height="19" align="center" width="100%" colspan="2">
 <font color="#808080">ȡ�������ʺź����ù���Ա��ʽ�������µĹ���ּ���ʽ������ѧ��������Ի���<br>
	</font>
 <font color="#FF0000">������½���� [��������] - [�༭����Ա] �������Ӷ��ӵ�в�ͬȨ�޹���Ա�ʺ�</font></td>
 </tr>
 <tr> 
 <td height="89" align="center" width="794" colspan="2"><br> ��</td>
 </tr>
 </table></td>
 </tr>
 <tr align="right"> 
 <td colspan="2" valign="bottom"> 
 <a target="_blank" href="../"><font color="#666666">��������</font></a>&nbsp;&nbsp; 
 </td>
 </tr>
 <tr bgcolor="#666666"> 
 <td height="1" colspan="2" align="center"></td>
 </tr>
 <tr bgcolor="#FFFFFF"> 
 <td height="1" colspan="2" align="center"></td>
 </tr>
 <tr align="center"> 
 <td colspan="2"><table width="75%" border="0">
 <tr> 
 <td height="28" align="right" valign="top"><input type="submit" name="S1" value=" �� ¼ "> 
 <input type="button" name="S2" value="�����һ�" onClick="window.open('mima.asp');"></td>
 </tr>
 </table></td>
 </tr>
 </form>
</table>
</BODY></HTML>
