<!--数组数据库文件#include file="../../INC/Chatfl.asp" -->
<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%

    menu=Request("menu")
    if menu="" then menu="add"
    
    webid=clng(Request("webid"))
    webname = Request("webname")
    passwd = Request("passwd")
	weburl = Request("weburl")
	regurl = Request("regurl")
	passurl = Request("passurl")
	admin = Request("admin")
	adminis = Request("adminis")
	webtxt = Request("webtxt")
		
Call OpenChatconn
if menu="addsave" or menu="editsave" then

if webid=0 or weburl="" or webname="" or regurl="" or admin="" or adminis="" or webtxt="" then errstr("请填写完整！")

sql="select * from newweb where webid="& webid
set rs=chatconn.execute (sql)
if (not rs.eof) and menu="addsave" then errstr("该ID已经被占用，请换一个！")

rs.close


	sql="SELECT * FROM [newWeb] where webid=" & webid
	rs.open sql,chatconn,1,3

       
       if menu="addsave" then
       	  rs.addnew
       	  rs("webid") = webid
       end if
       
       rs("webname") = webname
       rs("passwd") = passwd
       rs("weburl") = weburl
       rs("regurl") = regurl
       rs("passurl") = passurl
       
       rs("admin") = admin
	   rs("adminis") = adminis
       rs("webtxt") = webtxt

       rs.Update
       rs.close

		errstr("编辑成功")
end if



if menu="edit" and webid>0 then

sql="select * from [newweb] where webid= "& webid
set rs=chatconn.execute (sql)

if rs.eof then errstr("非法ID" & webid)

	   'rs("webid") = clng(webid)
	   
       webname = rs("webname")
       passwd = rs("passwd")
       weburl = rs("weburl")
       regurl = rs("regurl")
       passurl = rs("passurl")
       
       admin = rs("admin")
	   adminis = rs("adminis")
       webtxt = rs("webtxt")

	rs.close

end if

%>


<HTML>
<HEAD>
<TITLE>新建聊天网</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</HEAD>
<STYLE type=text/css>
<!--
td {  font-family: "宋体"; font-size: 9pt}
body {  font-family: "宋体"; font-size: 11pt; line-height: 15pt}
.title {  font-family: "宋体"; font-size: 11pt}
A {text-decoration: none; font-family: "宋体"}
A:hover {text-decoration: underline; color: #FF0000; font-family: "宋体"} 
-->
</style>
<BODY bgcolor="#EEEEFF" LANGUAGE="JavaScript">
<div align=center>
    <FORM action="addweb.asp" method="POST" name="roomedit">
  <INPUT type="hidden" name="TempPassword" value="<!--$TempPassword-->"><INPUT type="hidden" name="UserNameAdmin" value="<!--$UserNameAdmin-->">
  <TABLE border="3" width="662" cellpadding="2" style="border-collapse: collapse" bordercolor="#111111" cellspacing="0" height="380">

<TR>
        <TD align="center" class="title" height="20" width="652" colspan="2"> 
		<font color=red><% if menu="add" then response.write "添加" else response.write "编辑"%></font><font color="#FF0000">新建聊天网</font> </TD>
      </TR>
<TR>
        <TD height="26" width="84"> ID号码:</TD>
        <TD height="26" width="562"> 
        <input type="text" name="webid" size="18" maxlength="10" value="<%=webid%>">
        <% if menu="add" then %>
        <input type="hidden" name="menu" size="18" maxlength="10" value="addsave">
        <% else %>
        <input type="hidden" name="menu" size="18" maxlength="10" value="editsave">
        <% end if %>
        
        
		范围 2-10&nbsp; 2是碧聊 依次依次 哈哈</TD></TR>
<tr>
        <TD height="21" width="84"> 网站名称:&nbsp;
        </TD>
        <TD height="21" width="562"> 
            
          <INPUT type="text" name="WebName" maxlength="20" size="31" value="<%=WebName%>">
        </TD>
      </tr>
<tr>
        <TD height="30" width="84"> 管理密码:</TD>
        <TD height="30" width="562"> 
            
          <INPUT type="text" name="passwd" maxlength="20" size="31" value="<%=passwd%>"></TD>
      </tr>
<tr>
        <TD height="26" width="84"> 网站地址:</TD>
        <TD height="26" width="562"> 
		<input type="text" name="weburl" maxlength="200" size="31" value="<%=weburl%>"> 
		写地址连接</TD>
</tr>
<tr>
        <TD height="26" width="84"> 新用户注册:</TD>
        <TD height="26" width="562"> 
		<input type="text" name="regurl" maxlength="200" size="31" value="<%=regurl%>"> 
		写地址连接</TD>
</tr>
<tr>
        <TD height="26" width="84"> 密码找回:</TD>
        <TD height="26" width="562"> 
		<INPUT type="text" name="passurl" maxlength="50" size="31" value="<%=passurl%>"> 
		写地址连接</TD>
      </tr>
<tr>
        <TD height="26" width="84"> 站长名: </TD>
        <TD height="26" width="562"> 
		<input type="text" name="Admin" maxlength="200" size="31" value="<%=Admin%>"> 
		站长的名字</TD>
      </tr>
<tr>
        <TD height="26" width="84"> 监督联系方式: </TD>
        <TD height="26" width="562"> 
		<input type="text" name="Adminis" maxlength="200" size="31" value="<%=Adminis%>"> 
		监督的QQ或者电话</TD>
      </tr>
<TR>
        <TD height="26" width="84"> 其他说明:&nbsp;
        </TD>
        <TD height="26" width="562"> 
		<input type="text" name="webtxt" maxlength="500" size="31" value="<%=webtxt%>"> 
		其他的一些说明</TD>
      </TR>
 <TR><TD align="center" height="29" width="652" colspan="2">
<INPUT type="submit" value="确定" name=submit1>
        </TD>
      </TR>
</TABLE>
</form>
</div>
</BODY>
</HTML>