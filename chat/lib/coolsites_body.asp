<%sub coolsites_body()
dim totalcs
opensites
sql="select cs_id from coolsites"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
totalcs=rs.recordcount
%>
<table width="778" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td height="10" colspan="3"></td>
  </tr>
  <tr> 
    <td align="center" valign="top" width="554">
<table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="6"></td>
        </tr>
      </table>
       <%
dim totalfl,passing
sql="select fl_id from friendlink"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
totalfl=rs.recordcount
sql="select fl_id from friendlink where passed=1"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
passing=rs.recordcount
%>
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td align="left" background="images/tablebg.gif">:::::: ������������ ::::::</td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table>
      <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td><br>
            <span class=unnamed1>
            <b><font color="#0033CC">:::::����˵��::::: </font></b><br>
            <br>
            ����1.ֻҪ���վ��������ȥ���ģ����ҷ������������Ҫ��,���������ڴֲ�.������һ�㶼����ܾ����ӵġ�<br>
            <br>
            ����2.���ǲ�����Ϊ���վ��û�е�ĳ����ν�Ĳ�ζ��ܾ����ӣ���Ϊ���Ƕ��ڽ�����<br>
            <br>
            ����3.������һ���໥�Ķ�����Ҳϣ���������ܱ˴��������ӱ�ʶ<br>
            <br>
            </span></td>
        </tr>
      </table>
	  
	  
      <table width="90%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td colspan="2"><a onfocus=blur() href="http://www.liaowan.com/" target="_blank"> 
            </a></td>
        </tr>
        <tr> 
          <td width="20%"><a onFocus=blur() href="http://www.liaowan.com" target="_blank">
			<img border="0" src="http://liaowan.com/logo.gif" alt="http://www.liaowan.com" width="88" height="31"></a><br>
          </td>
          <td width="80%"><textarea rows="3" name="LinkMenglinks" cols="70" style="font-size: 8pt; font-family: Tahoma; background-color: transparent; border: 1 solid #000000"><a onFocus=blur() href="http://www.liaowan.com/" target="_blank"><img border="0" src="http://www.liaowan.com/logo.gif" alt="������Ƶ������ liaowan.com"></a></textarea></td>
        </tr>
        <tr> 
          <td>��</td>
          <td>��</td>
        </tr>
      </table>
	  <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="6%" background="images/tablebg.gif"><img src="images/mleft.gif"></td>
          <td background="images/tablebg.gif">:::::: �������� ::::::</td>
          <td width="6%" align="right" background="images/tablebg.gif"><img src="images/mright.gif"></td>
        </tr>
      </table>
      <%sql="select * from flcat order by flcat_id ASC"
set rs=server.createobject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
dim rs2_numrows
rs2_numrows=0
Dim HLooper1__numRows
Dim HLooper1__index
HLooper1__index = 0
startrw = 0
endrw = HLooper1__index
numberColumns = 4
sql="select * from friendlink where flcat_id="&rs("flcat_id")&" and passed=0"
set rs2=server.createobject("adodb.recordset")
rs2.open sql,conn,1,1
HLooper1__numRows = rs2.recordcount
if HLooper1__numRows=0 then
   numrows=1
else
if HLooper1__numRows>=numberColumns then
if (HLooper1__numRows mod numberColumns)=0 then
   numrows=HLooper1__numRows\numberColumns
else
   numrows=HLooper1__numRows\numberColumns+1
end if
else
numrows=1
end if
end if
%>
      <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr> 
          <td width="3%">��</td>
          <td width="94%" height="25"><%=rs("flcat_name")%> 
            <%if rs("isimage")=1 then response.write "<font color=#cccccc>[�ı���ʽ������]</font>" end if%>
          </td>
          <td width="3%" align="right">��</td>
        </tr>
      </table>
      <table width="98%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td bgcolor="#FFFFFF">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
              <%do while((numrows <> 0) AND (Not rs2.EOF))
	startrw = endrw + 1
	endrw = endrw + numberColumns
rs2_numRows = rs2_numRows + HLooper1__numRows%>
              <tr> 
                <%do While ((startrw <= endrw) AND (Not rs2.EOF))%>
                <td width="25%" align="center" bgcolor="#FFFFFF"><span class="top_line"><a href="<%=rs2("fl_url")%>" title="<%=rs2("fl_name")%>" target="_blank">
                  <%if rs("isimage")=0 then response.write "<img src='"&rs2("fl_logo")&"' border='0'>" else response.write rs2("fl_name") end if%>
                  </a><span></td>
                <%
	startrw = startrw + 1
	rs2.MoveNext()
	loop
	%>
              </tr>
              <%numrows=numrows-1
loop
if rs2.eof and rs2.bof then%>
              <tr> 
                <td bgcolor="#FFFFFF" align="center" class="chinese">��ǰ�÷����л�û�����ӣ�</td>
              </tr>
              <%end if
rs2.close
set rs2=nothing
%>
            </table>
          </td>
        </tr>
      </table>
      <%rs.movenext
loop
if rs.eof and rs.bof then%>
            <br><table width="98%" border="0" cellspacing="1" cellpadding="10" bgcolor="#E8E8E8" align="center">
        <tr> 
          <td bgcolor="#FFFFFF" align="center" class="chinese">��ǰû���������ӣ�</td>
        </tr>
      </table>
      <%end if%>
      <br>
      <IFRAME name="linkss" marginWidth=0 marginHeight=0 src="about:blank" frameBorder=0 width=0 height=0 scrolling=no framespacing=0></IFRAME>
    </td>
    <td align="center" valign="top" width="1" background="images/dotlinev.gif"></td>
    <td align="center" valign="top" width="205"> <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01f.gif"><br>
            :::<strong>���Ӵ���</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="85%" border="0" cellspacing="0" cellpadding="4">
              <tr> 
                <td class="chinese"><strong>����:</strong>������Ƶ��������</td>
              </tr>
              <tr>
                <td class="chinese"><strong>��ַ:</strong>http://liaowan.com</td>
              </tr>
              <tr> 
                <td class="chinese"><strong>ͼ��:</strong>http://liaowan.com/logo.gif</td>
              </tr>
              <tr> 
                <td class="chinese"><strong>���:</strong>������Ƶ��������<br></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table>
      <table width="208" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td height="40" align="right" background="images/lefttablo_01o.gif"><br>
            :::<strong>��������</strong>:::&nbsp;&nbsp;&nbsp;</td>
        </tr>
      </table>
      <table width="208" border="0" align="center" cellpadding="0" cellspacing="0" background="images/lefttablo_03.gif">
        <tr> 
          <td height="6"></td>
        </tr>
        <tr> 
          <td align="center" height="66" class="chinese"><table width="91%" border="0" cellspacing="1" cellpadding="3" class="chinese">
              <form name="form1" method="post" action="savelink.asp" target="linkss">
                <tr> 
                  <td><div align="center"><a onFocus=blur() href="http://www.liaowan.com" target="_blank">
			<img border="0" src="http://liaowan.com/logo.gif" alt="http://www.liaowan.com" width="88" height="31"></a></div>
                    <BR>
                      �������Logo��ַ����д,���ǽ��������Ϊ�ı�������¼�����ݿ�!</td>
                </tr>
                <tr> 
                  <td> ��ѡ�����:<br> 
                        <%sql="select * from flcat"
set rs=server.CreateObject("adodb.recordset")
rs.open sql,conn,1,1
do while not rs.eof
%>������<input name="flcat_id" type="radio" id="flcat_id" value="<%=rs("flcat_id")%>"><%=rs("flcat_name")%><BR>
                        <%rs.movenext
loop
if rs.bof and rs.eof then%>
                        ���޷���
                        <%end if%>
                      <div align="center"><br>
                      ����:<input type="text" name="fl_name" size="18" class="input">
                      <br>
                      ��ַ:<input type="text" name="fl_url" size="18" class="input">
                      <br>
                      ͼ��:<input type="text" name="fl_logo" size="18" class="input">
					  <br>
                      ���:<textarea name="remark" cols="17" rows="3"></textarea>
                    </div></td>
                </tr>
                <tr> 
                  <td align="center"> <input type="submit" name="Submit" value="�ύ" class="input"> 
                    <input type="reset" name="reset" value="���" class="input"> 
                  </td>
                </tr>
              </form>
            </table></td>
        </tr>
        <tr> 
          <td valign="bottom"><img src="images/lefttablo_05.gif"></td>
        </tr>
      </table> 
      <br>
      <br>
    </td>
  </tr>
  <tr> 
    <td background="images/dotlineh.gif" height="1" width="544"></td>
    <td background="images/dotlineh.gif" height="1" width="1"></td>
    <td background="images/dotlineh.gif" height="1" width="205"></td>
  </tr>
</table>
<%
rs.close
set rs=nothing
end sub%>