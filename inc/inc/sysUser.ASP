<%
'返回帐号和密码是否正确
Function Upuser(user_name,pass_word)

    sql="select uid from [User] where name='" & trim(user_name) & "' and passwd='" & trim(pass_word) & "'  "
	set rs = conn.Execute(sql)
	
    if not (rs.eof or err) then
    	Upuser=rs("uid")
    else 
		Upuser=0
	end if
	rs.close
	
end Function
%>