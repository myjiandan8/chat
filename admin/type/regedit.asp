<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/Chatfl.asp" -->
<% Call quanxian(1) %>
<%
if Request("cname")<>"" then

	if len(Request("index_css"))>1000 then Call errstr("1500字以内才可以哦！！")

	sql="select * from [web] where e roomid=" & rmport & " and renzheng=0"
	rs.open sql,chatconn,1,3
	
	if rs.eof or err then rs.addnew
	
	   Call reg()

       rs.Update
       rs.close

	Call errstr("修改成功！！")

else

		sql="select top 1 * from [regedit] where roomid=" & rmport & " order by regzheng asc"
		rs.open sql,chatconn,1,3
		
		if rs.eof or err then 
		
		rs.addnew
		
	   roomid = id
       roomname = roomname
       roomsoft = roomsoft
       cpid = cpid
       newdate = newdate
       enddate = enddate
       cp1 = cp1
       cp2 = cp2
       cp3 = cp3
       cp4 = cp4
       cp5 = cp5
				
		Call reg()

		rs.Update
        rs.close
        
        end if
        
        
         
end if




sub reg()

       rs("roomid") = roomid
       rs("roomname") = roomname
       rs("roomsoft") = roomsoft
       rs("cpid") = cpid
       rs("newdate") = newdate
       rs("enddate") = enddate
       rs("cp1") = cp1
       rs("cp2") = cp2
       rs("cp3") = cp3
       rs("cp4") = cp4
       rs("cp5") = cp5
       
       rs("opid") = Request("opid")
       rs("hetong") = Request("hetong")
       rs("cname") = Request("cname")
       rs("uid") = Request("uid")
       rs("zhengjian") = Request("zhengjian")
       rs("tcl") = Request("tcl")
       rs("tclbm") = Request("tclbm")
       rs("guojia") = Request("guojia")
       rs("shengfen") = Request("shengfen")
       rs("chengshi") = Request("chengshi")
       rs("dizhi") = Request("dizhi")
       rs("bianma") = Request("bianma")
       rs("dianhua") = Request("dianhua")
       rs("yidong") = Request("yidong")
       rs("fax") = Request("fax")
       rs("email") = Request("email")
       rs("wangzhi") = Request("wangzhi")
       rs("addtime") = addtime
       rs("edittime") = edittime
       rs("renzheng") = renzheng
       rs("shengji") = shengji
       rs("shengjiid") = shengjiid
       'rs("") = Request("")

end sub


sub newreg()

       rs("roomid") = Request("roomid")
       rs("roomname") = Request("roomname")
       rs("roomsoft") = Request("roomsoft")
       rs("cpid") = Request("cpid")
       rs("newdate") = Request("newdate")
       rs("enddate") = Request("enddate")
       rs("cp1") = Request("cp1")
       rs("cp2") = Request("cp2")
       rs("cp3") = Request("cp3")
       rs("cp4") = Request("cp4")
       rs("cp5") = Request("cp5")

end sub





%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>个性设置</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="1" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="780" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="778" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

<form name="form5" method="post" action="regedit_副本(1).asp">
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;注册备案资料变更</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>

          <tr>
	    <td width="149" align=right height="23">产品编号：</td>
	    <td width="433" height="23"> <%=id%></td>
	      </tr>
          <tr>
	    <td width="149" align=right height="26">房间名称：</td>
	    <td width="433" height="26"> <%=rs("roomname")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">聊天室软件：</td>
	    <td width="433" height="26"> <%=rs("roomsoft")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">聊天室产品类型：</td>
	    <td width="433" height="26"> <%=rs("cpid")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">开通日期：</td>
	    <td width="433" height="26"> <%=rs("adddate")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">到期时间：</td>
	    <td width="433" height="26"> <%=rs("enddate")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">产品参数：</td>
	    <td width="433" height="26"> 　<%=rs("cp1")%>,<%=rs("cp2")%>,<%=rs("3")%>,<%=rs("cp4")%>,<%=rs("cp5")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">营销员ID：</td>
	    <td width="433" height="26"> 　<%=rs("opid")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">电子合同文本编号：</td>
	    <td width="433" height="26"> 　<%=rs("hetong")%></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">房间法人代表(准室主)：</td>
	    <td width="433" height="26"> 
		<input type="text" name="cname" size="33" value="<%=rs("cname")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">室主在聊湾ID：</td>
	    <td width="433" height="26"> 
		<input type="text" name="uid" size="33" value="<%=rs("uid")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">法人身份证编码：</td>
	    <td width="433" height="26"> 
		<input type="text" name="zhengjian" size="33" value="<%=rs("zhengjian")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">拥有公司名称：<br>
		（公司购买必填全称）</td>
	    <td width="433" height="26"> 
		<input type="text" name="tcl" size="33" value="<%=rs("tcl")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">公司营业执照编号：</td>
	    <td width="433" height="26"> 
		<input type="text" name="tclbm" size="33" value="<%=rs("tclbm")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">所在国家：</td>
	    <td width="433" height="26"> 
		<input type="text" name="guojia" size="33" value="<%=rs("guojia")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">所在省份：</td>
	    <td width="433" height="26"> 
		<input type="text" name="shengfen" size="33" value="<%=rs("shengfen")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">所在城市：</td>
	    <td width="433" height="26"> 
		<input type="text" name="chengshi" size="33" value="<%=rs("chengshi")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">联系地址：</td>
	    <td width="433" height="26"> 
		<input type="text" name="dizhi" size="33" value="<%=rs("dizhi")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">邮政编码：</td>
	    <td width="433" height="26"> 
		<input type="text" name="bianma" size="33" value="<%=rs("bianma")%>"></td>
	      </tr>
          <tr>
	    <td width="149" align=right height="26">联系电话：</td>
	    <td width="433" height="26"> 
		<input type="text" name="<%=rs("dianhua")%>" size="33" value="<%=rs("dianhua")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">移动电话：</td>
	    <td width="433" height="26"> 
		<input type="text" name="yidong" size="33" value="<%=rs("yidong")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">传真：</td>
	    <td width="433" height="26"> 
		<input type="text" name="fax" size="33" value="<%=rs("fax")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">电子邮件：</td>
	    <td width="433" height="26"> 
		<input type="text" name="email" size="33" value="<%=rs("email")%>"></td>
	      </tr>
			<tr>
	    <td width="149" align=right height="14">网站网址：</td>
	    <td width="433" height="14"> 
		<input type="text" name="wangzhi" size="33" value="<%=rs("wangzhi")%>"></td>
	      </tr>

          <tr>
	    <td width="149" align=right height="26">注册档案开通时间：</td>
	    <td width="433" height="26"> <%=rs("addtime")%>
		　</td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">最后一次变更时间：</td>
	    <td width="433" height="26"> <%=rs("endtime")%>
		　</td>
	      </tr>
			<tr>
	    <td width="149" align=right height="26">档案审核：</td>
	    <td width="433" height="26"> <%=rs("shengji")%>
		　</td>
	      </tr>

          <tr>
            <td width="586" height="74" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <p align="left">
			资料更改后由客服人员审核资料的真实性，并确认更改，您要保证你提供的资料的真实性，否则将拒绝变更资料。谢谢合作！<br>
			注意以上的个人身份证编号在对外显示时是保密的！</td>
            </tr>

          <tr>
            <td width="586" height="101" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" 确认修改 " name="B1"></td>
            </tr>

</form>
        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>