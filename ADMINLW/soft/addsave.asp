<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<meta http-equiv="Content-Language" content="en-us">
<%

Set UP = Server.CreateObject("lw.up")

DIM PicName

EER=0 '�����ж�

softname=Trim(UP.form("softname"))
filename=Trim(UP.form("filename"))
classid=CInt(UP.form("classid"))
Nclassid=CInt(UP.form("Nclassid"))
tj=CInt(UP.form("tj"))
lk1=Trim(UP.form("lk1"))
lk2=Trim(UP.form("lk2"))
lk3=Trim(UP.form("lk3"))
lk4=Trim(UP.form("lk4"))
size=Trim(UP.form("size"))
flash=Trim(UP.form("flash"))
fangshi=Trim(UP.form("fangshi"))
gb=Trim(UP.form("gb"))
web=Trim(UP.form("web"))
yanshi=Trim(UP.form("yanshi"))
system=Trim(UP.form("system"))
hot=CInt(UP.form("hot"))
gj=Trim(UP.form("gj"))
txt=Trim(UP.form("txt"))
PicName=""


sql="select * from soft where softname='"& softname &"'or filename='"& filename &"' "
rs.Open sql,Conn
if not rs.eof then
EER=1
wenti "���ݿ����Ѿ�����ͬ����������ļ�����"
end if
rs.close

if filename<>"" and lk1<>"" then
EER=1
wenti "�ļ����������ӵ�ַ ֻ�� ѡ����дһ�֣�"
end if

if EER=0 then

	set pic = UP.file("pic")
	
	if pic.FileExt<>"" then
		
		EXT=LCase(pic.FileExt)
		
		if EXT="gif" or EXT="jpeg" or EXT="jpg" or EXT="png" or EXT="bmp" then
		
			'������ʱ�ļ�
			pic.SaveFile Server.mappath("./" & pic.FileName)
			'����ͼ�����ӳ���
			call BSPIC(Server.mappath("./" & pic.FileName))
			'ɾ����ʱ�ļ�
			UP.delfile Server.mappath("./" & pic.FileName)		
		else
		
			EER=1
			wenti "ͼƬ�ļ���ʽ���ԣ�ֻ��ʹ�� gif,jpeg,jpg,png,bmp ��ʽ��ͼƬ�ļ���"
				
		end if
			
	end if
	
end if


if EER=0 then

	sql="select * from soft" 
	rs.open sql,conn,1,3

	rs.addnew
	rs("softname")=softname
	rs("filename")=filename
	rs("classid")=classid
	rs("Nclassid")=Nclassid
	rs("tj")=tj
	rs("lk1")=lk1
	rs("lk2")=lk2
	rs("lk3")=lk3
	rs("lk4")=lk4
	rs("size")=size
	rs("flash")=flash
	rs("fangshi")=fangshi
	rs("gb")=gb
	rs("web")=web
	rs("yanshi")=yanshi
	rs("system")=system
	rs("hot")=hot
	rs("gj")=gj
	rs("txt")=txt
	
	rs("pic")=PicName
	
	'����ԱID
	rs("addid")=session("UID")
	
	'������Ϣ
	rs("lasthits")=date()
	rs("dateandtime")=now()
	rs.update
	rs.close
	
	'wenti "��ӳɹ���"
	response.write "��ӳɹ���"
	
	if PicName<>"" then
	
	response.write "<p><IMG src=../../pic/b/"& PicName &" border=0></p>"
	response.write "<p><IMG src=../../pic/s/"& PicName &" border=0></p>"
	
	end if
	response.write "<p><a href=add.asp>�������</a></p>"
	

end if


set UP = Nothing


	
'ͼƬ����ģ��
Sub BSPIC(Path)

			'�����ͼ

			PicName = FileName & ".jpg"

			'�õ�ͼƬ����

			Set Bjpeg = Server.CreateObject("Persits.Jpeg")	
			Bjpeg.Open( Path )
			
			Set Logo = Server.CreateObject("Persits.Jpeg")
			LogoPath = Server.MapPath("../../pic/f.gif")
			Logo.Open LogoPath
			
			
			Bjpeg.DrawImage 5, 3, Logo,0.6
			
			SavePath = Server.MapPath("../../pic/b/" & PicName)
			Bjpeg.Save SavePath

			Set Bjpeg = Nothing
			Set logo = Nothing
			
			
			
			'���Сͼ
			Set jpeg = Server.CreateObject("Persits.Jpeg")	
			jpeg.Open(Path)
				
			jpeg.Width = 150
			jpeg.Height = jpeg.OriginalHeight * 150 / jpeg.OriginalWidth + 18
						
			Set Logo = Server.CreateObject("Persits.Jpeg")
			LogoPath = Server.MapPath("../../pic/d.gif") 
			Logo.Open LogoPath
			
			jpeg.DrawImage 0, jpeg.Height-18, Logo
			
			SavePath =  Server.MapPath("../../pic/s/" & PicName)
			jpeg.Save SavePath
			
			Set jpeg = Nothing
			Set logo = Nothing
			
end sub


%>