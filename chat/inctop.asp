<%
sub top()
%>
<html>
<title>����-VCU��Ƶ����ͬ�� ��Ƶ����|��������|Զ�̽���|����绰|���罻��|������������ ����֮��������ҵ  LiaoWan.Com VCU.CN</title>
<head>
<META content="��Ƶ���� �������� ���� ������Ƶ������ Զ�̽��� ����绰 ���罻�� ������������" name=Keywords>
<META content="������Ƶ������" name=Description>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<SCRIPT language=javascript src="lib/nav.js" type=text/javascript></SCRIPT>
<link rel="stylesheet" href="Sams.css" type="text/css">
</head>
<body leftmargin="0" bgcolor="#808080" topmargin="0" bottommargin="0" rightmargin="0">


<div align="center">
  <center>

<TABLE cellSpacing=0 width="778" border=0 cellpadding="0">
  <TBODY>
  <TR>
    <TD width=380 background=pic/b2.gif height=40 align="left">
      <TABLE cellSpacing=0 width=80 border=0>
      <TABLE cellSpacing=0 width=80 border=0>
        <TBODY>
        <TR>
          <TD width=42 height=40><a title="������ҳ" href="http://liaowan.com"><IMG height=36 src="pic/d1.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a href="http://liaowan.com/vip/regadd.asp" target="_blank"><IMG height=36 src="pic/d2.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=38 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="���¹���" href="/news"><IMG height=36 src="pic/d3.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="���" href="xiangce.asp"><IMG height=36 src="pic/d4.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="��ַ֮��" href="http://w.liaowan.com" target="_blank">
			<IMG height=36 src="pic/d5.gif" width=40 border=0></a></TD>
          <TD vAlign=top><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a title="������Ƶ����" target="_blank" href="http://liaowan.com/bbs">
			<IMG height=36 src="pic/d6.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><a target="_blank" href="http://bbs.liaowan.com">
			<IMG height=36 src="pic/d8.gif" width=40 border=0></a></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          
          <TD><IMG height=36 src="pic/d7.gif" width=40 border=0></TD>
          <TD vAlign=top width=2><IMG height=36 src="pic/b6.gif" width=2></TD>
          </TR></TBODY></TABLE>
    </TD>
    <TD width=102 background=pic/b2.gif height=40>
    <% if maxroom>0 then %>
	<table border="0" width="100%" id="table2" cellspacing="1">
		<tr>
			<td>������<b><font color="#FF0000"><%=maxnum%></font></b>��</td>
		</tr>
		<tr>
			<td>����<b><font color="#008000"><%=maxroom%></font></b>������</td>
		</tr>
	</table>
	<% end if %>
	</TD>
    <TD width=286 background=pic/b2.gif height="40" align="right">

     <table border="0" width="100%" cellspacing="0" cellpadding="0" height="24">
		<tr>
			<td height="24" valign="top" align="right">
			<a title="��������ӵ��ղؼ�" href="javascript:window.external.addFavorite('http://liaowan.com','����-VCU��Ƶ����ͬ��')">
			<img border="0" src="pic/top.gif"></a></td>
		</tr>
	</table>

      </TD>
    <TD width=10 background=pic/b2.gif height="40" align="right">

     ��</TD>
   </TR></TBODY></TABLE>


  
<table width="778" border="0" cellspacing="0" cellpadding="0" height="100" bgcolor="#FFFFFF" style="border-collapse: collapse" bordercolor="#111111">
    <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
  <tr>
    <td width="778" height="120" valign="top" align="center"><% 
	if index_top_pic="" then index_top_pic="../ad/show/top-mics.jpg"
	if index_url<>"" then 
   %><a href="<%=index_url%>">
   <%
   	    aaa="</a>"
     end if
   %>
	<img border="0" src="<%=index_top_pic%>" width="778" height="120"><%=aaa%></td>
  </tr>
</table>
  </center>
</div>
<link rel="stylesheet" href="Sams.css" type="text/css">

<div align="center">
<table width="778" border="0" cellpadding="0" cellspacing="0" height="36" background="pic/B1.gif">
  <tr> 
    <td height="1" bgcolor="#eeeeee"></td>
  </tr>
  <tr> 
    <td height="35">
	<table border="0" width="100%" id="table1" cellspacing="0" cellpadding="0" height="16">
		<tr>
			<td width="114">��</td>
			<td valign="bottom"> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="/">��������</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="news.asp">���¶�̬</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="xiangce.asp">�������</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="article.asp">���ý̳�</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="download.asp">��Դ����</a>&nbsp; <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="peizhi.asp">���ýű�</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="z_pic.asp">��Ʒͼ��</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a target="_blank" href="http://bbs.liaowan.com">��������</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a target="_blank" href="../info/shop.asp">���򷿼�</a> <img src="images/square_topmenu.gif" width="5" height="6" > 
      		<a href="../info/aboutus.asp">������</a></td>
			<td width="4">��</td>
		</tr>
	</table>
	</td>
  </tr>

</table>
</div>

<%
end sub
%>


<%sub index_nav()%>




<% Call caidan() %>
<%end sub%>

<%sub news_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub article_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub download_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub service_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub coolsites_nav()%>
<% Call caidan() %>
<%end sub%>

<%sub admin_nav()
%>
<body background="images/bg1.gif" topmargin="0">
<SCRIPT language=javascript src="lib/nav.js" type=text/javascript></SCRIPT>
<% Call caidan() %>

<%end sub%>

<% sub caidan %>

<%end sub%>