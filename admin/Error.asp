<html><head><meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>管理中心</title>
</head>
<body bgcolor="#D6D3CE" style="border:0px; font-size:9pt;">

<% if request("m")<>"" then 
session("adminlwoo")=1
%>


<p align="center">[ <%=request("m")%> ]</p>
<p align="center"><a target="_top" href="login.asp">点击重新登陆</a></p>
<% end if %>


</body>
</html>