<!--数据库连接文件#include file="INC/SQLconn.asp" -->
<%
Roomid	= Clng(Request("Roomid"))
t	= Cint(Request("t"))

if Roomid < 5000 or Roomid>8000 then response.end
Call openchatconn
set rs=server.createObject("adodb.recordset")
sql="select * from [web] where ID=" & Roomid
rs.open sql,Chatconn,1,3
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if rs.eof and rs.bof then response.end
if rs("roomadd")=1 then response.end
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
if Request.Cookies("IsFirst" & port)=fail then 

LASTIP = RS("LASTIP")
NEWIP = REQUEST.servervariables("REMOTE_ADDR") 

IF CSTR(Month(RS("DATE"))) <> CSTR(Month(DATE())) THEN    

       RS("DATE") = DATE()                      
       RS("YESTERDAY") = RS("TODAY")            
       RS("BMONTH") = RS("MONTH")
       RS("MONTH") = 1                          
       RS("TODAY") = 1                          
       RS.Update                                
ELSE
   	IF CSTR(Day(RS("DATE"))) <> CSTR(Day(DATE())) THEN    
       RS("DATE") = DATE()                      
       RS("YESTERDAY") = RS("TODAY")            
       RS("TODAY") = 1                          
       RS.Update                                
   	END IF
	response.Cookies("IsFirst"  & port)=true
END IF

'检查COOKIES是否打开
IF not IsCookiesOpen then 
RS("TOTAL")  =  RS("TOTAL") + 1               
RS("TODAY") =  RS("TODAY") + 1               
RS("MONTH")  =  RS("MONTH") + 1               
RS.Update      
end if

end if
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
roomname=rs("roomname")
if t="" then t=0
%>
 /**笑我文哥脚本编写AD框架置换 | 聊湾碧聊通房间JS脚本 碧聊通申请地址http://liaowan.com/info/blt.asp **/
document.write("<a target=_blank href=http://liaowan.com/info/blt.asp><img border=0 src=http://liaowan.com/ad/blt/blt4.gif></a><br>");
<% if t=1 then %>
if (top.document.all.tags("frameset")[0].rows!="41,*"||parent.document.getElementsByTagName("frameset")[0].children[0].src!="http://liaowan.com/chat/open.asp?roomname=<%=roomname%>&id=<%=roomid%>"){
top.document.all.tags("frameset")[0].rows="41,*";
top.af.location="http://liaowan.com/chat/open.asp?roomname=<%=roomname%>&id=<%=roomid%>";
} 
<% elseif t=2 then %>
if (top.document.all.tags("frameset")[0].rows!="0,*"){
top.document.all.tags("frameset")[0].rows="0,*";
} 
<% end if %>