<%  Call openbbsconn
	set rs=bbsconn.execute ("select id,bbsname,index_logo from bbsconfig where roomid="& rmport &" and nice=1 order by SortNum")
	if rs.eof and rs.bof then
%> 

�㻹û�г�ʼ�������̳��<a href="peizhi.asp">�������ʼ����̳</a>

<% 	response.end 
	
	else
	bbsnames=rs("bbsname")
	index_logo=rs("index_logo")
	vid=rs("id")
 	rs.close
	end if
%>