<%@ LANGUAGE=VBScript CodePage=936%>
<%Response.Buffer=True%>
<%
IsSqlDataBase=0      '�������ݿ����0ΪAccess���ݿ⣬1ΪSQL���ݿ�
'If IsSqlDataBase=0 Then
'''''''''''''''''''''''''''''' Access���ݿ� '''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Connstr="Provider=Sqloledb; User ID=sa; Password=letiandaye; Initial Catalog = bbs; Data Source=211.167.74.61;"
Connstr="Provider=Sqloledb; User ID=sa; Password=letiandaye; Initial Catalog = bbs; Data Source=liaowan.com;"
'SqlNowString="Now()"
'SqlChar="'"
'ver="5.00.SP2"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Else
'''''''''''''''''''''''''''''' SQL���ݿ� ''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
SqlNowString="GetDate()"
'ver="5.00.SP2 SQL"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'End If
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'dsnname="DSN=chatweb; UID=sa; PWD=letiandaye;"		
dsnname="Provider=Sqloledb; User ID=sa; Password=letiandaye; Initial Catalog = liaowan; Data Source=liaowan.com;"
dsnname1="Provider=Sqloledb; User ID=sa; Password=letiandaye; Initial Catalog = liaowandb; Data Source=liaowan.com;"			
Set chatconn = Server.CreateObject("ADODB.Connection")
chatconn.Open = dsnname
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Set conn=Server.CreateObject("ADODB.Connection")
conn.open ConnStr
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

sub Dnew()

	On Error Resume Next
	GETH = Request.ServerVariables("HTTP_HOST")

'��ͷ ��β
	isd=InStr(GETH, ".") 
	com= mid(GETH, isd + 1)
    www = Left(GETH, isd -1)
'��Ϊ����
	roomid=Clng(www)
	if roomid=0 or (roomid<2000 and roomid>9999) or (com<>"liaowan.com") then roomid=0
end sub
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Dim roomid
'roomid=2000

Call Dnew()

if roomid>0 then
  
	sql="select roomname,admin from web where id=" & roomid
	set rs=chatconn.execute (sql)
	if rs.eof and rs.bof then
		response.redirect "/Error.asp"
    	response.end  
	end if
	admin=rs("admin")
	roomname=rs("roomname")
	rs.close

''''''''''''''''''''''''''BBS����'''''''''''''''''''''''''''''''''''

	set rs=conn.execute ("select id,bbsname,index_logo,muban,gonggao,ggtitle,ggtimes from bbsconfig where roomid="& roomid &" and nice=1")
	if rs.eof and rs.bof then
		response.redirect "http://liaowan.com/bbs/Error.asp?message=�������һ�û�г�ʼ����̳���ܣ�<br>����ϵ������������������̳���ܣ�<br>�������Һ�̨��������->��̳����->�������� �Ϳɳ�ʼ����̳��"
		response.end 
	else
	bbsnames=rs("bbsname")
	index_logo=rs("index_logo")
	vid=rs("id")
	muban=rs("muban")
	gonggao=rs("gonggao")
	ggtimes=rs("ggtimes")
	ggtitle=rs("ggtitle")
 	rs.close
	end if
	
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

end if
%>