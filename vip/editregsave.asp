<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<%
Function CheckHtml(Str)
   Dim Sos
   Sos=Trim(Str)
   if InStr(1,Sos," ",vbTextCompare)<>0 or InStr(1,Sos,".",vbTextCompare)<>0 or InStr(1,Sos,"<",vbTextCompare)<>0 or InStr(1,Sos,">",vbTextCompare)<>0 or InStr(1,Sos,"&",vbTextCompare)<>0 then
      CheckHtml=true
   else
      CheckHtml=false
   end if      
End Function


if (not IsValidEmail(request("Email"))) then
   response.write "<script language='javascript'>"
   response.write "alert('会员注册资料填写有错，含有非法字符空格、&<>.等，或者邮件地址不正确！');"
   response.write "history.go(-1);"
   response.write "</script>"
   response.end
end if   

'检测电子邮件的函数
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



Set rs = Server.CreateObject("ADODB.Recordset")
sql="select * from [User] where name like '"& UN &"'"
rs.open sql,conn,3,3


        rs("question")=request("question")
        rs("answer")=request("answer")
        rs("email")=request("email")
        rs("cname")=request("cname")
        

sql="select * from D_2 where id2="&Request("id2")&""
set rsd=conn.execute (sql)
       
        rs("DMname2")=Rsd("name2")
        rs("DMid2")=Request("id2")
        
rsd.close



'处理性别
		if Request("p1")="gg" then
		rs("Sex") = 1
		else
		rs("Sex") = 0
		end if
		
'虚拟形象
		rs("pic") =  Request("p2")


'头像
		rs("icon") = Request("icon")
		
'其他信息
        rs("oicq") = Request("oicq")
        rs("zhengjian") = Request("zhengjian")
        rs("Resume") = Request("Resume")
        
        rs.update
       'rs.movelast
        rs.close

%>

 			<script language=Javascript>
				alert("档案修改成功!\n该窗口将关闭!");
				window.close();	
			</script>