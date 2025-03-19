<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin9.asp"-->

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

if request("s")<>"" and request("id")<>"" then 
			
			set rs=server.createobject("adodb.recordset")
			sql="select * from [User] where id like "&request("id")
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


 <form method=post action="tuizhang.asp">

          <INPUT TYPE="HIDDEN" NAME="ss" VALUE="<%=s%>">
          <INPUT TYPE="HIDDEN" NAME="uid" VALUE="<%=rs("id")%>">
          <INPUT TYPE="HIDDEN" NAME="n" VALUE="<%=request("n")%>">
          <INPUT TYPE="HIDDEN" NAME="bz" VALUE="<%=request("bz")%>">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="489" height="95" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="487" bgcolor="#990099" height="26" bordercolor="#990099" colspan="4">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>财务管理
          <%
          if s="j" then
          Response.Write "借款入帐"
          else
          Response.Write "到款入帐"
          end if
          %> </b></font></td>
        </tr>
        <tr>
          <td width="76" height="28" bordercolor="#D6D3CE" align="right">&nbsp;用户ID:</td>
          <td width="137" height="28" bordercolor="#D6D3CE">　<%=rs("id")%></td>
          <td width="74" height="28" bordercolor="#D6D3CE" align="right">用户名称:</td>
          <td width="192" height="28" bordercolor="#D6D3CE">　<%=rs("name")%></td>
        </tr>
        <tr>
          <td width="76" height="30" bordercolor="#D6D3CE" align="right">&nbsp;交易性质: </td>
          <td width="137" height="30" bordercolor="#D6D3CE">　<%
          if s="j" then
          Response.Write "借款入帐"
          else
          Response.Write "到款入帐"
          end if
          %></td>
          <td width="74" height="30" bordercolor="#D6D3CE" align="right">交易金额:</td>
          <td width="192" height="30" bordercolor="#D6D3CE">　<%=request("n")%> 元</td>
        </tr>
        <tr>
          <td width="487" height="18" bordercolor="#D6D3CE" colspan="4">&nbsp;交易管理员:<%=session("UID")%></td>
        </tr>
        <tr>
          <td width="487" height="29" bordercolor="#D6D3CE" colspan="4">&nbsp;备注:<%=request("bz")%></td>
        </tr>
        <tr>
          <td width="487" height="21" bordercolor="#D6D3CE" colspan="4">
          <p align="right">
<input type=submit name=dd value="确定提交">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="487" height="2" bordercolor="#D6D3CE" colspan="4">
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
			sql="select * from CW_user where uid like "&request("uid")
			rs.Open sql,conn,1,3
			
			
			if rs.eof then
			
	   		rs.AddNew    
       		rs("uid") = request("uid")
       		
          if ss="j" then

       		rs("jn") = request("n")
       		rs("dn") = 0
       		rs("kn") = request("n")
       		rs("yn") = 0 - request("n")
			
          else

       		rs("jn") = 0
       		rs("dn") = request("n")
       		rs("kn") = request("n")
       		rs("yn") = request("n")

          end if
       		
       
	   		rs.Update
			
			else
			
          if ss="j" then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          else

       		rs("dn") = rs("dn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("kn") + request("n")

          end if
          
			end if
			
			rs.Update
			rs.close
			
			
'处理银行统计数据库

		sql="select * from CW_TJ"
		rs.Open sql,conn,1,3
			
          if ss="j" then

       		rs("jn") = rs("jn") + request("n")
       		rs("kn") = rs("kn") + request("n")
       		rs("yn") = rs("yn") - request("n")
			
          else

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
       			
          if ss="j" then
          
			rs("x") = 1
       		rs("n") = request("n")
			
          else

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
        window.location.href="ruzhang.asp?s=<%=ss%>"

-->
</script>
             
            
			
			
			
<% else %>
<body>
 <form method=post action="tuizhang.asp">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="100%">
  <tr>
    <td width="100%">
    <div align="center">
      <center>
      <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#C0C0C0" width="489" height="1" bgcolor="#D6D3CE" bordercolorlight="#FFFFFF" bordercolordark="#000000">
        <tr>
          <td width="487" bgcolor="#990099" height="26" bordercolor="#990099">
          <p><b><font color="#FFFFFF">&nbsp;</font><font color="#FF0000"> </font>
          </b><font color="#FFFFFF"><b>财务管理
          <%
          if s="j" then
          Response.Write "借款入帐"
          else
          Response.Write "到款入帐"
          end if
          %> </b></font></td>
        </tr>
        <tr>
          <td width="487" height="31" bordercolor="#D6D3CE">　</td>
        </tr>
        <tr>
          <td width="487" height="21" bordercolor="#D6D3CE">&nbsp;&nbsp; 帐户数字ID:<input name=id size=10>&nbsp; 
          入帐金额:<input name=n size=8>元&nbsp; 注备:<input name=bz size=15>
          
          <INPUT TYPE="HIDDEN" NAME="s" VALUE="<%=s%>">
          </td>
        </tr>
        <tr>
          <td width="487" height="1" bordercolor="#D6D3CE">
          <p align="right">
<input type=submit name=dd value="确定">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
          <td width="487" height="1" bordercolor="#D6D3CE">
          　</td>
        </tr>
        <tr>
          <td width="487" height="1" bordercolor="#D6D3CE">
          <p align="right">　</td>
        </tr>
      </table>
      </center>
    </div>
    </td>
  </tr>
</table></form>

<% end if %>