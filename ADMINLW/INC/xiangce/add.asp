<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<html>
<head>
<title>�������Ƭ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../../../admin/img/lw.css" type="text/css">
</HEAD>


<BODY bgcolor="#468ea3">


<!--webbot BOT="GeneratedScript" PREVIEW=" " startspan --><script Language="JavaScript" Type="text/javascript"><!--
function FrontPage_Form1_Validator(theForm)
{

  var checkOK = "0123456789-";
  var checkStr = theForm.userid.value;
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
    allNum += ch;
  }
  if (!allValid)
  {
    alert("�� ����������ID ���У�ֻ������ ���� �ַ���");
    theForm.userid.focus();
    return (false);
  }

  var chkVal = allNum;
  var prsVal = parseInt(allNum);
  if (chkVal != "" && !(prsVal >= 10001 && prsVal <= 9999999))
  {
    alert("���� ����������ID ��������ֵ ���ڻ���� 10001 �� С�ڻ���� 9999999��");
    theForm.userid.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><FORM method="POST" name="FrontPage_Form1" action="addsave.asp" onsubmit='return FrontPage_Form1_Validator(this)' enctype=multipart/form-data language="JavaScript">
  <TABLE width="626" border="0" align="center" cellspacing="1" height="351">
             <TBODY>
             <TR align="center">
             <TD colspan="2" height="22" bgcolor="#145f74" width="622"><B><FONT color="#FFFFFF">��� ����Ƭ</FONT></B></TD></TR><TR>
             <TD align="right" width="124" nowrap bgcolor="#A5D0DC" height="27">
				<b>����Ƭְ��</b></TD>
             <TD width="400" bgcolor="#A5D0DC" height="27">


             <INPUT type="text" name="zhiwu" size="25" class="smallinput" maxlength="100"> 
             �磺վ���������������ˣ��α�</TD>
				</TR><TR>
             <TD width="124" align="right" height="15" nowrap bgcolor="#CCE6ED">
				<b>���ֻ��سƣ�</b></TD>
             <TD width="496" height="15" bgcolor="#CCE6ED">
             <INPUT type="text" name="username" size="31" class="smallinput" maxlength="100"> 
             </TD></TR>
             <tr>
             <TD width="124" align="right" height="30" nowrap bgcolor="#CCE6ED">
             <b>����������ID��</b></TD>
             <TD width="496" height="30" bgcolor="#CCE6ED">
             &nbsp;<!--webbot bot="Validation" s-display-name="����������ID" s-data-type="Integer" s-number-separators="x" s-validation-constraint="Greater than or equal to" s-validation-value="10001" s-validation-constraint="Less than or equal to" s-validation-value="9999999" --><INPUT type="text" name="userid" size="31" class="smallinput"> 
             	��10100�� ��Χ10001 -500000 ֮��</TD>
             </tr>
             <TR bgcolor="#cce6ed">
             <TD width="124" align="right" height="31" nowrap bgcolor="#cce6ed">
             <b>ѡ��ͼƬ<font color="#FF0000">��</font></b></TD>
             <TD width="496" height="31" bgcolor="#cce6ed">
             <input type="file" name="pic" size="36">&nbsp; 
             500K ����<br>
				��֧�� Jpeg ,Jpg ,Gif ,Png �� 8-Bit 24-Bit �� Bmp λͼ�ļ� <br>
				[��֧��ʸ��ͼ�ļ���������ʽ��λͼ�ļ� ĳЩQQ BMP��ͼ��֧��(12Bit 32Bit)]<br>
				�����ֲ���ʹ�õ�ͼƬ���ԣ�ʹ�����ת����ʽ���ϴ���<b><a target="_blank" href="http://liaowan.com/chat/showsoft.asp?soft_id=39">����ͼƬ��ʽת�����</a></b></TD></TR>
             <tr>
             <TD width="124" align="right" height="24" nowrap bgcolor="#cce6ed">
             <b>ͼƬLOGO������ɫ��</b></TD>
             <TD width="496" height="24" bgcolor="#cce6ed">
				<select name="color" size="1">
    <option style="color: #000000" value="0" selected>������ɫ</option>
    <option style="color: #000000" value="000000">��ɫ</option>
    <option style="color: #7ec0ee" value="7ec0ee">����</option>
    <option style="color: #0088ff" value="0088ff">����</option>
    <option style="color: #0000ff" value="0000ff">����</option>
    <option style="color: #000088" value="ffffff">����</option>
    <option style="color: #8800ff" value="8800ff">����</option>
    <option style="color: #ab82ff" value="AB82FF">��ɫ</option>
    <option style="color: #ff88ff" value="ff88ff">�Ͻ�</option>
    <option style="color: #ff00ff" value="ff00ff">����</option>
    <option style="color: #ff0088" value="ff0088">õ��</option>
    <option style="color: #ff0000" value="ff0000">���</option>
    <option style="color: #f4a460" value="f4a460">��ɫ</option>
    <option style="color: rosybrown" value="rosybrown">ǳ��</option>
    <option style="color: #888800" value="888800">����</option>
    <option style="color: #888888" value="888888">����</option>
    <option style="color: silver" value="silver">�ź�</option>
    <option style="color: #90e090" value="90E090">��ɫ</option>
    <option style="color: #008800" value="008800">���</option>
    <option style="color: #008888" value="008888">����</option>
    <option style="color: #993300" value="#993300">����</option>
    <option style="color: #ffffff" value="FFFFFF">��ɫ</option>
    </select> Ĭ���Ǻ�ɫ #000000</TD>
				</tr>
             <tr>
             <TD width="124" align="right" height="50" nowrap bgcolor="#cce6ed">
             <b>20�ּ��<font color="#FF0000">��</font></b></TD>
               <TD width="496" height="50" bgcolor="#cce6ed">
               <INPUT type="text" name="jianjie" size="54" class="smallinput" maxlength="160"> 
               </TD>
             </tr>
             <TR>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="136">
				<B>��Ƭ����<FONT color="#FF0000">��</FONT></B></TD>
             <TD width="496" bgcolor="#cce6ed" height="136"><FONT color="#FF0000">
             <TEXTAREA rows="10" name="txt" cols="53" class="smallarea"></TEXTAREA> </FONT></TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P><INPUT type="submit" value=" �� �� " name="cmdok" class="buttonface">&nbsp; <INPUT type="reset" value=" �� �� " name="cmdcancel" class="buttonface"></P>
             </CENTER></DIV>
</FORM>
</BODY></HTML>