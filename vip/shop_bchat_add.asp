<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
if InStr(Request.ServerVariables("HTTP_REFERER"), ".com/vip/shop_bchat.asp")=0 then Call errstr("�����ȷ����ַ���뱾ҳ��\n"&Request.ServerVariables("HTTP_REFERER"))
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
end if

renshu=request("renshu")
shipin=request("shipin")
liti=request("liti")

if renshu="" or shipin="" or liti="" then Call errstr("�Ƿ���������")
jiage=renshu*6

if shipin=1 then jiage=jiage+renshu*3
if liti=1 then jiage=jiage+renshu*1

%>



<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�
function tians() // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.jiage.value=login.times.value*<%=jiage%>;
}
//-->
</SCRIPT>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>��������-�����������</TITLE>

<% call top %>
<base target="_blank">

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="478" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="478">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ [ <%=UN%> 
          ] ����</b>[��������������]<b>-����������� </b>
          ��������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="478"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="22" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="801">

     <% call caiwu %>

 <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="232">
          <tr>
            <td width="592" bgcolor="#800080" height="30"><b>
            <font color="#FFFFFF">��<a name="cp">��������Ʒ</a>��</font></b></td>
          </tr>

     <tr>
            <td width="592" height="82" align="center" bgcolor="#FFFFFF" valign="top">
            
                    

  <form name="login" method="post" action="shop_bchat_add_save.asp">
                    
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="588">
          <tr>
	    <td width="20%" align=right height="26">�������������</td>
	    <td width="262" height="16"> <%=renshu%>��
	    <input type="hidden" name="renshu" size="18" maxlength="10" value="<%=renshu%>"> 
	    <input type="hidden" name="shipin" size="18" maxlength="10" value="<%=shipin%>"> 
	    <input type="hidden" name="liti" size="18" maxlength="10" value="<%=liti%>"> 
	    </td>
	    <td width="66" height="16" align="right"> ����ʱ�䣺</td>
	    <td width="128" height="16"> <select size="1" name="times" onChange="tians();">
		<option value="1">1��</option>
		<option value="2">2��</option>
		<option value="3">3��</option>
		<option value="4">4��</option>
		<option value="5">5��</option>
		<option value="10">10��</option>
		</select></td>
	      </tr>
          <tr>
	    <td  align=right height="26"><font color="#FF0000">����֧��</font>��</td>
	    <td height="10" width="262" > �������� ������ <%if shipin=1 then response.write "����Ƶ"%>&nbsp; <%if liti=1 then response.write "������"%>  ��վ�ײ�һ</td>
	    <td height="10" width="66" align="right" > �۸�</td>
	    <td height="10" width="128" > 
		<input type="text" name="jiage" size="7" value="<%=jiage%>">Ԫ</td>
	      </tr>
          <tr>
	    <td  align=right height="26"><font color=red>**</font>����������</td>
	    <td height="19" colspan="3" > <%=roomname%><input type="text" name="roomname" size="22" maxlength=40 value="<%=roomname%>"> 
		���7�����ֻ���14Ӣ���ַ�</td>
	      </tr>
          <tr>
	    <td  align=right height="26">�����������룺</td>
	    <td height="2" width="445" colspan="3" > 
        <input type="text" name="userpasswd" size="19" maxlength=20 value="<%=userpasswd%>"></td>
	    	</tr>
			<tr>
	    <td  align=right height="26">���ù������룺</td>
	    <td height="13" width="445" colspan="3" > 
        <input type="text" name="userpasswd1" size="19" maxlength=20 value="<%=userpasswd1%>"></td>
	    	</tr>
			<tr>
	    <td  align=right height="30">�������������룺</td>
	    <td height="30" width="445" colspan="3" > 
        <input type="text" name="userpasswd2" size="19" maxlength=20 value="<%=userpasswd2%>"></td>
	    	</tr>
          <tr>
	    <td  align=right height="25" width="127">ģ��ѡ��</td>
	    <td height="25" width="455" colspan="3" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>Ĭ��ģ��</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>�Զ���ģ��</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[����]��׼ģ��</option>

        </select></td>
	      </tr>
          <tr>
	    <td  align=right height="26">������������ɫ��</td>
	    <td height="21" colspan="3" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> ���磺#FFFFFF��</td>
	      </tr>
          <tr>
	    <td  align=right height="26">����������ͼ��URL��</td>
	    <td height="40" colspan="3" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>���� http://www.aaa.com/bbb.jpg��</td>
	      </tr>
          <tr>
	    <td  align=right height="26">������������ɫ��</td>
	    <td height="21" colspan="3" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> ���� #B4B4FE��</td>
	      </tr>
          <tr>
	    <td  align=right height="26">����������ͼ��URL��</td>
	    <td height="38" colspan="3" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=right height="26">�����б�����ɫ��</td>
	    <td height="21" colspan="3" >
        <input type="text" name="topcolor" size="13"  maxlength=7 value="<%=topcolor%>"> ���� #B4B4FE��</td>
	      </tr>
          <tr>
	    <td  align=right height="26">��ӭ�ʣ�</td>
	    <td height="21" colspan="3" >
        <textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea><br>
		�Ͻ�����&lt;textarea&gt;���Ԫ�أ� ���Կ�ͨ������д ��</td>
	      </tr>
          <tr>
	    <td  align=right height="26">�����ҽű�URL��</td>
	    <td height="40" colspan="3" >
        <br>
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea><br>
            �Ͻ�����&lt;textarea&gt;���Ԫ�أ� ���Կ�ͨ������д ��</td>
	      </tr>
          <tr>
	    <td  align=right height="26">�뿪��URL��</td>
	    <td height="21" colspan="3" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=right height="26">��Ա��תURL<font color=blue>**</font>��</td>
	    <td height="21" colspan="3" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right height="26">����Ȩ�û���¼��תURL<font color=blue>**</font>��</td>
	    <td height="38" colspan="3" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: ����; font-size: 9pt" height="26">�Ƿ��־����Ա<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" colspan="3" >��<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> > ��<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >������Ա���ֺ����Ƿ�Ӻ��ǣ�<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: ����; font-size: 9pt" height="26">�Ƿ�����ͼ��<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" colspan="3" >��<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > ��<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %>  >���Ƿ�����������������ͼ����<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: ����; font-size: 9pt" height="26">�Ƿ��������<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" colspan="3" >��<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > ��<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> >���Ƿ��������ִ�й��Ź��ܣ�<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=right width="123" style="font-family: ����; font-size: 9pt" height="26">�Ƿ������Ա�<font color=blue>**</font>��</td>
	    <td width="450" style="font-family: ����; font-size: 9pt" height="20" colspan="3" >��<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> > ��<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >�����������Ƿ���ʾ��Ϊ��ɫ��ŮΪ��ɫ������Ϊ��ɫ��<font color=green>**</font></td>
	      </tr>

          <tr>
	    <td  align=left width="573" style="font-family: ����; font-size: 9pt" colspan="4" height="20">
        ��</td>
	      </tr>

          <tr>
            <td width="592" height="33" align="center" colspan="4" bgcolor="#FFFFFF">

            <input type="submit" value=" ȷ���ύ" name="B1">
  
            </td>
            </tr>

        </table>
        </center>
      </div>
            
</form> 
 
            
            
            
            
            
            </td>
     </tr>
        	</table>
        </center>
      </div>
          
      <br>
      

      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="19">��</td>
    </tr>
  </table>
  </center>
</div>



<%call endpage()
%>