<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
''''''''''''''''''
'ͳ����Ϣ
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

'��Ա����
sql = "select * from [User]"
rs.open sql,conn,1,1
maxuser=rs.recordCount
rs.Close

'��������
sql = "select * from web where ff=0"
rs.open sql,chatconn,1,1
maxBroom=rs.recordCount
rs.Close

'��������
sql = "select * from web where ff=1"
rs.open sql,chatconn,1,1
maxMeroom=rs.recordCount
rs.Close

maxroom1=maxMeroom + maxbroom
set rs=nothing
Call Closedb()
%>