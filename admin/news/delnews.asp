<!-- #include file="../sys/sys.asp"-->
<!--#include file="../cdmdb.asp"-->
<!--#include file="../checkUser.asp"-->
<!--#include file="../admin.asp"-->
<LINK href="../../ADMINLW/img/lw.css" type=text/css rel=stylesheet>

<%
'ɾ����¼

id=request("id")



if id<>"" and request("queding")="" then   %>

<script language="vbscript">
	if msgbox ("ɾ�����޷��ָ������ţ������ɾ�������飬���������������Ҳ����ɾ����",vbYesNo+vbQuestion,"ȷ��ɾ��")=vbYes then
	   window.location.href="delnews.asp?id=<%=id%>&queding=OK"
	   else
	   window.location.href="<%=session("adminOldUrl")%>"
	end if
</script>

<% 
end if


if id<>"" and request("queding")<>"" then 



	if instr(id,",")>0 then
		idArr=split(id,",")
		for i = 0 to ubound(idarr)
	       		idc=clng(idarr(i))

			sql="select * from SYS_NEWS where ID like "& idc &""
			set rsv=conn.execute (sql)


			if rsv("nzusf")=1 then
			
			sql="delete from SYS_NEWS where ID like "&rsv("ID")&""
			conn.Execute ( sql )
			sql2="delete from SYS_NEWS where nzu like "&rsv("ID")&""
			conn.Execute ( sql2 )
			
			else
			
			sql="delete from SYS_NEWS where ID like "&rsv("ID")&""
			conn.Execute ( sql )
			
			end if


			next
		
     else
			
			sql="select * from SYS_NEWS where ID like "& id &""
			set rsv=conn.execute (sql)


			if rsv("nzusf")=1 then
			
			sql="delete from SYS_NEWS where ID like "&rsv("ID")&""
			conn.Execute ( sql )
			sql2="delete from SYS_NEWS where nzu like "&rsv("ID")&""
			conn.Execute ( sql2 )
			
			else
			
			sql="delete from SYS_NEWS where ID like "&rsv("ID")&""
			conn.Execute ( sql )
			
			end if
     end if
		
		


%>
<script language=vbs>
<!--
        MsgBox "ɾ���ɹ���"
        window.location.href="<%=session("adminOldUrl")%>"

-->
</script>

<%  
end if
%>




<% if id="" and request("queding")="" then   %>
<script language=vbs>
<!--
        MsgBox "�Ƿ�������"
        window.location.href="<%=session("adminOldUrl")%>"
-->
</script>
<% end if %>