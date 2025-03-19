<!--数据库连接文件#include file="TOP.asp" -->
<!--数据库连接文件#include file="../inc/SQLconn.asp" -->
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>自建聊天室</TITLE>
<% 

''''''密码检测模块
'
Call OpenConn()
if Request.Cookies("username")<>"" then
sql="select name,passwd from [user] where name='"&HTMLEncode(Request.Cookies("username"))&"'"
Set Rs=Conn.Execute(SQL)
if rs.eof then Response.Cookies("username")=""
if Request.Cookies("userpass") <> rs("passwd") & asc(rs("passwd")) then Response.Cookies("username")=""
rs.close
set connn=nothing
end if
'
''''''
UN= Request.Cookies("username")
%>

<% call top %>

<script>
function OnLogin()
{
	if (!login.agreement.checked)
	{
		alert('您尚未阅读并接受[LiaoWan.Com]自建聊天室服务条款协议！');
		login.agreement.focus();
		return false;
	}

<%
if UN="" then
%>

	if(!validstr(login.name))
	{
		login.name.focus();
		return false;
	}
	if(login.passwd.value.length <= 0)
	{
		alert("请输入密码，必须是已注册用户才可自建聊天室！");
		login.passwd.focus();
		return false;
	}

<%
end if
%>

	
	if(!validstr(login.RoomName))
	{
		login.RoomName.focus(); 
		return false;
	}
}
function validstr(str) // 验证用户名
{ var s,i,j; s=" +=|'#&<>%*`^/\\\";,."; str1=str.value.toString();
  if (str.value.length <1){alert("用户名不能为空！");str.focus(); return false;}
  for (i=0; i<str1.length; i++)
  {	for(j=0;j<s.length;j++)
	{if (str1.charAt(i) == s.charAt(j))
     {	alert("不能包含特殊字符: +=|'#&<>%*`^/\\\";,.空格.");
 		str.focus(); return false;
  }}}return true;
}
</script>
<form name="login" action="room_save.asp" method="post" onsubmit="return OnLogin()">
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="499">
    <tr>
      <td width="75%" height="19">　</td>
    </tr>
    <tr>
      <td width="75%" height="417">
      <table cellSpacing="0" cellPadding="0" width="444" border="0" style="border-collapse: collapse" bordercolor="#111111" height="75">
        <tr>
          <td align="left" height="44" width="444"><b>
          <font class="titletext" color="#ff0000">
          <img border="0" src="img/Main_02.gif">自建聊天室</font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="444"></td>
        </tr>
        
        <tr>
          <td height="30" width="444"></td>
        </tr>
        
      </table>
      

      <table cellSpacing="1" cellPadding="0" width="448" border="0" height="54">
        <tr>
          <td vAlign="top" width="441" height="307">
          <p>
          

<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>
          
          
          <font color="#ff0000">
          自建聊天室服务条款</font><br>
          


<textarea class=txtbody name="textfield" rows="11" cols="60"> 1自建聊天室是完全免费的
 2必须接受并遵守服务条款
 3如发现有违轨者将移交有关部门
 4只有注册用户才可以建立聊天室
 5自建聊天室可以是公开也可以为隐蔽
 6自建聊天室在人空后１０分钟删除


聊湾自建聊天室服务使用协议

1,严禁在聊天室从事色情、淫秽、反动、不雅、带有性别歧视、种族歧视、个人侮辱、自侮辱、猥亵等各种有违国家相关法规规定活动,
2,如有违反行为,我们将把相关数据移交司法部门处理.

Ⅰ.聊天、留言、上传照片等应注意什么？ 
请遵守《中华人民共和国计算机信息系统安全保护条例》、《计算机信息网络国际联网安全保护管理办法》、《中华人民共和国计算机信息网络国际联网管理暂行规定实施办法》里的一切规定。 
希望网友之间相互尊重，不得故意使用甚至恶意雷同或仿冒现有的用户名，经劝阻无效的情况下，管理员有权把违反规定者请出聊天站。 
尊重网上道德。互相尊重，请不要用不雅言词， 严禁发表反动、色情以及其他违反国家法律规定的言论。 
使用轻松而健康的话题，所以请不要涉及政治、宗教等敏感话题。 
严禁上传色情、淫秽、反动、不雅、带有性别歧视、种族歧视、个人侮辱、自侮辱、猥亵等各种有违国家相关法规规定的照片。 
承担一切因您的行为而直接或间接导致的民事或刑事法律责任。 


Ⅱ.以下行为是不受本站欢迎的行为，当以下行为出现时，管理员有权将违规者请出本站，不需要警告:
发表反动、色情以及其他违反国家法律规定的言论的； 
发表漫骂、辱骂及包含人身攻击的； 
重复发表相同或类似的内容或连续漫无目的地使用EMOTE进行刷屏； 
故意反复宣传某站点或者明显的商业广告行为； 
使用带有性别歧视、种族歧视、个人侮辱、自侮辱、猥亵等不雅ID或者昵称； 
故意长时间在聊天室练习使用emote并引起其他聊天室用户反感的行为； 
在聊天室使用emote“聚众打架”是不受赞赏的行为，情节严重者将全部予以驱逐； 
使用“悄悄话”功能对某人或者某些人进行上述行为；
聊天室内严禁使用色情、反动、带人身攻击的用户名或昵称，一旦发现马上驱逐。 

</textarea><br>

  <input type='checkbox' class='form' name='agreement' value='on'>我已阅读并接受[LiaoWan.Com]自建聊天室服务条款协议<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber3">
            <tr>
              <td width="100%">　</td>
            </tr>
            <tr>
              <td width="100%" align="center">
<%
if UN=""  then
%>管理员昵称：<input type="text" name="name" maxlength=14 style="WIDTH: 200px" size="20">
<BR>
              管理员密码：<input type="password" name="passwd" maxlength=14 style="WIDTH: 200px" size="20">
<BR>
<% else %>

			 欢迎 <font color="#FF0000"><%=UN%></font> 自建聊天室！
<br>

<%
end if
%>聊天室名称：<INPUT name=RoomName maxlength=30 style="WIDTH: 200px" size="20">
<BR>
              聊天室话题：<INPUT  name=RoomTopic maxlength=255 style="WIDTH: 200px" size="20">
              <br>
              聊天室分类：<select size="1" name="RoomType" style="WIDTH: 200px">

<option value="1">情感类</option>

<option value="2">约会类</option>

<option value="3">校园类</option>

<option value="4">技术类</option>

<option value="5">会议类</option>

<option value="6">地区类</option>

<option value="7">竞技类</option>

<option value="8">爱好类</option>

<option value="9">社团类</option>

<option value="10">闲谈类</option>

        </select>

<BR>
              聊天室密码：<INPUT  name=Roompasswd maxlength=25 style="WIDTH: 200px;" size="20"><BR>
(<font color="#FF9900">如设置了密码，加锁状态，须凭密码才可进入</font>)<br>
              聊天室属性:：公开<input type="radio" value="1" checked name="AllowPublic">&nbsp; 
              隐藏 <input type="radio" value="0" name="AllowPublic"><BR><BR>
&nbsp;&nbsp;</td>
            </tr>
            <tr>
              <td width="100%" align="center">
<INPUT type="submit" value="创建聊天室"  name=submit1 style="WIDTH: 150px">


</td>
            </tr>
            <tr>
              <td width="100%">　</td>
            </tr>
            <tr>
              <td width="100%">　</td>
            </tr>
          </table>
          
   
          
          </td>
          <td vAlign="top" width="4" height="53" rowspan="2">
          　</td>
        </tr>
        <tr>
          <td vAlign="top" width="441" height="26" align="center">
          &nbsp;&nbsp; </td>
          </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="75%" height="44">　</td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="75%"></td>
        </tr>
    <tr>
      <td width="75%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>
   </form>    
<%call endpage()
%>