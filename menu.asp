<!--���ݿ������ļ�#include file="INC/SQLconn.asp" -->
<%
port= Clng(Request("id"))
ff= Clng(Request("ff"))
id = port

if port=0 then guanbi("���벻������" & port)
if (InStr(USER, "*") + InStr(USER, "&") + InStr(USER, "#") + InStr(USER, "."))>0 then guanbi("�û��������Ͻ�����*&#.�ַ���")
if port < 1000 then guanbi("�����Ҳ��Ϸ���")

sub guanbi(message)
Response.Write "<script>alert('" & message & "');window.close();</script>"
response.end
end sub

Call OpenChatConn()
set rs=server.createObject("adodb.recordset")

sql="select * from [web] where ID=" & port
rs.open sql,Chatconn,1,3

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then 
'guanbi("�������Ҳ����ڣ�")
roomname ="δ����¼������"
else

if rs("roomadd")=1 then guanbi("���������Ѿ����رգ�")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

	sysff=rs("sysff")
	ff=rs("ff")
	logins = rs("logins")
	loginw = rs("loginw")
	'host = rs("host")
	'start = rs("start")
	'userroompasswd = rs("adminpasswd")
	 roomname=rs("roomname")
	rs("renqi")=rs("renqi")
	rs.Update
	rs.close
end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'��ʾ��ҳ
sql="select * from newweb where webid=" & ff & " order by webid asc"
set rsm=chatconn.execute (sql)
webname=rsm("webname")
weburl=rsm("weburl")

%>

<head><meta http-equiv="Content-Language" content="zh-cn">
<LINK href="images/style.css" type=text/css rel=stylesheet>
<SCRIPT src="/ad/baidu.js"></SCRIPT>
<SCRIPT language=javascript>
//�˵�����
function Changetab(id)
{
	for (i=1;i<=5;i++){
		eval("document.getElementById('btn"+i+"').className=''")
	}
	eval("document.getElementById('btn"+id+"').className='bb'")
	eval("document.getElementById('secTable').background='http://www.tom.com/image/common/search/b_"+id+".gif'");
	document.images.slogo.src="http://www.tom.com/image/common/search/b_l"+id+".gif";


	sInfo = eval('sInfo_' + id);
	if(sInfo == ''){
		alert('������δ������ϣ���ˢ��ҳ�����ԣ���');
	}else{
		document.getElementById('subT').innerHTML = sInfo;
	}
	switch (id){
	case 1:
    document.searchform.sw.value="2";
	break;
	case 2:
	document.searchform.sw.value="13";
	break;
	case 3:
	document.searchform.sw.value="77";
	break;
	case 4:
	document.searchform.sw.value="15";
	break;
	case 5:
	document.searchform.sw.value="2";
	break;
   default: 
   document.searchform.sw.value="2";
   eval("document.getElementById('btn1').className='bb'");
   break
   }
}
//��������
function gotolinkurl(url){ //v3.0
  if (url!=""){window.open(url) ;};
  if (restore) selObj.selectedIndex=0;
}

</SCRIPT>

<base target="_blank">

</head>

<BODY leftMargin=0 topMargin=0 marginheight="0" marginwidth="0" background="PIC/IMG/1bg2.gif"> 
<div align="center">
	<table border="0" width="145" id="table1" cellspacing="1" height="100%">
		<tr>
			<td valign="top" align="center">
			<table border="0" width="100%" id="table3" cellspacing="1">
				<tr>
					<td>
					<table border="0" width="100%" id="table4" cellspacing="1" bordercolor="#C0C0C0">
						<tr>
							<td align="center" height="10"  style="FILTER: dropshadow(color=#FFFFF00,offx=1,offy=1);color:#4b4b4b">
							<font color="#FF0000" size="3"><b><%=roomname%></b></font></td>
						</tr>
						<tr>
							<td align="center">
							<a title="�ѡ�<%=roomname%>����ӵ��ղؼ�" target="_self" href="javascript:window.external.addFavorite('http://<%=id%>.liaowan.com','��<%=roomname%>��-<%=webname%>-����-VCUͬ��')"><font color="#FF6600">[<%=id%>.liaowan.com �ղ�]</font></a></td>
						</tr>
						<tr>
							<td align="center">
					<font color="#0099FF">
					<a target="_blank" href="http://www.liaowan.com/Chatjs/LWSeTup.exe">
					<font color="#FF0000">������</font></a> </font>
					<a target="_blank" href="http://www.bluesky.cn/download/bluesky.exe">
					<font color="#0099FF">�����������</font></a> <a href="<%=weburl%>"><font color="#0099FF"></font></a></td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td>��</td>
				</tr>
				<tr>
					<td><a href="http://aliao.net/ls" target="_blank">
					<img border="0" src="ad/11.jpg" width="150" height="108"></a></td>
				</tr>
				<tr>
					<td align="center">[<a target="_blank" href="http://musicest.com/">ǧ�ꡤ����</a>]ר��<a target="_blank" href="http://musicest.com/">����</a></td>
				</tr>
				<tr>
					<td><a href="http://musicest.com/" target="_blank">
					<img border="0" src="ad/index_pic/1.jpg" width="150" height="109"></a></td>
				</tr>
				<tr>
					<td align="center">[<a target="_blank" href="http://musicest.com/">ǧǧ��</a>]ר��<a target="_blank" href="http://musicest.com/">����</a></td>
				</tr>
				<tr>
					<td align="center">
					<img border="0" src="ad/geyou2.jpg" width="150" height="108"></td>
				</tr>
				<tr>
					<td align="center">���ֱ���ֳ�</td>
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td height="160" valign="bottom">
			<table border="0" width="100%" id="table2" cellspacing="1">
				<tr>
					<td height="32">��</td>
				</tr>
				<tr>
					<td height="43" valign="top">
					<table border="1" width="100%" id="table5" cellspacing="0" cellpadding="0" style="border-collapse: collapse" bordercolor="#0075F7" height="41">
						<tr>
							<td height="18" bgcolor="#0075F7"><b>
							<font color="#FFFFFF">���� ���� ��� ���� </font></b></td>
						</tr>
						<tr>
							<td>
							<table border="0" width="100%" id="table6" cellspacing="0" cellpadding="0">
								<tr>
								<form name=search_form onsubmit="return gowhere(this)" target=_blank>
									<td width="72">
					<input style="color: #006699; font-size: 9pt; font-family: ����,SimSun"  id=word name=word  size="9" value="д�ؼ���"  onMouseOver="this.focus()" onblur="if (this.value =='') this.value='д�ؼ���'" onFocus="this.select()" onClick="if (this.value=='д�ؼ���') this.value=''"></td>
									<td>
	<select style="color: #006699; font-size: 9pt; font-family: ����,SimSun"  name=_sv onChange="bd_chg_idx(this.options[this.selectedIndex].value);" size="1">
	<option value="1">��ҳ</option>
	<option value="4"> MP3</option>
	<option value="6"> ͼƬ</option>
	<option value="2"> ����</option>
	<option value="3">����</option>
					</select>
		<input name=rn type=hidden>
        <input name=z type=hidden>
        <input name=lm type=hidden>
        <input name=ct type=hidden>
        <input name=tn type=hidden></td>
        							
									<td width="20">
									<input id="_si" type="image" src="http://img.baidu.com/img/union/search_s.gif" align="middle" border="0" name="_si" width="19" height="17">
									</td>
									</form>
								</tr>
							</table>
							</td>
						</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td height="24">
					
					<select style="color: #006699; font-size: 9pt; font-family: ����,SimSun"  onchange="gotolinkurl(this.value)" name="linkurl" size="1">
					<option style="COLOR: #006699" selected>��������</option>
					<option value="http://liaowan.com">��������
					</option>
					<option value="http://liaowan.com">�ٱ�Ͷ��</option>
					</select><select style="color: #006699; font-size: 9pt; font-family: ����,SimSun"  onchange="gotolinkurl(this)" name="linkurl0" size="1">
					<option style="COLOR: #006699" selected>��������</option>
					<option value="http://liaowan.com">�û�ע��
					</option>
					</select>
					
					</td>
				</tr>
				<tr>
					<td align="center">
					<a href="http://liaowan.com" target="_blank">
					<img border="0" src="PIC/weblogo/VCU.gif" width="141" height="54"></a>
<iframe id="baiduframe"  scrolling="no" width="0" height="0"  src="http://unstat.baidu.com/bdun.bsc?tn=vcucn&csid=102&rkcs=0&bgcr=FFFFFF&ftcr=000000&rk=0&bd=0&bdas=0">
</iframe>
<iframe id="baiduframe0" scrolling="no" width="0" height="0" src="/ad/51vip.htm" name="I1">
</iframe>
					</td>
				</tr>
			</table>
			</td>
		</tr>
		</table>
</div>
<p>��</p>