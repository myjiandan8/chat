<!--#include file="top.asp"-->
<%
call top()
%>
<title>�����ұ���</title>
<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

function tian() // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	var m=login.renshu.value*6;
	if(login.shipin.value==1){m=m+login.renshu.value*3};
	if(login.liti.value==1){m=m+login.renshu.value*1};
	login.m.value=m;
}

function yuyin(sx) // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.renshu.value=sx;
	//login.liti.value=1;
	tian();
}

function shipins(sx) // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.renshu.value=sx;
	login.shipin.value=1;
	tian();
}

function litis(sx) // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	login.renshu.value=sx;
	login.liti.value=1;
	tian();
}

//-->
</SCRIPT>
<link rel="stylesheet" href="../chat/Sams.css" type="text/css">
<SCRIPT language=javascript>
<!--
//���뿪ʼ �ű���ƣ�����Ƽ�

function tian() // ����۸�ѧϰJS���ҳ����Լ�дд������Ϊ��Ϊһ������Ա��Щ���������Լ�ԭ��
{
	var m=login.renshu.value*6;
	if(login.shipin.value==1){m=m+login.renshu.value*3};
	if(login.liti.value==1){m=m+login.renshu.value*1};
	login.m.value=m;
}

//-->
</SCRIPT>
<div align="center">
	<table border="0" width="582" id="table1" cellspacing="0" cellpadding="0" height="697">
		<tr>
			<td height="29">
			<b>����������������&nbsp; </b><font color="#FF0000">[������Ϥ���Ľ磬���Ƿ����רҵ��]</font></td>
		</tr>
  <tr> 
    <td height="1" background="../chat/images/dotlineh.gif"></td>
  </tr>
		<tr>
			<td height="7">
			<p><br>
&nbsp;&nbsp;&nbsp; ����������ռ䣬���Լ�����������ת���ߡ��Žű������Լ�����<br>
&nbsp;&nbsp;&nbsp; ��̬�ռ������ͨ�����ϣ����������ѡ��<br>
��</td>
		</tr>
		<tr>
			<td height="606" align="center" valign="top">

     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="105">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="7">
            <font color="#FFFFFF"><b>
            ����������</b></font></td>
          </tr>
          <tr>
          
            <td width="70" height="29" align="center"><b>�ռ�����</b></td>
            <td width="71" height="29" align="center"><b>��̬�ռ�</b></td>
            <td width="141" height="29" align="center"><b>֧��ASP/PHP/CGI</b></td>
            <td width="72" height="29" align="center"><b>MS|MY-SQL</b></td>
            <td width="59" height="29" align="center"><b>������</b></td>
            <td width="60" height="29" align="center"><b>����</b></td>
            <td width="89" height="29" align="center"><b>��������</b></td>
            
          </tr>
<%
i=50
do while (i<501) %>
          <tr>
            <td width="70" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>M</td>
            <td width="71" height="23" align="center" bgcolor="#F9F9F7">
			<b><font color="#FF0000"><%=i*1%></font></b>Ԫ/�� 
			��</td>
            <td width="141" height="23" align="center" bgcolor="#F9F9F7">
			��<b><font color="#FF0000"><%=i*2%></font></b>Ԫ/��
			��</td>
            <td width="72" height="23" align="center" bgcolor="#F9F9F7">
			��<b><font color="#FF0000"><%=i*1%></font></b>Ԫ/��
			��</td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			FTP</td>
            <td width="60" height="23" align="center" bgcolor="#F9F9F7">
			&nbsp;- -</td>
            <td width="89" height="23" align="center" bgcolor="#F9F9F7">
			��<%=i/50%></td>
          </tr>
<%
 i=i+50
 loop %>
     <tr>
            <td width="592" height="20" align="center" colspan="7" bgcolor="#FFFFFF">
            <p align="left"><b><font color="#FF0000">�ر��Żݣ�</font></b><font color="#FF0000">��2005��1��20��֮ǰ����
			�����в�Ʒ<b> 8.5 </b>��&nbsp; ��Ѽ���֧�ְ�װ [��̳] [���԰�] </font></td>
     </tr>        </table>
        </center>
      </div>
      
      <br><br>
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="157">
          <tr>
            <td width="592" bgcolor="#800080" height="30">
            <font color="#FFFFFF"><b>
            ��<a name="tc">��������</a></b></font></td>
          </tr>


        	<tr>
<td align="middle" bgColor="#D4D0C8" width="66" height="20">
							<div align="center">
							<table class="size09" borderColor="#888888" cellSpacing="0" borderColorDark="#FFFFFF" cellPadding="3" width="580" border="1" id="table7">
								<tr>
									<td class="color01" align="middle" width="33%">
									Ӣ�Ĺ�������[com,net,org]</td>
									<td align="middle" width="14%">100.00Ԫ</td>
									<td class="color01" align="middle" width="33%">
									���Ĺ�������[����.com ^]</td>
									<td align="middle" width="14%">180.00Ԫ</td>
								</tr>
								<tr>
									<td class="color01" align="middle" width="33%">
									Ӣ�Ĺ�������[^^.cn,.cn]</td>
									<td align="middle" width="14%">160.00Ԫ</td>
									<td class="color01" align="middle" width="33%">
									Ӣ��CC����[����.CC ^]</td>
									<td align="middle" width="14%">300.00Ԫ</td>
								</tr>
								<tr>
									<td class="color01" align="middle" width="33%">
									BIZ��������[.biz]</td>
									<td align="middle" width="14%">160.00Ԫ</td>
									<td class="color01" align="middle" width="33%">
									INFO��������[����.INFO ^]</td>
									<td align="middle" width="14%">180.00Ԫ</td>
								</tr>
								<tr>
									<td class="color01" align="middle" width="33%">
									����ͨ������</td>
									<td align="middle" width="14%">240.00Ԫ</td>
									<td class="color01" align="middle" width="33%">
									��</td>
									<td class="color01" align="middle" width="14%">
									��</td>
								</tr>
							</table></div>
</td>
						</tr>



        	<tr>
            <td width="592" height="41" bgcolor="#FFFFFF">

            <b><font color="#FF0000">�ر��Żݣ�</font></b><font color="#FF0000">��2005��1��20��֮ǰ����
			�����в�Ʒ<b> 8.5 </b>��<br>
			<b>�ر���ʾ��</b>�ռ�ʹ����Ƶ������߷���������Ҫ���ķ����ٶȣ��ռ�֧������������</font></td>
     		</tr>

        </table>
        </center>
      </div>
      <br><br>
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="125">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            ��<a name="buzhou">������ϵ</a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="78" bgcolor="#FFFFFF" valign="top">
            <div align="center">
				<table border="0" width="80%" id="table8" cellspacing="1">
					<tr>
						<td>��</td>
					</tr>
					<tr>
						<td><font face="Arial" color="#6b6d6b">
						�ͷ��绰��010-65917578&nbsp;&nbsp; 81430388&nbsp;&nbsp; QQ 779811&nbsp;&nbsp; 
						79152678</font></td>
					</tr>
					<tr>
						<td>�� ϵ �ˣ���־�� [����]</td>
					</tr>
					<tr>
						<td>7*24Сʱ����</td>
					</tr>
				</table>
			</div>
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="21" bgcolor="#FFFFFF">

            				��</td>
     		</tr>

        </table>
        </center>
      </div>
      <br>
      
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="159">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            <a name="ww">����ʽ</a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="29" bgcolor="#FFFFFF">
            ȫ���������ж����Ի�����</td>
     		</tr>
        	<tr>
            <td width="592" height="71" bgcolor="#FFFFFF" valign="top">
            <br>
&nbsp;&nbsp;&nbsp;&nbsp; ɽ��ʡũҵ���� <br>
&nbsp;&nbsp;&nbsp;&nbsp; ���� 95599 8090 03400 67512<br>
&nbsp;&nbsp;&nbsp;&nbsp; ���� ��־�� <br>
&nbsp;&nbsp;&nbsp; -------------------------------------<br>
&nbsp;&nbsp;&nbsp;&nbsp; <font color="#008000">��ʾ�����������Ʊ������ִСƱ�����ⷢ������Ҫ����ʧ��<br>
&nbsp;&nbsp;&nbsp;&nbsp; </font> <font color="#FF0000">��ʾ�����
			ʱ����һ����ͷ������ȷ�ϱ��磺100Ԫ.��100.08Ԫ</font><font color="#008000"><br>
��</font></td>
			<br>
��</td>
     		</tr>
        	<tr>
            <td width="592" height="18" bgcolor="#FFFFFF">

            				��</td>
     		</tr>

        </table>
        </center>
      </div>
      		</td>
				</tr>

			</td>
		</tr>
		<tr>
			<td height="11"></td>
		</tr>
	</table>
</div>
<%call endpage()
%>