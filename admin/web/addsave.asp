<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%Server.ScriptTimeOut=900%>
<meta http-equiv="Content-Language" content="en-us">
<%

Set UP = Server.CreateObject("lw.up")

DIM PicName,PicHeight,PicWidth,PicSize,userid

sub ddid(uname)
sql="select uid from [user] where name='"&uname&"'"
Set Rsr=Conn.Execute(SQL)
if rsr.eof then 
userid=uid
else
userid=0
end if
end sub



EER=0 '出错判定

zhiwu=HTMLEncode(Trim(UP.form("zhiwu")))
username=HTMLEncode(Trim(UP.form("username")))
jianjie=HTMLEncode(Trim(UP.form("jianjie")))
txt=HTMLEncode(Trim(UP.form("txt")))
color=HTMLEncode(Trim(UP.form("color")))
PicName=""

Call ddid(username)


if username="" or zhiwu="" or jianjie="" or txt="" then
Call errstr("请填写完整！！")
end if


if len(txt)>250 then
Call errstr("说明控制250字以内！！")
end if


if EER=0 then

	set pic = UP.file("pic")
	
	if pic.FileExt<>"" then
		
		EXT=LCase(pic.FileExt)
		
		if pic.FileSize>500000 then 
			EER=1
			errstr "图片大小必须在500K以内！"
		end if
		
		PicSize = int(pic.FileSize / 1024)
		
		if EXT="gif" or EXT="jpeg" or EXT="jpg" or EXT="png" or EXT="bmp" then
		
			'建立临时文件
			pic.SaveFile Server.mappath("./" & pic.FileName)
			'调用图象处理子程序
			call BSPIC(Server.mappath("./" & pic.FileName))
			'删除临时文件
			UP.delfile Server.mappath("./" & pic.FileName)	
			Set UP = Nothing	
		else
		
			EER=1
			errstr "图片文件格式不对！只能使用 gif,jpeg,jpg,png,bmp 格式的图片文件！"
				
		end if
			
	end if
	
end if


if EER=0 then

	sql="select * from xiangce" 
	rs.open sql,chatconn,1,3

	rs.addnew
	rs("roomid")=id
	rs("username")=username
	rs("zhiwu")=zhiwu
	rs("userid")=userid
	rs("jianjie")=jianjie
	rs("txt")=txt
	rs("picname")=picname
	rs("PicHeight")=PicHeight
	rs("PicWidth")=PicWidth
	rs("PicSize")=PicSize
	
	'日期信息
	rs("times")=date()
	rs.update
	rs.close
	

	response.write "添加成功！"
	

	
	response.write "<p><IMG src=/image/"& id &"/B"& PicName &" border=0></p>"
	response.write "<p><IMG src=/image/"& id &"/S"& PicName &" border=0></p>"
	response.write "<p><a href=add.asp>继续添加</a></p>"
	

end if


set UP = Nothing


'图片处理模块
Sub BSPIC(Path)

	Set fso = CreateObject(fs)
	If Not fso.FolderExists(Server.MapPath("/image/"& id &"/")) then
		fso.CreateFolder(Server.MapPath("/image/"& id &"/"))
	End If




			'输出大图

			PicName = Date &right("0" & hour(now),2)&right("0" & minute(now),2)&right("0" & Second(now),2) & ".jpg"
			'PicName = "newnew.jpg"
			'得到图片名称

			Set Bjpeg = Server.CreateObject("Persits.Jpeg")	
			Bjpeg.Open( Path )
			
			
			PicHeight = Bjpeg.OriginalHeight
			PicWidth  = Bjpeg.OriginalWidth
			
			BJpeg.Canvas.Font.Color = "&H" & color			
			'BJpeg.Canvas.Font.Bold = True 'True  'False  Rotation
			'BJpeg.Canvas.Font.Quality = 25 
			'BJpeg.Canvas.Font.Rotation = 20     '角度
			'BJpeg.Canvas.Font.BkMode = "Transparent" 	'to make antialiasing work 背景颜色 "Opaque"

		if picWidth<300 then
		
			BJpeg.Canvas.Font.Size = 12         '字体大小
			BJpeg.Canvas.Font.Family = "宋体"
			BJpeg.Canvas.Print 5, 5, username & "  " & roomname 
			BJpeg.Canvas.Print PicWidth - 92, PicHeight - 13, "(C) LiaoWan.Com" 
		
		else
		
			BJpeg.Canvas.Font.Size = 12         '字体大小
			BJpeg.Canvas.Font.Family = "宋体"
			BJpeg.Canvas.Print 5, 8, roomname & "-视频语音聊天室"
			BJpeg.Canvas.Font.Family = "Fixedsys"
			BJpeg.Canvas.Print 5, 24, id & ".LiaoWan.Com"
			BJpeg.Canvas.Font.Size = 16         '字体大小
			BJpeg.Canvas.Font.Family = "华文行楷"
			BJpeg.Canvas.Print 5, 44, zhiwu & "  " &username
			
			BJpeg.Canvas.Font.Size = 14         '字体大小
			BJpeg.Canvas.Font.Family = "System"
			BJpeg.Canvas.Font.Color = &H111111
			

			
			BJpeg.Canvas.Print  PicWidth - 182, PicHeight - 20, "Copyright (c) LiaoWan.Com"
		end if
			PicHeight = Bjpeg.OriginalHeight
			PicWidth  = Bjpeg.OriginalWidth
			
			SavePath = Server.MapPath("/image/"& id &"/B" & PicName)
			Bjpeg.Save SavePath

			Set Bjpeg = Nothing
			Set logo = Nothing
			
			
			
			'输出小图
			Set jpeg = Server.CreateObject("Persits.Jpeg")	
			jpeg.Open(Path)
				
			
			if (PicHeight * 122 / PicWidth)<106 then
			
			jpeg.Height = 106
			jpeg.Width = PicWidth * 106 / PicHeight

			if jpeg.Width>166 then x0 = jpeg.Width * 0.15
			
			y0=0
			x1=x0 + 122
			y1=106
			
			else
			
			jpeg.Height = PicHeight * 122 / PicWidth
			jpeg.Width = 122
			
			if jpeg.Height>130 then y0 = jpeg.Height * 0.05
			
			x0=0
			x1=122
			y1=y0+106
			
			end if

			jpeg.Crop x0, y0, x1, y1
			jpeg.Height = 106
			

			'边框
			Jpeg.Canvas.Pen.Color = &HB1C5BE' black
			Jpeg.Canvas.Pen.Width = 6
			Jpeg.Canvas.Brush.Solid = False ' or a solid bar would be drawn
			Jpeg.Canvas.Bar 1, 1, Jpeg.Width, Jpeg.Height

			Set Logo = Server.CreateObject("Persits.Jpeg")
			LogoPath = Server.MapPath("/image/s.gif") 
			Logo.Open LogoPath
			jpeg.DrawImage 0, 89, Logo
			
			SavePath =  Server.MapPath("/image/"& id &"/S" & PicName)
			jpeg.Save SavePath
			
			Set jpeg = Nothing
			Set logo = Nothing
			
end sub
%>