<%sub admin_login()
opengb
sql="select * from admin"
set rs2=conn.execute(sql)
if request.cookies("NGB")("adminname")=rs2("admin_name") and request.cookies("NGB")("adminpwd")=rs2("admin_password") then
ivalue1=request.cookies("NGB")("adminname")
ivalue2=request.cookies("NGB")("adminpwd")
else
ivalue1=""
ivalue2=""
end if%>
<FORM action=admin_gb.asp?login=yes method=post>
  <TABLE width="90%" align=center border=0>
    <TBODY> 
    <TR> 
      <TD> 
        <P><A class=buttonview href="index.asp" 
      target=_self>�쿴���� </A></P>
        <P class=messagetext>��¼.<BR>
          ������������������ƺ�����.<BR>
          <BR>
          ���� 
          <INPUT type=text maxLength=20 name=adminname class="input2" value="<%=ivalue1%>">
          <br>
          ����
<INPUT type=password maxLength=20 name=adminpwd class="input2" value="<%=ivalue2%>">
        </P>
        <P> 
          <INPUT class=buttonsend type=submit value=����>
        </P>
      </TD>
    </TR>
    </TBODY> 
  </TABLE>
</FORM>
<%rs2.close
set rs2=nothing
end sub%>