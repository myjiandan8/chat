<%
'����������� �������� �ѹ���SQLע��
roomid=clng(Request("roomid"))
Set conn = Server.CreateObject("ADODB.Connection") '����ADO���ݶ�����������������ݿ��
conn.Open = "chatdb"                '����Դ����     
'num = Conn.Execute("Select num From [room] where port="& roomid)(0)
response.write "document.writeln('("& Conn.Execute("Select num From [room] where port="& roomid)(0) &"��)');"    '��ʾ�ַ���
%>