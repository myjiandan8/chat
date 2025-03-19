<!-- #include file="setup.asp" -->
<title>公告栏 - Powered By BBSxp</title>
<body topmargin="5">

<table border="0" width="98%" cellspacing="1" cellpadding="0" height="64" class="a2">
	<tr>
		<td width="100%" height="20" class="a1">
		<p align="center"><%=affichetitle%></p>
		</td>
	</tr>
	<tr>
		<td width="100%" height="120" class="a3">
		<table border="0" width="90%" align="center">
			<tr>
				<td><%=affichecontent%></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td width="100%" class="a4" height="18">
		<p align="right">发布人 <%=afficheman%>　发布时间 
		<font style="family:arial; font-size: 7pt"><%=affichetime%></font> </p>
		</td>
	</tr>
</table>

</body>

</html>
<%
responseend
%>