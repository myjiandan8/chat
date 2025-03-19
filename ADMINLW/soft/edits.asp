<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin1.asp"-->
<!--数组数据库文件#include file="../../INC/CLA.asp" -->
<html>
<head>
<title>添加新软件</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</HEAD>
<%
id=Request("id")
dim rs
dim sql
dim count
set rs=server.createobject("adodb.recordset")
set rsr=server.createobject("adodb.recordset")
sql = "select * from class where cid>0 order by classid asc"
rs.open sql,conn,1,1
%>
<SCRIPT language="JavaScript">
var onecount;
onecount=0;
subcat = new Array();
        <%
        count = 0
        do while not rs.eof 
        %>
subcat[<%=count%>] = new Array("<%= trim(rs("class"))%>","<%= trim(rs("cid"))%>","<%= trim(rs("classid"))%>");
        <%
        count = count + 1
        rs.movenext
        loop
        rs.close
        %>
onecount=<%=count%>;

function changelocation(locationid)
    {
    document.myform.Nclassid.length = 0; 

    var locationid=locationid;
    var i;
    for (i=0;i < onecount; i++)
        {
            if (subcat[i][1] == locationid)
            { 
                document.myform.Nclassid.options[document.myform.Nclassid.length] = new Option(subcat[i][0], subcat[i][2]);
            }        
        }
        
    }    
</SCRIPT>
<SCRIPT language="javascript">
<!--
function CheckForm()
{
	document.myform.txtcontent.value=document.myform.doc_html.value;
	return true
}
//-->
</SCRIPT>
<script language="javascript">
function Check(){var Name=document.myform.softname.value;
window.open("addname.asp?abc=1&name="+Name,"","width=200,height=20");
}
function Check1(){var Name=document.myform.filename.value;
window.open("addname.asp?abc=2&name="+Name,"","width=200,height=20");
}
</script>

<script language='JavaScript'>
<!--
//提交表单验证

function check_input()
{
	newuserreg=document.myform;
	
	
	
//验证表单域企业资料部分
	
	if(newuserreg.classid.value=='')
	{
		alert('软件类型必须选择！');
		newuserreg.classid.focus();
		return false;
	}
	
		if(newuserreg.Nclassid.value=='')
	{
		alert('软件分型必须选择！');
		newuserreg.Nclassid.focus();
		return false;
	}
	
		if(newuserreg.softname.value=='')
	{
		alert('软件名称不能为空');
		newuserreg.softname.focus();
		return false;
	}	
	

		if(newuserreg.filename.value=='' && newuserreg.lk1.value=='')
	{
		alert('文件名或外连接地址 必须 选择填写一种！');
		newuserreg.filename.focus();
		return false;
	}	

		if(newuserreg.filename.value!='' && newuserreg.lk1.value!='')
	{
		alert('文件名或外连接地址 只能 选择填写一种！');
		newuserreg.filename.focus();
		return false;
	}	
	
		if(newuserreg.size.value=='')
	{
		alert('软件大小不能为空');
		newuserreg.size.focus();
		return false;
	}	
	
		if(newuserreg.gj.value=='')
	{
		alert('关键字不能为空');
		newuserreg.gj.focus();
		return false;
	}
	
		if(newuserreg.txt.value=='')
	{
		alert('软件简介不能为空');
		newuserreg.txt.focus();
		return false;
	}

}
//-->
</script>


<BODY bgcolor="#468ea3">

<%

    sql = "select * from soft where id=" & Request("id")
    rs.open sql,conn,1,1
	if rs.eof and rs.bof then
%>

非法操作！！<a href='Javascript:window.history.go(-1)'>返回</a>

<% else %>
<FORM method="POST" name="myform" action="editsave.asp" onsubmit='return check_input()' enctype=multipart/form-data>
  <TABLE width="692" border="0" align="center" cellspacing="1" height="670">
  <input type=hidden name=id value="<%=Request("id")%>">
             <TBODY>
             <TR align="center">
             <TD colspan="4" height="22" bgcolor="#145f74" width="630"><B><FONT color="#FFFFFF"><%=rs("softname")%> 修改管理页面</FONT></B></TD></TR><TR>
             <TD align="right" width="124" nowrap bgcolor="#A5D0DC" height="27"><B><FONT color="#FF0000">软件类型</FONT>：</B></TD>
             <TD width="218" bgcolor="#A5D0DC" height="27"><%
    sql = "select * from class where cid=0"
    rsr.open sql,conn,1,1
	if rsr.eof and rsr.bof then
	response.write "请先添加栏目。"
	response.end
	else
%> <SELECT name="classid" onChange="changelocation(document.myform.classid.options[document.myform.classid.selectedIndex].value)" size="1">
             <OPTION selected value=<%=rs("classid")%>><%=CLA(rs("classid"),0)%></OPTION><% 
        do while not rsr.eof
%><OPTION value="<%=trim(rsr("classid"))%>"><%=trim(rsr("class"))%></OPTION><%
        rsr.movenext
        loop
	end if
        rsr.close
%></SELECT> </TD>
			<TD align="right" width="99" bgcolor="#A5D0DC" height="27"><B>选择分类：</B></TD>
             <TD width="261" bgcolor="#A5D0DC" height="27"><SELECT name="Nclassid">
             <OPTION selected value=<%=rs("Nclassid")%>><%=CLA(rs("Nclassid"),rs("classid"))%></OPTION></SELECT> </TD></TR><TR>
             <TD width="124" align="right" height="15" nowrap bgcolor="#CCE6ED"><B><FONT color="#FF0000">软件名称</FONT>：</B></TD>
             <TD width="578" height="15" bgcolor="#CCE6ED" colspan="3">
             <INPUT type="text" name="softname" size="33" class="smallinput" maxlength="100" value="<%=rs("softname")%>"> 
             <INPUT onclick="javascript:Check()" type="button" value="检查是否有重复" name="cmdcancel1" class="buttonface"> 
             修改名字的时候再检查</TD></TR>
             <tr>
             <TD width="124" align="right" height="30" nowrap bgcolor="#CCE6ED">
             <b><font color="#008000">推荐软件</font>：</b></TD>
             <TD width="578" height="30" bgcolor="#CCE6ED" colspan="3">
               <SELECT name="tj" size="1">
             <option value="0" <%if rs("tj")=0 then response.write "selected"%>>普通软件</option>
             <option value="1" <%if rs("tj")=1 then response.write "selected"%>>推荐软件</option>
             <option value="2" <%if rs("tj")=2 then response.write "selected"%>>置顶推荐软件</option>
               </SELECT>&nbsp; </TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="31" nowrap bgcolor="#cce6ed">
             　</TD>
             <TD width="472" height="31" colspan="3" bgcolor="#cce6ed">
             <b><font color="#0000FF">&nbsp; 
             下面的内连接和外连接只能选择填写一种。如果使用了</font><font color="#FF0000">内连接</font><font color="#0000FF">那就不要再填写</font>外连接<font color="#0000FF">了。如果使用</font>外连接<font color="#0000FF">就不填写</font><font color="#FF0000">内连接</font><font color="#0000FF">。</font><font color="#FF0000">！！ 
             千万不要处理错了<a target="_blank" href="edits.asp">。</a></font></b></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="1" nowrap bgcolor="#cce6ed">
             <b>
             <font color="#0000FF">[内连接]</font><font color="#FF0000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br>
             </font><font color="#FF0000">下载</font><font color="#FF0000">压缩包<br>
             的文件名</font>：</b></TD>
             <TD width="578" height="1" colspan="3" bgcolor="#cce6ed">
             <br>
             管理员必须提前将软件上传到服务器。小于1.5M的软件可以使用[<a href="UP.ASP?abc=1">网页上传软件</a>]。<br>
             大于1.5M文件使用FTP上传。大于50M由服务器上处理，联系超级管理员。<br>
             <INPUT type="text" name="filename" size="33" class="smallinput" maxlength="100" value="<%=rs("filename")%>"> 
             <INPUT onclick="javascript:Check1()" type="button" value="检查是否有重复" name="cmdcancel2" class="buttonface"> 
             修改文件名的时候再检查<br>
             <b><font color="#008000">如 lftp.rar&nbsp;&nbsp;
             QQ2003m.ZIP</font></b><br>
             <b><font color="#FF0000">内部连接</font></b>的时候直接写文件名就可以完成连接了。不要写全部路径。 
             <br>
             <font color="#0000FF"><b>内部连接的文件一定要上传的正确的文件夹中。<br>
　</b></font></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="93" nowrap bgcolor="#cce6ed">
             <b><font color="#0000FF">[外连接]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <br>
             </font><font color="#FF0000">连接地址</font>：</b></TD>
             <TD width="472" height="93" colspan="3" bgcolor="#cce6ed">
             在提供超大型软件（如<a onmousedown="return clk(1,this)" style="color: #00c" target="_blank" href="http://www.mandrakelinux.com/zh-CN/ftp.php3">Mandrake-linux
             </a>2G）的时候我们可以使用外连接。<br>
             如果使用的内连接这个就不需要填写了！[<font color="#008000"><b>注意：</b>小型软件必须使用内连接</font>]<br>
             <br>
             连接点1：<INPUT type="text" name="lk1" size="33" class="smallinput" maxlength="100" value="<%=rs("lk1")%>"> 
             可以只填一个连接点<br>
             连接点2：<INPUT type="text" name="lk2" size="33" class="smallinput" maxlength="100" value="<%=rs("lk2")%>"><br>
             连接点3：<INPUT type="text" name="lk3" size="33" class="smallinput" maxlength="100" value="<%=rs("lk3")%>"><br>
             连接点4：<INPUT type="text" name="lk4" size="33" class="smallinput" maxlength="100" value="<%=rs("lk4")%>"></TD>
             </tr>
             <TR>
             <TD width="124" align="right" height="31" nowrap bgcolor="#CEE7EF">
             <font color="#FF0000"><B>软件大小：</B></font></TD>
             <TD width="578" height="31" bgcolor="#CEE7EF" colspan="3">
             <INPUT type="text" name="size" size="26" class="smallinput" maxlength="100" value="<%=rs("size")%>">
             单位 KB ，MB ，GB 。TB是不应许使用的 （必添）</TD></TR><TR bgcolor="#cce6ed">
             <TD width="124" align="right" height="51" nowrap bgcolor="#cce6ed">
             <font color="#008000"><span lang="zh-cn"><b>不</b></span></font><b><font color="#008000"><span lang="zh-cn">做修改不要填写</span></font><br>
             软件界面[可选]<font color="#FF0000">：</font></b></TD>
             <TD width="578" height="51" bgcolor="#cce6ed" colspan="3">
             <input type="file" name="pic" size="62">&nbsp; 
             <br>
             选择软件截图。截图格式 {.GIF .JPG .JPEG .BMP
             .PNG} 系统将自动生成带龙软LOGO的大小两张图片！</TD></TR>
             <tr>
             <TD width="124" align="right" height="50" nowrap bgcolor="#cce6ed">
             <b>FLASH演示</b><b>[可选]<font color="#FF0000">：</font></b></TD>
             <TD width="578" height="50" bgcolor="#cce6ed" colspan="3">
             添加FLASH源代码的时候，建议添加一个相映的演示.SWF<br>
             如果已经使用上传了。SWF文件，在下面填写这个.swf文件的文件名。
             [<a href="upflash.asp?abc=2">上传.swf文件</a>]<br>
             
             <INPUT type="text" name="flash" size="26" class="smallinput" maxlength="100" value="<%=rs("flash")%>"></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="4" nowrap bgcolor="#cce6ed">
             <B>
             <font color="#008000">
             授权方式</font><font color="#FF0000">：</font></B></TD>
               <TD width="578" height="4" bgcolor="#cce6ed" colspan="3">
               <SELECT name="fangshi" size="1">
             <option selected value="<%=rs("fangshi")%>"><%=rs("fangshi")%>
             </option>
             <option value="共享软件">共享软件</option>
             <option value="免费软件">免费软件</option>
             <option value="商业软件">商业软件</option>
               <option value="破解软件">破解软件</option>
               </SELECT></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="19" nowrap bgcolor="#cce6ed">
             <b><font color="#008000">软件语言</font><font color="#FF0000">：</font></b></TD>
               <TD width="578" height="19" bgcolor="#cce6ed" colspan="3">
               <SELECT name="gb" size="1">
             <option value="<%=rs("gb")%>" selected><%=rs("gb")%></option>
             <option value="简体中文">简体中文</option>
             <option value="繁体中文">繁体中文</option>
             <option value="英文软件">英文软件</option>
             <option value="多国语言">多国语言</option>
             <option value="其他语言">其他语言</option>
               </SELECT></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="17" nowrap bgcolor="#cce6ed">
             <b>作者/厂家主页<font color="#FF0000">：</font></b></TD>
               <TD width="578" height="17" bgcolor="#cce6ed" colspan="3">
               <INPUT type="text" name="web" size="33" class="smallinput" maxlength="160" value="<%=rs("web")%>"> 
               [可选]</TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="15" nowrap bgcolor="#cce6ed">
             <b>程序演示地址<font color="#FF0000">：</font></b></TD>
               <TD width="578" height="15" bgcolor="#cce6ed" colspan="3">
               <INPUT type="text" name="yanshi" size="33" class="smallinput" maxlength="160" value="<%=rs("yanshi")%>"> 
               [可选]</TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="7" nowrap bgcolor="#cce6ed">
             <B>
             <font color="#008000">运行环境</font><font color="#FF0000">：</font></B></TD>
               <TD width="578" height="7" bgcolor="#cce6ed" colspan="3">
             <SELECT name="system" size="1">
             <option value="<%=rs("system")%>" selected><%=rs("system")%>
             </option>
             <OPTION value="XP, 2000, NT, Win9X/ME" name="system">XP, 2000, NT, Win9X/ME</OPTION>
             <option value="XP, 2000, NT">XP, 2000, NT</option>
             <OPTION value="Win9x/ME" name="system">Win9x/ME</OPTION>
             <OPTION value="windows/Unix/Linux" name="system">windows/Unix/Linux</OPTION>
             <OPTION value="Unix/Linux" name="system">Unix/Linux</OPTION>
             <OPTION value="Linux" name="system">Linux</OPTION>
             <OPTION value="ASP环境" name="system">ASP环境</OPTION>
             <OPTION value="PHP环境" name="system">PHP环境</OPTION>
             <OPTION value="CGI环境" name="system">CGI环境</OPTION>
             <OPTION value="JSP环境" name="system">JSP环境</OPTION>
             <OPTION value="JSP环境" name="system">WEB浏览器</OPTION>
             <option value="其他环境">其他环境</option>
             <option value="无限制">无限制</option>
               </SELECT></TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="27" nowrap bgcolor="#cce6ed">
             <font color="#008000"><b>评价</b></font><B><font color="#008000">度</font><font color="#FF0000">：</font></B></TD>
             <TD width="472" height="27" colspan="3" bgcolor="#cce6ed">1星.<INPUT type="radio" value="1" name="hot" <%if rs("hot")=1 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 2星.<INPUT type="radio" value="2" name="hot" <%if rs("hot")=2 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 3星.<INPUT type="radio" value="3" name="hot" <%if rs("hot")=3 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 4星.<INPUT type="radio" value="4" name="hot" <%if rs("hot")=4 then response.write "checked"%>>&nbsp;&nbsp;&nbsp; 5星.<INPUT type="radio" value="5" name="hot" <%if rs("hot")=5 then response.write "checked"%>>
             </TD>
             </tr>
             <tr>
             <TD width="124" align="right" height="48" nowrap bgcolor="#cce6ed">
             <font color="#FF0000">
             <b>软件关键字：</b></font></TD>
               <TD width="578" height="48" bgcolor="#cce6ed" colspan="3">
               <INPUT type="text" name="gj" size="54" class="smallinput" maxlength="160" value="<%=rs("gj")%>"> 
               关键字用 空格&quot; &quot; 隔开<br>
               这个是系统比较重要的环节，关键字是用来做搜索和做相关连接时调用的。</TD>
             </tr>
             <TR>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="94"><B><FONT color="#FF0000">软件简介：</FONT></B></TD>
             <TD width="472" colspan="3" bgcolor="#cce6ed" height="94"><FONT color="#FF0000">
             <TEXTAREA rows="10" name="txt" cols="70" class="smallarea"><%=rs("txt")%></TEXTAREA> </FONT></TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P>
             <INPUT type="submit" value=" 修 改 " name="cmdok" class="buttonface">&nbsp; 
             <INPUT type="button" value=" 返 回 " name="cmdcancel" class="buttonface"></P>
             </CENTER></DIV>
</FORM>
</BODY>

<% end if %></HTML>