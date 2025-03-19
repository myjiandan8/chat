<!--数据库连接文件#include file="TOP.asp" -->
<!--数据库连接文件#include file="../INC/SQLconn.asp" -->

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


if UN = ""  then


    name = trim(request("name"))
	sql="select name,passwd from [User] where name='"& name &"' and passwd='" & replace(trim(request("passwd")),"'","''") & "'"
	set rs = conn.Execute(sql)
	
	if rs.eof or err then
%>

<script language=Javascript>
	alert("用户名或密码错误！请重新输入");
	window.history.go(-1);	
</script>
<%	
	    response.end
	end if

else


name = UN

end if


Call OpenMeChatConn()

if Request("RoomName")="" then
	response.write "请填写完整<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if

sql="select * from [Room] where Administrators='"& name &";' and PrivateRoom=1 "
set rs=mechatconn.execute (sql)
if not rs.eof then
	response.write "一个帐号只能建立一个自建聊天室<br><a href='Javascript:window.history.go(-1)'>返回</a>"
	response.End
end if
rs.close
	   

    'On Error Resume Next
    sql="SELECT * from [Room] where PrivateRoom=1 order by RoomID desc" 
	rs.open sql,mechatconn,1,3

       if not rs.eof then
       newid=rs("RoomID") + 1
       else
       newid=800001
       end if
    
    
       rs.addnew 
       rs("Roomid") = newid
       rs("RoomName") =Request("RoomName")


       rs("MaxUser") =28
       rs("NearMaxUser") =80
       rs("IniNo") =1
       rs("TemplateNo") =1
       rs("LogRoom") =0
       
      ' rs("LogCommandInfo") =Request("LogCommandInfo")
      ' rs("LogUserLoginInfo") =Request("LogUserLoginInfo")
      ' rs("LogSecret") =Request("LogSecret")
       
       rs("LogIP") =0
       rs("LastMessage") =6
       rs("RoomType") =Request("RoomType")
       rs("AllowGuest") =1
       rs("Administrators") = trim(name) & ";"
       
       
      if "" <> Request("Background") then rs("Background") =Request("Background")
       
       rs("LogoutUrl") ="http://liaowan.com"
       rs("RoomTopic") =Request("RoomTopic")
       
      if "" <> Request("Roompasswd") then rs("Roompasswd") =trim(Request("Roompasswd"))
      
      if "" <> Request("ExternValue") then rs("ExternValue") = Request("ExternValue")
      
       rs("PrivateRoom") = 1
       rs("SupportAudio") = 1
       rs("SupportVideo") = 1
       
      ' rs("Admin") =trim(Request("Admin"))
      ' rs("quittime") =Request("quittime")
      ' rs("addtime") = date()
       
		rs("AllowPublic") = Request("AllowPublic")


       rs.Update
       rs.close



'刷新该的房间,
On Error Resume Next
urls="http://liaowan.com:6000/reloadroom.htm?RoomID=" & newid
Call GetURL(urls)
Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function
%>


<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>自建聊天室成功</TITLE>

<% call top %>


<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="466" id="AutoNumber1" height="453">
    <tr>
      <td width="65%" height="19">　</td>
    </tr>
    <tr>
      <td width="65%" height="430">
      <table cellSpacing="0" cellPadding="0" width="463" border="0" style="border-collapse: collapse" bordercolor="#111111">
        <tr>
          <td align="left" height="26" width="463">
              <img border="0" src="img/Main_04.gif"><b><font class="titletext" color="#ff0000">自建房间 [ <%=Request("RoomName")%> ] 成功</font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="463"></td>
        </tr>
        <tr>
          <td height="6" width="463"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="465" border="0" height="1">
        <tr>
          <td vAlign="top" width="459" height="130">
          <p>
           
          
      <form method="POST" name="form" action="regsubmit.asp" onsubmit="return isok(this)">
          <DIV align=center> 
            <CENTER>
      <table width="445" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="445"> 
            <table width="462" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td colspan="2" class="titletext" width="427">　</td>
              </tr>
              <tr> 
                <td valign="top" height="250" width="397" align="right"> 
                  <table cellspacing=5 border=0 width="371" height="222">
                    <tbody>
                      <tr> 
                        <td height=25 width="359"></td>
                      </tr>
                      <tr>
                        <td height=2 width="359" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=153 width="359">
                        <p align="center">聊天室地址是：<b><a target="_blank" href="http://<%=newid%>.liaowan.com"><font color="#FF0000">http://<%=newid%>.liaowan.com</font></a></b><br>
                        管理员是：<b><font color="#FF0000"><%=name%></font></b><br>
                        房间ID：<%=newid%></td>
                      </tr>
                      <tr>
                        <td height=2 align="right" width="352" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=1 align="center" valign="bottom" width="359">    
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
                <td width="62" valign="bottom"><img src="img/girl01.gif" width="61" height="200" border="0"></td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="445"></td>
        </tr>
      </table>
      </CENTER>
          </DIV>
        </FORM>
          
          </td>
          <td vAlign="top" width="0" height="1" rowspan="2">
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="459" height="26" align="center">
          　</td>
          </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="65%" height="1"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="65%"></td>
        </tr>
    <tr>
      <td width="65%" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

    
<%call endpage()
%>