<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>管理中心</title>
<LINK href="../../ADMINLW/img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">


<br>  
　<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="281">
    <tr>
      <td width="100%" background="../../ADMINLW/img/bg.gif" height="22">&nbsp;&nbsp;<img border="0" src="../../ADMINLW/img/jt.gif"><b>新闻管理中心</b></td>
    </tr>
    <tr>
      <td width="100%" height="257" valign="top">
      　
      


<br>

      
      <div align="center">
        <center>
        <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="527" id="AutoNumber5" height="25">
<%
sql="select * from sys_news_fl order by nid asc"
set rsr=conn.execute (sql)
%>


<%
do while not (rsr.eof or err)
%> 
   
 <tr>
            <td width="67" height="25">　<%=rsr("Nid")%></td>
            <td width="160" height="25">　<%=rsr("NFL")%></td>
            <td width="82" height="25" align="center">　<a href="www_news.asp?nid=<%=rsr("Nid")%>&tj=1">添加新闻</a></td>
            <td width="76" height="25" align="center">
            <a href="www_news.asp?nzusf=1&nid=<%=rsr("Nid")%>">添加新闻组</a></td>
            <td width="69" height="25" align="center">　<a href="www_new.asp?nid=<%=rsr("Nid")%>">新闻维护</a></td>
          </tr>
          
  <% rsr.moveNext
  loop
  
  rsr.close
%>               
        </table>
        </center>
      </div>

      
      </td>
    </tr>
    </table>
  </center>
</div>

</body></html>