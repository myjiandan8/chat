<%
function newsConvert(str)
dim tempstr
dim theStr
dim canConvert
dim theChr
tempStr=str
theChr=""
theStr=""
canConvert=1
for i=1 to len(tempStr)
	theChr=mid(tempStr,i,1)
	if theChr="<" then
		canConvert=0
	end if
	if theChr=">" then
		canConvert=1
	end if
	if theChr=" " and canConvert=1 then
		theChr= "&nbsp;"
	end if
	theStr=theStr&theChr
next
    theStr=replace(theStr,chr(13),"<br>")
	newsConvert=theStr
End function
%>