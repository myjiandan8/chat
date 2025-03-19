<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(3) %>

<%Server.ScriptTimeOut=900%>
<meta http-equiv="Content-Language" content="en-us">
<%

if Request("menu")="add" then

Set UP = Server.CreateObject("lw.up")

DIM pic

EER=0 '出错判定


if EER=0 then

	Set fso = CreateObject(fs)
	If Not fso.FolderExists(Server.MapPath("/muban/" & rmport & "/")) then
		fso.CreateFolder(Server.MapPath("/muban/" & rmport & "/"))
	End If

	set pic = UP.file("htmlfile")
	
	if pic.FileExt<>"" then
		
		EXT=LCase(pic.FileExt)
		
		if pic.FileSize>100000 then 
			EER=1
			errstr "文件大小必须在100K以内！否则执行时间会超时！"
		end if
		
		if EXT="htm" or EXT="html" then
			'建立临时文件
			pic.SaveFile Server.mappath("/muban/" & rmport & "/index.html")		
		else
			EER=1
			errstr "文件格式不对！只能使用 htm,html 格式的网页文件！" & EXT
				
		end if
	else
		errstr "文件格式不对！只能使用 htm,html 格式的网页文件！1"
	end if
	
end if
set UP = Nothing

errstr "操作成功！"


end if
%>



<html>
<head>
<title>自定义网页模板上传</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
</HEAD>


<BODY bgcolor="#468ea3">


 <TABLE width="626" border="0" align="center" cellspacing="1" height="351">
             <TBODY>
             <FORM method="POST" name="FrontPage_Form1" action="add.asp?menu=add" onsubmit='return FrontPage_Form1_Validator(this)' enctype=multipart/form-data language="JavaScript">
 
             <TR align="center">
             <TD colspan="2" height="22" bgcolor="#145f74" width="622">
				<font color="#FFFFFF"><b>自定义网页模板上传</b></font></TD></TR>
             <TR bgcolor="#cce6ed">
             <TD width="124" align="right" height="31" nowrap bgcolor="#cce6ed">
             <b>选择模板文件<font color="#FF0000">：</font></b></TD>
             <TD width="496" height="31" bgcolor="#cce6ed">
             <input type="file" name="htmlfile" size="36">&nbsp; 
             100K 以内&nbsp; 
				<INPUT type="submit" value="上传" name="cmdok0" class="buttonface"></TD></TR>
             </FORM>
             <TD width="124" align="right" valign="top" nowrap bgcolor="#cce6ed" height="173">
				<b>模板文件说明<font color="#FF0000">：</font></b></TD>
             <TD width="496" bgcolor="#cce6ed" height="173" valign="top">
				<font color="#008000"><span lang="zh-cn">使用自定义配置，请在 [网站管理] - 
				[基本配置] 里面的网页模板修改成 自定义模板</span></font><br>
				制作的模板中必须在版权申明区含有下面的声明代码，否则模板将不生效：<br>
				<textarea rows="2" name="S1" cols="67"><a target="_blank" href="http://liaowan.com/">聊湾视频聊天中心</a></textarea><br>
				<br>
				模板中变量对照表<br>
				''''''''''''''''''''''''''''''''<br>
				'&lt;!--$roomname--&gt; 房间名称<br>
				'&lt;!--$roomid--&gt; 房间ID<br>
				'&lt;!--$num--&gt; 网站当前在线人数<br>
				'&lt;!--$admin--&gt; 聊天室室主名字<br>
				'&lt;!--$adminid--&gt; 聊天室室主id<br>
				'&lt;!--$index_logo--&gt; 房间的网站标志图片<br>
				'&lt;!--$index_css--&gt; 网页自定义CSS脚本<br>
				'&lt;!--$webbg--&gt; 网页背景图片地址<br>
				'以下为聊天室统计资料区<br>
				'&lt;!--$TODAY--&gt; 当天流量<br>
				'&lt;!--$YESTERDAY--&gt; 昨日流量<br>
				'&lt;!--$MONTHS--&gt; 本月流量<br>
				'&lt;!--$BMONTH--&gt; 上月流量<br>
				'&lt;!--$TOTAL--&gt; 流量总计<br>
				'&lt;!--$renqi--&gt; 人气指数<br>
				'网站项目<br>
				'&lt;!--$title--&gt; 网页标题<br>
				'&lt;!--$youqing--&gt; 调用友情连接<br>
				'&lt;!--$body--&gt; 网页主体内容区<br>
				'&lt;!--$indexs--&gt; 框架网页的连接<br>
				''''''''''''''''''''''''''''''''<br>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/1/index.html">
				点这里下载[<font color="#000000">标准</font><span lang="zh-cn">]网页</span>模板参考写法！</a></b>  <font color="#FF0000">右键 - 目标另存为<br>
				</font>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/2/index.html">点这里下载[<font color="#000000">动的魅力[体育]</font>]模板参考写法！</a></b>  <font color="#FF0000">右键 - 目标另存为<br>
				</font>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/3/index.html">点这里下载[<font color="#000000">舞动的魅力[舞蹈]</font>]模板参考写法！</a></b>  <font color="#FF0000">右键 - 目标另存为<br>
				</font>
				<b>
				<a target="_blank" href="http://muban.liaowan.com/muban/4/index.html">点这里下载[<font color="#000000">一生相伴[情感]</font>]模板参考写法！</a></b>  <font color="#FF0000">右键 - 目标另存为</font><br>
　</TD></TR></TBODY></TABLE><DIV align="center">
             <CENTER>
             <P>　</P>
             </CENTER></DIV>

</BODY></HTML>