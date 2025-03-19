<!--#include file="mdb.asp"-->
<%
dim djid
djid=cint(request.querystring("dj_id"))
sql="select * from dj where dj_id="&djid
set rs=conn.execute(sql)
sql="UPDATE dj SET error = error + 1 where dj_id="&djid
conn.execute(sql)
rs.close
set rs=nothing
Response.write "<script language = 'javascript'>alert('谢谢你发现了错误的链接,感谢你向我们报告了错误,我们会尽快恢复歌曲连接!');"
Response.write "window.document.location.href='3d.asp?dj_id="&djid&"';</script>"
%>                                   