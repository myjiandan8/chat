<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<% Call quanxian(3) %>

<%

id=request("id")
action=request("action")

select case action

case "add" '信息添加
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from link",chatconn,1,3
rs.AddNew
rs("roomid")=rmport
rs("name")=request("name")
rs("url")=trim(request("url"))
rs("logo")=trim(request("logo"))
rs("lx")=request("lx")
rs.Update
rs.Close
set rs=nothing
response.Redirect "link.asp"

case "edit" '信息修改
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from link where id="&id,chatconn,1,3
rs("name")=request("name")
rs("url")=trim(request("url"))
rs("logo")=trim(request("logo"))
rs("lx")=request("lx")
rs.update
rs.close
response.Redirect "link.asp"
set rs=nothing

case "del" '信息删除
chatconn.execute "delete from link where id="&id
response.Redirect "link.asp"

end select
%>

<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
td{font-size:9pt;line-height:120%;color:#353535} 
body{font-size:9pt;line-height:120%} 

a:link          { color: #000000; text-decoration: none }
a:visited       { color: #000000; text-decoration: none }
a:active        { color: #000000; text-decoration: none }
a:hover         { color: #336699; text-decoration: none; position: relative; right: 0px; top: 1px }
</style>
</head>

<body bgcolor="#799AE1">
<table width="80%" border="1" cellspacing="0" cellpadding="1" bordercolor="#6699FF" align="center">
  <tr> 
    <td> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td background="../images/back_3.gif" rowspan="2"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="12v">
              <tr> 
                <td class="12v" > 
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber3" height="0" width="100%">
                    <tr> 
                      <td> 
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#006600">
                          <tr> 
                            <td bgcolor="#FFFFFF"> 
                              <div align="center"><font color="#000000">管理友情连接</font></div>
                            </td>
                          </tr>
                          <tr> 
                            <td height="99" valign="top" bgcolor="#E8F1FF"><br>
        <%set rs=server.CreateObject("adodb.recordset")
		rs.open "select * from link where roomid=" & rmport,chatconn,1,1
		dim i
		i=rs.recordcount%>
                              <table width="529" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
                                <tr> 
                                  <td width="102" height="16" bgcolor="#E8F1FF"> 
                                    <div align="center">网站名称</div>
                                  </td>
                                  <td width="110" height="16" bgcolor="#E8F1FF"> 
                                    <div align="center">LOGO图片</div>
                                  </td>
                                  <td width="99" height="16" bgcolor="#E8F1FF" align="center"> 
                                    网站地址</td>
                                  <td width="94" height="16" bgcolor="#E8F1FF" align="center"> 
                                    类型</td>
                                  <td width="92" bgcolor="#E8F1FF"> 
                                    <div align="center">操 作</div>
                                  </td>
                                </tr>
                                <%if rs.eof and rs.bof then
		  response.write "还没有数据，请添加！"
		  else
		  do while not rs.eof%>
                                <tr> 
                                  <form name="form1" method="post" action="link.asp?action=edit&id=<%=rs("id")%>">
                                    <td height="35" bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="name" type="text" id="linkname" value="<%=trim(rs("name"))%>" size="13">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="110"> 
                                      <div align="center"> 
                                        <input name="logo" type="text" id="linkurl" value="<%=trim(rs("logo"))%>" size="13">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="99" align="center"> 
                                        <input name="url" type="text" id="linkurl3" size="13" value="<%=trim(rs("url"))%>"></td>
                                    <td bgcolor="#E8F1FF" width="94" align="center"> 
                                      <select size="1" name="lx">
										<option value="0" <%if rs("lx")=0 then response.write "selected"%>>文字连接</option>
										<option value="1" <%if rs("lx")=1 then response.write "selected"%>>图片连接</option>
										</select></td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input type="submit" name="Submit" value="修 改">
                                        &nbsp;&nbsp;<a href=link.asp?action=del&id=<%=rs("id")%>><font color="#FF0000">删除</font></a> 
                                      </div>
                                    </td>
                                  </form>
                                </tr>
         <%rs.movenext
		  loop
		  end if
		  rs.close
		  set rs=nothing%>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<br>
<table width="80%" border="1" cellspacing="0" cellpadding="1" bordercolor="#6699FF" align="center">
  <tr> 
    <td> 
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td background="../images/back_3.gif" rowspan="2"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="12v">
              <tr> 
                <td class="12v" > 
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber3" height="0" width="100%">
                    <tr> 
                      <td> 
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#006600">
                          <tr> 
                            <td bgcolor="#FFFFFF"> 
                              <div align="center"><font color="#000000">添加友情连接</font></div>
                            </td>
                          </tr>
                          <tr> 
                            <form name="form2" method="post" action="link.asp?action=add">
                              <td height="98" bgcolor="#E8F1FF"> 
                                <table width="536" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF" width="116"> 
                                      <div align="center">网站名称</div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="116"> 
                                      <div align="center">LOGO图片</div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="99"> 
                                      <p align="center">网站地址</td>
                                    <td bgcolor="#E8F1FF" width="104" align="center"> 
                                      类型</td>
                                    <td bgcolor="#E8F1FF" width="65"> 
                                      <div align="center">操 作</div>
                                    </td>
                                  </tr>
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF" width="116"> 
                                      <div align="center"> 
                                        <input name="name" type="text" id="linkname1" size="14">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="116"> 
                                      <div align="center"> 
                                        <input name="logo" type="text" id="linkurl1" size="15">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="99" align="center"> 
                                        <input name="url" type="text" id="linkurl2" size="13"></td>
                                    <td bgcolor="#E8F1FF" width="104" align="center"> 
                                      <select size="1" name="lx">
										<option value="0">文字连接</option>
										<option value="1">图片连接</option>
										</select></td>
                                    <td bgcolor="#E8F1FF" width="65"> 
                                      <div align="center"> 
                                        <input type="submit" name="Submit2" value="添 加">
                                      </div>
                                    </td>
                                  </tr>
                                </table>
                              </td>
                            </form>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table></body>
</html>