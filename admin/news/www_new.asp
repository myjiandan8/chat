<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>��������</title>
<LINK href="../../ADMINLW/img/lw.css" type=text/css rel=stylesheet>
</head>

<script>
var check=0
function checkall(form) { //v2.0
  if(check==0){
  for(var i=0;i<form.elements.length;i++)
  {
  var e=form.elements[i];
  e.checked=true;
  }
  check=1;
  chk.alt="ȫ��";
  }else{
  for(var i=0;i<form.elements.length;i++)
  {
  var e=form.elements[i];
  e.checked=false;
  }
  check=0;
  chk.alt="ȫѡ";
  }
}
var o=0;
function numcheck(form) { //v2.0
  for(var i=0;i<form.elements.length;i++)
  {
  var e=form.elements[i];
  if(e.checked)
  o=o+1;
  }
  if (o==1){

  B1.disabled=false;
  B2.disabled=false;
  }
  else if(o==0){
  B2.disabled=true;
  B1.disabled=true;
  }else{

  B1.disabled=true;
  B2.disabled=false;
  }
  o=0;
}



</script>

<body bgcolor="#EEF2FF" topmargin="0">

<%
nid=Request("nid")

if nid="" then 
nid="1"
end if

sql="select * from sys_news_fl where Nid="& nid &" order by nid asc"
set rsa=conn.execute (sql)
nfl=rsa("nfl")
rsa.close
set rsa=nothing

%>
<CENTER>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    <br>
    &nbsp;<img border="0" src="../../ADMINLW/img/closedfold.gif">
    ��Ŀǰ��λ��>>><a href="main.asp">��ҳ</a>>>><a href="addnew.asp">���Ź���</a>>>>����ά���������� </td>
  </tr>
</table>
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


maxPerPage=CInt(max) 'ÿҳ��ʾ�ļ�¼��

page=Request("page")



if (page="" or isempty(page)) then page=1
thisUrl="www_new.asp?nid="&nid&"&dm="&dm&"&sc="&sc&"&max="&max&"&myKeyword="&myKeyword
session("adminOldUrl")=thisUrl&"&page="&page

set rsf=server.createobject("adodb.recordset")
sql="select * from sys_news where nid="&nid


if dm<>"s" then
	sql=sql&" and DMID2='"& dm &"' "
end if

if xz<>"s" then
	sql=sql&" and huiyuan="& xz &" "
end if
 
if myKeyword<>"" then
	sql=sql&" and (title like '%"&myKeyword&"%' or uid like '%"&myKeyword&"%' or neirong like '"&myKeyword&"%')"
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
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="232">
    <tr>
      <td width="100%" background="../../ADMINLW/img/bg.gif" height="22">&nbsp;<img border="0" src="../../ADMINLW/img/jt.gif"> 
      ����ά����������&nbsp; --- �������:<b><%=nfl%></b></td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="102">
        <tr>
          <td width="100%" height="1"></td>
        </tr>
        <form method="post" action="www_new.asp" name="form1">
        <tr>
          <td width="100%" align="right" height="30">�� 
          <img border="0" src="../../ADMINLW/img/mini_query.gif"> ��������&nbsp; <input type="text" name="myKeyword" size="16" value="<%=myKeyword%>"> 
          
<SELECT class=f11 name=dm size="1"> 

<OPTION selected value=s >ѡ�����</OPTION> 

<%
sql="select * from SYS_DM2 where DMID1 like '1' "
set rss=conn.execute (sql)
do while not (rss.eof or err)
%> 
<option value=<%=rsS("DMID2")%>><%=rsS("DMNAME2")%></option>
<% rss.moveNext
  loop
%>
</SELECT><SELECT class=f11 name=xz size="1"> 

<option value="s" selected>��ʾȫ��</option>
<option value="0">δ��֤��Ա</option>
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

</SELECT><SELECT class=f11 name=sc size="1"> 
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
          <td width="100%" height="27"><% vurl="ETSuser.asp?dm="&dm&"&max="&max&"&sc="&sc&"&myKeyword="&myKeyword &"&" %> 
          &nbsp;��ʾ��ʽ : | <a href="<%=vurl%>xz=s">��ʾȫ��</a> | <input type="checkbox" name="chk" onClick="checkall(new_form);numcheck(new_form)" value="ON"> ȫѡ/ȫ��</td>
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
                <td width="5%" height="29" bgcolor="#E7E6FF" align="center">����</td>
                <td width="11%" height="29" bgcolor="#E7E6FF" align="center">������</td>
                <td width="41%" height="29" bgcolor="#E7E6FF" align="center">
                ������</td>
                <td width="10%" height="29" bgcolor="#E7E6FF" align="center">
                ����ʱ��</td>
                <td width="9%" height="29" bgcolor="#E7E6FF" align="center">
                <span lang="zh-cn">����</span></td>
              </tr>
              
            
<% 	if rsf.EOF then response.write"<tr><td width=100% height=25 align=left colspan=6> <font color=#ff0000>û�����ż�¼��</font><br></td></tr>"%>
          
               <form name="new_form"  action="delnews.asp"  method="post">

 <%

		i=1
		if not (rsf.eof or err) then rsf.move (page-1)*maxPerPage
		do while not (rsf.eof or err) 
%>
              <tr>
                <td width="6%" height="30" align="center">
                
                <input type="checkbox" onclick="numcheck(this.form)" name="id" value="<%=rsf("id")%>"></td>
                
                <td width="5%" height="30" align="center"><%=rsf("suzhu")%></a></td>
                <td width="11%" height="30" align="center"><%=rsf("uid")%></td>
                <td width="41%" height="30" align="center"><a href=www_news_liulan.asp?id=<%=rsf("id")%> target="_blank" title=������������� ><%=rsf("title")%></a>
          <%
          if rsf("nzusf")=1 then
          response.write"(������)"
          elseif rsf("nzusf")=2 then
          
        sql="select * from sys_news where id="&rsf("nzu")&" order by nid asc"
		set rsv=conn.execute (sql)

        response.write"(��:<a href=index.asp?uid="& uid &"&xz=news_xs&id="& rsv("id") &">"& rsv("title") &"</a>)"
        end if
         %></td>
                <td width="10%" height="30" align="center"><%=rsf("times")%></td>
                <td width="9%" height="30" align="center"> <a href="www_news.asp?id=<%=rsf("id")%>&xg=1">��</a> &nbsp; <a href="delnews.asp?id=<%=rsf("id")%>">ɾ</a></td>
              </tr>
       <%
		i=i+1
		if i>maxPerPage then exit do
		rsf.moveNext
		loop
%>

              <tr>
              
                <td width="100%" height="25" align="left" colspan="6">


                &nbsp;ѡ����������:&nbsp; <input type="checkbox" name="chk" onClick="checkall(new_form);numcheck(new_form)" value="ON"> ȫѡ/ȫ��  <input type="submit" value=" ɾ�� " name="sc"></td>
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

<CENTER>


<% call di %>
<p>
  
</body>
</html>