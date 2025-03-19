<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(3) %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>密码修改</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="26" colspan="2"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			聊天室调用方法</b></font></td>
          </tr>


          <tr>
            <td width="122" height="249" bgcolor="#FFFFFF" valign="top">
            

            <p align="left"><br>
			★登陆代码调用<br>
              <br>
			<br>
　</td>
            <td width="460" height="249" bgcolor="#FFFFFF" valign="top">
            

              <textarea rows="18" name="admintor" cols="62"><SCRIPT language=javascript>


function OnLogin(n) // 登录聊天室
{

	if(!validstr(login.USER))return ;
	var strBox = "" ;
	strBox = "&boxfunc=off" ;
	var strSex = "&Sex=2" ;
	nRecord=n;	
	
	window.open("about:blank", "mychat", "toolbar=no,location=no,directories=no,menubar=no,resizable=yes") ;
	login.target = "mychat" ;
	login.action = "http://liaowan.com/login.asp" ;
	login.submit() ;	
	
}


function validstr(str) // 验证用户名
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("呢称不能为空！");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("名字中不能包含特殊字符: +=|'#&<>%*`^/\\\";,.空格.");
 		str.focus(); return false;
  }}}return true;
}

</SCRIPT>




<form name="login" action="/" method="post" target="2">

           
              <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber12" height="80">
                 
                 <tr>
                  <td width="100%" bgcolor="#C5C5C5" height="1" colspan="2"></td>
                </tr>
                 <tr>
                  <td width="100%" bgcolor="#ffffff" height="1" colspan="2"></td>
                </tr>
                <tr>
                  <td width="100%" height="8" colspan="2" align="right">
                  <p align="center"><font color="#999999">本聊天室 当前在线 </font>(<font color="#FF9933"><%=num%></font>人)</td>
                </tr>

                <tr>
                  <td width="26%" height="23" align="right">呢 称: 　</td>
                  <td width="74%" height="23">
                  <input maxLength="10" size="13" name="USER" class=put> </td>
                </tr>
                <tr>
                  <td width="26%" height="21" align="right">密 码: </td>
                  <td width="74%" height="21">
                  <input type="password" maxLength="10" size="13" value name="PASS" class=put><font color="#999999"> 
                  *可不填
                  
                  
      <input type="hidden" value="<%=port%>" name="port">
 
                  </font>
                  </td>
                </tr>
                 <tr>
                  <td width="100%" height="26" align="center" colspan="2">
                  <input type="button" value="开 门" name="B1" class="put1" onClick="document.location = 'javascript:OnLogin(0);'">&nbsp;
                  <input type="button" value="注 册" name="B2" class="put1" onClick="window.open('http://liaowan.com/USadmin/regadd.asp', 'mychat')">&nbsp;
                  <input type="button" value="密 码" name="B3" class="put1" onClick="window.open('http://liaowan.com/USadmin/usermima.asp', 'mychat')"></td>
                  </tr>
                  
              </table>
              


</form>




</textarea></td>
            </tr>

        	<tr>
            <td width="122" height="22" bgcolor="#FFFFFF" valign="top">
            

            ★聊天室动态JS数组</td>
            <td width="460" height="22" bgcolor="#FFFFFF" valign="top">
            

            <input type="text" name="T1" size="63"></td>
            </tr>
			<tr>
            <td width="122" height="24" bgcolor="#FFFFFF" valign="top">
            

            ★相册调用页面</td>
            <td width="460" height="24" bgcolor="#FFFFFF" valign="top">
            

            <input type="text" name="T6" size="63" value="http://<%=id%>.liaowan.com/c/xiangce.asp"></td>
            </tr>
			<tr>
            <td width="122" height="25" bgcolor="#FFFFFF" valign="top">
            

            ★公告版调用页面</td>
            <td width="460" height="25" bgcolor="#FFFFFF" valign="top">
            

            <input type="text" name="T7" size="63" value="http://<%=id%>.liaowan.com/c/news.asp"></td>
            </tr>
			<tr>
            <td width="122" height="24" bgcolor="#FFFFFF" valign="top">
            

            ★留言版调用页面</td>
            <td width="460" height="24" bgcolor="#FFFFFF" valign="top">
            

            <input type="text" name="T8" size="63" value="http://<%=id%>.liaowan.com/c/guest"></td>
            </tr>
			<tr>
            <td width="122" height="4" bgcolor="#FFFFFF" valign="top">
            

            ★论坛调用页面</td>
            <td width="460" height="4" bgcolor="#FFFFFF" valign="top">
            

            <input type="text" name="T9" size="63" value="http://<%=id%>.liaowan.com/bbs"></td>
            </tr>
			<tr>
            <td width="122" height="7" bgcolor="#FFFFFF" valign="top">
            

            ★俱乐部调用页面</td>
            <td width="460" height="7" bgcolor="#FFFFFF" valign="top">
            

            <input type="text" name="T10" size="63" value="http://<%=id%>.liaowan.com/jlb"></td>
            </tr>
			<tr>
            <td width="122" height="25" bgcolor="#FFFFFF" valign="top">
            

            　</td>
            <td width="460" height="25" bgcolor="#FFFFFF" valign="top">
            

            　</td>
            </tr>
			<tr>
            <td width="122" height="32" bgcolor="#FFFFFF" valign="top">
            

            　</td>
            <td width="460" height="32" bgcolor="#FFFFFF" valign="top">
            

            　</td>
            </tr>
			<tr>
            <td width="586" height="23" colspan="2" bgcolor="#FFFFFF" valign="top">
            

            　</td>
            </tr>

        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="5" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>