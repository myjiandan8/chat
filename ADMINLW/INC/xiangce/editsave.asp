<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<%
Set UP = Nothing
Set UP = Server.CreateObject("lw.up")

DIM PicName,PicHeight,PicWidth,PicSize


EER=0 '�����ж�
eid=HTMLEncode(Trim(UP.form("id")))
zhiwu=HTMLEncode(Trim(UP.form("zhiwu")))
username=HTMLEncode(Trim(UP.form("username")))
userid=Clng(HTMLEncode(UP.form("userid")))
jianjie=HTMLEncode(Trim(UP.form("jianjie")))
txt=HTMLEncode(Trim(UP.form("txt")))
PicName=""

if userid<10000 or userid>1000000 then
Call errstr("����ID��д���� Ӧ����10000-1000000����")
end if

sql = "Select * from xiangce where roomid="& id &" and id="&eid
rs.open sql,chatconn,1,3
if rs.eof then
Call errstr("��ͼƬ�����ڣ���")
end if

if username="" or zhiwu="" or jianjie="" or txt="" then
Call errstr("����д��������")
end if

if len(txt)>250 then
Call errstr("˵������250�����ڣ���")
end if



if EER=0 then

	'rs.addnew
	rs("roomid")=id
	rs("username")=username
	rs("zhiwu")=zhiwu
	rs("userid")=userid
	rs("jianjie")=jianjie
	rs("txt")=txt
	
	'������Ϣ
	'rs("times")=date()
	rs.update
	rs.close
	

	response.write "�༭�ɹ���"
	response.write "<p><a href=edit.asp>�������</a></p>"
	

end if


set UP = Nothing


%>