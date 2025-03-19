<%sub showsoft_body()
opendown
sql="select * from soft where soft_id="&request.querystring("soft_id")
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
%>
<link href="../site_css.css" rel="stylesheet" type="text/css">

<script language="JavaScript" type="text/JavaScript">
<!--
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function YY_checkform() { //v4.66
//copyright (c)1998,2002 Yaromat.com
  var args = YY_checkform.arguments; var myDot=true; var myV=''; var myErr='';var addErr=false;var myReq;
  for (var i=1; i<args.length;i=i+4){
    if (args[i+1].charAt(0)=='#'){myReq=true; args[i+1]=args[i+1].substring(1);}else{myReq=false}
    var myObj = MM_findObj(args[i].replace(/\[\d+\]/ig,""));
    myV=myObj.value;
    if (myObj.type=='text'||myObj.type=='password'||myObj.type=='hidden'){
      if (myReq&&myObj.value.length==0){addErr=true}
      if ((myV.length>0)&&(args[i+2]==1)){ //fromto
        var myMa=args[i+1].split('_');if(isNaN(myV)||myV<myMa[0]/1||myV > myMa[1]/1){addErr=true}
      } else if ((myV.length>0)&&(args[i+2]==2)){
          var rx=new RegExp("^[\\w\.=-]+@[\\w\\.-]+\\.[a-z]{2,4}$");if(!rx.test(myV))addErr=true;
      } else if ((myV.length>0)&&(args[i+2]==3)){ // date
        var myMa=args[i+1].split("#"); var myAt=myV.match(myMa[0]);
        if(myAt){
          var myD=(myAt[myMa[1]])?myAt[myMa[1]]:1; var myM=myAt[myMa[2]]-1; var myY=myAt[myMa[3]];
          var myDate=new Date(myY,myM,myD);
          if(myDate.getFullYear()!=myY||myDate.getDate()!=myD||myDate.getMonth()!=myM){addErr=true};
        }else{addErr=true}
      } else if ((myV.length>0)&&(args[i+2]==4)){ // time
        var myMa=args[i+1].split("#"); var myAt=myV.match(myMa[0]);if(!myAt){addErr=true}
      } else if (myV.length>0&&args[i+2]==5){ // check this 2
            var myObj1 = MM_findObj(args[i+1].replace(/\[\d+\]/ig,""));
            if(myObj1.length)myObj1=myObj1[args[i+1].replace(/(.*\[)|(\].*)/ig,"")];
            if(!myObj1.checked){addErr=true}
      } else if (myV.length>0&&args[i+2]==6){ // the same
            var myObj1 = MM_findObj(args[i+1]);
            if(myV!=myObj1.value){addErr=true}
      }
    } else
    if (!myObj.type&&myObj.length>0&&myObj[0].type=='radio'){
          var myTest = args[i].match(/(.*)\[(\d+)\].*/i);
          var myObj1=(myObj.length>1)?myObj[myTest[2]]:myObj;
      if (args[i+2]==1&&myObj1&&myObj1.checked&&MM_findObj(args[i+1]).value.length/1==0){addErr=true}
      if (args[i+2]==2){
        var myDot=false;
        for(var j=0;j<myObj.length;j++){myDot=myDot||myObj[j].checked}
        if(!myDot){myErr+='* ' +args[i+3]+'\n'}
      }
    } else if (myObj.type=='checkbox'){
      if(args[i+2]==1&&myObj.checked==false){addErr=true}
      if(args[i+2]==2&&myObj.checked&&MM_findObj(args[i+1]).value.length/1==0){addErr=true}
    } else if (myObj.type=='select-one'||myObj.type=='select-multiple'){
      if(args[i+2]==1&&myObj.selectedIndex/1==0){addErr=true}
    }else if (myObj.type=='textarea'){
      if(myV.length<args[i+1]){addErr=true}
    }
    if (addErr){myErr+='* '+args[i+3]+'\n'; addErr=false}
  }
  if (myErr!=''){alert('The required information is incomplete or contains errors:\t\t\t\t\t\n\n'+myErr)}
  document.MM_returnValue = (myErr=='');
}
//-->
</script>
<table width="780" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td colspan="3" height="10"></td>
  </tr>
  <tr> 
    <td width="527" valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td background="images/tablebg.gif"><table width="98%" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>  <form>
                <td class="chinese">
                   <a href="download.asp">下载首页</a>
                      <%
Set rscat = Server.CreateObject("ADODB.Recordset")
sqlcat="SELECT * FROM cat"
rscat.OPEN sqlcat,Conn,1,1
do while not rscat.eof
colparam1=rscat("cat_id")
%> <font color="#ff8040">|</font> <a href="download.asp?cat_id=<%=rscat("cat_id")%>"><%=rscat("cat_name")%></a>
<%
set rsclass=nothing
rscat.movenext
loop
set rscat=nothing
set rstotal=nothing
%>

                  </td></form>
              </tr>
            </table></td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table> 
      <br>
      <table width="98%" border="0" cellspacing="1" bgcolor="#B2B2B2" class="chinese" cellpadding="6" align="center">
        <tr bgcolor="#f3f3f3"> 
          <td height="25" colspan=2 ><b><%=rs("soft_name")%></b></td>
          <td colspan=2 align="right" > 
            <%if rs("soft_demo")<>"" then%>
            <a href="<%=rs("soft_demo")%>" title="<%=rs("soft_demo")%>" target=_blank>演示</a> 
            <%else%>
            没有演示 
            <%end if%>
          </td>
        </tr>
        <tr> 
          <td bgcolor="#f3f3f3" height="25" align="center" width="15%">加入时间</td>
          <td bgcolor="#FFFFFF" width="35%" ><%=rs("soft_joindate")%></td>
          <td bgcolor="#f3f3f3" align="center" width="15%">程序类别</td>
          <td bgcolor="#FFFFFF" width="35%"><%=rs("soft_catname")%> | <%=rs("soft_classname")%></td>
        </tr>
        <tr> 
          <td bgcolor="#f3f3f3" height="25" align="center">文件大小</td>
          <td bgcolor="#FFFFFF" ><%=rs("soft_size")%></td>
          <td bgcolor="#f3f3f3" align="center">授权方式</td>
          <td bgcolor="#FFFFFF"><%=rs("soft_mode")%></td>
        </tr>
        <tr> 
          <td bgcolor="#f3f3f3" height="25" align="center">应用平台</td>
          <td bgcolor="#FFFFFF"><%=rs("soft_roof")%></td>
          <td bgcolor="#f3f3f3" align="center">推荐程度</td>
          <td bgcolor="#FFFFFF"><img src="images/<%=rs("soft_commend")%>stars.gif" width=55 height=12 align="absmiddle"></td>
        </tr>
        <tr> 
          <td bgcolor="#f3f3f3" height="25" align="center">程序主页</td>
          <td bgcolor="#FFFFFF" > 
            <%if rs("soft_home")<>"" then%>
            <a href="<%=rs("soft_home")%>" title="<%=rs("soft_home")%>" target="_blank">Home 
            Page</a> 
            <%else%>
            Home Page 
            <%end if%>
          </td>
          <td bgcolor="#f3f3f3" align="center">下载/浏览</td>
          <td bgcolor="#FFFFFF" ><%=rs("soft_dcount")%>/<%=rs("soft_rcount")%></td>
        </tr>
        <tr> 
          <td bgcolor="#f3f3f3" height="25" align="center">下载地址</td>
          <td colspan=3 bgcolor="#FFFFFF"> <a href="opensoft.asp?soft_id=<%=rs("soft_id")%>&url=1" target="models">下载1</a>  
            <%if rs("soft_url2")<>"" then%>
            <a href="opensoft.asp?soft_id=<%=rs("soft_id")%>&url=2" target="models">下载2 </a>  
            <%end if%>
            <%if rs("soft_url3")<>"" then%>
            <a href="opensoft.asp?soft_id=<%=rs("soft_id")%>&url=3" target="models">下载3 </a> 
            <%end if%>
            <%if rs("soft_url4")<>"" then%>
            <a href="opensoft.asp?soft_id=<%=rs("soft_id")%>&url=4" target="models">下载4 </a> 
            <%end if%>
          </td>
        </tr>
        <tr> 
          <td width=100% colspan=4 bgcolor=#FFFFFF style='table-layout: fixed; word-break: break-all; border-bottom-style: solid; border-bottom-color: #FFFFFF'> 
            简介： 
            <%if rs("soft_showpic")<>"" then%>
            <a href="<%=rs("soft_showpic")%>" target=_blank><img src='images/img.gif' title='点击查看图片' border=0>点击查看图片</a> 
            <%end if%>
            <font color="#FF0000"><br>
            注：本站已采用防盗链技术,不能使用下载工具和右键另存为。建议用IE直接点击下载即可! 出现下载不了的原因一般如下：<br>
            1.你可能是通过其它站点的链接页面过来的<br>
            2.你没有按正常步骤进行下载<br>
            3.你的链接没有通过程序的审核 </font></td>
        </tr>
        <tr> 
          <td width=100% colspan=4 bgcolor=#FFFFFF style='table-layout: fixed; word-break: break-all; text-indent: 40; border-top-style: solid; border-top-color: #FFFFFF'> <span class="line">
            <%=ubb2html(formatStr(autourl(rs("soft_desc"))), true, true)%> </span></td>
        </tr>
        <%
dim totalremark,Currentpage,totalpages,i
sql5="select * from remark where soft_id="&rs("soft_id")
set rs5=server.createobject("adodb.recordset")
rs5.open sql5,conn,1,1
%>
        <tr bgcolor="#f3f3f3"> 
          <td colspan="4"><b>网友评论</b> [<%=rs5.recordcount%>条评论]</td>
        </tr>
        <%
if not rs5.eof then
rs5.movefirst
rs5.pagesize=remarkperpage
if trim(request("page"))<>"" then
   currentpage=clng(request("page"))
   if currentpage>rs5.pagecount then
      currentpage=rs5.pagecount
   end if
else
   currentpage=1
end if
   totalremark=rs5.recordcount
   if currentpage<>1 then
       if (currentpage-1)*remarkperpage<totalremark then
	       rs5.move(currentpage-1)*remarkperpage
		   dim bookmark
		   bookmark=rs5.bookmark
	   end if
   end if
   if (totalremark mod remarkperpage)=0 then
      totalpages=totalremark\remarkperpage
   else
      totalpages=totalremark\remarkperpage+1
   end if
   i=0
do while not rs5.eof and i<remarkperpage%>
        <tr> 
          <td colspan="4" bgcolor="#FFFFFF"><span >&gt;&gt;</span> 
            <%=rs5("remarker")%> 发表于<span ><%=rs5("remark_date")%><br>
            ---------------------------------------------------------------<br>
            </span> <font color="#9F9F9F"><%=ubb2html(formatStr(autourl(rs5("remark"))), true, true)%></font> </td>
        </tr>
        <%
i=i+1
rs5.movenext
loop
else
if rs5.eof and rs5.bof then
%>
        <tr bgcolor="#ffffff"> 
          <td colspan="4">暂时还没有网友发表评论。</td>
        </tr>
        <%end if
end if%>
        <tr bgcolor="#ffffff" align="right"> 
          <td colspan="4" >Page <%=currentpage%> of <%=totalpages%>,<%=totalremark%> records, 
            <%
i=1
for i=1 to totalpages
if i=currentpage then
%>
            <%=i%> 
            <%else%>
            <a href="showsoft.asp?soft_id=<%=request.querystring("soft_id")%>&page=<%=i%>"><%=i%></a> 
            <%end if
next%>
          </td>
        </tr>
      </table>
      <table cellspacing=1 cellpadding=0 width="100%" align=center border=0>
        <tr> 
          <td width="100%" height="5"></td>
        </tr>
      </table>
      <table width="98%" cellspacing="1" align="center" cellpadding="6" class="chinese">
        <form name="addremark" method="POST" action="<%=MM_editAction%>">
          <tr> 
            <td bgcolor="#f3f3f3" colspan="2">发表评论：</td>
          </tr>
          <tr> 
            <td height="13" width="17%">您的称呼-</td>
            <td height="13" width="83%"> <input type="text" name="remarker" class="input" size="30" maxlength="30">
              最多30个字符</td>
          </tr>
          <tr> 
            <td width="17%" valign="top">您的意见-<br> 
              <br> </td>
            <td width="83%"> <textarea name="remark" cols="60" rows="6" ></textarea>
              <br>
              最多225字符 </td>
          </tr>
          <tr bgcolor="#f3f3f3"> 
            <td colspan="2"> <div align="center"> 
                <input type="submit" name="Submit2" value="确定发表" class="input" onClick="YY_checkform('addremark','remarker','#q','0','称呼必须填写！','remark','1','1','评论内容必须填写！');return document.MM_returnValue">
                <input type="reset" name="reset" value="取消重写" class="input">
                <input type="hidden" name="soft_id" value="<%=request.querystring("soft_id")%>">
              </div></td>
          </tr>
          <input type="hidden" name="MM_insert" value="true">
        </form>
      </table> <br>
    </td>
    <td width="1" background="images/dotlinev.gif"></td>
    <td width="227" align="center" valign="top"><table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01s.gif"><br>
            :::<strong>软件搜索</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
              <form name="form1" method="post" action="">
                <tr> 
                  <td align="center" class="chinese"> <select name="select" class="input">
                      <option value="soft_name" selected>　软件名称　</option>
                      <option value="soft_desc">软件描述</option>
                    </select> <br><input name="keyword2" type="text" class="input" size="14" maxlength="50"> 
                    <br> <input type="submit" name="Submit22" value="搜索" class="input"> 
                  </td>
                </tr>
              </form>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table> 
      <%
sql1="SELECT top " &topsoftnum& " soft_dcount,soft_rcount,soft_id,soft_name,soft_joindate FROM soft  ORDER BY soft_dcount DESC"
sql2="SELECT top " &newsoft& " soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft order by soft_joindate DESC"
set rs1=server.createobject("adodb.recordset")
rs1.open sql1,conn,1,1
set rs2=server.createobject("adodb.recordset")
rs2.open sql2,conn,1,1
if request.querystring("class_id")<>"" or request.querystring("cat_id")<>"" or request.querystring("soft_id")<>"" then
if request.querystring("class_id")="" and request.querystring("cat_id")<>"" then
sql3="SELECT top 10 soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft WHERE soft_classid= " &request.querystring("cat_id")& " order by soft_dcount DESC"
elseif request.querystring("class_id")<>"" then
sql3="SELECT top 10 soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft WHERE soft_classid= " &request.querystring("class_id")& " order by soft_dcount DESC"
elseif request.querystring("soft_id")<>"" then
sql3="SELECT top 10 soft_id,soft_name,soft_joindate,soft_dcount,soft_rcount FROM soft WHERE soft_classid= " &rs("soft_classid")& " order by soft_dcount DESC"
end if
set rs3=server.createobject("adodb.recordset")
rs3.open sql3,conn,1,1
%>
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01d.gif"><br>
            :::本类下载Top 10:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="86%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <%do while not rs3.eof%>
                    <tr> 
                      <td class="chinese"><a href="showsoft.asp?soft_id=<%=rs3("soft_id")%>" target="_blank"><%=rs3("soft_name")%></a>&nbsp;&nbsp;<font color="#66CC33"><%=rs3("soft_dcount")%></font>/<font color="#66CC33"><%=rs3("soft_rcount")%></font></td>
                    </tr>
                    <%rs3.movenext
loop
if rs3.eof and rs3.bof then%>
                    <tr> 
                      <td align="center" class="chinese">目前还没有软件程序！</td>
                    </tr>
                    <%end if%>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <br>
      <%
rs3.close
set rs3=nothing
end if
%>
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01t.gif"><br>
            :::下载Top <%=topsoftnum%>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="86%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <%do while not rs1.eof%>
                    <tr> 
                      <td class="chinese"><a href="showsoft.asp?soft_id=<%=rs1("soft_id")%>" target="_blank"><%=rs1("soft_name")%></a>&nbsp;&nbsp;<font color="#66CC33"><%=rs1("soft_dcount")%></font>/<font color="#66CC33"><%=rs1("soft_rcount")%></font></td>
                    </tr>
                    <%rs1.movenext
loop
if rs1.eof and rs1.bof then%>
                    <tr> 
                      <td align="center" class="chinese">目前还没有软件程序！</td>
                    </tr>
                    <%end if%>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <br>
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01u.gif"><br>
            :::更新Top <%=newsoft%>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="86%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <%do while not rs2.eof%>
                    <tr> 
                      <td class="chinese"><a href="showsoft.asp?soft_id=<%=rs2("soft_id")%>" target="_blank"><%=rs2("soft_name")%></a>&nbsp;&nbsp;<font color="#66CC33"><%=rs2("soft_dcount")%></font>/<font color="#66CC33"><%=rs2("soft_rcount")%></font></td>
                    </tr>
                    <%rs2.movenext
loop
if rs2.eof and rs2.bof then%>
                    <tr> 
                      <td align="center" class="chinese">目前还没有软件程序！</td>
                    </tr>
                    <%end if%>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
	  <IFRAME name="models" marginWidth=0 marginHeight=0 src="about:blank" frameBorder=0 width=0 height=0 scrolling=no framespacing=0></IFRAME>
      <%
rs1.close
set rs1=nothing
rs2.close
set rs2=nothing
%>
      <br>
    </td>
  </tr>
  <tr> 
    <td colspan="3" background="images/dotlineh.gif" height="1"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>
