<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<%
xg=Request("xg")
id=Request("id")
nzusf=Request("nzusf")
nzusfD=Request("nzusfd")
nzu=Request("nzu")
nid=Request("nid")
tj=Request("tj")

if Request("form_content")<>"" or Request("title")<>""   then

   neirong=Request("form_content")
   if InStr(neirong,"<") >0 then
%>
<script language=vbs>
<!--
        MsgBox "�����ﲻ�ܰ���'<''>'���ţ�"
        window.location.href="Javascript:window.history.go(-1)"

-->
</script>

<%	else

if xg<>"" and id<>"" then
			
	set rsc=server.CreateObject ("adodb.recordset")
	sql="select * from SYS_NEWS where id="& id &" "
	rsc.Open sql,conn,1,3



    		rsc("NID")=Request("NID")
    		rsc("TITLE")=Request("TITLE")
    		rsc("neirong")=neirong
    		rsc("times")=now()
    		rsc("zy")=Request("zy")
    		
    	sql="select * from SYS_NEWS_LAIYUAN where linkid="& Request("linkid") &" "
		set rst=conn.execute (sql)
    	
    	
    		rsc("ncc")=rst("linkname")
    		rsc("nccurl")=rst("linkurl")
    		
		rst.close
    		
    		rsc.Update
			rsc.close
			
			neirong="�����޸ĳɹ���"
			response.write "<script>alert('�����޸ĳɹ����������Ź���');</script>"
else

			,��������HTML�ļ�
			
			Set fso = CreateObject(fso)
			
			folderPath = replace(folderPath,Mid(folderPath,InstrRev(folderPath,"\")-9),"") 
			
			Set objStream = fso.OpenTextFile(folderPath & "newstemplate\template\" & newstemplate & ".htm")
			
			while not objStream.AtEndOfStream
			
			newscontent= newscontent&objStream.ReadLine
			
			newscontent=replace(newscontent,"{newstitle}",strTitle)
			newscontent=replace(newscontent,"{newscontent}",strContent)
			if newsfrom="" then
			newscontent=replace(newscontent,"{newsfrom}","")
			else
			newscontent=replace(newscontent,"{newsfrom}","������ժ�ԣ�" & newsfrom & "&nbsp;&nbsp;&nbsp;&nbsp;")
			end if
			if Instr(newssetup,"2")>0 then
			newscontent=replace(newscontent,"{newslink}","<script language=""javascript"" src=""../../newsweb/news_link.asp?assort=" & assort_id & "&keyword=" & ToUrl(newskey) & """></script>")
			else
			newscontent=replace(newscontent,"{newslink}","")
			end if
			newscontent=replace(newscontent,"{newsdate}","�����ŷ����ڣ�" & Now())
			wend
			objStream.close
			
			htmlfilename=DateToFilename(Now())
			
			If not fso.FolderExists(folderPath & "newshtml\" & newsassort1) Then
				Set f = fso.CreateFolder(folderPath & "newshtml\" & newsassort1)
				set f=nothing
			end if
			Set objHtml = fso.CreateTextFile(folderPath & "newshtml\" & newsassort1 & "\" & htmlfilename)
			objHtml.WriteLine newscontent
			objHtml.close
			set fso=nothing

	

	set rsc=server.CreateObject ("adodb.recordset")
	sql="select * from SYS_NEWS"
	rsc.Open sql,conn,1,3
	        rsc.addnew
    		rsc("suzhu")=0
    		rsc("uid")=session("userID")
    		rsc("DMID1")=1
    		rsc("DMID2")=2
    		rsc("DMID3")=2
    		rsc("DMID4")=79
    		rsc("hangye")="������������"
    		rsc("hangye1")="������������"
    		rsc("NID")=Request("NID")
    		rsc("TITLE")=Request("TITLE")
    		rsc("neirong")=neirong
    	if nzusf=1 then
    		rsc("Nzusf")=1
    	else
    		if nzu="no" then
    		
    		rsc("Nzusf")=0
    		
    		else
    		
    		rsc("Nzusf")=2
    		rsc("Nzu")=Request("Nzu")
    		
    		end if
    	end if
    	
    	sql="select * from SYS_NEWS_LAIYUAN where linkid="& Request("linkid") &" "
		set rst=conn.execute (sql)
    	
    	
    		rsc("ncc")=rst("linkname")
    		rsc("nccurl")=rst("linkurl")
    		
		rst.close
			
    		rsc("times")=now()
    		rsc("zy")=Request("zy")
    		
    		
			rst.close 	
			rsc.Update
			rsc.close
	


	'������������ͼƬ�͸��� ��ӵ��ļ����ݿ����Ա��Ժ��ļ��Ĺ����ɾ����
			
	set rsd=server.CreateObject ("adodb.recordset")
	sql="select * from SYS_NEWS where suzhu=0 and uid='"& session("userID") &"' order by id desc "
	rsd.Open sql,conn,1,3
	
	
	set rsc=server.CreateObject ("adodb.recordset")
	sqld="select * from SYS_file where suzhu=0 and icp='news' and uid='"& session("userID") &"' and df=0 order by id desc "
	rsc.Open sqld,conn,1,3
		
	do while not (rsc.eof or err)
	
		
	rsc("icpid")=rsd("id")	
	rsc("df")=1
	
    if rsc("lx")=0 then
    
    	if rsd("filesf")=0 then
    	
    		rsd("filesf")=1
    		rsd("file")=rsc("id")
    		
    	else
    	
    		rsd("file")=rsd("file")&","&rsc("id")
    	end if
    	
    else
    
    
    	if rsd("picsf")=0 then
    	
    		rsd("picsf")=1
    		rsd("pic")=rsc("id")
    		
    	else
    	
    		rsd("pic")=rsd("pic")&","&rsc("id")
    	end if
    	
	end if

	rsc.Update
	rsd.Update
	
	rsc.moveNext
  	loop
	
    		
	rsd.close 	
	rsc.close		
	
	   		
	neirong="������ӳɹ���"
	response.write "<script>alert('������ӳɹ����������Ź���');window.location.href='addnew.asp';</script>"
		end if
	end if
end if
%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>��������</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
     <SCRIPT language=javascript>
<!--

	function rightStr(str,n)
	{
		if(str.length<=n)
		{
			return(str);
		}
		{
			return(str.substr(str.length-n,n));
		}
	}
	function addcontent(str1,str2)
	{
		form1.Form_Content.focus();
		if ((document.selection)&&(document.selection.type== "Text"))
		{
			var range= document.selection.createRange();
			var ch_text=range.text;
			range.text= str1 + ch_text + str2;
		} 
		else
		{
			document.form1.Form_Content.value=document.form1.Form_Content.value+str1+str2;
			form1.Form_Content.focus();
		}
	}
	function submitonce(theform)
	{
		if (document.all||document.getElementById)
		{
			for (i=0;i<theform.length;i++)
			{
				var tempobj=theform.elements[i];
				if(tempobj.type.toLowerCase()=="submit"||tempobj.type.toLowerCase()=="reset")
				tempobj.disabled=true;
			}
		}
	}

	function storeCaret (textEl)
	{
		if (textEl.createTextRange) 
		textEl.caretPos = document.selection.createRange().duplicate(); 
	}
	
	function checklength(){alert("�������ݳ���: "+document.form1.Form_Content.value.length+" ���֣�\n�������16384�ֽڡ�");}
	function ctlkey()
	{
		if(event.ctrlKey && window.event.keyCode==13){submitonce(document.form1);document.form1.submit();}
		if(event.altKey && (window.event.keyCode==83 || window.event.keyCode==115)){submitonce(document.form1);document.form1.submit();}
	}
	var ie = (document.all)? true:false
	if (ie)
	{
		window.document.onkeydown=ctlkey;
	}
//-->
      </SCRIPT>
</head>
<body bgcolor="#EEF2FF" topmargin="0">


<CENTER>

<%
if id<>"" and xg<>"" then
sql="select * from sys_news where id="& id &""
set rsx=conn.execute (sql)
nzusf=1
titlevs=rsx("title")
end if
%>

<%
if nzusf=1 then
%>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    <br>
    <span lang="en-us">&nbsp;<img border="0" src="../img/closedfold.gif">
    ��Ŀǰ��λ��>>><a href="main.asp">��ҳ</a>>>><a href="addnew.asp">���Ź���</a>
</td>
  </tr>
</table>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="281">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"><b>
<%
if id<>"" and xg<>"" then
response.write "�޸�����--"&titlevs
else
response.write "���������"
end if
%>
      </b></td>
    </tr>
    <tr>
      <td width="100%" height="257" valign="top">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber5" height="230">
          <tr>
            <td width="100%" height="12"><br></td>
          </tr>
          <tr>
            <td width="100%" height="206" valign="top">

      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE class=TBone cellSpacing=0 cellPadding=5 width="100%" border=1 style="border-collapse: collapse" bordercolor="#EEF2FF" height="468">
                    <TBODY>
                    <FORM name=form1 onsubmit=submitonce(this); action=www_news.asp method=post>
                    <input type=hidden name=nzusf value=1 >
                    <TR>
                      <TD class=TBBG1 width=143 height="24">
                        ���������</TD>
                      <TD class=TBBG9 width="497" height="24">
                      <INPUT class=fminpt maxLength=255 size=25 name=title value=<%
if id<>"" and xg<>"" then
response.write rsx("title")
end if
%>>&nbsp; 
<% if id<>"" and xg<>"" then
 %> 
<input type=hidden name=id value=<%=id%>>
<input type=hidden name=xg value="1">
<% end if %>
�<span lang="en-us">100</span>��&nbsp;���� 
<select size="1" name="NID">
 

<%
if id<>"" and xg<>"" then
sql="select * from sys_news_fl where NID="& rsx("nid") &""
set rsc=conn.execute (sql)

wnid=rsc("nid")

rsc.close
else
sql="select * from sys_news_fl where NID="& Request("nid") &""
set rsc=conn.execute (sql)

wnid=rsc("nid")

rsc.close
end if

sql="select * from sys_news_fl order by Nid asc"
set rsr=conn.execute (sql)
do while not (rsr.eof or err)
%> 
<option value="<%=rsr("Nid")%>" <% if rsr("Nid")=CInt(wnid) then Response.Write "selected"  %> ><%=rsr("NFL")%></option>
<% rsr.moveNext
  loop
%>
                      
</select> 

��Ҫ��	 <select size="1" name="zy">
<%
if id<>"" and xg<>"" then
	zy=rsx("zy")
else
	zy=0
end if
%>
                      <option value="0" <% if zy =0 then Response.Write "selected"  %>>��ͨ</option>
                      <option value="1" <% if zy =1 then Response.Write "selected"  %>>һ��</option>
                      <option value="2" <% if zy =2 then Response.Write "selected"  %>>����</option>
                      <option value="3" <% if zy =3 then Response.Write "selected"  %>>����</option>
                      <option value="4" <% if zy =4 then Response.Write "selected"  %>>����</option>
                      <option value="5" <% if zy =5 then Response.Write "selected"  %>>�ؼ�</option>
                      </select></TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="35">�ϴ�ͼƬ�͸���</TD>
                      <TD class=TBBG9 width="497" height="35">
                      <IFRAME name=ad 
                        src="upFile_news.asp?formPath=/news/images/newspic/" 
                        frameBorder=0 width="94%" scrolling=no 
                        height=25></IFRAME></TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="20">����UBB��ǩ</TD>
                      <TD class=TBBG9 width="497" height="20"><A title=���� 
                        href="javascript:addcontent('[B]','[/B]');"><IMG 
                        height=20 src="../1/bold.gif" 
                        width=20 align=absMiddle border=0></A> <A title=б�� 
                        href="javascript:addcontent('[I]','[/I]');"><IMG 
                        height=20 src="../1/italicize.gif" 
                        width=20 align=absMiddle border=0></A> <A title=�»��� 
                        href="javascript:addcontent('[U]','[/U]');"><IMG 
                        height=20 src="../1/underline.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[ALIGN=CENTER]','[/ALIGN]');"><IMG 
                        height=20 src="../1/center.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[URL]','[/URL]');"><IMG 
                        height=20 src="../1/url1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=�ʼ� 
                        href="javascript:addcontent('[EMAIL]','[/EMAIL]');"><IMG 
                        height=20 src="../1/email1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=ͼƬ 
                        href="javascript:addcontent('[IMGA]','[/IMGA]');"><IMG 
                        height=20 src="../1/image.gif" 
                        width=20 align=absMiddle border=0></A> <A title=Flash 
                        href="javascript:addcontent('[FLASH]','[/FLASH]');"><IMG 
                        height=20 src="../1/swf.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[CODE]','[/CODE]');"><IMG 
                        height=20 src="../1/code.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[QUOTE]','[/QUOTE]');"><IMG 
                        height=20 src="../1/quote1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[FLY]','[/FLY]');"><IMG 
                        height=20 src="../1/fly.gif" 
                        width=20 align=absMiddle border=0></A> <A title=�ƶ� 
                        href="javascript:addcontent('[MOVE]','[/MOVE]');"><IMG 
                        height=20 src="../1/move.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[GLOW=255,RED,2]','[/GLOW]');"><IMG 
                        height=20 src="../1/glow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=��Ӱ 
                        href="javascript:addcontent('[SHADOW=255,RED,2]','[/SHADOW]');"><IMG 
                        height=20 src="../1/shadow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=3���� 
                        href="javascript:addcontent('[SIZE=3]','[/SIZE]');"><IMG 
                        height=20 src="../1/size3.gif" 
                        width=20 align=absMiddle border=0></A> <A title=��ɫ�� 
                        href="javascript:addcontent('[COLOR=blue]','[/COLOR]');"><IMG 
                        height=20 src="../1/blue.gif" 
                        width=20 align=absMiddle border=0></A> <A title=��ɫ�� 
                        href="javascript:addcontent('[COLOR=red]','[/COLOR]');"><IMG 
                        height=20 src="../1/red.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=����Media�ļ� 
                        href="javascript:addcontent('[MP=320,240]','[/MP]');"><IMG 
                        height=20 src="../1/media.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=����RealPlay�ļ� 
                        href="javascript:addcontent('[RM=320,240]','[/RM]');"><IMG 
                        height=20 src="../1/real.gif" 
                        width=20 align=absMiddle border=0></A> </TD></TR>
                    <TR>
                      <TD class=TBBG1 vAlign=top width=143 height="212"><BR>
                        <TABLE cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD>
                              <TABLE cellSpacing=0 cellPadding=0 border=0 width="108">
                                <TBODY>
                                <TR>
                                <TD width="108">���������ݽ���<br>
                                (���16K)<BR><br>
                                <BR></TD></TR>
                                </TBODY></TABLE><BR>
                              <a target="_blank" href="../help/UBB.asp">����֧�ֲ���գ£±�ǩ��ʹ�÷�����ο�����</a> 
                              <P><br>
                              <br>
                              <br>
                              ��</P></TD></TR></TBODY></TABLE><BR></TD>
                      <TD class=TBBG9 width="497" height="212">
                      <TEXTAREA class=fmtxtra onkeyup=storeCaret(this); onclick=storeCaret(this); name=Form_Content rows=16 cols=68 onselect=storeCaret(this);><%
if id<>"" and xg<>"" then
response.write rsx("neirong")
end if
%></TEXTAREA> 
                      </TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="33">��</TD>
                      <TD class=TBBG9 width="497" height="33">&nbsp;<a href="javascript:var%20d;%20d=new%20Date();addcontent(d.getYear()+'-'+rightStr('0'+(d.getMonth()+1),2)+'-'+rightStr('0'+d.getDate(),2)+'%20'+rightStr('0'+d.getHours(),2)+':'+rightStr('0'+d.getMinutes(),2)+':'+rightStr('0'+d.getSeconds(),2),'');">�������ں�ʱ��</a>
&nbsp; 
                        <A href="javascript:checklength();">�鿴Ŀǰ���ݳ���</A>&nbsp;
                      &nbsp;<a target="_blank" href="../help/color.asp">�鿴��ɫ��</a>&nbsp;&nbsp;
                      ��Ctrl+Enter�����ύ</TD></TR>
                    <TR class=TBBG1>
                      <TD colSpan=2 width="619" height="24">

&nbsp;&nbsp; ����������ǰЧ�������Ե����Ȼ�������</TD></TR>
                    <TR class=TBBG9 >
                      <TD align=middle colSpan=2 width="619" height="21"><INPUT class=fmbtn type=submit value=" �� �� " name=submit2> 
<INPUT class=fmbtn type=reset value=" �� д " name=b12> 
                    </TD></TR></TBODY></FORM></TABLE></TD></TR></TBODY></TABLE></TBODY></TABLE>

			
			</td>
          </tr>
          <tr>
            <td width="100%" height="12"></td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>
<% else

'�������'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
 %>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    <br>
    <span lang="en-us">&nbsp;<img border="0" src="../img/closedfold.gif">
    ��Ŀǰ��λ��>>><a href="../main.asp">��ҳ</a>>>></span><a href="addnew.asp">�������</a><span lang="en-us">>>>�������</span>��<span lang="en-us"> </td>
  </tr>
</table>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="281">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"><b> 
      �������&nbsp; 
      <font color="#FF0000"><%=neirong%></font></b></td>
    </tr>
    <tr>
      <td width="100%" height="257" valign="top">
      <div align="center">
        <center>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber5" height="230">
          <tr>
            <td width="100%" height="12"></td>
          </tr>
          <tr>
            <td width="100%" height="206" valign="top">
			
			
			
			
			
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE class=TBone cellSpacing=0 cellPadding=5 width="100%" border=1 style="border-collapse: collapse" bordercolor="#EEF2FF" height="478">
                    <TBODY>
                    <FORM name=form1 onsubmit=submitonce(this); action=www_news.asp method=post>
                    <TR>
                      <TD class=TBBG1 width=143 height="24">
                        ���ű���</TD>
                      <TD class=TBBG9 width="497" height="24">
                      <INPUT 
                        class=fminpt maxLength=255 size=25 name=title>&nbsp; 
                        �<span lang="en-us">100</span>�� &nbsp;<b>��������</b>:<font color="#FF0000">
<%
sql="select * from sys_news_fl where Nid="&Request("nid")&" order by nid asc"
set rsa=conn.execute (sql)
response.write rsa("nfl")
%>    
<input type=hidden name=Nid value=<%=Request("nid")%>>
</font>
��Ҫ��<select size="1" name="zy">
<option selected value="0">��ͨ</option>
<option value="1">һ��</option>
<option value="2">����</option>
<option value="3">����</option>
<option value="4">����</option>
<option value="5">�ؼ�</option>
</select>
</TD></TR>
                       

<%
if id<>"" and tj<>"" then
sql="select * from sys_news where id="& id &""
set rsz=conn.execute (sql)
%>                    <tr>
                      <TD class=TBBG1 width=143 height="20">
                        ������</TD>
                      <TD class=TBBG9 width="497" height="20">
<input type=hidden name=Nzusfd value="1">
<input type=hidden name=Nzu value="<%=id%>">
<%=rsz("title")%> </TD></tr>
<% else %>			 
				<tr>
                      <TD class=TBBG1 width=143 height="20">
                        �Ƿ�������ű�����</TD>
                      <TD class=TBBG9 width="497" height="20">
 <%
sql="select * from sys_news  where nzusf=1 and suzhu=0 order by id asc"
set rse=conn.execute (sql)
	if rse.EOF then 
	response.write"<font color=#ff0000>����û�н����Լ����������أ�</font>"
else
%>
<select size="1" name="nzu">
<option value=no>�������κ�������</option>
<%
do while not (rse.eof or err)
%> 
<option value=<%=rse("id")%>><%=rse("title")%></option>
<% rse.moveNext
  loop
rse.close
set rse=nothing
%>
</select> 
<% end if%>           
&nbsp; <a href="www_news.asp?nzusf=1&nid=<%=Request("nid")%>">�½�������</a></TD></tr>
<% end if %>


                    
                    <TR>
                      <TD class=TBBG1 width=143 height="51">�ϴ�ͼƬ�͸���</TD>
                      <TD class=TBBG9 width="497" height="51">
                      <IFRAME name=ad 
                        src="upFile_news.asp?formPath=/news/images/newspic/" 
                        frameBorder=0 width="94%" scrolling=no 
                        height=25></IFRAME></TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="20">����UBB��ǩ</TD>
                      <TD class=TBBG9 width="497" height="20"><A title=���� 
                        href="javascript:addcontent('[B]','[/B]');"><IMG 
                        height=20 src="../1/bold.gif" 
                        width=20 align=absMiddle border=0></A> <A title=б�� 
                        href="javascript:addcontent('[I]','[/I]');"><IMG 
                        height=20 src="../1/italicize.gif" 
                        width=20 align=absMiddle border=0></A> <A title=�»��� 
                        href="javascript:addcontent('[U]','[/U]');"><IMG 
                        height=20 src="../1/underline.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[ALIGN=CENTER]','[/ALIGN]');"><IMG 
                        height=20 src="../1/center.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[URL]','[/URL]');"><IMG 
                        height=20 src="../1/url1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=�ʼ� 
                        href="javascript:addcontent('[EMAIL]','[/EMAIL]');"><IMG 
                        height=20 src="../1/email1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=ͼƬ 
                        href="javascript:addcontent('[IMGA]','[/IMGA]');"><IMG 
                        height=20 src="../1/image.gif" 
                        width=20 align=absMiddle border=0></A> <A title=Flash 
                        href="javascript:addcontent('[FLASH]','[/FLASH]');"><IMG 
                        height=20 src="../1/swf.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[CODE]','[/CODE]');"><IMG 
                        height=20 src="../1/code.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[QUOTE]','[/QUOTE]');"><IMG 
                        height=20 src="../1/quote1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[FLY]','[/FLY]');"><IMG 
                        height=20 src="../1/fly.gif" 
                        width=20 align=absMiddle border=0></A> <A title=�ƶ� 
                        href="javascript:addcontent('[MOVE]','[/MOVE]');"><IMG 
                        height=20 src="../1/move.gif" 
                        width=20 align=absMiddle border=0></A> <A title=���� 
                        href="javascript:addcontent('[GLOW=255,RED,2]','[/GLOW]');"><IMG 
                        height=20 src="../1/glow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=��Ӱ 
                        href="javascript:addcontent('[SHADOW=255,RED,2]','[/SHADOW]');"><IMG 
                        height=20 src="../1/shadow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=3���� 
                        href="javascript:addcontent('[SIZE=3]','[/SIZE]');"><IMG 
                        height=20 src="../1/size3.gif" 
                        width=20 align=absMiddle border=0></A> <A title=��ɫ�� 
                        href="javascript:addcontent('[COLOR=blue]','[/COLOR]');"><IMG 
                        height=20 src="../1/blue.gif" 
                        width=20 align=absMiddle border=0></A> <A title=��ɫ�� 
                        href="javascript:addcontent('[COLOR=red]','[/COLOR]');"><IMG 
                        height=20 src="../1/red.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=����Media�ļ� 
                        href="javascript:addcontent('[MP=320,240]','[/MP]');"><IMG 
                        height=20 src="../1/media.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=����RealPlay�ļ� 
                        href="javascript:addcontent('[RM=320,240]','[/RM]');"><IMG 
                        height=20 src="../1/real.gif" 
                        width=20 align=absMiddle border=0></A> </TD></TR>
                    <TR>
                      <TD class=TBBG1 vAlign=top width=143 height="212"><BR>
                        <TABLE cellSpacing=0 cellPadding=0 border=0>
                          <TBODY>
                          <TR>
                            <TD>
                              <TABLE cellSpacing=0 cellPadding=0 border=0 width="108">
                                <TBODY>
                                <TR>
                                <TD width="108">��������(���16K)<BR><br>
                                <BR></TD></TR>
                                </TBODY></TABLE><BR>
                              <a target="_blank" href="../help/UBB.asp">����֧�ֲ���գ£±�ǩ��ʹ�÷�����ο�����</a> 
                              <P><br>
                              <br>
                              ��</P></TD></TR></TBODY></TABLE><BR></TD>
                      <TD class=TBBG9 width="497" height="212">
                      <TEXTAREA class=fmtxtra onkeyup=storeCaret(this); onclick=storeCaret(this); name=Form_Content rows=16 cols=68 onselect=storeCaret(this);></TEXTAREA> 
                      </TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="-2"></TD>
                      <TD class=TBBG9 width="497" height="-2">&nbsp;<a href="javascript:var%20d;%20d=new%20Date();addcontent(d.getYear()+'-'+rightStr('0'+(d.getMonth()+1),2)+'-'+rightStr('0'+d.getDate(),2)+'%20'+rightStr('0'+d.getHours(),2)+':'+rightStr('0'+d.getMinutes(),2)+':'+rightStr('0'+d.getSeconds(),2),'');">�������ں�ʱ��</a>&nbsp;&nbsp; 
                        <A href="javascript:checklength();">�鿴Ŀǰ���ݳ���</A>&nbsp;
                      &nbsp;<a target="_blank" href="../help/color.asp">�鿴��ɫ��</a>&nbsp;&nbsp;
                      ��Ctrl+Enter�����ύ</TD></TR>
                    <tr>
                      <TD class=TBBG1 width=143 height="9" align="right">��������:</TD>
                      <TD class=TBBG9 width="497" height="9">&nbsp;&nbsp;
<%
sql="select * from SYS_NEWS_LAIYUAN order by linkidorder asc"
set rse=conn.execute (sql)
%>            
<select size="1" name="linkid">
<%
do while not (rse.eof or err)
%> 
<option value=<%=rse("linkid")%>><%=rse("linkname")%></option>
<% rse.moveNext
  loop
  
rse.close
set rse=nothing
  
%>
</select>
                      
                   &nbsp; <a href="laiyuan.asp">���������Դ</a></TD>
                    </tr>
                    <TR class=TBBG1>
                      <TD colSpan=2 width="619" height="12">

&nbsp;&nbsp; ����������ǰЧ�������Ե����Ȼ�������</TD></TR>
                    <TR class=TBBG9 >
                      <TD align=middle colSpan=2 width="619" height="21"><INPUT class=fmbtn type=submit value=" �� �� " name=submit2> 
<INPUT class=fmbtn type=reset value=" �� д " name=b12> 
                    </TD></TR></TBODY></FORM></TABLE></TD></TR></TBODY></TABLE></TBODY></TABLE>

			
			</td>
          </tr>
          <tr>
            <td width="100%" height="12"></td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>


<% end if %>
<% call di %>
</body>
</html>