<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="inc.asp"-->
<% Call quanxian(5) %>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>���ֲ���Ա����</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>

<body bgcolor="#EEF2FF" topmargin="0">


<%
'�޸���Ϣ
if request("dengji")<>"" and request("uid")<>"" then

sql="select top 100 * from [User] where uid="& request("uid")
rs.open sql,bbsconn,1,3

		if rs("faction")<>factionname then errstr("���û����Ǳ����ֲ��ĳ�Ա��")
		
	    rs("shenfen")=request("shenfen")
	    rs("dengji")=request("dengji")
		
       rs.Update
       rs.close
		
	   Call wenti("�޸ĳɹ���")
end if




'ɾ����¼
cl=request("cl")
if cl="del" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("��ȷ�����˸��û���",vbYesNo+vbQuestion,"ȷ��")=vbYes then
	   window.location.href="list.asp?uid=<%=request("uid")%>&queding=OK&cl=del"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<% 
end if

if cl="del" and request("queding")<>"" then 



			bbsconn.execute("update [user] set faction='',shenfen='',dengji=0 where uid=" & Request("uid"))
			Call wenti("���˳ɹ���")

end if %>


<%

'URL Я����Ϣȡֵ
myKeyword=Request("myKeyword")

dengji=cint(Request("dengji"))
xz=Request("xz")
max=cint(Request("max"))
sc=Request("sc")

if dengji="" or dengji=0 then dengji=10

if xz="" then xz="s"

if max="" or max=0 then max=20

if sc="" then sc="desc"



maxPerPage=max 'ÿҳ��ʾ�ļ�¼��

page=Request("page")



if (page="" or isempty(page)) then page=1
thisUrl="listuser.asp?max="&max&"&myKeyword="&myKeyword
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select top 100 * from [User] where faction='"& factionname &"'"


if dengji<10 then
	sql=sql&" and dengji="& dengji &" "
end if

if xz<>"s" then
	'sql=sql&" and huiyuan="& xz &" "
end if
 
if myKeyword<>"" then
	sql=sql&" and (name like '%"&myKeyword&"%')"
end if


sql=sql&" order by uid "&sc

'response.write sql
'response.End

rsf.open sql,bbsconn,1,1
rsf.pagesize=MaxPerPage
%>
<script language=Javascript>
<!--
function jumpTo(i){
if(i==1){
	this.document.location="<%=thisUrl%>";}
if(i==2){
	this.document.location="<%=thisUrl%>&page=<%=page-1%>";}
if(i==3){
	this.document.location="<%=thisUrl%>&page=<%=page+1%>";}
if(i==4){
	this.document.location="<%=thisUrl%>&page=<%=rsf.pageCount%>";}
}
//-->
</script>
<br>
<div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    ��</td>
  </tr>
</table>
  </center>
</div>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="232">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"> 
		[<%=factionname%>]���ֲ���Ա����</td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="102">
        <tr>
          <td width="100%" height="1"></td>
        </tr>
        <form method="post" action="list.asp" name="form1">
        <tr>
          <td width="100%" align="right" height="30">�� 
          <img border="0" src="../img/mini_query.gif"> �û�����&nbsp; <input type="text" name="myKeyword" size="16" value="<%=myKeyword%>">
<SELECT name=dengji size="1">
<option value="10" <%if dengji=10 then response.write " selected"%>>ȫ��</option>
<option value=0 <%if dengji=0 then response.write " selected"%>>δ��֤</option>
<%
i=1
do while not (i>9)

%> 
<option value=<%=i%> <%if dengji=i then response.write " selected"%>><%=i%>��</option>

<% 
  i=i+1
  loop
%>
</SELECT><SELECT class=f11 name=max size="1"> 
<option value="20" <%if max=20 then response.write " selected"%>>��ʾ20��</option>
<option value=5 <%if max=5 then response.write " selected"%>>��ʾ5��</option>
<OPTION value=50  <%if max=50 then response.write " selected"%>>��ʾ50��</OPTION> 
<option value=100 <%if max=100 then response.write " selected"%>>��ʾ100��</option>
</SELECT>

<SELECT class=f11 name=sc size="1"> 
<option value="desc" <%if sc="desc" then response.write " selected"%>>����</option>
<option value="asc" <%if sc="asc" then response.write " selected"%>>˳��</option>
</SELECT>

<input type="submit" name="Submit" value="����">
          
          </td>
        </tr>
        </form>
        <tr>
          <td width="100%" align="center" height="15">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="27">��</td>
        </tr>
        <tr>
          <td width="100%" height="3"> 
          
          </td>
        </tr>
        

        <tr>
          <td width="100%" height="42"> 
          
          <div align="center">
            <center>
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="95%" id="AutoNumber6" height="89">
              <tr>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">�ʺ�</td>
                <td width="19%" height="29" bgcolor="#E7E6FF" align="center">�û���</td>
                <td width="7%" height="29" bgcolor="#E7E6FF" align="center">�Ա�</td>
                <td width="30%" height="29" bgcolor="#E7E6FF" align="center">
				���ֲ������</td>
                <td width="16%" height="29" bgcolor="#E7E6FF" align="center">
				��ݵȼ�</td>
                <td width="20%" height="29" bgcolor="#E7E6FF" align="center">
                <span lang="zh-cn">����</span></td>
              </tr>
              
               
<%

		i=1
		if not (rsf.eof or err) then rsf.move (page-1)*maxPerPage
		if (rsf.eof or err) then
%>
              <tr>
                <td width="100%" height="30" align="center" colspan="6">
                �����ľ��ֲ���û�г�Ա��
                </td>
              </tr>

<%		
		else
		do while not (rsf.eof or err) 
%>
	<form method="post" action="list.asp" name="form3">
              <tr>
                <td width="10%" height="30" align="center">��<input type="hidden" name="uid" size="18" maxlength="10" value="<%=rsf("uid")%>"><a href="edituser.ASP?id=<%=rsf("uid")%>"><%=rsf("uid")%></a></td>
                <td width="19%" height="30" align="center">��<%=rsf("username")%></td>
                <td width="7%" height="30" align="center">��<%=rsf("sex")%></td>
                <td width="30%" height="30" align="center">
				<input type="text" name="shenfen" size="20" value="<%=rsf("shenfen")%>"></td>
                <td width="16%" height="30" align="center">
<SELECT name=dengji>
<option value=0 <%if rsf("dengji")=0 then response.write " selected"%>>δ��֤</option>
<%
i=1
do while not (i>9)

%> 
<option value=<%=i%> <%if rsf("dengji")=i then response.write " selected"%>><%=i%>��</option>

<% 
  i=i+1
  loop
%>
</SELECT></td>
                <td width="20%" height="30" align="center"> 
                <input type="submit" value="�޸�" name="sc2">
                ���� <a href="list.asp?cl=del&uid=<%=rsf("uid")%>">����</a></td>
              </tr>
              
    </form>        
       <%
		i=i+1
		if i>maxPerPage then exit do
		rsf.moveNext
		loop
		
		end if
%>
              <tr>
                <td width="100%" height="25" align="left" colspan="6"></td>
              </tr>
             
            </table>
            </center>
          </div>
          
          </td>
        </tr>
        
        <tr>
          <td width="100%" height="1" valign="top"></td>
        </tr>
        

        <tr>
          <td width="100%" height="1" valign="top"></td>
        </tr>
        <tr>
          <td width="100%" height="16" valign="top">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="10" align="right"> 
   �� <%=rsf.recordCount%> ����Ա ÿҳ��ʾ<%=maxPerPage%>������<%=page%>/<%=rsf.pageCount%> ҳ
        <%if page>1 then%>
        <input type="button" name="Submit3" value="��ҳ" onClick="Javascript:jumpTo(1)">
        <input type="submit" name="Submit4" value="��ҳ" onClick="Javascript:jumpTo(2)">
        <%else%>
        <input type="button" name="Submit3" value="��ҳ" disabled>
        <input type="submit" name="Submit4" value="��ҳ" disabled>
        <%end if
if rsf.recordCount>page*maxPerPage then%>
        <input type="submit" name="Submit5" value="��ҳ" onClick="Javascript:jumpTo(3)">
        <input type="submit" name="Submit6" value="ĩҳ" onClick="Javascript:jumpTo(4)">
        <%else%>
        <input type="submit" name="Submit5" value="��ҳ" disabled>
        <input type="submit" name="Submit6" value="ĩҳ" disabled><b> </b>
                        
                        

        <%end if%>
<SELECT name=DMID2 onChange=location.href=options[selectedIndex].value;>
<option  selected>��<%=page%>ҳ</option>
<%
x=rsf.pageCount
i=1
do while not (i>x)

%> 
<option value=<%=thisUrl%>&page=<%=i%>>��<%=i%>ҳ</option>

<% 
  i=i+1
  loop
%>
</SELECT>
        
          </td>
        </tr>
        <tr>
          <td width="100%" height="5" valign="top"> 
          
          </td>
        </tr>
      </table>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>



</body>