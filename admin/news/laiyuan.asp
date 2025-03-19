<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->

<%
dim action,linkid
linkid=request("id")
action=request("action")
select case action

case "add" '信息添加
set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from SYS_NEWS_LAIYUAN",conn,1,3
rs.AddNew
rs("linkname")=trim(request("linkname1"))
rs("linkurl")=trim(request("linkurl1"))
rs("linkidorder")=int(request("linkidorder1"))
rs.Update
rs.Close
set rs=nothing
response.Redirect "laiyuan.asp"

case "edit" '信息修改
set rs=server.CreateObject("adodb.recordset")
rs.open "select * from SYS_NEWS_LAIYUAN where linkid="&linkid,conn,1,3
rs("linkname")=request("linkname")
rs("linkurl")=trim(request("linkurl"))
rs("linkidorder")=int(request("linkidorder"))
rs.update
rs.close
response.Redirect "laiyuan.asp"
set rs=nothing

case "del" '信息删除
conn.execute "delete from SYS_NEWS_LAIYUAN where linkid="&linkid
response.Redirect "laiyuan.asp"

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
          <td background="../../ADMINLW/images/back_3.gif" rowspan="2"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="12v">
              <tr> 
                <td class="12v" > 
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber3" height="0" width="100%">
                    <tr> 
                      <td> 
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#006600">
                          <tr> 
                            <td bgcolor="#FFFFFF"> 
                              <div align="center"><span lang="zh-cn">
                                <font color="#000000">管理新闻来源</font></span></div>
                            </td>
                          </tr>
                          <tr> 
                            <td height="99" valign="top" bgcolor="#E8F1FF"><br>
        <%set rs=server.CreateObject("adodb.recordset")
		rs.open "select * from SYS_NEWS_LAIYUAN order by linkidorder",conn,1,1
		dim i
		i=rs.recordcount%>
                              <table width="80%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC">
                                <tr> 
                                  <td width="26%" height="16" bgcolor="#E8F1FF"> 
                                    <div align="center"><span lang="zh-cn">来源</span>网站名称</div>
                                  </td>
                                  <td width="42%" height="16" bgcolor="#E8F1FF"> 
                                    <div align="center">网站地址</div>
                                  </td>
                                  <td width="9%" bgcolor="#E8F1FF"> 
                                    <div align="center">排 序</div>
                                  </td>
                                  <td width="23%" bgcolor="#E8F1FF"> 
                                    <div align="center">操 作</div>
                                  </td>
                                </tr>
                                <%if rs.eof and rs.bof then
		  response.write "还没有数据，请添加！"
		  else
		  do while not rs.eof%>
                                <tr> 
                                  <form name="form1" method="post" action="laiyuan.asp?action=edit&id=<%=rs("linkid")%>">
                                    <td height="35" bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="linkname" type="text" id="linkname" value="<%=trim(rs("linkname"))%>" size="16">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="linkurl" type="text" id="linkurl" value="<%=trim(rs("linkurl"))%>" size="26">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="linkidorder" type="text" id="linkidorder" value=<%=rs("linkidorder")%> size="3">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input type="submit" name="Submit" value="修 改">
                                        &nbsp;&nbsp;<a href=laiyuan.asp?action=del&id=<%=rs("linkid")%>><font color="#FF0000">删除</font></a> 
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
          <td background="../../ADMINLW/images/back_3.gif" rowspan="2"> 
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="12v">
              <tr> 
                <td class="12v" > 
                  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber3" height="0" width="100%">
                    <tr> 
                      <td> 
                        <table width="100%" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#006600">
                          <tr> 
                            <td bgcolor="#FFFFFF"> 
                              <div align="center"><font color="#000000">添加<span lang="zh-cn">新闻来源</span></font></div>
                            </td>
                          </tr>
                          <tr> 
                            <form name="form2" method="post" action="laiyuan.asp?action=add">
                              <td height="98" bgcolor="#E8F1FF"> 
                                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF"> 
                                      <div align="center"><span lang="zh-cn">来源</span>网站名称</div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center">网站地址</div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center">排 序</div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center">操 作</div>
                                    </td>
                                  </tr>
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="linkname1" type="text" id="linkname1" size="16">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="linkurl1" type="text" id="linkurl1" size="26">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="linkidorder1" type="text" id="linkidorder1" value=<%=i+1%> size="3">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
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