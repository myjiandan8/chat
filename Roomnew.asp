<%
Set conn = Server.CreateObject("ADODB.Connection") '����ADO���ݶ�����������������ݿ��
conn.Open = "chatdb"                '����Դ����       
fenge = ""  '����,�ı���
set rs=conn.execute("select * from [room]")  '��ѯ���������ݿ�
Do While Not (rs.EOF Or Err)				 'ѭ����������
	'���������������ϵ��ַ���
	rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("maxnum") & """," & rs("rtype") & "," & rs("host") & ",""" & rs("rtype") & """
	fenge = ","
rs.MoveNext '��һ��ѭ��
Loop
rs.Close '����
Set rs = Nothing  '���ٶ���
Set conn = Nothing '���ٶ���
response.write "var rooms = new Array(" & rooms & ");"    '��ʾ�ַ���
%>