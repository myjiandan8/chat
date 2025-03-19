<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<html>
<head>
<title>添加新照片</title>
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
    alert("在 在聊湾数字ID 域中，只能输入 数字 字符。");
    theForm.userid.focus();
    return (false);
  }

  var chkVal = allNum;
  var prsVal = parseInt(allNum);
  if (chkVal != "" && !(prsVal >= 10001 && prsVal <= 9999999))
  {
    alert("请在 在聊湾数字ID 域中输入值 大于或等于 10001 与 小于或等于 9999999。");
    theForm.userid.focus();
    return (false);
  }
  return (true);
}
//--></script><!--webbot BOT="GeneratedScript" endspan --><FORM method="POST" name="FrontPage_Form1" action="addsave.asp" onsubmit='return FrontPage_Form1_Validator(this)' enctype=multipart/form-data language="JavaScript">
  <TABLE width="626" border="0" align="center" cellspacing="1" height="351">
             <TBODY>
             <TR align="center">
             <TD colspan="2" height="22" bgcolor="#145f74" width="622"><B><FONT color="#FFFFFF">添加 新照片</FONT></B></TD></TR><TR>
             <TD align="right" width="124" nowrap bgcolor="#A5D0DC" height="27">
				<b>该照片职务：</b></TD>
             <TD width="400" bgcolor="#A5D0DC" height="27">


             <INPUT type="text" name="zhiwu" size="25" class="smallinput" maxlength="100"> 
             如：站长，室主，主持人，嘉宾</TD>
				</TR><TR>
             <TD width="124" align="right" height="15" nowrap bgcolor="#CCE6ED">
				<b>名字或呢称：</b></TD>
             <TD width="496" height="15" bgcolor="#CCE6ED">
             <INPUT type="text" name="username" size="31" class="smallinput" maxlength="100"> 
             </TD></TR>
             <tr>
             <TD width="124" align="right" height="30" nowrap bgcolor="#CCE6ED">
             <b>在聊湾数字ID：</b></TD>
             <TD width="496" height="30" bgcolor="#CCE6ED">
             &nbsp;<!--webbot bot="Validation" s-display-name="在聊湾数字ID" s-data-type="Integer" s-number-separators="x" s-validation-constraint="Greater than or equal to" s-validation-value="10001" s-validation-constraint="Less than or equal to" s-validation-value="9999999" --><INPUT type="text" name="userid" size="31" class="smallinput"> 
             	如10100， 范围10001 -500000 之间</TD>
             </tr>
             <TR bgcolor="#cce6ed">
             <TD width="124" align="right" height="31" nowrap bgcolor="#cce6ed">
             <b>选择图片<font color="#FF0000">：</font></b></TD>
             <TD width="496" height="31" bgcolor="#cce6ed">
             <input type="file" name="pic" size="36">&nbsp; 
             500K 以内<br>
				仅支持 Jpeg ,Jpg ,Gif ,Png 与 8-Bit 24-Bit 的 Bmp 位图文件 <br>
				[不支持矢量图文件与其他格式的位图文件 某些QQ BMP截图不支持(12Bit 32Bit)]<br>
				若出现不能使用的图片可以，使用软件转换格式再上传。<b><a target="_blank" href="http://liaowan.com/chat/showsoft.asp?soft_id=39">下载图片格式转换软件</a></b></TD></TR>
             <tr>
             <TD width="124" align="right" height="24" nowrap bgcolor="#cce6ed">
             <b>图片LOGO打码颜色：</b></TD>
             <TD width="496" height="24" bgcolor="#cce6ed">
				<select name="color" size="1">
    <option style="color: #000000" value="0" selected>字体颜色</option>
    <option style="color: #000000" value="000000">黑色</option>
    <option style="color: #7ec0ee" value="7ec0ee">淡蓝</option>
    <option style="color: #0088ff" value="0088ff">海蓝</option>
    <option style="color: #0000ff" value="0000ff">草蓝</option>
    <option style="color: #000088" value="ffffff">深蓝</option>
    <option style="color: #8800ff" value="8800ff">蓝紫</option>
    <option style="color: #ab82ff" value="AB82FF">紫色</option>
    <option style="color: #ff88ff" value="ff88ff">紫金</option>
    <option style="color: #ff00ff" value="ff00ff">红紫</option>
    <option style="color: #ff0088" value="ff0088">玫红</option>
    <option style="color: #ff0000" value="ff0000">大红</option>
    <option style="color: #f4a460" value="f4a460">棕色</option>
    <option style="color: rosybrown" value="rosybrown">浅褐</option>
    <option style="color: #888800" value="888800">卡其</option>
    <option style="color: #888888" value="888888">铁灰</option>
    <option style="color: silver" value="silver">古黑</option>
    <option style="color: #90e090" value="90E090">绿色</option>
    <option style="color: #008800" value="008800">橄榄</option>
    <option style="color: #008888" value="008888">灰蓝</option>
    <option style="color: #993300" value="#993300">咖啡</option>
    <option style="color: #ffffff" value="FFFFFF">白色</option>
    </select> 默认是红色 #000000</TD>
				</tr>
             <tr>
             <TD width="124" align="right" height="50" nowrap bgcolor="#cce6ed">
             <b>20字简介<font color="#FF0000">：</font></b></TD>
               <TD width="496" height="50" bgcolor="#cce6ed">
               <INPUT type="text" name="jianjie" size="54" class="smallinput" maxlength="160"> 
               </TD>
             </tr>
             <TR>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="136">
				<B>照片介绍<FONT color="#FF0000">：</FONT></B></TD>
             <TD width="496" bgcolor="#cce6ed" height="136"><FONT color="#FF0000">
             <TEXTAREA rows="10" name="txt" cols="53" class="smallarea"></TEXTAREA> </FONT></TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P><INPUT type="submit" value=" 添 加 " name="cmdok" class="buttonface">&nbsp; <INPUT type="reset" value=" 清 除 " name="cmdcancel" class="buttonface"></P>
             </CENTER></DIV>
</FORM>
</BODY></HTML>