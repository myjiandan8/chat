<%  Call openbbsconn
	set rs=bbsconn.execute ("select factionname,buildman from [faction] where roomid=" & rmport)
	if rs.eof and rs.bof then
%> 

�㻹û�г�ʼ����ľ��ֲ����ݣ�<a href="peizhi.asp">��������ֲ���</a>

<% 	response.end 
	
	else
	buildman=rs("buildman")
	factionname=rs("factionname")
 	rs.close
	end if
%>