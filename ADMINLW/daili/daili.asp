<!--���ݿ������ļ�#include file="../../INC/SQLconn.asp" -->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin9.asp"-->

<%
'Call Openconn
dim action,linkid
id=request("id")
action=request("action")
uid=trim(request("uid"))
set rs=server.CreateObject("adodb.recordset")



select case action

case "add" '��Ϣ���

			set rs=server.createobject("adodb.recordset")
			sql="select name from [User] where uid like "& uid
			rs.Open sql,conn,1,3
			
			if  rs.eof then  
			
			%>
		<script language=vbs>
<!--
        MsgBox "û�������������û�ID"
        window.location.href="Javascript:window.history.go(-1)"

-->
   		</script>
   		
<% 	else 
name=rs("name")
rs.Close

rs.Open "select * from CW_DL where uid="& uid,conn,1,3
if rs.eof then 

rs.AddNew
rs("uid")=uid
rs("name")=name
rs("dj")=int(request("dj"))
rs.Update
rs.Close
set rs=nothing
response.Redirect "daili.asp"

else

errstr("���û��Ѿ���Ϊ�˴���!!")

end if

	end if 


case "edit" '��Ϣ�޸�

set rs=server.CreateObject("adodb.recordset")
rs.open "select * from CW_dl where id="&id,conn,1,3

if  not (rs.eof) then 

rs("dj")=request("dj")
rs.update
rs.close
response.Redirect "daili.asp"
set rs=nothing

else

errstr("���û�������!!")

end if


case "del" '��Ϣɾ��

if session("UID")="administrator" then 
conn.execute "delete from CW_dl where id="&id
end if

response.Redirect "daili.asp"

end select
%>

<html>
<head>
<title>Ӫ����Ա����</title>
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
                              <div align="center"><font color="#000000">����Ӫ��Ա</font></div>
                            </td>
                          </tr>
                          <tr> 
                            <td height="99" valign="top" bgcolor="#E8F1FF"><br>
        <%set rs=server.CreateObject("adodb.recordset")
		rs.open "select * from CW_dl order by id",conn,1,1
		dim i
		i=rs.recordcount%>
                              <table width="606" border="0" align="center" cellpadding="1" cellspacing="1" bgcolor="#CCCCCC" height="45">
                                <tr> 
                                  <td width="46" height="23" bgcolor="#E8F1FF" align="center"> 
                                    ����ID</td>
                                  <td width="100" height="23" bgcolor="#E8F1FF" align="center"> 
                                    Ӫ��ԱID </td>
                                  <td width="63" height="23" bgcolor="#E8F1FF" align="center"> 
                                    <div align="center">����</div>
                                  </td>
                                  <td width="67" height="23" bgcolor="#E8F1FF" align="center"> 
                                    ����</td>
                                  <td width="59" height="23" bgcolor="#E8F1FF" align="center"> 
                                    ����</td>
                                  <td width="63" bgcolor="#E8F1FF" height="23"> 
                                    <div align="center">�ȼ�</div>
                                  </td>
                                  <td width="161" bgcolor="#E8F1FF" height="23"> 
                                    <div align="center">�� ��</div>
                                  </td>
                                </tr>
         <%if rs.eof and rs.bof then
		  response.write "��û�����ݣ�����ӣ�"
		  else
		  do while not rs.eof%>
                                <tr> 
                                  <form name="form1" method="post" action="daili.asp?action=edit&id=<%=rs("id")%>">
                                    <td height="16" bgcolor="#E8F1FF" width="46" align="center"> 
                                    <%=rs("uid")%>
                                      ��</td>
                                    <td height="16" bgcolor="#E8F1FF" width="100" align="center"><%=trim(rs("name"))%></td>
                                    <td bgcolor="#E8F1FF" width="63" height="16" align="center"> 
                                      <%=rs("zn")%>Ԫ
                                    </td>
                                    <td bgcolor="#E8F1FF" width="67" height="16" align="center"> 
                                    <%=rs("tn")%>Ԫ
                                      ��</td>
                                    <td bgcolor="#E8F1FF" width="59" height="16" align="center"> 
                                    <%=rs("yn")%>Ԫ
                                      ��</td>
                                    <td bgcolor="#E8F1FF" width="63" height="16"> 
                                      <div align="center"> 
                                        <select size="1" name="dj">
                                        <option value="0" <%if rs("dj")=0 then response.write "selected"%>>��ͨ</option>
                                        <option value="1" <%if rs("dj")=1 then response.write "selected"%>>�߼�</option>
                                        <option value="2" <%if rs("dj")=2 then response.write "selected"%>>����</option>
                                        <option value="3" <%if rs("dj")=3 then response.write "selected"%>>�ر�</option>
                                        </select>
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF" width="161" height="16"> 
                                      <div align="center"> 
                                        <input type="submit" name="Submit" value="������">&nbsp; 
                                        ҵ���鿴&nbsp;&nbsp;<a href=daili.asp?action=del&id=<%=rs("id")%>><font color="#FF0000">ɾ��</font></a> 
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
                              <div align="center"><font color="#000000">���Ӫ��Ա</font></div>
                            </td>
                          </tr>
                          <tr> 
                            <form name="form2" method="post" action="daili.asp?action=add">
                              <td height="98" bgcolor="#E8F1FF"> 
                                <table width="80%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF"> 
                                      <div align="center">Ӫ��Ա����ID</div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center">Ӫ��Ա�Ǽ�</div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center">�� ��</div>
                                    </td>
                                  </tr>
                                  <tr> 
                                    <td height="15" bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input name="uid" type="text" id="linkname1" size="16">
                                      </div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        &nbsp;<select size="1" name="dj">
                                        <option value="0" selected>��ͨ</option>
                                        <option value="1">�߼�</option>
                                        <option value="2">����</option>
                                        <option value="4">�ر�</option>
                                        </select></div>
                                    </td>
                                    <td bgcolor="#E8F1FF"> 
                                      <div align="center"> 
                                        <input type="submit" name="Submit2" value="�� ��">
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