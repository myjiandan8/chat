<%
'龙软乐天设计 人数调用 已过滤SQL注入
roomid=clng(Request("roomid"))
Set conn = Server.CreateObject("ADODB.Connection") '建立ADO数据对象就是用来访问数据库的
conn.Open = "chatdb"                '数据源名称     
'num = Conn.Execute("Select num From [room] where port="& roomid)(0)
response.write "document.writeln('("& Conn.Execute("Select num From [room] where port="& roomid)(0) &"人)');"    '显示字符串
%>