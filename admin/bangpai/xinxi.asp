<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<% Call quanxian(5) %>
<%
dengji=cint(Request("dengji"))
if dengji="" or dengji=0 then dengji=10

if Request("content")<>"" and Request("dengji")<>"" then


content=Request("content")


sql="select top 200 username from [User] where faction='"& factionname &"'"

if dengji>10 then sql = sql & " and dengji=" & dengji

set rsm=bbsconn.execute (sql)
do while not (rsm.eof or err)

sql="insert into message(author,incept,content) values ('"& buildman &"','"& rsm("username") &"','"&content&"')"
bbsconn.Execute(SQL)
bbsconn.execute("update [user] set newmessage=newmessage+1 where username='"& rsm("username") &"'")

  rsm.moveNext
  loop
  rsm.close

Call errstr("发送成功！！")

end if

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>俱乐部群发短信息</title>
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="617" id="AutoNumber2" height="364">

          <tr>
            <td width="611" bgcolor="#0075F7" height="28">
            <font color="#FFFFFF"><b>
            &nbsp; 俱乐部内部 群发短信息</b></font></td>
          </tr>
          
          <tr>
            <td width="611" height="334" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="598" id="AutoNumber2" height="277">
<form name="form5" method="post" action="xinxi.asp"> 
<input type="hidden" name="vid" size="18" maxlength="10" value="<%=vid%>">  
         <tr>
	    <td width="122" align=right height="22">聊天室ID：</td>
	    <td width="466" height="22"> <%=port%></td>
	      </tr>
			<tr>
	    <td width="122" align=right height="21">接受目标：</td>
	    <td width="466" height="21"> 
<SELECT name=dengji size="1">
<option value="10" <%if dengji=10 then response.write " selected"%>>全部成员</option>
<option value=0 <%if dengji=0 then response.write " selected"%>>未验证成员</option>
<%
i=1
do while not (i>9)

%> 
<option value=<%=i%> <%if dengji=i then response.write " selected"%>><%=i%>级成员</option>

<% 
  i=i+1
  loop
%>
</SELECT></td>
	      </tr>
  
          <tr>
	    <td width="122" align=right height="173">信息内容：</td>
	    <td width="466" height="173"> 


<textarea rows="13" name="content" cols="58"></textarea></td>
	      </tr>

          <tr>
            <td width="592" height="53" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input name=submit1 type="submit" value="发送讯息">
  
            </td>
            </tr>
<form>
        	
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