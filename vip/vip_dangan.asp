<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->

<%

email=HTMLEncode(Request("email"))
shouji=HTMLEncode(Request("shouji"))

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


if cname<>"" or userDate<>"" or zhengjian<>"" then
'�޸ĵ�����ʼ
Call yanzheng()
if cname="" or userDate="" or zhengjian="" then
errstr("����д������")
end if

if not IsValidEmail(Email) then
errstr("�Ƿ��ĵ����ʼ���")
end if


if instr(qianming,"[/FLASH]")>0 or instr(qianming,"[/RM]")>0 or instr(qianming,"[/MP]")>0 then errstr("ǩ�����в��ܺ���[FLASH] [RM] [MP]����")

if Len(character)>255 then errstr("�Ը��ܴ��� 255 ���ַ�")

if Len(jianjie)>255 then errstr("���˼�鲻�ܴ��� 255 ���ַ�")

if Len(qianming)>255 then errstr("ǩ�������ܴ��� 255 ���ֽ�")


Function CheckHtml(Str)
   Dim Sos
   Sos=Trim(Str)
   if InStr(1,Sos," ",vbTextCompare)<>0 or InStr(1,Sos,".",vbTextCompare)<>0 or InStr(1,Sos,"<",vbTextCompare)<>0 or InStr(1,Sos,">",vbTextCompare)<>0 or InStr(1,Sos,"&",vbTextCompare)<>0  or InStr(1,Sos,"!",vbTextCompare)<>0 then
      CheckHtml=true
   elseif Len(Sos)<2 then
   	  CheckHtml=true
   else
      CheckHtml=false
   end if      
End Function


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

sql="select * from [User] where UID=" & UID
rs.open sql,conn,1,3

     if rs.eof or err then errstr("�Ƿ�������")

        ''rs("UID")=UID
        ''rs("name")=name
        ''rs("passwd")= passwd
        ''rs("question")=question
        ''rs("answer")=answer
        
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
	   
	   ''rs("id0") = id0
	   ''rs("id1") = id1
	   ''rs("id2") = id2
	   ''rs("id3") = id3
	   ''rs("id4") = id4
	   ''rs("name0") = name0
	   ''rs("name1") = name1
	   ''rs("name2") = name2
	   ''rs("name3") = name3
	   ''rs("name4") = name4

       ''rs("dizhi") = dizhi
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

Call openbbsconn
sql="select * from [User] where UID=" & UID
rs.open sql,bbsConn,1,3

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
        
        
   
rs.update
rs.close



 Call wenti("���������޸ĳɹ���")
'�޸ĵ�������
end if


if UN<>""then
	sql="select * from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
	UID=rs("uid")
end if
%>
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�޸ĵ���</TITLE>

<% call top %>

<script language="javascript">
<!--
//����֤����ƽű����������忪������ӭ����ͬ���о����޸� - ��������
function submitonce(theform){
if (document.all||document.getElementById){
//screen thru every element in the form, and hunt down "submit" and "reset"
for (i=0;i<theform.length;i++){
var tempobj=theform.elements[i]
if(tempobj.type.toLowerCase()=="submit"||tempobj.type.toLowerCase()=="reset")
tempobj.disabled=true}
}
}


function isMail(address)
{
if (address=="") return false
if (address.indexOf("@")==-1||address.indexOf("@")==0||address.indexOf("@")==address.length-1) return false
if (address.indexOf("@")!=address.lastIndexOf("@")) return false
return true
}

function isok(theform)
{


 if (theform.adminid.value.length!=4)
  {
    alert("����ȷ��д��֤�룡");
    theform.adminid.focus();
    return (false);
  } 
 if (theform.cname.value=="")
  {
    alert("��ʵ����һ��Ҫ��д��");
    theform.cname.focus();
    return (false);
  } 
 if (theform.userDate.value=="")
  {
    alert("���ջ���Ҫ��д�ģ�");
    theform.userDate.focus();
    return (false);
  } 
  
if (theform.email.value == "")
  {
    alert("��������������E_Mail��ַ.");
    theform.email.focus();
    return (false);
  }
if (theform.email.value.length < 5)
  {
    alert("�������E_Mail��ַ����");
    theform.email.focus();
    return (false);
  }

if (theform.email.value.length > 40)
  {
    alert("�ⲻ�����E_Mail.");
    theform.email.focus();
    return (false);
  }
if (!((theform.email.value=="")||isMail(theform.email.value)))
		{
		alert("����д�Ϸ���email��ַ��")
		theform.email.select()
		theform.email.focus()
		return false
		}
		

 if (theform.zhengjian.value=="")
  {
    alert("֤������Ҫ��һ��Ҫ��д��");
    theform.zhengjian.focus();
    return (false);
  } 

 if (theform.jianjie.value.length>220)
  {
    alert("������д220�֣�̫��ͳ���������");
    theform.jianjie.focus();
    return (false);
  } 
  
 if (theform.qianming.value.length>220)
  {
    alert("ǩ�����д220�֣�");
    theform.qianming.focus();
    return (false);
  } 
  

submitonce(theform)
return (true);
}
-->
</script>
<script>function New(para_URL){var URL=new String(para_URL);window.open(URL,'','resizable,scrollbars')}
</script>
<script>function showimage(){document.images.tus.src="../pic/face/"+document.form.p1.options[document.form.p1.selectedIndex].value+""+document.form.p2.options[document.form.p2.selectedIndex].value+".gif";}</script>
<script src=../inc/birthday.js></script>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="444">
    <tr>
      <td width="645" height="10"></td>
    </tr>
    <tr>
      <td width="645" height="430">
      <table cellSpacing="0" cellPadding="0" width="456" border="0" style="border-collapse: collapse" bordercolor="#111111">
        <tr>
          <td align="left" height="26" width="371"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font color="#FF0000">�޸ĸ���</font><font class="titletext" color="#ff0000">���� </font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="371"></td>
        </tr>
        <tr>
          <td height="6" width="371"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="464" border="0" height="73">
        <tr>
          <td vAlign="top" width="377" height="348">
          <p>
           
          
<form method="POST" name="form" action="vip_dangan.asp" onsubmit="return isok(this)" language="JavaScript">
    <DIV align=center> 
     <CENTER>
      <table width="538" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="544"> 
            <table width="546" border="0" cellspacing="1" cellpadding="0" height="427">
              <tr> 
                <td colspan="2" class="titletext" width="564" height="5"></td>
              </tr>
              <tr> 
                <td valign="top" height="420" width="566" align="right"> 
                
                  <table border=0 width="556" height="1351">
                    <tbody>
                      <tr> 
                        <td width="107" height=24 align=right> �ʻ��� </td>
                        <td width="219" height=24 align=left> 
                        <font color="#FF0000" size="2"><b> <%=un%> </b></font>

                        </td>  
                        <td height="24" width="216">&nbsp;<font color="#FF0000">�����ʻ���</font></td>
                      </tr>
                      <tr>
                        <td width="107" height=19 align=right> ��֤�룺</td>
                        <td width="219" height=19 align=left> 
                            
            <input type="text" name="adminid" size="6" maxLength=4 >
<iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
&nbsp;</td>  
                        <td height="19" width="216">&nbsp;<a target="I2" href="javascript:history.go(0)">����20��������
                        �õ�����֤��</a></td>
                      </tr>
                      <tr>
                        <td width="107" height=24 align=right> E-Mail��</td>
                        <td width="435" height=24 align=left colspan="2"> 
                            
                        <input name="email" type="text" class=put size="36" maxlength="40" value="<%=rs("email")%>"><font color="#FF0000"> 
                        * 
                        </font></td>  
                        </tr>
						<tr>
                        <td width="107" height=27 align=right> �ֻ���</td>
                        <td width="435" height=27 align=left colspan="2"> 
                            
                        <input name="shouji" type="text" class=put size="23" maxlength="13" value="<%=rs("shouji")%>"> 
                        �ɲ���[<font color="#808080">������Ŀ</font>]</td>  
                        </tr>
                      <tr>
              <td width="107" align="right" height="20">��ʵ������</td>
              <td width="219" height="20">
                    <input type="text" name="cname" size="20" maxLength=20 value="<%=rs("cname")%>"><font color="#FF0000">*</font></td>
              <td width="216" height="20">��</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">�Ա�</td>
              <td width="219" height="20">
          <select name="p1" size="1" onChange="showimage()" class="input1" tabindex="2">
          <option value="gg" <%if rs("sex")=1 then response.write " selected"%>>��ʿ
          <option value="mm" <%if rs("sex")=2 then response.write " selected"%>>Ůʿ</option>
          </select><font color=#FF0000>*</font></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                �������ڣ�</td>
              <td width="439" height="20" colspan="2">
              &nbsp;����ȷ��д,�����ѵ�����:)
              <input onfocus="show_cele_date(userDate,'','',userDate)" value="<%=rs("userDate")%>" name="userDate" size="14"> 
              <font color="#FF0000">* </font>&nbsp;</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="26">��������</td>
              <td width="219" height="26">
			                        
			<select name=p2 size=1 onChange="showimage()" class="input1" tabindex="3">
            <% for iok=1 to 174 %>  
            <option value='<%=iok%>' <%if rs("pic")=iok then response.write "selected"%>>���� <%=iok%></option>
            <%next%>
          </select><font color=#FF0000>*</font></td>
              <td width="216" height="26">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">�鿴������������</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="107">��</td>
              <td width="219" height="107">
                  <img src="../pic/face/<%if rs("sex")=1 then Response.Write "gg"%><%if rs("sex")=2 then Response.Write "mm"%><%=rs("pic")%>.gif" name="tus" alt="ѡ�����������" border="0"></td>
              <td width="216" height="107">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">�鿴������������</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="37">ͷ��</td>
              <td width="219" height="37">
                            
&nbsp;<img src="../pic/faces/<%=rs("icon")%>.gif" name="tusc">&nbsp;&nbsp;
<script>function show(){document.images.tusc.src="../pic/faces/"+document.form.icon.options[document.form.icon.selectedIndex].value+".gif";}</script>
<select name=icon size=1 onChange="show()">
<option value="2">���</option>
            <% for io=1 to 84 %>  
            <option value='<%=right("0" & io,2)%>' <%if rs("icon")=right("0" & io,2) then response.write "selected"%>><%=right("0" & io,2)%></option>
            <%next%>
</select>
			</td>
            <td width="216" height="37">&nbsp;<a href="JavaScript:New('face.htm')">�鿴���е�ͷ���б�</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">��Ф��</td>
              <td width="219" height="20">
                            
              <select name="snxiao">
              <option selected value="<%=rs("snxiao")%>"><%=rs("snxiao")%></option>
                <option value="��">��</option>
                <option value="ţ">ţ</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
                <option value="��">��</option>
              </select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">Ѫ�ͣ�</td>
              <td width="219" height="20">
                            
              <select name="blood">
              <option selected value="<%=rs("blood")%>"><%=rs("blood")%></option>
                <option value="A��">A��</option>
                <option value="B��">B��</option>
                <option value="AB��">AB��</option>
                <option value="O��">O��</option>
              </select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">������</td>
              <td width="439" height="20" colspan="2">
                            
              <select name="xingzuo">
               <option selected value="<%=rs("xingzuo")%>"><%=rs("xingzuo")%></option>
                <option value="������">��������3��19��-4��18�գ�</option>
                <option value="��ţ��">��ţ����4��19��-5��18�գ�</option>
                <option value="˫����">˫������5��19��-6��18�գ�</option>
                <option value="��з��">��з����6��19��-7��18�գ�</option>
                <option value="ʨ����">ʨ������7��19��-8��18�գ�</option>
                <option value="��Ů��">��Ů����8��19��-9��18�գ�</option>
                <option value="�����">�������9��19��-10��18�գ�</option>
                <option value="��Ы��">��Ы����10��19��-11��18�գ�</option>
                <option value="������">��������11��19��-12��18�գ�</option>
                <option value="ɽ����">ɽ������12��19��-1��16�գ�</option>
                <option value="ˮƿ��">ˮƿ����1��17��-2��15�գ�</option>
                <option value="˫����">˫������2��16��-3��18�գ�</option>
              </select>����֪������������ʱ��������</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">������</td>
              <td width="219" height="20">
                            
<select size=1 name=belief>
 <option selected value="<%=rs("belief")%>"><%=rs("belief")%></option>
<option value=���>���</option>
<option
value=����>����</option>
<option value=������>������</option>
<option
value=������>������</option>
<option value=�ؽ�>�ؽ�</option>
<option
value=��������>��������</option>
<option value=����������>����������</option>
<option
value=����>����</option>
</select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">ְҵ��</td>
              <td width="439" height="20" colspan="2">
                            
                    <select size="1" name="job" >
                      <option selected value="<%=rs("job")%>"><%=rs("job")%></option>
                      <OPTION>-----------��Ӫ/������----------- 
                      <OPTION value=(��/��)�ܲ�/�ܾ���/CEO>(��/��)�ܲ�/�ܾ���/CEO 
                      <OPTION value=��ҵ�߻� >��ҵ�߻� 
                      <OPTION value=Ͷ�ʹ��� >Ͷ�ʹ��� 
                      <OPTION value=��ܲ�����/��ҵ������� >��ܲ�����/��ҵ������� 
                      <OPTION value=��ҵ������Ա>��ҵ������Ա 
                      <OPTION value=�ʹܲ�����/�����������>�ʹܲ�����/����������� 
                      <OPTION value=�ʹ���Ա/��������ʦ >�ʹ���Ա/��������ʦ 
                      <OPTION value=��������/��Ŀ����/CTO >��������/��Ŀ����/CTO 
                      <OPTION value=��Ϣ����/CIO>��Ϣ����/CIO 
                      <OPTION>--------------������-------------- 
                      <OPTION value=�����ܼ�/����/������/����>�����ܼ�/����/������/���� 
                      <OPTION value=���ʦ >���ʦ 
                      <OPTION value=���>��� 
                      <OPTION value=����/���� >����/���� 
                      <OPTION value=ͳ�� >ͳ�� 
                      <OPTION value=��� >��� 
                      <OPTION>-----------����/ҵ����----------- 
                      <OPTION value=���۾���/������/���� >���۾���/������/���� 
                      <OPTION value=����/ó��/����ҵ�� >����/ó��/����ҵ�� 
                      <OPTION value=���۹���ʦ>���۹���ʦ 
                      <OPTION value=ҵ��Ա/ҵ����� >ҵ��Ա/ҵ����� 
                      <OPTION value=���� >���� 
                      <OPTION>--------------�г���-------------- 
                      <OPTION value=�г�����/������ >�г�����/������ 
                      <OPTION value=�г�/�����߻� >�г�/�����߻� 
                      <OPTION value=�г�����/ҵ����� >�г�����/ҵ����� 
                      <OPTION value=���ء����������� >���ء����������� 
                      <OPTION>--------------�����-------------- 
                      <OPTION value=����/ͼ����� >����/ͼ����� 
                      <OPTION value=������ >������ 
                      <OPTION value=�İ��߻� >�İ��߻� 
                      <OPTION value=��ҵ���/��Ʒ��� >��ҵ���/��Ʒ��� 
                      <OPTION value=��ý����������� >��ý����������� 
                      <OPTION value=װ����� >װ����� 
                      <OPTION value=����Ʒ���>����Ʒ��� 
                      <OPTION value=��֯��װ���>��֯��װ��� 
                      <OPTION value=�Ҿ�/�鱦��� >�Ҿ�/�鱦��� 
                      <OPTION value=���Ի�ͼ��Ա>���Ի�ͼ��Ա 
                      <OPTION>------------�ͻ�������------------ 
                      <OPTION value=�ͷ�������/������ >�ͷ�������/������ 
                      <OPTION value=����֧��/�ͻ���ѵ>����֧��/�ͻ���ѵ 
                      <OPTION value=�ͷ�/������ѯ>�ͷ�/������ѯ 
                      <OPTION value=ǰ̨/�Ӵ� >ǰ̨/�Ӵ� 
                      <OPTION>-----------����/������----------- 
                      <OPTION value=����/������Դ����>����/������Դ���� 
                      <OPTION value=����/������Ա>����/������Ա 
                      <OPTION value=Ա����ѵ��Ա>Ա����ѵ��Ա 
                      <OPTION value=��ҵ�Ļ�/����>��ҵ�Ļ�/���� 
                      <OPTION>--------------��ְ��-------------- 
                      <OPTION value=Ӣ�﷭�� >Ӣ�﷭�� 
                      <OPTION value=�������﷭�� >�������﷭�� 
                      <OPTION value=ͼ���鱨/���Ϲ��� >ͼ���鱨/���Ϲ��� 
                      <OPTION value=�������ϱ�д>�������ϱ�д 
                      <OPTION value=����/�߼���Ա >����/�߼���Ա 
                      <OPTION value=��Ա/���Դ���Ա/����Ա >��Ա/���Դ���Ա/����Ա 
                      <OPTION>-----------��ҵ/������----------- 
                      <OPTION value=����/������ >����/������ 
                      <OPTION value=��������>�������� 
                      <OPTION value=���̹���>���̹��� 
                      <OPTION value=Ʒ�ʹ��� >Ʒ�ʹ��� 
                      <OPTION value=���Ϲ��� >���Ϲ��� 
                      <OPTION value=�豸���� >�豸���� 
                      <OPTION value=�ɹ����� >�ɹ����� 
                      <OPTION value=�ֿ���� >�ֿ���� 
                      <OPTION value=�ƻ�Ա>�ƻ�Ա 
                      <OPTION value=���鹤��>���鹤�� 
                      <OPTION value=����>���� 
                      <OPTION value=�չ� >�չ� 
                      <OPTION>-----------����/������----------- 
                      <OPTION value=˾��>˾�� 
                      <OPTION value=����/��ʦ/��๤ >����/��ʦ/��๤ 
                      <OPTION value=����Ա>����Ա 
                      <OPTION value=ӪҵԱ>ӪҵԱ 
                      <OPTION>----------�����רҵ��Ա---------- 
                      <OPTION value=ϵͳ����Ա >ϵͳ����Ա 
                      <OPTION value=��������ԣ�����ʦ>��������ԣ�����ʦ 
                      <OPTION value=Ӳ�������ԣ�����ʦ >Ӳ�������ԣ�����ʦ 
                      <OPTION value=ϵͳ����ʦ/���� >ϵͳ����ʦ/���� 
                      <OPTION value=��վ�߻�/��Ϣ�༭ >��վ�߻�/��Ϣ�༭ 
                      <OPTION value=���ݿ⿪��/WEBӦ�ó������ >���ݿ⿪��/WEBӦ�ó������                      
                      <OPTION value=��ҳ���/�������� >��ҳ���/�������� 
                      <OPTION value=Internet/WEB/�������񿪷� >Internet/WEB/�������񿪷� 
                      <OPTION>-------����/ͨѶ��רҵ��Ա------- 
                      <OPTION value=���ӹ���ʦ >���ӹ���ʦ 
                      <OPTION value=����Ԫ��������ʦ >����Ԫ��������ʦ 
                      <OPTION value=�Զ����� >�Զ����� 
                      <OPTION value=���ܴ���/�ۺϲ���/����>���ܴ���/�ۺϲ���/���� 
                      <OPTION value=�����Ǳ�/���� >�����Ǳ�/���� 
                      <OPTION value=���� >���� 
                      <OPTION value=���� >���� 
                      <OPTION value=ͨѶ����ʦ >ͨѶ����ʦ 
                      <OPTION value=��Ƭ��/DSP/�ײ��������>��Ƭ��/DSP/�ײ��������
                      <OPTION value=OA�豸ά�޹���ʦ >OA�豸ά�޹���ʦ
                      <OPTION>-----------��еרҵ��Ա-----------
                      <OPTION value=��е����ʦ>��е����ʦ 
                      <OPTION value=ģ�߹���ʦ>ģ�߹���ʦ 
                      <OPTION value=���繤��ʦ>���繤��ʦ 
                      <OPTION value=���ֳ���/���������>���ֳ���/��������� 
                      <OPTION>-------���ز�/����רҵ��Ա------- 
                      <OPTION value=���ز�����/�߻�>���ز�����/�߻� 
                      <OPTION value=���ز�����/���� >���ز�����/���� 
                      <OPTION value=����/�ṹ����ʦ>����/�ṹ����ʦ 
                      <OPTION value=���̼���ʦ >���̼���ʦ 
                      <OPTION value=����Ԥ����>����Ԥ���� 
                      <OPTION value=����ˮ/ˮ�繤��ʦ >����ˮ/ˮ�繤��ʦ 
                      <OPTION value=����ůͨ>����ůͨ 
                      <OPTION value=��ҵ���� >��ҵ���� 
                      <OPTION>--------����/����רҵ��Ա-------- 
                      <OPTION value=����ҵ>����ҵ 
                      <OPTION value=֤ȯ�ڻ� >֤ȯ�ڻ� 
                      <OPTION value=����ҵ >����ҵ 
                      <OPTION value=˰����Ա >˰����Ա 
                      <OPTION value=��������/������Ա >��������/������Ա 
                      <OPTION>------�Ľ�����/����רҵ��Ա------ 
                      <OPTION value=����/����>����/���� 
                      <OPTION value=�㲥����/�Ļ����� >�㲥����/�Ļ����� 
                      <OPTION value=�ߵȽ��� >�ߵȽ��� 
                      <OPTION value=�еȽ���>�еȽ��� 
                      <OPTION value=Сѧ/�׶����� >Сѧ/�׶����� 
                      <OPTION value=ְҵ����/��ѵ/�ҽ�>ְҵ����/��ѵ/�ҽ� 
                      <OPTION value=������ >������ 
                      <OPTION value=����ҽ��>����ҽ�� 
                      <OPTION value=��ʦ/���ɹ���>��ʦ/���ɹ��� 
                      <OPTION>----------����ҵרҵ��Ա---------- 
                      <OPTION value=����/���� >����/���� 
                      <OPTION value=�Ƶ�/���� >�Ƶ�/���� 
                      <OPTION value=Ѱ��/��Ѷ>Ѱ��/��Ѷ 
                      <OPTION value=����������ҵ>����������ҵ 
                      <OPTION>----------����רҵ��Ա ---------- 
                      <OPTION value=����/��Դ>����/��Դ 
                      <OPTION value=����ѧ����>����ѧ���� 
                      <OPTION value=��������>�������� 
                      <OPTION value=������ҩ >������ҩ 
                      <OPTION value=��漼�� >��漼�� 
                      <OPTION value=���ż���>���ż��� 
                      <OPTION value=����/���й滮 >����/���й滮 
                      <OPTION value=����/���>����/��� 
                      <OPTION value=��ʳ/ʳƷ/�Ǿ�>��ʳ/ʳƷ/�Ǿ� 
                      <OPTION value=��֯��װ����>��֯��װ���� 
                      <OPTION value=��װ/ӡˢ/��ֽ>��װ/ӡˢ/��ֽ 
                      <OPTION value=ұ��/��Ϳ/�������� >ұ��/��Ϳ/�������� 
                      <OPTION value=��ȫ����>��ȫ���� 
                      <OPTION value=ũ������/԰��/԰��>ũ������/԰��/԰�� 
                      <OPTION value=��ͨ���䣨��½�գ�>��ͨ���䣨��½�գ� 
                    </select></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                ����״����</td>
              <td width="219" height="20">
                            
<select size=1 name=marital>
<option selected value="<%=rs("marital")%>"><%=rs("marital")%></option>
<option value=δ��>δ��</option>
<option
value=�ѻ�>�ѻ�</option>
<option value=����>����</option>
<option
value=ɥż>ɥż</option>
</select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                ���ѧ����</td>
              <td width="219" height="20">
                            
<select size=1 name=education>
<option selected value="<%=rs("education")%>"><%=rs("education")%></option>
<option value=Сѧ>Сѧ</option>
<option
value=����>����</option>
<option value=����>����</option>
<option
value=��ѧ>��ѧ</option>
<option value=˶ʿ>˶ʿ</option>
<option
value=��ʿ>��ʿ</option>
</select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="15">
                ��ҵԺУ��</td>
              <td width="219" height="15">
                            
<input type="text" name="college" size="18" maxlength="35" value="<%=rs("college")%>"></td>
              <td width="216" height="15"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="8">
                ���壺</td>
              <td width="219" height="8">
                            
<input type="text" name="minzu" size="18" maxlength="20" value="<%=rs("minzu")%>"></td>
              <td width="216" height="8"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">
                ���᣺</td>
              <td width="219" height="9">
                            
<input type="text" name="jiguan" size="18" value="<%=rs("jiguan")%>"></td>
              <td width="216" height="9"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="5">
                ��ߣ�</td>
              <td width="219" height="5">
                            
<select name=shengao size=1>
<option selected value="<%=rs("shengao")%>"><%=rs("shengao")%> CM</option>
            <% for io=145 to 210 %>  
            <option value='<%=io%>'><%=io%> CM</option>
            <%next%>
</select></td>
              <td width="216" height="5"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="6">
                ���أ�</td>
              <td width="219" height="6">
                            
<select name=tizhong size=1 >
<option selected value="<%=rs("tizhong")%>"><%=rs("tizhong")%> kg</option>
            <% for io=40 to 125 %>  
            <option value='<%=io%>'><%=io%> KG</option>
            <%next%>
</select></td>
              <td width="216" height="6"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">�������룺</td>
              <td width="219" height="20">
                            
            <input type="text" name="zip" size="6" size="6" maxLength=6 value="<%=rs("zip")%>" ><font color="#000080">#</font></td>
              <td width="216" height="20">��д��������</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">��ϵ�绰��</td>
              <td width="219" height="19">
                            
                  <input type="text" name="phone" size="19" maxLength=40 value="<%=rs("phone")%>" ><font color="#000080">#</font></td>
              <td width="216" height="19">Ҫд����Ŷ�磺010-62156424 </td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">QQ���룺</td>
              <td width="219" height="9">
                            
            <input type="text" name="oicq" size="9" size="6" maxLength=9 value="<%=rs("oicq")%>" ></td>
              <td width="216" height="9">��ѰQQ����</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="7">UC���룺</td>
              <td width="219" height="7">
                            
            <input type="text" name="UC" size="9" size="6" maxLength=9 value="<%=rs("uc")%>" ></td>
              <td width="216" height="7">����UC</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">ICQ���룺</td>
              <td width="219" height="19">
                            
            <input type="text" name="icq" size="9" size="6" maxLength=12 class="formb1" value="<%=rs("icq")%>"></td>
              <td width="216" height="19">ICQ����</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">
                MSN���룺</td>
              <td width="219" height="19">
                            
            <input type="text" name="MSN" size="9" size="6" maxLength=35 class="formb1" value="<%=rs("msn")%>"></td>
              <td width="216" height="19">MSN����</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">������ҳ��</td>
              <td width="219" height="19">
                            
                    <input type="text" name="www" size="26" size="6" maxLength=35 class="formb1" value="<%=rs("www")%>"></td>
              <td width="216" height="19">û�п��Բ���ע�������ˣ�</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="36">��Ч֤�����룺</td>
              <td width="219" height="36">
                            
                    <input type="text" name="zhengjian" size="28" maxLength=28 class="formb1" value="<%=rs("zhengjian")%>"><font color="#FF0000">*</font><font color="#000080">#</font></td>
              <td width="216" height="36">�����֤������֤��ѧ��֤ 
                ���һ��ʺ�<span lang="zh-cn">����</span>����󷽷�����<span lang="zh-cn"><font color="#E16906">[����Ϣ������]</font></span></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">���˽��ܣ�</td>
              <td width="439" height="113" colspan="2">
                            
                   <textarea rows="8" name="jianjie" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"><%=rs("jianjie")%></textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">
                ǩ������</td>
              <td width="439" height="113" colspan="2">
                            
                    <textarea rows="8" name="qianming" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"><%=rs("qianming")%></textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="109">�ԡ���</td>
              <td width="439" height="109" colspan="2">
                            
<input type="checkbox" value=" ��������" name="character" <%if InStr(rs("character"),"��������")>0 then response.write " checked"%>> ��������&nbsp;&nbsp;
<input type="checkbox" value=" ���ɵ�Ƥ" name="character" <%if InStr(rs("character"),"���ɵ�Ƥ")>0 then response.write " checked"%>> ���ɵ�Ƥ��
<input type="checkbox" value=" ��������" name="character" <%if InStr(rs("character"),"��������")>0 then response.write " checked"%>> ��������
<input type="checkbox" value=" ���ÿɰ�" name="character" <%if InStr(rs("character"),"���ÿɰ�")>0 then response.write " checked"%>> ���ÿɰ�
<input type="checkbox" value=" Ƣ������" name="character" <%if InStr(rs("character"),"Ƣ������")>0 then response.write " checked"%>> Ƣ������<br>
<input type="checkbox" value=" ������" name="character" <%if InStr(rs("character"),"������")>0 then response.write " checked"%>> �����ߡ�
<input type="checkbox" value=" ������" name="character" <%if InStr(rs("character"),"������")>0 then response.write " checked"%>> �����ʡ�
<input type="checkbox" value=" �ĵ�����" name="character" <%if InStr(rs("character"),"�ĵ�����")>0 then response.write " checked"%>> �ĵ�����
<input type="checkbox" value=" ��Ȥ��Ĭ" name="character" <%if InStr(rs("character"),"��Ȥ��Ĭ")>0 then response.write " checked"%>> ��Ȥ��Ĭ
<input type="checkbox" value=" ����˹��" name="character" <%if InStr(rs("character"),"����˹��")>0 then response.write " checked"%>> ����˹��<br>
<input type="checkbox" value=" ������ȡ" name="character" <%if InStr(rs("character"),"������ȡ")>0 then response.write " checked"%>> ������ȡ��
<input type="checkbox" value=" �����ѻ�" name="character" <%if InStr(rs("character"),"�����ѻ�")>0 then response.write " checked"%>> �����ѻ���
<input type="checkbox" value=" ��������" name="character" <%if InStr(rs("character"),"��������")>0 then response.write " checked"%>> ��������
<input type="checkbox" value=" Բ������" name="character" <%if InStr(rs("character"),"Բ������")>0 then response.write " checked"%>> Բ������
<input type="checkbox" value=" ���Ų��" name="character" <%if InStr(rs("character"),"���Ų��")>0 then response.write " checked"%>> ���Ų��<br>
<input type="checkbox" value=" �����쿪" name="character" <%if InStr(rs("character"),"�����쿪")>0 then response.write " checked"%>> �����쿪��
<input type="checkbox" value=" ����Ƹ�" name="character" <%if InStr(rs("character"),"����Ƹ�")>0 then response.write " checked"%>> ����ƸС�
<input type="checkbox" value=" ��������" name="character" <%if InStr(rs("character"),"��������")>0 then response.write " checked"%>> ��������
<input type="checkbox" value=" �������" name="character" <%if InStr(rs("character"),"�������")>0 then response.write " checked"%>> �������
<input type="checkbox" value=" ��С����" name="character" <%if InStr(rs("character"),"��С����")>0 then response.write " checked"%>> ��С����<br>
<input type="checkbox" value=" ѭ�浸��" name="character" <%if InStr(rs("character"),"ѭ�浸��")>0 then response.write " checked"%>> ѭ�浸�ء�
<input type="checkbox" value=" ��������" name="character" <%if InStr(rs("character"),"��������")>0 then response.write " checked"%>> �������ˡ�
<input type="checkbox" value=" ���Կ���" name="character" <%if InStr(rs("character"),"���Կ���")>0 then response.write " checked"%>> ���Կ���
<input type="checkbox" value=" ��������" name="character" <%if InStr(rs("character"),"��������")>0 then response.write " checked"%>> ��������
<input type="checkbox" value=" ׷��̼�" name="character" <%if InStr(rs("character"),"׷��̼�")>0 then response.write " checked"%>> ׷��̼�
                            
              </td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="30">���Ϲ�����</td>
              <td width="439" height="30" colspan="2">
                            
<select name=userDVD><option value="0">���������˿�</option>
<option value="1">ֻ������ѿ�</option>
<option value="2">�Ͻ����κ��˹���</option>
</select></td>
                      </tr>
                      <tr>
              <td width="529" height="8" colspan="3"></td>
                      </tr>
                      <tr>
              <td width="529" align="right" height="1" colspan="3" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
              <td width="529" align="right" height="21" colspan="3">
              <p align="center">  
                        <input class=put1 type="submit" value="��ȷ���޸ġ�" name="B1"> </td>
                      </tr>

                    </tbody>
                  </table>
                </td>
                <td width="18" valign="bottom" height="420">��</td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="544">��</td>
        </tr>
      </table>
      </CENTER>
          </DIV>
        </form>
                    
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="377" height="4" align="center">
          ��</td>
          </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="645" height="1"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="645"></td>
        </tr>
    <tr>
      <td width="645" height="19">��</td>
    </tr>
  </table>
  </center>
</div>

    <% 
    Call Closedb()
    
    Call endpage() %>