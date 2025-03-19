<%
dsnname="DSN=liaowanmechatdb; UID=sa; PWD=letiandaye;"				
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = dsnname
set rs=server.createObject("adodb.recordset")

'错误消息
sub errstr(message)
response.write "<script>alert('"& message &"');history.go(-1);</script>"
end sub

sub Dnew()

	On Error Resume Next
	GETH = Request.ServerVariables("HTTP_HOST")

'切头 切尾
	isd=InStr(GETH, ".") 
	com= mid(GETH, isd + 1)
    www = Left(GETH, isd -1)
'换为数字
	id=Clng(www)
	if id=0 or id<800000 or (com<>"liaowan.com") then
	response.redirect "/Error.asp"
	response.end  
	end if

end sub

id=0
Call Dnew()
	
	sql="select roomname from room where roomid=" & id
	set rs=conn.execute (sql)
	
	if rs.eof and rs.bof then
		response.redirect "/Error.asp"
    	response.end  
	end if
    roomname=rs("roomname")
	rs.close
	
	set rs=conn.execute ("select roomid from userinfo where roomid="& id)
	num=rs.recordCount
	if num = -1 then num = 0
	rs.close
	

%>
<html><head><title><%=roomname%> 视频聊天 语音聊天 聊湾 免费自建语音视频聊天室</title>
<style type="text/css">
<!--
.yin1 {	FILTER: DropShadow(Color=#ffffff, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt}
.yin2 {	BORDER-BOTTOM: #000000 1px solid; BORDER-TOP: #000000 1px solid; FILTER: DropShadow(Color=#ffffcc, OffX=1, OffY=1, Positive=1); FONT-FAMILY: "宋体"; FONT-SIZE: 9pt; }
.yin3 {	FILTER: DropShadow(Color=#ffffFF, OffX=1, OffY=1, Positive=2); FONT-FAMILY: "宋体"; FONT-SIZE: 10pt}
-->
</style>
<SCRIPT language=javascript>


function OnLogin(n) // 登录聊天室
{

	if(!validstr(login.USER))return ;
	
	window.open("about:blank", "chat", "toolbar=no,location=no,directories=no,menubar=no,resizable=yes") ;
	login.target = "chat" ;
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

<meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/Style.css" rel=stylesheet>
</HEAD>
<BODY marginheight="0" topmargin="0">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" height="86">
  <tr>
    <td width="100%" height="86" background="images/top.gif" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber4" height="83">
      <tr>
        <td width="100%" height="30">　</td>
      </tr>
      <tr>
        <td width="100%" height="23" class="yin1">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber6">
          <tr>
            <td width="21%">&nbsp;　<font color="#828282"><%=id%>.LiaoWan.com</font></td>
            <td width="52%">
            <p align="right"><font color="#828282"><a href="http://<%=id%>.LiaoWan.com"><font color="#828282"><%=roomname%></font></a> - 
			自建免费视频语音语音聊天室</font></td>
            <td width="27%"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td width="100%" height="30" valign="bottom">
              <font color="#FF0000">&nbsp;</font></td>
      </tr>
    </table>
    </td>
  </tr>
  </table></center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber1" height="88">
    <tr>
      <td width="100%" height="52" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7" height="74">
        <tr>
          <td width="70%" height="74" align="center">
          <img border="0" src="../images/banr.gif" width="468" height="60"></td>
          <td width="2%" height="74">　</td>
          <td width="28%" height="74">
          <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#ADADAD" width="185" id="AutoNumber8" height="60" bgcolor="#F7F7F7">
            <tr>
              <td width="183" height="60" valign="top">
              <div align="center">
                <center>
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="95%" id="AutoNumber9" height="61">
                  <tr>
                    <td width="50%" height="23" align="center">
                    <img border="0" src="images/forum_readme.gif"> 
					<A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://liaowan.com');" 
                        href="javascript:;" style="text-decoration: none">
    				设为首页</A></td>
                    <td width="50%" height="23" align="center">
                    <img border="0" src="images/forum_readme.gif"> 
					<a style="text-decoration: none" href="javascript:window.external.AddFavorite('http://liaowan.com',%20'聊湾视频语音聊天网')">收藏本房</a></td>
                  </tr>
                  <tr>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif">
              		<a target="_blank" href="../newuser/regadd.asp">用户注册</a> </td>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif">
              		<a target="_blank" href="../newuser/usermima.asp">密码找回</a> </td>
                  </tr>
                  <tr>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif">
                    <a target="_blank" href="http://liaowan.com/admin">房间管理</a></td>
                    <td width="50%" height="19" align="center">
                    <img border="0" src="images/forum_readme.gif"> 帮助信息</td>
                  </tr>
                </table>
                </center>
              </div>
              </td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="100%" height="1" bgcolor="#ADADAD"></td>
    </tr>
    </tr>
    <tr>
      <td width="100%" height="12" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" background="images/bg.gif">
      </td>
    </tr>
    <tr>
      <td width="100%" height="1" bgcolor="#ADADAD"></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber1" height="317">
    <tr>
      <td width="100%" height="269" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" valign="top">
      <table border="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber10" height="348" bgcolor="#FFFFFF">
        <tr>
          <td width="100%" height="100" valign="top" colspan="3">
       
          
          　</td>
          
        </tr>
        <tr>
          <td width="33%" height="211" valign="top">
       
          
          　</td>
          
          <td width="34%" height="211" valign="top">
                

              
           <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber11" height="1">
            <tr>
              <td width="4%" height="1" bgcolor="#E6E6E6" valign="top">
              <img border="0" src="images/a2.gif"></td>
              <td width="92%" height="1" style="border-top-style: solid; border-top-width: 1" bordercolor="#C5C5C5" bgcolor="#E6E6E6" rowspan="2" valign="bottom">
              &nbsp;<img border="0" src="images/d1.gif"></td>
              <td width="5%" height="1" bgcolor="#E6E6E6" valign="top">
              <img border="0" src="images/a3.gif"></td>
            </tr>
            <tr>
              <td width="4%" height="11" bgcolor="#E6E6E6" style="border-left-style: solid; border-left-width: 1" bordercolor="#C5C5C5"></td>
              <td width="5%" height="11" bgcolor="#E6E6E6" bordercolor="#C5C5C5" style="border-right-style: solid; border-right-width: 1">
              </td>
            </tr>
            <form name="login" action="http://lwmm.com:6000/1/Login" method="post" target="2">
            <tr>
              <td width="101%" height="82" style="border-left-style: solid; border-left-width: 1; border-right-style:solid; border-right-width:1" bordercolor="#C5C5C5" colspan="3" bgcolor="#F7F7F7" align="center">
           
           
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
                  <td width="31%" height="23" align="right">呢 称: 　</td>
                  <td width="69%" height="23">
                  <input maxLength="15" size="13" name="USER" class=put> </td>
                </tr>
                <tr>
                  <td width="31%" height="21" align="right">密 码: </td>
                  <td width="69%" height="21">
                  <input type="password" maxLength="10" size="13" value name="PASS" class=put><font color="#999999"> 
                  *游客不填
                  
      <input type="hidden" value="<%=id%>" name="port">
 
                  </font>
                  </td>
                </tr>
                 <tr>
                  <td width="100%" height="26" align="center" colspan="2">
                  <input type="button" value="开 门" name="B1" class="put1" onClick="document.location = 'javascript:OnLogin(0);'">&nbsp;
                  <input type="button" value="注 册" name="B2" class="put1" onClick="window.open('http://liaowan.com/newuser/regadd.asp', 'mychat')">&nbsp;
                  <input type="button" value="密 码" name="B3" class="put1" onClick="window.open('http://liaowan.com/newuser/usermima.asp', 'mychat')"></td>
                  </tr>
                  
              </table>
              
              
              </td>
            </tr>
            </form>
            <tr>
              <td width="4%" height="1" bgcolor="#F7F7F7">
              <img border="0" src="images/a1.gif" width="10" height="10"></td>
              <td width="92%" height="1" style="border-bottom-style: solid; border-bottom-width: 1" bordercolor="#C5C5C5" bgcolor="#F7F7F7">
              </td>
              <td width="5%" height="1" bgcolor="#F7F7F7"><img border="0" src="images/a4.gif"></td>
            </tr>
          </table>
              

          
           　</td>
          
          <td width="33%" height="211" valign="top">
          
          
           　</td>
        </tr>
        <tr>
          <td width="100%" height="37" colspan="3">　</td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber2">
    <tr>
      <td width="100%" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1" bordercolor="#ADADAD" bgcolor="#FF7201" height="5"></td>
    </tr>
  </table>
  </center>
</div>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="700" id="AutoNumber3">
    <tr>
      <td width="100%" height="51" background="images/di.jpg" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="33">
        <tr>
          <td width="100%" height="17"></td>
        </tr>
        <tr>
          <td width="100%" height="16">
          <p align="center">本聊天室由<a target="_blank" href="http://www.bluesky.com.cn/">蓝天工作室</a>&amp;<a target="_blank" href="http://www.mechat.com">和韵科技</a>&amp;<a target="_blank" href="http://lwoo.net">龙软</a>提供软件和技术支持 
          Powered by <a target="_blank" href="http://liaowan.com/">聊湾</a> 1999 - 
          2004</td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  </center>
</div>
</body></html>