<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/Chatfl.asp" -->
<% Call quanxian(20) %>
<%
	if  Request("quxiao")<>"" then
		'if CDate(Request("PartyDate"))=Date then Call errstr("非法操作！")
		chatconn.execute("update [Party] set ss=1 where id=" & Request("quxiao"))
		Call errstr("修改成功！！")
	end if 

	if Request("PartyDate")<>"" and Request("title")<>"" and Request("txt")<>"" and Request("vid")<>""  then

	if CDate(Request("PartyDate"))<Date then Call errstr("Party时间非法，必须是大于等于今天！")
	if InStr(Request("txt"), "</textarea>")>0 then Call errstr("Party内容不能包含</textarea>文本框控件！")
		
		if Request("vid")=0 then
		sql="select PartyM,PartyS from [web] where id=" & rmport
		rs.open sql,chatconn,1,3
		rs("PartyM") =Month(now())
		rs("PartyS") =rs("PartyS")-1
       	rs.Update
       	rs.close
       	
		end if


		sql="select * from [Party] where id=" & Request("vid")
		rs.open sql,chatconn,1,3
		
		if rs.eof then rs.addnew
		rs("roomid")=rmport
		rs("roomname")=roomname
		rs("PartyDate")=Request("PartyDate")
		rs("title")=HTMLEncode(Request("title"))
		rs("txt")=Request("txt")
		rs("ss")=0
		
       	rs.Update
       	rs.close

		if Request("vid")=0 then 
			Call errstr("Party申请成功！！")
		else
			Call errstr("Party资料修改成功！！")
		end if

	end if

        '初始化数据
		sql="select PartyM,PartyS from [web] where id=" & rmport
		rs.open sql,chatconn,1,3
		
		if rs("PartyM")=NULL or rs("PartyM")=0 then
			rs("PartyM") = Month(now())
			rs("PartyS") = 3
       		rs.Update
       		PartyS=3
		else
			if rs("PartyM") = Month(now()) then
				PartyS=rs("PartyS")
				if PartyS=NULL then PartyS=3
			else
				rs("PartyM") = Month(now())
				rs("PartyS") = 3
				rs.Update
				PartyS=3
			end if
		end if
       	rs.close
       
		sql="select * from [Party] where roomid="& rmport &" and ss=0 order by id DESC"
		rs.open sql,chatconn,1,1
		if rs.eof then 
		
		ss=1
		vid=0
		'PartyDate="2001-1-1"
		
		else
		
		vid=rs("id")
		ss=rs("ss")
		PartyDate=rs("PartyDate")
		title=rs("title")
		txt=rs("txt")
		
		end if
		rs.close
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>Party申请</title>
</head>

<body>
<script src=../../inc/birthday.js></script>
      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="19" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="572" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="571" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="200">

<form name="form5" method="post" action="Party.asp">
		<input type="hidden" name="vid" size="18" maxlength="10" value="<%=vid%>"> 
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp; Party申请</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">　</td>
            </tr>
       <tr>
          
            <td width="586" height="70" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left"><font color="#008000">说明：</font>1.Party功能是在举办Party的当天，
			该聊天室最高人限将增加一倍，如30人房间Party当天60人。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.每个聊天室一个月有3次申请Party的机会。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			3.Party最好提前一天申请。假如当天紧急举办Party，请在申请Party后重新启动聊天室即可生效。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4.Bchat聊天室请在重新启动页面里选择Party模式重新启动房间。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5.MeChat聊天室请在复位聊天室页面选择Party模式复位聊天室。<br>
　</td>
            </tr>
          <tr>
	    <td width="98" align=left height="25">端口号：</td>
	    <td width="484" height="25"> <%=rmport%></td>
	      </tr>
<% if ss=0 then %>
            <tr>
            <td width="98" height="4" align="center" bgcolor="#FFFFFF">
            
			</td>
            <td width="481" height="4" bgcolor="#FFFFFF">
            <% if PartyDate=Date() then %>
			[<%=PartyDate%>]Party已经在运行中，明天早晨5点Party结束。<br>
            <% else %>您在此前已经申请[<%=PartyDate%>]Party。若取消Party<a href="Party.asp?quxiao=<%=vid%>">请点这里</a>。<br>
            [取消Party必须提前一天，但同样会消耗一个申请机会！]
            <% end if %>
            </td>
            </tr>
			<tr>
            <td width="586" height="2" align="center" colspan="2" bgcolor="#FFFFFF">
             </td>
            </tr>
<% end if %>



<% if (PartyS>0 and ss=0) or ss=1 then %>
          <tr>
            <td width="98" height="25" align="right" bgcolor="#F9F9F7">
            <p align="left">申请机会：</td>
            <td width="484" height="25" bgcolor="#F9F9F7"> 

本月你还有<b><font color="#FF0000"><%=PartyS%></font></b>次申请Party的机会</td>
            </tr>

          <tr>
	    <td  align=left height="25" width="98">Party时间：</td>
	    <td height="25" width="484" >
	    
<input onfocus="show_cele_date(PartyDate,'','',PartyDate)" value="<%=PartyDate%>" name="PartyDate" size="17"></td>
	      </tr>
          <tr>
	    <td  align=left height="25" width="98">Party主题：</td>
	    <td height="25" width="484" > 
        
<input type="text" name="title" size="51" maxlength="35" value="<%=title%>"></td>
	      </tr>
          <tr>
	    <td  align=left height="88" width="98">Party内容：</td>
	    <td height="88" width="484" ><textarea rows="19" name="txt" cols="66"><%=txt%></textarea><br>
		支持HTML CSS样式表，禁用&lt;textarea&gt;文本框标记</td>
	      </tr>

          <tr>
            <td width="586" height="20" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <p align="left">　</td>
            </tr>

          <tr>
            <td width="586" height="7" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value="确认" name="B1"></td>
            </tr>
<% elseif PartyS=0 then %>
			<tr>
            <td width="586" height="4" align="center" colspan="2" bgcolor="#FFFFFF">
            

            本月的Party申请机会已经使用完毕，请下月再举行。<br>
			假如必须本月举行请与客户人员联系，一次Party申请费用100元。</td>
            </tr>
			<tr>
            <td width="586" height="2" align="center" colspan="2" bgcolor="#FFFFFF">
            

            　</td>
            </tr>
<% end if %>
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