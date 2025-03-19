<!--数组数据库文件#include file="../../INC/Chatfl.asp" -->
<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
On Error Resume Next

menu=Request("menu")
fid=clng(Request("fid"))

if Request("menu")="bbsadd" then
fid=fid
mm="新建论坛资料"
else
mm="编辑论坛资料"
end if

if Request("menu")="bbssave" then

		fid=clng(Request("fid")
		ufid=clng(Request("ufid"))
		fname=HTMLEncode(Request("fname"))
		ftxt=HTMLEncode(Request("ftxt"))
		
	if bbsname="" or followid="" then errstr("请填写完整！")
	if CheckHtml(bbsname) then errstr("论坛名称中有非法字符！")
	
	

	sql="select * from [chatff] where fid=" & fid
	rs.open sql,bbsconn,1,3
	
	   if rs.eof or err then rs.addnew
	   
		rs("fid")=fid
		rs("ufid")=ufid
		rs("fname")=fname
		rs("ftxt")=ftxt
		
       rs.Update
       rs.close
	   Call errstr("操作成功！！")

end if
	   

if menu="bbsmanagexiu" then

	
	set rs=bbsconn.execute ("select * from chatff where fid="& fid &" order by fid asc")
	if rs.eof and rs.bof then
	
		vid=0
		followid=0
		
	else
  
		rs("fid")=fid
		rs("ufid")=ufid
		rs("fname")=fname
		rs("ftxt")=ftxt

	end if


end if
ii=0
i=0
sub BBSList(selec,vsid)
sql="Select id,bbsname From chatff where fid="&selec&" order by fid"
Set Rs1=BBSConn.Execute(sql)
do while not rs1.eof
Response.write "<option value="&rs1("ID")
if rs1("id")=vsid then Response.write " selected"
Response.write ">"&string(ii,"　")&""&rs1("bbsname")&"</option>"
ii=ii+1
BBSList rs1("id"),ffid
ii=ii-1
rs1.movenext
loop
Set Rs1 = Nothing
end sub

%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title><%=mm%></title>
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
            <td width="611" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			<%=mm%></b></font></td>
          </tr>
          
          <tr>
            <td width="611" height="370" bgcolor="#FFFFFF" valign="top">
            

  
    <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#DAD8CF" width="598" id="AutoNumber2" height="178">
<form name="form5" method="post" action="chatffedit_副本(1).asp"> 
<input type="hidden" name="bbsid" size="18" maxlength="10" value="<%=bbsid%>">
<input type="hidden" name="bbsid" size="18" maxlength="10" value="0"> 
			<tr>
	    <td width="122" align=right height="26">分类名：</td>
	    <td width="466" height="26"> 

<input type="hidden" name="menu" size="18" maxlength="10" value="bbssave"> 

<input size="30" name=fname value="<%=fname%>"></td>
	      </tr>
  
			<tr>
    <td class=a3 align=right>

类别：</td>
    <td class=a3>

<%
if followid=vid then
%>
顶级分类<input type="hidden" name="classid" size="18" maxlength="10" value="<%=vid%>">
<% else %>
<select name="ufid" size="1">
<%
Call BBSList(vid,flid)
%>
</select>
<% end if %></td>
			</tr>
			<tr>
    <td class=a3 align=right>


类别：</td>
    <td class=a3>


<textarea rows="5" name="ftxt" cols="50"><%=ftxt%></textarea></td>
			</tr>

          <tr>
            <td width="592" height="27" align="center" colspan="2" bgcolor="#FFFFFF">
            

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