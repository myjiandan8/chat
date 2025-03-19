<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<%
	Call quanxian(session("UID"),"admin",0)
	Call OpenChatConn()
    sid=Request("sid")
    cid=Request("cid")
    menu=Request("menu")
    webid=Request("webid")
    if menu="" then menu="add"
    if sid="" then sid=0
    if cid="" then cid=0
 

	chathostip=trim(Request("chathostip"))
	chatserialno=trim(Request("chatserialno"))
	dsnname=trim(Request("dsnname"))
	dsnuser=trim(Request("dsnuser"))
	dsnpass=trim(Request("dsnpass"))
	'loginpasswd=trim(Request("loginpasswd"))
	roomcfgdir=trim(Request("roomcfgdir"))
	moduledir=trim(Request("moduledir"))
	keyfile=trim(Request("keyfile"))

	newDM=trim(Request("newDM"))
	websys=trim(Request("websys"))
	md5pass=trim(Request("md5pass"))
	txt=trim(Request("txt"))
 
    
	if menu="del" and name<>"" then

		chatconn.execute "delete from [ServerDB] where sid like "& sid &" and webid="& webid
		wenti("删除成功")
		response.redirect "list.asp"
		response.end
	
	end if
    
    
    
if menu="addsave" or menu="editsave" then

	if chathostip="" or dsnname=""  or dsnuser=""  or dsnpass="" or websys="" then errstr("请填写完整！")
	if cid>0 and (chatserialno=""  or roomcfgdir="" or moduledir="" or keyfile="") then errstr("请填写完整！")
	
	if menu="addsave" then
		sql="select * from [ServerDB] where chathostip='"& chathostip &"' and cid="& cid &" and webid="& webid
		set rs=chatconn.execute (sql)
		if (not rs.eof) then errstr("该服务器已经存在！")
		rs.close
	end if

	Set rs= Server.CreateObject("ADODB.Recordset")
	sql="SELECT * FROM [ServerDB] where sid like "& sid
	rs.open sql,chatconn,1,3

       
       if menu="addsave" then
	       rs.addnew
	       
		   rs("chathostip")=chathostip
		 'rs("fid")=fid
		  rs("cid")=cid
       end if

		rs("webid") = webid
		rs("dsnname")=dsnname
		rs("dsnuser")=dsnuser
		rs("dsnpass")=dsnpass
		'rs("loginpasswd")=loginpasswd
		rs("chatserialno")=chatserialno
		rs("roomcfgdir")=roomcfgdir
		rs("moduledir")=moduledir
		rs("keyfile")=keyfile
		
		rs("newDM")=newDM
		rs("websys")=websys
		rs("md5pass")=md5pass
		rs("txt")=txt

        rs.Update
        rs.close

	   wenti("操作成功！")
	   
end if



if menu="edit" and sid>0 then

sql="select * from [ServerDB] where sid like "& sid
set rs=chatconn.execute (sql)

if rs.eof then errstr("非法ID")
'if webid<>rs("webid") then errstr("您没权限管理该服务器")

	'fid=rs("fid")
	webid=rs("webid")
	cid=rs("cid")
	chathostip=rs("chathostip")
	chatserialno=rs("chatserialno")
	dsnname=rs("dsnname")
	dsnuser=rs("dsnuser")
	dsnpass=rs("dsnpass")
	'loginpasswd=rs("loginpasswd")
	roomcfgdir=rs("roomcfgdir")
	moduledir=rs("moduledir")
	keyfile=rs("keyfile")

	newDM=rs("newDM")
	websys=rs("websys")
	md5pass=rs("md5pass")
	txt=rs("txt")

	rs.close

end if
%>
<html>
<head>
<title>服务器管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</head>
<body bgcolor="#9CC7EF" text="#000000">
<br>
<br>
<br>
<form method="post" action="edit.asp" name="form1">
        	<% if menu="edit" then %>
        	<input type="hidden" name="menu" size="30" maxlength="10" value="editsave">
        	<input type="hidden" name="sid" size="30" maxlength="10" value="<%=sid%>"> 
        	<input type="hidden" name="cid" size="30" maxlength="10" value="<%=cid%>"> 
			<% else %>
        	<input type="hidden" name="menu" size="30" maxlength="10" value="addsave">
        	<input type="hidden" name="sid" size="30" maxlength="10" value="<%=sid%>"> 
        	<input type="hidden" name="cid" size="30" maxlength="10" value="<%=cid%>"> 
        	<% end if %>
  <table width="550" border="1" bordercolordark=#9CC7EF bordercolorlight=#145AA0 cellspacing="0" cellpadding="4" align="center" height="231">
    <tr bgcolor="#4296E7"> 
      <td colspan="2" height="6"> 
        <div align="center"><font color="#FFFFFF">
        <% if menu="add" then %>
			添加
        <% else %>
			编辑
        <% end if %>
        
        <% if cid=0 then %>
			主数据库服务器
        <% else %>
			<%=cip%>聊天服务器 
        <% end if %>
         
        
        </font></div>
      </td>
    </tr>
    <tr>
      <td colspan="2" height="21"> 
        <font color="#FF0000">*</font>这里设置管理员为，总后台的管理员。<br>
		&nbsp;可以配置给每位管理员不同的权限，具体设置在[编辑权限]。</td>
    </tr>

    <tr>
      <td width="154" nowrap height="24"> 
        <p align="right">选择网站</td>
      <td width="374" height="24"> 
        <font color="#336699">
                               
<select style="color: #006699; font-size: 9pt; font-family: 宋体,SimSun" onchange="gotolinkroom(this)" name="webid" size="1">
<%
sql="select * from newweb order by webid asc"
set rsm=chatconn.execute (sql)
%>
&nbsp;<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("webid")%>" <%if rsm("webid")=webid then response.write "selected"%>><%=rsm("webname")%></option>
<% rsm.moveNext
  loop
  rsm.close
%>
</select></font></td>
    </tr>
	<tr>
      <td width="154" nowrap height="10"> 
        <div align="right">主机名</div>
      </td>
      <td width="374" height="10"> 
        <input name="chathostip" size="30" value="<%=chathostip%>">

        <font color="#FF0000">*</font> 写主机名 写授权主机名        
        <% if menu="add" then %>
        	<% else %>
        	<% end if %></td>
    </tr>
    <tr> 
      <td width="154" nowrap height="10"> 
        <div align="right">WEB系统的接口地址</div>
      </td>
      <td width="374" height="10"> 
        <input name="websys" size="30" value="<%=websys%>">
        <font color="#FF0000">* </font>系统的接口的URL地址</td>
    </tr>
    <tr>
      <td width="154" nowrap height="26" align="right"> 
        聊天室默认二级域名</td>
      <td width="374" height="26"> 
        <input name="newDM" size="30" value="<%=newDM%>">
        <font color="#FF0000">* </font>例 liaowan.com<font color="#FF0000"><br>
		</font>比如 <a href="http://2000.liaowan.com">http://2000.liaowan.com</a> 
		就写 liaowan.com</td>
    </tr>
    <tr>
      <td width="154" nowrap height="27" align="right"> 
        系统连接的MD5密码键值</td>
      <td width="374" height="27"> 
        <input name="md5pass" size="30" value="<%=md5pass%>"><font color="#FF0000"> 
		*</font> 
		6-16位数字或字母组成</td>
    </tr>

    <tr>
      <td width="154" align="right" height="1" nowrap> 
        <div align="right">数据库DSN数据源 名称</div>
      </td>
      <td width="374" height="1"> 
        <input name="dsnname" size="30" value="<%=dsnname%>"><font color="#FF0000"> 
		*</font>
      </td>
    </tr>

    <tr>
      <td width="154" nowrap height="26" align="right"> 
        DSN数据源连接 用户名</td>
      <td width="374" height="26"> 
        <input name="dsnuser" size="30" value="<%=dsnuser%>"><font color="#FF0000"> 
		*</font> </td>
    </tr>
	<tr>
      <td width="154" nowrap height="10" align="right"> 
        DSN数据源连接 密码</td>
      <td width="374" height="10"> 
        <input name="dsnpass" size="30" value="<%=dsnpass%>"><font color="#FF0000"> 
		*</font></td>
    </tr>
    <tr>
      <td width="538" nowrap height="24" align="right" colspan="2"> 
        <p align="center"><font color="#FF0000">&amp;</font>VCU系统使用SQL SERVER 数据库 
		保障服务器安全<br>
		请关闭主数据库服务器上的TCP1433端口，避免被黑客利用！</td>
      </tr>
      
<% if cid>0 then %>
    <tr>
      <td width="154" nowrap height="26" align="right"> 
        BCHAT系统文件夹的相对路径</td>
      <td width="374" height="26"> 
        <input name="roomcfgdir" size="30" value="<%=roomcfgdir%>"><font color="#FF0000"> 
		* 如 C:\bchat</font></td>
    </tr>
	<tr>
      <td width="154" nowrap height="9" align="right"> 
        BCHAT摸板文件夹的相对路径</td>
      <td width="374" height="9"> 
        <input name="moduledir" size="30" value="<%=moduledir%>"> 
        <font color="#FF0000">* 如 C:\bchat\module</font></td>
    </tr>
    <tr>
      <td width="154" nowrap height="30" align="right"> 
        BCHAT授权绑定序列号</td>
      <td width="374" height="30"> 
        <input name="chatserialno" size="30" value="<%=chatserialno%>"> 
        <font color="#FF0000">* 见 BCHAT的config.asp</font></td>
    </tr>
	<tr>
      <td width="154" nowrap height="30" align="right"> 
        BCHAT授权文件</td>
      <td width="374" height="30"> 
        <input name="keyfile" size="30" value="<%=keyfile%>"><font color="#FF0000"> 
		* 见 BCHAT的config.asp</font></td>
    </tr>
<% end if %>
    <tr>
      <td width="154" nowrap height="69"> 
        <p align="right">其他说明</td>
      <td width="374" height="69"> 
        <textarea rows="7" name="txt" cols="32"><%=txt%></textarea></td>
    </tr>
    <tr> 
      <td colspan="2" height="22"> 
        <div align="center"> 
          <input type="submit" name="Submit" value=" 确 定 ">
          
        	<a href="useradd.asp?menu=del&name=<%=name%>">删除该用户</a></div>
      </td>
    </tr>
    <tr bgcolor="#4296E7"> 
      <td colspan="2" height="19">　</td>
    </tr>
  </table>
</form>
</body>
</html>


<%
'函数区
 



%>