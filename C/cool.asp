<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<%
Set go = Server.CreateObject("lw.go")

dsnname=chatweb					
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open = dsnname
set rs=server.createObject("adodb.recordset")

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

'������Ϣ
sub errstr(message)
response.write "<script>alert('"& message &"');history.go(-1);</script>"
end sub

sub Dnew()

	On Error Resume Next
	GETH = Request.ServerVariables("HTTP_HOST")

'��ͷ ��β

	isd=InStr(GETH, ".") 
	com= mid(GETH, isd + 1)
    www = Left(GETH, isd -1)
    
'��Ϊ����

	id=Cint(www)
    if id>9999 and id<99999 then
	    response.redirect "/U"   'U Ϊ�û���Ŀ¼ 
    elseif id>999 and id<10000 then
		shime="ok"	    
	elseif id>800000 then
		response.redirect "/c/i.asp"   '�Խ�������
	elseif shime<>"ok" then
	    response.redirect "/Error.asp"
	end if 

end sub

Dim id
Call Dnew()

	'id = ContentEncode(id)

	sql="select webbg,roomname,renqi,admin,adminid,num,TOTAL,YESTERDAY,BMONTH,MONTH,TODAY,index_url,index_logo from web where id=" & id
	set rs=conn.execute (sql)

	if rs.eof and rs.bof then
		response.redirect "/Error.asp"
    	response.end  
	end if

    webbg=rs("webbg")

    TOTAL=rs("TOTAL")
    YESTERDAY=rs("YESTERDAY")
    BMONTH=rs("BMONTH")
    MONTHS=rs("MONTH")
    TODAY=rs("TODAY")
	admin=rs("admin")
	adminid=rs("adminid")
	renqi=rs("renqi")
	num=rs("num")
	roomname=rs("roomname")
	index_url=rs("index_url")
	index_logo=rs("index_logo")
	rs.close


	if index_logo="" then index_logo="http://muban.liaowan.com/c/images/logoo.gif"


''''''''''''''''''''''''''''''''
'<!--$roomname--> 	��������
'<!--$roomid-->		����ID
'<!--$num--> 		��վ��ǰ��������
'<!--$admin--> 		��������������
'<!--$adminid-->    ����������id
'<!--$index_logo--> �������վ��־ͼƬ
'<!--$index_css-->  ��ҳ�Զ���CSS�ű� 
'<!--$webbg-->  	��ҳ����ͼƬ��ַ
'����Ϊ������ͳ��������
'<!--$TODAY--> 		��������
'<!--$YESTERDAY--> 	��������
'<!--$MONTHS--> 	��������
'<!--$BMONTH--> 	��������
'<!--$TOTAL--> 		�����ܼ�
'<!--$renqi--> 		����ָ��
'��վ��Ŀ
'<!--$title--> 		��ҳ����
'<!--$youqing--> 	������������
'<!--$body--> 		��ҳ����������
'
''''''''''''''''''''''''''''''''





%>