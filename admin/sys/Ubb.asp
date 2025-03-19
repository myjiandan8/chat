<%

Const DEF_EnableFlashUBB = 1
Const DEF_EnableImagesUBB = 1
const DEF_EnableHTML = 1
const DEF_MaxUBBNumber = 10
const CheckSupervisorname = 1

Function htmlEncode(str)

	If len(str)>0 Then
		'htmlEncode=Replace(Replace(Replace(Replace(str,"&","&amp;"),">","&gt;"),"<","&lt;"),"""","&quot;")
		htmlEncode=Replace(Replace(Replace(str,">","&gt;"),"<","&lt;"),"""","&quot;")
	Else
		htmlEncode=str
	End If

End Function


Function PrintTrueText(tempString)

	If tempString<>"" Then
		'PrintTrueText=Replace(Replace(htmlEncode(tempString),chr(13),"<br>" & VbCrLf),"  "," &nbsp;")
		PrintTrueText=Replace(Replace(Replace(Replace(Replace(htmlEncode(tempString),VbCrLf & " ","<br>" & "&nbsp;"),VbCrLf,"<br>" & VbCrLf),"   "," &nbsp; "),"  "," &nbsp;"),chr(9)," &nbsp; &nbsp; &nbsp;")

		If Left(PrintTrueText,1) = chr(32) Then
			PrintTrueText = "&nbsp;" & Mid(PrintTrueText,2)
		End If
	Else
		PrintTrueText=""
	End If

End Function



Function OneLevelCode(fString, Str1, Str2, ReStr1, ReStr2)

	If Lcase(Str1) = Ucase(Str1) and Lcase(Str2) = Ucase(Str2) Then
		OneLevelCode = OneLevelCode2(fString, Str1, Str2, ReStr1, ReStr2)
	Else
		OneLevelCode = OneLevelCode2(fString, Lcase(Str1), Lcase(Str2), ReStr1, ReStr2)
		OneLevelCode = OneLevelCode2(fString, Ucase(Str1), Ucase(Str2), ReStr1, ReStr2)
	End If

End Function

function OneLevelCode2(fString, Str1, Str2, ReStr1, ReStr2)

    Dim Str1Pos,Str2Pos
    Str1Pos = Instr(1, fString, Str1, 0)
    Str2Pos = Instr(Str1Pos + 1, fString, Str2, 0)

    Dim LenY,LenX
    LenY = Len(ReStr2) - len(Str2)
    LenX = Len(ReStr1) - len(Str1)

	Dim Flag,Tmp
	Flag = 0
    while (Str2Pos > 0 and Str1Pos > 0)
    	If (Ucase(Str1) = "[IMG]" or Ucase(Str1) = "[IMGA]") Then
    		Tmp = Trim(Lcase(Mid(fString,Str1Pos+Len(str1),15)))
    		'If Left(Tmp,2) = "&#" or Left(Tmp,14) = "&#106avascript" or Left(Tmp,10) = "javascript" or Left(Tmp,12)="&#106script:" or Left(Tmp,8)="jscript:" or Left(Tmp,7)="&#106s:" or Left(Tmp,3)="js:" or Left(Tmp,9)="about&#58" or Left(Tmp,6)="about:" or Left(Tmp,8)="file&#58" or Left(Tmp,5)="file:" or Left(Tmp,13)="&#118bscript:" or Left(Tmp,9)="vbscript:" or Left(Tmp,8)="&#118bs:" or Left(Tmp,4)="vbs:" Then Flag = 1
    		If Left(Tmp,1) <> "/" and Left(Tmp,3) <> "../" and Left(Tmp,7) <> "http://" and Left(Tmp,8) <> "https://" and Left(Tmp,6) <> "ftp://" Then Flag = 1
    	End If
    	If Flag = 1 Then
    		Flag = 0
    	Else
			fString = Left(fString,Str1Pos-1) & replace(fString, Str1, ReStr1, Str1Pos, 1, 0)
			'fString = Left(fString,Str2Pos-1) & replace(fString, Str2, ReStr2, Str2Pos, 1, 0)
			Str2Pos = Str2Pos + LenX
			fString = Left(fString,Str2Pos-1) & replace(fString, Str2, ReStr2, Str2Pos, 1, 0)
			Str2Pos = Str2Pos + LenY
		End If
		Str1Pos = Instr(Str2Pos + 1, fString, Str1, 0)
		Str2Pos = Instr(Str1Pos + 1, fString, Str2, 0)
    wend
    OneLevelCode2 = fString

end function

function UBB_HTMLEncode(fString, fOTag, fCTag, fROTag, fRCTag)
    
    Dim fOTagPos,fCTagPos
    fOTagPos = Instr(1, fString, fOTag, 0)
    fCTagPos = Instr(fOTagPos + 1, fString, fCTag, 0)
    
    If fOTagPos < 1 or fCTagPos <1 Then
    	UBB_HTMLEncode = PrintTrueText(fString)
    	Exit Function
    End If
    
    Dim LenX,LenY,LengthY
    LenX = Len(fROTag) - len(fOTag)
    LenY = Len(fRCTag) - len(fCTag)
    
    LengthY = Len(fCTag)
    
    Dim Str1,Str2,Str3,DoneString
    
    Str1 = Left(fString,fOTagPos - 1)
    Str2 = Mid(fString,fOTagPos,fCTagPos - fOTagPos + LengthY)
    Str3 = Mid(fString,fCTagPos+LengthY)
    DoneString = PrintTrueText(Str1)

    Dim n
    n = 1

	while (fCTagPos > 0 and fOTagPos > 0)
		If n>5 then
			exit function
		Else
			n = n+1
		end If
		Str2 = replace(Str2, fOTag, fROTag, 1, 1, 0)
		Str2 = replace(Str2, fCTag, fRCTag, 1, 1, 0)
		DoneString = DoneString & Str2
		
		fOTagPos = Instr(1, Str3, fOTag, 0)
		fCTagPos = Instr(fOTagPos + 1, Str3, fCTag, 0)

		If fCTagPos > 0 and fOTagPos > 0 Then
			Str1 = Left(Str3,fOTagPos - 1)
			Str2 = Mid(Str3,fOTagPos,fCTagPos - fOTagPos + LengthY)
			Str3 = Mid(Str3,fCTagPos+LengthY)
			DoneString = DoneString & PrintTrueText(Str1)
		End If
	wend

	DoneString = DoneString & PrintTrueText(Str3)
	UBB_HTMLEncode = DoneString

end function

function UBB_Code(str)

	Dim UBBStrCnt,LoopN
	UBBStrCnt = str
	If DEF_EnableHTML = 1 and CheckSupervisorname = 1 Then
		UBBStrCnt = UBB_HTMLEncode(UBBStrCnt, "[html]", "[/html]", "", "")
	Else
		UBBStrCnt = PrintTrueText(UBBStrCnt)
	End If
	dim re
	set re = New RegExp
	re.Global = True
	re.IgnoreCase = True

	re.Pattern="(javascript)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#106avascript")
	re.Pattern="(jscript:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#106script:")
	re.Pattern="(js:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#106s:")
	re.Pattern="(value)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#118alue")
	re.Pattern="(about:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"about&#58")
	re.Pattern="(file:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"file&#58")
	re.Pattern="(document.cookie)"
	UBBStrCnt=re.Replace(UBBStrCnt,"documents&#46cookie")
	re.Pattern="(vbscript:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#118bscript:")
	re.Pattern="(vbs:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#118bs:")
	re.Pattern="(on(mouse|exit|error|click|key))"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#111n$2")
	
    If DEF_EnableImagesUBB = 1 then
    	UBBStrCnt = OneLevelCode(UBBStrCnt, "[IMG]", "[/IMG]", "<IMG SRC="," border=0 onLoad=""javascript:if(this.width>570)this.width=570;"" onMouseover=""javascript:if(this.width>570)this.width=570;"" align=absmiddle>")
    	UBBStrCnt = OneLevelCode(UBBStrCnt, "[IMGA]", "[/IMGA]", "<IMG SRC="," border=0 alt=按此在新窗口浏览图片 onclick=""javascript:window.open(this.src);"" onLoad=""javascript:if(this.width>570)this.width=570;"" onMouseover=""javascript:if(this.width>570)this.width=570;"" style=""cursor:hand"" align=absmiddle>")
    End If
   
	re.Pattern="(\[URL\])(.[^\[]*)(\[\/URL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""$2"" TARGET=_blank>$2</A>")

   	re.Pattern="\[color=(.[^\[]*)\](.[^\[]*)\[\/color\]"
   	UBBStrCnt=re.Replace(UBBStrCnt,"<font color=""$1"">$2</font>")
	
	re.Pattern="(\[EMAIL\])(\S+\@.[^\[]*)(\[\/EMAIL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""mailto:$2"">$2</A>")
	re.Pattern="(\[EMAIL=(\S+\@.[^\[]*)\])(.[^\[]*)(\[\/EMAIL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""mailto:$2"" TARGET=_blank>$3</A>")

    If DEF_EnableFlashUBB = 1 then
    	re.Pattern="\[DIR=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/DIR]"
		UBBStrCnt=re.Replace(UBBStrCnt,"<object classid=clsid:166B1BCA-3F9C-11CF-8075-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=7,0,2,0 width=$1 height=$2><param name=src value=$3><embed src=$3 pluginspage=http://www.macromedia.com/shockwave/download/ width=$1 height=$2></embed></object>")
		re.Pattern="\[QT=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/QT]"
		UBBStrCnt=re.Replace(UBBStrCnt,"<embed src=$3 width=$1 height=$2 autoplay=true loop=false controller=true playeveryframe=false cache=false scale=TOFIT bgcolor=#000000 kioskmode=false targetcache=false pluginspage=http://www.apple.com/quicktime/>")
		re.Pattern="\[MP=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/MP]"
		UBBStrCnt=re.Replace(UBBStrCnt,"<object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=$1 height=$2 ><param name=ShowStatusBar value=-1><param name=Filename value=$3><embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=$3 width=$1 height=$2></embed><PARAM NAME=AUTOSTART VALUE=0></object>")
		re.Pattern="\[RM=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/RM]"
		UBBStrCnt=re.Replace(UBBStrCnt,"<OBJECT classid=clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA class=OBJECT id=RAOCX width=$1 height=$2><PARAM NAME=SRC VALUE=$3><PARAM NAME=CONSOLE VALUE=Clip1><PARAM NAME=CONTROLS VALUE=imagewindow><PARAM NAME=AUTOSTART VALUE=0></OBJECT><br><OBJECT classid=CLSID:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA height=32 id=video2 width=$1><PARAM NAME=SRC VALUE=$3><PARAM NAME=AUTOSTART VALUE=0><PARAM NAME=CONTROLS VALUE=controlpanel><PARAM NAME=CONSOLE VALUE=Clip1></OBJECT>")
		
		re.Pattern="(\[FLASH\])(http://|ftp://|../)(.[^\[]*)(.swf)(\[\/FLASH\])"
		'UBBStrCnt= re.Replace(UBBStrCnt,"<a href=""$2$3$4"" TARGET=_blank><IMG SRC=imgico/swf.gif border=0 align=absmiddle height=16 width=16>[全屏欣赏]</a><br><OBJECT codeBase=""http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0"" classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 width=500 height=400><PARAM NAME=movie VALUE=""$2$3$4""><PARAM NAME=quality VALUE=high><embed src=""http://$3$4"" quality=high pluginspage=""http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash"" type='application/x-shockwave-flash' width=500 height=400>$2$3$4</embed></OBJECT>")
		UBBStrCnt= re.Replace(UBBStrCnt,"<a href=""$2$3$4"" TARGET=_blank><IMG SRC=imgico/swf.gif border=0 align=absmiddle height=16 width=16>[全屏欣赏,注意Flash可能含有不安全内容]</a>")
	
		re.Pattern="(\[FLASH=*([0-9]*),*([0-9]*)\])(http://|ftp://|../)(.[^\[]*)(.swf)(\[\/FLASH\])"
		'UBBStrCnt= re.Replace(UBBStrCnt,"<a href=""$4$5$6"" TARGET=_blank><IMG SRC=imgico/swf.gif border=0 alt=点击开新窗口欣赏该FLASH动画! height=16 width=16>[全屏欣赏]</a><br><OBJECT codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 width=$2 height=$3><PARAM NAME=movie VALUE=""$4$5$6""><PARAM NAME=quality VALUE=high><embed src=""$4$5$6"" quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width=$2 height=$3>$4$5$6</embed></OBJECT>")
		UBBStrCnt= re.Replace(UBBStrCnt,"<a href=""$4$5$6"" TARGET=_blank><IMG SRC=imgico/swf.gif border=0 align=absmiddle height=16 width=16>[全屏欣赏,注意Flash可能含有不安全内容]</a>")
		
		re.Pattern="(\[sound\])(.[^\[]*)(\[\/sound\])" 
		UBBStrCnt=re.Replace(UBBStrCnt,"<a href=""$2"" target=_blank><IMG SRC=../imgico/mid.gif border=0 alt='背景音乐' height=16 width=16></a><bgsound src=""$2"" loop=""-1"">")
   	End If
   	If DEF_UBBiconNumber > 0 then
		For LoopN = 1 to DEF_UBBiconNumber
   			UBBStrCnt=replace(UBBStrCnt,"[EM" & Right(("0" & LoopN),2) & "]","<img src=""../images/UBBicon/em" & Right("0" & LoopN,Len(DEF_UBBiconNumber)) & ".GIF"" width=20 height=20 align=absmiddle border=0>",1,DEF_MaxUBBNumber,0)
   			UBBStrCnt=replace(UBBStrCnt,"[em" & Right(("0" & LoopN),2) & "]","<img src=""../images/UBBicon/em" & Right("0" & LoopN,Len(DEF_UBBiconNumber)) & ".GIF"" width=20 height=20 align=absmiddle border=0>",1,DEF_MaxUBBNumber,0)
   		Next
   	End If

   	re.Pattern="\[face=(.[^\[]*)\](.[^\[]*)\[\/face\]"
   	UBBStrCnt=re.Replace(UBBStrCnt,"<font face=""$1"">$2</font>")
	're.Pattern="\[align=(center|left|right)\](.*)\[\/align\]"
	'UBBStrCnt=re.Replace(UBBStrCnt,"<div align=$1>$2</div>")
	re.Pattern="\[GLOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\[]*)\[\/GLOW]"
	UBBStrCnt=re.Replace(UBBStrCnt,"<table width=$1 ><tr><td style=""filter:glow(color=$2, strength=$3)"">$4</td></tr></table>")

    re.Pattern="\[SHADOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\[]*)\[\/SHADOW]"
    UBBStrCnt=re.Replace(UBBStrCnt,"<table width=$1 ><tr><td style=""filter:shadow(color=$2, strength=$3)"">$4</td></tr></table>")
	
	'自动识别www等开头的网址,开启,可能会导致某些http://dkwww.com之类的网站链接错误
	're.Pattern = "([^(http://|http:\\)])((www|cn)[.](\w)+[.]{1,}(net|com|cn|org|cc)(((\/[\~]*|\\[\~]*)(\w)+)|[.](\w)+)*(((([?](\w)+){1}[=]*))*((\w)+){1}([\&](\w)+[\=](\w)+)*)*)"
	'UBBStrCnt = re.Replace(UBBStrCnt,"<a target=_blank href=http://$2>$2</a>")
	
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[FLY]", "[/FLY]", "<marquee width=90% behavior=alternate scrollamount=3>", "</marquee>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[MOVE]", "[/MOVE]", "<MARQUEE scrollamount=3>", "</MARQUEE>")
	    	
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[b]", "[/b]", "<b>", "</b>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[u]", "[/u]", "<u>", "</u>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[i]", "[/i]", "<i>", "</i>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[align=center]", "[/align]", "<center>", "</center>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[align=left]", "[/align]", "<P align=left>", "</p>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[align=right]", "[/align]", "<p align=right>", "</p>")

	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=1]", "[/size]", "<font size=1>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=2]", "[/size]", "<font size=2>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=3]", "[/size]", "<font size=3>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=4]", "[/size]", "<font size=4>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=5]", "[/size]", "<font size=5>", "</font>")
	
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[sup]", "[/sup]", "<sup>", "</sup>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[sub]", "[/sub]", "<sub>", "</sub>")

	UBBStrCnt = OneLevelCode(UBBStrCnt, "[list]", "[/list]", "<ul>", "</ul>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[list=1]", "[/list]", "<ol type=1>", "</ol id=1>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[list=a]", "[/list]", "<ol type=a>", "</ol id=a>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[*]", "[/*]", "<li>", "</li>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[code]", "[/code]", "<table width=100% bgcolor=" & DEF_BBS_LightestColor & " cellpadding=5 cellspacing=2 class=TBBG9><tr><td bgcolor=" & DEF_BBS_LightColor & " class=TBBG1>", "</td></tr></table>")
	
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[QUOTE]", "[/QUOTE]", "<table width=100% bgcolor=" & DEF_BBS_DarkColor & " cellpadding=5 cellspacing=1 class=TBone><tr><td bgcolor=" & DEF_BBS_LightestColor & " class=TBBG9>", "</td></tr></table>")

	re.Pattern="(\[URL=(.[^\[]*)\])(.[^\[]*)(\[\/URL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""$2"" TARGET=_blank>$3</A>")
	
	'自动识别网址
	re.Pattern = "^((http|https|ftp|rtsp|mms):(\/\/|\\\\)[A-Za-z0-9\./=\?%\-&_~`@[\]\':+!#]+)"
	UBBStrCnt = re.Replace(UBBStrCnt,"<a target=_blank href=$1>$1</a>")
	re.Pattern = "((http|https|ftp|rtsp|mms):(\/\/|\\\\)[A-Za-z0-9\./=\?%\-&_~`@[\]\':+!]+)$"
	UBBStrCnt = re.Replace(UBBStrCnt,"<a target=_blank href=$1>$1</a>")
	re.Pattern = "([^>=""])((http|https|ftp|rtsp|mms):(\/\/|\\\\)[A-Za-z0-9\./=\?%\-&_~`@[\]\':+!]+)"
	UBBStrCnt = re.Replace(UBBStrCnt,"$1<a target=_blank href=$2>$2</a>")

	'If CheckSupervisorname = 0 Then
		UBB_Code = UBB_FiltrateBadWords(UBBStrCnt)
	'Else
	'	UBB_Code = UBBStrCnt
	'End If
	Set Re = Nothing

end function

function UBB_Code_UnderWrite(str)


	Dim UBBStrCnt,LoopN
	UBBStrCnt = str
	UBBStrCnt = PrintTrueText(UBBStrCnt)
	dim re
	set re = New RegExp
	re.Global = True
	re.IgnoreCase = True

	re.Pattern="(javascript)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#106avascript")
	re.Pattern="(jscript:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#106script:")
	re.Pattern="(js:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#106s:")
	re.Pattern="(value)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#118alue")
	re.Pattern="(about:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"about&#58")
	re.Pattern="(file:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"file&#58")
	re.Pattern="(document.cookie)"
	UBBStrCnt=re.Replace(UBBStrCnt,"documents&#46cookie")
	re.Pattern="(vbscript:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#118bscript:")
	re.Pattern="(vbs:)"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#118bs:")
	re.Pattern="(on(mouse|exit|error|click|key))"
	UBBStrCnt=re.Replace(UBBStrCnt,"&#111n$2")

    If DEF_EnableImagesUBB = 1 then
    	UBBStrCnt = OneLevelCode(UBBStrCnt, "[IMGA]", "[/IMGA]", "<IMG SRC="," border=0 align=absmiddle>")
    	UBBStrCnt = OneLevelCode(UBBStrCnt, "[IMG]", "[/IMG]", "<IMG SRC="," border=0 align=absmiddle>")
    End If

	re.Pattern="(\[URL\])(.[^\[]*)(\[\/URL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""$2"" TARGET=_blank>$2</A>")
   	re.Pattern="\[color=(.[^\[]*)\](.[^\[]*)\[\/color\]"
   	UBBStrCnt=re.Replace(UBBStrCnt,"<font color=""$1"">$2</font>")

	re.Pattern="(\[EMAIL\])(\S+\@.[^\[]*)(\[\/EMAIL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<<A HREF=""mailto:$2"">$2</A>")
	re.Pattern="(\[EMAIL=(\S+\@.[^\[]*)\])(.[^\[]*)(\[\/EMAIL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""mailto:$2"" TARGET=_blank>$3</A>")

   	If DEF_UBBiconNumber > 0 then
		For LoopN = 1 to DEF_UBBiconNumber
   			UBBStrCnt=replace(UBBStrCnt,"[EM" & Right(("0" & LoopN),2) & "]","<img src=""../images/UBBicon/em" & Right("0" & LoopN,Len(DEF_UBBiconNumber)) & ".GIF"" width=20 height=20 align=absmiddle border=0>",1,DEF_MaxUBBNumber,0)
   			UBBStrCnt=replace(UBBStrCnt,"[em" & Right(("0" & LoopN),2) & "]","<img src=""../images/UBBicon/em" & Right("0" & LoopN,Len(DEF_UBBiconNumber)) & ".GIF"" width=20 height=20 align=absmiddle border=0>",1,DEF_MaxUBBNumber,0)
   		Next
   	End If

   	re.Pattern="\[face=(.[^\[]*)\](.[^\[]*)\[\/face\]"
   	UBBStrCnt=re.Replace(UBBStrCnt,"<font face=""$1"">$2</font>")
	re.Pattern="\[GLOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\[]*)\[\/GLOW]"
	UBBStrCnt=re.Replace(UBBStrCnt,"<table width=$1 ><tr><td style=""filter:glow(color=$2, strength=$3)"">$4</td></tr></table>")

    re.Pattern="\[SHADOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\[]*)\[\/SHADOW]"
    UBBStrCnt=re.Replace(UBBStrCnt,"<table width=$1 ><tr><td style=""filter:shadow(color=$2, strength=$3)"">$4</td></tr></table>")

	UBBStrCnt = OneLevelCode(UBBStrCnt, "[FLY]", "[/FLY]", "<marquee width=90% behavior=alternate scrollamount=3>", "</marquee>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[MOVE]", "[/MOVE]", "<MARQUEE scrollamount=3>", "</MARQUEE>")
	    	
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[b]", "[/b]", "<b>", "</b>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[u]", "[/u]", "<u>", "</u>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[i]", "[/i]", "<i>", "</i>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[align=center]", "[/align]", "<center>", "</center>")
	'UBBStrCnt = OneLevelCode(UBBStrCnt, "[align=left]", "[/align]", "<P align=left>", "</span>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[align=right]", "[/align]", "<p align=right>", "")
	
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=1]", "[/size]", "<font size=1>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=2]", "[/size]", "<font size=2>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=3]", "[/size]", "<font size=3>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=4]", "[/size]", "<font size=4>", "</font>")
	UBBStrCnt = OneLevelCode(UBBStrCnt, "[size=5]", "[/size]", "<font size=5>", "</font>")
	re.Pattern="(\[URL=(.[^\[]*)\])(.[^\[]*)(\[\/URL\])"
	UBBStrCnt= re.Replace(UBBStrCnt,"<A HREF=""$2"" TARGET=_blank>$3</A>")

	'If CheckSupervisorname = 0 Then
		UBB_Code_UnderWrite = UBB_FiltrateBadWords(UBBStrCnt)
	'Else
	'	UBB_Code_UnderWrite = UBBStrCnt
	'End If
	Set Re = Nothing

end function

function UBB_FiltrateBadWords(tempStr)

	Dim Str
	Str = tempStr
    Dim FiltrateBadWordString_Temp,i,Temp_N
    FiltrateBadWordString_Temp = split(FiltrateBadWordString, "|")
    Temp_N = ubound(FiltrateBadWordString_Temp)
    for i = 0 to Temp_N
        Str = Replace(Str, FiltrateBadWordString_Temp(i), string(len(FiltrateBadWordString_Temp(i)),"*"), 1,-1,0) 
    next
    UBB_FiltrateBadWords = Str

end function%>