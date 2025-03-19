<%  Call openbbsconn
	set rs=bbsconn.execute ("select factionname,buildman from [faction] where roomid=" & rmport)
	if rs.eof and rs.bof then
%> 

你还没有初始化你的俱乐部数据，<a href="peizhi.asp">点这里俱乐部！</a>

<% 	response.end 
	
	else
	buildman=rs("buildman")
	factionname=rs("factionname")
 	rs.close
	end if
%>