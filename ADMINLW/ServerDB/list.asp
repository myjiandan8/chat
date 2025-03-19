<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<% '
Call quanxian(session("UID"),"admin",0)
Call OpenChatConn()
'删除记录
if request("Delid")<>"" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("如果删除将无法恢复你确定删除吗？",vbYesNo+vbQuestion,"确定删除")=vbYes then
	   window.location.href="list.asp?Delid=<%=request("Delid")%>&queding=OK"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<%
  response.end
end if
	
if request("Delid")<>"" and request("queding")<>""  then 
 
			sql="delete from ServerDB where sid="& request("Delid") &""
			Chatconn.Execute ( sql )

			
%>
<script language=vbs>
        MsgBox "操作成功！"	
</script>
	
<% end if %>
<html>
<head>
<title>添加新照片</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
</HEAD>


<BODY bgcolor="#468ea3">


 <TABLE width="626" border="0" align="center" cellspacing="1" height="383">
             <TBODY>
             
<%

    sid=Request("sid")
    cid=Request("cid")

if cid=0 then
%>
             
             <TR align="center">
             <TD height="30" bgcolor="#145f74" width="622" colspan="5">
				<FONT color="#FFFFFF"><B>
				主数据库服务器管理&nbsp; </B>
				<a target="_blank" href="edit.asp?cid=0&menu=add"><font color="#FFFFFF">添加新主服务器</font></a></FONT></TD></TR><TR>
             <TD align="center" width="33" nowrap bgcolor="#A5D0DC" height="23">
				<b>宿主</b></TD>
             <TD align="center" width="35" nowrap bgcolor="#A5D0DC" height="23">
				ID</TD>
             <TD align="center" width="124" nowrap bgcolor="#A5D0DC" height="23">
				<b>主机名</b></TD>
             <TD align="center" width="212" nowrap bgcolor="#A5D0DC" height="23">
				<b>WEB系统地址</b></TD>
             <TD align="center" width="206" nowrap bgcolor="#A5D0DC" height="23">
				<b>管理</b></TD>
				</TR>
				
<%
sql="select * from ServerDB where cid=0"
set rs=chatconn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="619" height="26" align="center" colspan="5" bgcolor="#FFFFFF">
            您还没建立一个主服务器，点击 添加新主服务器!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
				<tr>
             <TD align="center" width="33" nowrap bgcolor="#FFFFFF" height="29">
             		<%=rs("webid")%>
				　</TD>
             <TD align="center" width="35" nowrap bgcolor="#FFFFFF" height="29">
             		　<%=rs("sid")%></TD>
             <TD align="center" width="124" nowrap bgcolor="#FFFFFF" height="29">
             		　<%=rs("chathostip")%></TD>
             <TD align="center" width="212" nowrap bgcolor="#FFFFFF" height="29">
             		<%=rs("websys")%>
				　</TD>
             <TD align="center" width="206" nowrap bgcolor="#FFFFFF" height="29">
				<a href="edit.asp?sid=<%=rs("sid")%>&menu=edit">编辑</a> 
				<a href="list.asp?Delid=<%=rs("sid")%>">删除</a> 信息同步 
				<a href="list.asp?cid=<%=rs("sid")%>">管理子服务器</a></TD>
				</tr>


<% rs.moveNext
  loop
  rs.close
end if

%>
				
				
<%
else
	sql="select * from ServerDB where sid=" & cid
	set rs=chatconn.execute (sql)
	if rs.eof or err then errstr("非法操作！") 
	Cserver=rs("chathostip")
	rs.close
%>


             <TR align="center">
             <TD height="30" bgcolor="#145f74" width="619" colspan="5">
				<font color="#FFFFFF"><b>[<%=Cserver%>]聊天服务器管理&nbsp; </b><a href="edit.asp?cid=<%=cid%>&menu=add">
				<font color="#FFFFFF">添加[<%=Cserver%>]聊天服务器</font></a></font></TD></TR><TR>
             <TD align="center" width="33" nowrap bgcolor="#A5D0DC" height="23">
				<b>宿主</b></TD>
             <TD align="center" width="35" nowrap bgcolor="#A5D0DC" height="23">
				ID</TD>
             <TD align="center" width="124" nowrap bgcolor="#A5D0DC" height="23">
				<b>主机名</b></TD>
             <TD align="center" width="212" nowrap bgcolor="#A5D0DC" height="23">
				<b>WEB系统地址</b></TD>
             <TD align="center" width="206" nowrap bgcolor="#A5D0DC" height="23">
				<b>管理</b></TD>
			</TR>
				
<%
sql="select * from ServerDB where cid=" & cid
set rs=chatconn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="619" height="29" align="center" colspan="5" bgcolor="#FFFFFF">
            您还没建立一个[<%=Cserver%>]下的聊天服务器，<font color="#FFFFFF"><a href="edit.asp?cid=<%=cid%>&menu=add">添加[<%=Cserver%>]聊天服务器</a></font> </td>
     </tr>

<%
else
do while not (rs.eof or err)
%>

				<tr>
             <TD align="center" width="33" nowrap bgcolor="#FFFFFF" height="26">
             		<%=rs("webid")%>
				　</TD>
             <TD align="center" width="35" nowrap bgcolor="#FFFFFF" height="26">
             		　<%=rs("sid")%></TD>
             <TD align="center" width="124" nowrap bgcolor="#FFFFFF" height="26">
             		　<%=rs("chathostip")%></TD>
             <TD align="center" width="212" nowrap bgcolor="#FFFFFF" height="26">
             		<%=rs("websys")%>
				　</TD>
             <TD align="center" width="206" nowrap bgcolor="#FFFFFF" height="26">
				<a href="edit.asp?sid=<%=rs("sid")%>&menu=edit">编辑</a> 
				<a href="list.asp?Delid=<%=rs("sid")%>">删除</a> 
				<a href="list.asp?sid=<%=rs("sid")%>">&nbsp;聊天室</a>列表</TD>
				</tr>

<% rs.moveNext
  loop
  
end if
%>
				
<%
end if
%>			
				

				<tr>
             <TD width="616" nowrap bgcolor="#FFFFFF" height="157" colspan="5">
				&nbsp;* <font color="#008000">主数据库服务器</font><br>
&nbsp;&nbsp; 是放置[VCU主数据库系统]的服务器。他可以放置在与主SQLSERVER数据库同一台服务器，或者其他远程服务器。<br>
&nbsp;&nbsp; 由于系统含盖技术比较深。第一次接触本系统，<font color="#006699">请在VCU同盟工程师指导下进行配置和学习。<br>
				</font>&nbsp;* <font color="#008000">添加新主服务器</font> 
				是用来添加一台主服务器的表单连接。参考提示进行正确操作。<br>
&nbsp;&nbsp; 一个同盟站点可以有多个主数据库服务器。<br>
&nbsp;* <font color="#008000">编辑</font> 用来修改已经存在的主数据库服务器配置信息。<br>
&nbsp;* <font color="#008000">删除</font> 删除一个已经存在的主数据库服务器。<font color="#FF0000">该操作
				将删除他名下所有服务器，请谨慎操作。</font><br>
&nbsp;* <font color="#008000">管理子服务器</font> 管理本主数据库服务器下的聊天服务器。<br>
&nbsp;* <font color="#0000FF">信息同步</font> 是将同盟聊天室数据库内容与VCU主系统进行资料同步。本操作适用用与首次安装。
				最好在工程师指导<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 下进行</TD>
             </tr>
				
				
				
				</TBODY></TABLE>
				

</BODY></HTML>