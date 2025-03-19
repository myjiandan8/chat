<%sub admin_cp()
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
<FORM action=gbadmin_cp.asp?cp=yes method=post>
  <TABLE width="90%" align=center border=0>
    <TBODY> 
    <TR> 
      <TD> 
        <P><A class=buttonview href="index.asp" 
      target=_self>察看留言 </A></P>
        <P class=messagetext>更改密码.<BR>
          请在下面输入管理名称、旧密码和新密码.<BR>
          <BR>
          名称&nbsp;&nbsp;&nbsp;&nbsp;
          <INPUT type=text maxLength=20 name=adminname class="input2" value="<%=ivalue1%>">
          <br>
          旧密码 
          <INPUT type=password maxLength=20 name=adminpwd class="input2" value="<%=ivalue2%>">
          <br>
          新密码 
          <input type=password maxlength=20 name=Newpwd class="input2">
          <br>
          请确认
<input type=password maxlength=20 name=Newpwd2 class="input2">
        </P>
        <P> 
          <INPUT class=buttonsend type=submit value=继续>
        </P>
      </TD>
    </TR>
    </TBODY> 
  </TABLE>
</FORM>
<%rs2.close
set rs2=nothing
end sub%>