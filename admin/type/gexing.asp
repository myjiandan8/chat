<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/Chatfl.asp" -->
<% Call quanxian(20) %>
<%
	if Request("roomtype")<>"" and Request("id2")<>"" and Request("liebiao")<>"" then

		
		sql="select roomtype,id2,liebiao,vip,newtype from [web] where cid=" & rmport
		rs.open sql,chatconn,1,3
		rs("roomtype") =Request("roomtype")
		rs("newtype") =Request("newtype")
		rs("id2") =Request("id2")
		rs("liebiao") =Request("liebiao")
		rs("vip") =trim(Request("vip"))
       	rs.Update
       	rs.close
				
		Call errstr("�޸ĳɹ�����")
	
	end if


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<LINK href="../../images/Style.css" rel=stylesheet>
<title>��������</title>
</head>

<body>

      
      <div align="center">
      <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="587" id="AutoNumber2" height="31">
        <tr>
          <td width="100%" height="31" colspan="2">
          
          </td>
        </tr>
        <tr>
          <td width="530" height="1" align="center"></td>
          <td width="61" height="1" rowspan="3" valign="bottom"></td>
        </tr>
        <tr>
          <td width="530" height="139" align="center" valign="top">
       
          
      <div align="center">
        <center>
        <table border="1" cellspacing="1" style="border-collapse: collapse" bordercolor="#F0EFEC" width="592" id="AutoNumber2" height="400">

<form name="form5" method="post" action="gexing.asp">
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp; </font></b><font color="#FFFFFF"><b>
			��������</b></font></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
       <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
          <tr>
	    <td width="127" align=left height="26">�˿ںţ�</td>
	    <td width="455" height="26"> <%=rmport%></td>
	      </tr>
          <tr>
	    <td width="127" align=left height="26">���Է��ࣺ</td>
	    <td width="455" height="26">  
        
<select size="1" name="newType">

<option value="1" <%if newType=i then response.write "selected"%>>����</option>
<option value="2" <%if newType=i then response.write "selected"%>>���</option>
<option value="3" <%if newType=i then response.write "selected"%>>���</option>

</select>&nbsp;
<img border="0" src="../../PIC/IMG/s01.gif" width="15" height="13">���� 
<img border="0" src="../../PIC/IMG/s12.gif" width="15" height="13">��� 
<img border="0" src="../../PIC/IMG/s23.gif" width="15" height="13">���</td>
	      </tr>
          <tr>
          
            <td width="127" height="26" align="right" bgcolor="#F9F9F7">
            <p align="left">���������ͣ�</td>
            <td width="455" height="26" bgcolor="#F9F9F7"> 
        
<select size="1" name="RoomType">
<%
i=1
do while (i<Chatfls) %>
<option value="<%=i%>" <%if RoomType=i then response.write "selected"%>><%=chatfl(i)%></option>
<%
 i=i+1
 loop %>
</select> </td>
            </tr>
          <tr>
	    <td  align=left height="26" width="127">����������ѡ��</td>
	    <td height="26" width="455" >
	    
<SELECT name=ID2>
<option selected value="��ѡ��">��ѡ��</option>
<%
sql="select * from D_2 where id1=1 order by id2 asc"
set rsm=conn.execute (sql)
%>
<%
do while not (rsm.eof or err)
%> 
<option value="<%=rsm("id2")%>" <%if rsm("id2")=id2 then response.write "selected"%>><%=rsm("name2")%></option>

<% rsm.moveNext
  loop
  rsm.close
%>
</SELECT> 

 </td>
	      </tr>
          <tr>
	    <td  align=left height="26" width="127">�Ƿ�����ڹ����б�</td>
	    <td height="26" width="455" > 
        
<select size="1" name="liebiao">

<option value="0" <%if liebiao=0 then response.write "selected"%>>��</option>
<option value="1" <%if liebiao=1 then response.write "selected"%>>��</option>
        </select></td>
	      </tr><% if ff<2 then%>
          <tr>
	    <td  align=left height="88" width="127">��֤��Ա��</td>
	    <td height="88" width="455" ><textarea rows="8" name="vip" cols="50"><%=vip%></textarea></td>
	      </tr>
<% end if %>
          <tr>
            <td width="586" height="42" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <p align="left">����֤��Ա��Ϊ�յ�ʱ��ֻ����֤��Ա���ܽ��뱾�����ҡ���֤��Ա|�ָ�ÿ�����ֺ�����һ��|���ţ����ӣ� 
            ����|����|����|&nbsp; 
            <br>
			����֤��Ա������ʱ���οͲ�Ӧ����롣</td>
            </tr>

          <tr>
            <td width="586" height="57" align="center" colspan="2" bgcolor="#FFFFFF">
            

            <input type="submit" value=" ȷ���޸� " name="B1"></td>
            </tr>

</form>
        </table>
        </center>
      </div>
            
          </td>
          </tr>
        <tr>
          <td width="530" height="1" align="center" valign="top"></td>
          </tr>
           
          
        </table>
        </div>

</body>

</html>