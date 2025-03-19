<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<% Call quanxian(5) %>
<%

if Request("gonggao")<>"" then

		ggtitle=Request("ggtitle")
		gonggao=HTMLEncode(Request("gonggao"))
		'ggtimes=Request("ggtimes")
		
	if CheckHtml(ggtitle) then errstr("公告标题中有非法字符！")
	
	

	sql="select * from [faction] where roomid=" & rmport
	rs.open sql,bbsconn,1,3
	
		rs("ggtitle")=ggtitle
		rs("gonggao")=gonggao
		rs("ggtimes")=now()
		
       rs.Update
       rs.close
	   Call errstr("修改成功！！")

else

	
	set rs=bbsconn.execute ("select * from [faction] where roomid=" & rmport)

	if rs.eof and rs.bof then
	
		'followid=0
	else
	
		ggtitle=rs("ggtitle")
		gonggao=rs("gonggao")
		'ggtimes=rs("ggtimes")
		
	end if


end if

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>俱乐部公告信息</title>
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
            &nbsp; 俱乐部公告信息</b></font></td>
          </tr>
          
          <tr>
            <td width="611" height="334" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="598" id="AutoNumber2" height="277">
<form name="form5" method="post" action="gonggao.asp"> 
         <tr>
	    <td width="122" align=right height="26">聊天室ID：</td>
	    <td width="466" height="26"> <%=port%></td>
	      </tr>
			<tr>
	    <td width="122" align=right height="20">公告标题：</td>
	    <td width="466" height="20"> 


<input size="30" name=ggtitle value="<%=ggtitle%>">
<input type="hidden" name="vid" size="18" maxlength="10" value="<%=vid%>"> </td>
	      </tr>
  
          <tr>
	    <td width="122" align=right height="173">公告内容：</td>
	    <td width="466" height="173"> 


<textarea rows="13" name="gonggao" cols="58"><%=gonggao%></textarea></td>
	      </tr>

          <tr>
            <td width="592" height="53" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认 " name="B1">
  
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