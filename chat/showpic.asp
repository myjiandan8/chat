<!--���ݿ������ļ�#include file="../INC/SQLconn.asp" -->
<!--#include file="inctop.asp"-->
<!--#include file="incfooter.asp"-->
<!--#include file="../INC/newsconvert.asp" -->
<% call top() %>
<title>��� - ���� ��Ƶ���� �������� �������� LiaoWan.Com</title>
<link rel="stylesheet" href="Sams.css" type="text/css">
<%
Call OpenChatConn

if InStr(ContentEncode(Request("id")), " ") > 0 then response.end



set rs=server.createObject("adodb.recordset")
sql = "Select * from xiangce where id="& clng(ContentEncode(Request("id")))
rs.open sql,chatconn,1,1
if rs.eof then
Call errstr("��ͼƬ�����ڣ���")
end if

set rss=server.createObject("adodb.recordset")
sql = "Select roomname from [web] where id="& rs("roomid")
rss.open sql,chatconn,1,1

roomname=rss("roomname")

rss.close
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td height="30" colspan="3"></td>
  </tr>
  <tr> 
    <td align="center" valign="top" width="554"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td width="37%" background="images/tablebg.gif">::::: ������� :::::</td>
          <td width="51%" align="right" background="images/tablebg.gif">��</td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table> 
      
      <table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>

      <table width="98%" border="0" cellspacing="0" cellpadding="10" align="center">
        <tr> 
          <td bgcolor="#FFFFFF" colspan="2" height="22" align="center" class="chinese">

<div align="center">

			<table border="0" width="541" id="table1" cellspacing="0" cellpadding="0" height="329">

				<tr>
					<td height="315" width="547" align="center">
					
					<br>
					<div align="center">

			<table border="0" width="399" id="table1" cellspacing="0" cellpadding="0" height="440" bgcolor="#FFFFFF">
				<tr>
					<td height="21" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#D1D1D1" bgcolor="#D1D1D1">
					&nbsp;<a target="_blank" href="http://<%=rs("roomid")%>.LiaoWan.Com"><font color="#808080"><%=roomname%>&nbsp;    <%=rs("roomid")%>.LiaoWan.Com</font></a></td>
				<tr>
					<td height="21" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-top-style: solid; border-top-width: 1px" bordercolor="#D1D1D1">
					��&nbsp;<%=rs("zhiwu")%> &nbsp;<%=rs("username")%></b>
					��&nbsp;&nbsp;&nbsp;&nbsp; </td>
				</tr>
				<tr>
					<td height="283" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px" bordercolor="#D1D1D1"> 
					<p align="center">

					<a title="����Ŵ�" target="_blank" href="/image/<%=rs("roomid")%>/b<%=rs("picname")%>">
							<img border="0" src="/image/<%=rs("roomid")%>/b<%=rs("picname")%>" <%if rs("PicWidth")>360 then %>width="360" height="<%=rs("PicHeight") * 360 / rs("PicWidth")%>"<%end if%>></a></td>
				</tr>
				<tr>
					<td height="37" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#D1D1D1">
	
					<p align="center">
	
					<%=rs("jianjie")%>
					
					��</td>
				</tr>

				<tr>
					<td height="61" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#D1D1D1" valign="top">
					&nbsp;<b>����:</b> <%=newsConvert(rs("txt"))%>
					</td>
				</tr>
				<tr>
					<td height="17" width="393" style="border-left-style: solid; border-left-width: 1px; border-right-style: solid; border-right-width: 1px; border-bottom-style: solid; border-bottom-width: 1px" bordercolor="#D1D1D1">
	
					&nbsp;<b>�ߴ�</b>:<%=rs("PicWidth")%>px��<%=rs("PicHeight")%>px&nbsp;&nbsp; 
					<b>��С</b>:<%=rs("PicSize")%>K&nbsp;&nbsp;&nbsp;<b>����ʱ��</b>:<%=CDate(rs("times"))%>
					
					��</td>
				</tr>

			</table>
��</div>

					<% rs.close %>
					
					
					</td>
				</tr>
				<tr>
					<td height="14" width="547">
					
					
					</td>
				</tr>

			</table>
��</div>


          
          </td>
        </tr>
      </table>

      <br>
    </td>
    <td align="center" valign="top" width="1" background="images/dotlinev.gif"></td>
    <td align="center" valign="top" width="205"><table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01.gif"><br>
            :::<strong>��ṫ��</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="96%" border="0" cellspacing="1" cellpadding="0">
              <tr> 
                <td align="center"> 
				<table width="94%" border="0" cellspacing="0" cellpadding="4" height="131">
					<tr> 
                      <td height="20"> 
                        ��</td>
                    </tr>
                    <tr> 
                      <td class="chinese" height="95" valign="top">&nbsp;&nbsp; 
						��λ�����������������ѿɲ�Ҫ��������Ƭ������Ŷ��ֻҪ��Ƭ��ʵ�Ϳ����ˡ�����Ҫ����ʵ�Ľ�����<br>
&nbsp;&nbsp; չʾ�Լ����ҷ�ɡ�<br>
&nbsp;&nbsp; ���ͣ����ͣ����ͣ�GO,GO<br>
						<font color="#008000">ע�⣺ÿ�������Ҽӵ���Ƭ��ӵ���Լ������ҵ�LOGOӡ�Ǻ�������<br>
&nbsp;&nbsp;&nbsp; </font><font color="#FF9900">&nbsp;����SHOW�ɣ������Ͽ��ж�</font><br>
						<font color="#FF0000">ע�⣺�Ͻ���ɫ����Ƭ������ֱ�ӷⷿ��ID��</font></td>
                    </tr>

                     <tr>
                      <td height="20">��</td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table> 
      <p><br>
    </td>
  </tr>
  <tr> 
    <td background="images/dotlineh.gif" height="1" width="544"></td>
    <td background="images/dotlineh.gif" height="1" width="1"></td>
    <td background="images/dotlineh.gif" height="1" width="205"></td>
  </tr>
</table>
<%
call endpage()
%>