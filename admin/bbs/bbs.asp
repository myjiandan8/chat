<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<%
menu=Request("menu")
bbsid=clng(Request("bbsid"))

if Request("menu")="bbsadd" then
flid=bbsid
mm="新建论坛资料"
else

mm="编辑论坛资料"

end if

if Request("menu")="bbssave" then

		bbsname=HTMLEncode(Request("bbsname"))
		index_logo=Request("index_logo")
		followid=Request("classid")
		SortNum=Request("SortNum")
		moderated=Request("moderated")
		intro=HTMLEncode(Request("intro"))
		pass=Request("pass")
		userlist=Request("userlist")
		icon=HTMLEncode(Request("icon"))
		logo=HTMLEncode(Request("logo"))
		password=Request("password")
		hide=Request("hide")
		flid=followid
		
	if bbsname="" or followid="" then errstr("请填写完整！")
	if CheckHtml(bbsname) then errstr("论坛名称中有非法字符！")
	
	

	sql="select * from [bbsconfig] where id=" & bbsid
	rs.open sql,bbsconn,1,3
	
	   if rs.eof or err then rs.addnew
	   
	    rs("roomid")=rmport
	    'rs("index_logo")=index_logo
		rs("followid")=Request("classid")
		rs("bbsname")=HTMLEncode(Request("bbsname"))
		rs("moderated")=Request("moderated")
		rs("SortNum")=Request("SortNum")
		rs("pass")=Request("pass")
		rs("password")=Request("password")
		rs("userlist")=userlist
		rs("intro")=HTMLEncode(Request("intro"))
		rs("icon")=HTMLEncode(Request("icon"))
		rs("logo")=HTMLEncode(Request("logo"))
		rs("hide")=Request("hide")
		
       rs.Update
       rs.close
	   Call errstr("操作成功！！")

end if
	   

if menu="bbsmanagexiu" then

	
	set rs=bbsconn.execute ("select * from bbsconfig where id="& bbsid &" order by id asc")
	if rs.eof and rs.bof then
	
		vid=0
		followid=0
		
	else
	
		bbsid=rs("id")
		bbsname=rs("bbsname")
		index_logo=rs("index_logo")
		followid=rs("followid")
		flid=followid
		SortNum=rs("SortNum")
		moderated=rs("moderated")
		intro=rs("intro")
		pass=rs("pass")
		userlist=rs("userlist")
		icon=rs("icon")
		logo=rs("logo")
		password=rs("password")
		hide=rs("hide")
		'index_css=rs("index_css")
		'=rs("")
	
	end if


end if
ii=0
i=0
sub BBSList(selec,vsid)
sql="Select id,bbsname From bbsconfig where followid="&selec&" and hide=0 order by SortNum"
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
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#DAD8CF" width="598" id="AutoNumber2" height="465">
<form name="form5" method="post" action="bbs.asp"> 
         <tr>
	    <td width="122" align=right height="26">聊天室ID：</td>
	    <td width="466" height="26"> <%=port%></td>
	      </tr>
			<tr>
	    <td width="122" align=right height="26">论坛名：</td>
	    <td width="466" height="26"> 

<input type="hidden" name="menu" size="18" maxlength="10" value="bbssave"> 

<input size="30" name=bbsname value="<%=bbsname%>">
<% if Request("menu")="bbsadd" then %>
<input type="hidden" name="bbsid" size="18" maxlength="10" value="0"> 
<% else %>
<input type="hidden" name="bbsid" size="18" maxlength="10" value="<%=bbsid%>">
 排序 <input size="2" name="SortNum" value="<%=SortNum%>">
从小到大排序
<% end if %>
</td>
	      </tr>
  
			<tr>
    <td class=a3 align=right>

论坛类别：</td>
    <td class=a3>

<%
if followid=vid then
%>
顶级分类<input type="hidden" name="classid" size="18" maxlength="10" value="<%=vid%>">
<% else %>
<select name="classid" size="1">
<%
Call BBSList(vid,flid)
%>
</select>
<% end if %></td>
			</tr>
			<tr>
    <td class=a3 align=right>


论坛版主：</td>
    <td class=a3>


<input size="30" name=moderated value="<%=moderated%>"> 多版主添加请用“|”分隔，如：yuzi|裕裕
</td>
			</tr>
			<tr>
    <td class=a3 align=right>


论坛介绍：</td>
    <td class=a3>


<textarea rows="5" name="intro" cols="50"><%=intro%></textarea></td>
			</tr>
			<tr>
    <td class=a3 align=right>

论坛状态：</td>
    <td class=a3>

<select size="1" name="pass">
<option value=0 <%if pass=0 then%>selected<%end if%>>关闭</option>
<option value=1 <%if pass=1 then%>selected<%end if%>>正常</option>
<option value=2 <%if pass=2 then%>selected<%end if%>>游客止步</option>
<option value=3 <%if pass=3 then%>selected<%end if%>>授权浏览</option>
<option value=4 <%if pass=4 then%>selected<%end if%>>授权发帖</option>
</select>
</td>
			</tr>
			<tr>
    <td class=a3 align=right>

授权用户名单：</td>
    <td class=a3>

<textarea rows="3" name="userlist" cols="37"><%=userlist%></textarea> 添加请用|分隔，如：yuzi|裕裕
</td>
			</tr>
			<tr>
    <td class=a3 align=right>


小图标URL：</td>
    <td class=a3>


<input size="30" name="icon" value="<%=icon%>"> 显示在社区首页论坛介绍右边
</td>
			</tr>
			<tr>
    <td class=a3 align=right>


大图标URL：</td>
    <td class=a3>


<input size="30" name="logo" value="<%=logo%>"> 显示在论坛左上角</td>
			</tr>
			<tr>
    <td class=a3 align=right>

通行密码：</td>
    <td class=a3>

<input size="30" name="password" value="<%=password%>"> 如果是公开论坛，此处请留空</td>
			</tr>

          <tr>
    <td class=a3 align=right>

是否显示在论坛列表：　　　　　　　　　　　
    <td class=a3>


<input type="radio" <%if hide=0 then%>CHECKED <%end if%>value="0" name="hide" value="0" id=hide1 checked><label for=hide1>显示</label> 
<input type="radio" <%if hide=1 then%>CHECKED <%end if%>value="1" name="hide" value="1" id=hide2><label for=hide2>隐藏</label> </tr>
   		</tr>

          <tr>
            <td width="592" height="31" align="center" colspan="2" bgcolor="#FFFFFF">
            

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