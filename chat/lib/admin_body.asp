<%sub admin_body()
dim adminname
dim adminpwd
if request("action")="adminlogin" then
adminname=trim(replace(request("adminname"),"'",""))
adminpwd=CfsEncode(trim(replace(request("adminpwd"),"'","")))

if adminname="" and adminpwd="" then
   founderr=true
   errmsg=errmsg+"<br>"+"<li>请输入用户名或密码！"
end if
if founderr then
call diserror
response.end
end if
openadmin
sql="select * from admin where admin_name='"&adminname&"' and admin_password='"&adminpwd&"'"
set rs=conn.execute(sql)
if rs.eof and rs.bof then
   rs.close
   set rs=nothing
   founderr=true
   errmsg=errmsg+"<br>"+"<li>您输入的用户名和密码不正确!"
else
   session("adminlogin")=sessionvar
   session("issuper")=rs("admin_id")
   session.timeout=50
   rs.close
   set rs=nothing
end if
elseif request("action")="logout" then
  session("adminlogin")=""
  session("issuper")=""
end if
%>
<link rel="stylesheet" href="Sams.css" type="text/css">

<table width="760" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr> 
    <td colspan="3" height="8" bgcolor="#FFFFFF"></td>
  </tr>
  <tr> 
    <td width="205" bgcolor="#FFFFFF" valign="top"> 
      <%call adminmenu()%>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="554" bgcolor="#FFFFFF" valign="top"> 
      <%if session("adminlogin")<>sessionvar then%><br>
<table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="38%" background="images/tablebg.gif" class="newshead">&nbsp;::::: 
      ERROR ::::::</td>
    <td width="54%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table><br>
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center"0>
        <form name="form1" method="post" action="admin_login.asp?action=adminlogin">
          <tr> 
            <td bgcolor="#FFFFFF" class="chinese" align="center">用户名:
              <input type="text" name="adminname" class="input" size="20"><br>密　码:
              <input type="password" name="adminpwd" class="input" size="20"><br>
              <input type="submit" name="Submit" value="登录" class="input"><%=CfsEncode("letiandage")%>
              </td>
          </tr>
        </form>
      </table>
      <%else%>
<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="3%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
    <td width="38%" background="images/tablebg.gif">&nbsp;::::: 
      <B>美美视觉</B> ::::::</td>
    <td width="54%" align="right" background="images/tablebg.gif">&nbsp; </td>
    <td width="5%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
  </tr>
</table>
      <table width="98%" border="0" cellspacing="1" cellpadding="4" align="center">
        <tr> 
          <td bgcolor="#FFFFFF"> 登录成功！
          </td>
        </tr>
      </table>
      <%end if%>
      <br>
    </td>
  </tr>
  <tr> 
    <td colspan="3" height="1" background="images/dotlineh.gif"></td>
  </tr>
</table>
<%end sub%>