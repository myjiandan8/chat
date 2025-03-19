<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<% Call quanxian(6) %>
<%

if Request("menu")="bbsaddok" then

if Request("bbsname")="" then errstr("请输入论坛名称")

master=split(Request("moderated"),"|")
for i = 0 to ubound(master)
If bbsconn.Execute("Select id From [user] where username='"&HTMLEncode(master(i))&"'" ).eof and master(i)<>"" Then errstr(""&master(i)&"的用户资料还未注册")
next

userlist=replace(Request("userlist"),vbCrlf,"")

rs.Open "bbsconfig",bbsConn,1,3
rs.addnew
rs("roomid")=rmport
rs("followid")=Request("classid")
rs("bbsname")=HTMLEncode(Request("bbsname"))
rs("moderated")=Request("moderated")
rs("pass")=Request("pass")
rs("password")=Request("password")
rs("userlist")=userlist
rs("intro")=HTMLEncode(Request("intro"))
rs("icon")=HTMLEncode(Request("icon"))
rs("logo")=HTMLEncode(Request("logo"))
rs("hide")=Request("hide")
rs.update
id=rs("id")

rs.close

end if

if Request("menu")="bbsmanagedel" then
bbsconn.execute("delete from [bbsconfig] where id="& Request("bbsid") &"")
wenti("已经将该论坛的所有数据删除了！")
end if

dim ii
ii=0
sub sort(selec)
	sql="Select * From bbsconfig where followid="&selec&" and hide=0 order by SortNum"
	Set Rs1=bbsconn.Execute(sql)


	do while not rs1.eof

if selec=vid then
%>
  <tr class=a1 id=TableTitleLink height=25 bgcolor=#aaaaaa>
<td>　<a target=_blank href=http://<%=rmport%>.liaowan.com/bbs/ShowForum.asp?forumid=<%=rs1("id")%>><%=rs1("bbsname")%></a></td>
<td align="right" width="190">
<a target="_blank" href="bbs.asp?menu=bbsadd&bbsid=<%=rs1("id")%>">建立论坛</a> | 
<a target="_blank" href="bbs.asp?menu=bbsmanagexiu&bbsid=<%=rs1("id")%>">编辑论坛</a> | 
<a onclick=checkclick('您确定要删除该论坛的所有资料?') href=listbbs.asp?menu=bbsmanagedel&bbsid=<%=rs1("id")%>>删除论坛</a>
</tr>

<%
else
%>
<tr class=a3 height=25>
<td>　<%=string(ii*2,"　")%><a target=_blank href=http://<%=rmport%>.liaowan.com/bbs/ShowForum.asp?forumid=<%=rs1("id")%>><%=rs1("bbsname")%></a></td>
<td align="right">
<a target="_blank" href="bbs.asp?menu=bbsadd&bbsid=<%=rs1("id")%>">建立论坛</a> | 
<a target="_blank" href="bbs.asp?menu=bbsmanagexiu&bbsid=<%=rs1("id")%>">编辑论坛</a> | 
<a onclick="checkclick('您确定要删除该论坛的所有资料?')" href="listbbs.asp?menu=bbsmanagedel&bbsid=<%=rs1("id")%>">删除论坛</a>
</tr>
<%
end if
ii=ii+1
	sort rs1("id")
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
<title>论坛板块管理</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="1" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="516" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="515" align="center" valign="top">
       

      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; 论坛版块管理</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="37" bgcolor="#FFFFFF" align="center">
            
<form name="form" method="post" action="?menu=bbsaddok"><input type=hidden name=hide value=0>
类别名称：（例如：电脑网络）<input name="bbsname"><input type="hidden" name="classid" size="18" maxlength="10" value="<%=vid%>"><input type="submit" value="建立一级分类"></form>
</td>
            </tr>

        	<tr>
            <td width="586" height="333" bgcolor="#FFFFFF" valign="top">
            

<div align="center">
            

<table cellspacing=1 cellpadding="2" width="80%" border="1" class="a2">
<%
sort(vid)
%>
</table>

  
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