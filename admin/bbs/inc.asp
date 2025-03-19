<%  Call openbbsconn
	set rs=bbsconn.execute ("select id,bbsname,index_logo from bbsconfig where roomid="& rmport &" and nice=1 order by SortNum")
	if rs.eof and rs.bof then
%> 

你还没有初始化你的论坛，<a href="peizhi.asp">点这里初始化论坛</a>

<% 	response.end 
	
	else
	bbsnames=rs("bbsname")
	index_logo=rs("index_logo")
	vid=rs("id")
 	rs.close
	end if
%>