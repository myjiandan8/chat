<%sub adminmenu()%>
<table width="96%" border="0" cellspacing="1" cellpadding="6" align="center" bgcolor="#293863" height="229">
        <tr> 
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_login.asp">������ҳ</a> 
      <%if session("adminlogin")=sessionvar then%>
      [<a href="admin_login.asp?action=logout">�˳���¼</a>] 
      <%end if%>
          </td>
        </tr>
        <tr> 
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_vote.asp">ͶƱ����</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_diary.asp">�ռǹ���</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_news.asp">���Ź���</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_article.asp">���¹���</a></td>
        </tr>
		 <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_pic.asp">ͼƬ����</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_down.asp">���ع���</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_model.asp">ģ�����</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_coolsites.asp">��վ����</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_friendlink.asp">���ӹ���</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="guestbook.asp" target="_bantk">���Թ���</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_admin.asp">����Ա����&amp;����Ա�����</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="1"><img src="images/b.gif" width="18" height="13"> <a href="admin_recount.asp" target="_blank">��ҳͳ�ƶ��ڸ���</a></td>
        </tr>
      </table>
      <br>
<%end sub%>