<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--�û�Ȩ���ļ�#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<!--#include file="shop_inc.asp"-->
<%
if UN<>""then
	sql="select name,sex,pic from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=�Ƿ�������"
		response.end
	end if
end if
%>
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
<STYLE type=text/css>
.txtbody {
SCROLLBAR-FACE-COLOR:#D3FF23; SCROLLBAR-HIGHLIGHT-COLOR:#D3FF23; SCROLLBAR-SHADOW-COLOR: #ffffff; SCROLLBAR-3DLIGHT-COLOR: #D3FF23; SCROLLBAR-ARROW-COLOR: #9DC207; SCROLLBAR-TRACK-COLOR: #ffffff; SCROLLBAR-DARKSHADOW-COLOR: #D3FF23; border: 1px #9DC207 solid
}
</STYLE>

          
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>�����Ҳ�Ʒ���� - �����������</TITLE>

<% call top %>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="592" id="AutoNumber1" height="289">
    <tr>
      <td width="87%" height="1">
      
      
      <table cellPadding="0" width="542" border="0" style="border-collapse: collapse" bordercolor="#111111" height="38">
        <tr>
          <td align="left" height="1" width="542">
          <img border="0" src="img/Main_01.gif"><font class="titletext" color="#ff0000"><b>��ӭ [ <%=UN%> 
          ] ����</b>[����������]<b>-����������� </b>
          ��������ID:<%=UID%></font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="542"></td>
        </tr>

      </table>
      
      
      </td>
    </tr>
    <tr>
      <td width="87%" height="30" valign="top">

      </td>
    </tr>
    <tr>
      <td width="87%" height="322">
      
 <% call caiwu %>
      

     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="187">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="8">
            <font color="#FFFFFF"><b>
            ��<a name="cp">BChat</a>[<a name="js">��</a>��]��Ƶ���������� [1001]��</b>�������Ҫ���ϵͳ���Զ�����۸�</font></td>
          </tr>
          <tr>
          
            <td width="68" height="23" align="center"><b>��������</b></td>
            <td width="79" height="23" align="center"><b>����</b></td>
            <td width="88" height="23" align="center"><b>װ��Ƶ</b></td>
            <td width="84" height="23" align="center"><b>װ������</b></td>
            <td width="52" height="23" align="center"><b>����Ƶ</b></td>
            <td width="52" height="23" align="center"><b>������</b></td>
            <td width="59" height="23" align="center"><b>�ű��ռ�</b></td>
            <td width="59" height="23" align="center"><b>�����ײ�</b></td>
            
          </tr>
<%
i=30
do while (i<61) %>
          <tr>
            <td width="68" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>��</td>
            <td width="79" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:yuyin(<%=i%>);" title="�����������<%=i%>�˵����������Ҽ۸�"><b><font color="#FF0000"><%=i*6%></font></b>Ԫ/��</a> 
			��</td>
            <td width="88" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="�����������<%=i%>�˼���Ƶ���ܵ����������Ҽ۸�">��<b><font color="#FF0000"><%=i*3%></font></b>Ԫ/��</a>
			��</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="�����������<%=i%>�˼����������ܵ����������Ҽ۸�">��<b><font color="#FF0000"><%=i%></font></b>Ԫ/��</a>
			��</td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">3</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#tc"><font color="#006600">�ײ�һ</font></a></td>
          </tr>
<%
 i=i+30
 loop %>
<%
i=100
do while (i<501) %>

          <tr>
            <td width="68" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000"><b><%=i%></b></font>��</td>
            <td width="79" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:yuyin(<%=i%>);" title="�����������<%=i%>�˵����������Ҽ۸�"><b><font color="#FF0000"><%=i*6%></font></b>Ԫ/��</a> 
			��</td>
            <td width="88" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:shipins(<%=i%>);" title="�����������<%=i%>�˼���Ƶ���ܵ����������Ҽ۸�">��<b><font color="#FF0000"><%=i*3%></font></b>Ԫ/��</a>
			��</td>
            <td width="84" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#js" onclick="javascript:litis(<%=i%>);" title="�����������<%=i%>�˼����������ܵ����������Ҽ۸�">��<b><font color="#FF0000"><%=i%></font></b>Ԫ/��</a>
			��</td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="52" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">3</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<font color="#008000">���</font><b><font color="#FF0000">2</font></b><font color="#008000">��</font></td>
            <td width="59" height="23" align="center" bgcolor="#F9F9F7">
			<a href="#tc"><font color="#006600">�ײ�һ</font></a></td>
          </tr>
<%
 i=i+50
 loop %>
     <tr>
            <td width="592" height="57" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left">&nbsp;<font color="#008000"><a name="jss">�۸���㹫ʽ</a>�� </font>[��&nbsp;&nbsp;&nbsp; 
			��]<b> </b>����������� x ��6<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[�� �� Ƶ]<b> </b>����������� x ��3<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[��������]<b> </b>����������� x ��1&nbsp;&nbsp;&nbsp; 
			֧���Զ�������</td>
     </tr>
        	<tr>
            <td width="592" height="13" align="center" colspan="8" bgcolor="#FFFFFF">
            <table border="0" width="100%" id="table8" cellspacing="1" height="26">
<form name="login" id="login" action="shop_bchat_add.asp" method="post">
						<tr>
							<td width="67" height="26"><font color="#008000">
							�۸���㣺</font></td>
							<td height="26" width="298">
							<select size="1" name="renshu" onChange="tian();">
<%
i=30
do while (i<1001) %>
							<option style="color: #0000ff" value=<%=i%>>��������<%=i%>��</option>
<%
 i=i+1
 loop %>					
							</select><select size="1" name="shipin" onChange="tian();">
							<option style="color: #ff0000" value="0">����װ��Ƶ</option>
							<option style="color: #008000" value="1">��װ��Ƶ</option>
							</select><select size="1" name="liti" onChange="tian();">
							<option style="color: #ff0000" value="0">����װ������</option>
							<option style="color: #008000" value="1">��װ������</option>
							</select></td>

							<td width="136" height="26"><input style="color: #0000ff" type="text" name="m" size="8" value="180">Ԫ/��</td>
							<td width="64" height="26">
							<p align="left">
							<input type="submit" value="��������" name="B1"></td>
						</tr>
</form>
					</table>

            </td>
     		</tr>
     <tr>
            <td width="592" height="26" align="center" colspan="8" bgcolor="#FFFFFF">
            <p align="left"><b><font color="#FF0000">�ر��Żݣ�</font></b><font color="#FF0000">��2005��1��20��֮ǰ�����κ�һ�������Ҳ�Ʒ������ѻ���[�ײ�һ]һ�����</font></td>
     </tr>        </table>
        </center>
      </div>
      
      <br><br>
      
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="30" colspan="9">
            <font color="#FFFFFF"><b>
            ��<a name="tc">��վ�ײ�</a></b></font></td>
          </tr>


        	<tr>
<td align="middle" bgColor="#D4D0C8" width="66" height="26">
							<b>�ײ�����</b></td>
							<td align="middle" bgColor="#D4D0C8" width="64" height="26">
							<b>��վ</b></td>
							<td align="middle" bgColor="#D4D0C8" width="74" height="26">
							<b>���</b></td>
							<td align="middle" bgColor="#D4D0C8" width="79" height="26">
							<b>����ϵͳ</b></td>
							<td align="middle" bgColor="#D4D0C8" width="79" height="26">
							<b>����ϵͳ</b></td>
							<td align="middle" bgColor="#D4D0C8" width="72" height="26">
							<b>��̳</b></td>
							<td align="middle" bgColor="#D4D0C8" width="71" height="26">
							<b>�ű��ռ�</b></td>
							<td align="middle" bgColor="#D4D0C8" width="53" height="26">
							<b>�ܼ�</b></td>
						</tr>



						<tr>
							<td align="middle" width="66" height="26" bgcolor="#FFFFFF">
							�ײ�һ</td>
							<td align="middle" width="64" height="26" bgcolor="#FFFFFF">
							<font color="#000080">100Ԫ</font> </td>
							<td align="middle" width="74" height="26" bgcolor="#FFFFFF">
							<font color="#000080">260Ԫ</font><font color="#008000">[100P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">160Ԫ</font><font color="#008000">[300P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">80Ԫ</font><font color="#008000">[200P]</font></td>
							<td align="middle" width="72" height="26" bgcolor="#FFFFFF">
							<font color="#000080">360Ԫ</font><font color="#008000">[8B]</font></td>
							<td align="middle" width="71" height="26" bgcolor="#FFFFFF">
							<font color="#000080">60Ԫ</font><font color="#008000">[2P]</font></td>
							<td align="middle" width="53" height="26" bgcolor="#FFFFFF">
							<font color="#FF0000">880Ԫ</font></td>
						</tr>


						<tr>
							<td align="middle" width="66" height="26" bgcolor="#FFFFFF">
							�ײͶ�</td>
							<td align="middle" width="64" height="26" bgcolor="#FFFFFF">
							<font color="#000080">200Ԫ</font><font color="#008000">[1D]</font></td>
							<td align="middle" width="74" height="26" bgcolor="#FFFFFF">
							<font color="#000080">500Ԫ</font><font color="#008000">[500P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">300Ԫ</font><font color="#008000">[2000P]</font></td>
							<td align="middle" width="79" height="26" bgcolor="#FFFFFF">
							<font color="#000080">160Ԫ</font><font color="#008000">[500P]</font></td>
							<td align="middle" width="72" height="26" bgcolor="#FFFFFF">
							<font color="#000080">800Ԫ</font><font color="#008000">[50B]</font></td>
							<td align="middle" width="71" height="26" bgcolor="#FFFFFF">
							<font color="#000080">100Ԫ</font><font color="#008000">[50MF]</font></td>
							<td align="middle" width="53" height="26" bgcolor="#FFFFFF">
							<font color="#FF0000">2060Ԫ</font></td>
     		</tr>
			<tr>
            <td width="592" height="66" colspan="9" bgcolor="#FFFFFF">
            <br>
&nbsp;&nbsp; ˵��<font color="#008000">��[����] P</font>Ϊ������ 
					��Ƭ���������ż�¼������������԰��¼�������ű��ռ�ĸ�����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">B</font>Ϊ��̳������������<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<font color="#008000">1D</font>�ǰ�һ��.net ��.com�Ĺ�������һ����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
					<font color="#008000">MF</font>��FTP����Ŀռ�����Ϊ�׵�λ��<font color="#008000">50MF</font>=50M 
					FTP�ռ�</td>
     		</tr>
        	<tr>
            <td width="592" height="24" colspan="9" bgcolor="#FFFFFF">

            <b><font color="#FF0000">�ر��Żݣ�</font></b><font color="#FF0000">��2005��1��20��֮ǰ�����κ�һ�������Ҳ�Ʒ������ѻ���[�ײ�һ]һ�����</font></td>
     		</tr>

        </table>
        </center>
      </div>
      <br><br>
      
           <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="198">
          <tr>
            <td width="592" bgcolor="#800080" height="24">
            <font color="#FFFFFF"><b>
            ��<a name="buzhou">������</a></b></font></td>
          </tr>


			<tr>
            <td width="592" height="185" bgcolor="#FFFFFF">
            <table cellSpacing="2" cellPadding="5" width="100%" align="center" border="0" id="table4">
						<tr>
							<td class="cn">
							<table cellSpacing="4" cellPadding="0" width="98%" align="right" border="0" id="table5">
								<tr>
									<td vAlign="top" width="4%">
									<img height="15" src="../info/images/1.gif" width="13"></td>
									<td class="cn" width="96%"><strong>��ϸ�Ķ�</strong>�����������<strong>�Լ�</strong>��
									���������ҷ��������</td>
								</tr>
								<tr>
									<td vAlign="top" width="4%">
									<img height="15" src="../info/images/2.gif" width="13"></td>
									<td class="cn"><b>
									����Ҫ������ע��һ����Ա�û���Ȼ���¼�Լ��Ļ�Ա����ID��</b></td>
								</tr>
								<tr>
									<td vAlign="top">
									<img height="15" src="../info/images/3.gif" width="13"></td>
									<td class="cn"><strong>���շѱ�׼��<font color="#ff0000"><a href="#ww"><font color="#FF0000">��������</font></a></font><br>
									</strong>
									����д�������ԱID��XXXXX 
									����10023�����ʻ���ֵ����ע������ͷ���Ա������ID������10000����<font color="#008000">[��������Ҫ��Ϊ�ÿͷ���ԱҪ��δ��һ����Ϊ���ṩ�����֧�֣�]</font></td>
								</tr>
								<tr>
									<td vAlign="top">
									<img height="15" src="../info/images/4.gif" width="13"></td>
									<td class="cn"><strong>���һ���������ڿ�ͨ���ʽ�ע���ʺţ�</strong><br>
��<table class="dashtab" cellSpacing="0" cellPadding="6" width="100%" border="0" id="table6">
										<tr>
											<td>
											<ol class="cn">
												<li>�缱�����ʱ�뽫����վ�ɨ��Email��<a href="mailto:bill@silversand.net">779811@QQ.Com</a>�����浽010-81430388��һ���������ڰ���ҵ�񣬲����绰ȷ�ϡ� 

												</li>
												<li>Ϊ�˺˶Ի�����ϣ�������<a href="mailto:bill@silversand.net">779811@QQ.Com</a>ע�������;��
												��Ա����ID������˸������ϣ���������ַ���绰�����֤���룩�����ʱ��ͻ����루�ʾֻ��� 
												</li>
											</ol>
											</td>
										</tr>
									</table>
									</td>
								</tr>
								<tr>
									<td vAlign="top" height="167">
									<img height="15" src="../info/images/5.gif" width="13"></td>
									<td class="cn" height="167"><strong>
									���ʽ�ע�����ʻ���Ϳ��Թ��������Һ�������صķ���<br>
									<font color="#008000">
									��ʾ�����������ʧ�������Ʒ������24Сʱ��ͬ���幤����Ա��ϵ��ע������Ʒ��</font><br>
									<font color="#FF0000">ע�⣺</font>��Ƶ�������������������ҿ�ͨ��15������վ�ṩ������ϣ�</strong><br>
									��Ƶ�����������轫�������֤��ӡ�������˽���֤������һ�ź��ױ�ǩ���<font color="#ff0000"><u>��
									���������ҹ��������顷</u></font>һ�ݣ��������������ش�ӡ����дǩ������λ�û���ǹ��£��ʼĵ���վ���Ա�վ�յ��ʼ�֮��Ϊ׼������������Ƶ���ܿ�ͨ��15������δ�յ����ϲ��ϣ���վ����ʱ�ر�����Ƶ���ܣ�ֱ����վ�յ����ϲ��ϡ� 
									<br>
									<font color="#ff0000">��վ������ַ��</font>�����г��������̴���806A<br>
									�������룺100001<br>
									�ռ��ˣ��������Ա</td>
								</tr>
							</table>
            			</tr>
					</table>
            
            </td>
     		</tr>
        	<tr>
            <td width="592" height="24" bgcolor="#FFFFFF">

            				<b><font color="#FF0000">ע�⣺</font></b>δ��18����Ĺ��ڿͻ���������ļ໤�˴�Ϊ����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [<font color="#008000">��ۡ����š�̨�塢����Ŀͻ����ڹ�����һλ�����˴�������վ�ṩ���ճе�ҵ������������</font>]</td>
     		</tr>

        </table>
        </center>
      </div>
      <br>
      
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="155">
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
��</font></td>
			<br>
��</td>
     		</tr>
        	<tr>
            <td width="592" height="37" bgcolor="#FFFFFF">

            				<b><font color="#FF0000">ע�⣺</font></b>δ��18����Ĺ��ڿͻ���������ļ໤�˴�Ϊ����<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [<font color="#008000">��ۡ����š�̨�塢����Ŀͻ����ڹ�����һλ�����˴�������վ�ṩ���ճе�ҵ������������</font>]</td>
     		</tr>

        </table>
        </center>
      </div>
      <br>
      
     <br>
     
      </td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="87%"></td>
        </tr>
    <tr>
      <td width="87%" height="18">��</td>
    </tr>
  </table>
  </center>
</div>



<%call endpage()
%>