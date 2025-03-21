if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_forum_bbsconfig]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[forum] DROP CONSTRAINT FK_forum_bbsconfig
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_reforum_forum]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[reforum] DROP CONSTRAINT FK_reforum_forum
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_calendar_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[calendar] DROP CONSTRAINT FK_calendar_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_consort_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[consort] DROP CONSTRAINT FK_consort_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_faction_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[faction] DROP CONSTRAINT FK_faction_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_favorites_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[favorites] DROP CONSTRAINT FK_favorites_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_forum_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[forum] DROP CONSTRAINT FK_forum_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_message_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[message] DROP CONSTRAINT FK_message_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_prison_user]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[prison] DROP CONSTRAINT FK_prison_user
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[bbsconfig]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[bbsconfig]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[calendar]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[calendar]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[clubconfig]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[clubconfig]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[consort]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[consort]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[faction]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[faction]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[favorites]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[favorites]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[forum]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[forum]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[link]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[link]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[log]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[log]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[menu]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[menu]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[message]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[message]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[online]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[online]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[prison]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[prison]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[reforum]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[reforum]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[user]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[user]
GO

CREATE TABLE [dbo].[bbsconfig] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[bbsname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[moderated] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[intro] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[toltopic] [int] NULL ,
	[tolrestore] [int] NULL ,
	[lastname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[lasttime] [datetime] NULL ,
	[pass] [int] NULL ,
	[logo] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[icon] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[hide] [int] NULL ,
	[today] [int] NULL ,
	[lasttopic] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userlist] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[followid] [int] NULL ,
	[SortNum] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[calendar] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[title] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[content] [text] COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[adddate] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[hide] [int] NOT NULL ,
	[addtime] [datetime] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[clubconfig] (
	[adminpassword] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[clubname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[homename] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[homeurl] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[badwords] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[afficheman] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[affichetitle] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[affichecontent] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[affichetime] [datetime] NULL ,
	[selectmail] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[cluburl] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[badip] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[smtp] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[smtpmail] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[MailServerUserName] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[MailServerPassword] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[allclass] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[adcode] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[badlist] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[bestonline] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[bestpost] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[today] [int] NULL ,
	[oldday] [int] NULL ,
	[banner] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[nowdate] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[style] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CacheName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpFileGenre] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[selectup] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[consort] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[aim] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[unburden] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[faction] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[buildman] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[factionname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[allname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[tenet] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[favorites] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[name] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[url] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[addtime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[forum] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[forumid] [int] NOT NULL ,
	[topic] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[content] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[posttime] [datetime] NOT NULL ,
	[postip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[replies] [int] NULL ,
	[Views] [int] NULL ,
	[icon] [int] NULL ,
	[goodtopic] [int] NULL ,
	[toptopic] [int] NULL ,
	[locktopic] [int] NULL ,
	[deltopic] [int] NULL ,
	[lastname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[lasttime] [datetime] NULL ,
	[polltopic] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[pollresult] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[multiplicity] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[link] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[url] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[logo] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[intro] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[log] (
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[windows] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[remark] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[logtime] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[menu] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[name] [varchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[url] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[followid] [int] NOT NULL ,
	[SortNum] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[message] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[author] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[incept] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[content] [text] COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[time] [datetime] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[online] (
	[forumid] [int] NOT NULL ,
	[sessionid] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[eremite] [int] NULL ,
	[userface] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[bbsname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[act] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[acturl] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[cometime] [datetime] NULL ,
	[lasttime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[prison] (
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[causation] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[constable] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[cometime] [datetime] NULL ,
	[prisonday] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[reforum] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[topicid] [int] NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[posttime] [datetime] NULL ,
	[postip] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[user] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[UID] [int] NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[userpass] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[honor] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[faction] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[membercode] [int] NULL ,
	[usermail] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[question] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[answer] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[userhome] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[realname] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[birthday] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[sex] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[country] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[province] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[city] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[shengxiao] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[blood] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[constellation] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[belief] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[occupation] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[college] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[marital] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[education] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[friend] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[consort] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[userface] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[userphoto] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[personal] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[character] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[sign] [text] COLLATE Chinese_PRC_CI_AS NULL ,
	[newmessage] [int] NULL ,
	[posttopic] [int] NULL ,
	[postrevert] [int] NULL ,
	[deltopic] [int] NULL ,
	[goodtopic] [int] NULL ,
	[money] [int] NULL ,
	[savemoney] [int] NULL ,
	[userlife] [int] NULL ,
	[experience] [int] NULL ,
	[degree] [int] NULL ,
	[userqq] [int] NULL ,
	[icq] [int] NULL ,
	[regtime] [datetime] NULL ,
	[landtime] [datetime] NOT NULL ,
	[savetime] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[bbsconfig] WITH NOCHECK ADD 
	CONSTRAINT [DF_bbsconfig_toltopic] DEFAULT (0) FOR [toltopic],
	CONSTRAINT [DF_bbsconfig_tolrestore] DEFAULT (0) FOR [tolrestore],
	CONSTRAINT [DF_bbsconfig_lasttime] DEFAULT (getdate()) FOR [lasttime],
	CONSTRAINT [DF_bbsconfig_pass] DEFAULT (1) FOR [pass],
	CONSTRAINT [DF__bbsconfig__hide__4865BE2A] DEFAULT (0) FOR [hide],
	CONSTRAINT [DF__bbsconfig__today__6BAEFA67] DEFAULT (0) FOR [today],
	CONSTRAINT [DF__bbsconfig__follo__6CA31EA0] DEFAULT (0) FOR [followid],
	CONSTRAINT [DF__bbsconfig__SortN__6D9742D9] DEFAULT (0) FOR [SortNum],
	CONSTRAINT [PK_bbsconfig] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[calendar] WITH NOCHECK ADD 
	CONSTRAINT [DF_calendar_addtime] DEFAULT (getdate()) FOR [addtime]
GO

ALTER TABLE [dbo].[clubconfig] WITH NOCHECK ADD 
	CONSTRAINT [DF__clubconfi__today__69C6B1F5] DEFAULT (0) FOR [today],
	CONSTRAINT [DF__clubconfi__oldda__6ABAD62E] DEFAULT (0) FOR [oldday]
GO

ALTER TABLE [dbo].[faction] WITH NOCHECK ADD 
	CONSTRAINT [DF_faction_addtime] DEFAULT (getdate()) FOR [addtime]
GO

ALTER TABLE [dbo].[favorites] WITH NOCHECK ADD 
	CONSTRAINT [DF_favorites_addtime] DEFAULT (getdate()) FOR [addtime]
GO

ALTER TABLE [dbo].[forum] WITH NOCHECK ADD 
	CONSTRAINT [DF_forum_posttime] DEFAULT (getdate()) FOR [posttime],
	CONSTRAINT [DF_forum_replies] DEFAULT (0) FOR [replies],
	CONSTRAINT [DF_forum_Views] DEFAULT (0) FOR [Views],
	CONSTRAINT [DF_forum_icon] DEFAULT (0) FOR [icon],
	CONSTRAINT [DF_forum_goodtopic] DEFAULT (0) FOR [goodtopic],
	CONSTRAINT [DF_forum_toptopic] DEFAULT (0) FOR [toptopic],
	CONSTRAINT [DF_forum_locktopic] DEFAULT (0) FOR [locktopic],
	CONSTRAINT [DF_forum_deltopic] DEFAULT (0) FOR [deltopic],
	CONSTRAINT [DF_forum_lasttime] DEFAULT (getdate()) FOR [lasttime],
	CONSTRAINT [DF_forum_multiplicity] DEFAULT (0) FOR [multiplicity],
	CONSTRAINT [PK_forum] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[log] WITH NOCHECK ADD 
	CONSTRAINT [DF_log_logtime] DEFAULT (getdate()) FOR [logtime]
GO

ALTER TABLE [dbo].[menu] WITH NOCHECK ADD 
	CONSTRAINT [DF__menu__followid__28B808A7] DEFAULT (0) FOR [followid],
	CONSTRAINT [DF__menu__SortNum__29AC2CE0] DEFAULT (0) FOR [SortNum]
GO

ALTER TABLE [dbo].[message] WITH NOCHECK ADD 
	CONSTRAINT [DF_message_time] DEFAULT (getdate()) FOR [time]
GO

ALTER TABLE [dbo].[online] WITH NOCHECK ADD 
	CONSTRAINT [DF_online_eremite] DEFAULT (0) FOR [eremite],
	CONSTRAINT [DF_online_cometime] DEFAULT (getdate()) FOR [cometime],
	CONSTRAINT [DF_online_lasttime] DEFAULT (getdate()) FOR [lasttime]
GO

ALTER TABLE [dbo].[prison] WITH NOCHECK ADD 
	CONSTRAINT [DF_prison_cometime] DEFAULT (getdate()) FOR [cometime],
	CONSTRAINT [DF__prison__prisonda__25DB9BFC] DEFAULT (30) FOR [prisonday]
GO

ALTER TABLE [dbo].[reforum] WITH NOCHECK ADD 
	CONSTRAINT [DF_reforum_posttime] DEFAULT (getdate()) FOR [posttime]
GO

ALTER TABLE [dbo].[user] WITH NOCHECK ADD 
	CONSTRAINT [DF_user_membercode] DEFAULT (1) FOR [membercode],
	CONSTRAINT [DF_user_newmessage] DEFAULT (0) FOR [newmessage],
	CONSTRAINT [DF_user_posttopic] DEFAULT (0) FOR [posttopic],
	CONSTRAINT [DF_user_postrevert] DEFAULT (0) FOR [postrevert],
	CONSTRAINT [DF_user_deltopic] DEFAULT (0) FOR [deltopic],
	CONSTRAINT [DF_user_goodtopic] DEFAULT (0) FOR [goodtopic],
	CONSTRAINT [DF_user_money] DEFAULT (0) FOR [money],
	CONSTRAINT [DF_user_savemoney] DEFAULT (0) FOR [savemoney],
	CONSTRAINT [DF_user_userlife] DEFAULT (100) FOR [userlife],
	CONSTRAINT [DF_user_experience] DEFAULT (0) FOR [experience],
	CONSTRAINT [DF_user_degree] DEFAULT (0) FOR [degree],
	CONSTRAINT [DF_user_regtime] DEFAULT (getdate()) FOR [regtime],
	CONSTRAINT [DF_user_landtime] DEFAULT (getdate()) FOR [landtime],
	CONSTRAINT [DF__user__savetime__26CFC035] DEFAULT (getdate()) FOR [savetime],
	CONSTRAINT [PK_user] PRIMARY KEY  CLUSTERED 
	(
		[username]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[calendar] ADD 
	CONSTRAINT [FK_calendar_user] FOREIGN KEY 
	(
		[username]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[consort] ADD 
	CONSTRAINT [FK_consort_user] FOREIGN KEY 
	(
		[username]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[faction] ADD 
	CONSTRAINT [FK_faction_user] FOREIGN KEY 
	(
		[buildman]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[favorites] ADD 
	CONSTRAINT [FK_favorites_user] FOREIGN KEY 
	(
		[username]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[forum] ADD 
	CONSTRAINT [FK_forum_bbsconfig] FOREIGN KEY 
	(
		[forumid]
	) REFERENCES [dbo].[bbsconfig] (
		[ID]
	) ON DELETE CASCADE  ON UPDATE CASCADE ,
	CONSTRAINT [FK_forum_user] FOREIGN KEY 
	(
		[username]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[message] ADD 
	CONSTRAINT [FK_message_user] FOREIGN KEY 
	(
		[author]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[prison] ADD 
	CONSTRAINT [FK_prison_user] FOREIGN KEY 
	(
		[username]
	) REFERENCES [dbo].[user] (
		[username]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[reforum] ADD 
	CONSTRAINT [FK_reforum_forum] FOREIGN KEY 
	(
		[topicid]
	) REFERENCES [dbo].[forum] (
		[ID]
	) ON DELETE CASCADE  ON UPDATE CASCADE 
GO


insert into [dbo].[clubconfig](clubname,banner,style,allclass,affichetitle,affichecontent,UpFileGenre) values('BBSxp Board','<embed src=images/banner.swf width=480 height=60 wmode=transparent>','1','2,0,0,0,0,0,60,1200,10240,30720,102400,0,500,0,1,0,30,1,1','欢迎使用BBSxp','欢迎使用BBSxp','gif|jpg|png|bmp|swf|txt|mid|doc|xls|zip|rar')

insert into [dbo].[menu] (name,url,followid,SortNum) values ('风格','#','0','1')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('社区服务','#','0','1')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('默认风格','cookies.asp?menu=skins','1','1')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('ｘｐ风格','cookies.asp?menu=skins&no=1','1','2')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('橘色风格','cookies.asp?menu=skins&no=2','1','3')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('绿色风格','cookies.asp?menu=skins&no=3','1','4')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('灰色风格','cookies.asp?menu=skins&no=4','1','5')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('社区银行','bank.asp','2','1')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('社区监狱','prison.asp','2','2')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('社区帮派','faction.asp','2','3')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('社区配偶','consort.asp','2','4')
insert into [dbo].[menu] (name,url,followid,SortNum) values ('社区商店','shop.asp','2','5')