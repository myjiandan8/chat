<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>��������</title>
<LINK href="../../ADMINLW/img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">
<CENTER>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="281">
    <tr>
      <td width="100%" background="../../ADMINLW/img/bg.gif" height="22">&nbsp;&nbsp;<img border="0" src="../../ADMINLW/img/jt.gif"><b><span lang="zh-cn"> �������</span></b></td>
    </tr>
    <tr>
      <td width="100%" height="257" valign="top">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber5" height="139">
          <tr>
            <td width="100%" height="24"></td>
          </tr>
          <tr>
            <td width="100%" height="20" valign="top" align="center">
<%  if Request("id")<>"" then 

    set rsc=server.CreateObject ("adodb.recordset")
	sql="select * from sys_news where id="&Request("id")&""
	rsc.Open sql,conn,1,3

	if rsc.EOF then 
	response.write"��鿴�����Ų����ڻ��Ѿ���ɾ����"
	else
	nz=rsc("nzusf")
%>
            <b>
<font size="4"><%=rsc("title")%></font>

<%
 if nz=1 then
 response.write"(����ר�ⱨ��)"
 titles=rsc("title")
 ids=rsc("id")
 elseif nz=2 then
 
sql="select * from sys_news where id="&rsc("nzu")&" order by nid asc"
set rsv=conn.execute (sql)
titles=rsv("title")
response.write"(����ר��:<a href=www_news_liulan.asp?id="& rsv("id") &">"& titles &"</a>)"
ids=rsv("id")
end if 
%>
</b><br><br>
&nbsp;<img border="0" src="../../ADMINLW/img/pagelist.gif"> ��������: <a href="<%=rsc("nccurl")%>"><%=rsc("ncc")%></a> ����ʱ��: <%=rsc("times")%>          ��������:
<%
sql="select * from sys_news_fl where Nid="&rsc("nid")&" order by nid asc"
set rsr=conn.execute (sql)
response.write rsr("nfl")
%>    


</td>
          </tr>
          <tr>
            <td width="100%" height="26" valign="top">
<br><br>
			<%=Ubb_code(rsc("neirong"))%>
      ��</td>
          </tr>
          <tr>
            <td width="100%" height="12"> </td>
          </tr>
<% if nz=1 or nz=2 then %>
          <tr>
            <td width="100%" height="18" bgcolor="#EEF2FF">
 <img border="0" src="../../ADMINLW/img/msg_no_new_bar.gif"> <b><a href=www_news_liulan.asp?id=<%=ids%>><%=titles%></a></b>( ϵ�б��� )           
</td>
          </tr>
<%
sql="select * from sys_news where nzu="& ids &" order by nid asc"
set rss=conn.execute (sql)
	if rss.EOF then 
	response.write"�������黹û�з������!"
	else
do while not (rss.eof or err) %>
          <tr>
            <td width="100%" height="10" bgcolor="#F4F7FF">
            <br>
&nbsp;&nbsp;<img border="0" src="../../ADMINLW/img/forum_online.gif"> <a href=www_news_liulan.asp?id=<%=rss("id")%>><%=rss("title")%></a> <%=rss("times")%> </td>
          
          </tr>

<%
 rss.moveNext
 loop
 end if
 end if
%>
<% end if
end if
%>
          <tr>
            <td width="100%" height="10"> &nbsp;</td>
          </tr>
          <tr>
            <td width="100%" height="18" bgcolor="#EEF2FF"> <img border="0" src="../../ADMINLW/img/mini_query.gif"> <a href="<%=rsc("nccurl")%>"><%=rsc("ncc")%></a> 
            ( ����������ź���Ϣ )   </td>
          </tr>
          <tr>
            <td width="100%" height="40" align="right"> &nbsp;������ҵ������Ϣ���� ( lwoo.com )&nbsp;  <%=rsc("times")%> &nbsp; </td>
          </tr>
           <tr>
            <td width="100%" height="20"> </td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<% call di %>
</body>
</html>