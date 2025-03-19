<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin9.asp"-->
<html>
<head>
<title>后台管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="../img/lw.css" type="text/css">
<%
dim xmdb
xmdb=request("xmdb")
if xmdb="" then 
   xmdb="a"
end if

ID=request("ID")
name=request("name")
nsv=request("NSv")
zhekou=request("zhekou")
canshu=request("canshu")
zb=request("zb")
CZ=request("CZ")
%>
</head>

<body bgcolor="#9CC7EF" text="#000000">
<p align="center"><br>
<b>服务<span lang="zh-cn">产品定价管理</span></b></p>


<%
'添加新记录

if cz="TJ" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from CW_DJ where ID=" & ID
			rs.Open sql,conn,1,3
		if not(rs.eof) then call errstr("该商品ID已经存在")
		
	   rs.AddNew    
	   rs("id") =id
       rs("name") =name
       rs("nsv") =nsv
       rs("zhekou") =zhekou
       rs("zb") =zb
       rs("canshu") =canshu
	   rs.Update

			
%>
<script language=vbs>
<!--
        MsgBox "………………添加成功………………！"
        window.location.href="DJ.asp"

-->
</script>

<% end if %>




<%
'修改记录

if cz="XG" then    

			set rs=server.CreateObject ("adodb.recordset")
			sql="select * from CW_DJ where ID like '"& ID &"'"
			rs.Open sql,conn,1,3
 	   rs("id") =id
       rs("name") =name
       rs("nsv") =nsv
       rs("zhekou") =zhekou
       rs("zb") =zb
       rs("canshu") =canshu
	   rs.Update


			
%>
<script language=vbs>
<!--
        MsgBox "………………修改成功………………！"
        window.location.href="DJ.asp"

-->
</script>

<% end if %>


<%
'删除记录
if cz="DEL" and request("queding")="" then  %>
   
<b>你确定删除吗？</b>
<br>
<input type="button" name="Submit3" value="确定删除" onClick="document.location = 'DJ.asp?id=<%=id%>&XMDB=<%=request("XMDB")%>&queding=OK&CZ=DEL'" >   
<input type="button" name="Submit3" value="  放弃  " onClick="document.location = 'Javascript:window.history.go(-1)'" >
<% 
end if

if CZ="DEL" and request("queding")<>"" then 



			sql="delete from CW_DJ where ID like "&request("ID")
			conn.Execute ( sql )

			
%>
<script language=vbs>
<!--
        MsgBox "………………删除成功………………！"
        window.location.href="DJ.asp"

-->
</script>

<% end if %>


<% if cz="" then %>


<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#145AA0" width="661" id="AutoNumber1" height="141">
   
    <tr>
      <td width="659" bgcolor="#4296E7" height="23" colspan="7" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>添加服务产品定价</b></font></span></td>
    </tr>
     <form method="post" action="DJ.asp" name="forma">
    <tr>
      <td width="49" height="27" align="center"> 编码</td>
      <td width="174" height="27" align="center"><span lang="zh-cn">产品名称</span></td>
      <td width="67" height="27" align="center">基础定价</td>
      <td width="53" height="27" align="center">最大折扣</td>
      <td width="98" height="27" align="center">产品说明</td>
      <td width="118" height="27" align="center">产品参数</td>
      <td width="88" height="27" align="center"><span lang="zh-cn">操作</span></td>
    </tr>
    
    <tr>
      <td width="49" height="26" align="center"> 
        <input type="text" name="id" size="4"></td>
      <td width="174" height="26" align="center">
      <input type="text" name="name" size="21"></td>
      <td width="67" height="26" align="center">
      <input type="text" name="nsv" size="4">元</td>
      <td width="53" height="26" align="center">
        <input type="text" name="zhekou" size="4"></td>
      <td width="98" height="26" align="center"> 
        <input type="text" name="zb" size="12"> </td>
      <td width="118" height="26" align="center"> 
        <input type="text" name="canshu1" size="16"></td>
      <td width="88" height="26" align="center"> 
      
    <INPUT TYPE="HIDDEN" NAME="CZ" VALUE="TJ">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
    
        <input type="submit" name="tj" value=" 添 加 "></td>
    </tr>
    <tr>
      <td width="659" bgcolor="#4296E7" height="68" colspan="7">&nbsp;*严禁修改产品参数&nbsp; 
		*折扣写法：0.85&nbsp;&nbsp; 0.9&nbsp; *如果是免费室主的半价打折，请申请特批<br>
&nbsp;*产品参数 产品类型,视频,人数,多视频个数,立体声,备用1,备用2,备用3&nbsp; 0为否定 1为肯定&nbsp; 大于1为实际数值<br>
&nbsp; 如：1,1,100,3,1,0,0,1&nbsp;&nbsp; 就是 BCHAT聊天室，视频，100人，3个视频，立体声，备用，备用，支持套餐1<br>
&nbsp;*详细参数说明看最下面<br>
&nbsp;*基础定价都为一年的费用</td>
    </tr>
    </form>
  </table>
  </center>
</div>

<br>


<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#808080" width="660" id="AutoNumber1" height="144">
   
    <tr>
      <td width="658" bgcolor="#145AA0" height="24" colspan="6" align="center">
      <span lang="zh-cn"><font color="#FFFFFF"><b>修改管理定价</b></font></span></td>
    </tr>

    <tr>
      <td width="56" height="25" align="center"> 编码</td>
      <td width="185" height="25" align="center"><span lang="zh-cn">产品名称</span></td>
      <td width="61" height="25" align="center">基础定价</td>
      <td width="74" height="25" align="center">最大折扣</td>
      <td width="179" height="25" align="center">产品参数</td>
      <td width="100" height="25" align="center"><span lang="zh-cn">操作</span></td>
    </tr>
<%
sql="select * from CW_DJ order by id asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%>
    <form method="post" action="DJ.asp" name="formd">
	<INPUT TYPE="HIDDEN" NAME="CZ" VALUE="XG">
    <INPUT TYPE="HIDDEN" NAME="XMDB" VALUE="a">
    	<tr>
      <td width="647" height="21" colspan="6" bgcolor="#C0C0C0"> 
     <b>　<font color=#ff0000><%=rs("id")%></font> </b>  　　　</td>
    </tr>
    <tr>
      <td width="56" height="25" align="center" bgcolor="#FFFFFF"> 
        <input type="text" name="id" size="4" value="<%=rs("id")%>"></td>
      <td width="185" height="25" align="center" bgcolor="#FFFFFF">
      <input type="text" name="name" size="24" value="<%=rs("name")%>"></td>
      <td width="61" height="25" align="center" bgcolor="#FFFFFF">
      <input type="text" name="nsv" size="4" value="<%=rs("nsv")%>">元</td>
      <td width="74" height="25" align="center" bgcolor="#FFFFFF">
        <input type="text" name="zhekou" size="4" value="<%=rs("zhekou")%>"></td>
      <td width="179" height="25" align="center" bgcolor="#FFFFFF"> 
        <input type="text" name="canshu" size="22" value="<%=rs("canshu")%>"></td>
      <td width="100" height="51" align="center" rowspan="2" bgcolor="#FFFFFF"> 
        <input type="submit" name="tj" value="修改">
    <input type="button" name="Submit3" value="删除" onClick="document.location = 'DJ.asp?ID=<%=rs("ID")%>&CZ=DEL'" ></td>
    </tr>
    <tr>
      <td width="56" height="27" align="center" bgcolor="#FFFFFF"> 
        <p align="right">说明：</td>
      <td width="505" height="27" colspan="4" bgcolor="#FFFFFF">
        <textarea rows="3" name="zb" cols="68"><%=rs("zb")%></textarea></td>
      </tr>

    </form>
<% rs.moveNext
  loop
%>
    
    <tr>
      <td width="658" bgcolor="#4296E7" height="27" colspan="6">*严禁修改产品参数&nbsp; 
		*折扣写法：0.85 0.9&nbsp; </td>
    </tr>
  </table>
  </center>
</div>




<% end if %>

<p>　</p>
<div align="center">
	<table border="1" width="663" id="table1" height="202" bgcolor="#9CC7EF" cellpadding="0" bordercolor="#0000FF" style="border-collapse: collapse">
		<tr>
			<td height="24" bgcolor="#4296E7">&nbsp;<b><font color="#FFFFFF">产品参数说明</font></b></td>
		</tr>
		<tr>
			<td height="26">&nbsp;产品类型,视频,人数,多视频个数,立体声,备用1,备用2,备用3&nbsp;&nbsp;&nbsp; 
			用英文,隔开参数。未经过总经理批准不准修改参数。</td>
		</tr>
		<tr>
			<td height="31">&nbsp;产品类型：1=BCHAT聊天室&nbsp; 2=MECHAT聊天室&nbsp; 3=空间&nbsp;&nbsp; 
			4=域名&nbsp; 5=配套网站套餐 6………… 备用</td>
		</tr>
		<tr>
			<td>&nbsp;BCHAT聊天室 产品参数表：产品类型,视频,人数,多视频,立体声,备用1,备用2,备用3 </td>
		</tr>
		<tr>
			<td>&nbsp;例子：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0000FF">1,0,30,0,0,0,0,1 </font>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">
			BCHAT，无视频，30人，无多视频，无立体声，，，套餐1</font> <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#0000FF">1,1,30,2,0,0,0,1 </font>
			<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000">
			BCHAT，有视频，30人，2个视频连接，无立体声，，，套餐1</font></td>
		</tr>
		<tr>
			<td height="21">&nbsp;<font color="#FF0000">注意：产品参数在程序实现中当作产品生成函数的传递变元，如果修改有错误，将造成销售系统瘫痪。</font></td>
		</tr>
		<tr>
			<td height="19" bgcolor="#4296E7">&nbsp;<font color="#FFFFFF">产品编码说明</font></td>
		</tr>
		<tr>
			<td>按照产品类型的编号放到千位，然后递增，如 空间&nbsp; 3001&nbsp; 3002&nbsp; </td>
		</tr>
	</table>
</div>

<p align="center">
    <input type="button" name="Submit3" value="  返回  " onClick="document.location = 'Javascript:window.history.go(-1)'" ></p>
</body>
</html>