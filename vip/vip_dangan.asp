<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->

<%

email=HTMLEncode(Request("email"))
shouji=HTMLEncode(Request("shouji"))

cname=HTMLEncode(Request("cname"))
Sex=HTMLEncode(Request("Sex"))
userDate=HTMLEncode(Request("userDate"))
Icon=HTMLEncode(Request("Icon"))
pic=HTMLEncode(Request("pic"))
zppic=HTMLEncode(Request("zppic"))

snxiao=HTMLEncode(Request("snxiao"))
blood=HTMLEncode(Request("blood"))
xingzuo=HTMLEncode(Request("xingzuo"))
belief=HTMLEncode(Request("belief"))
job=HTMLEncode(Request("job"))
marital=HTMLEncode(Request("marital"))
education=HTMLEncode(Request("education"))
college=HTMLEncode(Request("college"))
minzu=HTMLEncode(Request("minzu"))
jiguan=HTMLEncode(Request("jiguan"))
shengao=HTMLEncode(Request("shengao"))
tizhong=HTMLEncode(Request("tizhong"))

dizhi=HTMLEncode(Request("dizhi"))
zip=HTMLEncode(Request("zip"))
phone=HTMLEncode(Request("phone"))
OICQ=HTMLEncode(Request("OICQ"))
UC=HTMLEncode(Request("UC"))
ICQ=HTMLEncode(Request("ICQ"))
MSN=HTMLEncode(Request("MSN"))
www=HTMLEncode(Request("www"))
zhengjian=HTMLEncode(Request("zhengjian"))
jianjie=HTMLEncode(Request("jianjie"))
qianming=HTMLEncode(Request("qianming"))
character=HTMLEncode(Request("character"))
userDVD=HTMLEncode(Request("userDVD"))


if cname<>"" or userDate<>"" or zhengjian<>"" then
'修改档案开始
Call yanzheng()
if cname="" or userDate="" or zhengjian="" then
errstr("请填写完整！")
end if

if not IsValidEmail(Email) then
errstr("非法的电子邮件！")
end if


if instr(qianming,"[/FLASH]")>0 or instr(qianming,"[/RM]")>0 or instr(qianming,"[/MP]")>0 then errstr("签名档中不能含有[FLASH] [RM] [MP]代码")

if Len(character)>255 then errstr("性格不能大于 255 个字符")

if Len(jianjie)>255 then errstr("个人简介不能大于 255 个字符")

if Len(qianming)>255 then errstr("签名档不能大于 255 个字节")


Function CheckHtml(Str)
   Dim Sos
   Sos=Trim(Str)
   if InStr(1,Sos," ",vbTextCompare)<>0 or InStr(1,Sos,".",vbTextCompare)<>0 or InStr(1,Sos,"<",vbTextCompare)<>0 or InStr(1,Sos,">",vbTextCompare)<>0 or InStr(1,Sos,"&",vbTextCompare)<>0  or InStr(1,Sos,"!",vbTextCompare)<>0 then
      CheckHtml=true
   elseif Len(Sos)<2 then
   	  CheckHtml=true
   else
      CheckHtml=false
   end if      
End Function


'检测电子邮件的函数
function IsValidEmail(email)

dim names, name, i, c

'Check for valid syntax in an email address.

IsValidEmail = true
names = Split(email, "@")
if UBound(names) <> 1 then
IsValidEmail = false
exit function
end if
for each name in names
if Len(name) <= 0 then
IsValidEmail = false
exit function
end if
for i = 1 to Len(name)
c = Lcase(Mid(name, i, 1))
if InStr("abcdefghijklmnopqrstuvwxyz_-.", c) <= 0 and not IsNumeric(c) then
IsValidEmail = false
exit function
end if
next
if Left(name, 1) = "." or Right(name, 1) = "." then
IsValidEmail = false
exit function
end if
next
if InStr(names(1), ".") <= 0 then
IsValidEmail = false
exit function
end if
i = Len(names(1)) - InStrRev(names(1), ".")
if i <> 2 and i <> 3 then
IsValidEmail = false
exit function
end if
if InStr(email, "..") > 0 then
IsValidEmail = false
end if

end function

sql="select * from [User] where UID=" & UID
rs.open sql,conn,1,3

     if rs.eof or err then errstr("非法操作！")

        ''rs("UID")=UID
        ''rs("name")=name
        ''rs("passwd")= passwd
        ''rs("question")=question
        ''rs("answer")=answer
        
        rs("email")=email
        rs("shouji")=shouji
        rs("cname")=cname
       	rs("userDate") =userDate 

'处理性别
		if Request("p1")="gg" then
		rs("Sex") = 1
		else
		rs("Sex") = 2
		end if
		
'头像
		rs("icon") = icon
		
'虚拟形象
		rs("pic") =  Request("p2")
		'rs("zppic") = zppic

'其他信息
       rs("snxiao") =snxiao
       rs("blood") =blood

       rs("xingzuo") =xingzuo
       rs("belief") =belief
       rs("job") =job
       rs("marital") =marital
       rs("education") =education
       rs("college") =college

	   rs("minzu") = minzu
	   rs("jiguan") =jiguan
	   rs("shengao") =shengao
	   rs("tizhong") =tizhong
	   
	   ''rs("id0") = id0
	   ''rs("id1") = id1
	   ''rs("id2") = id2
	   ''rs("id3") = id3
	   ''rs("id4") = id4
	   ''rs("name0") = name0
	   ''rs("name1") = name1
	   ''rs("name2") = name2
	   ''rs("name3") = name3
	   ''rs("name4") = name4

       ''rs("dizhi") = dizhi
       rs("zip") = zip
       rs("phone") = phone
       
       rs("oicq") = oicq
       rs("UC") = UC
       rs("icq") = icq
       rs("MSN") =MSN
       rs("www") =www
       rs("zhengjian") =zhengjian
       rs("jianjie") =jianjie
       rs("qianming") =qianming
       rs("character") =character
       

      ' rs("") =Request("")
       rs("ip") =Request.ServerVariables("REMOTE_ADDR")
       rs("CreateDate") =Date()
       rs("userDVD") =userDVD
       'rs("userVCD")=1

	   rs.Update
	   rs.close

Call openbbsconn
sql="select * from [User] where UID=" & UID
rs.open sql,bbsConn,1,3

		rs("usermail")=email

        rs("realname")=cname
        rs("birthday")=userDate
        rs("userface")="/pic/faces/"& Request("icon") &".gif"
        
        if Request("p1")="gg" then
        rs("sex")="male"
        else 
        rs("sex")="female"
        end if
        
        rs("country")=name1
        rs("province")=name2
        rs("city")=name3
        rs("blood")=blood
        
        rs("character")=character
        
        rs("belief")=belief
        rs("college")=college
        rs("marital")=marital
        
        rs("education")=education
        
        rs("personal")=jianjie
        rs("sign")=qianming
        rs("occupation")=job
        
        rs("userhome")=www
        if icq<>empty then rs("icq")=icq
        if oicq<>empty then rs("userqq")=oicq
        rs("landtime")=now()
        
        
   
rs.update
rs.close



 Call wenti("基本档案修改成功！")
'修改档案结束
end if


if UN<>""then
	sql="select * from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
	UID=rs("uid")
end if
%>
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>修改档案</TITLE>

<% call top %>

<script language="javascript">
<!--
//表单验证与控制脚本由龙软聊湾开发，欢迎国内同行研究与修改 - 龙软乐天
function submitonce(theform){
if (document.all||document.getElementById){
//screen thru every element in the form, and hunt down "submit" and "reset"
for (i=0;i<theform.length;i++){
var tempobj=theform.elements[i]
if(tempobj.type.toLowerCase()=="submit"||tempobj.type.toLowerCase()=="reset")
tempobj.disabled=true}
}
}


function isMail(address)
{
if (address=="") return false
if (address.indexOf("@")==-1||address.indexOf("@")==0||address.indexOf("@")==address.length-1) return false
if (address.indexOf("@")!=address.lastIndexOf("@")) return false
return true
}

function isok(theform)
{


 if (theform.adminid.value.length!=4)
  {
    alert("请正确填写验证码！");
    theform.adminid.focus();
    return (false);
  } 
 if (theform.cname.value=="")
  {
    alert("真实姓名一定要填写！");
    theform.cname.focus();
    return (false);
  } 
 if (theform.userDate.value=="")
  {
    alert("生日还是要填写的！");
    theform.userDate.focus();
    return (false);
  } 
  
if (theform.email.value == "")
  {
    alert("您必须输入您的E_Mail地址.");
    theform.email.focus();
    return (false);
  }
if (theform.email.value.length < 5)
  {
    alert("这是你的E_Mail地址？？");
    theform.email.focus();
    return (false);
  }

if (theform.email.value.length > 40)
  {
    alert("这不是你的E_Mail.");
    theform.email.focus();
    return (false);
  }
if (!((theform.email.value=="")||isMail(theform.email.value)))
		{
		alert("请填写合法的email地址！")
		theform.email.select()
		theform.email.focus()
		return false
		}
		

 if (theform.zhengjian.value=="")
  {
    alert("证件很重要！一定要填写！");
    theform.zhengjian.focus();
    return (false);
  } 

 if (theform.jianjie.value.length>220)
  {
    alert("简介最多写220字！太多就成论文拉！");
    theform.jianjie.focus();
    return (false);
  } 
  
 if (theform.qianming.value.length>220)
  {
    alert("签名最多写220字！");
    theform.qianming.focus();
    return (false);
  } 
  

submitonce(theform)
return (true);
}
-->
</script>
<script>function New(para_URL){var URL=new String(para_URL);window.open(URL,'','resizable,scrollbars')}
</script>
<script>function showimage(){document.images.tus.src="../pic/face/"+document.form.p1.options[document.form.p1.selectedIndex].value+""+document.form.p2.options[document.form.p2.selectedIndex].value+".gif";}</script>
<script src=../inc/birthday.js></script>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="444">
    <tr>
      <td width="645" height="10"></td>
    </tr>
    <tr>
      <td width="645" height="430">
      <table cellSpacing="0" cellPadding="0" width="456" border="0" style="border-collapse: collapse" bordercolor="#111111">
        <tr>
          <td align="left" height="26" width="371"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font color="#FF0000">修改个人</font><font class="titletext" color="#ff0000">挡案 </font></b></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="1" width="371"></td>
        </tr>
        <tr>
          <td height="6" width="371"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="464" border="0" height="73">
        <tr>
          <td vAlign="top" width="377" height="348">
          <p>
           
          
<form method="POST" name="form" action="vip_dangan.asp" onsubmit="return isok(this)" language="JavaScript">
    <DIV align=center> 
     <CENTER>
      <table width="538" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="544"> 
            <table width="546" border="0" cellspacing="1" cellpadding="0" height="427">
              <tr> 
                <td colspan="2" class="titletext" width="564" height="5"></td>
              </tr>
              <tr> 
                <td valign="top" height="420" width="566" align="right"> 
                
                  <table border=0 width="556" height="1351">
                    <tbody>
                      <tr> 
                        <td width="107" height=24 align=right> 帐户： </td>
                        <td width="219" height=24 align=left> 
                        <font color="#FF0000" size="2"><b> <%=un%> </b></font>

                        </td>  
                        <td height="24" width="216">&nbsp;<font color="#FF0000">您的帐户！</font></td>
                      </tr>
                      <tr>
                        <td width="107" height=19 align=right> 验证码：</td>
                        <td width="219" height=19 align=left> 
                            
            <input type="text" name="adminid" size="6" maxLength=4 >
<iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
&nbsp;</td>  
                        <td height="19" width="216">&nbsp;<a target="I2" href="javascript:history.go(0)">超过20分钟请点击
                        得到新验证码</a></td>
                      </tr>
                      <tr>
                        <td width="107" height=24 align=right> E-Mail：</td>
                        <td width="435" height=24 align=left colspan="2"> 
                            
                        <input name="email" type="text" class=put size="36" maxlength="40" value="<%=rs("email")%>"><font color="#FF0000"> 
                        * 
                        </font></td>  
                        </tr>
						<tr>
                        <td width="107" height=27 align=right> 手机：</td>
                        <td width="435" height=27 align=left colspan="2"> 
                            
                        <input name="shouji" type="text" class=put size="23" maxlength="13" value="<%=rs("shouji")%>"> 
                        可不填[<font color="#808080">保密项目</font>]</td>  
                        </tr>
                      <tr>
              <td width="107" align="right" height="20">真实姓名：</td>
              <td width="219" height="20">
                    <input type="text" name="cname" size="20" maxLength=20 value="<%=rs("cname")%>"><font color="#FF0000">*</font></td>
              <td width="216" height="20">　</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">性别：</td>
              <td width="219" height="20">
          <select name="p1" size="1" onChange="showimage()" class="input1" tabindex="2">
          <option value="gg" <%if rs("sex")=1 then response.write " selected"%>>男士
          <option value="mm" <%if rs("sex")=2 then response.write " selected"%>>女士</option>
          </select><font color=#FF0000>*</font></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                出生日期：</td>
              <td width="439" height="20" colspan="2">
              &nbsp;请正确填写,收朋友的礼物:)
              <input onfocus="show_cele_date(userDate,'','',userDate)" value="<%=rs("userDate")%>" name="userDate" size="14"> 
              <font color="#FF0000">* </font>&nbsp;</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="26">虚拟形象：</td>
              <td width="219" height="26">
			                        
			<select name=p2 size=1 onChange="showimage()" class="input1" tabindex="3">
            <% for iok=1 to 174 %>  
            <option value='<%=iok%>' <%if rs("pic")=iok then response.write "selected"%>>形象 <%=iok%></option>
            <%next%>
          </select><font color=#FF0000>*</font></td>
              <td width="216" height="26">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">查看所有虚拟形象</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="107">　</td>
              <td width="219" height="107">
                  <img src="../pic/face/<%if rs("sex")=1 then Response.Write "gg"%><%if rs("sex")=2 then Response.Write "mm"%><%=rs("pic")%>.gif" name="tus" alt="选个酷点的形象吧" border="0"></td>
              <td width="216" height="107">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">查看所有虚拟形象</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="37">头像：</td>
              <td width="219" height="37">
                            
&nbsp;<img src="../pic/faces/<%=rs("icon")%>.gif" name="tusc">&nbsp;&nbsp;
<script>function show(){document.images.tusc.src="../pic/faces/"+document.form.icon.options[document.form.icon.selectedIndex].value+".gif";}</script>
<select name=icon size=1 onChange="show()">
<option value="2">随机</option>
            <% for io=1 to 84 %>  
            <option value='<%=right("0" & io,2)%>' <%if rs("icon")=right("0" & io,2) then response.write "selected"%>><%=right("0" & io,2)%></option>
            <%next%>
</select>
			</td>
            <td width="216" height="37">&nbsp;<a href="JavaScript:New('face.htm')">查看所有的头像列表</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">生肖：</td>
              <td width="219" height="20">
                            
              <select name="snxiao">
              <option selected value="<%=rs("snxiao")%>"><%=rs("snxiao")%></option>
                <option value="鼠">鼠</option>
                <option value="牛">牛</option>
                <option value="虎">虎</option>
                <option value="兔">兔</option>
                <option value="龙">龙</option>
                <option value="蛇">蛇</option>
                <option value="马">马</option>
                <option value="羊">羊</option>
                <option value="猴">猴</option>
                <option value="鸡">鸡</option>
                <option value="狗">狗</option>
                <option value="猪">猪</option>
              </select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">血型：</td>
              <td width="219" height="20">
                            
              <select name="blood">
              <option selected value="<%=rs("blood")%>"><%=rs("blood")%></option>
                <option value="A型">A型</option>
                <option value="B型">B型</option>
                <option value="AB型">AB型</option>
                <option value="O型">O型</option>
              </select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">星座：</td>
              <td width="439" height="20" colspan="2">
                            
              <select name="xingzuo">
               <option selected value="<%=rs("xingzuo")%>"><%=rs("xingzuo")%></option>
                <option value="白羊座">白羊座（3月19日-4月18日）</option>
                <option value="金牛座">金牛座（4月19日-5月18日）</option>
                <option value="双子座">双子座（5月19日-6月18日）</option>
                <option value="巨蟹座">巨蟹座（6月19日-7月18日）</option>
                <option value="狮子座">狮子座（7月19日-8月18日）</option>
                <option value="处女座">处女座（8月19日-9月18日）</option>
                <option value="天秤座">天秤座（9月19日-10月18日）</option>
                <option value="天蝎座">天蝎座（10月19日-11月18日）</option>
                <option value="人马座">人马座（11月19日-12月18日）</option>
                <option value="山羊座">山羊座（12月19日-1月16日）</option>
                <option value="水瓶座">水瓶座（1月17日-2月15日）</option>
                <option value="双鱼座">双鱼座（2月16日-3月18日）</option>
              </select>（不知道？！看生日时间拉！）</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">信仰：</td>
              <td width="219" height="20">
                            
<select size=1 name=belief>
 <option selected value="<%=rs("belief")%>"><%=rs("belief")%></option>
<option value=佛教>佛教</option>
<option
value=道教>道教</option>
<option value=基督教>基督教</option>
<option
value=天主教>天主教</option>
<option value=回教>回教</option>
<option
value=无神论者>无神论者</option>
<option value=共产主义者>共产主义者</option>
<option
value=其他>其他</option>
</select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">职业：</td>
              <td width="439" height="20" colspan="2">
                            
                    <select size="1" name="job" >
                      <option selected value="<%=rs("job")%>"><%=rs("job")%></option>
                      <OPTION>-----------经营/管理类----------- 
                      <OPTION value=(正/副)总裁/总经理/CEO>(正/副)总裁/总经理/CEO 
                      <OPTION value=企业策划 >企业策划 
                      <OPTION value=投资管理 >投资管理 
                      <OPTION value=企管部经理/企业管理顾问 >企管部经理/企业管理顾问 
                      <OPTION value=企业管理人员>企业管理人员 
                      <OPTION value=质管部经理/质量管理顾问>质管部经理/质量管理顾问 
                      <OPTION value=质管人员/质量工程师 >质管人员/质量工程师 
                      <OPTION value=技术经理/项目经理/CTO >技术经理/项目经理/CTO 
                      <OPTION value=信息主管/CIO>信息主管/CIO 
                      <OPTION>--------------财务类-------------- 
                      <OPTION value=财务总监/经理/副经理/主任>财务总监/经理/副经理/主任 
                      <OPTION value=会计师 >会计师 
                      <OPTION value=会计>会计 
                      <OPTION value=出纳/收银 >出纳/收银 
                      <OPTION value=统计 >统计 
                      <OPTION value=审计 >审计 
                      <OPTION>-----------销售/业务类----------- 
                      <OPTION value=销售经理/副经理/主任 >销售经理/副经理/主任 
                      <OPTION value=商务/贸易/国际业务 >商务/贸易/国际业务 
                      <OPTION value=销售工程师>销售工程师 
                      <OPTION value=业务员/业务代表 >业务员/业务代表 
                      <OPTION value=报关 >报关 
                      <OPTION>--------------市场类-------------- 
                      <OPTION value=市场经理/副经理 >市场经理/副经理 
                      <OPTION value=市场/行销策划 >市场/行销策划 
                      <OPTION value=市场调研/业务分析 >市场调研/业务分析 
                      <OPTION value=公关、促销、礼仪 >公关、促销、礼仪 
                      <OPTION>--------------设计类-------------- 
                      <OPTION value=美术/图形设计 >美术/图形设计 
                      <OPTION value=广告设计 >广告设计 
                      <OPTION value=文案策划 >文案策划 
                      <OPTION value=工业设计/产品设计 >工业设计/产品设计 
                      <OPTION value=多媒体设计与制作 >多媒体设计与制作 
                      <OPTION value=装潢设计 >装潢设计 
                      <OPTION value=工艺品设计>工艺品设计 
                      <OPTION value=纺织服装设计>纺织服装设计 
                      <OPTION value=家具/珠宝设计 >家具/珠宝设计 
                      <OPTION value=电脑绘图人员>电脑绘图人员 
                      <OPTION>------------客户服务类------------ 
                      <OPTION value=客服部经理/副经理 >客服部经理/副经理 
                      <OPTION value=技术支持/客户培训>技术支持/客户培训 
                      <OPTION value=客服/热线咨询>客服/热线咨询 
                      <OPTION value=前台/接待 >前台/接待 
                      <OPTION>-----------行政/人事类----------- 
                      <OPTION value=行政/人力资源经理>行政/人力资源经理 
                      <OPTION value=行政/人事人员>行政/人事人员 
                      <OPTION value=员工培训人员>员工培训人员 
                      <OPTION value=企业文化/工会>企业文化/工会 
                      <OPTION>--------------文职类-------------- 
                      <OPTION value=英语翻译 >英语翻译 
                      <OPTION value=其它外语翻译 >其它外语翻译 
                      <OPTION value=图书情报/资料管理 >图书情报/资料管理 
                      <OPTION value=技术资料编写>技术资料编写 
                      <OPTION value=文秘/高级文员 >文秘/高级文员 
                      <OPTION value=文员/电脑打字员/操作员 >文员/电脑打字员/操作员 
                      <OPTION>-----------工业/工厂类----------- 
                      <OPTION value=厂长/副厂长 >厂长/副厂长 
                      <OPTION value=生产管理>生产管理 
                      <OPTION value=工程管理>工程管理 
                      <OPTION value=品质管理 >品质管理 
                      <OPTION value=物料管理 >物料管理 
                      <OPTION value=设备管理 >设备管理 
                      <OPTION value=采购管理 >采购管理 
                      <OPTION value=仓库管理 >仓库管理 
                      <OPTION value=计划员>计划员 
                      <OPTION value=化验工作>化验工作 
                      <OPTION value=技工>技工 
                      <OPTION value=普工 >普工 
                      <OPTION>-----------后勤/服务类----------- 
                      <OPTION value=司机>司机 
                      <OPTION value=保安/厨师/清洁工 >保安/厨师/清洁工 
                      <OPTION value=服务员>服务员 
                      <OPTION value=营业员>营业员 
                      <OPTION>----------计算机专业人员---------- 
                      <OPTION value=系统分析员 >系统分析员 
                      <OPTION value=软件（测试）工程师>软件（测试）工程师 
                      <OPTION value=硬件（测试）工程师 >硬件（测试）工程师 
                      <OPTION value=系统工程师/网管 >系统工程师/网管 
                      <OPTION value=网站策划/信息编辑 >网站策划/信息编辑 
                      <OPTION value=数据库开发/WEB应用程序设计 >数据库开发/WEB应用程序设计                      
                      <OPTION value=网页设计/电脑美工 >网页设计/电脑美工 
                      <OPTION value=Internet/WEB/电子商务开发 >Internet/WEB/电子商务开发 
                      <OPTION>-------电子/通讯类专业人员------- 
                      <OPTION value=电子工程师 >电子工程师 
                      <OPTION value=电子元器件工程师 >电子元器件工程师 
                      <OPTION value=自动控制 >自动控制 
                      <OPTION value=智能大厦/综合布线/弱电>智能大厦/综合布线/弱电 
                      <OPTION value=仪器仪表/计量 >仪器仪表/计量 
                      <OPTION value=电气 >电气 
                      <OPTION value=电力 >电力 
                      <OPTION value=通讯工程师 >通讯工程师 
                      <OPTION value=单片机/DSP/底层软件开发>单片机/DSP/底层软件开发
                      <OPTION value=OA设备维修工程师 >OA设备维修工程师
                      <OPTION>-----------机械专业人员-----------
                      <OPTION value=机械工程师>机械工程师 
                      <OPTION value=模具工程师>模具工程师 
                      <OPTION value=机电工程师>机电工程师 
                      <OPTION value=各种车辆/飞行器设计>各种车辆/飞行器设计 
                      <OPTION>-------房地产/建筑专业人员------- 
                      <OPTION value=房地产开发/策划>房地产开发/策划 
                      <OPTION value=房地产评估/交易 >房地产评估/交易 
                      <OPTION value=建筑/结构工程师>建筑/结构工程师 
                      <OPTION value=工程监理师 >工程监理师 
                      <OPTION value=工程预决算>工程预决算 
                      <OPTION value=给排水/水电工程师 >给排水/水电工程师 
                      <OPTION value=制冷暖通>制冷暖通 
                      <OPTION value=物业管理 >物业管理 
                      <OPTION>--------金融/经济专业人员-------- 
                      <OPTION value=金融业>金融业 
                      <OPTION value=证券期货 >证券期货 
                      <OPTION value=保险业 >保险业 
                      <OPTION value=税务人员 >税务人员 
                      <OPTION value=其它金融/经济人员 >其它金融/经济人员 
                      <OPTION>------文教体卫/法律专业人员------ 
                      <OPTION value=新闻/出版>新闻/出版 
                      <OPTION value=广播电视/文化艺术 >广播电视/文化艺术 
                      <OPTION value=高等教育 >高等教育 
                      <OPTION value=中等教育>中等教育 
                      <OPTION value=小学/幼儿教育 >小学/幼儿教育 
                      <OPTION value=职业教育/培训/家教>职业教育/培训/家教 
                      <OPTION value=体育类 >体育类 
                      <OPTION value=卫生医疗>卫生医疗 
                      <OPTION value=律师/法律顾问>律师/法律顾问 
                      <OPTION>----------服务业专业人员---------- 
                      <OPTION value=旅游/导游 >旅游/导游 
                      <OPTION value=酒店/餐饮 >酒店/餐饮 
                      <OPTION value=寻呼/声讯>寻呼/声讯 
                      <OPTION value=其它服务行业>其它服务行业 
                      <OPTION>----------其它专业人员 ---------- 
                      <OPTION value=动力/能源>动力/能源 
                      <OPTION value=声光学技术>声光学技术 
                      <OPTION value=化工技术>化工技术 
                      <OPTION value=生物制药 >生物制药 
                      <OPTION value=测绘技术 >测绘技术 
                      <OPTION value=道桥技术>道桥技术 
                      <OPTION value=环境/城市规划 >环境/城市规划 
                      <OPTION value=地质/矿产>地质/矿产 
                      <OPTION value=粮食/食品/糖酒>粮食/食品/糖酒 
                      <OPTION value=纺织服装技术>纺织服装技术 
                      <OPTION value=包装/印刷/造纸>包装/印刷/造纸 
                      <OPTION value=冶金/喷涂/金属材料 >冶金/喷涂/金属材料 
                      <OPTION value=安全消防>安全消防 
                      <OPTION value=农林渔牧/园林/园艺>农林渔牧/园林/园艺 
                      <OPTION value=交通运输（海陆空）>交通运输（海陆空） 
                    </select></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                婚姻状况：</td>
              <td width="219" height="20">
                            
<select size=1 name=marital>
<option selected value="<%=rs("marital")%>"><%=rs("marital")%></option>
<option value=未婚>未婚</option>
<option
value=已婚>已婚</option>
<option value=离异>离异</option>
<option
value=丧偶>丧偶</option>
</select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                最高学历：</td>
              <td width="219" height="20">
                            
<select size=1 name=education>
<option selected value="<%=rs("education")%>"><%=rs("education")%></option>
<option value=小学>小学</option>
<option
value=初中>初中</option>
<option value=高中>高中</option>
<option
value=大学>大学</option>
<option value=硕士>硕士</option>
<option
value=博士>博士</option>
</select></td>
              <td width="216" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="15">
                毕业院校：</td>
              <td width="219" height="15">
                            
<input type="text" name="college" size="18" maxlength="35" value="<%=rs("college")%>"></td>
              <td width="216" height="15"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="8">
                民族：</td>
              <td width="219" height="8">
                            
<input type="text" name="minzu" size="18" maxlength="20" value="<%=rs("minzu")%>"></td>
              <td width="216" height="8"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">
                籍贯：</td>
              <td width="219" height="9">
                            
<input type="text" name="jiguan" size="18" value="<%=rs("jiguan")%>"></td>
              <td width="216" height="9"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="5">
                身高：</td>
              <td width="219" height="5">
                            
<select name=shengao size=1>
<option selected value="<%=rs("shengao")%>"><%=rs("shengao")%> CM</option>
            <% for io=145 to 210 %>  
            <option value='<%=io%>'><%=io%> CM</option>
            <%next%>
</select></td>
              <td width="216" height="5"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="6">
                体重：</td>
              <td width="219" height="6">
                            
<select name=tizhong size=1 >
<option selected value="<%=rs("tizhong")%>"><%=rs("tizhong")%> kg</option>
            <% for io=40 to 125 %>  
            <option value='<%=io%>'><%=io%> KG</option>
            <%next%>
</select></td>
              <td width="216" height="6"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">邮政编码：</td>
              <td width="219" height="20">
                            
            <input type="text" name="zip" size="6" size="6" maxLength=6 value="<%=rs("zip")%>" ><font color="#000080">#</font></td>
              <td width="216" height="20">填写邮政编码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">联系电话：</td>
              <td width="219" height="19">
                            
                  <input type="text" name="phone" size="19" maxLength=40 value="<%=rs("phone")%>" ><font color="#000080">#</font></td>
              <td width="216" height="19">要写区号哦如：010-62156424 </td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">QQ号码：</td>
              <td width="219" height="9">
                            
            <input type="text" name="oicq" size="9" size="6" maxLength=9 value="<%=rs("oicq")%>" ></td>
              <td width="216" height="9">腾寻QQ号码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="7">UC号码：</td>
              <td width="219" height="7">
                            
            <input type="text" name="UC" size="9" size="6" maxLength=9 value="<%=rs("uc")%>" ></td>
              <td width="216" height="7">新浪UC</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">ICQ号码：</td>
              <td width="219" height="19">
                            
            <input type="text" name="icq" size="9" size="6" maxLength=12 class="formb1" value="<%=rs("icq")%>"></td>
              <td width="216" height="19">ICQ号码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">
                MSN号码：</td>
              <td width="219" height="19">
                            
            <input type="text" name="MSN" size="9" size="6" maxLength=35 class="formb1" value="<%=rs("msn")%>"></td>
              <td width="216" height="19">MSN号码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">个人主页：</td>
              <td width="219" height="19">
                            
                    <input type="text" name="www" size="26" size="6" maxLength=35 class="formb1" value="<%=rs("www")%>"></td>
              <td width="216" height="19">没有可以不添，注册后就有了！</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="36">有效证件号码：</td>
              <td width="219" height="36">
                            
                    <input type="text" name="zhengjian" size="28" maxLength=28 class="formb1" value="<%=rs("zhengjian")%>"><font color="#FF0000">*</font><font color="#000080">#</font></td>
              <td width="216" height="36">如身份证、军人证、学生证 
                （找回帐号<span lang="zh-cn">密码</span>的最后方法！）<span lang="zh-cn"><font color="#E16906">[本信息不公开]</font></span></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">个人介绍：</td>
              <td width="439" height="113" colspan="2">
                            
                   <textarea rows="8" name="jianjie" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"><%=rs("jianjie")%></textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">
                签名档：</td>
              <td width="439" height="113" colspan="2">
                            
                    <textarea rows="8" name="qianming" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"><%=rs("qianming")%></textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="109">性　格：</td>
              <td width="439" height="109" colspan="2">
                            
<input type="checkbox" value=" 成熟稳重" name="character" <%if InStr(rs("character"),"成熟稳重")>0 then response.write " checked"%>> 成熟稳重&nbsp;&nbsp;
<input type="checkbox" value=" 幼稚调皮" name="character" <%if InStr(rs("character"),"幼稚调皮")>0 then response.write " checked"%>> 幼稚调皮　
<input type="checkbox" value=" 温柔体贴" name="character" <%if InStr(rs("character"),"温柔体贴")>0 then response.write " checked"%>> 温柔体贴
<input type="checkbox" value=" 活泼可爱" name="character" <%if InStr(rs("character"),"活泼可爱")>0 then response.write " checked"%>> 活泼可爱
<input type="checkbox" value=" 脾气暴躁" name="character" <%if InStr(rs("character"),"脾气暴躁")>0 then response.write " checked"%>> 脾气暴躁<br>
<input type="checkbox" value=" 内向害羞" name="character" <%if InStr(rs("character"),"内向害羞")>0 then response.write " checked"%>> 内向害羞　
<input type="checkbox" value=" 外向开朗" name="character" <%if InStr(rs("character"),"外向开朗")>0 then response.write " checked"%>> 外向开朗　
<input type="checkbox" value=" 心地善良" name="character" <%if InStr(rs("character"),"心地善良")>0 then response.write " checked"%>> 心地善良
<input type="checkbox" value=" 风趣幽默" name="character" <%if InStr(rs("character"),"风趣幽默")>0 then response.write " checked"%>> 风趣幽默
<input type="checkbox" value=" 慢条斯理" name="character" <%if InStr(rs("character"),"慢条斯理")>0 then response.write " checked"%>> 慢条斯理<br>
<input type="checkbox" value=" 积极进取" name="character" <%if InStr(rs("character"),"积极进取")>0 then response.write " checked"%>> 积极进取　
<input type="checkbox" value=" 郁郁寡欢" name="character" <%if InStr(rs("character"),"郁郁寡欢")>0 then response.write " checked"%>> 郁郁寡欢　
<input type="checkbox" value=" 处事洒脱" name="character" <%if InStr(rs("character"),"处事洒脱")>0 then response.write " checked"%>> 处事洒脱
<input type="checkbox" value=" 圆滑老练" name="character" <%if InStr(rs("character"),"圆滑老练")>0 then response.write " checked"%>> 圆滑老练
<input type="checkbox" value=" 豪放不羁" name="character" <%if InStr(rs("character"),"豪放不羁")>0 then response.write " checked"%>> 豪放不羁<br>
<input type="checkbox" value=" 异想天开" name="character" <%if InStr(rs("character"),"异想天开")>0 then response.write " checked"%>> 异想天开　
<input type="checkbox" value=" 多愁善感" name="character" <%if InStr(rs("character"),"多愁善感")>0 then response.write " checked"%>> 多愁善感　
<input type="checkbox" value=" 淡泊名利" name="character" <%if InStr(rs("character"),"淡泊名利")>0 then response.write " checked"%>> 淡泊名利
<input type="checkbox" value=" 情绪多变" name="character" <%if InStr(rs("character"),"情绪多变")>0 then response.write " checked"%>> 情绪多变
<input type="checkbox" value=" 胆小怕事" name="character" <%if InStr(rs("character"),"胆小怕事")>0 then response.write " checked"%>> 胆小怕事<br>
<input type="checkbox" value=" 循规蹈矩" name="character" <%if InStr(rs("character"),"循规蹈矩")>0 then response.write " checked"%>> 循规蹈矩　
<input type="checkbox" value=" 热心助人" name="character" <%if InStr(rs("character"),"热心助人")>0 then response.write " checked"%>> 热心助人　
<input type="checkbox" value=" 快言快语" name="character" <%if InStr(rs("character"),"快言快语")>0 then response.write " checked"%>> 快言快语
<input type="checkbox" value=" 爱管闲事" name="character" <%if InStr(rs("character"),"爱管闲事")>0 then response.write " checked"%>> 爱管闲事
<input type="checkbox" value=" 追求刺激" name="character" <%if InStr(rs("character"),"追求刺激")>0 then response.write " checked"%>> 追求刺激
                            
              </td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="30">资料公开：</td>
              <td width="439" height="30" colspan="2">
                            
<select name=userDVD><option value="0">允许所有人看</option>
<option value="1">只允许好友看</option>
<option value="2">严禁对任何人公开</option>
</select></td>
                      </tr>
                      <tr>
              <td width="529" height="8" colspan="3"></td>
                      </tr>
                      <tr>
              <td width="529" align="right" height="1" colspan="3" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
              <td width="529" align="right" height="21" colspan="3">
              <p align="center">  
                        <input class=put1 type="submit" value="　确认修改　" name="B1"> </td>
                      </tr>

                    </tbody>
                  </table>
                </td>
                <td width="18" valign="bottom" height="420">　</td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="544">　</td>
        </tr>
      </table>
      </CENTER>
          </DIV>
        </form>
                    
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="377" height="4" align="center">
          　</td>
          </tr>
      </table>
      </td>
    </tr>
    <tr>
      <td width="645" height="1"></td>
    </tr>
          <tr>
          <td background="../images/vip_dot.gif" height="1" width="645"></td>
        </tr>
    <tr>
      <td width="645" height="19">　</td>
    </tr>
  </table>
  </center>
</div>

    <% 
    Call Closedb()
    
    Call endpage() %>