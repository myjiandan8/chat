<%
if instr(mailaddress,"@")=0 then error2("E-mail��ַ��д����")
on error resume next

if selectmail="JMail" then
Set JMail=Server.CreateObject("JMail.Message")
JMail.Charset="gb2312"
JMail.AddRecipient mailaddress
JMail.Subject = mailtopic
JMail.Body = body
JMail.From = smtpmail
JMail.MailServerUserName = MailServerUserName
JMail.MailServerPassword = MailServerPassword
JMail.Send smtp
Set JMail=nothing

elseif selectmail="CDONTS" then
Set MailObject = Server.CreateObject("CDONTS.NewMail")
MailObject.Send smtpmail,mailaddress,mailtopic,body
Set MailObject=nothing
end if

If Err Then Response.Write "�ʼ�����ʧ�ܣ�����ԭ��" & Err.Description & ""
%>