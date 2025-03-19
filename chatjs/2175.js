<SCRIPT language=javascript>


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
                  <p align="center"><font color="#999999">本聊天室 当前在线 </font>(<font color="#FF9933"></font>人)</td>
                </tr>

                <tr>
                  <td width="26%" height="23" align="right">雨中寻梦
 　</td>
                  <td width="74%" height="23">
                  <input maxLength="10" size="13" name="USER" class=put> </td>
                </tr>
                <tr>
                  <td width="26%" height="21" align="right">密 码: </td>
                  <td width="74%" height="21">
                  <input type="password" maxLength="10" size="13" value name="PASS" class=put><font color="#999999"> 
                  *可不填
                  
                  
      <input type="hidden" value="2175" name="port">
 
                  </font>
                  </td>
                </tr>
                 <tr>
                  <td width="100%" height="26" align="center" colspan="2">
                  <input type="button" value="开 门" name="B1" class="put1" onClick="document.location = 'javascript:OnLogin(0);'"> 
                  <input type="button" value="注 册" name="B2" class="put1" onClick="window.open('http://liaowan.com/USadmin/regadd.asp', 'mychat')"> 
                  <input type="button" value="密 码" name="B3" class="put1" onClick="window.open('http://liaowan.com/USadmin/usermima.asp', 'mychat')"></td>
                  </tr>
                  
              </table>
              


</form>




