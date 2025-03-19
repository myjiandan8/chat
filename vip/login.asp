<!--#include file="top.asp"-->

<head>
<style>
<!--
TD			{FONT-SIZE: 12px; COLOR: #000000; WORD-BREAK: break-all; }
.text			{FONT-SIZE: 13px; line-height: 160%;font-family: "宋体"}
.en			{FONT-FAMILY: verdana; FONT-SIZE: 11px; }
-->
</style>
</head>

<%
call top()
%>




<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="475" id="AutoNumber1" height="403">
    <tr>
      <td width="680" height="19"></td>
    </tr>
    <tr>
      <td width="680" height="357" align="center">
      <table cellSpacing="0" cellPadding="0" width="471" border="0" style="border-collapse: collapse" bordercolor="#111111" height="88">
        <tr>
          <td align="left" height="64" width="386">
          <img border="0" src="img/Main_01.gif"><b><font class="titletext" color="#ff0000">聊湾用户管理中心登陆</font></b> </td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="386"></td>
        </tr>
        
        <tr>
          <td height="23" width="386">
          <p align="center"></td>
        </tr>
        
      </table>
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="335" id="AutoNumber2" height="89">
        <tr>
          <td width="278" height="26" colspan="4">
          </td>
        </tr>
        <tr>
          <td width="280" height="29" align="center" colspan="3"><b>
          <font color="#FF0000"><%=Request("m")%></font></b></td>
          <td width="59" height="63" rowspan="7"><img border="0" src="img/girl01.gif"></td>
        </tr>
        <tr>
          <td width="276" height="15" colspan="3" align="center">填写登陆表单</td>
          </tr>
           <form name="form1" method="post" action="/userlogin.asp">
        <tr>
          <td width="68" height="40" rowspan="3">
          <img border="0" src="img/Hopelove.gif"></td>
          <td width="42" height="18">&nbsp;账号:</td>
          <td width="161" height="18"><input maxLength="10" size="12" name="user" style="border:1px inset; COLOR: #6b6d6b; BACKGROUND-COLOR: #efefef; float:left"></td>
          </tr>
        <tr>
          <td width="42" height="22">&nbsp;密码:</td>
          <td width="161" height="22"><input type="password" maxLength="10" size="12" value name="pass" style="border:1px inset; COLOR: #6b6d6b; BACKGROUND-COLOR: #efefef; float:left" ></td>
          </tr>
        <tr>
          <td width="42" height="20">&nbsp;验证:</td>
          <td width="161" height="20"><input name="adminid" style="border:1px inset; COLOR: #6b6d6b; BACKGROUND-COLOR: #efefef; float:left" size="4" maxLength=4 ><iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I1" align=center scrolling="no"></iframe>
               <script>window.open("../inc/code_s.htm","I1")</script>
 		 </td>
          </tr>
        <tr>
          <td width="280" height="30" colspan="3" align="center">
     <input type="submit" value="登陆" name="B1">&nbsp;
     <a target="_blank" href="../newuser/regadd.asp">注册</a>&nbsp;
     <a href="usermima.asp">找回密码</a></td>
          </tr>
        <tr>
          <td width="280" height="70" valign="top" colspan="3">　</td>
          </tr>
          </form>
        </table>
      </td>
    </tr>
    <tr>
      <td width="680" height="8"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="680"></td>
        </tr>
    <tr>
      <td width="680" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

    
    <p>
          </p>


<%call endpage()
%>