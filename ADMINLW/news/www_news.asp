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
        MsgBox "内容里不能包含'<''>'符号！"
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
			
			neirong="新闻修改成功！"
			response.write "<script>alert('新闻修改成功！返回新闻管理');</script>"
else

			,生成新闻HTML文件
			
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
			newscontent=replace(newscontent,"{newsfrom}","本新闻摘自：" & newsfrom & "&nbsp;&nbsp;&nbsp;&nbsp;")
			end if
			if Instr(newssetup,"2")>0 then
			newscontent=replace(newscontent,"{newslink}","<script language=""javascript"" src=""../../newsweb/news_link.asp?assort=" & assort_id & "&keyword=" & ToUrl(newskey) & """></script>")
			else
			newscontent=replace(newscontent,"{newslink}","")
			end if
			newscontent=replace(newscontent,"{newsdate}","本新闻发表于：" & Now())
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
    		rsc("hangye")="龙网服务中心"
    		rsc("hangye1")="龙网服务中心"
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
	


	'处理新闻所带图片和附件 添加到文件数据库中以便以后文件的管理和删除！
			
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
	
	   		
	neirong="新闻添加成功！"
	response.write "<script>alert('新闻添加成功！返回新闻管理');window.location.href='addnew.asp';</script>"
		end if
	end if
end if
%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<title>管理中心</title>
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
	
	function checklength(){alert("帖子内容长度: "+document.form1.Form_Content.value.length+" 个字，\n最多允许16384字节。");}
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
    您目前的位置>>><a href="main.asp">首页</a>>>><a href="addnew.asp">新闻管理</a>
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
response.write "修改新闻--"&titlevs
else
response.write "添加新闻组"
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
                        新闻组标题</TD>
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
最长<span lang="en-us">100</span>字&nbsp;类型 
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

重要度	 <select size="1" name="zy">
<%
if id<>"" and xg<>"" then
	zy=rsx("zy")
else
	zy=0
end if
%>
                      <option value="0" <% if zy =0 then Response.Write "selected"  %>>普通</option>
                      <option value="1" <% if zy =1 then Response.Write "selected"  %>>一级</option>
                      <option value="2" <% if zy =2 then Response.Write "selected"  %>>二级</option>
                      <option value="3" <% if zy =3 then Response.Write "selected"  %>>三级</option>
                      <option value="4" <% if zy =4 then Response.Write "selected"  %>>焦点</option>
                      <option value="5" <% if zy =5 then Response.Write "selected"  %>>特级</option>
                      </select></TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="35">上传图片和附件</TD>
                      <TD class=TBBG9 width="497" height="35">
                      <IFRAME name=ad 
                        src="upFile_news.asp?formPath=/news/images/newspic/" 
                        frameBorder=0 width="94%" scrolling=no 
                        height=25></IFRAME></TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="20">插入UBB标签</TD>
                      <TD class=TBBG9 width="497" height="20"><A title=粗体 
                        href="javascript:addcontent('[B]','[/B]');"><IMG 
                        height=20 src="../1/bold.gif" 
                        width=20 align=absMiddle border=0></A> <A title=斜体 
                        href="javascript:addcontent('[I]','[/I]');"><IMG 
                        height=20 src="../1/italicize.gif" 
                        width=20 align=absMiddle border=0></A> <A title=下划线 
                        href="javascript:addcontent('[U]','[/U]');"><IMG 
                        height=20 src="../1/underline.gif" 
                        width=20 align=absMiddle border=0></A> <A title=居中 
                        href="javascript:addcontent('[ALIGN=CENTER]','[/ALIGN]');"><IMG 
                        height=20 src="../1/center.gif" 
                        width=20 align=absMiddle border=0></A> <A title=链接 
                        href="javascript:addcontent('[URL]','[/URL]');"><IMG 
                        height=20 src="../1/url1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=邮件 
                        href="javascript:addcontent('[EMAIL]','[/EMAIL]');"><IMG 
                        height=20 src="../1/email1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=图片 
                        href="javascript:addcontent('[IMGA]','[/IMGA]');"><IMG 
                        height=20 src="../1/image.gif" 
                        width=20 align=absMiddle border=0></A> <A title=Flash 
                        href="javascript:addcontent('[FLASH]','[/FLASH]');"><IMG 
                        height=20 src="../1/swf.gif" 
                        width=20 align=absMiddle border=0></A> <A title=代码 
                        href="javascript:addcontent('[CODE]','[/CODE]');"><IMG 
                        height=20 src="../1/code.gif" 
                        width=20 align=absMiddle border=0></A> <A title=引用 
                        href="javascript:addcontent('[QUOTE]','[/QUOTE]');"><IMG 
                        height=20 src="../1/quote1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=飞行 
                        href="javascript:addcontent('[FLY]','[/FLY]');"><IMG 
                        height=20 src="../1/fly.gif" 
                        width=20 align=absMiddle border=0></A> <A title=移动 
                        href="javascript:addcontent('[MOVE]','[/MOVE]');"><IMG 
                        height=20 src="../1/move.gif" 
                        width=20 align=absMiddle border=0></A> <A title=发光 
                        href="javascript:addcontent('[GLOW=255,RED,2]','[/GLOW]');"><IMG 
                        height=20 src="../1/glow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=阴影 
                        href="javascript:addcontent('[SHADOW=255,RED,2]','[/SHADOW]');"><IMG 
                        height=20 src="../1/shadow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=3号字 
                        href="javascript:addcontent('[SIZE=3]','[/SIZE]');"><IMG 
                        height=20 src="../1/size3.gif" 
                        width=20 align=absMiddle border=0></A> <A title=蓝色字 
                        href="javascript:addcontent('[COLOR=blue]','[/COLOR]');"><IMG 
                        height=20 src="../1/blue.gif" 
                        width=20 align=absMiddle border=0></A> <A title=红色字 
                        href="javascript:addcontent('[COLOR=red]','[/COLOR]');"><IMG 
                        height=20 src="../1/red.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=插入Media文件 
                        href="javascript:addcontent('[MP=320,240]','[/MP]');"><IMG 
                        height=20 src="../1/media.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=插入RealPlay文件 
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
                                <TD width="108">新闻组内容介绍<br>
                                (最大16K)<BR><br>
                                <BR></TD></TR>
                                </TBODY></TABLE><BR>
                              <a target="_blank" href="../help/UBB.asp">内容支持插入ＵＢＢ标签，使用方法请参考帮助</a> 
                              <P><br>
                              <br>
                              <br>
                              　</P></TD></TR></TBODY></TABLE><BR></TD>
                      <TD class=TBBG9 width="497" height="212">
                      <TEXTAREA class=fmtxtra onkeyup=storeCaret(this); onclick=storeCaret(this); name=Form_Content rows=16 cols=68 onselect=storeCaret(this);><%
if id<>"" and xg<>"" then
response.write rsx("neirong")
end if
%></TEXTAREA> 
                      </TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="33">　</TD>
                      <TD class=TBBG9 width="497" height="33">&nbsp;<a href="javascript:var%20d;%20d=new%20Date();addcontent(d.getYear()+'-'+rightStr('0'+(d.getMonth()+1),2)+'-'+rightStr('0'+d.getDate(),2)+'%20'+rightStr('0'+d.getHours(),2)+':'+rightStr('0'+d.getMinutes(),2)+':'+rightStr('0'+d.getSeconds(),2),'');">插入日期和时间</a>
&nbsp; 
                        <A href="javascript:checklength();">查看目前内容长度</A>&nbsp;
                      &nbsp;<a target="_blank" href="../help/color.asp">查看颜色表</a>&nbsp;&nbsp;
                      按Ctrl+Enter快速提交</TD></TR>
                    <TR class=TBBG1>
                      <TD colSpan=2 width="619" height="24">

&nbsp;&nbsp; 如果想浏览当前效果！可以点完成然后浏览！</TD></TR>
                    <TR class=TBBG9 >
                      <TD align=middle colSpan=2 width="619" height="21"><INPUT class=fmbtn type=submit value=" 完 成 " name=submit2> 
<INPUT class=fmbtn type=reset value=" 重 写 " name=b12> 
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

'新闻添加'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
 %>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    <br>
    <span lang="en-us">&nbsp;<img border="0" src="../img/closedfold.gif">
    您目前的位置>>><a href="../main.asp">首页</a>>>></span><a href="addnew.asp">添加新闻</a><span lang="en-us">>>>添加新闻</span>表单<span lang="en-us"> </td>
  </tr>
</table>

<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="281">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"><b> 
      添加新闻&nbsp; 
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
                        新闻标题</TD>
                      <TD class=TBBG9 width="497" height="24">
                      <INPUT 
                        class=fminpt maxLength=255 size=25 name=title>&nbsp; 
                        最长<span lang="en-us">100</span>字 &nbsp;<b>新闻类型</b>:<font color="#FF0000">
<%
sql="select * from sys_news_fl where Nid="&Request("nid")&" order by nid asc"
set rsa=conn.execute (sql)
response.write rsa("nfl")
%>    
<input type=hidden name=Nid value=<%=Request("nid")%>>
</font>
重要度<select size="1" name="zy">
<option selected value="0">普通</option>
<option value="1">一级</option>
<option value="2">二级</option>
<option value="3">三级</option>
<option value="4">焦点</option>
<option value="5">特级</option>
</select>
</TD></TR>
                       

<%
if id<>"" and tj<>"" then
sql="select * from sys_news where id="& id &""
set rsz=conn.execute (sql)
%>                    <tr>
                      <TD class=TBBG1 width=143 height="20">
                        新闻组</TD>
                      <TD class=TBBG9 width="497" height="20">
<input type=hidden name=Nzusfd value="1">
<input type=hidden name=Nzu value="<%=id%>">
<%=rsz("title")%> </TD></tr>
<% else %>			 
				<tr>
                      <TD class=TBBG1 width=143 height="20">
                        是否加入新闻报道组</TD>
                      <TD class=TBBG9 width="497" height="20">
 <%
sql="select * from sys_news  where nzusf=1 and suzhu=0 order by id asc"
set rse=conn.execute (sql)
	if rse.EOF then 
	response.write"<font color=#ff0000>您还没有建立自己的新闻组呢！</font>"
else
%>
<select size="1" name="nzu">
<option value=no>不加入任何新闻组</option>
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
&nbsp; <a href="www_news.asp?nzusf=1&nid=<%=Request("nid")%>">新建新闻组</a></TD></tr>
<% end if %>


                    
                    <TR>
                      <TD class=TBBG1 width=143 height="51">上传图片和附件</TD>
                      <TD class=TBBG9 width="497" height="51">
                      <IFRAME name=ad 
                        src="upFile_news.asp?formPath=/news/images/newspic/" 
                        frameBorder=0 width="94%" scrolling=no 
                        height=25></IFRAME></TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="20">插入UBB标签</TD>
                      <TD class=TBBG9 width="497" height="20"><A title=粗体 
                        href="javascript:addcontent('[B]','[/B]');"><IMG 
                        height=20 src="../1/bold.gif" 
                        width=20 align=absMiddle border=0></A> <A title=斜体 
                        href="javascript:addcontent('[I]','[/I]');"><IMG 
                        height=20 src="../1/italicize.gif" 
                        width=20 align=absMiddle border=0></A> <A title=下划线 
                        href="javascript:addcontent('[U]','[/U]');"><IMG 
                        height=20 src="../1/underline.gif" 
                        width=20 align=absMiddle border=0></A> <A title=居中 
                        href="javascript:addcontent('[ALIGN=CENTER]','[/ALIGN]');"><IMG 
                        height=20 src="../1/center.gif" 
                        width=20 align=absMiddle border=0></A> <A title=链接 
                        href="javascript:addcontent('[URL]','[/URL]');"><IMG 
                        height=20 src="../1/url1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=邮件 
                        href="javascript:addcontent('[EMAIL]','[/EMAIL]');"><IMG 
                        height=20 src="../1/email1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=图片 
                        href="javascript:addcontent('[IMGA]','[/IMGA]');"><IMG 
                        height=20 src="../1/image.gif" 
                        width=20 align=absMiddle border=0></A> <A title=Flash 
                        href="javascript:addcontent('[FLASH]','[/FLASH]');"><IMG 
                        height=20 src="../1/swf.gif" 
                        width=20 align=absMiddle border=0></A> <A title=代码 
                        href="javascript:addcontent('[CODE]','[/CODE]');"><IMG 
                        height=20 src="../1/code.gif" 
                        width=20 align=absMiddle border=0></A> <A title=引用 
                        href="javascript:addcontent('[QUOTE]','[/QUOTE]');"><IMG 
                        height=20 src="../1/quote1.gif" 
                        width=20 align=absMiddle border=0></A> <A title=飞行 
                        href="javascript:addcontent('[FLY]','[/FLY]');"><IMG 
                        height=20 src="../1/fly.gif" 
                        width=20 align=absMiddle border=0></A> <A title=移动 
                        href="javascript:addcontent('[MOVE]','[/MOVE]');"><IMG 
                        height=20 src="../1/move.gif" 
                        width=20 align=absMiddle border=0></A> <A title=发光 
                        href="javascript:addcontent('[GLOW=255,RED,2]','[/GLOW]');"><IMG 
                        height=20 src="../1/glow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=阴影 
                        href="javascript:addcontent('[SHADOW=255,RED,2]','[/SHADOW]');"><IMG 
                        height=20 src="../1/shadow.gif" 
                        width=20 align=absMiddle border=0></A> <A title=3号字 
                        href="javascript:addcontent('[SIZE=3]','[/SIZE]');"><IMG 
                        height=20 src="../1/size3.gif" 
                        width=20 align=absMiddle border=0></A> <A title=蓝色字 
                        href="javascript:addcontent('[COLOR=blue]','[/COLOR]');"><IMG 
                        height=20 src="../1/blue.gif" 
                        width=20 align=absMiddle border=0></A> <A title=红色字 
                        href="javascript:addcontent('[COLOR=red]','[/COLOR]');"><IMG 
                        height=20 src="../1/red.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=插入Media文件 
                        href="javascript:addcontent('[MP=320,240]','[/MP]');"><IMG 
                        height=20 src="../1/media.gif" 
                        width=20 align=absMiddle border=0></A> <A 
                        title=插入RealPlay文件 
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
                                <TD width="108">新闻内容(最大16K)<BR><br>
                                <BR></TD></TR>
                                </TBODY></TABLE><BR>
                              <a target="_blank" href="../help/UBB.asp">内容支持插入ＵＢＢ标签，使用方法请参考帮助</a> 
                              <P><br>
                              <br>
                              　</P></TD></TR></TBODY></TABLE><BR></TD>
                      <TD class=TBBG9 width="497" height="212">
                      <TEXTAREA class=fmtxtra onkeyup=storeCaret(this); onclick=storeCaret(this); name=Form_Content rows=16 cols=68 onselect=storeCaret(this);></TEXTAREA> 
                      </TD></TR>
                    <TR>
                      <TD class=TBBG1 width=143 height="-2"></TD>
                      <TD class=TBBG9 width="497" height="-2">&nbsp;<a href="javascript:var%20d;%20d=new%20Date();addcontent(d.getYear()+'-'+rightStr('0'+(d.getMonth()+1),2)+'-'+rightStr('0'+d.getDate(),2)+'%20'+rightStr('0'+d.getHours(),2)+':'+rightStr('0'+d.getMinutes(),2)+':'+rightStr('0'+d.getSeconds(),2),'');">插入日期和时间</a>&nbsp;&nbsp; 
                        <A href="javascript:checklength();">查看目前内容长度</A>&nbsp;
                      &nbsp;<a target="_blank" href="../help/color.asp">查看颜色表</a>&nbsp;&nbsp;
                      按Ctrl+Enter快速提交</TD></TR>
                    <tr>
                      <TD class=TBBG1 width=143 height="9" align="right">新闻来自:</TD>
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
                      
                   &nbsp; <a href="laiyuan.asp">添加新闻来源</a></TD>
                    </tr>
                    <TR class=TBBG1>
                      <TD colSpan=2 width="619" height="12">

&nbsp;&nbsp; 如果想浏览当前效果！可以点完成然后浏览！</TD></TR>
                    <TR class=TBBG9 >
                      <TD align=middle colSpan=2 width="619" height="21"><INPUT class=fmbtn type=submit value=" 完 成 " name=submit2> 
<INPUT class=fmbtn type=reset value=" 重 写 " name=b12> 
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