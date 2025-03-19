<%
Set conn = Server.CreateObject("ADODB.Connection") '建立ADO数据对象就是用来访问数据库的
conn.Open = "chatdb"                '数据源名称       
fenge = ""  '保存,的变量
set rs=conn.execute("select * from [room]")  '查询聊天室数据库
Do While Not (rs.EOF Or Err)				 '循环读出数据
	'读出房间明等资料的字符串
	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("maxnum") & """," & rs("rtype") & "," & rs("host") & ",""" & rs("rtype") & """
	fenge = ","
rs.MoveNext '下一个循环
Loop
rs.Close '结束
Set rs = Nothing  '销毁对象
Set conn = Nothing '销毁对象
response.write "var rooms = new Array(" & rooms & ");"    '显示字符串
%>