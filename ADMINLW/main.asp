<!-- #include file="checkuser.asp"-->
<!-- #include file="sys/sys.asp"-->
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>������ҳ</title>
<LINK href="img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">

<% call top %>
<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="286">
    <tr>
      <td width="100%" background="img/bg.gif" height="22">&nbsp;<img border="0" src="img/jt.gif">
      <span lang="zh-cn">��λ[����]����Աͬ����֪</span></td>
    </tr>
    <tr>
      <td width="100%" height="262" valign="top">��<p><span lang="zh-cn">&nbsp;&nbsp;&nbsp; 
      ���ӵ�в�ͬ��Ȩ�������²�ͬ������.</span></p>
      <p><span lang="zh-cn">&nbsp;&nbsp;&nbsp; ������������ϵͳ�����뼰ʱͬ���� ��־�� ��ϵ 
      QQ:779811&nbsp; 0351-6179283 ������ɲ���Ҫ����ʧ</span></p>
      <p>&nbsp;&nbsp;&nbsp; <b>���Ĺ���Ȩ����:
     <% 
      Select Case session("quanxian")
        Case 0
      	response.write "ϵͳ��������Ա,ӵ�����е�Ȩ��,����һ������������!"
      	Case 1
      	response.write "ϵͳ����Ա,ӵ�г�ϵͳ�趨�������Ȩ��!"
      
      end Select
      %> </b>
      
      </p>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="55">
    <tr>
      <td width="648" background="img/bg.gif" height="23" colspan="2">&nbsp;<img border="0" src="img/jt.gif">
      <span lang="zh-cn">��Ŀǰ�ĵ���ϵͳ״̬</span></td>
    </tr>
    <tr>8008061800
      <td width="32" height="30">&nbsp;<img border="0" src="img/ip.gif"></td>
      <td width="612" height="30">
<%
strsplit=split(Request.Servervariables("HTTP_USER_AGENT"),";")
strsplit(1)=replace(strsplit(1),"MSIE","Internet Explorer")
strsplit(2)=replace(strsplit(2),")","")
strsplit(2)=replace(strsplit(2),"NT 5.1","XP")
strsplit(2)=replace(strsplit(2),"NT 5.0","2000")
strsplit(1)=Trim(strsplit(1))
strsplit(2)=Trim(strsplit(2))

%>
&nbsp; ����IP:<%=Request.ServerVariables("REMOTE_ADDR")%>&nbsp;&nbsp;&nbsp;&nbsp; �˿�:<%=Request.ServerVariables("REMOTE_PORT")%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                ����ϵͳ:<%=strsplit(2)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                �����:<%=strsplit(1)%></td>
    </tr>
    </table>
  </center>
</div>

<% call di  %>

</body>

</html>