<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>��Ŀ��ѯ</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">
<%
'URL Я����Ϣȡֵ
myKeyword=Request("myKeyword")

dm=Request("dm")
xz=Request("xz")
max=Request("max")
sc=Request("sc")

if dm="" then
   dm="s"
end if

if xz="" then
   xz="s"
end if

if max="" then
   max=20
end if

if sc="" then
   sc="desc"
end if


maxPerPage=max 'ÿҳ��ʾ�ļ�¼��

page=Request("page")



if (page="" or isempty(page)) then page=1
thisUrl="sou.asp?xz="&xz&"&dm="&dm&"&sc="&sc&"&max="&max&"&myKeyword="&myKeyword
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select * from CW_user where 1=1 "


if dm<>"s" then
	'sql=sql&" and id2="& dm &" "
end if

if xz<>"s" then
	'sql=sql&" and huiyuan="& xz &" "
end if
 
if myKeyword<>"" then
	sql=sql&" and (name like '%"&myKeyword&"%')"
end if


sql=sql&" order by id "&sc

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
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"> �û���������������</td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="99">
        <tr>
          <td width="100%" height="1" colspan="2"></td>
        </tr>
        <form method="post" action="listuser.asp" name="form1">
        <tr>
          <td width="100%" align="right" height="30" colspan="2">�� 
          <img border="0" src="../img/mini_query.gif"> �ʻ�����&nbsp; <input type="text" name="myKeyword" size="16" value="<%=myKeyword%>">&nbsp;<SELECT class=f11 name=max size="1"> 
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
          <td width="100%" align="center" height="15" colspan="2">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
<form name=myform method=post action="ruzhang.asp">
        <tr>
          <td width="57%" height="15"><% vurl="listuser.asp?dm="&dm&"&max="&max&"&sc="&sc&"&myKeyword="&myKeyword &"&" %> 
          ���ʻ�ID��<input name=uid size=10> Ӫ���ͷ�ID��<input name=uid size=10>
			<input type="submit" value="����" name="B1"></td>
          <td width="43%" height="15">&nbsp;�����û�����<input name=name size=12> 
          <INPUT onclick="javascript:Check()" type="button" value="���û�ID" name="cmdcancel1" class="buttonface"> </td>
        </tr>
</form>
         <tr>
          <td width="100%" align="center" height="15" colspan="2">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="15" colspan="2">&nbsp;&nbsp; 
			���û����ϺͲ�����й�������ʻ������ڵ��������й���</td>
        </tr>
         <tr>
          <td width="100%" align="center" height="15" colspan="2">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="15" colspan="2"></td>
        </tr>
        <tr>
          <td width="100%" height="1" colspan="2"> 
          
          </td>
        </tr>
        

        <tr>
          <td width="100%" height="42" colspan="2"> 
          
          <div align="center">
            <center>
            <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="95%" id="AutoNumber6" height="89">
              <tr>
                <td width="6%" height="29" bgcolor="#E7E6FF" align="center">ѡ��</td>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">����ID</td>
                <td width="19%" height="29" bgcolor="#E7E6FF" align="center">�ʻ�</td>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">
				�ͷ�ID</td>
                <td width="12%" height="29" bgcolor="#E7E6FF" align="center">
                ���</td>
                <td width="11%" height="29" bgcolor="#E7E6FF" align="center">
                ����</td>
                <td width="11%" height="29" bgcolor="#E7E6FF" align="center">
                ���ý��</td>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">����</td>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">����</td>
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
                <td width="10%" height="30" align="center"><a title="���������û�" href="zhangwu.ASP?id=<%=rsf("uid")%>"><%=rsf("uid")%></a></td>
                <td width="19%" height="30" align="center"><a title="���������û�" href="zhangwu.ASP?id=<%=rsf("uid")%>"><%=rsf("name")%></a></td>
                <td width="10%" height="30" align="center"><a title="����鿴��Ӫ��Ա" href="zhangwu.ASP?id=<%=rsf("dl")%>"><%=rsf("dl")%></a></td>
                <td width="12%" height="30" align="center"><%=rsf("jn")%>Ԫ</td>
                <td width="11%" height="30" align="center"><%=rsf("dn")%>Ԫ</td>
                <td width="11%" height="30" align="center"><%=rsf("kn")%>Ԫ</td>
                <td width="10%" height="30" align="center"><%=rsf("xn")%>Ԫ</td>
                <td width="10%" height="30" align="center"><%=rsf("yn")%>Ԫ</td>
              </tr>
       <%
		i=i+1
		if i>maxPerPage then exit do
		rsf.moveNext
		loop
%>
              <tr>
                <td width="100%" height="25" align="left" colspan="9">
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
          <td width="100%" height="1" valign="top" colspan="2"></td>
        </tr>
        

        <tr>
          <td width="100%" height="1" valign="top" colspan="2"></td>
        </tr>
        <tr>
          <td width="100%" height="16" valign="top" colspan="2">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
        </tr>
        <tr>
          <td width="100%" height="10" align="right" colspan="2"> 
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
          <td width="100%" height="5" valign="top" colspan="2"> 
          
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