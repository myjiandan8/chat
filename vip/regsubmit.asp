<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--#include file="top.asp"-->
<%
Call yanzheng()
if InStr(Request.ServerVariables("HTTP_REFERER"), "/vip/regfrom1.asp")=0 then Call errstr("�����ȷ����ַ����ע�ᣡ\n"&Request.ServerVariables("HTTP_REFERER"))

name=trim(Request("name"))
passwd=trim(Request("passwd"))
passwd_two=trim(Request("passwd_two"))
question=HTMLEncode(Request("question"))
answer=HTMLEncode(Request("answer"))
email=HTMLEncode(Request("email"))
shouji=HTMLEncode(Request("shouji"))
id0=HTMLEncode(Request("id0"))
id1=HTMLEncode(Request("id1"))
id2=HTMLEncode(Request("id2"))
id3=HTMLEncode(Request("id3"))
id4=HTMLEncode(Request("id4"))
name2=HTMLEncode(Request("name2"))
name3=HTMLEncode(Request("name3"))
name4=HTMLEncode(Request("name4"))
cname=HTMLEncode(Request("cname"))
Sex=HTMLEncode(Request("Sex"))
userDate=HTMLEncode(Request("userDate"))
Icon=HTMLEncode(Request("Icon"))
pic=HTMLEncode(Request("pic"))
zppic=HTMLEncode(Request("zppic"))

snxiao=HTMLEncode(Request("snxiao"))
blood=HTMLEncode(Request("blood"))
xingzuo=HTMLEncode(Request("xingzuo"))
belief=HTMLEncode(Request("belief"))
job=HTMLEncode(Request("job"))
marital=HTMLEncode(Request("marital"))
education=HTMLEncode(Request("education"))
college=HTMLEncode(Request("college"))
minzu=HTMLEncode(Request("minzu"))
jiguan=HTMLEncode(Request("jiguan"))
shengao=HTMLEncode(Request("shengao"))
tizhong=HTMLEncode(Request("tizhong"))

dizhi=HTMLEncode(Request("dizhi"))
zip=HTMLEncode(Request("zip"))
phone=HTMLEncode(Request("phone"))
OICQ=HTMLEncode(Request("OICQ"))
UC=HTMLEncode(Request("UC"))
ICQ=HTMLEncode(Request("ICQ"))
MSN=HTMLEncode(Request("MSN"))
www=HTMLEncode(Request("www"))
zhengjian=HTMLEncode(Request("zhengjian"))
jianjie=HTMLEncode(Request("jianjie"))
qianming=HTMLEncode(Request("qianming"))
character=HTMLEncode(Request("character"))
userDVD=HTMLEncode(Request("userDVD"))


if name="" or passwd="" or question="" or answer="" or email="" or id0="" or id1="" or (id2="" and name2="") or (id3="" and name3="") or (id4="" and name4="") or cname="" or userDate="" or zhengjian="" or dizhi="" then
errstr("����д������")
end if

'if passwd<>passwd_two then
'errstr("�����������벻��ȷ��")
'end if

if CheckHtml(name) or CheckHtml(passwd) then
errstr("�û������������зǷ��ַ���")
end if

if not IsValidEmail(Email) then
errstr("�Ƿ��ĵ����ʼ���")
end if

replace_word="�����,��,TMD,fuck,bitch,shit,�����,�԰�,����,kao,falundafa,falun,������,վ��,Ѳվ,��ʲ,������,������,��,����Ƭ,����,[IMG]/upload/,[IMG],.jpg[/IMG],.gif[/IMG],[color=#,[/color],[,],"  
if InStr(replace_word,name & ",")>0 then
errstr("�����к��зǷ��ַ���")
end if




if instr(qianming,"[/FLASH]")>0 or instr(qianming,"[/RM]")>0 or instr(qianming,"[/MP]")>0 then errstr("ǩ�����в��ܺ���[FLASH] [RM] [MP]����")

if Len(character)>255 then errstr("�Ը��ܴ��� 255 ���ַ�")

if Len(jianjie)>255 then errstr("���˼�鲻�ܴ��� 255 ���ַ�")

if Len(qianming)>255 then errstr("ǩ�������ܴ��� 255 ���ֽ�")




Call OpenConn()
sql="select name from [User] where name='"& name &"'"
set rs=conn.execute (sql)
if not(rs.eof or err) then
errstr("���û����Ѿ�ע�ᣬ����ѡ��һ����")
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

'���ض�Ӧ�ĵ���
function DM_name(id,lx)

sql="select name" & lx & " from D_" & lx & " where id" & lx & "=" & id
set rs=conn.execute (sql)
DM_name=rs("name" & lx )
rs.close

end function



'�������ڵ���Ϣ
if id1<>1 then
name0=DM_NAME(id0,0)
name1=DM_NAME(id1,1)
id2=0
id3=0
id4=0
else
name0=DM_NAME(id0,0)
name1=DM_NAME(id1,1)
name2=DM_NAME(id2,2)
name3=DM_NAME(id3,3)
name4=DM_NAME(id4,4)
end if



sql="select * from [User] order by UID desc"
rs.open sql,conn,1,1
        UID=rs("UID")+1
rs.close


sql="select * from [User]"
rs.open sql,conn,1,3

        rs.addnew
        rs("UID")= UID
        rs("name")=name
        rs("passwd")= passwd
        rs("question")=question
        rs("answer")=answer
        rs("email")=email
        rs("shouji")=shouji
        rs("cname")=cname
       	rs("userDate") =userDate 

'�����Ա�
		if Request("p1")="gg" then
		rs("Sex") = 1
		else
		rs("Sex") = 2
		end if
		
'ͷ��
		rs("icon") = icon
		
'��������
		rs("pic") =  Request("p2")
		'rs("zppic") = zppic

'������Ϣ
       rs("snxiao") =snxiao
       rs("blood") =blood

       rs("xingzuo") =xingzuo
       rs("belief") =belief
       rs("job") =job
       rs("marital") =marital
       rs("education") =education
       rs("college") =college

	   rs("minzu") = minzu
	   rs("jiguan") =jiguan
	   rs("shengao") =shengao
	   rs("tizhong") =tizhong
	   
	   rs("id0") = id0
	   rs("id1") = id1
	   rs("id2") = id2
	   rs("id3") = id3
	   rs("id4") = id4
	   rs("name0") = name0
	   rs("name1") = name1
	   rs("name2") = name2
	   rs("name3") = name3
	   rs("name4") = name4

       rs("dizhi") = dizhi
       rs("zip") = zip
       rs("phone") = phone
       
       rs("oicq") = oicq
       rs("UC") = UC
       rs("icq") = icq
       rs("MSN") =MSN
       rs("www") =www
       rs("zhengjian") =zhengjian
       rs("jianjie") =jianjie
       rs("qianming") =qianming
       rs("character") =character
       

      ' rs("") =Request("")
       rs("ip") =Request.ServerVariables("REMOTE_ADDR")
       rs("CreateDate") =Date()
       rs("userDVD") =userDVD
       'rs("userVCD")=1

	   rs.Update
	   rs.close

'BCHAT���ݿ⿪��
Call OpenBChatConn()
 
sql="select * from [User]"
rs.open sql,BChatConn,1,3

        rs.addnew
        rs("UID")=UID
        rs("Name")=name
        rs("Passwd")=passwd
	   	rs.Update
	   	rs.close
 
if 1=2 then
 'MECHAT���ݿ⿪��
Call OpenMeChatConn()
 
sql="select * from userInfo"
rs.open sql,MeChatconn,1,3

        rs.addnew
        rs("UID")=UID
        rs("UserName")=name
        rs("Alias")=name
        rs("Password")=passwd
        rs("Icon")=Icon
        
	'�����Ա�
		if Request("p1")="gg" then
		rs("Sex") = 1
		else
		rs("Sex") = 0
		end if
	   	rs.Update
	   	rs.close
end if

 '��̳���ݿ⿪��
Call OpenbbsConn()
 
sql="select * from [User]"
rs.open sql,bbsConn,1,3

        rs.addnew
        rs("UID")=UID
        rs("username")=name
        rs("userpass")=passwd
        rs("usermail")=email

        rs("realname")=cname
        rs("birthday")=userDate
        rs("userface")="/pic/faces/"& Request("icon") &".gif"
        
        if Request("p1")="gg" then
        rs("sex")="male"
        else 
        rs("sex")="female"
        end if
        
        rs("country")=name1
        rs("province")=name2
        rs("city")=name3
        rs("blood")=blood
        
        rs("character")=character
        
        rs("belief")=belief
        rs("college")=college
        rs("marital")=marital
        
        rs("education")=education
        
        rs("personal")=jianjie
        rs("sign")=qianming
        rs("occupation")=job
        
        rs("userhome")=www
        if icq<>empty then rs("icq")=icq
        if oicq<>empty then rs("userqq")=oicq
        rs("landtime")=now()
        
                
	   	rs.Update
	   	rs.close



 '�ر����ݿ����
 Call Closedb()
 
 
       'response.redirect "../index.asp?user=" & name
       'response.end

		xinxi="��ϲ [ "& name & " ] ע��ɹ�"
		
		
%>



<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�û���������</TITLE>

<% call top %>


<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="452" id="AutoNumber1" height="453">
    <tr>
      <td width="680" height="19">��</td>
    </tr>
    <tr>
      <td width="680" height="430">
      <table cellSpacing="0" cellPadding="0" width="502" border="0" style="border-collapse: collapse" bordercolor="#111111">
        <tr>
          <td align="left" height="26" width="417">
              <img border="0" src="img/Main_04.gif"><b><font class="titletext" color="#ff0000">[<%=xinxi%>]</font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="417"></td>
        </tr>
        <tr>
          <td height="6" width="417"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="474" border="0" height="1">
        <tr>
          <td vAlign="top" width="459" height="130">
          <p>
           
          
  
          <DIV align=center> 
            <CENTER>
      <table width="445" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="445"> 
            <table width="462" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td colspan="2" class="titletext" width="427">��</td>
              </tr>
              <tr> 
                <td valign="top" height="250" width="397" align="right"> 
                  <table cellspacing=5 border=0 width="371" height="238">
                    <tbody>
                      <tr> 
                        <td height=106 width="359"><%=xx%></td>
                      </tr>
                      <tr>
                        <td height=2 width="359" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=88 width="359">���ĸ�����վ�Ѿ���ͨ��<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>
                        <a target="_blank" href="http://<%=UID%>.vcu.cn"><font color="#FF0000">http://<%=UID%>.vcu.cn</font></a></b><br>
                        &nbsp;&nbsp;&nbsp; �ù��ܻᾡ�쿪ͨ����<br>
&nbsp;&nbsp;&nbsp; Ϊ��������վ�����еı�����ĸ��ԣ�����д��ĸ��˵�����<p align="center">
                        <a href="../index.htm?user=<%=name%>">��������������ҳ</a>&nbsp;
                        <a href="index.asp?user=<%=name%>">���˹�������</a>&nbsp;
                        <a href="ziliao.asp?user=<%=name%>">�޸ĸ��˵���</a></td>
                      </tr>
                      <tr>
                        <td height=2 align="right" width="352" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=1 align="center" valign="bottom" width="359">    
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
                <td width="62" valign="bottom"><img src="img/girl01.gif" width="61" height="200" border="0"></td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="445"></td>
        </tr>
      </table>
      </CENTER>
          </DIV>


          </td>
          <td vAlign="top" width="12" height="1" rowspan="2">
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="459" height="26" align="center">
          ��</td>
          </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="680" height="1"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="680"></td>
        </tr>
    <tr>
      <td width="680" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

    
    <%     
    call endpage() %>