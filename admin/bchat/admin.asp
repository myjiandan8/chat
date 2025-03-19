<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(22) %>
<%

if Request("admintor")<>"" then


if len(Request("admintor"))>2000 then Call errstr("2000字以内才可以哦！！")

	sql="select admintor from [Room] where port=" & port
	rs.open sql,bchatconn,1,3
	admintor = trim(Request("admintor"))
	if not (rs.eof or err) then
       rs("admintor") = admintor
       rs.Update
       rs.close
	end if
	   
	'写adminpass_端口.txt文件
	sql="select * from [serverdb] where sid=" & sid
	set rsr = chatconn.Execute(sql)
	urls=rsr("websys") &"?MD5vsr=" & MD5(port & md5pass) & "&port=" & port & "&menu=2"
	'response.write urls
	newi= left(GetURL(urls),1)

	Call errstr("修改成功！！")

end if

Function GetURL(url)
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          With Retrieval
          .Open "POST", url, False
          .setRequestHeader "Content-Type", "application/x-www-form-urlencoded" 
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End Function
%>


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
       
<form name="form5" method="post" action="admin.asp">  
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; 设置主持人</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  
               <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="130">
          <tr>
	    <td width="103" align=left height="1">端口号：</td>
	    <td width="479" height="1"> <%=id%></td>
	      </tr>
          <tr>
	    <td  align=left height="9" width="103">设置管理管理员：</td>
	    <td height="9" width="479" >
		<textarea rows="27" name="admintor" cols="65"><%=admintor%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="53" width="103"></td>
	    <td height="53" width="479" >1.关于管理员的配置，管理名、密码和级别之间用&quot;|&quot;分隔，如: 
        admin|passwd|1 
        每个名字一行，注意后面不要留空格。如果管理员名字为注册的用户名，要在名字前面加上星号。级别0表示有踢名字权限；1表示有踢名字和IP权限；9表示有1级权限并有不被踢的权限。<br>
		<font color="#FF0000">注意：最高应许2000字！</font></td>
	      </tr>

          <tr>
            <td width="586" height="83" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
<form>
  
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