<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
sql = "Select * from xiangce where roomid="& id &" and id="& Request("id")
rs.open sql,chatconn,1,1
if rs.eof then
Call errstr("��ͼƬ�����ڣ���")
end if
%>

<html>
<head>
<title>��Ƭ�༭</title>
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
//--></script><!--webbot BOT="GeneratedScript" endspan --><FORM method="POST" name="FrontPage_Form1" action="editsave.asp" onsubmit='return FrontPage_Form1_Validator(this)' enctype=multipart/form-data language="JavaScript">
  <TABLE width="626" border="0" align="center" cellspacing="1" height="372">
             <TBODY>
             <TR align="center">
             <TD colspan="2" height="28" bgcolor="#145f74" width="622"><B>
				<FONT color="#FFFFFF">�༭��Ƭ&nbsp; </FONT></B>
				<font color="#FFFFFF"><b><a href="javascript:history.go(-1);">&lt;����&gt;</a></b></font></TD></TR>
				<tr>
             <TD align="right" width="124" nowrap bgcolor="#CCE6ED" height="29">
				<b>ID��</b></TD>
             <TD width="400" bgcolor="#CCE6ED" height="29">

				<%=rs("id")%>
             ��<input type="hidden" name="id" value="<%=rs("id")%>" size="9"></TD>
				</tr>
				<tr>
             <TD align="right" width="124" nowrap bgcolor="#CCE6ED" height="28">
				��</TD>
             <TD width="400" bgcolor="#CCE6ED" height="28">


             				<a title="�ߴ�:<%=rs("PicWidth")%>px��<%=rs("PicHeight")%>px ��С:<%=rs("PicSize")%>K ʱ��:<%=CDate(rs("times"))%>" target="_blank" href="http://liaowan.com/image/<%=id%>/b<%=rs("picname")%>">
							<img border="0" src="http://liaowan.com/image/<%=id%>/s<%=rs("picname")%>"></a>&nbsp; 
							Ϊ��ֹ���˶��ⷢ��ɫ��ͼƬ���ǹر�ͼƬ�޸Ĺ��ܣ���ҪҪ�޸�ͼƬ�����������Ƭ</TD>
				</tr>
				<tr>
             <TD align="right" width="124" nowrap bgcolor="#CCE6ED" height="8">
				<b>����Ƭְ��</b></TD>
             <TD width="400" bgcolor="#CCE6ED" height="8">


             <INPUT type="text" name="zhiwu" size="25" class="smallinput" maxlength="100" value="<%=rs("zhiwu")%>"> 
             �磺վ���������������ˣ��α�</TD>
				</tr>
				<TR>
             <TD width="124" align="right" height="28" nowrap bgcolor="#CCE6ED">
				<b>���ֻ��سƣ�</b></TD>
             <TD width="496" height="28" bgcolor="#CCE6ED">
             <INPUT type="text" name="username" size="31" class="smallinput" maxlength="100" value="<%=rs("username")%>"> 
             </TD></TR>
             <tr>
             <TD width="124" align="right" height="26" nowrap bgcolor="#CCE6ED">
             <b>����������ID��</b></TD>
             <TD width="496" height="26" bgcolor="#CCE6ED">
             <!--webbot bot="Validation" S-Display-Name="����������ID" S-Data-Type="Integer" S-Number-Separators="x" S-Validation-Constraint="Greater than or equal to" S-Validation-Value="10001" S-Validation-Constraint="Less than or equal to" S-Validation-Value="9999999" -->
             <INPUT type="text" name="userid" size="31" class="smallinput" value="<%=rs("userid")%>"> 
             	��10100�� ��Χ10001 -500000 ֮��</TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="32" nowrap bgcolor="#cce6ed">
             <b>20�ּ��<font color="#FF0000">��</font></b></TD>
               <TD width="496" height="32" bgcolor="#cce6ed">
               <INPUT type="text" name="jianjie" size="54" class="smallinput" maxlength="160" value="<%=rs("jianjie")%>"> 
               </TD>
             </tr>
             <TR>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="171">
				<B>��Ƭ����<FONT color="#FF0000">��</FONT></B></TD>
             <TD width="496" bgcolor="#cce6ed" height="171"><FONT color="#FF0000">
             <TEXTAREA rows="12" name="txt" cols="53" class="smallarea"><%=rs("txt")%></TEXTAREA> </FONT></TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P><INPUT type="submit" value=" �� �� " name="cmdok" class="buttonface">&nbsp; <INPUT type="reset" value=" �� �� " name="cmdcancel" class="buttonface"></P>
             </CENTER></DIV>
</FORM>
</BODY></HTML>