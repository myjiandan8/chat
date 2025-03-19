<!--数据库连接文件#include file="../cool.asp" -->
<!--#include file="../../INC/newsconvert.asp" -->
<LINK href="../../images/Style.css" rel=stylesheet>

<!--#include file="code.asp"-->
<%
function htmlencode(str)
if request("special")="true" then
	htmlencode=replace(replace(str,chr(13),"<br>"),"'","’")
else
	htmlencode=server.htmlencode(str)
	htmlencode=replace(replace(htmlencode,chr(13),"<br>"),"'","’")
end if

end function

	dim rs,sql
	set rs=server.createobject("adodb.recordset")


%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<title>聊湾-留言</title>

<STYLE>
BODY
{scrollbar-face-color:#efefef; scrollbar-shadow-color:#efefef; 
scrollbar-highlight-color:#efefef; scrollbar-3dlight-color:#efefef; 
scrollbar-darkshadow-color:#efefef; scrollbar-track-color:#ffffff; 
scrollbar-arrow-color:ffffff;}
</STYLE>

<script language="JavaScript">
<!--
function na_check_max_length(fname, type_name, str, maxlength)
{
  var maxlength;
  if (document.forms[fname].elements[type_name].value.length > maxlength) {
    alert(str);
  return false
  } 
}

function na_select_form (fname, type_name) 
{
  document.forms[fname].elements[type_name].select()
  document.forms[fname].elements[type_name].focus()
}

function na_form_clear(fname, type_name) 
{
  if (document.forms[fname].elements[type_name].value = document.forms[fname].elements[type_name].defaultValue) {
    document.forms[fname].elements[type_name].value = "";
  }
}

// -->
</script>
</head>

<body>
<form method="POST" name="myform" action="savetxt.asp?action=add">
  <div align="center">
    <center>
      <table cellspacing="0" bgcolor=#F0F0F0 width="329" bordercolordark="#FFFFFF" bordercolorlight="#66CCFF" cellpadding="2" height="541" style="border-collapse: collapse" bordercolor="#111111">
        <tr align="center"> 
          <td width="699" height="15"><b><span lang="zh-cn"><font size="3">填写留言</font></span></b></td>
        </tr>
        <tr align="center"> 
          <td width="699" height="268"> 
            <table width="390" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" height="1255" style="border-collapse: collapse" bordercolor="#111111">
              <tr> 
                <td width="686" height="103" align="center" bordercolor="#E5E5E5"> 
                  <p align="left">　<table border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1">
                    <tr>
                      <td width="21%" align="right"><b>呢称:</b> </td>
                      <td width="70%"><b><font color="#3399FF"> 
                      <input type=hidden name=ss value=1>
                    <input type="text" name="name" size="32"  onFocus="na_form_clear('myform', 'name');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font></b></td>
                      <td width="9%">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right"><b>Mail:</b></td>
                      <td width="70%"><b><font color="#3399FF"> 
                    <input type="text" name="email"  size="32" onFocus="na_form_clear('myform', 'email');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font></b></td>
                      <td width="9%">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right"><b>OICQ:</b></td>
                      <td width="70%"><b><font color="#3399FF"> 
                    <input type="text" name="qq" size="32" onFocus="na_form_clear('myform', 'qq');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;" maxlength="9"></font></b></td>
                      <td width="9%">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right"><b>聊湾帐号:</b> 
                      </td>
                      <td width="70%"><b><font color="#3399FF"> 
                    <input type="text" name="u_name" size="9" onFocus="na_form_clear('myform', 'u_name');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font>密码:<font color="#3399FF"><input type="password" name="passwd" size="8" onFocus="na_form_clear('myform', 'passwd');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font> </b>
                      *游客不填写</td>
                      <td width="9%">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right"><b>主页:</b></td>
                      <td width="70%"><b><font color="#3399FF"> 
                    <input type="text" name="homepage" value="http://" size="32" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font></b></td>
                      <td width="9%">　</td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr> 
                <td align="center" bordercolor="#E5E5E5" height="72" width="689"> 
                                  <table width="170" border="0" cellspacing="0" cellpadding="4">
                    <tr> 
                      <td width="46" height="56"> 
                        <input type="radio" value="images/icon6.gif" name="T_Emot" checked>
                        <img src="images/icon6.gif" align="absmiddle" height="17" width="17"></td>
                      <td width="48" height="56"> 
                        <input type="radio" value="images/icon3.gif" name="T_Emot">
                        <img src="images/icon3.gif" align="absmiddle" width="17" height="17"></td>
                      <td width="52" height="56"> 
                        <input type="radio" value="images/icon8.gif" name="T_Emot">
                        <img src="images/icon8.gif" align="absmiddle" width="17" height="17"></td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p1.gif" name="T_Emot">
                          <img src="pic2/p1.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p10.gif" name="T_Emot">
                          <img src="pic2/p10.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p11.gif" name="T_Emot">
                          <img src="pic2/p11.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p13.gif" name="T_Emot">
                          <img src="pic2/p13.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p15.gif" name="T_Emot">
                          <img src="pic2/p15.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p3.gif" name="T_Emot">
                          <img src="pic2/p3.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p8.gif" name="T_Emot">
                          <img src="pic2/p8.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52" height="56"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p17.gif" name="T_Emot">
                          <img src="pic2/p17.gif" width="17" height="17"> </div>
                      </td>
                    </tr>
                    <tr> 
                      <td width="46"> 
                        <input type="radio" value="images/icon7.gif" name="T_Emot">
                        <img src="images/icon7.gif" align="absmiddle" width="17" height="17"></td>
                      <td width="48"> 
                        <input type="radio" value="images/icon10.gif" name="T_Emot">
                        <img src="images/icon10.gif" align="absmiddle" width="17" height="17"></td>
                      <td width="52"> 
                        <input type="radio" value="images/icon11.gif" name="T_Emot">
                        <img src="images/icon11.gif" align="absmiddle" width="17" height="17"></td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p14.gif" name="T_Emot">
                          <img src="pic2/p14.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p6.gif" name="T_Emot">
                          <img src="pic2/p6.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p5.gif" name="T_Emot">
                          <img src="pic2/p5.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p2.gif" name="T_Emot">
                          <img src="pic2/p2.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p16.gif" name="T_Emot">
                          <img src="pic2/p16.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p7.gif" name="T_Emot">
                          <img src="pic2/p7.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p12.gif" name="T_Emot">
                          <img src="pic2/p12.gif" width="17" height="17"> </div>
                      </td>
                      <td width="52"> 
                        <div align="center"> 
                          <input type="radio" value="pic2/p18.gif" name="T_Emot">
                          <img src="pic2/p18.gif" width="15" height="15"></div>
                      </td>
                    </tr>
                  </table>
                  
                  </td>
              </tr>
              <tr>
                <td align="center" bordercolor="#E5E5E5" height="876" width="689"> 
                  <input type="radio" name="head" value="PIC/f03.gif" checked>
                  <img src="PIC/f03.gif" width="50" height="50" border="0"> 
                  <input type="radio" name="head" value="PIC/f02.gif">
                  <img src="PIC/f02.gif" width="50" height="50" border="0"> 
                  <input type="radio" name="head" value="PIC/f04.gif">
                  <img src="PIC/f04.gif" width="50" height="50" border="0"> 
                  <input type="radio" name="head" value="PIC/f14.gif">
                  <img src="PIC/f14.gif" width="50" height="50" border="0"><p>&nbsp;<input type="radio" name="head" value="PIC/f15.gif">
                  <img src="PIC/f15.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f17.gif">
                  <img src="PIC/f17.gif" width="50" height="50" border="0">
                  <input type="radio" name="head" value="PIC/c01.gif">
                  <img src="PIC/c01.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/c02.gif">
                  <img src="PIC/c02.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/c03.gif">
                  <img src="PIC/c03.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/c05.gif">
                  <img src="PIC/c05.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/c06.gif">
                  <img src="PIC/c06.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/c08.gif">
                  <img src="PIC/c08.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/f06.gif">
                  <img src="PIC/f06.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f01.gif">
                  <img src="PIC/f01.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f03.gif2">
                  <img src="PIC/f03.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f05.gif">
                  <img src="PIC/f05.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/f12.gif">
                  <img src="PIC/f12.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f16.gif">
                  <img src="PIC/f16.gif" width="50" height="50">
                  <input type="radio" name="head" value="PIC/f22.gif1">
                  <img src="PIC/f22.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f08.gif">
                  <img src="PIC/f08.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/f09.gif">
                  <img src="PIC/f09.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f22.gif2">
                  <img src="PIC/f22.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f10.gif">
                  <img src="PIC/f10.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f23.gif">
                  <img src="PIC/f23.gif" width="50" height="50"></p>
                  <p>&nbsp;<br>
                  <input type="radio" name="head" value="PIC/m27.gif">
                  <img src="PIC/m27.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/f07.gif">
                  <img src="PIC/f07.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m21.gif">
                  <img src="PIC/m21.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m30.gif">
                  <img src="PIC/m30.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/m18.gif">
                  <img src="PIC/m18.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m16.gif">
                  <img src="PIC/m16.gif" width="50" height="50">
                  <input type="radio" name="head" value="PIC/c11.gif">
                  <img src="PIC/c11.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m03.gif">
                  <img src="PIC/m03.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/m10.gif">
                  <img src="PIC/m10.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m05.gif">
                  <img src="PIC/m05.gif" width="50" height="50" border="0"> 
                  <input type="radio" name="head" value="PIC/m08.gif">
                  <img src="PIC/m08.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m28.gif">
                  <img src="PIC/m28.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/m04.gif">
                  <img src="PIC/m04.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m02.gif">
                  <img src="PIC/m02.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m06.gif">
                  <img src="PIC/m06.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m07.gif">
                  <img src="PIC/m07.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/m09.gif">
                  <img src="PIC/m09.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m11.gif">
                  <img src="PIC/m11.gif" width="50" height="50">
                  <input type="radio" name="head" value="PIC/m14.gif">
                  <img src="PIC/m14.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m17.gif">
                  <img src="PIC/m17.gif" width="50" height="50"></p>
                  <p>&nbsp;<input type="radio" name="head" value="PIC/m19.gif">
                  <img src="PIC/m19.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m29.gif">
                  <img src="PIC/m29.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m31.gif">
                  <img src="PIC/m31.gif" width="50" height="50"> 
                  <input type="radio" name="head" value="PIC/m32.gif">
                  <img src="PIC/m32.gif" width="50" height="50"> </p>
                  <p>　</td>
              </tr>
              <tr> 
                <td align="center" bordercolor="#E5E5E5" height="17" width="689">　</td>
              </tr>
              <tr> 
                <td align="center" bordercolor="#E5E5E5" height="172" width="689"> 
                  <textarea rows="10" name="content" cols="49" onFocus="na_select_form('myform', 'content');" style="font-family:宋体; font-size:12px; border-width:1px; border-color:#dddddd; border-style:solid;"></textarea>
                  <br>
                  * *不要写千字文章最多250字呵呵!* *<br>
                  <p> 
                    <input type="submit" value="提交"
  name="cmdok" onFocus="na_check_max_length('myform', 'content', '对不起，留言内容不能超过250字请简化你的留言内容：）', 250);" style="background-color:#ffffff; border-width:1px; border-color:#efefef; border-style:solid;">
                    &nbsp; 
                    <input type="reset" value="清除"
  name="cmdcancel" style="background-color:#ffffff; border-width:1px; border-color:#efefef; border-style:solid;"></p>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr align="center">
          <td width="699" height="20">　</td>
        </tr>
      </table>
  </center></div>
</form>
</body>
</html>