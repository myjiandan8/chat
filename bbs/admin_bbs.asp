<!-- #include file="setup.asp" -->
<%
if adminpassword<>session("pass") then response.redirect "admin.asp?menu=login"
log(""&Request.ServerVariables("script_name")&"<br>"&Request.ServerVariables("Query_String")&"<br>"&Request.form&"")


id=HTMLEncode(Request("id"))
bbsid=HTMLEncode(Request("bbsid"))
TimeLimit=HTMLEncode(Request("TimeLimit"))
username=HTMLEncode(Request("username"))


response.write "<center>"



select case Request("menu")
case "applymanage"
applymanage

case "activation"
activation

case "bbsmanage"
bbsmanage

case "bbsmanagexiu"
bbsmanagexiu


case "bbsmanagexiuok"
bbsmanagexiuok

case "bbsadd"
bbsadd

case "bbsaddok"
bbsaddok

case "classs"
classs


case "upclubconfig"
upclubconfig

case "upclubconfigok"
upclubconfigok


case "bbsmanagedel"
conn.execute("delete from [bbsconfig] where id="&id&"")
error2("�Ѿ�������̳����������ɾ���ˣ�")


case "deltopicok"
if bbsid<>"" then BbsIdList="and forumid="&bbsid&""
conn.execute("delete from [forum] where posttime<"&SqlNowString&"-"&TimeLimit&" "&BbsIdList&"")
error2("�Ѿ���"&TimeLimit&"����ǰ������ɾ���ˣ�")


case "delforumok"
if bbsid<>"" then BbsIdList="and forumid="&bbsid&""
conn.execute("delete from [forum] where lasttime<"&SqlNowString&"-"&TimeLimit&" "&BbsIdList&"")
error2("�Ѿ���"&TimeLimit&"��û�и��¹�������ɾ���ˣ�")


case "delusertopicok"
if username="" then error2("��û�������û�����")
if bbsid<>"" then BbsIdList="and forumid="&bbsid&""
conn.execute("delete from [forum] where username='"&username&"' "&BbsIdList&"")
error2("�Ѿ���"&username&"���������ɾ���ˣ�")



case "delretopicok"
if bbsid<>"" then BbsIdList="and forumid="&bbsid&""
conn.execute("delete from [reforum] where posttime<"&SqlNowString&"-"&TimeLimit&" "&BbsIdList&"")
error2("�Ѿ���"&TimeLimit&"��Ļ���ɾ���ˣ�")

case "deluserretopicok"
if username="" then error2("��û�������û�����")
conn.execute("delete from [reforum] where username='"&username&"'")
error2("�Ѿ���"&username&"����Ļ���ɾ���ˣ�")


case "delbbsconfigok"
conn.execute("delete from [bbsconfig] where hide=1 and lasttime<"&SqlNowString&"-"&TimeLimit&"")
error2("�Ѿ���"&TimeLimit&"��û�������ӵ���̳ɾ���ˣ�")



case "delliketopicok"

topic=HTMLEncode(Request("topic"))

if topic="" then error2("��û�������ַ���")
if bbsid<>"" then BbsIdList="and forumid="&bbsid&""
conn.execute("delete from [forum] where topic like '%"&topic&"%' "&BbsIdList&" ")
error2("�Ѿ�������������� "&topic&" ������ȫ��ɾ���ˣ�")


case "uniteok"
hbbs=Request("hbbs")
ybbs=Request("ybbs")
if hbbs = ybbs then error2("����ѡ����ͬ��̳��")
if username<>"" then usernamelist="and username='"&username&"'"
conn.execute("update [forum] set forumid="&int(hbbs)&" where forumid="&int(ybbs)&" and lasttime<"&SqlNowString&"-"&TimeLimit&" "&usernamelist&"")
error2("�ƶ���̳���ϳɹ���")

case "activationok"
for each ho in request.form("id")
ho=int(ho)
conn.execute("update [forum] set deltopic=0 where id="&ho&"")
next
error2("�Ѿ���������ѡ���ӣ�")



case "delapplication"
Application.Contents.RemoveAll()
error2("�Ѿ���������������е�application���棡")





end select

sub applymanage
%>

<table cellspacing=1 cellpadding=2 width=99% border=0 class=a2 align=center>
<tr class=a1 id=TableTitleLink>
<td align="center" height="25"><a href="?menu=applymanage&fashion=id">ID</a></td>
<td width="20%" align="center" height="25">
<a href="?menu=applymanage&fashion=bbsname">��̳</a></td>
<td align=center height="25"><a href="?menu=applymanage&fashion=moderated">����</a></td>
<td align=center height="25"><a href="?menu=applymanage&fashion=today">����</a></td>
<td align=center height="25"><a href="?menu=applymanage&fashion=toltopic">����</a></td>
<td align=center height="25"><a href="?menu=applymanage&fashion=tolrestore">����</a></td>
<td align="center" height="25">����</td>
</tr>
<%

if Request("fashion")=empty then
fashion="tolrestore"
else
fashion=Request("fashion")
end if


sql="select * from bbsconfig order by "&fashion&" Desc"
rs.Open sql,Conn,1

pagesetup=20 '�趨ÿҳ����ʾ����
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
<tr class=a3>
<td align="center" height="25"><%=rs("id")%></td>
<td><a target=_blank href=ShowForum.asp?forumid=<%=rs("id")%>><%=rs("bbsname")%></a></td>
<td align=center><%=rs("moderated")%></td>
<td align=center><b><font color=red><%=rs("today")%></font></b></td>
<td align=center><b><font color=red><%=rs("toltopic")%></font></b></td>
<td align=center><b><font color=red><%=rs("tolrestore")%></font></b></td>
<td align="center"><a href=?menu=bbsmanagexiu&id=<%=rs("id")%>>�༭��̳</a> | <a onclick=checkclick('��ȷ��Ҫɾ������̳����������?') href=?menu=bbsmanagedel&id=<%=rs("id")%>>ɾ����̳</a>
</tr>
<%
RS.MoveNext
loop
RS.Close

%>
</table>

[<b>
<script>
PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?menu=applymanage&fashion=<%=Request("fashion")%>&topage="+i+">"+ i +"</a> ");
}
}
}
</script>

</b>]
<%

end sub


sub classs
%>

<table border="0" width="80%">
	<tr>
		<td align="center">
<form name="form" method="post" action="?menu=bbsaddok"><input type=hidden name=classid value=0><input type=hidden name=hide value=0>
������ƣ������磺�������磩<input name="bbsname"><input type="submit" value="����"></form>
</td>
		<td align="center"><form method="post" action="?menu=bbsmanagexiu">
������̳��<INPUT size=2 name=id value="ID" onfocus="this.value = ''" >
<input type=submit value="ȷ��"></form></td>
	</tr>
</table>


<table cellspacing=1 cellpadding="2" width="80%" border="0" class="a2" align="center">
<%
sort(0)
%>
</table>


<%

end sub

sub bbsadd

%>


<table cellspacing="1" cellpadding="2" width="80%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan="2">������̳����</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle>

<form name="form" method="post" action="?menu=bbsaddok">
<input type=hidden name=classid value=<%=id%>>

��̳����</td>
    <td class=a3>

<input size="20" name="bbsname"></td></tr>
   <tr height=25>
    <td class=a3 align=middle>

��̳����</td>
    <td class=a3>

<input size="30" name=moderated> ������������|�ָ����磺yuzi|ԣԣ
</td></tr>
   <tr height=25>
    <td class=a3 align=middle>

��̳����</td>
    <td class=a3>

<textarea rows="5" name="intro" cols="50"></textarea></td></tr>
   <tr height=25>
    <td class=a3 align=middle>

��̳״̬</td>
    <td class=a3>

<select size="1" name="pass">
<option value=0>�ر�</option>
<option value=1 selected>����</option>
<option value=2>�ο�ֹ��</option>
<option value=3>��Ȩ���</option>
<option value=4>��Ȩ����</option>
</select>
</td></tr>




   <tr height=25>
    <td class=a3 align=middle>

��Ȩ�û�����</td>
    <td class=a3>

<textarea rows="3" name="userlist" cols="40"></textarea> �������|�ָ����磺yuzi|ԣԣ
</td></tr>



   <tr height=25>
    <td class=a3 align=middle>

Сͼ��URL</td>
    <td class=a3>

<input size="30" name="icon"> ��ʾ��������ҳ��̳�����ұ�
</td></tr>
   <tr height=25>
    <td class=a3 align=middle>

��ͼ��URL</td>
    <td class=a3>

<input size="30" name="logo"> ��ʾ����̳���Ͻ�
</td></tr>
   <tr height=25>
    <td class=a3 align=middle>

ͨ������</td>
    <td class=a3>

<input size="30" name="password"> ����ǹ�����̳���˴�������</td></tr>
   <tr height=25>
    <td class=a3 align=middle>

�Ƿ���ʾ����̳�б���������������������
    <td class=a3>

<input type="radio" CHECKED value="0" name="hide" id=hide1><label for=hide1>��ʾ</label>
 
<input type="radio" value="1" name="hide" id=hide2><label for=hide2>����</label> </tr>
   <tr height=25>
    <td class=a3 align=middle colspan="2">

�� <input type="submit" value=" �� �� " name="Submit"><br></td></tr></table>
</form>
<center><br><a href=javascript:history.back()>< �� �� ></a>


<%
end sub
sub bbsaddok
if Request("bbsname")="" then error2("��������̳����")



master=split(Request("moderated"),"|")
for i = 0 to ubound(master)
If conn.Execute("Select id From [user] where username='"&HTMLEncode(master(i))&"'" ).eof and master(i)<>"" Then error2(""&master(i)&"���û����ϻ�δע��")
next


userlist=replace(Request("userlist"),vbCrlf,"")

rs.Open "bbsconfig",Conn,1,3
rs.addnew
rs("followid")=Request("classid")
rs("bbsname")=HTMLEncode(Request("bbsname"))
rs("moderated")=Request("moderated")
rs("pass")=Request("pass")
rs("password")=Request("password")
rs("userlist")=userlist
rs("intro")=HTMLEncode(Request("intro"))
rs("icon")=HTMLEncode(Request("icon"))
rs("logo")=HTMLEncode(Request("logo"))
rs("hide")=Request("hide")
rs.update
id=rs("id")

rs.close

classs

end sub




sub bbsmanagexiuok

if Request("bbsname")="" then error2("��������̳����")



master=split(Request("moderated"),"|")
for i = 0 to ubound(master)
If conn.Execute("Select id From [user] where username='"&HTMLEncode(master(i))&"'" ).eof and master(i)<>"" Then error2(""&master(i)&"���û����ϻ�δע��")
next

userlist=replace(Request("userlist"),vbCrlf,"")

sql="select * from bbsconfig where id="&id&""
rs.Open sql,Conn,1,3


rs("followid")=Request("classid")
rs("SortNum")=int(Request("SortNum"))
rs("bbsname")=HTMLEncode(Request("bbsname"))
rs("moderated")=Request("moderated")
rs("pass")=Request("pass")
rs("password")=Request("password")
rs("userlist")=userlist
rs("intro")=HTMLEncode(Request("intro"))
rs("icon")=HTMLEncode(Request("icon"))
rs("logo")=HTMLEncode(Request("logo"))
rs("hide")=Request("hide")
rs.update

rs.close
%>
�༭�ɹ�<br><br><a href=javascript:history.back()>�� ��</a>
<%
end sub


sub bbsmanagexiu

sql="select * from bbsconfig where id="&id&""
Set Rs=Conn.Execute(sql)
%>


<form method="post" action="?menu=bbsmanagexiuok" name=form><input type=hidden name=id value=<%=rs("id")%>>
<table cellspacing="1" cellpadding="2" width="80%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan="2">�༭��̳����</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle>

��̳����</td>
    <td class=a3>


<input size="15" name="bbsname" value="<%=rs("bbsname")%>"> &nbsp; ���� <input size="2" name="SortNum" value="<%=rs("SortNum")%>">
��С��������</td></tr>
   <tr height=25>
    <td class=a3 align=middle>

��̳���</td>
    <td class=a3>


<select name="classid">
<option value="<%=rs("followid")%>">Ĭ��</option>
<option value="0">һ������</option>
<%BBSList(0)%>
</select> һ�����ཫ�����������</td></tr>
   <tr height=25>
    <td class=a3 align=middle>


��̳����</td>
    <td class=a3>


<input size="30" name=moderated value="<%=rs("moderated")%>"> �����������á�|���ָ����磺yuzi|ԣԣ
</td></tr>
   <tr height=25>
    <td class=a3 align=middle>


��̳����</td>
    <td class=a3>


<textarea rows="5" name="intro" cols="50"><%=rs("intro")%></textarea></td></tr>
   <tr height=25>
    <td class=a3 align=middle>

��̳״̬</td>
    <td class=a3>

<select size="1" name="pass">
<option value=0 <%if rs("pass")=0 then%>selected<%end if%>>�ر�</option>
<option value=1 <%if rs("pass")=1 then%>selected<%end if%>>����</option>
<option value=2 <%if rs("pass")=2 then%>selected<%end if%>>�ο�ֹ��</option>
<option value=3 <%if rs("pass")=3 then%>selected<%end if%>>��Ȩ���</option>
<option value=4 <%if rs("pass")=4 then%>selected<%end if%>>��Ȩ����</option>
</select>
</td></tr>




   <tr height=25>
    <td class=a3 align=middle>

��Ȩ�û�����</td>
    <td class=a3>

<textarea rows="3" name="userlist" cols="40"><%=rs("userlist")%></textarea> �������|�ָ����磺yuzi|ԣԣ
</td></tr>

   <tr height=25>
    <td class=a3 align=middle>


Сͼ��URL</td>
    <td class=a3>


<input size="30" name="icon" value="<%=rs("icon")%>"> ��ʾ��������ҳ��̳�����ұ�
</td></tr>
   <tr height=25>
    <td class=a3 align=middle>


��ͼ��URL</td>
    <td class=a3>


<input size="30" name="logo" value="<%=rs("logo")%>"> ��ʾ����̳���Ͻ�</td></tr>



   <tr height=25>
    <td class=a3 align=middle>

ͨ������</td>
    <td class=a3>

<input size="30" name="password" value="<%=rs("password")%>"> ����ǹ�����̳���˴�������</td></tr>

   <tr height=25>
    <td class=a3 align=middle>


�Ƿ���ʾ����̳�б�</td>
    <td class=a3>


<input type="radio" <%if rs("hide")=0 then%>CHECKED <%end if%>value="0" name="hide" value="0" id=hide1><label for=hide1>��ʾ</label> 
<input type="radio" <%if rs("hide")=1 then%>CHECKED <%end if%>value="1" name="hide" value="1" id=hide2><label for=hide2>����</label> </td></tr>
   <tr height=25>
    <td class=a3 align=middle colspan="2">


<input type="submit" value=" �� �� " name="Submit1"></td></tr></table><br></form>
<center><br><a href=javascript:history.back()>< �� �� ></a>
<Script>
document.form.intro.value = unybbcode(document.form.intro.value);
function unybbcode(temp) {
temp = temp.replace(/<br>/ig,"\n");
return (temp);
}
</Script>
<%
end sub



sub bbsmanage

%>

<script>
var BBSList="<%BBSList(0)%>"
</script>


��̳����<b><font color=red><%=conn.execute("Select count(id)from bbsconfig")(0)%></font></b>������������<b><font color=red><%=conn.execute("Select count(id)from forum")(0)%></font></b>������������<b><font color=red><%=conn.execute("Select count(id)from reforum")(0)%></font></b><br>



<table cellspacing="1" cellpadding="2" width="80%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan="3">����ɾ������</td>
  </tr>
  
  <form method="post" action="?menu=deltopicok">

   <tr height=25>
    <td class=a3 align=middle width="50%">
ɾ�� <INPUT size=3 name=TimeLimit value="180">
����ǰ������</td>
    <td class=a3 align=middle>
<select name="bbsid">
<option value="">������̳</option>
<script>document.write(BBSList);</script>
</select></td>
    <td class=a3 align=middle>
 <input type="submit" value=" ȷ �� "></td></form></tr>
  
  
  
  
<form method="post" action="?menu=delforumok">
<tr height=25><td class=a3 align=middle width="50%">
ɾ�� <INPUT size=3 name=TimeLimit value="180">
��û�и��µ�����</td>
    <td class=a3 align=middle>
<select name="bbsid">
<option value="">������̳</option>
<script>document.write(BBSList);</script>
</select></td>
    <td class=a3 align=middle>
 <input type="submit" value=" ȷ �� "></td></form></tr>

   <tr>
    <td class=a4 align=middle>
    <form method="post" action="?menu=delusertopicok">
ɾ�� <input size="10" name="username"> �������������
</tr>
    <td class=a4 align=middle>
    
<select name="bbsid">
<option value="">������̳</option>
<script>document.write(BBSList);</script>
</select></tr>
    <td class=a4 align=middle>
	<input type="submit" value=" ȷ �� "></tr>
	</tr></form>

   <tr height=25>
    <td class=a4 align=middle>
    <form method="post" action="?menu=delliketopicok">
ɾ������������� <input size="10" name="topic"> ����������
</tr>
    <td class=a4 align=middle>
    
<select name="bbsid">
<option value="">������̳</option>
<script>document.write(BBSList);</script>
</select></tr>
    <td class=a4 align=middle>
	<input type="submit" value=" ȷ �� "></tr></form>

</table>

<br>

<table cellspacing="1" cellpadding="2" width="80%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>����ɾ������</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle width="50%">


<form method="post" action="?menu=delretopicok">
ɾ�� <INPUT size=3 name=TimeLimit value="180">
����ǰ�Ļ��� <input type="submit" value=" ȷ �� "></td></form>

    <td class=a3 align=middle width="50%">
    <form method="post" action="?menu=deluserretopicok">
ɾ�� <input size="10" name="username"> ��������л��� <input type="submit" value=" ȷ �� "></td></form></tr>
    
   </table>


<form method="post" action="?menu=delbbsconfigok">
<table cellspacing="1" cellpadding="2" width="80%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle>����ɾ����̳</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle>
ɾ�� <INPUT size=3 name=TimeLimit value="90">
��û�������ӵ���̳

<input type="submit" value=" ȷ �� "></td>
    </tr>
    </table></form>



<form method="post" action="?menu=uniteok">
<table cellspacing="1" cellpadding="2" width="80%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=3>�ƶ���̳����</td>
  </tr>
   <tr>
    <td class=a3 align=middle>

�� <select name="ybbs">
<script>document.write(BBSList);</script>
</select> �ƶ���
</td>
    <td class=a3 align=middle>

<select name="hbbs">
<script>document.write(BBSList);</script>
</select>
</td>
    <td class=a3 align=middle rowspan="2">

<INPUT type=submit value=" ȷ �� " name=submit></td>
	</tr>
   <tr>
    <td class=a3 align=middle width="49%">

���ƶ�

<input size="2" name="TimeLimit" value="0"> ��ǰ������
</td>
    <td class=a3 align=middle>

���ƶ�

<input size="8" name="username"> ���������</td>
    </tr>
   </table></form>






<%
end sub

sub upclubconfig
%>

<table cellspacing="1" cellpadding="2" width="70%" border="0" class="a2" align="center">
  <tr height=25>
    <td class=a1 align=middle colspan=2>�������ϸ���</td>
  </tr>
   <tr height=25>
    <td class=a3 align=middle colspan=2>
    
�˲�����������̳���ϣ��޸���̳ͳ�Ƶ���Ϣ<br>
<a href="?menu=upclubconfigok">������������̳ͳ������</a><br>


<a href="?menu=delapplication">����������ϵ�application����</a><br>



</td></tr></table><br>

<%
end sub

sub upclubconfigok


rs.Open "bbsconfig",Conn
do while not rs.eof

allarticle=conn.execute("Select count(forumid) from forum where forumid="&rs("id")&"")(0)
if allarticle>0 then
allrearticle=conn.execute("Select sum(replies) from forum where forumid="&rs("id")&"")(0)
else
allrearticle=0
end if

conn.execute("update [bbsconfig] set toltopic="&allarticle&",tolrestore="&allarticle+allrearticle&" where ID="&rs("id")&"")


rs.movenext
loop
rs.close

%>
�����ɹ���<br>
<br>
�Ѿ���������������̳��ͳ������<br>

<%
end sub

htmlend

sub activation
%>
<script>
function CheckAll(form){for (var i=0;i<form.elements.length;i++){var e = form.elements[i];if (e.name != 'chkall')e.checked = form.chkall.checked;}}
</script>
  <form method="POST" action=?menu=activationok>

<TABLE cellSpacing=1 cellPadding=1 width=99% align=center border=0 class=a2>
<TR height=25 class=a1>
		<td align="center">����</td>
		<td align="center">����</td>
		<td align="center">����</td>
		<td align="center">����ʱ��</td></tr>
<%
sql="select * from forum where deltopic=1 order by id Desc"
rs.Open sql,Conn,1

pagesetup=20 '�趨ÿҳ����ʾ����
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
<TR height=25>

      <TD align=middle width="6%" class=a3>
<INPUT type=checkbox value=<%=rs("id")%> name=id></TD>
      <TD width="60%" align=left class=a4>&nbsp;<img border=0 src=images/brow/<%=rs("icon")%>.gif> <a target=_blank href=ShowPost.asp?id=<%=rs("id")%>><%=rs("topic")%></a></TD>
      <TD align=middle width=9% class=a3><a href=Profile.asp?username=<%=rs("username")%>><%=rs("username")%>��</TD>

      <TD align=center width=30% class=a4>&nbsp;<%=rs("posttime")%></TD>
    </TR>

<%

RS.MoveNext
loop
RS.Close


%>


<TR height=25>

      <TD width="6%" class=a3 align="center"><input type=checkbox name=chkall onclick=CheckAll(this.form) value="ON"></TD>

      <TD width="60%" class=a3>		
<b>&nbsp;����
<font color="990000"><%=TotalPage%></font> ҳ [
<script>
PageCount=<%=TotalPage%> //��ҳ��
topage=<%=PageCount%>   //��ǰͣ��ҳ
for (var i=1; i <= PageCount; i++) {
if (i <= topage+3 && i >= topage-3 || i==1 || i==PageCount){
if (i > topage+4 || i < topage-2 && i!=1 && i!=2 ){document.write(" ... ");}
if (topage==i){document.write(" "+ i +" ");}
else{
document.write("<a href=?menu=activation&topage="+i+">"+ i +"</a> ");
}
}
}
</script>]</b>
		
</TD>

      <TD width="48%" class=a3 colspan="2" align="center">
		
		
<input type=submit onclick="checkclick('��ȷ��Ҫ������ѡ������?');" value=" �� �� "></TD>
    </TR>
    


</table><%
end sub

dim ii
ii=0
sub sort(selec)
	sql="Select * From bbsconfig where followid="&selec&" and hide=0 order by SortNum"
	Set Rs1=Conn.Execute(sql)


	do while not rs1.eof

if selec=0 then
%>
  <tr class=a1 id=TableTitleLink height=25>
<td>��<a target=_blank href=ShowForum.asp?forumid=<%=rs1("id")%>><%=rs1("bbsname")%></a></td>
<td align="right" width="190">
<a href=?menu=bbsadd&id=<%=rs1("id")%>>������̳</a> | <a href=?menu=bbsmanagexiu&id=<%=rs1("id")%>>�༭��̳</a> | 
<a onclick=checkclick('��ȷ��Ҫɾ������̳����������?') href=?menu=bbsmanagedel&id=<%=rs1("id")%>>ɾ����̳</a>
</tr>

<%
else
%>
<tr class=a3 height=25>
<td>��<%=string(ii*2,"��")%><a target=_blank href=ShowForum.asp?forumid=<%=rs1("id")%>><%=rs1("bbsname")%></a></td>
<td align="right">
<a href=?menu=bbsadd&id=<%=rs1("id")%>>������̳</a> | <a href=?menu=bbsmanagexiu&id=<%=rs1("id")%>>�༭��̳</a> | 
<a onclick=checkclick('��ȷ��Ҫɾ������̳����������?') href=?menu=bbsmanagedel&id=<%=rs1("id")%>>ɾ����̳</a>
</tr>
<%
end if
ii=ii+1
	sort rs1("id")
ii=ii-1
	rs1.movenext
	loop
	Set Rs1 = Nothing
end sub

%>