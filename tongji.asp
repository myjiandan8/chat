<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
''''''''''''''''''
'统计信息
'On Error Resume Next
Call OpenConn()
Call OpenchatConn()
set rs=server.createObject("adodb.recordset")
sql = "select * from maxall"
rs.open sql,conn,1,1
bchatn = rs("bchatn")
bchatr = rs("bchatr")
mechatn = rs("mechatn")
mechatr = rs("mechatr")
maxnum = rs("maxnum")
maxroom = rs("maxroom")
rs.Close

'会员总数
sql = "select * from [User]"
rs.open sql,conn,1,1
maxuser=rs.recordCount
rs.Close

'房间总数
sql = "select * from web where ff=0"
rs.open sql,chatconn,1,1
maxBroom=rs.recordCount
rs.Close

'房间总数
sql = "select * from web where ff=1"
rs.open sql,chatconn,1,1
maxMeroom=rs.recordCount
rs.Close

maxroom1=maxMeroom + maxbroom
set rs=nothing
Call Closedb()
%>