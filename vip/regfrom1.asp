<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--#include file="top.asp"-->

<head>
<style>
<!--
TD			{FONT-SIZE: 12px; COLOR: #000000; WORD-BREAK: break-all; }
.text			{FONT-SIZE: 13px; line-height: 160%;font-family: "����"}
.en			{FONT-FAMILY: verdana; FONT-SIZE: 11px; }
-->
</style>
</head>

<%
name=trim(Request("name"))
passwd=trim(Request("passwd"))
passwd_two=trim(Request("passwd_two"))
question=trim(Request("question"))
answer=trim(Request("answer"))
email=trim(Request("email"))
shouji=trim(Request("shouji"))
id0=trim(Request("id0"))
id1=trim(Request("id1"))
id2=trim(Request("id2"))
name2=trim(Request("name2"))

if name="" or passwd="" or question="" or answer="" or email="" or id0="" or id1="" or (id2="" and name2="") then
errstr("����д������")
end if

if passwd<>passwd_two then
errstr("�����������벻��ȷ��")
end if

if CheckHtml(name) or CheckHtml(passwd) then
errstr("�û������������зǷ��ַ���")
end if

if not IsValidEmail(Email) then
errstr("�Ƿ��ĵ����ʼ���")
end if


replace_word="�����,��,TMD,fuck,bitch,shit,�����,�԰�,����,kao,falundafa,falun,������,վ��,Ѳվ,��ʲ,������,������,��,����Ƭ,����,[IMG]/upload/,[IMG],.jpg[/IMG],.gif[/IMG],[color=#,[/color],[,],"  
if InStr(replace_word,name & ",")>0 then
errstr("�û��к��зǷ��ַ���")
end if


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


%>
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>��д���������û�ע��</TITLE>

<% call top %>
<script src=../inc/birthday.js></script>
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


function isok(theform)
{


 if (theform.adminid.value.length!=4)
  {
    alert("����ȷ��д��֤�룡");
    theform.adminid.focus();
    return (false);
  } 


 if (theform.userDate.value=="")
  {
    alert("���ջ���Ҫ��д�ģ�");
    theform.userDate.focus();
    return (false);
  } 
  if (theform.cname.value=="")
  {
    alert("�˹�����������д����~~��");
    theform.cname.focus();
    return (false);
  } 
  

<% if id1<>1 then %> 

if (theform.name3.value.length<2)
  {
    alert("����д��ѡ�����ڵ�/�м�������");
    theform.name3.focus();
    return (false);
  }

if (theform.name4.value.length<2)
  {
    alert("����д��ѡ���������ؼ���ַ��");
    theform.name4.focus();
    return (false);
  }
  
if (theform.name3.value=="��д�ء��м�����")
  {
    alert("��ҪӦ�����ǣ�\n����д��ѡ�����ڵ�/�м�������");
    theform.name3.focus();
    return (false);
  }

if (theform.name4.value=="��д�С��ؼ�����")
  {
    alert("��ҪӦ�����ǣ�\n����д��ѡ���������ؼ���ַ��");
    theform.name4.focus();
    return (false);
  }
  
  
<% else %> 
if (theform.ID3.value=="0")
  {
    alert("����д��ѡ�����ڵ�/�м�������");
    theform.ID3.focus();
    return (false);
  }

if (theform.ID4.value=="0")
  {
    alert("����д��ѡ���������ؼ���ַ��");
    theform.ID4.focus();
    return (false);
  }

<% end if %> 

 if (theform.dizhi.value=="")
  {
    alert("��ַҪд��");
    theform.dizhi.focus();
    return (false);
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
          <td align="left" height="26" width="371"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font class="titletext" color="#ff0000">�����û�ע��� </font></b><font class="titletext" color="#ff0000">
          [������ ���˻�����Ϣ]</font></td>
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
           
          
<form method="POST" name="form" action="regsubmit.asp" onsubmit="return isok(this)" language="JavaScript">
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
                        <td width="225" height=24 align=left> 
                        <font color="#FF0000" size="2"><b> <%=name%> </b></font>
                        <input type="hidden" name="name" size="18" maxlength="10" value="<%=name%>"> 
                        <input type="hidden" name="passwd" size="18" maxlength="10" value="<%=passwd%>"> 
                        <input type="hidden" name="question" size="18" maxlength="40" value="<%=question%>">
                        <input type="hidden" name="answer" size="18" maxlength="40"  value="<%=answer%>">
                        <input type="hidden" name="email" maxlength="40" value="<%=email%>">
                        <input type="hidden" name="shouji" maxlength="40" value="<%=shouji%>">
                        <input type="hidden" name="id0" maxlength="40" value="<%=id0%>">
                        <input type="hidden" name="id1" maxlength="40" value="<%=id1%>">
                        <input type="hidden" name="id2" maxlength="40" value="<%=id2%>">
                        <input type="hidden" name="name2" maxlength="40" value="<%=name2%>">

                        </td>  
                        <td height="24" width="210">&nbsp;<font color="#FF0000">��ϲ���û�������ע�ᣡ</font></td>
                      </tr>
                      <tr>
                        <td width="107" height=27 align=right> ��֤�룺</td>
                        <td width="225" height=27 align=left> 
                            
            <input type="text" name="adminid" size="6" maxLength=4 >
<iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
<script>window.open("../inc/code_s.htm","I2")</script>
&nbsp;</td>  
                        <td height="27" width="210">&nbsp;<a target="I2" href="javascript:history.go(0)">����20��������
                        �õ�����֤��</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">��ʵ������</td>
              <td width="225" height="20">
                    <input type="text" name="cname" size="20" maxLength=20><font color="#FF0000">*</font></td>
              <td width="210" height="20">��</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">�Ա�</td>
              <td width="225" height="20">
          <select name="p1" size="1" onChange="showimage()" class="input1" tabindex="2">
          <option selected value="gg">��ʿ
          <option value="mm">Ůʿ</option>
          </select><font color=#FF0000>*</font></td>
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                �������ڣ�</td>
              <td width="439" height="20" colspan="2">
              &nbsp;����ȷ��д,�����ѵ�����:)
              <input onfocus="show_cele_date(userDate,'','',userDate)" value="" name="userDate" size="14"> <font color="#FF0000">* </font>&nbsp;</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="26">��������</td>
              <td width="225" height="26">
			<select name=p2 size=1 onChange="showimage()" class="input1" tabindex="3">
            <% for iok=1 to 174 %>  
            <option value='<%=iok%>'>���� <%=iok%></option>
            <%next%>
          </select><font color=#FF0000>*</font></td>
              <td width="210" height="26">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">�鿴������������</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="107">��</td>
              <td width="225" height="107">
                  <img src="img/gg1.gif" name="tus" alt="ѡ�����������" border="0" width="72" height="116"></td>
              <td width="210" height="107">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">�鿴������������</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="37">ͷ��</td>
              <td width="225" height="37">
                            
&nbsp;<img src="img/regfro1.gif" name="tusc">&nbsp;&nbsp;
<script>function show(){document.images.tusc.src="../pic/faces/"+document.form.icon.options[document.form.icon.selectedIndex].value+".gif";}</script>
<select name=icon size=1 onChange="show()">
<option value="">���</option>
            <% for io=1 to 84 %>  
            <option value='<%=io%>'><%=io%></option>
            <%next%>
</select>
			</td>
            <td width="210" height="37">&nbsp;<a href="JavaScript:New('face.htm')">�鿴���е�ͷ���б�</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">��Ф��</td>
              <td width="225" height="20">
                            
              <select name="snxiao">
              <option></option>
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
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">Ѫ�ͣ�</td>
              <td width="225" height="20">
                            
              <select name="blood">
              <option></option>
                <option value="A��">A��</option>
                <option value="B��">B��</option>
                <option value="AB��">AB��</option>
                <option value="O��">O��</option>
              </select></td>
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">������</td>
              <td width="439" height="20" colspan="2">
                            
              <select name="xingzuo">
               <option></option>
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
              <td width="225" height="20">
                            
<select size=1 name=belief>
<option selected></option>
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
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">ְҵ��</td>
              <td width="439" height="20" colspan="2">
                            
                    <select size="1" name="job" >
                      <OPTION selected></OPTION>
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
              <td width="225" height="20">
                            
<select size=1 name=marital>
<option selected></option>
<option value=δ��>δ��</option>
<option
value=�ѻ�>�ѻ�</option>
<option value=����>����</option>
<option
value=ɥż>ɥż</option>
</select></td>
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                ���ѧ����</td>
              <td width="225" height="20">
                            
<select size=1 name=education>
<option selected></option>
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
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="15">
                ��ҵԺУ��</td>
              <td width="225" height="15">
                            
<input type="text" name="college" size="18" maxlength="35"></td>
              <td width="210" height="15"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="8">
                ���壺</td>
              <td width="225" height="8">
                            
<input type="text" name="minzu" size="18" maxlength="20"></td>
              <td width="210" height="8"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">
                ���᣺</td>
              <td width="225" height="9">
                            
<input type="text" name="jiguan" size="18"></td>
              <td width="210" height="9"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="5">
                ��ߣ�</td>
              <td width="225" height="5">
                            
<select name=shengao size=1>
<option value=""></option>
            <% for io=145 to 210 %>  
            <option value='<%=io%>'><%=io%> CM</option>
            <%next%>
</select></td>
              <td width="210" height="5"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="6">
                ���أ�</td>
              <td width="225" height="6">
                            
<select name=tizhong size=1 >
<option value=""></option>
            <% for io=40 to 125 %>  
            <option value='<%=io%>'><%=io%> KG</option>
            <%next%>
</select></td>
              <td width="210" height="6"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="46" rowspan="2">���ڵأ�</td>
              <td width="439" height="17" colspan="2">
                            
 <b><%=DM_NAME(id0,0)%> &nbsp;<%=DM_NAME(id1,1)%>&nbsp;
 <% if id1=1 then 
	Response.Write DM_NAME(id2,2)
	else
	Response.Write name2
	end if
%>
 
 &nbsp; 
 </b><font color="#808080">[���ַ�����뵽<a href="#" onClick="history.go(-1)">��һ��</a>��ѡ] </font>


              </td>
                      </tr>
                      <tr>
              <td width="439" height="29" colspan="2">


<% if id1<>1 then %>              

<input type="text" name="name3" size="18" value="��д�ء��м�����" onFocus="if (value =='��д�ء��м�����'){value =''}" onBlur="if (value ==''){value='��д�ء��м�����'}" > 
<input type="text" name="name4" size="18" value="��д�С��ؼ�����" onFocus="if (value =='��д�С��ؼ�����'){value =''}" onBlur="if (value ==''){value='��д�С��ؼ�����'}" >
<font color="#6B6D6B">[���ڵ��ػ����������ҵ���]</font>

<% else %>
<script>function SetCity(Select_1,Select_2){calling_list(Select_1.options[Select_1.options.selectedIndex].value, Select_2);return ;}function calling_list(CatID2,subTypeForm ){subTypeForm.length=0;switch ( CatID2 )
{<% 

sql="select * from D_3 where id2="&id2&" order by ID3 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
case "<%=rs("ID3")%>":
<% 
i=-1
sql2="select * from D_4  where ID3="&rs("ID3")&" order by ID4 asc"
set rsr=conn.execute (sql2)
do while not (rsr.eof or err)
i=i+1
%>
subTypeForm.options[<%=i%>]=new Option("<%=rsr("name4")%>","<%=rsr("ID4")%>");
<% rsr.moveNext
  loop
%>
subTypeForm.options[0].selected=true;break;
<% rs.moveNext
  loop
%>
break;	}return -1;}

 </script>

<select name=ID3  onChange="SetCity(this,form.ID4);">
<option value="0">��ѡ����м�����</option>
<%
sql="select * from D_3 where id2="&id2&" order by ID3 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
<option value=<%=rs("ID3")%>><%=rs("name3")%></option>
<% rs.moveNext
  loop
%>
</select><select name=ID4><option value="0">��ѡ���С��ؼ�����</option></select>
<script>if(form.ID3.value!='0'&&form.ID4.value=='0')SetCity(form.ID3,form.ID4);</script>
<% end if %>         
��</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">�ֵ���ַ��</td>
              <td width="225" height="20">
                            
                  <input type="text" name="dizhi" size="26" maxLength=40><font color="#FF0000">*</font><font color="#000080">#</font></td>
              <td width="210" height="20">
                            
              ��д�ֵ������ƺ� <font color="#000080">#Ϊ�ɱ�����Ŀ</font></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">�������룺</td>
              <td width="225" height="20">
                            
            <input type="text" name="zip" size="6" size="6" maxLength=6 ><font color="#000080">#</font></td>
              <td width="210" height="20">��д��������</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">��ϵ�绰��</td>
              <td width="225" height="19">
                            
                  <input type="text" name="phone" size="19" maxLength=40 ><font color="#000080">#</font></td>
              <td width="210" height="19">Ҫд����Ŷ�磺010-62156424 </td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">QQ���룺</td>
              <td width="225" height="9">
                            
            <input type="text" name="oicq" size="12" size="6" maxLength=9 ></td>
              <td width="210" height="9">��ѰQQ����</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="7">UC���룺</td>
              <td width="225" height="7">
                            
            <input type="text" name="UC" size="12" size="6" maxLength=9 ></td>
              <td width="210" height="7">����UC</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">ICQ���룺</td>
              <td width="225" height="19">
                            
            <input type="text" name="icq" size="12" size="6" maxLength=12 class="formb1"></td>
              <td width="210" height="19">ICQ����</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">
                MSN���룺</td>
              <td width="225" height="19">
                            
            <input type="text" name="MSN" size="28" size="6" maxLength=35 class="formb1"></td>
              <td width="210" height="19">MSN����</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">������ҳ��</td>
              <td width="225" height="19">
                            
                    <input type="text" name="www" size="28" size="6" maxLength=35 class="formb1" value="http://"></td>
              <td width="210" height="19">û�п��Բ���ע�������ˣ�</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="36">��Ч֤�����룺</td>
              <td width="225" height="36">
                            
                    <input type="text" name="zhengjian" size="28" maxLength=28 class="formb1"><font color="#FF0000">*</font><font color="#000080">#</font></td>
              <td width="210" height="36">�����֤������֤��ѧ��֤ 
                ���һ��ʺ�<span lang="zh-cn">����</span>����󷽷�����<span lang="zh-cn"><font color="#E16906">[����Ϣ������]</font></span></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">���˽��ܣ�</td>
              <td width="439" height="113" colspan="2">
                            
                   <textarea rows="8" name="jianjie" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1">��һ������ʲôҲû�����£�</textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">
                ǩ������</td>
              <td width="439" height="113" colspan="2">
                            
                    <textarea rows="8" name="qianming" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"></textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="109">�ԡ���</td>
              <td width="439" height="109" colspan="2">
                            
<input type="checkbox" value=" ��������" name="character"> ��������&nbsp;&nbsp;
<input type="checkbox" value=" ���ɵ�Ƥ" name="character"> ���ɵ�Ƥ��
<input type="checkbox" value=" ��������" name="character"> ��������
<input type="checkbox" value=" ���ÿɰ�" name="character"> ���ÿɰ�
<input type="checkbox" value=" Ƣ������" name="character"> Ƣ������<br>
<input type="checkbox" value=" ������" name="character"> �����ߡ�
<input type="checkbox" value=" ������" name="character"> �����ʡ�
<input type="checkbox" value=" �ĵ�����" name="character"> �ĵ�����
<input type="checkbox" value=" ��Ȥ��Ĭ" name="character"> ��Ȥ��Ĭ
<input type="checkbox" value=" ����˹��" name="character"> ����˹��<br>
<input type="checkbox" value=" ������ȡ" name="character"> ������ȡ��
<input type="checkbox" value=" �����ѻ�" name="character"> �����ѻ���
<input type="checkbox" value=" ��������" name="character"> ��������
<input type="checkbox" value=" Բ������" name="character"> Բ������
<input type="checkbox" value=" ���Ų��" name="character"> ���Ų��<br>
<input type="checkbox" value=" �����쿪" name="character"> �����쿪��
<input type="checkbox" value=" ����Ƹ�" name="character"> ����ƸС�
<input type="checkbox" value=" ��������" name="character"> ��������
<input type="checkbox" value=" �������" name="character"> �������
<input type="checkbox" value=" ��С����" name="character"> ��С����<br>
<input type="checkbox" value=" ѭ�浸��" name="character"> ѭ�浸�ء�
<input type="checkbox" value=" ��������" name="character"> �������ˡ�
<input type="checkbox" value=" ���Կ���" name="character"> ���Կ���
<input type="checkbox" value=" ��������" name="character"> ��������
<input type="checkbox" value=" ׷��̼�" name="character"> ׷��̼�
                            
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
                        <input class=put1 type="button" value="����һ����" name="B2" onClick="history.go(-1)">&nbsp;&nbsp; 
                        <input class=put1 type="submit" value="����һ����" name="B1"> </td>
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
    
    call endpage() %>