<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>管理中心</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">

<%
nid=Request("nid")


sql="select * from sys_news_fl where Nid="&Request("nid")&" order by nid asc"
set rsa=conn.execute (sql)
nfl=rsa("nfl")



'删除记录
sc=request("sc")
id=request("id")



if sc=1 and id<>"" and request("queding")="" then   %>
<br>  
<b>删除后将无法恢复该新闻！如果是删除新闻组，新闻组的所有新闻也将被删除</b>
<br>
<input type="button" name="Submit3" value="确定删除" onClick="document.location = 'www_new.asp?id=<%=id%>&sc=1&queding=OK'" >   
<input type="button" name="Submit3" value="  放弃  " onClick="document.location = 'Javascript:window.history.go(-1)'" >
<% 
end if


if sc=1 and id<>"" and request("queding")<>"" then 


		
sql="select * from SYS_NEWS where ID like "& ID &""
set rsv=conn.execute (sql)

	if rsv("uid")=uid and rsv("suzhu")=1 then

			if rsv("nzusf")=1 then
			
			sql="delete from SYS_NEWS where ID like "&rsv("ID")&""
			conn.Execute ( sql )
			sql2="delete from SYS_NEWS where nzu like "&rsv("ID")&""
			conn.Execute ( sql2 )
			
			else
			
			sql="delete from SYS_NEWS where ID like "&rsv("ID")&""
			conn.Execute ( sql )
			
			end if

%>
<script language=vbs>
<!--
        MsgBox "删除成功！"
        window.location.href="www_new.asp"

-->
</script>
<%	else	
%>
<script language=vbs>
<!--
        MsgBox "非法操作！该新闻不属于您的管理范围！"
        window.location.href="www_new.asp"

-->
</script>
<%  
	end if
end if
%>


<% if sc="" then %>
<CENTER>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    <br>
    &nbsp;<img border="0" src="../img/closedfold.gif">
    您目前的位置>>><a href="main.asp">首页</a>>>><a href="addnew.asp">新闻管理</a>>>>新闻维护 </td>
  </tr>
</table>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="281">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"><b> 新闻维护 --- 新闻类型：<u><font color="#003399"><%=nfl%></font></u></b></td>
    </tr>
    <tr>
      <td width="100%" height="257" valign="top">
<br>


<%
sql="select * from sys_news where nzusf=1 and nid='"& nid &"' order by id desc"
set rsc=conn.execute (sql)
	if rsc.EOF then 
	response.write"<font color=#ff0000>您没有建立新闻组！</font>"
else
%>
<% do while not (rsc.eof or err) %>
<br>
      <div align="center">
        <center>
        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#CBC1FF" width="90%" id="AutoNumber5" height="24">

          <tr>
            <td width="100%" height="1" bgcolor="#E1E2FF" style="border-left-style: solid; border-left-width: 1; border-top-style: solid; border-top-width: 1" colspan="6">


            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#F7F7FF" width="100%" id="AutoNumber6" height="26">
              <tr>
                <td width="12%" height="20" align="center"><font color="#666666">
                <img border="0" src="../img/msg_no_new_bar.gif"> 新闻组:</font></td>
                <td width="40%" height="15">&nbsp; <a target=_blank href="www_news_liulan.asp?id=<%=rsc("ID")%>"><%=rsc("title")%></a>&nbsp;<%=rsc("tiems")%></td>
                <td width="10%" height="15" align="center"><font color="#666666">
                新闻类型:</font></td>
                <td width="15%" height="15" align="center"> <font color="#666666"><% if rsc("nid")=1 then
			   response.write "企业新闻"
			   else
			   response.write "行业新闻"
			   end if		
			%></font></td>
                <td width="11%" height="15" align="center"><font color="#666666">
                <a href="www_news.asp?id=<%=rsc("id")%>&xg=1">修改</a></font> <font color="#666666">
                <a href="www_new.asp?sc=1&id=<%=rsc("id")%>">删除</a></font></td>
            <td width="12%" height="15" align="center"><font color="#666666">
            <a href="www_news.asp?id=<%=rsc("id")%>&tj=1">添加新闻</a></font></td>
              </tr>
            </table>
            </td>
          </tr>
<%
sql="select * from sys_news where Nzu="&rsc("id")&"  and nid='"& nid &"'  order by id asc"
set rsr=conn.execute (sql)
	if rsr.EOF then 
	response.write"<tr><td width=100% height=20 style='border-left-style: solid; border-left-width: 1; border-top-style: solid; border-top-width: 1' colspan=6><font color=#ff0000>该新闻组还没有新闻！</font></td></tr>"
else
%>
<% do while not (rsr.eof or err) %>
          
          <tr>
            <td width="9%" height="1" align="center" style="border-left-style: solid; border-left-width: 1">
<img border="0" src="../img/forum_online.gif"> <%=rsr("ID")%>
			</td>
            <td width="12%" height="1" align="center"><font color="#666666">
<%
sql="select * from sys_news_fl where Nid="&rsr("nid")&"  and nid='"& nid &"'  order by nid asc"
set rss=conn.execute (sql)
response.write rss("nfl")
%>  
			  </font>
			</td>
            <td width="38%" height="1" align="center">
<a target=_blank href="www_news_liulan.asp?id=<%=rsr("ID")%>"><%=rsr("title")%></a>
			</td>
            <td width="20%" height="1" align="center">
<%=rsr("times")%>
			</td>
            <td width="10%" height="1" align="center">
			<a href="www_news.asp?id=<%=rsr("id")%>&xg=1">修改</a></td>
            <td width="11%" height="20" align="center" style="border-right-style: solid; border-right-width: 1">
			<a href="www_new.asp?sc=1&id=<%=rsr("id")%>">删除</a></td>
          </tr>

<% rsr.moveNext
  loop
 %> 
<% end if
%>

        </table>
        </center>
      </div>
      
<% rsc.moveNext
  loop
%>
<% end if %>
      
      <br><br><br>
      
<%
sql="select * from sys_news where nzusf=0  and nid='"& nid &"'  order by id asc"
set rsw=conn.execute (sql)
	if rsw.EOF then 
	response.write"<font color=#ff0000>您还没有发布非组新闻！</font>"
else
%>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="90%" id="AutoNumber7" bgcolor="#F7F7FF" height="44">
    <tr>
      <td width="100%" bgcolor="#E1E2FF" height="23" colspan="6">
      <font color="#8402AE">&nbsp;</font><font color="#666666"><img border="0" src="../img/mini_post.gif"></font><font color="#8402AE"><span lang="zh-cn">&nbsp;企业新闻</span></font></td>
    </tr>
    <% do while not (rsw.eof or err) %>

    <tr>
      <td width="9%" height="20" align="center"> <img border="0" src="../img/forum_online.gif"> <%=rsw("ID")%></td>
      <td width="12%" height="20" align="center"><font color="#666666"><% if rsw("nid")=1 then
			   response.write "企业新闻"
			   else
			   response.write "行业新闻"
			   end if		
			%></font></td>
      <td width="38%" height="20" align="center"><a  target=_blank href="www_news_liulan.asp?id=<%=rsw("ID")%>"><%=rsw("title")%></a></td>
      <td width="20%" height="20" align="center"><%=rsw("times")%></td>
      <td width="10%" height="20" align="center"><a href="www_news.asp?id=<%=rsw("id")%>&xg=1">修改</a></td>
      <td width="11%" height="20" align="center"><a href="www_new.asp?sc=1&id=<%=rsw("id")%>">删除</a></td>
    </tr>
    <% rsw.moveNext
  loop
%>
  </table>
  </center>
</div>
<p><br>

<% end if %>  
      
      
      </td>
    </tr>
    </table>
  </center>
</div>


<br>

<CENTER>


<% call di %>
<p>
<% end if %>      
</body>
</html>