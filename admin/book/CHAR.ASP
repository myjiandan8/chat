<%
   dim WINNT_CHINESE 
   function strLength(str)
       ON ERROR RESUME NEXT
       dim WINNT_CHINESE
       WINNT_CHINESE    = (len("论坛")=2)
       if WINNT_CHINESE then
          dim l,t,c
          dim i
          l=len(str)
          t=l
          for i=1 to l
             c=asc(mid(str,i,1))
             if c<0 then c=c+65536
             if c>255 then
                t=t+1
             end if
          next
          strLength=t
       else 
          strLength=len(str)
       end if
       if err.number<>0 then err.clear
   end function 
   function isInteger(para)
       on error resume next
       dim str
       dim l,i
       if isNUll(para) then 
          isInteger=false
          exit function
       end if
       str=cstr(para)
       if trim(str)="" then
          isInteger=false
          exit function
       end if
       l=len(str)
       for i=1 to l
           if mid(str,i,1)>"9" or mid(str,i,1)<"0" then
              isInteger=false 
              exit function
           end if
       next
       isInteger=true
       if err.number<>0 then err.clear
   end function
   function cutStr(str,strlen)
		dim l,t,c
		l=len(str)
		t=0
		for i=1 to l
		c=Abs(Asc(Mid(str,i,1)))
		if c>255 then
		t=t+2
		else
		t=t+1
		end if
		if t>=strlen then
		cutStr=left(str,i)&"..."
		exit for
		else
		cutStr=str
		end if
		next
	end function
sub error()
%><br>
    <table cellpadding=0 cellspacing=0 border=0 width=95% bgcolor=<%=tablebackcolor%> align=center>
        <tr>
            <td>
                <table cellpadding=3 cellspacing=1 border=0 width=100%>
    <tr align="center"> 
      <td width="100%" bgcolor=<%=tabletitlecolor%>>
		<font color="<%=TableFontColor%>"><b>错误信息</b></font></td>
    </tr>
    <tr> 
      <td width="100%" bgcolor=<%=tablebodycolor%>><font color="<%=TableContentColor%>"><b>产生错误的可能原因：</b><br><br>
<li>您是否仔细阅读了<a href=help.asp><font color="<%=TableContentColor%>">帮助文件</font></a>
<%=errmsg%></font>
      </td>
    </tr>
    <tr align="center"> 
      <td width="100%" bgcolor=<%=tabletitlecolor%>>
<a href="javascript:history.go(-1)"><font color="<%=TableFontColor%>"> << 返回上一页</font></a>
      </td>
    </tr>  
    </table>   </td></tr></table>
<%
end sub
function browser(info)
    if Instr(info,"MSIE 5.5")>0 then
        browser="浏 览 器：Internet Explorer 5.5"
    elseif Instr(info,"MSIE 6.0")>0 then
        browser="浏 览 器：Internet Explorer 6.0"
    elseif Instr(info,"MSIE 5.01")>0 then
        browser="浏 览 器：Internet Explorer 5.01"
    elseif Instr(info,"MSIE 5.0")>0 then
        browser="浏 览 器：Internet Explorer 5.00"
    elseif Instr(info,"MSIE 4.0")>0 then
        browser="浏 览 器：Internet Explorer 4.01"
    else
        browser="浏 览 器：未知"
    end if
end function
function system(info)
    if Instr(info,"NT 5.1")>0 then
        system=system+"操作系统：Windows XP"
    elseif Instr(info,"NT 5")>0 then
        system=system+"操作系统：Windows 2000"
    elseif Instr(info,"NT 4")>0 then
        system=system+"操作系统：Windows NT4"
    elseif Instr(info,"98")>0 then
        system=system+"操作系统：Windows 98"
    elseif Instr(info,"95")>0 then
        system=system+"操作系统：Windows 95"
    else
        system=system+"操作系统：未知"
    end if
end function
Function chkemail(strEmailAddr)
    Dim re
    Set re = new RegExp
    re.pattern = "^[a-zA-Z][A-Za-z0-9_.-]+@[a-zA-Z0-9_]+?\.[a-zA-Z]{2,3}$"
    chkemail=re.Test(strEmailAddr)
end function
Function chkoicq(oicq)
    Dim re1
    Set re1 = new RegExp
    re1.IgnoreCase = false
    re1.global = false
    re1.Pattern = "[0-9]{4,9}$"
    chkoicq = re1.Test(oicq)
End Function

function DateToStr(dtDateTime)
    DateToStr = year(dtDateTime) & doublenum(Month(dtdateTime)) & doublenum(Day(dtdateTime)) & doublenum(Hour(dtdateTime)) & doublenum(Minute(dtdateTime)) & doublenum(Second(dtdateTime)) & ""
end function
function doublenum(fNum)
    if fNum > 9 then 
        doublenum = fNum 
    else 
        doublenum = "0" & fNum
    end if
end function

rem ------------ubb代码
function ChkBadWords(fString)
    if not(isnull(BadWords) or isnull(fString)) then
    bwords = split(BadWords, "|")
    for i = 0 to ubound(bwords)
        fString = Replace(fString, bwords(i), string(len(bwords(i)),"*")) 
    next
    ChkBadWords = fString
    end if
end function

function HTMLEncode(fString)
if not isnull(fString) then
    fString = replace(fString, ">", "&gt;")
    fString = replace(fString, "<", "&lt;")

    fString = Replace(fString, CHR(32), "&nbsp;")
    fString = Replace(fString, CHR(34), "&quot;")
    fString = Replace(fString, CHR(39), "&#39;")
    fString = Replace(fString, CHR(13), "")
    fString = Replace(fString, CHR(10) & CHR(10), "</P><P> ")
    fString = Replace(fString, CHR(10), "<BR> ")
    HTMLEncode = fString
end if
end function

function HTMLcode(fString)
if not isnull(fString) then
    fString = Replace(fString, CHR(13), "")
    fString = Replace(fString, CHR(10) & CHR(10), "</P><P>")
    fString = Replace(fString, CHR(10), "<BR>")
    HTMLcode = fString
end if
end function
function HTMLDecode(fString)
if not isnull(fString) then
    fString = replace(fString, "&gt;", ">")
    fString = replace(fString, "&lt;", "<")

    fString = Replace(fString, "", CHR(13))
    fString = Replace(fString, "</P><P>", CHR(10) & CHR(10))
    fString = Replace(fString, "<BR>", CHR(10))
    HTMLDecode = fString
end if
end function

function UBBCode(strContent)
    if strAllowHTML <> 1 then
        strContent = HTMLEncode(strContent)
    else
	strContent = HTMLcode(strContent)
    end if
    dim re
    Set re=new RegExp
    re.IgnoreCase =true
    re.Global=True

    if strIMGInPosts = "1" then
    re.Pattern="(\[IMG\])(.[^\[]*)(\[\/IMG\])"
    strContent=re.Replace(strContent,"<a href=""$2"" target=_blank><IMG SRC=""$2"" border=0 alt=按此在新窗口浏览图片 onload=""javascript:if(this.width>screen.width-333)this.width=screen.width-333""></a>")
    end if

    re.Pattern="\[DIR=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/DIR]"
    strContent=re.Replace(strContent,"<object classid=clsid:166B1BCA-3F9C-11CF-8075-444553540000 codebase=http://download.macromedia.com/pub/shockwave/cabs/director/sw.cab#version=7,0,2,0 width=$1 height=$2><param name=src value=$3><embed src=$3 pluginspage=http://www.macromedia.com/shockwave/download/ width=$1 height=$2></embed></object>")
    re.Pattern="\[QT=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/QT]"
    strContent=re.Replace(strContent,"<embed src=$3 width=$1 height=$2 autoplay=true loop=false controller=true playeveryframe=false cache=false scale=TOFIT bgcolor=#000000 kioskmode=false targetcache=false pluginspage=http://www.apple.com/quicktime/>")
    re.Pattern="\[MP=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/MP]"
    strContent=re.Replace(strContent,"<object align=middle classid=CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95 class=OBJECT id=MediaPlayer width=$1 height=$2 ><param name=ShowStatusBar value=-1><param name=Filename value=$3><embed type=application/x-oleobject codebase=http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701 flename=mp src=$3  width=$1 height=$2></embed></object>")
    re.Pattern="\[RM=*([0-9]*),*([0-9]*)\](.[^\[]*)\[\/RM]"
    strContent=re.Replace(strContent,"<OBJECT classid=clsid:CFCDAA03-8BE4-11cf-B84B-0020AFBBCCFA class=OBJECT id=RAOCX width=$1 height=$2><PARAM NAME=SRC VALUE=$3><PARAM NAME=CONSOLE VALUE=Clip1><PARAM NAME=CONTROLS VALUE=imagewindow><PARAM NAME=AUTOSTART VALUE=true></OBJECT><br><OBJECT classid=CLSID:CFCDAA03-8BE4-11CF-B84B-0020AFBBCCFA height=32 id=video2 width=$1><PARAM NAME=SRC VALUE=$3><PARAM NAME=AUTOSTART VALUE=-1><PARAM NAME=CONTROLS VALUE=controlpanel><PARAM NAME=CONSOLE VALUE=Clip1></OBJECT>")

    if strflash= "1" then
    re.Pattern="(\[FLASH\])(.[^\[]*)(\[\/FLASH\])"
    strContent= re.Replace(strContent,"<OBJECT codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=4,0,2,0 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000 width=500 height=400><PARAM NAME=movie VALUE=""$2""><PARAM NAME=quality VALUE=high><embed src=""$2"" quality=high pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash' type='application/x-shockwave-flash' width=500 height=400>$2</embed></OBJECT>")
    end if

    re.Pattern="(\[ZIP\])(.[^\[]*)(\[\/ZIP\])"
    strContent=re.Replace(strContent,"<br><IMG SRC=pic/zip.gif border=0> <a href=""$2"">点击下载该文件</a>")
    re.Pattern="(\[RAR\])(.[^\[]*)(\[\/RAR\])"
    strContent=re.Replace(strContent,"<br><IMG SRC=pic/rar.gif border=0> <a href=""$2"">点击下载该文件</a>")
    re.Pattern="(\[UPLOAD=(.[^\[]*)\])(.[^\[]*)(\[\/UPLOAD\])"
    strContent= re.Replace(strContent,"<br><IMG SRC=""pic/$2.gif"" border=0>此主题相关图片如下：<br><A HREF=""$3"" TARGET=_blank><IMG SRC=""$3"" border=0 alt=按此在新窗口浏览图片 onload=""javascript:if(this.width>screen.width-333)this.width=screen.width-333""></A>")

    re.Pattern="(\[URL\])(http:\/\/.[^\[]*)(\[\/URL\])"
    strContent= re.Replace(strContent,"<A HREF=""$2"" TARGET=_blank>$2</A>")
    re.Pattern="(\[URL\])(.[^\[]*)(\[\/URL\])"
    strContent= re.Replace(strContent,"<A HREF=""http://$2"" TARGET=_blank>$2</A>")

    re.Pattern="(\[URL=(http:\/\/.[^\[]*)\])(.[^\[]*)(\[\/URL\])"
    strContent= re.Replace(strContent,"<A HREF=""$2"" TARGET=_blank>$3</A>")
    re.Pattern="(\[URL=(.[^\[]*)\])(.[^\[]*)(\[\/URL\])"
    strContent= re.Replace(strContent,"<A HREF=""http://$2"" TARGET=_blank>$3</A>")

    re.Pattern="(\[EMAIL\])(\S+\@.[^\[]*)(\[\/EMAIL\])"
    strContent= re.Replace(strContent,"<img align=absmiddle src=pic/email1.gif><A HREF=""mailto:$2"">$2</A>")
    re.Pattern="(\[EMAIL=(\S+\@.[^\[]*)\])(.[^\[]*)(\[\/EMAIL\])"
    strContent= re.Replace(strContent,"<img align=absmiddle src=pic/email1.gif><A HREF=""mailto:$2"" TARGET=_blank>$3</A>")

	re.Pattern = "^(http://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "(http://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)$"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "[^>=""](http://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "^(ftp://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "(ftp://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)$"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "[^>=""](ftp://[A-Za-z0-9\.\/=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "^(rtsp://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "(rtsp://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)$"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "[^>=""](rtsp://[A-Za-z0-9\.\/=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "^(mms://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "(mms://[A-Za-z0-9\./=\?%\-&_~`@':+!]+)$"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")
	re.Pattern = "[^>=""](mms://[A-Za-z0-9\.\/=\?%\-&_~`@':+!]+)"
	strContent = re.Replace(strContent,"<img align=absmiddle src=pic/url.gif><a target=_blank href=$1>$1</a>")

    if strIcons = "1" then
    re.Pattern="(\[em(.[^\[]*)\])"
    strContent=re.Replace(strContent,"<img src=pic/em$2.gif border=0 align=middle>")
    end if

    re.Pattern="(\[HTML\])(.[^\[]*)(\[\/HTML\])"
    strContent=re.Replace(strContent,"<table width='100%' border='0' cellspacing='0' cellpadding='6' bgcolor='"&abgcolor&"'><td><b>以下内容为程序代码:</b><br>$2</td></table>")
    re.Pattern="(\[code\])(.[^\[]*)(\[\/code\])"
    strContent=re.Replace(strContent,"<table width='100%' border='0' cellspacing='0' cellpadding='6' bgcolor='"&abgcolor&"'><td><b>以下内容为程序代码:</b><br>$2</td></table>")

    re.Pattern="(\[color=(.[^\[]*)\])(.[^\[]*)(\[\/color\])"
    strContent=re.Replace(strContent,"<font color=$2>$3</font>")
    re.Pattern="(\[face=(.[^\[]*)\])(.[^\[]*)(\[\/face\])"
    strContent=re.Replace(strContent,"<font face=$2>$3</font>")
    re.Pattern="(\[align=(.[^\[]*)\])(.*)(\[\/align\])"
    strContent=re.Replace(strContent,"<div align=$2>$3</div>")

    re.Pattern="(\[QUOTE\])(.*)(\[\/QUOTE\])"
    strContent=re.Replace(strContent,"<table cellpadding=0 cellspacing=0 border=0 WIDTH=94% bgcolor=#000000 align=center><tr><td><table width=100% cellpadding=5 cellspacing=1 border=0><TR><TD BGCOLOR='"&abgcolor&"'>$2</table></table><br>")
    re.Pattern="(\[fly\])(.*)(\[\/fly\])"
    strContent=re.Replace(strContent,"<marquee width=90% behavior=alternate scrollamount=3>$2</marquee>")
    re.Pattern="(\[move\])(.*)(\[\/move\])"
    strContent=re.Replace(strContent,"<MARQUEE scrollamount=3>$2</marquee>")	
    re.Pattern="\[GLOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\[]*)\[\/GLOW]"
    strContent=re.Replace(strContent,"<table width=$1 style=""filter:glow(color=$2, strength=$3)"">$4</table>")
    re.Pattern="\[SHADOW=*([0-9]*),*(#*[a-z0-9]*),*([0-9]*)\](.[^\[]*)\[\/SHADOW]"
    strContent=re.Replace(strContent,"<table width=$1 style=""filter:shadow(color=$2, strength=$3)"">$4</table>")

    re.Pattern="(\[i\])(.[^\[]*)(\[\/i\])"
    strContent=re.Replace(strContent,"<i>$2</i>")
    re.Pattern="(\[u\])(.[^\[]*)(\[\/u\])"
    strContent=re.Replace(strContent,"<u>$2</u>")
    re.Pattern="(\[b\])(.[^\[]*)(\[\/b\])"
    strContent=re.Replace(strContent,"<b>$2</b>")
    re.Pattern="(\[fly\])(.[^\[]*)(\[\/fly\])"
    strContent=re.Replace(strContent,"<marquee>$2</marquee>")

    re.Pattern="(\[size=1\])(.[^\[]*)(\[\/size\])"
    strContent=re.Replace(strContent,"<font size=1>$2</font>")
    re.Pattern="(\[size=2\])(.[^\[]*)(\[\/size\])"
    strContent=re.Replace(strContent,"<font size=2>$2</font>")
    re.Pattern="(\[size=3\])(.[^\[]*)(\[\/size\])"
    strContent=re.Replace(strContent,"<font size=3>$2</font>")
    re.Pattern="(\[size=4\])(.[^\[]*)(\[\/size\])"
    strContent=re.Replace(strContent,"<font size=4>$2</font>")

    re.Pattern="(\[center\])(.[^\[]*)(\[\/center\])"
    strContent=re.Replace(strContent,"<center>$2</center>")

    strContent=ChkBadWords(strContent)

    set re=Nothing
    UBBCode=strContent
end function


public function translate(sourceStr,fieldStr)
rem 处理逻辑表达式的转化问题
  dim  sourceList
  dim resultStr
  dim i,j
  if instr(sourceStr," ")>0 then 
     dim isOperator
     isOperator = true
     sourceList=split(sourceStr)
     '--------------------------------------------------------
     rem Response.Write "num:" & cstr(ubound(sourceList)) & "<br>"
     for i = 0 to ubound(sourceList)
        rem Response.Write i 
    Select Case ucase(sourceList(i))
    Case "AND","&","和","与"
        resultStr=resultStr & " and "
        isOperator = true
    Case "OR","|","或"
        resultStr=resultStr & " or "
        isOperator = true
    Case "NOT","!","非","！","！"
        resultStr=resultStr & " not "
        isOperator = true
    Case "(","（","（"
        resultStr=resultStr & " ( "
        isOperator = true
    Case ")","）","）"
        resultStr=resultStr & " ) "
        isOperator = true
    Case Else
        if sourceList(i)<>"" then
            if not isOperator then resultStr=resultStr & " and "
            if inStr(sourceList(i),"%") > 0 then
                resultStr=resultStr&" "&fieldStr& " like '" & replace(sourceList(i),"'","''") & "' "
            else
                resultStr=resultStr&" "&fieldStr& " like '%" & replace(sourceList(i),"'","''") & "%' "
            end if
                isOperator=false
        End if    
    End Select
        rem Response.write resultStr+"<br>"
     next 
     translate=resultStr
  else '单条件
     if inStr(sourcestr,"%") > 0 then
         translate=" " & fieldStr & " like '" & replace(sourceStr,"'","''") &"' "
     else
    translate=" " & fieldStr & " like '%" & replace(sourceStr,"'","''") &"%' "
     End if
     rem 前后各加一个空格，免得连sql时忘了加，而出错。
  end if  
end function

function IsValidEmail(email)

dim names, name, i, c

'Check for valid syntax in an email address.

IsValidEmail = true
names = Split(email, "@")
if UBound(names) <> 1 then
   IsValidEmail = false
   exit function
end if
for each name in names
   if Len(name) <= 0 then
     IsValidEmail = false
     exit function
   end if
   for i = 1 to Len(name)
     c = Lcase(Mid(name, i, 1))
     if InStr("abcdefghijklmnopqrstuvwxyz_-.", c) <= 0 and not IsNumeric(c) then
       IsValidEmail = false
       exit function
     end if
   next
   if Left(name, 1) = "." or Right(name, 1) = "." then
      IsValidEmail = false
      exit function
   end if
next
if InStr(names(1), ".") <= 0 then
   IsValidEmail = false
   exit function
end if
i = Len(names(1)) - InStrRev(names(1), ".")
if i <> 2 and i <> 3 then
   IsValidEmail = false
   exit function
end if
if InStr(email, "..") > 0 then
   IsValidEmail = false
end if

end function
'用户来源
function address(sip)
	if isnumeric(left(sip,2)) then
	set iprs=server.createobject("adodb.recordset")
	if sip="127.0.0.1" then sip="192.168.0.1"
	str1=left(sip,instr(sip,".")-1)
	sip=mid(sip,instr(sip,".")+1)
	str2=left(sip,instr(sip,".")-1)
	sip=mid(sip,instr(sip,".")+1)
	str3=left(sip,instr(sip,".")-1)
	str4=mid(sip,instr(sip,".")+1)
	if isNumeric(str1)=0 or isNumeric(str2)=0 or isNumeric(str3)=0 or isNumeric(str4)=0 then

	else
    num=cint(str1)*256*256*256+cint(str2)*256*256+cint(str3)*256+cint(str4)-1
	ipsql="select Top 1 country,city from address where ip1 <="&num&" and ip2 >="&num&""
	iprs.open ipsql,conn,1,1
		if iprs.eof and iprs.bof then 
		country="亚洲"
		city=""
		else
		country=iprs("country")
		city=iprs("city")
		end if
	iprs.close
	set iprs=nothing
	end if
	address=country&city
	else
	address="未知"
	end if
end function
%>