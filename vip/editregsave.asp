<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
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
   response.write "alert('��Աע��������д�д����зǷ��ַ��ո�&<>.�ȣ������ʼ���ַ����ȷ��');"
   response.write "history.go(-1);"
   response.write "</script>"
   response.end
end if   

'�������ʼ��ĺ���
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



'�����Ա�
		if Request("p1")="gg" then
		rs("Sex") = 1
		else
		rs("Sex") = 0
		end if
		
'��������
		rs("pic") =  Request("p2")


'ͷ��
		rs("icon") = Request("icon")
		
'������Ϣ
        rs("oicq") = Request("oicq")
        rs("zhengjian") = Request("zhengjian")
        rs("Resume") = Request("Resume")
        
        rs.update
       'rs.movelast
        rs.close

%>

 			<script language=Javascript>
				alert("�����޸ĳɹ�!\n�ô��ڽ��ر�!");
				window.close();	
			</script>