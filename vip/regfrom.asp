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


<% call top %>

<script language="javascript">
<!--
//����֤����ƽű����������忪������ӭ����ͬ���о����޸� - ��������

function isMail(address)
{
if (address=="") return false
if (address.indexOf("@")==-1||address.indexOf("@")==0||address.indexOf("@")==address.length-1) return false
if (address.indexOf("@")!=address.lastIndexOf("@")) return false
return true
}


function validstr(str)
{
  var s,i,j;

  if (str.value.length <1)
  {
	alert("���������Ĵ��������ֲ���Ϊ�գ�");
	str.focus();
    return false;
  }
  s=" +=|'#&<>%*`^/\\\";,.";
  str1=str.value.toString();
  for (i=0; i<str1.length; i++)
  {
	for(j=0;j<s.length;j++)
	{
	  if (str1.charAt(i) == s.charAt(j))
      {
		alert("�����в��ܰ��������ַ�: +=|'#&<>%*`^/\\\";,.�ո�");
 		str.focus();
    	return false;
   	  }
	}
  }
  return true;
}


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


	if(theform.name.value.length<1)	
	{
		alert("���ֲ���Ϊ��") ;
		theform.name.focus() ;
		return false;
	}
	str3=theform.name.value.toString().toLowerCase();
	if(str3.substring(0,5)=="guest")
	{
		alert("���ֲ�����guest��ͷ,����ѡ����");
		theform.name.focus() ;		
		return false;
	}
if(!validstr(theform.name))	return false ;

if (theform.name.value.length<2 || theform.name.value.length>12)
  {
    alert("�ʺ�����Ҫ2λ�����12λ��");
    theform.name.focus();
    return (false);
  }


if (theform.passwd.value.length<3 || theform.passwd.value.length>10)
  {
    alert("��������Ҫ3λ�����10λ�� ��");
    theform.passwd.focus();
    return (false);
  }
  
if (theform.question.value=="")
  {
    alert("û����д���ʵ����⣡");
    theform.question.focus();
    return (false);
  }
 
 if (theform.answer.value=="")
  {
    alert("û����д����Ĵ𰸣�");
    theform.answer.focus();
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
		
if (theform.shouji.value.length>0 && theform.shouji.value.length!=11)
  {
    alert("���ڵ��ֻ����������11λ������ȷ��д��\nҲ���Բ���д��\n��Թ����ֻ�����û�п�ͨ����ȴ���");
    theform.shouji.focus();
    return (false);
  }  
  
if (theform.ID0.value == "0")
  {
    alert("��ѡ������ ����!");
    theform.ID0.focus();
    return (false);
  }
  if (theform.ID1.value == "0")
  {
    alert("��ѡ������ ����!");
    theform.ID1.focus();
    return (false);
  }

if (theform.name2.value.length<2 && theform.ID2.value=="0")
  {
    alert("����д��ѡ������ʡ/�ݣ�");
    theform.ID1.focus();
    return (false);
  }

submitonce(theform)
return (true);
}
-->
</script>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="429">
    <tr>
      <td width="645" height="10"></td>
    </tr>
    <tr>
      <td width="645" height="430">
      <table cellSpacing="0" cellPadding="0" width="405" border="0" style="border-collapse: collapse" bordercolor="#111111" height="49">
        <tr>
          <td align="left" height="41" width="320"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font class="titletext" color="#ff0000">�����û�ע��� </font></b><font class="titletext" color="#ff0000">
          [�ڶ��� ������Ϣ]</font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="2" width="320"></td>
        </tr>
        <tr>
          <td height="6" width="320"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="464" border="0" height="71">
        <tr>
          <td vAlign="top" width="377" height="348">
          <p>
           
          
 <form method="POST" name="form" action="regfrom1.asp" onsubmit="return isok(this)">
    <DIV align=center> 
     <CENTER>
      <table width="445" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="445"> 
            <table width="505" border="0" cellspacing="1" cellpadding="0" height="427">
              <tr> 
                <td colspan="2" class="titletext" width="474" height="5"></td>
              </tr>
              <tr> 
                <td valign="top" height="420" width="447" align="right"> 
                
                  <table cellspacing=5 border=0 width="421" height="411">
                    <tbody>
                      <tr> 
                        <td width="65" height=19 align=right> �ʻ��� </td>
                        <td width="337" height=19 align=left> 
                        <input type="text" name="name" size="18" class=put maxlength="12"> 
                        3-12���ַ� <font color="#FF0000">
                        [��/Ӣ] *</font></td>  
                      </tr>
                      <tr> 
                        <td align=right height=19 width="65"> ���룺 </td>  
                        <td align=left height=19 width="337"> 
                        <input type="password" name="passwd" size="18" class=put maxlength="10"> 
                          <span lang="en-us">3-10</span>λ��<font color="#FF0000">*
                        </font>��</td>  
                      </tr>
                      <tr> 
                        <td align=right height=19 width="65"> ȷ�����룺 </td>
                        <td align=left height=19 width="337"> 
                        <input class=put type="password" name="passwd_two" size="18" maxlength="10">
                        <font color="#FF0000">* </font> 
                        </td>
                      </tr>
                      <tr> 
                        <td height=18 colspan="2" valign="bottom" width="409"><b><font color="#000000">��������ʱ������������</font></b></td>
                      </tr>
                      <tr> 
                        <td height=19 align="right" valign="bottom" width="65">���⣺ </td>
                        <td height=19 valign="bottom" width="337"> 
                        <input type="text" name="question" size="18" class=put maxlength="40" value="�ҵ����գ�">
                        <font color="#FF0000">* </font> 
                        <font color="#808080">������Ի�</font></td>
                      </tr>
                      <tr> 
                        <td height=19 align="right" valign="bottom" width="65">�𰸣� </td>
                        <td height=19 valign="bottom" width="337"> <input type="text" name="answer" size="18" class=put maxlength="40">
                        <font color="#FF0000">* </font> 
                        </td>
                      </tr>
					  <tr>
                        <td height=1 colspan=2 width="409"></td>
                      </tr>
                      <tr bgcolor="#FF99CC">
                        <td height=1 colspan=2 width="409"></td>
                      </tr>
                      <tr> 
                        <td height=38 colspan=2 valign="bottom" width="409"><strong><font color="#000000"><br>
                          ����ȷ��д���ĵ����ʼ���ַ���ֻ�,�Ա��һ�����ʹ��<br>
                        </font><font color="#CC33FF">�ֻ�������Ҫ���ڶ��ŵȷ���,ע�᲻��ȡ�κη��ã�<br>
                        �������д��ֻ���ڶ�����ط���ʱ�����ȡ����</font></strong></td>
                      </tr>
                      <tr> 
                        <td height=18 align="right" width="65">E-Mail��</td>
                        <td height=18 valign="bottom" width="337">
                        <input name="email" type="text" class=put size="36" maxlength="40"><font color="#FF0000"> 
                        * <br>
                        </font>���û���� 
                        <a href="http://mail.163.com" target="_blank">����</a>
                        <a href="http://cn.mail.yahoo.com/" target="_blank">�Ż�</a>
                        <a href="http://login.passport.net/uilogin.srf?id=2" target="_blank">
                        HOTMAIL</a>
                        <a href="http://mail.sina.com.cn" target="_blank">����</a>
                        <a href="http://mail.sohu.com" target="_blank">�Ѻ�</a>
                        <br>
                        ȫ��Ϊ��ѵ����ʼ�����&nbsp; ������ѡ��һ��</td>
                      </tr>
                      <tr>
                        <td height=28 align="right" valign="bottom" width="65">
                        �ֻ���</td>
                        <td height=28 valign="bottom" width="337">
                        <input name="shouji" type="text" class=put size="23" maxlength="13"> 
                        �ɲ���[<font color="#808080">������Ŀ</font>]</td>
                      </tr>
                      <tr>
                        <td height=1 width="402" colspan="2" bgcolor="#FF99CC"></td>
                        </tr>
                      <tr>
                        <td height=1 width="402" colspan="2">
                        <b>�û����ڵ���Ϣ</b>[�Ǽ���]</td>
                        </tr>
                      <tr>
                        <td height=25 width="65" align="right">
                        <font color="#008000">���ޣ�</font></td>
                        <td height=25 width="337">
<script>function SetCity(Select_1,Select_2){calling_list(Select_1.options[Select_1.options.selectedIndex].value, Select_2);return ;}function calling_list(CatID2,subTypeForm ){subTypeForm.length=0;switch ( CatID2 )
{<% 
Call OpenConn()
sql="select * from D_0 order by id0 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
case "<%=rs("id0")%>":
<% 
i=-1
sql2="select * from D_1  where id0="&rs("id0")&" order by id1 asc"
set rsr=conn.execute (sql2)
do while not (rsr.eof or err)
i=i+1
%>
subTypeForm.options[<%=i%>]=new Option("<%=rsr("name1")%>","<%=rsr("id1")%>");
<% rsr.moveNext
  loop
%>
subTypeForm.options[0].selected=true;break;
<% rs.moveNext
  loop
%>
break;	}return -1;}

//������
function letianform(intss){

	if (intss == '1')
	{
		this.document.all.name2s.style.display  = 'none';
		this.document.all.id2s.style.display  = '';
	}
	else {
		this.document.all.name2s.style.display  = '';
		this.document.all.id2s.style.display  = 'none';	
	}
}
</script>
<select name=ID0  onChange="SetCity(this,form.ID1);if(this.value==1)letianform('1');if(this.value!=1)letianform('0')">
<option value="0">ѡ�����</option>
<%
sql="select * from D_0 order by id0 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
<option value=<%=rs("id0")%>><%=rs("name0")%></option>
<% rs.moveNext
  loop
%>
</select> 

<font color="#FF0000">*
                        </font>

                        </td>
                        </tr>
                      <tr>
                        <td height=25 width="65" align="right">
                        <font color="#008000">���ң�</font></td>
                        <td height=25 width="337">
                        
                        <select name=ID1 onChange="if(this.value!=0)letianform(this.value);">
                        <option value="0">ѡ�����</option></select> 
                        <font color="#FF0000">
                        *
                        </font>
                        
                        </td>
                        </tr>
                      <tr>
                        <td height=29 width="65" align="right">
                        <font color="#008000">ʡ/�ݣ�</font></td>
                        <td height=29 width="337">
<span id="name2s" style="display: ; ">
                        <input type="text" name="name2" size="21"> 
</span>    
<span id="id2s" style="display: none; ">                 
<SELECT name=ID2>
<%
sql="select * from D_2 where id1=1 order by id2 asc"
set rsm=conn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<option value=<%=rsm("id2")%>><%=rsm("name2")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</SELECT> 
</span>  
<script>if(form.ID0.value!='0'&&form.ID1.value=='0'){SetCity(form.ID0,form.ID1);if(form.ID1.value=='1')letianform('1');}</script>
<font color="#FF0000"> ����*</font></td>
                        </tr>
                      <tr>
                        <td height=20 width="402" colspan="2">
                        ��</td>
                        </tr>
                      <tr>
                        <td height=2 align="right" width="402" colspan="2" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=1 colspan=2 align="center" valign="bottom" width="409"> 
                        <input class=put1 type="button" value="����һ����" name="B2" onClick="window.location.href='regadd.asp'">&nbsp;&nbsp; 
                        <input class=put1 type="submit" value="����һ����" name="B1">   
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
                <td width="96" valign="bottom" height="420"><img src="img/girl01.gif" width="61" height="200" border="0"></td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="445">��</td>
        </tr>
      </table>
      </CENTER>
          </DIV>
        </FORM>
          
          
          
          
          
          
          
          
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="377" height="2" align="center">
          </td>
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
      <td width="645" height="4"></td>
    </tr>
  </table>
  </center>
</div>

    <% 
    Call Closedb()
    
    call endpage() %>