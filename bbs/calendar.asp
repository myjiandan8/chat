<!-- #include file="setup.asp" --><%top

if Request.Cookies("username")=empty then error("<li>����δ<a href=login.asp>��¼</a>����")
title=HTMLEncode(Request("title"))
content=ContentEncode(Request.Form("content"))
lookdate=HTMLEncode(Request("lookdate"))
adddate=HTMLEncode(Request("adddate"))
hide=int(Request("hide"))
id=int(Request("id"))

if Request("menu")="add" then
if title=empty then error("<li>��û�������ռ�����")

if content=empty then error("<li>��û�������ռ�����")


sql="insert into calendar(title,username,content,hide,adddate) values ('"&title&"','"&Request.Cookies("username")&"','"&content&"','"&hide&"','"&adddate&"')"
conn.Execute(SQL)


message="<li>����ռǳɹ�<li><a href=calendar.asp?menu=show&lookdate="&adddate&">�����ռ�</a><li><a href=calendar.asp>��������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=calendar.asp?menu=show&lookdate="&adddate&">")

elseif Request("menu")="del" then
if membercode > 3 then
conn.execute("delete from [calendar] where id="&id&"")
else
conn.execute("delete from [calendar] where id="&id&" and username='"&Request.Cookies("username")&"'")
end if

message="<li>ɾ���ɹ�<li><a href=calendar.asp>��������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=calendar.asp>")

elseif Request("menu")="editok" then
conn.execute("update [calendar] set title='"&title&"',content='"&content&"',hide='"&hide&"' where id="&id&" and username='"&Request.Cookies("username")&"'")

message="<li>�༭�ռǳɹ�<li><a href=calendar.asp?menu=show&lookdate="&adddate&">�����ռ�</a><li><a href=calendar.asp>��������</a><li><a href=Default.asp>������̳��ҳ</a>"
succeed(""&message&"<meta http-equiv=refresh content=3;url=calendar.asp?menu=show&lookdate="&adddate&">")



end if

%>
<table border="0" width="99%"  align="center" cellspacing="1" cellpadding="4" class="a2">
	<tr class="a3">
		<td height="25">&nbsp;<img src="images/Forum_nav.gif">&nbsp; <%ClubTree%> 
		�� <a href="calendar.asp">�ҵ��ռ�</a></td>
	</tr>
</table>
<br>
<%
if Request("menu")="show" then
%> <br>
<script>valigntop()</script>
<div align="center">
	<table cellspacing="1" cellpadding="6" width="99%"  border="0" class="a2">
		<tr class="a1">
			<td align="center" width="75%"><b><%=lookdate%> �ռ�</b></td>
		</tr>
		<tr class="a3">
			<td align="center" valign="top"><%
sql="select * from calendar where (hide=0 or username='"&Request.Cookies("username")&"') and adddate='"&lookdate&"' order by id Desc"
rs.Open sql,Conn,1
pagesetup=10 '�趨ÿҳ����ʾ����
rs.pagesize=pagesetup
TotalPage=rs.pagecount  '��ҳ��
PageCount = cint(Request.QueryString("ToPage"))
if PageCount <1 then PageCount = 1
if PageCount > TotalPage then PageCount = TotalPage
if TotalPage>0 then rs.absolutepage=PageCount '��ת��ָ��ҳ��
i=0
Do While Not RS.EOF and i<pagesetup
i=i+1
%>
			<table cellspacing="1" cellpadding="1" width="99%"  border="0" class="a4">
				<tr>
					<td align="center" colspan="2"><b><%=rs("title")%></b></td>
				</tr>
				<tr>
					<td colspan="2"><br>
					<%=rs("content")%> <br>
					<br>
					</td>
				</tr>
				<tr>
					<td><a href="calendar.asp?menu=edit&id=<%=rs("id")%>">
					<img src="images/edit.gif" border="0"></a>
					<a href="calendar.asp?menu=del&id=<%=rs("id")%>" onclick="checkclick('��ȷ��Ҫɾ�������ռ�?')">
					<img src="images/del.gif" border="0"></a></td>
					<td align="right">���ߣ�<a href="Profile.asp?username=<%=rs("username")%>"><%=rs("username")%></a>&nbsp; 
					ʱ�䣺<%=rs("addtime")%></td>
				</tr>
			</table>
			<hr size="0"><%

RS.MoveNext
loop
RS.Close   
%> </td>
		</tr>
	</table>
	<script>valignbottom()</script>
	<b>[
	<script>
PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?menu=show&lookdate=<%=lookdate%>&topage="+i+">"+ i +"</a> ");
}
}
}
</script>
	]</b> <br>
	<script>valigntop()</script>
	<table cellspacing="1" cellpadding="4" width="99%"  align="center" border="0" class="a2">
		<form method="post" name="yuziform" action="calendar.asp?menu=add" onsubmit="return CheckForm(this);"><input name="content" type="hidden">
			<input type="hidden" name="adddate" value="<%=lookdate%>">
			<tr class="a1">
				<td width="99%"  colspan="2" align="center"><b>����ռ�</b></td>
			</tr>
			<tr class="a3">
				<td width="14%"><b>�ռǱ��⣺</b></td>
				<td width="83%">
				<input maxlength="30" name="title" style="width:80%">
				<select name="hide" size="1">
				<option value="0">����</option>
				<option value="1" selected>����</option>
				</select></td>
			</tr>
			<tr class="a3">
				<td width="14%"><b>�ռ����ݣ�</b></td>
				<td width="83%" height="200">
				<script src="inc/post.js"></script>
				</td>
			</tr>
			<tr class="a3">
				<td colspan="2" align="center">��<input tabindex="4" type="submit" value=" �� �� " name="submit1">&nbsp;
				<input type="reset" value=" �� �� "></td>
			</tr>
		</form>
	</table>
	<script>valignbottom()</script>
	<br>
	<%
htmlend

elseif Request("menu")="edit" then
sql="select * from calendar where id="&id&""
Set Rs=Conn.Execute(sql)
if ""&rs("username")&""<>""&Request.Cookies("username")&"" then error2("���ռǷ�����д��")

%> <br>
	<script>valigntop()</script>
	<table cellspacing="1" cellpadding="4" width="99%"  align="center" border="0" class="a2">
		<tr class="a1">
			<td align="center" valign="top" width="75%" colspan="2"><b>�༭�ռ�</b></td>
		</tr>
		<form method="post" name="yuziform" action="calendar.asp?menu=editok" onsubmit="return CheckForm(this);"><input name="content" type="hidden" value="<%=rs("content")%>">
			<input type="hidden" name="adddate" value="<%=rs("adddate")%>">
			<input type="hidden" name="id" value="<%=rs("id")%>">
			<tr class="a3">
				<td width="14%"><b>�ռǱ��⣺</b></td>
				<td width="83%">
				<input maxlength="30" size="70" name="title" value="<%=rs("title")%>">
				<select name="hide" size="1">
				<option value="0" <%if rs("hide")=0 then%>selected<%end if%>>����
				</option>
				<option value="1" <%if rs("hide")=1 then%>selected<%end if%>>����
				</option>
				</select></td>
			</tr>
			<tr class="a3">
				<td width="14%"><b>�ռ����ݣ�</b></td>
				<td width="83%" height="200">
				<script src="inc/post.js"></script>
				</td>
			</tr>
			<tr class="a3">
				<td colspan="2" align="center">��<input tabindex="4" type="submit" value=" �� �� " name="submit1">&nbsp;
				<input onclick="checkclick('�������Ҫ���ȫ�������ݣ���ȷ��Ҫ�����?');" type="reset" value=" �� д "></td>
			</tr>
		</form>
	</table>
	</td>
	</tr>
	</table>
	<script>valignbottom()</script>
	<br>
	<%
RS.Close
htmlend
end if

%>
	<script src="inc/calendar.js"></script>
	<script language="VBScript">
<!--
'===== ������ʱ��
Function TimeAdd(UTC,T)
   Dim PlusMinus, DST, y
   If Left(T,1)="-" Then PlusMinus = -1 Else PlusMinus = 1
   UTC=Right(UTC,Len(UTC)-5)
   UTC=Left(UTC,Len(UTC)-4)
   y = Year(UTC)
   TimeAdd=DateAdd("n", (Cint(Mid(T,2,2))*60 + Cint(Mid(T,4,2))) * PlusMinus, UTC)
   '�����չ��Լ�ڼ�: 4�µ�һ������00:00 �� 10������һ��������00:00
   If Mid(T,6,1)="*" And DateSerial(y,4,(9 - Weekday(DateSerial(y,4,1)) mod 7) ) <= TimeAdd And DateSerial(y,10,31 - Weekday(DateSerial(y,10,31))) >= TimeAdd Then
      TimeAdd=CStr(DateAdd("h", 1, TimeAdd))
      tSave.innerHTML = "R"
   Else
      tSave.innerHTML = ""
   End If
   TimeAdd = CStr(TimeAdd)
End Function
'-->
</script>
	<body onload="initial()">
<div id="detail" style="LEFT: 12px; WIDTH: 200px; POSITION: absolute; TOP: 0px; HEIGHT: 19px"></div>
	<form name="CLD">
		<script>valigntop()</script>
		<table cellspacing="1" cellpadding="0" width="99%"  border="0" class="a2" align="center">
			<tr>
				<td align="middle" width="30%" class="a4">
				<script language="JavaScript">
var enabled = 0; today = new Date();
var day; var date;
if(today.getDay()==0) day = "������"
if(today.getDay()==1) day = "����һ"
if(today.getDay()==2) day = "���ڶ�"
if(today.getDay()==3) day = "������"
if(today.getDay()==4) day = "������"
if(today.getDay()==5) day = "������"
if(today.getDay()==6) day = "������"
document.fgColor = "black";
date = " ��Ԫ " + (today.getYear()) + " �� " +
(today.getMonth() + 1 ) + "�� " + today.getDate() + "�� " +
day +"";
document.write(date)
    </script>
				</font></td>
				<td width="400" class="a3" rowspan="2" align="center">
				<table border="0">
					<tr>
						<td class="a1" colspan="7" align="center" height="25">��Ԫ<select style="FONT-SIZE: 9pt" onchange="changeCld()" name="SY">
						<script language="JavaScript"><!--        
            for(i=1900;i<2050;i++) document.write('<option>'+i)        
            //--></script>
						</select>��<select style="FONT-SIZE: 9pt" onchange="changeCld()" name="SM">
						<script language="JavaScript"><!--        
            for(i=1;i<13;i++) document.write('<option>'+i)        
            //--></script>
						</select>��</font>&nbsp;&nbsp; <font id="GZ"></font><br>
						</td>
					</tr>
					<tr align="middle" class="a4">
						<td width="54" height="20">��</td>
						<td width="54" height="20">һ</td>
						<td width="54" height="20">��</td>
						<td width="50" height="20">��</td>
						<td width="54" height="20">��</td>
						<td width="54" height="20">��</td>
						<td width="54" height="20">��</td>
					</tr>
					<script language="JavaScript">    
            var gNum        
            for(i=0;i<6;i++) {        
               document.write('<tr align=center>')        
               for(j=0;j<7;j++) {        
                  gNum = i*7+j        
                  document.write('<td ><font id="SD' + gNum +'" size=5 face="Arial Black"></font><br><font id="LD' + gNum + '"></font></td>')
               }        
               document.write('</tr>')        
            }        
</script>
				</table>
				</td>
				<td align="middle" class="a4" height="25">��<font color="#FF0000">
				<%=conn.execute("Select count(id)from [calendar]")(0)%> </font>ƪ�ռ� 
				</td>
			</tr>
			<tr>
				<td valign="top" align="middle" width="30%" class="a3"><br>
				<font id="Clock" face="Arial" color="000080" size="4" align="center">
				</font>
				<p>
				<!--ʱ�� *��ʾ�Զ�����Ϊ�չ��Լʱ��--><font style="FONT-SIZE: 9pt" size="2">
				<select style="FONT-SIZE: 9pt" onchange="changeTZ()" name="TZ">
				<option value="+0800 ���������졢������" selected>�й�</option>
				<option value="-1100 ��;������Ħ��Ⱥ��">��Ħ��</option>
				<option value="-1000 ������">������</option>
				<option value="-0900*����˹��">����˹��</option>
				<option value="-0800*̫ƽ��ʱ��(����)��������">̫ƽ��</option>
				<option value="-0700 ����ɣ��">����ɽ��</option>
				<option value="-0700*ɽ��ʱ��(����)">����ɽ��</option>
				<option value="-0600*��������(���ô�)">���ô��в�</option>
				<option value="-0600*ī�����С�����������">ī����</option>
				<option value="-0600*�в�ʱ��(����)">�����в�</option>
				<option value="-0500*���������">������̫ƽ��</option>
				<option value="-0500*����ʱ��(����)">���Ӷ���</option>
				<option value="-0500*ӡ�ڰ���(����)">����</option>
				<option value="-0400*������˹��������">����������</option>
				<option value="-0400*������ʱ�� ���ô�)">������</option>
				<option value="-0330 �µ�(���ô󶫰�)">Ŧ����</option>
				<option value="-0300 ��������">��������</option>
				<option value="-0300 ��³ŵ˹����˹�����γ�">�����޶���</option>
				<option value="-0200*�������в�">�������в�</option>
				<option value="-0100*���ٶ�Ⱥ����ά�½�Ⱥ��">���ٶ�</option>
				<option value="+0000 ��������ʱ�䡢�����֡����������׶�">Ӣ������</option>
				<option value="+0000 Ī��ά��(��������)������������">�������α�׼</option>
				<option value="+0100 ���衢�����">����</option>
				<option value="+0100 ������, ��ɳ, ������˹">��ŷ</option>
				<option value="+0100 ���֡�˹�¸��Ħ��������������³������άҲ��">��ŷ</option>
				<option value="+0200 ��ɫ��">��ɫ��</option>
				<option value="+0200*��ŷ">��ŷ</option>
				<option value="+0200*����">����</option>
				<option value="+0200*�ŵ䡢�ն���������˹̹��">GFT</option>
				<option value="+0200*�����ס�Ƥ����">�Ϸ�</option>
				<option value="+0300*�͸������ء������(����)�����ŵ�(ɳ�ڵ�)">ɳ�ڵذ�����</option>
				<option value="+0300*Ī˹�ơ�ʥ�˵ñ�����ռ�����߸����">����˹</option>
				<option value="+0330*�º���">����</option>
				<option value="+0400*�������(��������)��Ī˹����������˹(�����ǹ���)">������</option>
				<option value="+0430*������">������</option>
				<option value="+0500 ��˹����͵¡������桢�������ֱ��������">����</option>
				<option value="+0530 ���򡢼Ӷ�������˹���µ��������">ӡ��</option>
				<option value="+0600 �����ᡢ�￨">����</option>
				<option value="+0700 ���ȡ��ǼӴ��־����">����</option>
				<option value="-1200 ���������ˡ��ϼ���">���ʻ�����</option>
				<option value="+0800 ̨�塢��ۡ��¼���">̨��</option>
				<option value="+0900 ���������桢���ϡ����ǡ��ǿ���(����������)">����</option>
				<option value="+0930 �����">�����в�</option>
				<option value="+1000 ����˹����ī������ϯ����">ϯ����</option>
				<option value="+1000 ������">��˹÷����</option>
				<option value="+1000 �ص���Ī˹�ȸۡ�������">��̫ƽ��</option>
				<option value="+1100*����������Ⱥ�����¿��׶�����">̫ƽ���в�</option>
				<option value="+1200 ����١��¿���">Ŧ����</option>
				<option value="+1200 쳼á��ϼ�������Ъ��Ⱥ��">쳼�</option>
				</select> ʱ��</font>
				<font id="tSave" style="FONT-SIZE: 18pt; COLOR: red; FONT-FAMILY: Wingdings">
				</font><br>
				<br>
				<font style="FONT-SIZE: 120pt; COLOR: #13b0f4; FONT-FAMILY: Webdings">
				&ucirc;</font><br>
				<br>
				<font id="CITY"></font></p>
				</td>
				<td class="a3" height="30%" align="center" valign="top">
				<table border="0" width="95%">
					<%
sql="select top 16 * from calendar where username='"&Request.Cookies("username")&"' order by id Desc"

Set Rs=Conn.Execute(sql)
Do While Not RS.EOF
%>
					<tr>
						<td>
						<a href="calendar.asp?menu=show&lookdate=<%=rs("adddate")%>">
						<%=rs("title")%></a></td>
					</tr>
					<%
RS.MoveNext
loop
RS.Close   
%>
				</table>
				</td>
			</tr>
		</table>
		<script>valignbottom()</script>
	</form>
	</div>
<%
htmlend
%>