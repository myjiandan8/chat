<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
uid=Request("uid")
set rsf=server.createobject("adodb.recordset")
sql="select * from CW_user where uid=" & uid
rsf.open sql,conn,1,1
if rsf.eof then
Call errstr("你要的帐户不存在！！")
end if

'删除记录
if request("s")<>"" and request("n")<>"" and request("bz")<>"" and request("queding")="" then  
   session("bz")=HTMLEncode(request("bz"))
%>

<script language="vbscript">
	if msgbox ("你确定为帐户：<%=uid%>做<%=request("n")%>元的<%
          if request("s")=1 then
          Response.Write "借款入帐"
          elseif request("s")=2 then
          Response.Write "还款入帐"
          elseif request("s")=3 then
          Response.Write "到款入帐"
          elseif request("s")=4 then
          Response.Write "退款入帐"
          end if
          %>处理吗？",vbYesNo+vbQuestion,"确定")=vbYes then
	   window.location.href="zhangwu.asp?uid=<%=uid%>&queding=ok&s=<%=request("s")%>&n=<%=request("n")%>"
	   else
	   window.location.href="Javascript:window.history.go(-1)"
	end if
</script>

<%
  response.end
end if

if  request("s")<>"" and request("n")<>"" and request("queding")="ok" then 

	if session("bz")="" then Call errstr("数据丢失请重新操作！！")
	
	
    ss=request("s")
	n=request("n")
	bz=session("bz")
	
	
			set rs=server.CreateObject ("adodb.recordset")

			sql="select * from CW_user where uid like "&request("uid")
			rs.Open sql,conn,1,3

		    'jn借 dn到 xn消费 tn退 kn可用资金 yn余额  
			
          if ss=1 then  '借

       			rs("jn") = rs("jn") + n
       			rs("kn") = rs("kn") + n
       			rs("yn") = rs("yn") - n
			
          elseif ss=2 then '还
				

				jns = n - rs("jn") 				'得到还款与借款差额

				if jns<0 then  					'假如还款不够还清借款
				
					rs("jn") = rs("jn") - n
					
				else					  		'假如还款超过了借款

					rs("jn")=0
       				rs("kn") = rs("kn") + jns	'可用资金里加上超出部分
       				
       			end if
       			
       		       	rs("dn") = rs("dn") + n
       				rs("yn") = rs("yn") + n	
       		
       		
          elseif ss=3 then '到


       			rs("dn") = rs("dn") + n
       			rs("kn") = rs("kn") + n
       			rs("yn") = rs("yn") + n


          elseif ss=4 then '退

       			rs("tn") = rs("tn") + n
       			rs("kn") = rs("kn") - n
       			rs("yn") = rs("yn") - n

          end if

			
			rs.Update
			rs.close
			
			
'处理银行统计数据库


		'jn借 dn到 xn消费 tn退 kn可用资金 yn余额  
		
		sql="select * from CW_TJ"
		rs.Open sql,conn,1,3
			
          if ss=1 then

       			rs("jn") = rs("jn") + n
       			rs("kn") = rs("kn") + n
       			rs("yn") = rs("yn") - n
			
          elseif ss=2 then

				

				jns = n - rs("jn") 				'得到还款与借款差额

				if jns<0 then  					'假如还款不够还清借款
				
					rs("jn") = rs("jn") - n
					
				else					  		'假如还款超过了借款

					rs("jn")=0
       				rs("kn") = rs("kn") + jns	'可用资金里加上超出部分
       				
       			end if
       			
       		       	rs("dn") = rs("dn") + n
       				rs("yn") = rs("yn") + n	
       		
       		
       		
          elseif ss=3 then

       			rs("dn") = rs("dn") + n
       			rs("kn") = rs("kn") + n
       			rs("yn") = rs("yn") + n
       	  
       	  elseif ss=4 then

       			rs("tn") = rs("tn") + n
       			rs("kn") = rs("kn") - n
       			rs("yn") = rs("yn") - n
       			
          end if

			rs.Update
			rs.close


'处理流水帐目
			
			sql="select * from CW_JL "
			rs.Open sql,conn,1,3
			
			rs.AddNew    
       		rs("uid") = uid
       		rs("name")= name	
       		rs("bm")= request("bm")
       			

			rs("x") = ss
       		rs("n") = n
			
          
			rs("admin") = session("UID")
			rs("bz") = bz
			rs("times") = now()
			rs.Update
			rs.close




end if %>

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>用户帐目管理</title>
<LINK href="../img/lw.css" type=text/css rel=stylesheet>
</head>
<body bgcolor="#EEF2FF" topmargin="0">

<div align="center">
  <center>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="650" id="AutoNumber6">
  <tr>
    <td width="100%">
    　</td>
  </tr>
</table>
  </center>
</div>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C6C3FF" width="650" id="AutoNumber4" bgcolor="#F7F7FF" height="232">
    <tr>
      <td width="100%" background="../img/bg.gif" height="22">&nbsp;<img border="0" src="../img/jt.gif"> 
		用户财务</td>
    </tr>
    <tr>
      <td width="100%" height="208" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber5" height="197">
        <tr>
          <td width="100%" height="1"></td>
        </tr>

<form name=myform method=post action="zhangwu.asp?uid=<%=uid%>">

        <tr>
          <td width="100%" height="196" valign="top"> 
          
          <table border="0" width="648" id="table1" height="176">
			<tr>
				<td width="642" colspan="2" height="14"></td>
			</tr>
			<tr>
				<td width="144">&nbsp;&nbsp;&nbsp; 用户ID：<%=uid%></td>
				<td width="494">用户名：<%=rsf("name")%></td>
			</tr>
			<tr>
				<td height="11" width="642" colspan="2">&nbsp;&nbsp;&nbsp; 帐务操作：<select size="1" name="s">
			<option value="1">借款入帐</option>
			<option value="2">还款入帐</option>
			<option value="3">到款入帐</option>
			<option value="4">退款入帐</option>
			</select>&nbsp; 金额:<input name=n size=7>元&nbsp; 财务编号:<input name=n0 size=9></td>
			</tr>
			<tr>
				<td height="26" width="642" colspan="2"> <font color="#C0C0C0">
				&nbsp;&nbsp;&nbsp; </font>注:<font color="#008000">只接到传真为借款；收到后汇款后还款
				；直接接到汇款为到款；编码中写财务单据编号。</font></td>
			</tr>
			<tr>
				<td height="35" width="642" colspan="2">&nbsp;&nbsp;&nbsp; 备案说明：<textarea rows="3" name="bz" cols="56"></textarea>
    
          <input type=submit name=dd value="确定操作"></td>
			</tr>
			<tr>
				<td height="14" width="642" colspan="2" align="center">
				备案说明中填写，单据编号 等等相关信息。</td>
			</tr>

</form>

			<tr>
				<td height="12" width="642" colspan="2">
          <hr noshade color="#C6C3FF" width="95%" size="1"></td>
			</tr>
			<tr>
				<td height="54" width="642" colspan="2" align="center" valign="top">
				
      <%
      set rsf=server.createobject("adodb.recordset")
	  sql="select * from CW_user where uid=" & uid
	  rsf.open sql,conn,1,1
	  if not (rsf.eof or err) then
	  %>
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="100">
          <tr>
            <td width="592" bgcolor="#000000" height="28" colspan="6"><b>
            <font color="#FFFFFF">　<%=uid%>　财务帐户信息　</font></b></td>
          </tr>
          <tr>
          
            <td width="77" height="37" align="center"><b>借款</b></td>
            <td width="79" height="37" align="center"><b>到款</b></td>
            <td width="75" height="37" align="center"><b>退款</b></td>
            <td width="70" height="37" align="center"><b>消费</b></td>
            <td width="75" height="37" align="center"><b>可用资金</b></td>
            <td width="71" height="37" align="center"><b>结余金额</b></td>
            
          </tr>
          
          <tr>
            <td width="77" height="29" align="center" bgcolor="#F9F9F7"><%=rsf("jn")%>元</td>
            <td width="79" height="29" align="center" bgcolor="#F9F9F7"><%=rsf("dn")%>元</td>
            <td width="75" height="29" align="center" bgcolor="#F9F9F7"><%=rsf("tn")%>元</td>
            <td width="70" height="29" align="center" bgcolor="#F9F9F7"><%=rsf("xn")%>元</td>
            <td width="75" height="29" align="center" bgcolor="#F9F9F7"><font color="#008000"><%=rsf("kn")%></font>元</td>
            <td width="71" height="29" align="center" bgcolor="#F9F9F7"><font color="#FF0000"><%=rsf("yn")%></font>元</td>
          </tr>
          
        </table>
        </center>
      </div>
      
   <% end if %>


<br>
     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="106">
          <tr>
            <td width="592" bgcolor="#000000" height="30" colspan="9"><b>
            <font color="#FFFFFF">　<%=uid%>　已购服务管理　</font></b></td>
          </tr>
          <tr>
          
            <td width="46" height="23" align="center"><b>编号</b></td>
            <td width="131" height="23" align="center"><b>服务名称</b></td>
            <td width="42" height="23" align="center"><b>客服</b></td>
            <td width="47" height="23" align="center"><b>商品id</b></td>
            <td width="57" height="23" align="center"><b>金额</b></td>
            <td width="73" height="23" align="center"><b>开通日期</b></td>
            <td width="66" height="23" align="center"><b>到期时间</b></td>
            <td width="40" height="23" align="center"><b>状态</b></td>
            <td width="50" height="23" align="center"><b>操作</b></td>
            
          </tr>
<%
sql="select * from CW_CP where uid=" & uid
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="9" bgcolor="#FFFFFF">
            <p align="left">抱歉他还没有购买任何一种服务产品!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="46" height="25" align="center" bgcolor="#F9F9F7"><%=rs("id")%></td>
            <td width="131" height="25" align="center" bgcolor="#F9F9F7"><%=rs("djname")%></td>
            <td width="42" height="25" align="center" bgcolor="#F9F9F7"><%=rs("dl")%></td>
            <td width="47" height="25" align="center" bgcolor="#F9F9F7"><%=rs("vid")%></td>
            <td width="57" height="25" align="center" bgcolor="#F9F9F7"><%=rs("n")%>元</td>
            <td width="73" height="25" align="center" bgcolor="#F9F9F7"><%=rs("ktimes")%></td>
            <td width="66" height="25" align="center" bgcolor="#F9F9F7"><%=rs("dtimes")%></td>
            <td width="40" height="25" align="center" bgcolor="#F9F9F7"><%
           if rs("zt")=0 then
           response.write "停止"
           elseif rs("zt")=1 then 
           response.write "正常"
           else
           response.write "异常"
           end if
            
            %></td>
            <td width="50" height="25" align="center" bgcolor="#F9F9F7">
            <a href="zhangwu.asp?tingzhi=<%=rs("id")%>">暂停</a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
 
<br>
     <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" bgcolor="#D4D0C8" height="106">
          <tr>
            <td width="592" bgcolor="#000000" height="30" colspan="7"><b>
            <font color="#FFFFFF">　<%=uid%>　交易记录　</font></b></td>
          </tr>
          <tr>
          
            <td width="36" height="23" align="center"><b>编号</b></td>
            <td width="65" height="23" align="center"><b>交易性质</b></td>
            <td width="51" height="23" align="center"><b>金额</b></td>
            <td width="62" height="23" align="center"><b>编码</b></td>
            <td width="187" height="23" align="center"><b>备注</b></td>
            <td width="67" height="23" align="center"><b>交易时间</b></td>
            <td width="94" height="23" align="center"><b>操作人</b></td>
            
          </tr>
<%
sql="select * from CW_JL where uid=" & uid
set rs=conn.execute (sql)
if rs.eof or err then
%>

     <tr>
            <td width="592" height="26" align="center" colspan="7" bgcolor="#FFFFFF">
            <p align="left">抱歉他还没有交易记录!</td>
     </tr>

<%
else
do while not (rs.eof or err)
%>
          <tr>
            <td width="36" height="25" align="center" bgcolor="#F9F9F7"><%=rs("id")%></td>
            <td width="65" height="25" align="center" bgcolor="#F9F9F7"><%
          if rs("x")=1 then
          Response.Write "借款入帐"
          elseif rs("x")=2 then
          Response.Write "还款入帐"
          elseif rs("x")=3 then
          Response.Write "到款入帐"
          elseif rs("x")=4 then
          Response.Write "退款入帐"
          end if
          %></td>
            <td width="51" height="25" align="center" bgcolor="#F9F9F7"><font color="#800000"><%=rs("n")%></font>元</td>
            <td width="62" height="25" align="center" bgcolor="#F9F9F7"><%=rs("bm")%></td>
            <td width="187" height="25" align="center" bgcolor="#F9F9F7"><%=rs("bz")%></td>
            <td width="67" height="25" align="center" bgcolor="#F9F9F7"><%=rs("times")%></td>
            <td width="94" height="25" align="center" bgcolor="#F9F9F7">
            <a href="zhangwu.asp?tingzhi=<%=rs("id")%>"><%=rs("admin")%></a></td>
          </tr>

<% rs.moveNext
  loop
  
end if
%>
        </table>
        </center>
      </div>
 
			
				</td>
			</tr>
			<tr>
				<td width="642" colspan="2" height="37"></td>
			</tr>
			</table>
          
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