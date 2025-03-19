<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(2) %>
<%
if Request("Administrators1")<>"" and  Request("RoomTopic")<>"" then


	sql="select * from [Room] where roomid=" & id
	rs.open sql,mechatconn,1,3

	   rs("AllowGuest") =Request("AllowGuest")
	   rs("AllowPublic") =Request("AllowPublic")
       rs("Administrators") = trim(Request("Administrators1")) & ";" & trim(Request("Administrators2"))
       
       rs("LogoutUrl") =Request("LogoutUrl")
       rs("RoomTopic") = Request("RoomTopic")
       
       rs("RoomPassword")=trim(Request("RoomPassword"))
       rs("ExternValue") = Request("ExternValue")
       rs("Background") = Request("Background")
      
       rs.Update
       rs.close
	
	   Call errstr("修改成功！！")	

end if
%>


<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
<LINK href="../../images/Style.css" rel=stylesheet>
<TITLE>聊天室快速管理!</TITLE>


<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="600" id="AutoNumber1" height="403">
    <tr>
      <td width="100%" height="19"></td>
    </tr>
    <tr>
      <td width="100%" height="359" align="center">
      <form name="form2" method="post" action="peizhi.asp">
      <input type=hidden name=xz value="xg">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="1">
        <tr>
          <td width="278" height="1" colspan="2">
          
          <b><font color="#FF0000"> </font></b>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="571">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;基本配置</font></b></td>
          </tr>

          <tr>
          
            <td width="564" height="12" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
          <tr>
          
            <td width="108" height="58" align="right" bgcolor="#F9F9F7">一级管理员:</td>
            <td width="437" height="58" bgcolor="#F9F9F7">
            <% On Error Resume Next %>
            <font color="#800000">一级管理员,多个管理员之间可用<b>英文逗号&quot;,&quot;</b>分开</font><br>
          <input type="text" name="Administrators1" maxlength="200" size="50" value="<%=Left(Administrators, InStr(Administrators, ";") - 1)%>">
            <font color="#FF0000">*</font></td>
            </tr>
          <tr>
          
            <td width="108" height="24" align="right" bgcolor="#F9F9F7">二级管理员:</td>
            <td width="437" height="24" bgcolor="#F9F9F7"><font color="#800000">二级管理员,多个管理员之间可用<b>英文逗号&quot;,&quot;</b>分开</font><br>
          <INPUT type="text" name="Administrators2" maxlength="200" size="50" value="<%=Mid(Administrators, InStr(Administrators, ";") + 1)%>"></td>
            </tr>
          <tr>
          
            <td width="108" height="25" align="right" bgcolor="#F9F9F7">
            是否允许游客发言:</td>
            <td width="437" height="25" bgcolor="#F9F9F7">否<input type="radio" name="AllowGuest" value="0"  <%if AllowGuest=0 then response.write "checked"%> checked>
          是 
          <input type="radio" name="AllowGuest" value="1" <%if AllowGuest=1 then response.write "checked"%>> </td>
            </tr>
          <tr>
          
            <td width="108" height="56" align="right" bgcolor="#F9F9F7">聊天室主题:</td>
            <td width="437" height="56" bgcolor="#F9F9F7">
            <input maxLength="200" size="31" name="RoomTopic" class=put value="<%=RoomTopic%>">
            <font color="#FF0000">*</font></td>
            </tr>

          <tr>
          
            <td width="108" height="51" align="right" bgcolor="#F9F9F7">聊天室锁密码:</td>
            <td width="437" height="51" bgcolor="#F9F9F7">
            <input maxLength="12" size="25" name="RoomPassword" class=put value="<%=RoomPassword%>"><font color="#FF9900"> </font>
            <font color="#800000">聊天室密码,当不为空会,聊天室会加锁</font><font color="#FF9900">.</font></td>
            </tr>
          <tr>
          
            <td width="108" height="51" align="right" bgcolor="#F9F9F7">退出聊天室后连接:</td>
            <td width="437" height="51" bgcolor="#F9F9F7">
            <input maxLength="50" size="25" name="LogoutUrl" class=put value="<%=LogoutUrl%>">
            <font color="#800000">可以修改成你网站的连接等.</font></td>
            </tr>
          <tr>
          
            <td width="108" height="36" align="right" bgcolor="#F9F9F7">房间背景图片:</td>
            <td width="437" height="36" bgcolor="#F9F9F7">
            <input maxLength="200" size="53" name="Background" class=put value="<%=Background%>"></td>
            </tr>
          <tr>
          
            <td width="108" height="54" align="right" bgcolor="#F9F9F7">
            房间个性配置脚本:</td>
            <td width="437" height="54" bgcolor="#F9F9F7">
            <input maxLength="200" size="53" name="ExternValue" class=put value="<%=ExternValue%>">
            <font color="#800000">最高200字符范例:</font><font color="#FF0000">与BCHAT脚本不兼容&nbsp; 请不要使用BCHAT脚本</font></td>
            </tr>

          <tr>
            <td width="592" height="102" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
            
          
          
          
          
          
          
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </form>
      </td>
    </tr>
    <tr>
      <td width="100%" height="6"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="595"></td>
        </tr>
    <tr>
      <td width="100%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>