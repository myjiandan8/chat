<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<% urls="../" %>
<!--#include file="../sys/sys.asp"-->

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>������ҳ</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>

<body bgcolor="#EEF2FF" topmargin="0">


<%
'ɾ����¼
cl=request("cl")
uid=clng(request("uid"))
if cl="del" and request("queding")="" then  %>

<script language="vbscript">
	if msgbox ("��ȷ��ɾ����",vbYesNo+vbQuestion,"ȷ��ɾ��")=vbYes then
	   window.location.href="listuser.asp?uid=<%=request("uid")%>&queding=OK&cl=del"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<% 
end if

if cl="del" and request("queding")<>"" then 


			
			conn.Execute ("delete from [user] where uid="&uid)
			BChatconn.Execute ("delete from [user] where uid="&uid)
			bbsconn.Execute ("delete from [user] where uid="&uid)
			MeChatconn.Execute ("delete from [userinfo] where uid="&uid)
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "������������ɾ���ɹ���������������"
        window.location.href="<%=session("adminOldUrl")%>"

-->
</script>

<% end if %>


<%

'URL Я����Ϣȡֵ
myKeyword=Request("myKeyword")

dm=cint(Request("dm"))
xz=Request("xz")
max=cint(Request("max"))
sc=Request("sc")

if dm="" or dm=0 then dengji=0

if xz="" then xz="s"

if max="" or max=0 then max=20

if sc="" then sc="desc"


maxPerPage=max 'ÿҳ��ʾ�ļ�¼��

page=Request("page")



if (page="" or isempty(page)) then page=1
thisUrl="listuser.asp?max="&max&"&myKeyword="&myKeyword
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select top 100 * from [User] where 1=1"


if dm>0 then
	sql=sql&" and id2="& dm &" "
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

rsf.open sql,conn,1,1
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
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"> �û�����</td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="102">
        <tr>
          <td width="100%" height="1"></td>
        </tr>
        <form method="post" action="listuser.asp" name="form1">
        <tr>
          <td width="100%" align="right" height="30">�� 
          <img border="0" src="../img/mini_query.gif"> �û�����&nbsp; <input type="text" name="myKeyword" size="16" value="<%=myKeyword%>"> 
          

<SELECT class=f11 name=dm size="1"> 

<option selected value="s">ѡ�����</option>
<%
sql="select * from D_2 where id1=1 order by id2 asc"
set rsm=conn.execute (sql)
do while not (rsm.eof or err)
%> 
<option value=<%=rsm("id2")%>><%=rsm("name2")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</SELECT>



<SELECT class=f11 name=xz size="1"> 
<option value="s" selected>��ʾȫ��</option>
<option value="0">���û�Ա</option>
<option value="1">��ͨ��Ա</option>
<option value="2">�ƽ��Ա</option>
<option value="3">��ʯ��Ա</option>
<option value="4">VIP��Ա</option>
</SELECT>

<SELECT class=f11 name=max size="1"> 
<option value=5>��ʾ5��</option>
<option selected value="20">��ʾ20��</option>
<OPTION value=50 >��ʾ50��</OPTION> 
<option value=100>��ʾ100��</option>
<option value=900>��ʾ900��</option>
</SELECT>

<SELECT class=f11 name=sc size="1"> 
<option value="desc">����</option>
<option value="asc">˳��</option>
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
          <td width="100%" height="27"><% vurl="listuser.asp?dm="&dm&"&max="&max&"&sc="&sc&"&myKeyword="&myKeyword &"&" %> 
          &nbsp;��ʾ��ʽ : | <a href="<%=vurl%>xz=s">��ʾȫ��</a> | <a href="<%=vurl%>xz=0">
          ���û�Ա</a> | <a href="<%=vurl%>xz=1">��ͨ��Ա</a> |
          <a href="<%=vurl%>xz=2">�ƽ��Ա</a> | <a href="<%=vurl%>xz=3">��ʯ��Ա</a> |
          <a href="<%=vurl%>xz=4">�ر��Ա</a> |</td>
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
                <td width="6%" height="29" bgcolor="#E7E6FF" align="center">ѡ��</td>
                <td width="19%" height="29" bgcolor="#E7E6FF" align="center">�ʺ�</td>
                <td width="20%" height="29" bgcolor="#E7E6FF" align="center">�س�</td>
                <td width="11%" height="29" bgcolor="#E7E6FF" align="center">
                �ʻ����</td>
                <td width="11%" height="29" bgcolor="#E7E6FF" align="center">
                ������</td>
                <td width="14%" height="29" bgcolor="#E7E6FF" align="center">����</td>
                <td width="7%" height="29" bgcolor="#E7E6FF" align="center">�Ա�</td>
                <td width="12%" height="29" bgcolor="#E7E6FF" align="center">
                <span lang="zh-cn">����</span></td>
              </tr>
              
               <form method="post" action="index.asp?xz=gongqiu&uid=" name="formd">
<%

		i=1
		if not (rsf.eof or err) then rsf.move (page-1)*maxPerPage
		do while not (rsf.eof or err) 
%>
              <tr>
                <td width="6%" height="30" align="center">
                <input type="checkbox" name="C1" value="ON"></td>
                <td width="19%" height="30" align="center">��<a href="edituser.ASP?id=<%=rsf("uid")%>"><%=rsf("name")%><%=rsf("passwd")%></a></td>
                <td width="20%" height="30" align="center">��<%=rsf("name")%></td>
                <td width="11%" height="30" align="center">��</td>
                <td width="11%" height="30" align="center">��</td>
                <td width="14%" height="30" align="center">��<%=rsf("name2")%></td>
                <td width="7%" height="30" align="center">��<%=rsf("sex")%></td>
                <td width="12%" height="30" align="center"> 
                <a title="ɾ�����û�" href="listuser.asp?uid=<%=rsf("uid")%>&cl=del">ɾ</a>
                <a title="���ø��û�" href="listuser.asp?uid=<%=rsf("uid")%>&cl=kick">��</a>
                <a title="�޸ĺͲ鿴���û��������Ϣ" href="edituser.asp?uid=<%=rsf("uid")%>">��</a></td>
              </tr>
       <%
		i=i+1
		if i>maxPerPage then exit do
		rsf.moveNext
		loop
%>
              <tr>
                <td width="100%" height="25" align="left" colspan="8">
                &nbsp;<span lang="zh-cn">ѡ���û�����</span>:<span lang="zh-cn">
                <input type="submit" value=" ɾ�� " name="sc"></span></td>
              </tr>
              </form>
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
   �� <%=rsf.recordCount%> �� ÿҳ��ʾ<%=maxPerPage%>������<%=page%>/<%=rsf.pageCount%> ҳ
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