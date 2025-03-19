<!--数据库连接文件#include file="../INC/SQLconn.asp" -->
<!--用户权限文件#include file="checkuser.asp" -->
<!--#include file="top.asp"-->
<%
buzou = Request("buzou")
if buzou="" then buzou=1

id0=HTMLEncode(Request("id0"))
id1=HTMLEncode(Request("id1"))
id2=HTMLEncode(Request("id2"))
id3=HTMLEncode(Request("id3"))
id4=HTMLEncode(Request("id4"))
name2=HTMLEncode(Request("name2"))
name3=HTMLEncode(Request("name3"))
name4=HTMLEncode(Request("name4"))
dizhi=HTMLEncode(Request("dizhi"))

'返回对应的地名
function DM_name(id,lx)

sql="select name" & lx & " from D_" & lx & " where id" & lx & "=" & id
set rs=conn.execute (sql)
DM_name=rs("name" & lx )
rs.close

end function

if buzou=3 then

'处理所在地信息
if id1<>1 then
name0=DM_NAME(id0,0)
name1=DM_NAME(id1,1)
id2=0
id3=0
id4=0
else
name0=DM_NAME(id0,0)
name1=DM_NAME(id1,1)
name2=DM_NAME(id2,2)
name3=DM_NAME(id3,3)
name4=DM_NAME(id4,4)
end if

sql="select * from [User] where UID=" & UID
rs.open sql,conn,3,3


     if id0=0 then errstr("非法操作！")

     if rs.eof or err then errstr("非法操作！")

	   rs("id0") = id0
	   rs("id1") = id1
	   rs("id2") = id2
	   rs("id3") = id3
	   rs("id4") = id4
	   rs("name0") = name0
	   rs("name1") = name1
	   rs("name2") = name2
	   rs("name3") = name3
	   rs("name4") = name4
	   rs("dizhi") = dizhi

       rs("ip") =Request.ServerVariables("REMOTE_ADDR")

	   rs.Update
	   rs.close

	 Call wenti("用户所在地修改成功！")

	 buzou=1

end if


%>

<head>
<TITLE>修改所在地区档案</TITLE>
<style>
<!--
TD			{FONT-SIZE: 12px; COLOR: #000000; WORD-BREAK: break-all; }
.text			{FONT-SIZE: 13px; line-height: 160%;font-family: "宋体"}
.en			{FONT-FAMILY: verdana; FONT-SIZE: 11px; }
-->
</style>
</head>


<% call top %>

<% if buzou=1 then

if UN<>""then
	sql="select name0,name1,name2,name3,name4,dizhi from [User] where name='"& UN &"' "
	set rs = conn.Execute(sql)
	if rs.eof or err then
		response.redirect "login.asp?m=非法操作！"
		response.end
	end if
end if

%>


<script language="javascript">
<!--
//表单验证与控制脚本由龙软聊湾开发，欢迎国内同行研究与修改 - 龙软乐天

function isok(theform)
{
 
if (theform.ID0.value == "0")
  {
    alert("请选择所在 大洲!");
    theform.ID0.focus();
    return (false);
  }
if (theform.ID1.value == "0")
  {
    alert("请选择所在 国家!");
    theform.ID1.focus();
    return (false);
  }

if (theform.name2.value.length<2 && theform.ID2.value=="0")
  {
    alert("请填写或选择所在省/州！");
    theform.ID1.focus();
    return (false);
  }

submitonce(theform)
return (true);
}
-->
</script>
<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="429">
    <tr>
      <td width="645" height="37"></td>
    </tr>
    <tr>
      <td width="645" height="403">
      <table cellSpacing="0" cellPadding="0" width="405" border="0" style="border-collapse: collapse" bordercolor="#111111" height="49">
        <tr>
          <td align="left" height="41" width="320"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font color="#FF0000">修改</font><font class="titletext" color="#ff0000">所在地 </font></b><font class="titletext" color="#ff0000">
          [第一步 基本位置]</font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="2" width="320"></td>
        </tr>
        <tr>
          <td height="6" width="320"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="464" border="0" height="71">
        <tr>
          <td vAlign="top" width="377" height="350">
          <p>
           
          
 <form method="POST" name="form" action="vip_diqu.asp?buzou=2" onsubmit="return isok(this)">
    <DIV align=center> 
     <CENTER>
      <table width="445" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="445"> 
            <table width="505" border="0" cellspacing="1" cellpadding="0" height="227">
              <tr> 
                <td colspan="2" class="titletext" width="474" height="5"></td>
              </tr>
              <tr> 
                <td valign="top" height="219" width="447" align="right"> 
                
                  <table cellspacing=5 border=0 width="421" height="211">
                    <tbody>
                      <tr>
                        <td height=1 width="402" colspan="2" bgcolor="#FF99CC"></td>
                        </tr>
                      <tr>
                        <td height=25 width="402" colspan="2">
                        <b>用户所在地信息</b>[非籍贯]</td>
                        </tr>
                      <tr>
                        <td height=26 width="402" colspan="2">
                        当前资料：<%=rs("name0")%>&nbsp; <%=rs("name1")%>&nbsp; <%=rs("name2")%>&nbsp; <%=rs("name3")%>&nbsp; <%=rs("name4")%><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%=rs("dizhi")%>
　</td>
                        </tr>
                      <tr>
                        <td height=25 width="65" align="right">
                        <font color="#008000">大洲：</font></td>
                        <td height=25 width="337">
<script>function SetCity(Select_1,Select_2){calling_list(Select_1.options[Select_1.options.selectedIndex].value, Select_2);return ;}function calling_list(CatID2,subTypeForm ){subTypeForm.length=0;switch ( CatID2 )
{<% 
'Call OpenConn()
sql="select * from D_0 order by id0 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
case "<%=rs("id0")%>":
<% 
i=-1
sql2="select * from D_1  where id0="&rs("id0")&" order by id1 asc"
set rsr=conn.execute (sql2)
do while not (rsr.eof or err)
i=i+1
%>
subTypeForm.options[<%=i%>]=new Option("<%=rsr("name1")%>","<%=rsr("id1")%>");
<% rsr.moveNext
  loop
%>
subTypeForm.options[0].selected=true;break;
<% rs.moveNext
  loop
  rs.close
%>
break;	}return -1;}

//表单控制
function letianform(intss){

	if (intss == '1')
	{
		this.document.all.name2s.style.display  = 'none';
		this.document.all.id2s.style.display  = '';
	}
	else {
		this.document.all.name2s.style.display  = '';
		this.document.all.id2s.style.display  = 'none';	
	}
}
</script>
<select name=ID0  onChange="SetCity(this,form.ID1);if(this.value==1)letianform('1');if(this.value!=1)letianform('0')">
<option value="0">选择大洲</option>
<%
sql="select * from D_0 order by id0 asc"
set rs=conn.execute (sql)
do while not (rs.eof or err)
%> 
<option value=<%=rs("id0")%>><%=rs("name0")%></option>
<% rs.moveNext
  loop
%>
</select> 

<font color="#FF0000">*
                        </font>

                        </td>
                        </tr>
                      <tr>
                        <td height=25 width="65" align="right">
                        <font color="#008000">国家：</font></td>
                        <td height=25 width="337">
                        
                        <select name=ID1 onChange="if(this.value!=0)letianform(this.value);">
                        <option value="0">选择国家</option></select> 
                        <font color="#FF0000">
                        *
                        </font>
                        
                        </td>
                        </tr>
                      <tr>
                        <td height=29 width="65" align="right">
                        <font color="#008000">省/州：</font></td>
                        <td height=29 width="337">
<span id="name2s" style="display: ; ">
                        <input type="text" name="name2" size="21"> 
</span>    
<span id="id2s" style="display: none; ">                 
<SELECT name=ID2>
<%
sql="select * from D_2 where id1=1 order by id2 asc"
set rsm=conn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<option value=<%=rsm("id2")%>><%=rsm("name2")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</SELECT> 
</span>  
<script>if(form.ID0.value!='0'&&form.ID1.value=='0'){SetCity(form.ID0,form.ID1);if(form.ID1.value=='1')letianform('1');}</script>
<font color="#FF0000"> 必填*</font></td>
                        </tr>
                      <tr>
                        <td height=14 width="402" colspan="2">
                        </td>
                        </tr>
                      <tr>
                        <td height=2 align="right" width="402" colspan="2" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=31 colspan=2 align="center" valign="bottom" width="409"> 
                        <input class=put1 type="submit" value="　下一步　" name="B1">   
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
                <td width="96" valign="bottom" height="219"><img src="img/girl01.gif" width="61" height="200" border="0"></td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="445">　</td>
        </tr>
      </table>
      </CENTER>
          </DIV>
        </FORM>
          
          
          
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="377" height="1" align="center">
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
      <td width="645" height="4"></td>
    </tr>
  </table>
  </center>
</div>


<% elseif buzou=2 then %>
<script language="javascript">
<!--
//表单验证与控制脚本由龙软聊湾开发，欢迎国内同行研究与修改 - 龙软乐天

function isok(theform)
{
 
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

if (theform.dizhi.value == "")
  {
    alert("不填写街道地址可不行啊，万一你家对门的小女孩…………");
    theform.dizhi.focus();
    return (false);
  }

submitonce(theform)
return (true);
}
-->
</script>

<div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="448" id="AutoNumber1" height="429">
    <tr>
      <td width="645" height="61"></td>
    </tr>
    <tr>
      <td width="645" height="379">
      <table cellSpacing="0" cellPadding="0" width="405" border="0" style="border-collapse: collapse" bordercolor="#111111" height="49">
        <tr>
          <td align="left" height="41" width="320"><b><img src="img/main_01.gif" width="56" height="39" hspace="5"><font color="#FF0000">修改</font><font class="titletext" color="#ff0000">所在地 </font></b><font class="titletext" color="#ff0000">
          [第二步 详细位置]</font></td>
        </tr>
        <tr>
          <td background="../images/vip_dot.gif" height="2" width="320"></td>
        </tr>
        <tr>
          <td height="6" width="320"></td>
        </tr>
      </table>
      <table cellSpacing="1" cellPadding="0" width="464" border="0" height="329">
        <tr>
          <td vAlign="top" width="377" height="326">
          <p>
           


 <form method="POST" name="form1" action="vip_diqu.asp?buzou=3" onsubmit="return isok(this)">
    <DIV align=center> 
     <CENTER>
      <table width="445" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td align="center" width="445"> 
            <table width="505" border="0" cellspacing="1" cellpadding="0" height="227">
              <tr> 
                <td colspan="2" class="titletext" width="474" height="5">
                        <input type="hidden" name="id0" maxlength="40" value="<%=id0%>">
                        <input type="hidden" name="id1" maxlength="40" value="<%=id1%>">
                        <input type="hidden" name="id2" maxlength="40" value="<%=id2%>">
                        <input type="hidden" name="name2" maxlength="40" value="<%=name2%>">
                
                
                </td>
              </tr>
              <tr> 
                <td valign="top" height="219" width="447" align="right"> 
                
                  <table cellspacing=5 border=0 width="421" height="211">
                    <tbody>
                      <tr>
                        <td height=1 width="402" colspan="2" bgcolor="#FF99CC"></td>
                        </tr>
                      <tr>
                        <td height=1 width="402" colspan="2">
                        <b>用户所在地信息</b>[非籍贯]</td>
                        </tr>
                      <tr>
                        <td height=20 width="65" align="right">
                        　</td>
                        <td height=20 width="337">
                                              
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
                        <td height=25 width="65" align="right">
                        <font color="#008000">所在地：</font></td>
                        <td height=25 width="337">
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
<script>if(form1.ID3.value!='0'&&form1.ID4.value=='0')SetCity(form1.ID3,form.ID4);</script>

<% end if %>         
                        </td>
                        </tr>
                      <tr>
                        <td height=21 width="65" align="right">
                        <font color="#008000">街道地址：</font></td>
                        <td height=21 width="337">
                            
                  <input type="text" name="dizhi" size="26" maxLength=40></td>
                        </tr>
                      <tr>
                        <td height=36 width="402" colspan="2">
                        </td>
                        </tr>
                      <tr>
                        <td height=2 align="right" width="402" colspan="2" bgcolor="#FF0099"></td>
                      </tr>
                      <tr>
                        <td height=31 colspan=2 align="center" valign="bottom" width="409"> 
                        <input class=put1 type="submit" value="　下一步　" name="B1">   
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </td>
                <td width="96" valign="bottom" height="219"><img src="img/girl01.gif" width="61" height="200" border="0"></td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td background="images/hline.gif" height="1" width="445">　</td>
        </tr>
      </table>
      </CENTER>
          </DIV>
        </FORM>
          
          
          
          
          
          
          
          
          </td>
        </tr>
        <tr>
          <td vAlign="top" width="377" height="1" align="center">
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
      <td width="645" height="4"></td>
    </tr>
  </table>
  </center>
</div>
<% end if %>
    <% 
    Call Closedb()
    
    call endpage() %>