<%
dim WebName,Ver,gbver,downpath,sessionvar,total,online_topnum,online_topdate
dim DB_diary,DB_news,DB_down,DB_article,DB_gb,DB_admin,DB_sites,DB_model,index_subject
dim indexnews,indexarticle,indexsoft,newsperpage,diaryperpage,gbperpage,web_url
dim gbrepperpage,softperpage,remarkperpage,newsoft,articleperpage,toparticlenum
dim topsoftnum,coolsitesperpage,newcoolsite,bestcoolsite,indexcoolsite,indexfriendlink
dim adflperpage,qq,age,sex,country,from,tablewidth,gbdomain,guestbookname,themepath

									  '留言关键字过滤
const replace_word="妈妈的,靠,TMD,fuck,bitch,shit,他妈的,性爱,法轮,kao,falundafa,falun,胡锦涛,站长,巡站,布什,江泽民,操你妈,操,三级片,老子,[IMG]/upload/,[IMG],.jpg[/IMG],.gif[/IMG],[color=#,[/color],[,]"  

'过滤IP
const replace_ip="255.255.255.*|255.255.255.198|255.255.255.*|255.255.255.*"

qq="779811"						  '以下为个人信息
sex="male"
age="23"
country="china"
from="guang zhou"
email="Eshop@liaowan.com"

'index_subject="images/user.gif"		  '首面logo调用路径
web_url="http://www.liaowan.com"	  '域名地址
sessionvar="*#06#$S.Sams"			  '后台管理的session变量设定
'WebName="视频聊天 语音聊天 聊湾 蓝天语音"	  '设置站点名称
Ver="liaowan.com"					  '版本信息，可用html
downpath="download/"				  '下载中心的软件存放目录

DSN="data/" & "#~-+r-5&A"			   '数据库前面
DB_diary= DSN & "diary.mdb"            '最新动态的数据库路径
DB_news= DSN & "news.mdb"              '新闻的数据库路径
DB_down= DSN & "down.mdb"              '下载系统的数据库路径
DB_article= DSN & "article.mdb"        '文章系统的数据库路径
DB_gb= DSN & "gb.mdb"                  '留言簿的数据库路径
DB_admin= DSN & "admin.mdb"            '管理员及站点常用信息的数据库路径
DB_model= DSN & "model.mdb"            '模板中心的数据库路径
DB_sites= DSN & "sites.mdb"            '精品链接的数据库路径
DB_pic= DSN & "pic.mdb"                '图片管理的数据库路径

'tablewidth=778						  '站点表格的宽度
indexnews=8						      '首页显示的新闻的条数
indexarticle=8						  '首页显示的文章的篇数
indexsoft=10						  '首页显示的程序的个数
newsperpage=15						  '每页所显示的新闻的条数
diaryperpage=1						  '首页显示的每日碎语的篇数
gbperpage=8					          '每页所显示的留言条数
gbrepperpage=1						  '留言回复的显示数目
softperpage=9						  '每页显示的程序个数
remarkperpage=3						  '每页显示的程序评论的条数
newsoft=10					          '显示最新的X个程序
articleperpage=10					  '每页显示的文章的篇数
toparticlenum=6						  '显示阅读次数最多的X篇文章
topsoftnum=10						  '显示下载次数最多的X个程序
coolsitesperpage=8					  '每页显示的酷站的个数
pic=9   					          '每页显示的图片的个数
model=5 				                  '每页显示的模板的个数
newcoolsite=1						  '显示的最新加入的酷站的个数
bestcoolsite=1						  '显示的推荐酷站的个数
indexcoolsite=2						  '首页显示的酷站的个数
indexfriendlink=5					  '首页显示的友情链接的个数
adflperpage=12						  '链接管理页面每页显示的链接个数

Set BChatconn 	= Server.CreateObject("ADODB.Connection") 'bchat会员数据库 聊天室数据库
Set MeChatconn 	= Server.CreateObject("ADODB.Connection") 'mechat会员数据库 聊天室数据库

Sub OpenBChatConn()
BChatconn.Open = "liaowanbchatdb"
End Sub

Sub OpenMeChatConn()
MeChatconn.Open = "liaowanmechatdb"
End Sub

sub Closedb()
Set BChatconn = Nothing
Set MeChatconn = Nothing
end sub


%>