<HTML><HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<TITLE>����-������������-LWOO.NET</TITLE>
<!--����վ��Ȩ��������ҵ����-->
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<LINK href="../images/Style.css" rel=stylesheet>
<BODY bgColor=#D6D3CE leftMargin=0 topMargin=0>


<CENTER>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="558" id="AutoNumber4" height="447">

    <tr>
      <td width="556" height="423" valign="top">
      
      <div align="center">

        <center>
        <span lang="en-us">&nbsp;</span><br>
        <u><font size="2">�����������������б�</font></u><BR>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="90%" id="AutoNumber5" height="174">
          <tr>
            <td width="100%" height="12" align="center"></td>
          </tr>
          <tr>
            <td width="100%" height="24">
	
            <p>
            <img border="0" src="../pic/img/mini_query.gif">ѡ����ʾ ��<img border="0" src="../pic/img/pagelist.gif"><a href="REG_FACE.asp?e=GG">��ʽ��������</a>&nbsp; <span lang="en-us">&nbsp;&nbsp; </span> 
            <img border="0" src="../pic/img/pagelist.gif"><a href="REG_FACE.asp?e=MM">Ůʿ��������</a></td>
          </tr>
          <tr>
            <td width="100%" height="20">
&nbsp;&nbsp;&nbsp;
            <img border="0" src="../pic/img/pagelist.gif">��ǰ��ʾ��<font color="#FF0000">
<%
e=Request("e")
if e="" then
e="GG"
end if


i=Request("vi")

if i="" then

i=0
xx=60
end if

if i=60 then

i=60
xx=120
end if

if i=120 then

i=120
xx=174

end if



%>
<% if e="GG" then%>
��ʿ��������
<% elseif e="MM" then%>
Ůʿ��������
<% end if %>

<%=i+1%>--<%=xx%> </font>
</td>
          </tr>
          <tr>
            <td width="100%" height="22">
<span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <img border="0" src="../pic/img/pagelist.gif"><span lang="en-us">
</span>��174����ʽ&nbsp; <a href="REG_FACE.asp?e=<%=e%>">��һҳ</a>&nbsp;&nbsp;
<a href="REG_FACE.asp?e=<%=e%>&vi=60">�ڶ�ҳ</a>&nbsp;&nbsp;&nbsp;
<a href="REG_FACE.asp?e=<%=e%>&vi=120">����ҳ</a>


</td>
          </tr>
          <tr>
            <td width="100%" height="72" valign="top">

<%
do while (i<xx)
%>

    
     <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber6" height="21">
       <tr>
         <td width="16%" height="15" align="center" valign="top">��
         
                  
         <% i=i+1 %>
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7">
           <tr>
             <td width="100%" align="center">��
             <img border="0" src="/PIC/FACE/<%=e%><%=I%>.gif">
             </td>
           </tr>
           <tr>
             <td width="100%" align="center"> <%=I%> </td>
           </tr>
         </table>
         ��

         </td>
         <td width="16%" height="15" align="center" valign="top">��
         
                  <% i=i+1 %>
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7">
           <tr>
             <td width="100%" align="center">��
             <img border="0" src="/PIC/FACE/<%=e%><%=I%>.gif">
             </td>
           </tr>
           <tr>
             <td width="100%" align="center"> <%=I%> </td>
           </tr>
         </table>
         </td>
         <td width="17%" height="15" align="center" valign="top">��
         
                  <% i=i+1 %>
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7">
           <tr>
             <td width="100%" align="center">��
             <img border="0" src="/PIC/FACE/<%=e%><%=I%>.gif">
             </td>
           </tr>
           <tr>
             <td width="100%" align="center"> <%=I%> </td>
           </tr>
         </table>
         </td>
         <td width="17%" height="15" align="center" valign="top">��
                  <% i=i+1 %>
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7">
           <tr>
             <td width="100%" align="center">��
             <img border="0" src="/PIC/FACE/<%=e%><%=I%>.gif">
             </td>
           </tr>
           <tr>
             <td width="100%" align="center"> <%=I%> </td>
           </tr>
         </table>
         </td>
         <td width="17%" height="15" align="center" valign="top">��
                  <% i=i+1 %>
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7">
           <tr>
             <td width="100%" align="center">��
             <img border="0" src="/PIC/FACE/<%=e%><%=I%>.gif">
             </td>
           </tr>
           <tr>
             <td width="100%" align="center"> <%=I%> </td>
           </tr>
         </table>
         </td>
         <td width="17%" height="15" align="center" valign="top">��
                  <% i=i+1 %>
         <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber7">
           <tr>
             <td width="100%" align="center">��
             <img border="0" src="/PIC/FACE/<%=e%><%=I%>.gif">
             </td>
           </tr>
           <tr>
             <td width="100%" align="center"> <%=I%> </td>
           </tr>
         </table>
         </td>
       </tr>
       <tr>
         <td width="16%" height="6"> </td>
         <td width="16%" height="6"> </td>
         <td width="17%" height="6"> </td>
         <td width="17%" height="6"> </td>
         <td width="17%" height="6"> </td>
         <td width="17%" height="6"> </td>
       </tr>
</table>
     <% loop %>
     </td>
          </tr>
          <tr>
            <td width="100%" height="1"></td>
          </tr>
          <tr>
            <td width="100%" height="20" align="center">������www.LiaoWan.com�ṩ��<br>
          �Ķ���Ϻ���<a href="javascript:window.close()" style="color: #039"><font color="#ff6600">�رմ���</font></a></td>
          </tr>
          <tr>
            <td width="100%" height="11"></td>
          </tr>
        </table>
        </center>
      </div>
      </td>
    </tr>
    </table>
  </center>
</div>
<br>