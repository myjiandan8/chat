<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--ģ������#include file="../../INC/sysChat.asp" -->
<!--ģ������#include file="../../INC/sysBChat.asp" -->
<% Call quanxian(20) %>
<%


Set rs= Server.CreateObject("ADODB.Recordset")

if Request("setadm")<>"" and Request("muban")<>"" then

	bodycolor = trim(Request("bodycolor"))
	bodyurl = trim(Request("bodyurl"))
	bottomcolor = trim(Request("bottomcolor"))
	bottomurl = trim(Request("bottomurl"))
	topcolor = trim(Request("topcolor"))
	
	adnote = trim(Request("adnote"))
	scripturl = trim(Request("scripturl"))
	
	leaveurl = Request("leaveurl")
	fullurl = Request("fullurl")
	unauthurl = Request("unauthurl")
	setadm = Request("setadm")
	setimg = Request("setimg")
	setdoor = Request("setdoor")
	setsex = Request("setsex")

	channels = Request("channels")
	rtype = Request("rtype")

	muban = Request("muban")
	vms = Request("vms")
	
	if setadm<>"1" then setadm="0"
	if setimg<>"1" then setimg="0"
	if setsex<>"1" then setsex="0"
	if setdoor<>"1" then setdoor="0"
	if topcolor="" then topcolor="#EFF5FE"			'Ĭ�������б���������ɫ
	if bodycolor="" then bodycolor="#FFFFFF"		'Ĭ����������������ɫ
	if bottomcolor="" then bottomcolor="#EFF5FE"	'Ĭ��������������ɫ
	if adnote="" then adnote="<center>��ӭ����<font color=#ff0000><big>$1</big></font>�� ���������죬���𷢲��й�ɫ�顢���Ρ��ڿ͵ȵ���Ϣ��"


    sql="SELECT * from [Room] where port=" & port
	rs.open sql,Bchatconn,1,3
    
       rs("bodycolor") =bodycolor
       rs("bodyurl") =bodyurl
       rs("bottomcolor") =bottomcolor
       rs("bottomurl") =bottomurl
       
       rs("topcolor") =topcolor
       rs("adnote") =adnote
       rs("scripturl") =scripturl
       rs("leaveurl") =leaveurl
       rs("fullurl") =fullurl
       rs("unauthurl") =unauthurl
       
       rs("setadm") =setadm
       rs("setimg") =setimg
       rs("setdoor") =setdoor
       rs("setsex") =setsex
       rs("rtype") =rtype
       'rs("RoomType") =RoomType
       
       rs("muban") =muban
       rs("vms") =vms
       
       rs.Update
       rs.close
 
Call shujv()
 
'����·�����
Call callServer(sid)

'����ģ���ļ�
Call edit()

'дWEB���ݿ�
Call UpwebB(1)


Call errstr("�޸ĳɹ�����")

end if
%>




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>�������ù���</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

          <tr>
            <td width="586" bgcolor="#0075F7" height="28"><b>
            <font color="#FFFFFF">&nbsp; ��������</font></b></td>
          </tr>
          
          <tr>
            <td width="586" height="370" bgcolor="#FFFFFF" valign="top">
            

  <form name="form5" method="post" action="peizhi.asp">
                    
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="599" id="AutoNumber2" height="638">
          <tr>
	    <td width="20%" align=left height="16">�˿ںţ�</td>
	    <td width="476" height="16"> <%=id%>��</td>
	      </tr>
          <tr>
	    <td  align=left height="19">��������<font color=red>**</font>��</td>
	    <td height="19" > <%=roomname%>��</td>
	      </tr>
          <tr>
	    <td  align=left height="19">�����������<font color=red>**</font>��</td>
	    <td height="19" > <%=maxnum%>��</td>
	      </tr>
          <tr>
	    <td  align=left height="12" width="127">ģ��ѡ��</td>
	    <td height="12" width="476" > 
        
<select size="1" name="muban">

        <option value="0" <%if muban=0 then response.write "selected"%>>Ĭ��ģ��</option>
        <option value="1" <%if muban=1 then response.write "selected"%>>�Զ���ģ��</option>

        <option value="2" <%if muban=2 then response.write "selected"%>>[����]��׼ģ��</option>

        </select></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt">����������<font color=blue>**</font>��</td>
	    <td width="476" style="font-family: ����; font-size: 9pt" >����<input type="radio" name="rtype" value="T" <% if rtype="T" then response.write "checked" %> > ����<input type="radio" name="rtype" value="A" <% if rtype="A" then response.write "checked" %> > ��Ƶ<input type="radio" name="rtype" value="V" <% if rtype="V" then response.write "checked" %> checked  ><font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left height="1" width="127">����ģʽѡ��</td>
	    <td height="1" width="476" > 
        
<select size="1" name="vms">

        <option value="0" <%if vms=0 then response.write "selected"%>>ͨ�ñ��� 1.3Kbps ���ٱ��� ǿ���Ƽ� Ϊ�˱�֤�㷿�䲻����ѡ�����</option>
        <option value="1" <%if vms=1 then response.write "selected"%>>���ͻ������� 2.4Kbps ��������̫�� ���Ƽ�</option>

        <option value="2" <%if vms=2 then response.write "selected"%>>8KHz���������� 25Kbps �Ƽ� ���ʺܺ� ���ٶ���</option>
        <option value="3" <%if vms=3 then response.write "selected"%>>16KHz���������� 45Kbps ������� ���������϶�����</option>

        </select> �Ƽ�ʹ��ͨ�ñ��룬��Ϊ 45Kbps ������ �ܶ��˶����� ��Ҫ�ǵ��������ٶȵ����⡣</td>
	      </tr>
          <tr>
	    <td  align=left height="21">������������ɫ��</td>
	    <td height="21" ><input type="text" name="bodycolor" size="10"  maxlength=7 value="<%=bodycolor%>"> ���磺#FFFFFF��</td>
	      </tr>
          <tr>
	    <td  align=left height="40">����������ͼ��URL��</td>
	    <td height="40" ><input type="text" name="bodyurl" size="50" maxlength=80 value="<%=bodyurl%>"> <br>���� http://www.aaa.com/bbb.jpg��</td>
	      </tr>
          <tr>
	    <td  align=left height="21">������������ɫ��</td>
	    <td height="21" ><input type="text" name="bottomcolor" size="10" maxlength=7 value="<%=bottomcolor%>"> ���� #B4B4FE��</td>
	      </tr>
          <tr>
	    <td  align=left height="38">����������ͼ��URL��</td>
	    <td height="38" ><input type="text" name="bottomurl" size="50" maxlength=80 value="<%=bottomurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">�����б�����ɫ��</td>
	    <td height="21" >
        <input type="text" name="topcolor" size="13"  maxlength=7 value="<%=topcolor%>"> ���� #B4B4FE��</td>
	      </tr>
          <tr>
	    <td  align=left height="21">��ӭ�ʣ�</td>
	    <td height="21" >
        <textarea rows="3" name="adnote" cols="49"><%=adnote%></textarea> </td>
	      </tr>
          <tr>
	    <td  align=left height="40">�����ҽű�URL��</td>
	    <td height="40" >
        <br>
        <textarea rows="3" name="scripturl" cols="49"><%=scripturl%></textarea><br>
            <font color="#800000">����:</font><font color="#FF0000">&lt;SCRIPT src=http://xxx.xxx/xxx.js&gt;&lt;/SCRIPT&gt;</font>&nbsp;
        <br>
        ��Ҫ����&quot;�� ������&lt; &gt; Ҫ�ɶ�ʹ�� Ҫ���ͻ�ҳ�������</td>
	      </tr>
          <tr>
	    <td  align=left height="21">�뿪��URL��</td>
	    <td height="21" ><input type="text" name="leaveurl" size="50" maxlength=50 value="<%=leaveurl%>"> </td>
	      </tr>
          <tr>
	    <td  align=left height="21">��Ա��תURL<font color=blue>**</font>��</td>
	    <td height="21" ><input type="text" name="fullurl" size="50" maxlength=50 value="<%=fullurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left height="38">����Ȩ�û���¼��תURL<font color=blue>**</font>��</td>
	    <td height="38" ><input type="text" name="unauthurl" size="50" maxlength=50 value="<%=unauthurl%>" <%=temphidden%>> <font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ��־����Ա<font color=blue>**</font>��</td>
	    <td width="476" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setadm" value="1" <% if setadm=1 then response.write "checked" %> checked > ��<input type="radio" name="setadm" value="0" <% if setadm=0 then response.write "checked" %> >������Ա���ֺ�Ӻ��� 
		<font color="#FF0000">����ѡ���ǲſ�����ʾ���߹��� ����������</font>��<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ�����ͼ��<font color=blue>**</font>��</td>
	    <td width="476" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setimg" value="1" <% if setimg=1 then response.write "checked" %> > ��<input type="radio" name="setimg" value="0" <% if setimg=0 then response.write "checked" %> checked  >���Ƿ�����������������ͼ����<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ��������<font color=blue>**</font>��</td>
	    <td width="476" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setdoor" value="1" <% if setdoor=1 then response.write "checked" %> > ��<input type="radio" name="setdoor" value="0" <% if setdoor=0 then response.write "checked" %> checked >���Ƿ��������ִ�й��Ź��ܣ�<font color=green>**</font></td>
	      </tr>
          <tr>
	    <td  align=left width="123" style="font-family: ����; font-size: 9pt" height="20">�Ƿ������Ա�<font color=blue>**</font>��</td>
	    <td width="476" style="font-family: ����; font-size: 9pt" height="20" >��<input type="radio" name="setsex" value="1" <% if setsex=1 then response.write "checked" %> checked > ��<input type="radio" name="setsex" value="0"  <% if setsex=0 then response.write "checked" %> >�����������Ƿ���ʾ��Ϊ��ɫ��ŮΪ��ɫ������Ϊ��ɫ��<font color=green>**</font></td>
	      </tr>

          <tr>
	    <td  align=left width="593" style="font-family: ����; font-size: 9pt" colspan="2" height="57">
        1��<font color=red>**</font> ��־�����ʾ������д�<br>
	    2��<font color=blue>**</font> ��־�����ʾ����иĶ�����Ҫ���������ҽ��̲�����Ч��<br>
	    3��<font color=green>**</font> ��־��ʾ�˿ڵķ�0ID�ŵ����ò������޸ĵ��� </td>
	      </tr>

          <tr>
            <td width="593" height="37" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1">
  
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
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>