<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
''''''''''�滻ģ��START''''''''''''
Function ReplaceText(fString,patrn, replStr)
Set regEx = New RegExp  ' ����������ʽ��
regEx.Pattern = patrn   ' ����ģʽ��
regEx.IgnoreCase = True ' �����Ƿ����ִ�Сд��
regEx.Global = True     ' ����ȫ�ֿ����ԡ� 
ReplaceText = regEx.Replace(fString, replStr) ' ���滻��
End Function
''''''''''�滻ģ��END''''''''''''
'''SQL�ƻ�������'''''''''''''''
function ContentEncode(fString)
fString=replace(fString,vbCrlf, "")
fString=replace(fString,"\","&#92;")
fString=replace(fString,"'","&#39;")
fString=ReplaceText(fString,"<(.[^>]*)(&#|cookie|window.|Document.|javascript:|js:|vbs:|about:|file:|on(blur|click|change|Exit|error|focus|finish|key|load|mouse))", "&lt;$1$2$3")
fString=ReplaceText(fString,"<(\/|)(iframe|object|SCRIPT|form|style|meta|TEXTAREA)", "&lt;$1$2")
ContentEncode=fString
end function
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''


Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = chatweb
set rs=server.createObject("adodb.recordset")
                                                                              

dim rs,sql
dim page,maxPerPage

'ÿҳ��ʾ�ļ�¼��
maxPerPage=ContentEncode(Request("maxPerPage"))    'ÿҳ��ʾ�ļ�¼��
if (maxPerPage="" or isempty(maxPerPage)) then maxPerPage=100
'if (maxPerPage>100) then maxPerPage=100

'�ڼ�ҳ
page=Request("page")
if (page="" or isempty(page)) then page=1

'��������
myKeyword=ContentEncode(Request("myKeyword"))

'��ѯ�����ҷ���
RoomType=ContentEncode(Request("RoomType"))

'��ѯ�����ҷ���
id2=ContentEncode(Request("id2"))

'��ѯ������ ����
admin=ContentEncode(Request("admin"))

'��ʾ���ط���
liebiao=Request("liebiao")

if liebiao="" or liebiao=0 then
	liebiao=0
else
	liebiao=1
end if




'���з���
pailei=Request("pailei")

if pailie="" then pailei=1

if pailei=1 then 
pailies="id"
elseif pailie=2 then
pailies="num"
else
pailies="id"
end if

'˳��
shunxu =Request("shunxu")

if shunxu="" then shunxu=1


if shunxu=1 then 
shunxus="asc"
elseif shunxu=2 then
shunxus="desc"
else
shunxus="asc"
end if


'��ѯ������ �˿ں�Ψһ
ports=Request("port")


ports = replace(ports,"'","")		'���˹ؼ���
ports = replace(ports,"[","")
ports = trim(ports)

portslist = split(ports,",")		'���ո�ָ�ؼ���
portslistS=UBound(portslist)




'thisUrl="listchat.asp?myKeyword="& myKeyword & "&Qtime=" & Qtime & "&Roomid=" & Roomid
'session("adminOldUrl")=thisUrl&"&page="&page


set rs=server.createobject("adodb.recordset")
sql="select Roomname,num,admin,host,id,RoomType,rtype,max from web where 1=1"

if not (myKeyword="" or isempty(myKeyword) ) then
	sql=sql&" and (RoomName like '%"&myKeyword&"%' or admin like '%"&myKeyword&"%') "
end if

if not (RoomType="" or isempty(RoomType) )   then
	sql=sql&" and (RoomType like "& RoomType &")"
end if

if not (admin="" or isempty(admin) ) then
	sql=sql&" and (admin like '"& admin &"')"
end if


'����˿ں���

if not (ports="") then
	
sql = sql & " and ( "

	for i = 0 to portslists
	
		if i=0 then
	
		sqls =" (id like "& portslist(i) &") "
		
		else
		
		sqls = sqls&" or (id like "& portslist(i) &")"
		
		end if
	
	next

sql = sql & sqls &" ) "


'response.write sqls

end if


if not (id2="" or isempty(id2) ) then
	sql=sql&" and (id2 like "& id2 &")"
end if

sql=sql&" and liebiao="& liebiao &" order by " & pailies & " " & shunxus
rs.open sql,conn,1,1
rs.pagesize=MaxPerPage

		fenge = ""

		i=0
		if not (rs.eof or err) then rs.move (page-1)*maxPerPage
		
		do while not (rs.eof or err or i=int(maxPerPage)) 
		
			rooms = rooms & fenge & """" & rs("Roomname") & """" & "," & rs("num") & ",""" & rs("admin") & """," & rs("id") & "," & rs("RoomType") & ",""" & rs("rtype") & """," & rs("max")
			fenge = ","
			
		i=i+1
  		rs.moveNext
  		loop
		rs.close

response.write "var rooms = new Array(" & rooms & ");"

Set rs = Nothing
Set conn = Nothing

%>