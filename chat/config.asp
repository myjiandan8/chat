<%
dim WebName,Ver,gbver,downpath,sessionvar,total,online_topnum,online_topdate
dim DB_diary,DB_news,DB_down,DB_article,DB_gb,DB_admin,DB_sites,DB_model,index_subject
dim indexnews,indexarticle,indexsoft,newsperpage,diaryperpage,gbperpage,web_url
dim gbrepperpage,softperpage,remarkperpage,newsoft,articleperpage,toparticlenum
dim topsoftnum,coolsitesperpage,newcoolsite,bestcoolsite,indexcoolsite,indexfriendlink
dim adflperpage,qq,age,sex,country,from,tablewidth,gbdomain,guestbookname,themepath

									  '���Թؼ��ֹ���
const replace_word="�����,��,TMD,fuck,bitch,shit,�����,�԰�,����,kao,falundafa,falun,������,վ��,Ѳվ,��ʲ,������,������,��,����Ƭ,����,[IMG]/upload/,[IMG],.jpg[/IMG],.gif[/IMG],[color=#,[/color],[,]"  

'����IP
const replace_ip="255.255.255.*|255.255.255.198|255.255.255.*|255.255.255.*"

qq="779811"						  '����Ϊ������Ϣ
sex="male"
age="23"
country="china"
from="guang zhou"
email="Eshop@liaowan.com"

'index_subject="images/user.gif"		  '����logo����·��
web_url="http://www.liaowan.com"	  '������ַ
sessionvar="*#06#$S.Sams"			  '��̨�����session�����趨
'WebName="��Ƶ���� �������� ���� ��������"	  '����վ������
Ver="liaowan.com"					  '�汾��Ϣ������html
downpath="download/"				  '�������ĵ�������Ŀ¼

DSN="data/" & "#~-+r-5&A"			   '���ݿ�ǰ��
DB_diary= DSN & "diary.mdb"            '���¶�̬�����ݿ�·��
DB_news= DSN & "news.mdb"              '���ŵ����ݿ�·��
DB_down= DSN & "down.mdb"              '����ϵͳ�����ݿ�·��
DB_article= DSN & "article.mdb"        '����ϵͳ�����ݿ�·��
DB_gb= DSN & "gb.mdb"                  '���Բ������ݿ�·��
DB_admin= DSN & "admin.mdb"            '����Ա��վ�㳣����Ϣ�����ݿ�·��
DB_model= DSN & "model.mdb"            'ģ�����ĵ����ݿ�·��
DB_sites= DSN & "sites.mdb"            '��Ʒ���ӵ����ݿ�·��
DB_pic= DSN & "pic.mdb"                'ͼƬ��������ݿ�·��

'tablewidth=778						  'վ����Ŀ��
indexnews=8						      '��ҳ��ʾ�����ŵ�����
indexarticle=8						  '��ҳ��ʾ�����µ�ƪ��
indexsoft=10						  '��ҳ��ʾ�ĳ���ĸ���
newsperpage=15						  'ÿҳ����ʾ�����ŵ�����
diaryperpage=1						  '��ҳ��ʾ��ÿ�������ƪ��
gbperpage=8					          'ÿҳ����ʾ����������
gbrepperpage=1						  '���Իظ�����ʾ��Ŀ
softperpage=9						  'ÿҳ��ʾ�ĳ������
remarkperpage=3						  'ÿҳ��ʾ�ĳ������۵�����
newsoft=10					          '��ʾ���µ�X������
articleperpage=10					  'ÿҳ��ʾ�����µ�ƪ��
toparticlenum=6						  '��ʾ�Ķ���������Xƪ����
topsoftnum=10						  '��ʾ���ش�������X������
coolsitesperpage=8					  'ÿҳ��ʾ�Ŀ�վ�ĸ���
pic=9   					          'ÿҳ��ʾ��ͼƬ�ĸ���
model=5 				                  'ÿҳ��ʾ��ģ��ĸ���
newcoolsite=1						  '��ʾ�����¼���Ŀ�վ�ĸ���
bestcoolsite=1						  '��ʾ���Ƽ���վ�ĸ���
indexcoolsite=2						  '��ҳ��ʾ�Ŀ�վ�ĸ���
indexfriendlink=5					  '��ҳ��ʾ���������ӵĸ���
adflperpage=12						  '���ӹ���ҳ��ÿҳ��ʾ�����Ӹ���

Set BChatconn 	= Server.CreateObject("ADODB.Connection") 'bchat��Ա���ݿ� ���������ݿ�
Set MeChatconn 	= Server.CreateObject("ADODB.Connection") 'mechat��Ա���ݿ� ���������ݿ�

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