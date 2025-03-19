<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(5) %>
<%
Call openbbsconn

if Request("factionname")<>"" then

		factionname=HTMLEncode(Request("factionname"))
		allname=HTMLEncode(Request("allname"))
		tenet=HTMLEncode(Request("tenet"))
		buildman=HTMLEncode(Request("buildman"))
		xinxi=Request("xinxi")
		
sql="select name from [user] where name='"&buildman&"'"
Set Rs1=Conn.Execute(SQL)
if rs1.eof then errstr("创始人帐户不是注册帐号！请填写注册帐号！")
RS1.close

sql="select id from [faction] where factionname='"&factionname&"'and roomid<>" & rmport
Set Rs1=bbsConn.Execute(SQL)
if not(rs1.eof) then errstr("这个帮派的名字已经存在！请换一个拉！")
RS1.close


	if allname="" or tenet="" then errstr("请填写完整！")
	if CheckHtml(factionname) then errstr("帮派名称中有非法字符！")
	
	

	sql="select * from [faction] where roomid=" & rmport
	rs.open sql,bbsconn,1,3
	
	
	   if rs.eof or err then rs.addnew
	   
	    rs("roomid")=rmport
	    rs("roomname")=roomname
	    rs("xinxi")=xinxi
	    rs("buildman")=buildman
	    rs("factionname")=factionname
		rs("allname")=allname
		rs("tenet")=tenet
		
       rs.Update
       rs.close
       
       bbsconn.execute("update [user] set faction='"& factionname &"' where roomid=" & rmport)

       
	   Call errstr("修改成功！！")

else

	
	set rs=bbsconn.execute ("select * from [faction] where roomid="& rmport )
	if rs.eof and rs.bof then
	
		mm="初始化俱乐部数据"
		
	else
	
		mm="编辑俱乐部基本配置"
		
		xinxi=rs("xinxi")
		buildman=rs("buildman")
		factionname=rs("factionname")
		allname=rs("allname")
		tenet=rs("tenet")
		
	end if
	rs.close

end if

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>俱乐部配置</title>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="617" id="AutoNumber2" height="400">

          <tr>
            <td width="611" bgcolor="#0075F7" height="28">
            <font color="#FFFFFF"><b>
            &nbsp; 俱乐部管理 </b>[<%=mm%>]</font></td>
          </tr>
          
          <tr>
            <td width="611" height="370" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="598" id="AutoNumber2" height="130">
<form name="form5" method="post" action="peizhi.asp"> 
         <tr>
	    <td width="122" align=right height="4">聊天室ID：</td>
	    <td width="466" height="4"> <%=port%></td>
	      </tr>
			<tr>
	    <td width="122" align=right height="25">允许加入：</td>
	    <td width="466" height="25"> <select size="1" name="xinxi">
		<option value="0">应许所有人加入</option>
		<option value="1">需要身份验证</option>
		<option value="2">拒绝任何人加入</option>
		</select></td>
	      </tr>
			<tr>
	    <td width="122" align=right height="22">创始人：</td>
	    <td width="466" height="22"> 
<input size="20" maxlength=15 name="buildman" value="<%=buildman%>"> 
		写聊天室和论坛登陆的用户名。写错将提交不成功。</td>
	      </tr>
			<tr>
<td align="right">　　俱乐部简称： </td>
<td>
<input size="20" maxlength=7 name="factionname" value="<%=factionname%>"> 
最多7个字符 如 XX盟 XX派 XX山庄 XX山 等等！</td>
			</tr>
			<tr>
<td align="right">　　俱乐部名称： </td>
<td><input size="30" name="allname" value="<%=allname%>" maxlength="250"> </td>
			</tr>
			<tr>
<td align="right">　俱乐部宗旨： </td>
<td><input size="60" name="tenet" value="<%=tenet%>" maxlength="250"> </td>
			</tr>

          <tr>
            <td width="592" height="33" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认 " name="B1">
  
            </td>
            </tr>
</form>
        	
        </table>
        </center>
      </div>

  
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
        </div>

</body>

</html>