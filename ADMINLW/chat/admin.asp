<!--数据库连接文件#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<%
Call OpenChatConn()
Call OpenBChatConn()
'Call OpenMeChatConn()

dim action,linkid
id=request("id")
action=request("action")

select case action

case "add" '信息添加


set rs=server.CreateObject("adodb.recordset")
rs.Open "select * from addadmin",chatconn,1,3


rs.AddNew
rs("name")=trim(request("name"))
rs("zhengjian")=trim(request("zhengjian"))
rs("tel")=trim(request("tel"))
rs("QQ")=trim(request("QQ"))
rs("bchat")=int(request("bchat"))
rs("mechat")=int(request("mechat"))
rs.Update
rs.Close


call xunguan()

set rs=nothing
response.Redirect "chatadmin.asp"

errstr("该用户已经成为了巡管!")


case "edit" '信息修改

set rs=server.CreateObject("adodb.recordset")
rs.open "select * from addadmin where id="&id,chatconn,1,3

if  not (rs.eof) then 

rs("name")=trim(request("name"))
rs("zhengjian")=trim(request("zhengjian"))
rs("tel")=trim(request("tel"))
rs("QQ")=trim(request("QQ"))
rs("bchat")=int(request("bchat"))
rs("mechat")=int(request("mechat"))

rs.update
rs.close
call xunguan()
'response.Redirect "chatadmin.asp"
set rs=nothing

else

errstr("该用户不存在!!")

end if


case "del" '信息删除

if session("UID")="administrator" then 
chatconn.execute "delete from addadmin where id="&id
end if

call xunguan()
'response.Redirect "chatadmin.asp"

end select

'巡管添加函数

sub xunguan()

sql="select name,bchat,mechat from addadmin"
set rss=chatconn.execute (sql)
do while not (rss.eof or err)

admins=rss("name")

if rss("bchat")=1 then badmin = badmin  & "*" & admins & "|123|9" & vbCrLf

if rss("mechat")=1 then meadmin = meadmin & "," & admins

rss.moveNext
loop

set rs=server.CreateObject("adodb.recordset")
rs.open "select * from admin",Bchatconn,1,3   '写进BCHAT数据库
rs("admin")=badmin
rs.update
rs.close


'处理BCHAT
sql="select * from ServerDB where cid=3 and txt='a'"
set rsm=chatconn.execute (sql)
On Error Resume Next
do while not (rsm.eof or err)
	urls= rsm("websys") &"?MD5vsr=" & MD5("98980" & md5pass) & "&port=98980&menu=4"
	newi= left(GetURL(urls),1)
	response.write urls
	if 1=1 then
		if newi=1 then 
		response.write "刷新成功"
		'response.write "<script>alert('成功了');</script>"
		else
		response.write "没刷新"
		'response.write "<script>alert('聊天室文件生成失败！错误码 " & newi & "');window.close();</script>"
		end if
	end if
rsm.moveNext
loop
rsm.close


'处理MECHAT
	if 1=2 then
		'读mechat_M.ini
	
		Set f = fso.OpenTextFile(medir & "\MeChat_M.ini", ForReading)
		inilines=f.ReadAll()
		f.Close()
	
		inilines=replace(inilines,"$$ADMIN", meadmin)
	
		Set ts = fso.OpenTextFile(medir & "\MeChat.ini", ForWriting, true)
		ts.Write(inilines)
		ts.Close()
	end if
end sub

function GetURL(url)
	On Error Resume Next
    Set Retrieval = Server.CreateObject("Microsoft.XMLHTTP")
          .setTimeouts 1000, 1000, 1000, 1000
          With Retrieval
          .Open "GET", url, False, "", ""
          .Send
          GetURL = .ResponseText
          'GetURL = bytes2BSTR(GetURL)
		  'GetURL = bytes2BSTR(.Responsebody)
          End With
    Set Retrieval = Nothing
End function

%>
<html>
<head>
<title>营销人员管理</title>
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
                              <div align="center"><font color="#000000">巡站管理员</font></div>
                            </td>
                          </tr>
                          <tr> 
                            <td height="99" valign="top" bgcolor="#E8F1FF"><br>
        <%set rs=server.CreateObject("adodb.recordset")
		rs.open "select * from addadmin order by id",chatconn,1,1
		dim i
		i=rs.recordcount%>
                              <table width="619" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC" height="45">
                                <tr> 
                                  <td width="32" height="23" bgcolor="#E8F1FF"> 
                                    <div align="center">id</div>
                                  </td>
                                  <td width="93" height="23" bgcolor="#E8F1FF" align="center"> 
                                    名字 </td>
                                  <td width="101" height="23" bgcolor="#E8F1FF" align="center"> 
                                    <div align="center">证件</div>
                                  </td>
                                  <td width="99" height="23" bgcolor="#E8F1FF" align="center"> 
                                    电话</td>
                                  <td width="51" height="23" bgcolor="#E8F1FF" align="center"> 
                                    QQ</td>
                                  <td width="122" bgcolor="#E8F1FF" height="23"> 
                                    <div align="center">管理</div>
                                  </td>
                                  <td width="101" bgcolor="#E8F1FF" height="23"> 
                                    <div align="center">操 作</div>
                                  </td>
                                </tr>
         <%if rs.eof and rs.bof then
		  response.write "还没有数据，请添加！"
		  else
		  do while not rs.eof%>
                                <tr> 
                                  <form name="form1" method="post" action="chatadmin.asp?action=edit&id=<%=rs("id")%>">
                                    <td height="16" bgcolor="#E8F1FF" width="32" align="center"> 
                                      <%=rs("id")%>
                                    </td>
                                    <td height="16" bgcolor="#E8F1FF" width="93" align="center">
									<input name="name" type="text" id="linkname4" size="10" value="<%=rs("name")%>"></td>
                                    <td bgcolor="#E8F1FF" width="101" height="16" align="center"> 
                                      <input name="zhengjian" type="text" id="linkname7" size="11" value="<%=rs("zhengjian")%>"></td>
                                    <td bgcolor="#E8F1FF" width="99" height="16" align="center"> 
                                        <input name="tel" type="text" id="linkname8" size="13" value="<%=rs("tel")%>"></td>
                                    <td bgcolor="#E8F1FF" width="51" height="16" align="center"> 
                                        <input name="QQ" type="text" id="linkname9" size="5" value="<%=rs("QQ")%>"></td>
                                    <td bgcolor="#E8F1FF" width="122" height="16"> 
                                      <div align="center"> 
                                        Bchat<input type="checkbox" name="bchat" value="1" <%if rs("bchat")=1 then response.write "checked"%>> 
										Mechat<input type="checkbox" name="mechat" value="1" <%if rs("mechat")=1 then response.write "checked"%>>
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="101" height="16"> 
                                      <div align="center"> 
                                        <input type="submit" name="Submit" value="修改">&nbsp;&nbsp;<a href=chatadmin.asp?action=del&id=<%=rs("id")%>><font color="#FF0000">删除</font></a> 
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
                              <div align="center"><font color="#000000">添加巡站管理员</font></div>
                            </td>
                          </tr>
                          <tr> 
                            <form name="form2" method="post" action="Chatadmin.asp?action=add">
                              <td height="98" bgcolor="#E8F1FF"> 
                                <table width="570" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF" width="105"> 
                                      <div align="center">名字</div>
                                    </td>
                                    <td height="15" bgcolor="#E8F1FF" width="78" align="center"> 
                                      证件</td>
                                    <td height="15" bgcolor="#E8F1FF" width="121" align="center"> 
                                      电话</td>
                                    <td height="15" bgcolor="#E8F1FF" width="71" align="center"> 
                                      QQ</td>
                                    <td bgcolor="#E8F1FF" width="117" align="center"> 
                                      管理</td>
                                    <td bgcolor="#E8F1FF" width="70"> 
                                      <div align="center">操 作</div>
                                    </td>
                                  </tr>
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF" width="105"> 
                                      <div align="center"> 
                                        <input name="name" type="text" id="linkname1" size="10">
                                      </div>
                                    </td>
                                    <td height="15" bgcolor="#E8F1FF" width="78" align="center"> 
                                        <input name="zhengjian" type="text" id="linkname2" size="10"></td>
                                    <td height="15" bgcolor="#E8F1FF" width="121" align="center"> 
                                        <input name="tel" type="text" id="linkname3" size="10"></td>
                                    <td height="15" bgcolor="#E8F1FF" width="71" align="center"> 
                                        <input name="QQ" type="text" id="linkname10" size="5"></td>
                                    <td bgcolor="#E8F1FF" width="117" align="center"> 
                                      Bchat<input type="checkbox" name="bchat" value="1"> 
										Mechat<input type="checkbox" name="mechat" value="1"></td>
                                    <td bgcolor="#E8F1FF" width="70"> 
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