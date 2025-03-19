<%sub adminmenu()%>
<table width="96%" border="0" cellspacing="1" cellpadding="6" align="center" bgcolor="#293863" height="229">
        <tr> 
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_login.asp">管理首页</a> 
      <%if session("adminlogin")=sessionvar then%>
      [<a href="admin_login.asp?action=logout">退出登录</a>] 
      <%end if%>
          </td>
        </tr>
        <tr> 
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_vote.asp">投票管理</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_diary.asp">日记管理</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_news.asp">新闻管理</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_article.asp">文章管理</a></td>
        </tr>
		 <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_pic.asp">图片管理</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_down.asp">下载管理</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_model.asp">模板管理</a></td>
        </tr>
        <tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_coolsites.asp">酷站管理</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_friendlink.asp">链接管理</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="guestbook.asp" target="_bantk">留言管理</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="17"><img src="images/b.gif" width="18" height="13"> <a href="admin_admin.asp">管理员密码&amp;管理员组管理</a></td>
        </tr>
		<tr>
    <td bgcolor="#f3f3f3" height="1"><img src="images/b.gif" width="18" height="13"> <a href="admin_recount.asp" target="_blank">首页统计定期更新</a></td>
        </tr>
      </table>
      <br>
<%end sub%>