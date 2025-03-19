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
<title>聊湾-留言-申请主持人</title>

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
      <table cellspacing="0" bgcolor=#F0F0F0 width="329" bordercolordark="#FFFFFF" bordercolorlight="#66CCFF" cellpadding="2" height="1" style="border-collapse: collapse" bordercolor="#111111">
        <tr align="center"> 
          <td width="699" height="15"><span lang="zh-cn"><font size="3"><b>
          申请本房间管理&amp;主持人</b></font></span></td>
        </tr>
        <tr align="center"> 
          <td width="699" height="1"> 
            <table width="390" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" height="1" style="border-collapse: collapse" bordercolor="#111111">
              <tr> 
                <td width="686" height="1" align="center" bordercolor="#E5E5E5"> 
                  <p align="left">　<table border="0" cellpadding="3" cellspacing="3" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber1" height="77">
                    <tr>
                      <td width="21%" align="right" height="19"><b>呢称:</b> </td>
                      <td width="70%" height="19"><b><font color="#3399FF"> 
                    <input type=hidden name=ss value=2>
                    <input type="text" name="name" size="32"  onFocus="na_form_clear('myform', 'name');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font></b></td>
                      <td width="9%" height="19">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right" height="19"><b>Mail:</b></td>
                      <td width="70%" height="19"><b><font color="#3399FF"> 
                    <input type="text" name="email"  size="32" onFocus="na_form_clear('myform', 'email');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font></b></td>
                      <td width="9%" height="19">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right" height="19"><b>OICQ:</b></td>
                      <td width="70%" height="19"><b><font color="#3399FF"> 
                    <input type="text" name="qq" size="32" onFocus="na_form_clear('myform', 'qq');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;" maxlength="9"></font></b></td>
                      <td width="9%" height="19">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right" height="19"><b>聊湾帐号:</b> 
                      </td>
                      <td width="70%" height="19"><b><font color="#3399FF"> 
                    <input type="text" name="u_name" size="9" onFocus="na_form_clear('myform', 'u_name');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font>密码:<font color="#3399FF"><input type="password" name="passwd" size="8" onFocus="na_form_clear('myform', 'passwd');" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font> </b>
                      *游客不填写</td>
                      <td width="9%" height="19">　</td>
                    </tr>
                    <tr>
                      <td width="21%" align="right" height="1"><b>主页:</b></td>
                      <td width="70%" height="1"><b><font color="#3399FF"> 
                    <input type="text" name="homepage" value="http://" size="32" style="background-color:#ffffff; border-width:1px; border-bottom-color:#111111; border-top-style:none; border-right-style:none; border-bottom-style:solid; border-left-style:none;"></font></b></td>
                      <td width="9%" height="1"></td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr> 
                <td align="center" bordercolor="#E5E5E5" height="1" width="689">　</td>
              </tr>
              <tr> 
                <td align="center" bordercolor="#E5E5E5" height="1" width="689"> 
                  <textarea rows="5" name="content" cols="52" onFocus="na_select_form('myform', 'content');" style="font-family:宋体; font-size:12px; border-width:1px; border-color:#dddddd; border-style:solid;">这里写详细资料！
</textarea>
                  <br>
                  * *写自己想法和管理需求最多250字呵呵!* *<br>
                    <input type="submit" value="提交"
  name="cmdok" onFocus="na_check_max_length('myform', 'content', '对不起，留言内容不能超过250字请简化你的留言内容：）', 250);" style="background-color:#ffffff; border-width:1px; border-color:#efefef; border-style:solid;">
                    &nbsp; 
                    <input type="reset" value="清除"
  name="cmdcancel" style="background-color:#ffffff; border-width:1px; border-color:#efefef; border-style:solid;"></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr align="center">
          <td width="699" height="1">　</td>
        </tr>
      </table>
  </center></div>
</form>
</body>
</html>