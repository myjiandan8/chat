<!-- #include file="setup.asp" --><%
select case Request("menu")

case ""
index

case "popedom"
popedom


case "guizhe"
guizhe

case "level"
level

case "zhuce"
zhuce

case "daima"
daima

case "YBB"
YBB

case "cook"
cook

case "bz"
bz

case "cz"
cz

case "edit"
edit

case "gb"
gb

end select

sub index
top
%>
<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class="a2">
	<tbody>
	<tr class="a3">
		<td height="25">&nbsp;<img src="images/Forum_nav.gif" />&nbsp; <%ClubTree%> 
		�� ʹ�ð���</td>
	</tr>
</tbody>
</table>
<br />
<center><br />
<script>valigntop()</script>
<table cellspacing="1" cellpadding="4" width="99%"  border="0" class="a2">
	<tbody>
	<tr>
		<td valign="top" width="177" class="a3"><br />
		<b>�����˵�</b><br />
		<br />
		<a target="I2" href="help.asp?menu=guizhe">������������</a><br />
		<a target="I2" href="help.asp?menu=level">�ȼ�����</a><br />
		<a target="I2" href="help.asp?menu=popedom">Ȩ�޽���</a><br />
		<a target="I2" href="help.asp?menu=zhuce">���Ƿ����ע��</a><br />
		<a target="I2" href="help.asp?menu=daima">�Ƿ���Լ���HTML���� </a><br />
		<a target="I2" href="help.asp?menu=YBB">YBB���� </a><br />
		<a target="I2" href="help.asp?menu=bz">ʲô�ǰ���</a><br />
		<a target="I2" href="help.asp?menu=cook">ʹ��COOKIE��</a><br />
		<a target="I2" href="help.asp?menu=edit">�����޸��ҵ�ע����Ϣ</a><br />
		<a target="I2" href="help.asp?menu=gb">��ѶϢ</a><br />
		<a target="I2" href="help.asp?menu=cz">�ܽ��в����� </a><br />
		</td>
		<td valign="top" width="759" class="a4">
		<p>
		<iframe name="I2" width="100%" height="250" marginwidth="1" marginheight="1" border="0" frameborder="0">
		�������֧��Ƕ��ʽ��ܣ�������Ϊ����ʾǶ��ʽ��ܡ�</iframe></p>
		</td>
	</tr>
</tbody>
</table>
<script>valignbottom()</script>
<%htmlend
end sub





sub level%>
<table align="left" border="0" cellpadding="3" cellspacing="1" class="a2" width="100%">
	<tbody>
	<tr>
		<td colspan="3" class="a1">
		<p align="center"><a><b>�� ��̳�ȼ����</b></a></p>
		</td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="30%" align="center">�ȼ�����</td>
		<td bgcolor="FFFFFF" width="30%">
		<p align="center">����ֵ</p>
		</td>
		<td bgcolor="FFFFFF" width="30%">����ͼ��</td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(1,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">��50</td>
		<td width="30%" bgcolor="FFFFFF">
		<p><img border="0" src="images/level/1.gif" /> </p>
		</td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(51,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">51��150</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/2.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(151,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">151��500</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/3.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(501,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">501��1000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/4.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(1001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">1001��2000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/5.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(2001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">2001��4000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/6.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(4001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">4001��8000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/7.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(8001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">8001��12000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/8.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(12001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">12001��20000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/9.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(20001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">20001��30000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/10.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(30001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">30001��50000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/11.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(50001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">50001��70000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/12.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(70001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">70001��100000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/13.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(100001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">100001��130000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/14.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(130001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">130001��160000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/15.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(160001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">160001��200000</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/16.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF"><font face="����">
		<script>document.write(""+level(200001,1,"","")+levelname+"");</script>
		</font></td>
		<td width="30%" align="center" bgcolor="FFFFFF">200001��?</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/17.gif" width="110" height="11" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF">����</td>
		<td width="30%" align="center" bgcolor="FFFFFF">--</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/18.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF">
		<script>document.write(""+level(0,4,"","")+levelname+"");</script>
		</td>
		<td width="30%" align="center" bgcolor="FFFFFF">--</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/19.gif" /></td>
	</tr>
	<tr>
		<td width="30%" align="center" bgcolor="FFFFFF">
		<script>document.write(""+level(0,5,"","")+levelname+"");</script>
		</td>
		<td width="30%" align="center" bgcolor="FFFFFF">--</td>
		<td width="30%" bgcolor="FFFFFF">
		<img border="0" src="images/level/20.gif" /></td>
	</tr>
</tbody>
</table>
<%end sub
sub guizhe%>
<table align="left" border="0" cellpadding="3" cellspacing="1" class="a2" width="100%" height="1">
	<tbody>
	<tr>
		<td class="a1" height="15">
		<p align="center"><a><b>������������</b></a></p>
		</td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="498" height="1">
		<p align="left">1������ֵ�����ԴӸ������������󣬲��ޡ�<br />
		����&nbsp; ���ֵ�����ԴӸ������������󣬲��ޡ�<br />
		����&nbsp; ����ֵ��<font color="FF0000">0--100</font></p>
		</td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="498" height="67">2����һ�ε�¼��������ʼ����ֵΪ0���Ժ��ۼ�<br />
		����&nbsp; ��һ�ε�¼��������ʼ���ֵΪ0���Ժ��ۼ�<br />
		����&nbsp; ��һ�ε�¼����������ֵ��ΪΪ100���Ժ��ۼ�</td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="498" height="1">3��д���£�<br />
		����&nbsp; ����ֵ: <font color="FF0000">+3</font><br />
		����&nbsp; ���ֵ: <font color="FF0000">+3</font><br />
		����&nbsp; ����ֵ: <font color="FF0000">-3</font> ������������Ա����������������</td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="498" height="1">4�������£�<br />
		����&nbsp; �ظ��߾���ֵ: <font color="FF0000">+2</font><br />
		����&nbsp; �ظ��߽��ֵ: <font color="FF0000">+2</font><br />
		����&nbsp; �ظ�������ֵ: <font color="FF0000">-2</font> ������������Ա����������������</td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="498" height="1">5����Чͣ��ʱ�䣨��Ҫ��¼��������<br />
		����&nbsp; ÿ��Чʱ��<font color="FF0000"> 10 </font>���ӣ� ����ֵ:
		<font color="FF0000">+1</font> ����ֵ��<font color="FF0000">+10</font></td>
	</tr>
	<tr bgcolor="A09CFF">
		<td bgcolor="FFFFFF" width="498" height="1">6������ֵ &lt; <font color="FF0000">
		1</font> ��������ֵ &lt; <font color="#FF0000">3</font> �ߣ������ܷ������¡�</td>
	</tr>
</tbody>
</table>
<%end sub

sub popedom%>
<table cellspacing="1" cellpadding="0" width="99%"  align="center" border="0" class="a2">
	<tbody>
	<tr height="25" class="a1">
		<td align="middle" width="10%">����Ȩ��</td>
		<td align="middle" width="10%">�ÿ�</td>
		<td align="middle" width="10%">ע���Ա</td>
		<td align="middle" width="10%">��̳����</td>
		<td align="middle" width="10%">�� �� Ա</td>
		<td align="center" width="10%">��������</td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">���������̳</td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�����Ա��̳</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">���Ͷ�Ѷ</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">��������</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">����ͶƱ</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�༭����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">��������</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">��ǰ����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�ر�����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�ƶ�����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">ɾ������</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�ö�����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">��Ӿ�����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�������ö�</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">������������</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">ɾ�������ռ�</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�������վ</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�鿴���߻�ԱIP</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b>��</b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">��̨����</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="center"><b>��</b></td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�ϴ�<span lang="en">ͷ��</span></td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><%=fix(MaxFace/1024)%></b> KB</td>
		<td align="middle"><b><%=fix(MaxFace/1024)%></b> KB</td>
		<td align="middle"><b><%=fix(MaxFace/1024)%></b> KB</td>
		<td align="center"><b><%=fix(MaxFace/1024)%></b> KB</td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�ϴ���Ƭ</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><%=fix(MaxPhoto/1024)%></b> KB</td>
		<td align="middle"><b><%=fix(MaxPhoto/1024)%></b> KB</td>
		<td align="middle"><b><%=fix(MaxPhoto/1024)%></b> KB</td>
		<td align="center"><b><%=fix(MaxPhoto/1024)%></b> KB</td>
	</tr>
	<tr height="25" class="a3">
		<td align="middle">�ϴ��ļ�</td>
		<td align="middle"><b><font color="#ff0000">��</font></b></td>
		<td align="middle"><b><%=fix(MaxFile/1024)%></b> KB</td>
		<td align="middle"><b><%=fix(MaxFile/1024)%></b> KB</td>
		<td align="middle"><b><%=fix(MaxFile/1024)%></b> KB</td>
		<td align="center"><b><%=fix(MaxFile/1024)%></b> KB</td>
	</tr>
</tbody>
</table>
<%end sub


sub zhuce%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<b><a name="register1">ע��</a></b></div>
		</td>
	</tr>
	<tr>
		<td bgcolor="FFFFFF">�ǵ�������ע������ڷ����������£� ��ֻ����ʽע�ᣬ������ӵ����ʾ�Լ��������ϵȹ��ܣ�</td>
	</tr>
</tbody>
</table>
<%end sub
sub daima%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2" style="border-collapse: collapse">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<a name="html"><b>ʹ��HTML�������̳ר�ô���</b></a></div>
		</td>
	</tr>
	<tr>
		<td bgcolor="FFFFFF">����������������Ϣ��ʹ��HTML���뵫����ʹ����̳ר�ô���<font face="Verdana, Arial">YBB</font>����.&nbsp;
		��̳ר�ô���������HTML����, ��ֻ�ṩ�����������ܺ�һЩר�ù���,
		��hyperlinking, image ��ʾ, �����б����.
		<a target="I2" href="help.asp?menu=YBB">����</a>����������̳ר�ô����б�.
		</td>
	</tr>
</tbody>
</table>
<%end sub
sub YBB%>
<table border="0" cellspacing="1" cellpadding="3" class="a2" height="1215">
	<tbody>
	<tr>
		<td class="a1" height="13"><b>ʲô��YBB(Yuzi Bulletin Board)���룿 
		</b></td>
	</tr>
	<tr>
		<td height="58" bgcolor="F7F7F7">
		<p><font face="Verdana, Arial">YBB</font>������<font face="Verdana, Arial">HTML</font>��һ�����֡���Ҳ���Ѿ���������Ϥ�ˡ�һ������£������������<font face="Verdana, Arial">HTML</font>��Ҳ�Ϳ���ʹ��<font face="Verdana, Arial">YBB</font>���롣��ʹ������������������ʹ��<font face="Verdana, Arial">HTML</font>����Ҳ����ʹ��<font face="Verdana, Arial">YBB</font>���롣 
		����Ҫ��ʹ�õı�����٣���ʹ����ʹ��<font face="Verdana, Arial">HTML</font>��������Ҳ��ʹ��<font face="Verdana, Arial">YBB</font>���룬��Ϊ�������Ŀ����Դ���С�ˡ�</p>
		</td>
	</tr>
	<tr>
		<td class="a1" height="16"><b>URL��������</b></td>
	</tr>
	<tr>
		<td height="93" bgcolor="FFFFFF">��������Ϣ����볬�����ӣ�ֻҪ�����з�ʽ����Ϳ�����<font face="Verdana, Arial">(YBB</font>������<font color="ff0000">����</font><font face="Verdana, Arial">).
		</font><br />
		<font face="Verdana, Arial"><br />
		<font color="ff0000">[url]</font>http://www.yuzi.net<font color="ff0000">[/url]</font>
		<br />
		</font>���� <br />
		<font face="Verdana, Arial"><font color="ff0000">[url=</font>http://www.yuzi.net]Yuzi</font>������<font color="ff0000">[/url]</font>
		<br />
		<font><br />
		���������룬</font><font face="Verdana, Arial">YBB</font>������Զ���<font face="Verdana, Arial">URL</font>�������ӣ�����֤���û�����µĴ���ʱ��������Ǵ��ŵġ�ע��<font face="Verdana, Arial">URL</font>��<font face="Verdana, Arial">&quot;http://&quot;</font>��һ����������ġ�</td>
	</tr>
	<tr>
		<td class="a1" height="13"><b>�����ʼ�����</b></td>
	</tr>
	<tr>
		<td height="39" bgcolor="FFFFFF">��������Ϣ���������ʼ��ĳ������ӣ�ֻҪ������������Ϳ�����(YBB�����Ǻ���)<br />
		<font color="ff0000"><br />
		<font color="FF0000">[email]</font></font><font color="000000"><a href="mailto:huangzhiyu@yuzi.net">huangzhiyu@yuzi.net</a></font><font color="ff0000">[/email]</font><br />
		<font color="ff0000"><br />
		</font>���������룬YBB�����Ե����ʼ��Զ��������ӡ� </td>
	</tr>
	<tr>
		<td class="a1" height="13"><b>������б��</b></td>
	</tr>
	<tr>
		<td height="74" bgcolor="FFFFFF"><font>������ʹ�� </font>
		<font face="Verdana, Arial">[b] [/b] </font>�� 
		<font face="Verdana, Arial">[i] [/i] </font>��Щ��־�Դﵽ��������ʹ�ô����б���Ч��<font face="Verdana, Arial">.</font>
		<br />
		<br />
		����<font face="Verdana, Arial">, <font color="ff0000">[b]</font></font><b>����Ա</b><font color="FF0000">[/b]</font><font face="Verdana, Arial"><br />
		</font>����<span></span><font face="Verdana, Arial">,
		<font color="ff0000">[i]</font></font><i>����Ա</i><font color="ff0000">[/i]</font><font face="Verdana, Arial"><br />
		</font>����,<font color="ff0000">[u]</font><u>����Ա</u><font color="ff0000">[/u]</font><span></span>
		<font face="Verdana, Arial"><br />
		</font>����,<font color="ff0000">[strike]</font><strike>����Ա</strike><font color="ff0000">[/strike]</font><span></span></td>
	</tr>
	<tr>
		<td class="a1" height="13"><b>�ƶ����� </b></td>
	</tr>
	<tr>
		<td height="42" bgcolor="FFFFFF">��������Ϣ������ƶ����֣�ֻҪ����������Ϳ�����<font face="Verdana, Arial">(YBB</font>������<font color="ff0000">����</font><font face="Verdana, Arial">).</font>
		<font color="ff0000"><br />
		</font><br />
		<font color="ff0000">[marquee]</font>�ƶ�����<font color="ff0000">[/marquee]</font><br />
		
		<marquee>�ƶ�����</marquee></td>
	</tr>
	<tr>
		<td class="a1" height="13"><b>����������Ϣ </b></td>
	</tr>
	<tr>
		<td height="58" bgcolor="FFFFFF">����һЩ�˵����ӣ�ֻҪ���кͿ���Ȼ����������Ϳ�����<font face="Verdana, Arial">(YBB</font>������ 
		<font color="ff0000">����</font><font face="Verdana, Arial" color="ff0000">)</font><font face="Verdana, Arial">).</font>
		<br />
		<font color="ff0000"><br />
		[QUOTE]</font>�������Ĺ�����Ϊ����ʲô......<br />
		������Ϊ���Ĺ�����ʲô��<font color="ff0000">[/QUOTE]</font> <br />
		<br />
		�������У�<font face="Verdana, Arial">YBB</font>������Զ����������õ����֡� 
		</td>
	</tr>
	<tr>
		<td height="16" class="a1"><b>��ɫ����</b></td>
	</tr>
	<tr>
		<td height="169" bgcolor="FFFFFF">
		<p><font color="ff0000" face="Verdana, Arial">[color=red]</font>��ɫ����<font color="ff0000">[/color]</font><br />
		���ϵ�&quot;red&quot;�����ǣ�</p>
		<div align="center">
			<center>
			<table border="0" width="49%">
				<tbody>
				<tr>
					<td height="25" width="31%" align="center" bgcolor="F7F7F7">
					Black </td>
					<td height="25" width="35%" align="center" bgcolor="F7F7F7">
					#000000</td>
					<td height="25" width="34%" align="center" bgcolor="F7F7F7">
					��ɫ </td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Silver </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#C0C0C0</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Gray </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#808080</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Pink </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#FFC8CB</td>
					<td width="34%" align="center" bgcolor="F7F7F7">�ۺ�</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Maroon </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#800000</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Red </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#FF0000</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Purple </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#800080</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Fuchsia </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#FF00FF</td>
					<td width="34%" align="center" bgcolor="F7F7F7">�Ϻ�</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Green</td>
					<td width="35%" align="center" bgcolor="F7F7F7">#008000</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Lime </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#00FF00</td>
					<td width="34%" align="center" bgcolor="F7F7F7">����</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Olive </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#808000</td>
					<td width="34%" align="center" bgcolor="F7F7F7">���</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Yellow </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#FFFF00</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Navy </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#000080</td>
					<td width="34%" align="center" bgcolor="F7F7F7">����</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Blue </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#0000FF</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Teal </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#008080</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Aqua </td>
					<td width="35%" align="center" bgcolor="F7F7F7">#00FFFF</td>
					<td width="34%" align="center" bgcolor="F7F7F7">ǳ��</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Orange</td>
					<td width="35%" align="center" bgcolor="F7F7F7">#FFA500</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
				<tr>
					<td width="31%" align="center" bgcolor="F7F7F7">Brown</td>
					<td width="35%" align="center" bgcolor="F7F7F7">#A52A2A</td>
					<td width="34%" align="center" bgcolor="F7F7F7">��ɫ</td>
				</tr>
			</tbody>
			</table>
			</center></div>
		</td>
	</tr>
	<tr>
		<td height="14" class="a1"><b>�ر�ע��</b></td>
	</tr>
	<tr>
		<td height="76" bgcolor="FFFFFF">
		<p>��������ͬʱʹ��<font face="Verdana, Arial">HTML</font>��<font face="Verdana, Arial">YBB</font>�����ͬһ�ֹ��ܡ�����ע��<font face="Verdana, Arial">YBB</font>���벻�Դ�Сд���С�������������<font color="ff0000">[URL]</font> 
		�� <font color="ff0000">[url]</font> <font color="800000">
		<br />
		����ȷ��</font><font color="800000" face="Verdana, Arial">YBB</font><font color="800000">����ʹ�ã�</font><font face="Verdana, Arial"><font color="ff0000"><br />
		[url]</font> www.yuzi.net <font color="ff0000">[/url]</font> </font>��Ҫ�����ź������������֮���пո�<font face="Verdana, Arial"><font color="ff0000"><br />
		[email]</font>huangzhiyu@yuzi.net<font color="ff0000">[email]</font>
		</font>�ڽ���ʱ����Ҫ�����������ڼ���б��<font color="ff0000">[/email]</font>
		</p>
		</td>
	</tr>
</tbody>
</table>
<%end sub
sub bz%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2" style="border-collapse: collapse">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<b>����</b></div>
		</td>
	</tr>
	<tr>
		<td bgcolor="FFFFFF">���������������Ĺ���Ա��������ɾ������������κ����ӡ��������ĳ���������κ����ʣ���ֱ�����������ϵ�� 
		</td>
	</tr>
</tbody>
</table>
<%end sub
sub cook%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2" style="border-collapse: collapse">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<b>COOKIE</b></div>
		</td>
	</tr>
	<tr>
		<td bgcolor="FFFFFF">����̳ʹ����cookie���������Դ洢�����û����Ϳ��cookie��Ϣ�洢������������cookie����������ٻ�����������ã�����ʹ���ܸ��ӷ����ʹ�ñ���̳ϵͳ����������������֧��cookie���������������cookie���ܹرգ���Щʡʱ�Ĺ��ܽ��޷������� 
		</td>
	</tr>
</tbody>
</table>
<%end sub

sub edit%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2" style="border-collapse: collapse">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<b>����������Ϣ</b></div>
		</td>
	</tr>
	<tr>
		<td bgcolor="FFFFFF">������ͨ��ҳ���Ϸ���&quot;�������&quot;, �ܷ���ĸ�������ע����Ϣ.
		���������û���������, �������Բ鿴���޸�����ǰ����ע�����Ϣ, ��Ȼ���������û���.
		</td>
	</tr>
</tbody>
</table>
<%end sub
sub gb%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2" style="border-collapse: collapse">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<b>��ѶϢ</b> </div>
		</td>
	</tr>
	<tr>
		<td height="29" bgcolor="FFFFFF">�������ڵ�ʱ�򣬱��˿��Է���ѶϢ�����������û��ǲ��ܿ�������ѶϢ��ֻ�����ܹ������Լ���ѶϢ����ÿ���˶����Ը������ԣ�</td>
	</tr>
</tbody>
</table>
<%end sub
sub cz%>
<table width="100%" border="0" cellspacing="1" cellpadding="3" class="a2" style="border-collapse: collapse">
	<tbody>
	<tr>
		<td class="a1">
		<div align="center">
			<b>������Ϣ</b></div>
		</td>
	</tr>
	<tr>
		<td bgcolor="FFFFFF">�����Ը���ĳһ�ض��Ĵʻ���������з��������ӡ��û�����ʱ�估�ض�����̳����в�ѯ��</td>
	</tr>
</tbody>
</table>
</center><%end sub

responseend
%>