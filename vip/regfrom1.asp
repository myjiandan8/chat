<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--#include file="top.asp"-->

<head>
<style>
<!--
TD			{FONT-SIZE: 12px; COLOR: #000000; WORD-BREAK: break-all; }
.text			{FONT-SIZE: 13px; line-height: 160%;font-family: "宋体"}
.en			{FONT-FAMILY: verdana; FONT-SIZE: 11px; }
-->
</style>
</head>

<%
name=trim(Request("name"))
passwd=trim(Request("passwd"))
passwd_two=trim(Request("passwd_two"))
question=trim(Request("question"))
answer=trim(Request("answer"))
email=trim(Request("email"))
shouji=trim(Request("shouji"))
id0=trim(Request("id0"))
id1=trim(Request("id1"))
id2=trim(Request("id2"))
name2=trim(Request("name2"))

if name="" or passwd="" or question="" or answer="" or email="" or id0="" or id1="" or (id2="" and name2="") then
errstr("请填写完整！")
end if

if passwd<>passwd_two then
errstr("两次密码输入不正确！")
end if

if CheckHtml(name) or CheckHtml(passwd) then
errstr("用户名或者密码有非法字符！")
end if

if not IsValidEmail(Email) then
errstr("非法的电子邮件！")
end if


replace_word="妈妈的,靠,TMD,fuck,bitch,shit,他妈的,性爱,法轮,kao,falundafa,falun,胡锦涛,站长,巡站,布什,江泽民,操你妈,操,三级片,老子,[IMG]/upload/,[IMG],.jpg[/IMG],.gif[/IMG],[color=#,[/color],[,],"  
if InStr(replace_word,name & ",")>0 then
errstr("用户中含有非法字符串")
end if


Call OpenConn()
sql="select name from [User] where name='"& name &"'"
set rs=conn.execute (sql)
if not(rs.eof or err) then
errstr("该用户名已经注册，请再选择一个！")
end if


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

'返回对应的地名
function DM_name(id,lx)

sql="select name" & lx & " from D_" & lx & " where id" & lx & "=" & id
set rs=conn.execute (sql)
DM_name=rs("name" & lx )
rs.close

end function


%>
<LINK href="../images/Style.css" rel=stylesheet>
<TITLE>填写表单－聊湾用户注册</TITLE>

<% call top %>
<script src=../inc/birthday.js></script>
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


function isok(theform)
{


 if (theform.adminid.value.length!=4)
  {
    alert("请正确填写验证码！");
    theform.adminid.focus();
    return (false);
  } 


 if (theform.userDate.value=="")
  {
    alert("生日还是要填写的！");
    theform.userDate.focus();
    return (false);
  } 
  if (theform.cname.value=="")
  {
    alert("人过留名，大名写上来~~！");
    theform.cname.focus();
    return (false);
  } 
  

<% if id1<>1 then %> 

if (theform.name3.value.length<2)
  {
    alert("请填写或选择所在地/市级地区！");
    theform.name3.focus();
    return (false);
  }

if (theform.name4.value.length<2)
  {
    alert("请填写或选择所在市县级地址！");
    theform.name4.focus();
    return (false);
  }
  
if (theform.name3.value=="填写地、市级地区")
  {
    alert("不要应付我们！\n请填写或选择所在地/市级地区！");
    theform.name3.focus();
    return (false);
  }

if (theform.name4.value=="填写市、县级地区")
  {
    alert("不要应付我们！\n请填写或选择所在市县级地址！");
    theform.name4.focus();
    return (false);
  }
  
  
<% else %> 
if (theform.ID3.value=="0")
  {
    alert("请填写或选择所在地/市级地区！");
    theform.ID3.focus();
    return (false);
  }

if (theform.ID4.value=="0")
  {
    alert("请填写或选择所在市县级地址！");
    theform.ID4.focus();
    return (false);
  }

<% end if %> 

 if (theform.dizhi.value=="")
  {
    alert("地址要写！");
    theform.dizhi.focus();
    return (false);
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
          <td align="left" height="26" width="371"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font class="titletext" color="#ff0000">聊湾用户注册表单 </font></b><font class="titletext" color="#ff0000">
          [第三步 个人基本信息]</font></td>
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
           
          
<form method="POST" name="form" action="regsubmit.asp" onsubmit="return isok(this)" language="JavaScript">
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
                        <td width="225" height=24 align=left> 
                        <font color="#FF0000" size="2"><b> <%=name%> </b></font>
                        <input type="hidden" name="name" size="18" maxlength="10" value="<%=name%>"> 
                        <input type="hidden" name="passwd" size="18" maxlength="10" value="<%=passwd%>"> 
                        <input type="hidden" name="question" size="18" maxlength="40" value="<%=question%>">
                        <input type="hidden" name="answer" size="18" maxlength="40"  value="<%=answer%>">
                        <input type="hidden" name="email" maxlength="40" value="<%=email%>">
                        <input type="hidden" name="shouji" maxlength="40" value="<%=shouji%>">
                        <input type="hidden" name="id0" maxlength="40" value="<%=id0%>">
                        <input type="hidden" name="id1" maxlength="40" value="<%=id1%>">
                        <input type="hidden" name="id2" maxlength="40" value="<%=id2%>">
                        <input type="hidden" name="name2" maxlength="40" value="<%=name2%>">

                        </td>  
                        <td height="24" width="210">&nbsp;<font color="#FF0000">恭喜该用户名可以注册！</font></td>
                      </tr>
                      <tr>
                        <td width="107" height=27 align=right> 验证码：</td>
                        <td width="225" height=27 align=left> 
                            
            <input type="text" name="adminid" size="6" maxLength=4 >
<iframe frameborder=0 width=40 height=10  src=../inc/code_s.htm name="I2" align=center scrolling="no"></iframe>
<script>window.open("../inc/code_s.htm","I2")</script>
&nbsp;</td>  
                        <td height="27" width="210">&nbsp;<a target="I2" href="javascript:history.go(0)">超过20分钟请点击
                        得到新验证码</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">真实姓名：</td>
              <td width="225" height="20">
                    <input type="text" name="cname" size="20" maxLength=20><font color="#FF0000">*</font></td>
              <td width="210" height="20">　</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">性别：</td>
              <td width="225" height="20">
          <select name="p1" size="1" onChange="showimage()" class="input1" tabindex="2">
          <option selected value="gg">男士
          <option value="mm">女士</option>
          </select><font color=#FF0000>*</font></td>
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                出生日期：</td>
              <td width="439" height="20" colspan="2">
              &nbsp;请正确填写,收朋友的礼物:)
              <input onfocus="show_cele_date(userDate,'','',userDate)" value="" name="userDate" size="14"> <font color="#FF0000">* </font>&nbsp;</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="26">虚拟形象：</td>
              <td width="225" height="26">
			<select name=p2 size=1 onChange="showimage()" class="input1" tabindex="3">
            <% for iok=1 to 174 %>  
            <option value='<%=iok%>'>形象 <%=iok%></option>
            <%next%>
          </select><font color=#FF0000>*</font></td>
              <td width="210" height="26">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">查看所有虚拟形象</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="107">　</td>
              <td width="225" height="107">
                  <img src="img/gg1.gif" name="tus" alt="选个酷点的想象吧" border="0" width="72" height="116"></td>
              <td width="210" height="107">&nbsp;<a href="JavaScript:New('REG_FACE.ASP')">查看所有虚拟形象</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="37">头像：</td>
              <td width="225" height="37">
                            
&nbsp;<img src="img/regfro1.gif" name="tusc">&nbsp;&nbsp;
<script>function show(){document.images.tusc.src="../pic/faces/"+document.form.icon.options[document.form.icon.selectedIndex].value+".gif";}</script>
<select name=icon size=1 onChange="show()">
<option value="">随机</option>
            <% for io=1 to 84 %>  
            <option value='<%=io%>'><%=io%></option>
            <%next%>
</select>
			</td>
            <td width="210" height="37">&nbsp;<a href="JavaScript:New('face.htm')">查看所有的头像列表</a></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">生肖：</td>
              <td width="225" height="20">
                            
              <select name="snxiao">
              <option></option>
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
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">血型：</td>
              <td width="225" height="20">
                            
              <select name="blood">
              <option></option>
                <option value="A型">A型</option>
                <option value="B型">B型</option>
                <option value="AB型">AB型</option>
                <option value="O型">O型</option>
              </select></td>
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">星座：</td>
              <td width="439" height="20" colspan="2">
                            
              <select name="xingzuo">
               <option></option>
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
              <td width="225" height="20">
                            
<select size=1 name=belief>
<option selected></option>
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
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">职业：</td>
              <td width="439" height="20" colspan="2">
                            
                    <select size="1" name="job" >
                      <OPTION selected></OPTION>
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
              <td width="225" height="20">
                            
<select size=1 name=marital>
<option selected></option>
<option value=未婚>未婚</option>
<option
value=已婚>已婚</option>
<option value=离异>离异</option>
<option
value=丧偶>丧偶</option>
</select></td>
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">
                最高学历：</td>
              <td width="225" height="20">
                            
<select size=1 name=education>
<option selected></option>
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
              <td width="210" height="20"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="15">
                毕业院校：</td>
              <td width="225" height="15">
                            
<input type="text" name="college" size="18" maxlength="35"></td>
              <td width="210" height="15"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="8">
                民族：</td>
              <td width="225" height="8">
                            
<input type="text" name="minzu" size="18" maxlength="20"></td>
              <td width="210" height="8"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">
                籍贯：</td>
              <td width="225" height="9">
                            
<input type="text" name="jiguan" size="18"></td>
              <td width="210" height="9"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="5">
                身高：</td>
              <td width="225" height="5">
                            
<select name=shengao size=1>
<option value=""></option>
            <% for io=145 to 210 %>  
            <option value='<%=io%>'><%=io%> CM</option>
            <%next%>
</select></td>
              <td width="210" height="5"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="6">
                体重：</td>
              <td width="225" height="6">
                            
<select name=tizhong size=1 >
<option value=""></option>
            <% for io=40 to 125 %>  
            <option value='<%=io%>'><%=io%> KG</option>
            <%next%>
</select></td>
              <td width="210" height="6"></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="46" rowspan="2">所在地：</td>
              <td width="439" height="17" colspan="2">
                            
 <b><%=DM_NAME(id0,0)%> &nbsp;<%=DM_NAME(id1,1)%>&nbsp;
 <% if id1=1 then 
	Response.Write DM_NAME(id2,2)
	else
	Response.Write name2
	end if
%>
 
 &nbsp; 
 </b><font color="#808080">[如地址有误请到<a href="#" onClick="history.go(-1)">上一步</a>重选] </font>


              </td>
                      </tr>
                      <tr>
              <td width="439" height="29" colspan="2">


<% if id1<>1 then %>              

<input type="text" name="name3" size="18" value="填写地、市级地区" onFocus="if (value =='填写地、市级地区'){value =''}" onBlur="if (value ==''){value='填写地、市级地区'}" > 
<input type="text" name="name4" size="18" value="填写市、县级地区" onFocus="if (value =='填写市、县级地区'){value =''}" onBlur="if (value ==''){value='填写市、县级地区'}" >
<font color="#6B6D6B">[让在当地华人朋友能找到你]</font>

<% else %>
<script>function SetCity(Select_1,Select_2){calling_list(Select_1.options[Select_1.options.selectedIndex].value, Select_2);return ;}function calling_list(CatID2,subTypeForm ){subTypeForm.length=0;switch ( CatID2 )
{<% 

sql="select * from D_3 where id2="&id2&" order by ID3 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
case "<%=rs("ID3")%>":
<% 
i=-1
sql2="select * from D_4  where ID3="&rs("ID3")&" order by ID4 asc"
set rsr=conn.execute (sql2)
do while not (rsr.eof or err)
i=i+1
%>
subTypeForm.options[<%=i%>]=new Option("<%=rsr("name4")%>","<%=rsr("ID4")%>");
<% rsr.moveNext
  loop
%>
subTypeForm.options[0].selected=true;break;
<% rs.moveNext
  loop
%>
break;	}return -1;}

 </script>

<select name=ID3  onChange="SetCity(this,form.ID4);">
<option value="0">请选择地市级地区</option>
<%
sql="select * from D_3 where id2="&id2&" order by ID3 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
<option value=<%=rs("ID3")%>><%=rs("name3")%></option>
<% rs.moveNext
  loop
%>
</select><select name=ID4><option value="0">请选择市、县级地区</option></select>
<script>if(form.ID3.value!='0'&&form.ID4.value=='0')SetCity(form.ID3,form.ID4);</script>
<% end if %>         
　</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">街道地址：</td>
              <td width="225" height="20">
                            
                  <input type="text" name="dizhi" size="26" maxLength=40><font color="#FF0000">*</font><font color="#000080">#</font></td>
              <td width="210" height="20">
                            
              填写街道和门牌号 <font color="#000080">#为可保密项目</font></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="20">邮政编码：</td>
              <td width="225" height="20">
                            
            <input type="text" name="zip" size="6" size="6" maxLength=6 ><font color="#000080">#</font></td>
              <td width="210" height="20">填写邮政编码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">联系电话：</td>
              <td width="225" height="19">
                            
                  <input type="text" name="phone" size="19" maxLength=40 ><font color="#000080">#</font></td>
              <td width="210" height="19">要写区号哦如：010-62156424 </td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="9">QQ号码：</td>
              <td width="225" height="9">
                            
            <input type="text" name="oicq" size="12" size="6" maxLength=9 ></td>
              <td width="210" height="9">腾寻QQ号码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="7">UC号码：</td>
              <td width="225" height="7">
                            
            <input type="text" name="UC" size="12" size="6" maxLength=9 ></td>
              <td width="210" height="7">新浪UC</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">ICQ号码：</td>
              <td width="225" height="19">
                            
            <input type="text" name="icq" size="12" size="6" maxLength=12 class="formb1"></td>
              <td width="210" height="19">ICQ号码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">
                MSN号码：</td>
              <td width="225" height="19">
                            
            <input type="text" name="MSN" size="28" size="6" maxLength=35 class="formb1"></td>
              <td width="210" height="19">MSN号码</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="19">个人主页：</td>
              <td width="225" height="19">
                            
                    <input type="text" name="www" size="28" size="6" maxLength=35 class="formb1" value="http://"></td>
              <td width="210" height="19">没有可以不添，注册后就有了！</td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="36">有效证件号码：</td>
              <td width="225" height="36">
                            
                    <input type="text" name="zhengjian" size="28" maxLength=28 class="formb1"><font color="#FF0000">*</font><font color="#000080">#</font></td>
              <td width="210" height="36">如身份证、军人证、学生证 
                （找回帐号<span lang="zh-cn">密码</span>的最后方法！）<span lang="zh-cn"><font color="#E16906">[本信息不公开]</font></span></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">个人介绍：</td>
              <td width="439" height="113" colspan="2">
                            
                   <textarea rows="8" name="jianjie" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1">这家伙很懒，什么也没有留下！</textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="113">
                签名档：</td>
              <td width="439" height="113" colspan="2">
                            
                    <textarea rows="8" name="qianming" cols="54" style="border:1px solid #000000; background-color: #FFfFFF; color: #000060; padding-left:4; padding-right:4; padding-top:1; padding-bottom:1"></textarea></td>
                      </tr>
                      <tr>
              <td width="107" align="right" height="109">性　格：</td>
              <td width="439" height="109" colspan="2">
                            
<input type="checkbox" value=" 成熟稳重" name="character"> 成熟稳重&nbsp;&nbsp;
<input type="checkbox" value=" 幼稚调皮" name="character"> 幼稚调皮　
<input type="checkbox" value=" 温柔体贴" name="character"> 温柔体贴
<input type="checkbox" value=" 活泼可爱" name="character"> 活泼可爱
<input type="checkbox" value=" 脾气暴躁" name="character"> 脾气暴躁<br>
<input type="checkbox" value=" 内向害羞" name="character"> 内向害羞　
<input type="checkbox" value=" 外向开朗" name="character"> 外向开朗　
<input type="checkbox" value=" 心地善良" name="character"> 心地善良
<input type="checkbox" value=" 风趣幽默" name="character"> 风趣幽默
<input type="checkbox" value=" 慢条斯理" name="character"> 慢条斯理<br>
<input type="checkbox" value=" 积极进取" name="character"> 积极进取　
<input type="checkbox" value=" 郁郁寡欢" name="character"> 郁郁寡欢　
<input type="checkbox" value=" 处事洒脱" name="character"> 处事洒脱
<input type="checkbox" value=" 圆滑老练" name="character"> 圆滑老练
<input type="checkbox" value=" 豪放不羁" name="character"> 豪放不羁<br>
<input type="checkbox" value=" 异想天开" name="character"> 异想天开　
<input type="checkbox" value=" 多愁善感" name="character"> 多愁善感　
<input type="checkbox" value=" 淡泊名利" name="character"> 淡泊名利
<input type="checkbox" value=" 情绪多变" name="character"> 情绪多变
<input type="checkbox" value=" 胆小怕事" name="character"> 胆小怕事<br>
<input type="checkbox" value=" 循规蹈矩" name="character"> 循规蹈矩　
<input type="checkbox" value=" 热心助人" name="character"> 热心助人　
<input type="checkbox" value=" 快言快语" name="character"> 快言快语
<input type="checkbox" value=" 爱管闲事" name="character"> 爱管闲事
<input type="checkbox" value=" 追求刺激" name="character"> 追求刺激
                            
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
                        <input class=put1 type="button" value="　上一步　" name="B2" onClick="history.go(-1)">&nbsp;&nbsp; 
                        <input class=put1 type="submit" value="　下一步　" name="B1"> </td>
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
    
    call endpage() %>