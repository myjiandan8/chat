<!--#include file="../../inc/sqlconn.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../../INC/Chatfl.asp" -->

<%
	if Request("roomtype")<>"" and Request("id2")<>"" and Request("liebiao")<>"" then

		
		sql="select roomtype,id2,liebiao,vip from web where id=" & rmport
		rs.open sql,chatconn,1,3
		rs("roomtype") =Request("roomtype")
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

<form name="form5" method="post" action="regedit_����(1).asp">
          <tr>
            <td width="586" bgcolor="#0075F7" height="28" colspan="2"><b>
            <font color="#FFFFFF">&nbsp;ע�ᱸ�����ϱ��</font></b></td>
          </tr>

          <tr>
          
            <td width="586" height="21" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
       <tr>
          
            <td width="586" height="20" align="right" bgcolor="#F9F9F7" colspan="2">
            <p align="left">��</td>
            </tr>
          <tr>
	    <td width="149" align=right height="10">��Ʒ��ţ�</td>
	    <td width="433" height="10"> <%=rmport%></td>
	      </tr>
          <tr>
	    <td width="149" align=right height="9">�������ƣ�</td>
	    <td width="433" height="9"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="12">�����������</td>
	    <td width="433" height="12"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="11">�����Ҳ�Ʒ���ͣ�</td>
	    <td width="433" height="11"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="9">��ͨ���ڣ�</td>
	    <td width="433" height="9"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="10">����ʱ�䣺</td>
	    <td width="433" height="10"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="11">���䷨�˴���(׼����)��</td>
	    <td width="433" height="11"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="10">�������֤���룺</td>
	    <td width="433" height="10"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="23">ӵ�й�˾���ƣ�<br>
		����˾�������ȫ�ƣ�</td>
	    <td width="433" height="23"> ��</td>
	      </tr>
			<tr>
	    <td width="149" align=right height="7">��˾Ӫҵִ�ձ�ţ�</td>
	    <td width="433" height="7"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="6"></td>
	    <td width="433" height="6"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="10"></td>
	    <td width="433" height="10"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="7"></td>
	    <td width="433" height="7"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="12"></td>
	    <td width="433" height="12"> </td>
	      </tr>
			<tr>
	    <td width="149" align=right height="37">��</td>
	    <td width="433" height="37"> ��</td>
	      </tr>
          <tr>
          
            <td width="149" height="1" align="right" bgcolor="#F9F9F7">
            <p align="left">���������ͣ�</td>
            <td width="433" height="1" bgcolor="#F9F9F7"> 
        
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
	    <td  align=left height="9" width="149">����������ѡ��</td>
	    <td height="9" width="433" >
	    
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
	    <td  align=left height="6" width="149">�Ƿ�����ڹ����б�</td>
	    <td height="6" width="433" > 
        
<select size="1" name="liebiao">

<option value="0" <%if liebiao=0 then response.write "selected"%>>��</option>
<option value="1" <%if liebiao=1 then response.write "selected"%>>��</option>
        </select></td>
	      </tr>
          <tr>
	    <td  align=left height="88" width="149">��֤��Ա��</td>
	    <td height="88" width="433" ><textarea rows="8" name="vip" cols="50"><%=vip%></textarea></td>
	      </tr>

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