<!--数据库连接文件#include file="../cool.asp" -->
<%
	dim sql
	dim rs
	dim name
	dim passwd
	name=replace(trim(request("name")),"'","")
	passwd=replace(trim(Request("passwd")),"'","")

	set rs=server.createobject("adodb.recordset")
	sql="select * from admins where passwd='"&passwd&"' and name='"&name&"'"
'	response.write ""&sql&""
'	response.end
	rs.open sql,conn,1,1
 	if not(rs.bof and rs.eof) then
 		if passwd=rs("passwd") then
			session("admin")=rs("name")
			session("flag")=rs("flag")
			Response.Redirect "index.asp"
 		else
			call Error
 		end if
	else
		call Error()
	end if

	sub Error()
    	response.write "   <br><br><br>"
    	response.write "    <table align='center' width='300' border='1' cellpadding='0' cellspacing='0' bordercolor='#999999'>"
    	response.write "      <tr bgcolor='#999999'> "
    	response.write "        <td colspan='2' height='15'> "
    	response.write "          <div align='center'><font color='#FFFFFF'>操作: 确认身份失败!</font></div>"
    	response.write "        </td>"
    	response.write "      </tr>"
    	response.write "      <tr> "
    	response.write "        <td colspan='2' height='23'> "
    	response.write "          <div align='center'><br><br>"
    	response.write "      用户名或密码错误!!! <br><br>"
    	response.write "        <a href='javascript:onclick=history.go(-1)'>返回</a>"        
    	response.write "        <br><br></div></td>"
    	response.write "      </tr>   </table>" 
	end sub
	rs.close
	conn.close
	set rs=nothing
	set conn=nothing

%>

<p>　</p>