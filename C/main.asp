<!--���ݿ������ļ�#include file="cool.asp" -->
<html>
<head>
<LINK href="../../images/Style.css" rel=stylesheet>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>������ ����</title>
</head>
<body background="<%=webbg%>" style="background-attachment: fixed">

<%	sql="select chatxy from web where id=" & id
	rs.open sql,conn,1,3
    chatxy = rs("chatxy")
    rs.close
       
       %>


<div align="center">

			<%=chatxy%>			

</div>




</body>
</html>