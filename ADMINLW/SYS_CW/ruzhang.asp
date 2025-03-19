<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->

<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>用户密码找回</TITLE>

<meta http-equiv="Content-Language" content="zh-cn">
<style type="text/css">
<!--
td    { font-size: 12px} 
-->
</style>
<% 
s=request("s")
ss=request("ss")

if request("s")<>"" and request("uid")<>"" then 
			
			set rs=server.createobject("adodb.recordset")
			sql="select * from [User] where uid like "& ContentEncode(request("uid"))
			rs.Open sql,conn,1,3
			
			if  rs.eof then  
			
			%>
		<script language=vbs>
<!--
        MsgBox "没有您输入的这个用户ID"
        window.location.href="Javascript:window.history.go(-1)"

-->
   		</script>
   		
<% else %>


 <form method=post action="ruzhang.asp">

          <INPUT TYPE="HIDDEN" NAME="ss" VALUE="<%=s%>">
          <INPUT TYPE="HIDDEN" NAME="uid" VALUE="<%=rs("uid")%>">
          <INPUT TYPE="HIDDEN" NAME="name" VALUE="<%=rs("name")%>">
          <INPUT TYPE="HIDDEN" NAME="n" VALUE="<%=request("n")%>">
          <INPUT TYPE="HIDDEN" NAME="bz" VALUE="<%=request("bz")%>">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#000000" width="528" height="95" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="526" bgcolor="#990099" height="26" bordercolor="#990099" colspan="4">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>财务管理
          <%
          if s=1 then
          Response.Write "借款入帐"
          elseif s=2 then
          Response.Write "到款入帐"
          else
          Call errstr("非法操作！！！")
          end if
          %> </b></font></td>
        </tr>
        <tr>
          <td width="76" height="28" bordercolor="#D6D3CE" align="right">&nbsp;用户帐户:</td>
          <td width="137" height="28" bordercolor="#D6D3CE">　<%=rs("uid")%></td>
          <td width="74" height="28" bordercolor="#D6D3CE" align="right">用户名:</td>
          <td width="232" height="28" bordercolor="#D6D3CE">　<%=rs("name")%></td>
        </tr>
        <tr>
          <td width="76" height="30" bordercolor="#D6D3CE" align="right">&nbsp;交易性质: </td>
          <td width="137" height="30" bordercolor="#D6D3CE">　<%
          if s=1 then
          Response.Write "借款入帐"
          elseif s=2 then
          Response.Write "到款入帐"
          else
          Call errstr("非法操作！！！")
          end if
          %></td>
          <td width="74" height="30" bordercolor="#D6D3CE" align="right">交易金额:</td>
          <td width="232" height="30" bordercolor="#D6D3CE">　<%=request("n")%> 元</td>
        </tr>
        <tr>
          <td width="526" height="18" bordercolor="#D6D3CE" colspan="4">&nbsp; 交易管理员:&nbsp; <%=session("UID")%></td>
        </tr>
        <tr>
          <td width="526" height="29" bordercolor="#D6D3CE" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 备注:&nbsp; <%=request("bz")%></td>
        </tr>
        <tr>
          <td width="526" height="21" bordercolor="#D6D3CE" colspan="4">
          <p align="right">
<input type=submit name=dd value="确定提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="526" height="2" bordercolor="#D6D3CE" colspan="4">
          <p align="right">　</td>
        </tr>
        </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>
</body>
<% end if %>



<% elseif   ss<>"" and request("uid")<>"" then 

'处理用户银行数据

uid=request("uid")
name=request("name")
n=request("n")



			set rs=server.CreateObject ("adodb.recordset")

			sql="select * from CW_user where uid like "&request("uid")
			rs.Open sql,conn,1,3
			
			
	if rs.eof then
			
	   		rs.AddNew    
       		rs("uid") = request("uid")
       		rs("name")= request("name")
       		
          if ss=1 then

       		rs("jn") = request("n")
       		rs("dn") = 0
       		rs("kn") = request("n")
       		rs("yn") = 0 - request("n")
			
          elseif ss=2 then

       		rs("jn") = 0
       		rs("dn") = request("n")
       		rs("kn") = request("n")
       		rs("yn") = request("n")

          end if

	else
			
          if ss=1 then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          elseif ss=2 then

       		rs("dn") = rs("dn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") + request("n")

          end if
          
	end if
			
			rs.Update
			rs.close
			
			
'处理银行统计数据库

		sql="select * from CW_TJ"
		rs.Open sql,conn,1,3
			
          if ss=1 then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          elseif ss=2 then

       		rs("dn") = rs("dn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") + request("n")
       		
          end if

			rs.Update
			rs.close


'处理流水帐目
			
			sql="select * from CW_JL "
			rs.Open sql,conn,1,3
			
			rs.AddNew    
       		rs("uid") = request("uid")
       		rs("name")= request("name")	
       			
          if ss=1 then
          
			rs("x") = 1
       		rs("n") = request("n")
			
          elseif ss=2 then

			rs("x") = 2
       		rs("n") = request("n")
       		
          end if
          
			rs("admin") = session("UID")
			rs("bz") = request("bz")
			rs("times") = now()
			rs.Update
			rs.close


			%>
<script language=vbs>
<!--
        MsgBox "财务操作成功！"
        window.location.href="ruzhang.asp"

-->
</script>
             
            
			
			
			
<% else %>

<script language="javascript">
function Check(){var Name=document.myform.name.value;
window.open("addname.asp?abc=1&name="+Name,"","width=200,height=20");
}
</script>
<body>
 <form name=myform method=post action="ruzhang.asp">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#000000" width="556" height="174" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="554" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>财务管理
          </b></font></td>
        </tr>
        <tr>
          <td width="554" height="31" bordercolor="#000000">　</td>
        </tr>
        <tr>
          <td width="554" height="21" bordercolor="#000000">&nbsp;&nbsp; 帐户ID:<input name=uid size=7>&nbsp;性质:<select size="1" name="s">
			<option value="1">借款入帐</option>
			<option value="2">到款入帐</option>
			</select>&nbsp; 金额:<input name=n size=5>元&nbsp; 营销客服ID:<input name=uid0 size=7>
    
          </td>
        </tr>
        <tr>
          <td width="554" height="1" bordercolor="#000000">
        
&nbsp;&nbsp;  
注&nbsp; 备:<input name=bz0 size=57>
    
          <input type=submit name=dd value="确定">&nbsp; </td>
        </tr>
        <tr>
          <td width="554" height="1" bordercolor="#000000">
          　</td>
        </tr>
        <tr>
          <td width="554" height="11" bordercolor="#000000">
          <p align="right">输入用户名：<input name=name size=10> 
             <INPUT onclick="javascript:Check()" type="button" value="查用户ID" name="cmdcancel1" class="buttonface">&nbsp;&nbsp;&nbsp; </td>
        </tr>
      	<tr>
          <td width="554" height="4" bordercolor="#000000">
          　</td>
        </tr>
		<tr>
          <td width="554" height="39" bordercolor="#000000">
          <p align="right">备注中写:汇款单编号 或 其他信息&nbsp;</td>
        </tr>
      </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>

<% end if %>