<%
if session("admin")="" then
response.redirect "default.asp"
else
if session("flag")>1 then
response.write "<br><p align=center>��û�в�����Ȩ��</p>"
response.end
end if
end if

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title></title>
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<link rel="stylesheet" type="text/css" href="3.css">
<!--���ݿ������ļ�#include file="../cool.asp" -->
<LINK href="../../images/Style.css" rel=stylesheet>
<!--#include file="code.asp"-->
<%
   	const MaxPerPage=10
   	dim totalPut   
   	dim CurrentPage
   	dim TotalPages
   	dim i,j
   	dim idlist
   	dim title

	title=request("title")
   	if not isempty(request("page")) then
      		currentPage=cint(request("page"))
   	else
      		currentPage=1
   	end if
  	if not isempty(request("selAnnounce")) then
     		idlist=request("selAnnounce")
     		if instr(idlist,",")>0 then
			dim idarr
			idArr=split(idlist)
			dim id
		for i = 0 to ubound(idarr)
	       		id=clng(idarr(i))
	       		call deleteannounce(id)
		next
     		else
			call deleteannounce(clng(idlist))
     		end if
  	end if 
   	dim sql
   	dim rs
%>

</head>
<body>
<p align="center"><font color="red" size="4">�������� </font><a href="Add.asp" target="frmright"><font color="red" size="4">��������</font></a></p>
<div align="center"><center>

<table border="0" width="92%" cellspacing="0" cellpadding="0">
  <tr>
    <td width="100%"><p align="center"><br>ɾ��������ѡ���������Ȼ����ɾ��<br>
<form name="searchsoft" method="POST" action="del.asp">
��������:  <input class=smallInput type="text" name="txtitle" size="13"><input type="submit" value="�� ѯ" name="title">
</form>
<form method=Post action="del.asp">
    <div align="center">
<%
	if title<>"" then
	sql="select * from book where title like '%"&trim(title)&"%' order by id desc"
	else
	sql="select * from book order by id desc"
	end if
	Set rs= Server.CreateObject("ADODB.Recordset")
	rs.open sql,conn,1,1

  	if rs.eof and rs.bof then
       		response.write "<p align='center'> �� û �� �� �� �� �� </p>"
   	else
      		totalPut=rs.recordcount
      		if currentpage<1 then
          		currentpage=1
      		end if
      		if (currentpage-1)*MaxPerPage>totalput then
	   		if (totalPut mod MaxPerPage)=0 then
	     			currentpage= totalPut \ MaxPerPage
	  		else
	      			currentpage= totalPut \ MaxPerPage + 1
	   		end if

      		end if
       		if currentPage=1 then
           		showpage totalput,MaxPerPage,"del.asp"
            		showContent
            		showpage totalput,MaxPerPage,"del.asp"
       		else
          		if (currentPage-1)*MaxPerPage<totalPut then
            			rs.move  (currentPage-1)*MaxPerPage
            			dim bookmark
            			bookmark=rs.bookmark
           			showpage totalput,MaxPerPage,"del.asp"
            			showContent
             			showpage totalput,MaxPerPage,"del.asp"
        		else
	        		currentPage=1
           			showpage totalput,MaxPerPage,"del.asp"
           			showContent
           			showpage totalput,MaxPerPage,"del.asp"
	      		end if
	   	end if
   	rs.close
   	end if
	        
   	set rs=nothing  
   	conn.close
   	set conn=nothing
  
   	sub showContent
       	dim i
	   i=0
%><br>&nbsp;
      <div align="center"><center><table cellspacing="0" width="589" bordercolorlight="#9CC1D5" bordercolordark="#FFFFFF" border="1">
        <tr>
          <td width="66" align="center" bgcolor="#9CC1D5" height="20">�ظ�����</td>
          <td width="437" align="center" bgcolor="#9CC1D5">��������</td>
          <td width="78" align="center" bgcolor="#9CC1D5"><input type='submit' class=buttonface value='ɾ ��'></td>
        </tr>
<%do while not rs.eof%>
        <tr>
          <td height="23" width="66" bgcolor="#CBDBE6"><p align="center"><a href='reply.asp?id=<%=rs("id")%>' target="frmright"><img src="IMAGES/Rethread.gif" width="45" height="18" border="0" alt="�ظ�����"></a></td>
          <td width="437" bgColor="#E4EEF7" onmouseover="javascript:this.bgColor='#FFFFFF';this.style.cursor='default';" onmouseout="javascript:this.bgColor='E4EEF7';"><p><font color=red>������:</font><%=rs("name")%> 
                                                &nbsp;<font color=red>EMAIL:</font><%=rs("email")%>&nbsp;&nbsp;&nbsp;<br><br><font color="#000066">��������:</font><%=rs("content")%></td>
          <td width="78" bgcolor="#C8D8E0"><p align="center"><input type='checkbox' name='selAnnounce' value='<%=cstr(rs("ID"))%>'></td>
        </tr>
<%
	i=i+1
	      if i>=MaxPerPage then exit do
	      rs.movenext
	loop
%>
      </table>
      </center></div>
                            <br><%
   end sub 

function showpage(totalnumber,maxperpage,filename)
  dim n
  if totalnumber mod maxperpage=0 then
     n= totalnumber \ maxperpage
  else
     n= totalnumber \ maxperpage+1
  end if
  response.write "<p align='center'>&nbsp;"
  if CurrentPage<2 then
    response.write "<font color='#000080'>��ҳ ��һҳ</font>&nbsp;"
  else
    response.write "<a href="&filename&"?page=1>��ҳ</a>&nbsp;"
    response.write "<a href="&filename&"?page="&CurrentPage-1&">��һҳ</a>&nbsp;"
  end if
  if n-currentpage<1 then
    response.write "<font color='#000080'>��һҳ βҳ</font>"
  else
    response.write "<a href="&filename&"?page="&(CurrentPage+1)&">"
    response.write "��һҳ</a> <a href="&filename&"?page="&n&">βҳ</a>"
  end if
   response.write "<font color='#000080'>&nbsp;ҳ�Σ�</font><strong><font color=red>"&CurrentPage&"</font><font color='#000080'>/"&n&"</strong>ҳ</font> "
    response.write "<font color='#000080'>&nbsp;��<b>"&totalnumber&"</b>������ <b>"&maxperpage&"</b>������/ҳ</font> "
       
end function

  sub deleteannounce(id)
    dim rs,sql
    set rs=server.createobject("adodb.recordset")
    sql="delete from book where id="&cstr(id)
    conn.execute sql
    if err.Number<>0 then
	err.clear
	response.write "ɾ �� ʧ �� !<br>"
    else
        response.write "�����ɹ���<br>"
    end if
  End sub
%>
                        </form>

    </div></td>
  </tr>
</table></center></div>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>��ע��:</font>������԰廹��һЩС����,���ǲ���ɾ�����һ��������,��������.�м�!!!!</p>
</form>
</body>
</html>
