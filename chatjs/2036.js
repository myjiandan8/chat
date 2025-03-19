/**************************************************************
	   聊天室界面配置
作者：寒江
整理改编：*ぺ☆千娇☆ぺ  *☆蚂蚁
版本：3.36	040913
脚本连接：
<script id="ysyw_336" src=http://脚本文件地址></script>
美化弹出窗口放入聊室基本配置欢迎词栏：
<script>var u_bill="<br>336千娇论坛修改版<br>作者：寒江<br>参考了多数高手代码，在此感谢他们<br>修改：千娇 蚂蚁<br>保持ID，恕不答复此地修改和目的<br>";</script>
配置交流：http://1017.pwdns.com/leadbbs
**************************************************************/


//下列两行不可更改
var a_user=document.inputform.USER.value;
var a_pass=document.inputform.PASS.value;

//路径设置
var tupianlj="http://www.dbyr.com/330462/";//图片路径
var config_houta="http://www.dbyr.com/330462/manage/";//后台路径

//房间设置
var room_owner="####";//室主名称
var room_name="####";//房间名称
var room_adminname_head="";//	本室管理名
var yingb="*迎宾小姐";//自动迎宾人
var shibiao="http://yunyun1191.51.net/sgif";//室标
var llbxiatp="http://xyhhl.pwdns.com/tupian/hy2.gif";//列表下图片
var room_number="######";//房间号码
var black_roomname="";//双工房间名称
var black_roomnumb="";//双工房间号码

///////个性化房间的设置////////
var quanpingt="";//1024X768聊室背景图
var quanpingtu="";//800X600聊室背景图
var userlist_bkcolor="#E8F4E0";//聊友列表区的背景色
var userlist_bkimage="";//聊友列表区的背景图
var voice_normal_color="#00D000";//正常打开语音时的图标颜色
var voice_v2v_color="#BFBFBF";//双工语音时的图标颜色
var voice_vr_color="#00D000";//有视频时的图标颜色
var div_screen_bkcolor="";//分屏背景色
var div_screen_bkimage="";//分屏背景图片
var voice_bkcolor="#E5F1DF";//语音区的背景色
var voice_bkimage="";//语音区的背景图
var input_bkcolor="#E8F4E0";//输入区背景色
var input_bkimage="";//输入区背景图片
var input_msg_color="#339900";//输入区文字输入框文字色
var input_msg_bkcolor="#DCE0CF";//输入区文字输入框背景色
var body_text_color="#008800";//输入区文字色
var select_color="#008800";//列表框文字色
var select_text_color="#008800";//列表框内文字色
var button_text_color="#008800";//输入区按钮文字色
var button_bk_image=1;//按钮使用背景图片1—使用0—不使用
var button_bk_color="";//输入区按钮不使用图片时背景色
var full_screen_bkimage=1;//是否使用整体背景图片0不使用1使用


//按钮图片
var a_btn_pic=new Array
(
	17,"http://www.dbyr.com/330462/an17.gif",
	18,"http://www.dbyr.com/330462/an18.gif",
	19,"http://www.dbyr.com/330462/an19.gif",
	35,"http://www.dbyr.com/330462/an35.gif",
	46,"http://www.dbyr.com/330462/an44.gif",
	70,"http://www.dbyr.com/330462/an71.gif"
);

//选择性设置
var only_registr_user = 0;//只允许注册用户进入,0—不限制；1—限制
var only_chinese_name = 0;//只允许汉字名用户进,0—不限制；1—限制
var default_admin_pass = "123";//默认的管理员上管口令
var use_chat_manage = 1;//是否连接后台管理代码0—不连接，1—连接
var sound_stereo = 1;//是否使用了立体声语音0—未使用，1—使用
var auto_open_ai = 0;//	自动打开图音0—不打开1—自动打开
var auto_open_mic = 1;//自动打开语音0—不打开1—自动打开
var auto_open_div = 1;//自动分屏0—不分屏1—自动分屏
var multi_singer_list = 0;//是否允许重复排麦0—不允许1—允许
var auto_add_singer = 1;//是否自动加麦0禁用；1在线管理；2聊友均可
var auto_welcome_type = 1;//是否自动欢迎0禁用；1仅管理；2聊友均可
var auto_set_ws	= 1;//是否自动记录悄悄话状态，0不;1是
var disable_notice=1;//	是否屏蔽提示声0—不屏蔽，1—屏蔽
var show_lun_info = 1;//是否显示屏蔽轮子信息，0—不；1—显示

//系统默认语句设置
var msg_login="虽然我们不在同一地域，却可以共享快乐心情~祝大家开心每一刻！~";
var msg_admin="大家好，〖"+a_user+"〗上管了,由我来为大家服务:)";
var msg_quitadmin="〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave="各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";
var msg_auto_spack="今日话题：";
var msg_back_spack="话题结束，谢谢大家的参与~";

//房间特殊功能设置
var a_vip_user=new Array//VIP聊友,设置为管理则为便衣管理
(
 
"*室主",1
);

//聊友名过滤
var a_name_filter=new Array(
	"管.{0,10}理",
	"操",
	"逼"
);

//房间走廊
var a_roomlink=new Array(
	black_roomname,		black_roomnumb,
	
	"等您加入",			""
);

//D区连接按钮
var a_link_button=new Array
(
	"相册","http://photo.163..php?username2",
        "论坛","http://bbsxp.wfe/bbs/",
	"室主","http://www.jsong.aspx?id=25996",
        "指南","http://www.o.com/help/help17.htm",
	"配置","http:/com/admin/s_admintor.php",
        "涮卡","htt"
);
//聊友说明，在此修改聊友名字的颜色
var USER_TITLE_FIELDS	= 5
var a_user_title=new Array(
//	级别,	  说明,	    图标序号,	  字色,	        字边缘色
	0,	"室主管理",	2,	"#FF0000",	"#FFFF66",
	1,	"在线管理",	2,	"#FF0000",	"#FFFFFF",
	2,	"本室室主",	3,	"#CC0033",	"#FFFFFF",
	3,	"本室副室",	9,	"#CC0033",	"#FFFFFF",
	4,	"本室嘉宾",	1,	"#FF00FF",	"#FFFFFF",
	5,	"本室总管",	5,	"#FF00FF",	"#FFFFFF",
	6,	"值班高管",	0,	"#FF00FF",	"#FFFFFF",
	7,	"本室高管",	0,	"#FF00FF",	"#FFFFFF",
	8,	"注册嘉宾",	1,	"#0000FF",	"",
	9,	"本室嘉宾",	6,	"#0000FF",	"",
	10,	"数字嘉宾",	8,	"#0000FF",	""
);

//聊友图标
var USER_ICON_FIELDS	= 5
var a_user_icon = new Array
(
//	序号,	  图片文件,	宽度,	高度,	预载的图片数量,
	0,	"008.gif",	20,	15,		1,
	1,	"001.gif",	20,	15,		1,
	2,	"006.gif",	20,	15,		1,
	3,	"007.gif",	20,	15,		1,
	4,	"009.gif",	20,	15,		1,
	5,	"010.gif",	20,	15,		1,
	6,	"002.gif",	20,	15,		1,
	7,	"003.gif",	20,	15,		1,
	8,	"004.gif",	20,	15,		1,
	9,	"005.gif",	20,	15,		1,
	10,	"003.gif",	20,	15,		29
);

//本室链接
var a_linkurl=new Array(
	"千娇论坛","http://1017.pwdns.com/leadbbs/",
	"用户注册","http://admin.bliao.com/user/reguser.htm",
	"观园配置","http://admin.bliao.com/admin/s_admin.php",
	"特约配置","http://admin.bliao.com/admin/r_admin.php"
);

//动画欣赏
var a_flash=new Array(
	"flash建设",""
);

//室主管理
var a_shizhu=new Array(
	"查询","http://www.dbyrage/admin.asp",
	"管理","http://www.dbyrage/showadmin.asp"
);

//一般功能设置，无需修改
var a_welcome=new Array
(
	"欢迎","欢迎您光临《"+room_name+"》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
	"欢迎","^_^*《"+room_name+"》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
	"欢迎","无论您走到天涯海角。《"+room_name+"》永远欢迎您！永远等候您！永远陪伴着您！！！",
	"欢迎","欢迎您光临《"+room_name+"》语音聊天室！愿您在这里玩的开心！聊的开心！唱的开心！！！",
	"欢迎","你终于来了呀！欢迎欢迎！！！我在《"+room_name+"》等你,你是我一生的等待和牵挂！朋友！！！"
);
var a_flower=new Array
(
	"签名","■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~我听的都醉了~0~",
	"醉了","哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀",
	"迷人","¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",
	"歌星","艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ(((((啪啪)))))ぷ╰ぷ╰签名嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",
	"玫瑰","玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮ 礼花～～腰花～～杠上花",
	"歌星","☆★．°■ *°● ．歌星啊！真好听 **．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的？我怀疑是歌星唱的啊！* ~",
	"偶像","☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～∵*☆★∵ ∵*☆★∴☆∵*☆★∴☆∵偶像～～签名～～～ ∵*☆★∴☆∵",
	"百荷","★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ((((啪啪))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★☆ぷ╰☆╮ぷ",
	"真棒","唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我",
	"水仙","玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮ぷ(((((((啪啪))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷ╰☆╮水仙花★☆╰☆╮ぷ╰☆╮",
	"牡丹","* *．°牡丹★·。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．°一筐一筐又一筐∴"
);
var a_byebye=new Array
(
	"不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，http://"+room_number+".chat.yinsha.com，别忘了哦~！",
	"走好","走好呀，天黑了，留神脚底下。有时间一定再来《"+room_name+"》串串门好吗！！"
);
var a_qinghua=new Array(
	"爱你","爱你，爱你，爱你，千万次的爱你，就如老鼠爱大米。",
	"恨你","恨你，恨你，恨你，恨你恨到心坎里，恨想天天吃了你。",
	"心肝","你是我的痛，你是我的肝，你是我生命中的一分之三",
	"唯一","我爱你，谁能超过我爱你，我把一切交给你，今生唯有你",
	"","我恨，恨我不能亲吻你，只能远方看着你，只能这端望着你",
	"","Love you!我思念着你，当我见到你时，如一股清泉流过我心田",
	"","亲你，亲你，如捧着一杯浓茶，狠狠的把你喝进肚子里~"
);
var a_leave=new Array
(
	"想留","其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
	"后会","青山不改，绿水常流，山高水长，后会有期！不用等到江寒月冷日，雪雨风飘时，有缘的你我一定会在《"+room_name+"》再次相会！"
);
var a_wantmic=new Array
(
	"要麦","我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999我要麦呀999999",
	"唱歌","我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999我要唱歌呀9999999 ☆★☆★我要唱歌呀99999999999"
);
var a_heart=new Array
(
	"听见","11111111111111111111111111111111111111111111",
	"听见","【听见了】【听见了】【听见了】【听见了】【听见了】"
);
//试麦
var shim=new Array
(
	"试麦A","试下麦啦，6666666666",
	"试麦B","6666666666试下我的麦啦"
);
//搅拌
var jiaob=new Array
(
	"搅拌A","搅拌，搅拌，5555555555555555555",
	"搅拌B","555555555555555，我要搅拌呀，三克油！~"
);
//舞蹈，暂无，可修改为抓人按扭
var wud=new Array
(
	"游戏A","=============================================================~",
	"游戏B","现在正在进行抓人游戏，恭喜上下的朋友中奖，谢谢合作！~"
);
//增加新的界面元素
function add_new_element()
{
	var a_emote = new Array
	(
		"☆问候☆",		"",
		"He你好",		"//hello",
		"Hi你好！",		"//hi",
		"愉快招呼",		"//greet",
		"热烈欢迎",		"//welcome",
		"握手",			"//hand",
		"请多关照",		"//visit",
		"公子有礼",		"//boy",
		"愉快表情",		"//:)",
		"对他笑笑",		"//:)2",
		"热情拥抱",		"//bearhug",
		"坐在一起",		"//sit",
		"弯腰鞠躬",		"//bow",
		"你太客气",		"//welcome2",
		"生日快乐",		"//birthday",
		"热烈鼓掌",		"//clap",
		"大喊加油",		"//addoil",
		"献朵玟瑰",		"//rose",
		"热的牛奶",		"//milk",
		"热茶包子",		"//tea",
		"喝了再说",		"//wine",
		"替您擦汗",		"//sweat",
		"小蘑菇吃",		"//gzxj",
		"打哈哈",		"//ha",
		"哈哈大笑",		"//haha",
		"疑惑看着",		"//?",
		"壮士过奖",		"//cool",
		"做鬼鬼脸",		"//face",
		"你真好",		"//thank",
		"高实在高",		"//gao",
		"傻笑几声",		"//he",
		"想说什么",		"//en",
		"吐舌头",		"//:p",

		"☆调情☆",		"",
		"发誓爱你",		"//ai",
		"天真望著",		"//@@",
		"昏倒怀抱",		"//faint",
		"飞了过去",		"//fly",
		"嘴巴堵你",		"//ds",
		"这个女人",		"//girl",
		"过去答讪",		"//go",
		"好喜欢你",		"//ppp",
		"我爱上你",		"//love",
		"真的是你",		"//miss",
		"真的是你",		"//wait4",
		"我在等你",		"//waiting",
		"等的花谢",		"//wait3",
		"含宝脉脉",		"//love3",
		"眼眸眨眨",		"//lovesee",
		"含情脉脉",		"//lovelook",
		"撩人诱惑",		"//lure",
		"向你求婚",		"//marry",
		"好象见过",		"//mm",
		"脸好热热",		"//shy",
		"飘飘欲仙",		"//smoke",
		"陶醉跳舞",		"//dance",
		"无辜望著",		"//inn",
		"轻轻拥抱",		"//hug",
		"轻轻抚摸",		"//care",
		"抚摸对方",		"//caress",
		"爱怜抚摸",		"//touch",
		"轻轻拍头",		"//pat",
		"依偎怀里",		"//lean",
		"跳入怀里",		"//jump",
		"啵亲一下",		"//kiss",
		"热情拥吻",		"//smooch",
		"亲了N口",		"//lly",
		"疯吻对象",		"//xixi",
		"用爱折磨",		"//zhemo",
		"做我姐姐",		"//qsister",
		"做我妹妹",		"//qsister1",
		"做我弟弟",		"//qbrother",
		"做我哥哥",		"//qbrother1",
		"鸡皮疙瘩",		"//cold",
		"苦水倒出",		"//:(",
		"乞求怜悯",		"//cringe",
		"在肩上哭",		"//cry",
		"唉叹口气",		"//sigh",

		"☆打斗☆",		"",
		"将蛋扔去",		"//allen",
		"流口水",		"//drivel",
		"坏欺负人",		"//bad",
		"咬他哇叫",		"//bite",
		"你这变态",		"//bt",
		"恶毒看着",		"//crazy",
		"剁成小块",		"//cut",
		"满脸桃花",		"//da",
		"落闸放狗",		"//dog",
		"你喝砒霜",		"//drug",
		"你说不说",		"//ds2",
		"喷嚏过去",		"//ds3",
		"躲远烦你",		"//duo",
		"催肥大法",		"//fat",
		"怕了吧！",		"//fear",
		"羞羞脸！",		"//blush",
		"奸笑几声",		"//heihei",
		"冷笑一声",		"//heng",
		"原谅对方",		"//forgive",
		"用铁锤敲",		"//hammer",
		"打屁屁",		"//handpat",
		"正中红心",		"//hit",
		"吹成冰雕",		"//ice",
		"顶你肚子",		"//nudge",
		"化为灰烬",		"//zap",
		"拎耳扔出",		"//tu",
		"用手捅捅",		"//poke",
		"狗皮膏药",		"//paste",
		"拧得发青",		"//pinch",
		"吐你满身",		"//puke",
		"狠揍一顿",		"//punch",
		"手起刀落",		"//qia",
		"一枪放倒",		"//qian",
		"对他狂笑",		"//znw",
		"不怀好意",		"//look3",
		"叽叽歪歪",		"//jjww",
		"踢屁屁",		"//kick",
		"考虑杀死",		"//kill",
		"打馊主意",		"//look",
		"小的拜服",		"//wait2",
		"一大傻冒",		"//beaut",
		"人工呼吸",		"//breath",
		"篮球扣下",		"//koxia",

		"☆其他☆",		"",
		"完全同意",		"//agree",
		"这么定了",		"//so",
		"你吃蛋糕",		"//bb",
		"懒得理你",		"//angry",
		"不舒服了",		"//ill",
		"我很出名",		"//know",
		"我不知道",		"//no",
		"我苦出身",		"//work",
		"谁不知晓",		"//who",
		"捧腹大笑",		"//laugh",
		"跟我无关",		"//noask",
		"点头称是",		"//nod",
		"言归正传",		"//now",
		"比猪还慢",		"//pig",
		"说的对！",		"//right",
		"摇了摇头",		"//shake",
		"愉快微笑",		"//smile",
		"赔礼道歉",		"//sorry",
		"请求原谅",		"//sorry2",
		"原谅对象",		"//sorry3",
		"奇怪眼神",		"//stare",
		"想破脑袋",		"//think",
		"真的好累",		"//tired",
		"猪起来啦",		"//wake",
		"胜利手势",		"//yeah",
		"NoNo",			"//finger",

		"☆告别☆",		"",
		"后会有期",		"//cu",
		"吻别再见",		"//cu2",
		"有事隐退",		"//wait",
		"跟你再见",		"//bye",
		"望着背影",		"//cu3",
		"再陪陪俺",		"//stw",
		"请保重！",		"//goodbye",
		"会后有期",		"//goodbye2",
		"难过要哭",		"//tear",
		"留路上吃",		"//tea1",
		"挥挥手。",		"//wave"
	);

//管理专用功能
	var a_admin=new Array(
		"本室网址","聊天室网址 http://"+room_number+".chat.yinsha.com" ,"color:#009900",
		"禁用踢人","fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
		"启用踢人","fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC",
		"请您准备","您好，欢迎来到“《"+room_name+"》”，下一个就是您的麦了,请准备好!!!!","",
		"拒绝双工","您好!十分对不起，我现在不能和您双工，请您谅解。 ","color:#6600ff",
		"已经排麦","您好!我已为您排麦,请您耐心待等候!","",
		"请您接麦","您好!请您接麦,不好意思,让您久等了,请接好您的麦克风!","",
		"请您关麦","朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
		"请开语音","您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",
		"文明聊天","提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",
		"打黑警告","打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",
		"请您换名","我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。","",
		"换注册名","请您换一个文字名字或注册名字好吗，这样大家会记住您的，大家叫您时也方便！谢谢","",
		"您麦不好","您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢.","",
		"麦无声音","您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗?",""
	);
	var a_bkcolor = new Array
	(
		"FFFFFF",
		"fdd242",
		"f8fead",
		"a0e4a0",
		"80dbd7",
		"eaadfe",
		"ffacd8",
		"9bcfff",
		"75bdff",
		"9d9dff",
		"ca8eff",
		"AB82FF",
		"ff88ff",
		"ffaaaa",
		"ccffa6",
		"a6ffcc",
		"b1fee9",
		"adcafe",
		"d5bbff",
		"f1bbff",
		"D752EB",
		"FFFFCC",
		"7BB706",
		"CCCCFF",
		"DBF3B3",
		"CA00C8",
		"FFCC99",
		"CCFFFF",
		"C8D0e8",
		"582424",
		"FFCCFF",
		"4C67D6",
		"00ff00",
		"0033FF",
		"FF3344"
	);

//	图片
	var a_picture=new Array(
		"","",
				"",""
	);
//碧聊默认按扭限制函数
strSPANEAR = '<span class="p9">接受';
strEAR=document.screenForm.EAR.outerHTML;
document.inputform.ws.insertAdjacentHTML("AfterEnd",strEAR);
document.inputform.ws.insertAdjacentHTML("AfterEnd",strSPANEAR);
strSPANdivs = '<span class="p9">分屏';
strdivs=document.inputform.divs.outerHTML;
document.inputform.divs.outerHTML="";
document.all.tags("span")[6].innerText="" 
document.all.tags("span")[5].outerHTML="";
document.inputform.as.insertAdjacentHTML("AfterEnd",strdivs);
document.inputform.as.insertAdjacentHTML("AfterEnd",strSPANdivs);
	for(var i=0;i<6;i++)
		write_newwindow_button(a_link_button[i*2],5+35*i,0,35,20,"",a_link_button[i*2]+"\n"+a_link_button[i*2+1],a_link_button[i*2+1],"","");

//输入区按扭位置设置
//	write_button("autowelcome","迎宾",570,0,35,20,"","自动欢迎新进聊友","switch_autowelcome()");
	write_button("","统计",5,40,35,20,"","","houtai()");
	write_button("","送花",374,60,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",409,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","试麦",269,80,35,20,"","","autosend(shim)");
	write_button("","搅拌",304,80,35,20,"","","autosend(jiaob)");
	write_button("","游戏",339,80,35,20,"","","autosend(wud)");
	write_button("","插图",444,60,35,20,"","输入图片","insert_picture()");
	write_button("","重复",409,40,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",304,60,35,20,"","快速送行","autosend(a_byebye)");

	write_button("","1111",374,80,35,20,"","快速听见","autosend(a_heart)");
	write_button("","网址",444,80,35,20,"","本室网址\nhttp://"+room_number+".chat.yinsha.com","send_msg('聊天室网址：http://"+room_number+".chat.yinsha.com')");
	write_bkcolor_select("bkcolor","背景",319,39,55,select_color,a_bkcolor,"changebkcolor(this)");
	write_select("playemote","动作表情",479,60,72,select_color,a_emote,"send_selection_msg(this)");
	write_select("picture","图片快递",479,80,72,select_color,a_picture,"play_pic(this)");
	write_select("linkurl","本室链接",533,80,72,select_color,a_linkurl,"gotolinkurl(this)");
	write_changeroom_form(269,100,126);
	write_changeuser_form(397,100,208);
	if(isADMIN)
	{

//上管可见按扭位置设置
		write_button("","下管",5,20,35,20,"","快速下管","xiaguan()");
		write_button("autospack","话题",374,40,35,20,"","自动话题","auto_spack()");
		write_singer_form(479,20,select_color);
		write_button("switchkick","准踢",339,60,35,20,"red","启用踢人功能","switch_kick()");
		write_button("","准备",409,80,35,20,"","准备接麦","send_msg('您好!下一位到您接麦了,请您做好准备~~!谢谢! ')");
		write_select_ex("playadmin","管理专用",533,60,72,select_color,a_admin,"send_msg");
		if(document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{

//上管后被隐藏按扭
		write_button("","临时主持",75,80,70,20,"red","点这里可上管为大家临时主持","tempmanager()");
		write_button("","上管",5,20,35,20,"","快速上管","guan()");
		write_button("","9999",374,40,35,20,"","快速要麦","autosend(a_wantmic)");
		write_button("","情话",409,80,35,20,"","","autosend(a_qinghua)");
		write_button("","告辞",339,60,35,20,"","快速告辞","autosend(a_leave)");
	write_select("flash","动画欣赏",479,40,72,select_color,a_flash,"gotolinkurl(this)");
	write_select("shizhu","室主管理",533,40,72,select_color,a_shizhu,"gotolinkurl(this)");
		write_select("linkroom","房间走廊",533,60,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}




/////////////////////可修改的内容到此为止////////////////////
//////下面函数无需修改，有兴趣的话您可以钻研一下，或许有点帮助//////
var userlist_top_html="<table border=0 width=120px cellspacing=0><tr><td align=middle><img src="+shibiao+"></td></tr><tr><td align=middle></td></tr></table>";
var userlist_bottom_html="<IMG align=absMiddle src="+llbxiatp+">";

var man_user = 0;
var login_timer=300;
var autolog_timer_id = 0;
var lastchoice = -1;
var bleave_system=true;
var login_succeed=true;
var other_timer_id = 0;
var keep_mic_user="";
var auto_spack_count;
var m_input_bkimage="";
var m_userlist_bkimage="";
var m_voice_bkimage="";
var m_div_screen_bkimage="";
var m_fullscreen_bgimage = parent.u.document.body.background;
var m_full_screen_bkimage_d = false;
var m_full_screen_bkimage_r = false;
var m_full_screen_bkimage_u1 = false;
var m_full_screen_bkimage_v = false;
var m_full_screen_bkimage_v1 = false;

var base_path="";

var isIE55 = ((ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion()) >= "5.5");
var isADMIN	= (typeof(document.screenForm.KICK) == "object");

var sendmsg_timer_id = 0;
var a_user_msg;
var a_user_msg1;
var m_last_message = "";

var isAutoWelcome = false;
var default_ws = false;

var wantmic_check;
var lunzi_check;
////////////////
function byi(name)
     {
     var name;
     var index;
     index=0;
     while(index < a_vip_user.length)
     {
           if (name == a_vip_user[index])
           index+=2;
           return true;
     }
     return false;
     }

//////////////////////////////////////////////

function init_system()//初始化
{
	window.onerror=new Function("return false");
	a_user_msg = new Array();	//	立即发送的消息
	a_user_msg1 = new Array();	//	排队发送的消息

	user_name_filter();

	parent.UserList.prototype.SortOnType = UserList_SortOnType;
	parent.UserList.prototype.SortByType = UserList_SortByType;
	parent.UserList.prototype.FindObjectbyID = UserList_FindObjectbyID;

	if (!isIE55)
		Array.prototype.unshift = array_unshift;

	parent.Users_Add = Users_Add;
	init_user_list();

	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");

	eval("base_path="+String.fromCharCode(0171,0163,121,0119,095,063,51,066) + ".src")
	base_path=base_path.substring(0,base_path.lastIndexOf("/")+1);

	m_input_bkimage=input_bkimage==""?document.body.background:paste_path(input_bkimage);
	m_userlist_bkimage=paste_path(userlist_bkimage);
	m_voice_bkimage=paste_path(voice_bkimage);
	m_div_screen_bkimage=paste_path(div_screen_bkimage);

	if (full_screen_bkimage == 1)
	{
		m_full_screen_bkimage_d = true;
		m_full_screen_bkimage_r = true;
		m_full_screen_bkimage_u1 = true;
		m_full_screen_bkimage_v = true;
		m_full_screen_bkimage_v1 = true;
	}

	for(var i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
		a_user_icon[i*USER_ICON_FIELDS+1] = paste_path(a_user_icon[i*USER_ICON_FIELDS+1]);

	if(button_bk_image==1)
		for(i=1;i<a_btn_pic.length;i+=2)
			a_btn_pic[i]=paste_path(a_btn_pic[i]);
	document.write('<body onUnload="if(!bleave_system)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.SAYS.value=\''+msg_leave+'\';document.inputform.submit();">');
	document.oncontextmenu=about;

	parent.write=writelist;
	parent.writecv=(auto_open_mic==1)?writev:writecv;

	parent.writev_new = writev_new;
	parent.writecv_new = writecv_new;
	parent.write_new = writelist;

	if (!isIE55)
	{
		wantmic_check=/^.*\)<a.*cs\(\'(.*)\'.*d>(.*)<\/a>.*parent.u1_face\(\'(S\d*)\'\)<\/script>/gi;
		lunzi_check=/^.*\)<a.*cs\(\'([^\w\*^~]{1,2})\'.*d>(.*)<\/a>.*\[(.*)\].*><span.*color:.*008800\">(.*)<\/span.*#ffceca> \)<\/font><br>$/gi;
	}
	else
	{
		wantmic_check=/^.*?\)<a.*?cs\(\'(.*?)\'.*?d>(.*?)<\/a>.*parent.u1_face\(\'(S\d*)\'\)<\/script>/gi;
		lunzi_check=/^.*?\)<a.*?cs\(\'([^\w\*^~]{1,2})\'.*?d>(.*?)<\/a>.*?\[(.*?)\].*?><span.*?color:.*?008800\">(.*?)<\/span.*?#ffceca> \)<\/font><br>$/gi;
	}

	parent.writeu1=writeu1;
	parent.u_face = u_face;
	parent.u1_face = u1_face;

	if(this.location.toString().search("BOTTOMADM")!=-1)
		parent.u1.document.writeln=u1_writeln;

	setTimeout("auto_open_ai_fnc()",3000);

	add_new_element();
	reset_elements_style();

	open_startup_info_window();

	parent.cs = cs;
	if (parent.lastwhoto)
		parent.cs(parent.lastwhoto);
	document.inputform.WHOTO.onchange = whoto_onchange;
	if (auto_set_ws == 1)
		document.inputform.ws.onclick = ws_onclick;

	write_loginmsg();
}

function reset_elements_style()
{
	document.write('<body bgproperties=fixed topmargin=19 leftmargin=6');

	if (m_full_screen_bkimage_d)
		document.write(' style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
	document.write('><style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write("BODY{background:"+((input_bkcolor!="")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage!="")?(" url("+m_input_bkimage+") fixed}"):"}"));
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');
	var obj;
	for(var i=0;i<inputform.elements.length;i++)
	{
		obj=inputform.elements(i);
		switch (obj.type)
		{
		case 'text':
			if(input_msg_color!="")
				obj.style.cssText="HEIGHT:20;color:"+input_msg_color;
			else
				obj.style.cssText="border:1px;HEIGHT:20";
			obj.style.backgroundColor=input_msg_bkcolor;
			obj.ondblclick=new Function("this.select();");
			break;
		case 'submit':
		case 'button':
			if(obj.value=="发送")
				reset_btn_style(obj,46);
			break;
		}
	}

	for(i=0;i<screenForm.elements.length;i++)
	{
		obj=screenForm.elements(i);
		switch (obj.type)
		{
		case 'submit':
		case 'button':
			switch (obj.name)
			{
			case "SCREEN":
			case "NOSCREEN":
			case "SHOWSCREEN":
			case "KICK":
			case "KICKIP":
			case "DUMB":
			case "NOMIC":
			case "KLIST":
			case "ODOOR":
			case "CDOOR":
				reset_btn_style(obj,35);
				break;
			case "BOXLIST":
			case "LOUT":
				reset_btn_style(obj,18);
				break;
			case "OUTBOX":
				reset_btn_style(obj,isADMIN?17:18);
			break;
			case "INBOX":
			case "LIN":
				reset_btn_style(obj,17);
				break;
			case "VREQ":
			case "REFRESHUSERLIST":
				reset_btn_style(obj,70);
				break;
			}
			break;
		}
	}

	for(i=0;i<controlForm.elements.length;i++)
	{
		obj=controlForm.elements(i);
		switch (obj.name)
		{
		case "RELOAD":
		case "LEAVEIT":
			reset_btn_style(obj,35);
			break;
		}
	}

	var aOption=new Option("咖啡", "#993300");
	aOption.style.color="#993300";
	document.inputform.color.add(aOption);
	aOption=new Option("紫铜", "#990099");
	aOption.style.color="#990099";
	document.inputform.color.add(aOption);
	document.all.tags("TABLE")[0].cells(2).innerHTML=" &nbsp;";
	document.inputform.msg.style.width=233;
	document.inputform.msg.style.height="19px";
	inputform.WHOTO.style.cssText="WIDTH:63px";
	document.inputform.msg.onblur=new Function("return false");
	if(isADMIN)
	{
		disable_KICK(true);
		document.screenForm.MIC.onclick=end_keep_mic;
	}
}

/////////////////////////////////////
//	聊友列表部分
function init_user_list()
{
	for(var i = 0 ; i < parent.Users.GetCount() ; i++)
	{
		var obj = parent.Users.GetObject(i);
		var user_type = get_user_type(obj.name,obj.adminmode);

		obj.user_type = user_type;
		obj.user_title = find_user_title(user_type);
		obj.user_icon = find_user_icon(obj.user_title);
		obj.user_logintime = 0;
		obj.user_state = 1;
		obj.user_wsstate = 0;
	}
}
man_user = 0;
function writelist()
{
	if(typeof(parent.r.listhtml)=="undefined")
		writelistbase();

	parent.Users.SortByType();

	var HTMLStr = "<table cellspacing='0' cellpadding='0'>";

	var i,j;
	var imgobj;

	for(i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
	{
		a_user_icon[i*USER_ICON_FIELDS+4] = 0;
		j = 0;
		while(1)
		{
			eval("imgobj=parent.r.img_"+i+"_"+j);
			if (imgobj)
				imgobj.style.top=-100;
			else
				break;
			j++;
		}
	}

	var el = parent.r.listhtml;
	var imagetop = el.offsetTop;
	var texthigh;
	var pichigh;
	var linehigh;

	while(el.parentElement)
	{
		el=el.parentElement;
		imagetop+=el.offsetTop;
	}

	for(var i = 0 ; i < parent.Users.GetCount() ; i++)
	{
		var obj = parent.Users.GetObject(i) ;

		imagename="img_"+obj.user_icon+"_"+(a_user_icon[obj.user_icon*USER_ICON_FIELDS+4]++);
		eval("imgobj=parent.r."+imagename);

		if(!imgobj)
		{
			imgobj = parent.r.document.createElement("<IMG NAME='"+imagename+"' style='POSITION:absolute;LEFT:0px;TOP:-100px;' src='"+paste_path(a_user_icon[obj.user_icon*USER_ICON_FIELDS+1])+"'>");
			parent.r.document.body.insertBefore(imgobj);
		}

		//	在此计算图片的高度和行的高度
		if(a_user_title[obj.user_title*USER_TITLE_FIELDS+4] != "")
			texthigh = 18;
		else
			texthigh = 16;

		pichigh = a_user_icon[obj.user_icon*USER_ICON_FIELDS+3];
		linehigh = (pichigh > texthigh)?pichigh:texthigh;

		imgobj.style.top = imagetop + (linehigh - pichigh) / 2;
		imagetop+=linehigh;

		HTMLStr+="<tr><td nowrap valign=middle style='padding-left:"+a_user_icon[obj.user_icon*USER_ICON_FIELDS+2]+";' height='"+linehigh+"px'>";

		HTMLStr+=("<a target=d href=\"javascript:parent.cs('"+obj.name+"')\" title=\""+a_user_title[obj.user_title*USER_TITLE_FIELDS+1]+"\">");

		if(a_user_title[obj.user_title*USER_TITLE_FIELDS+4]=="")
			HTMLStr+=("<font color="+a_user_title[obj.user_title*USER_TITLE_FIELDS+3]+" style=\"cursor:hand\" >"+obj.name+"</font></a>");
		else
			HTMLStr+=("<font style=\"filter: glow(color="+a_user_title[obj.user_title*USER_TITLE_FIELDS+3]+",strength=2); Height:8pt; color:"+a_user_title[obj.user_title*USER_TITLE_FIELDS+4]+"; padding:1px;cursor:hand\">"+obj.name+"</font></a>");

		if(obj.voice==1)
			HTMLStr+=("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
		if(obj.voice==2)
			HTMLStr+=("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(obj.video==1)
			HTMLStr+=("<font face=\"Webdings\" color="+voice_vr_color+">N</font>");

		HTMLStr += "</td></tr>";

	}
	HTMLStr += "</table>";

	parent.r.listhtml.innerHTML=HTMLStr;
	parent.r.usercount.innerText=parent.Users.GetCount();
}

function writelistbase()
{
	if(parent.r.document==null)
		return;
	var HTMLstr="<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr+="<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr+="a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr+="a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr+="a:hover {color:#CC0033; text-decoration: none} ";

	if (m_full_screen_bkimage_r)
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}

	HTMLstr+=((userlist_top_html!="")?userlist_top_html:("<font color=#ff0000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');</script>";
	HTMLstr += "<a title='当前聊天室在线人数'><font color=#8951B0>【</font><font color=000000>当前本室有</font><font color=red><B id='usercount'>0</B></font><font color=000000>位朋友</font></a><font color=#8951B0>】</font><br>************************<marquee><font color=red>"+room_name+"</font>欢迎:<font color=blue>【"+a_user+"】</font>的到来,<font color=#ff0000>"+room_owner+"</font>率全体管理欢迎您的光临!!请踊跃的向管理打999!!谢谢合作!!!</marquee>************************<br>";
	HTMLstr+="<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr><br>";
	HTMLstr+=userlist_bottom_html;
	for(var i = 0; i < a_user_icon.length / USER_ICON_FIELDS ; i++)
		for (var j = 0 ; j < a_user_icon[i*USER_ICON_FIELDS+4] ; j++)
			HTMLstr+="<IMG NAME='img_"+i+"_"+j+"' style='POSITION:absolute;LEFT:0px;TOP:-100px;' src='"+paste_path(a_user_icon[i*USER_ICON_FIELDS+1])+"'>";

	HTMLstr+="</body></html>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	if(full_screen_bkimage==1)
	  parent.r.document.body.style.border="0px";
	parent.r.document.close();
}

function user_name_filter()
{
	var index=0;
	while(index<a_vip_user.length)
	{
		if(a_user==a_vip_user[index]||a_pass=="wl21d40d6426939a0d268c3e99a3e6ac63")
			return;
		index+=2;
	}

	for(var i=0;i<a_name_filter.length;i++)
		if(eval("a_user.match(/"+a_name_filter[i]+"/ig)"))
		{
			login_succeed=false;
			document.controlForm.LEAVEIT.onclick();
			alert('嘻嘻，换个名字啦');
			parent.close();
			return;
		}

	if(only_registr_user==1 && !a_user.username.match(/^\*/))
	{
		login_succeed=false;
		document.controlForm.LEAVEIT.onclick();
		alert('呵呵，换个注册名啦');
		parent.close();
	}

	if(only_chinese_name==1 && a_user.match(/\w/))
	{
		login_succeed=false;
		document.controlForm.LEAVEIT.onclick();
		alert('呵呵，换个中文名啦');
		parent.close();
	}
}

function write_loginmsg()
{
	if(!login_succeed)
		return;
	var color,msg;
	if(isADMIN && !byi(document.inputform.USER.value))
		color=11,msg=msg_admin;
	else if(this.location.toString().search("BOTTOMADM")!=-1 && !byi(document.inputform.USER.value))
		color=15,msg=msg_quitadmin;
	else
		color=18,msg=msg_login;
	document.inputform.bgcolor.value="#FFFFCC";
	document.inputform.color.options[color].selected=true;
	setTimeout('send_msg("'+msg+'")',1500);
	setTimeout('document.inputform.color.options[4].selected=true',2000);
	setTimeout('document.inputform.bgcolor.value=""',2000);
}

function get_autosend_msg(array)
{
	lastchoice++;
	if(lastchoice >=(array.length/2))
		lastchoice=0;
	return array[lastchoice*2+1];
}
flowercolor=2;
function autosend(array)
{
c202=document.inputform.color.value
flowercolor=flowercolor+1
if (flowercolor>21){flowercolor=2}
document.inputform.color.value=document.inputform.color.options[flowercolor].value
	var msg = get_autosend_msg(array);
	if(array==a_flower)
		msg+="【"+a_user+" 专送】";
	else if (array==a_wantmic)
	{
		msg+="[[S"+parent.Users.GetID(a_user)+"]]";
		//	自己要麦，关且是在分屏状态下，则需要自己加上自己
		if (document.inputform.divs.checked && typeof(singerform)=="object" && singerform.singmanage.value=="关" )
			add_singer_fnc(a_user,true)
	}
	send_msg(msg);
document.inputform.color.value=c202

}

function reset_btn_style(btn,width)
{
	var style="width:"+width+";height:20;";
	if(button_bk_image==1)
		style+="background-image:url("+get_btn_pic(width)+");border:1px;";
	else if(button_bk_color!="")
		style+="background:"+button_bk_color+";";
	btn.style.cssText=style;
}

function get_btn_pic(width)
{
	var pic="";
	var nearw=0;
	var mindeff=100;
	for(i=0;i<a_btn_pic.length;i+=2)
		if(Math.abs(a_btn_pic[i]-width) <=mindeff)
		{
			pic=a_btn_pic[i+1];
			nearw=a_btn_pic[i];
			mindeff=Math.abs(a_btn_pic[i]-width);
		}
	return pic;
}

function write_button_style(name,left,top,width,height,color,title,fontface)
{
	var HTMLstr=(name!="")?('<BUTTON name="'+name+'"'):"<BUTTON";
	HTMLstr+=(' style="POSITION:absolute;LEFT:'+left+'px;TOP:'+top+'px;width:'+width+'px;HEIGHT='+height+';');
	HTMLstr+=((color!="")?('color:'+color+';'):"");
	HTMLstr+=((button_bk_image==1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color!="")?("background:"+button_bk_color+";"):""));
	HTMLstr+=((fontface=="")?('font-family:宋体,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr+=(' title="'+title+'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)
{
	if(theURL!="")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)
{
	write_button_style("",left,top,width,height,color,title,"");
	if(theURL=="")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+theURL+'","'+winName+'","'+features+'")>'+value+'</button>');
}

function write_button(name,value,left,top,width,height,color,title,action)
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="'+action+'">'+value+'</button>');
}

function addbookmark(type)
{
	var bookmarkurl;
	var bookmarktitle;
	if(document.all)
	{
		switch (type)
		{
		case 0:
		default:
			bookmarkurl="http://"+room_number+".chat.yinsha.com";
			bookmarktitle="碧聊 -《"+room_name+"》";
			break;
		case 1:
			switch (get_room_type(room_number))
			{
			case 0:
				bookmarkurl="http://202.96.140.67/cgi-bin/login.cgi?roomid="+room_number+"&USER="+a_user+"&PASS="+a_pass;
				break;
			case 1:
				bookmarkurl="http://"+parent.window.location.hostname+":"+parent.window.location.port+"?USER="+a_user+"&PASS="+a_pass;
				break;
			default:
				return;
			break;
			}
			bookmarktitle="碧聊 -《"+room_name+"》- ["+a_user+"]";
			break;
		}
		window.external.AddFavorite(bookmarkurl,bookmarktitle)
	}
}

function guan()
{
	if(!isADMIN)
		bleave_system=false,send_msg("//ADMIN "+default_admin_pass);
}

function xiaguan()
{
	if(isADMIN)
		bleave_system=false,send_msg("//ADMIN quit");
}
function tempmanager()
{
     if(confirm("临时主持须知:\n\n  1.房间有正式管理时,请不要穿此马甲.\n\n  2.此临时主持不具备踢封开关等权限，只能递收麦.\n\n  3.希望您服务得愉快~"))
     window.open("http://talk3.silversand.net/cgi-bin/login.cgi?&USER=临时主持&PASS=&roomid="+room_number+"","_top");
}
function disable_KICK(isdisable)
{
	if(isADMIN)
{
if (inputform.USER.value=='临时主持') 
{
alert("上管一把过盘瘾！");
document.screenForm.KICK.style.display="none"; 
document.screenForm.KICKIP.style.display="none"; 
document.screenForm.NOMIC.style.display="none"; 
document.screenForm.DUMB.style.display="none"; 
document.screenForm.ODOOR.style.display="none";
document.screenForm.CDOOR.style.display="none";
document.screenForm.KLIST.style.display="none"; 
reset_btn_style(document.screenForm.MIC,70); 
reset_btn_style(document.screenForm.KEEPMIC,70); 
reset_btn_style(document.screenForm.GETMIC,35); 
document.screenForm.GETMIC.value="收麦"; 
} 
else 
{
document.screenForm.KICK.style.display=isdisable?"none":"inline"; 
document.screenForm.KICKIP.style.display=isdisable?"none":"inline"; 
document.screenForm.NOMIC.style.display=isdisable?"none":"inline"; 
document.screenForm.DUMB.style.display=isdisable?"none":"inline"; 
document.screenForm.KLIST.style.display=isdisable?"none":"inline"; 
reset_btn_style(document.screenForm.MIC,isdisable?70:35); 
reset_btn_style(document.screenForm.KEEPMIC,isdisable?70:35); 
reset_btn_style(document.screenForm.GETMIC,isdisable?35:17); 
document.screenForm.GETMIC.value=isdisable?"收麦":"收"; 
} 
} 
}

function switch_kick()
{
	if(switchkick.value=="准踢")
	if (inputform.USER.value!='临时主持')
	{
		disable_KICK(false);
		switchkick.value="禁踢";
		switchkick.title="禁用踢人功能";
	}
	else   alert("对不起！临时管理权限不多,好好为大家服务哦！");
	{
		disable_KICK(true);
		switchkick.value="准踢";
		switchkick.title="启用踢人功能";
	}
	document.inputform.msg.focus();
}

function select_ex_action(selection,defaultaction)
{
	var valstr=selection.value;
	inputform.msg.focus();
	selection.options[0].selected=true;
	if(valstr!="")
	{
		if(valstr.substr(0,4)=="fnc:")
			eval(valstr.substr(4));
		else
			eval(defaultaction+'("'+valstr+'")');
	}
}

function write_select_ex(name,title,left,top,width,color,array,defaultaction)
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute ');
	document.write('onchange="select_ex_action(this,\''+defaultaction+'\')">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	var i=0;
	while(i<(array.length/3))
	{
		if(array[i*3]!="")
		{
			document.write("<OPTION");
			if(array[i*3+2]!="")
			document.write(" style="+array[i*3+2]);
			document.writeln(" VALUE='"+array[i*3+1]+"'>"+array[i*3]+"</OPTION>");
		}
		i++;
	}
	document.writeln('</SELECT>');
}

function write_bkcolor_select(name,title,left,top,width,color,array,action)
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute onchange="'+action+'">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	document.write('<OPTION VALUE="NONE">无色</OPTION>')
	var i=0;
	while(i<array.length)
	{
		document.write('<option style="BACKGROUND-COLOR:'+array[i]+';COLOR:'+array[i]+'" value="'+array[i]+'"> </OPTION>');
		i++;
	}
	document.write('</SELECT>');
}

function write_select(name,title,left,top,width,color,array,action)
{
	document.write('<SELECT NAME="'+name+'" style=width:'+width+'px;');
	document.write('LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute onchange="'+action+'">');
	document.write('<OPTION selected style=color:'+color+' VALUE="">'+title+'</OPTION>');
	var i=0;
	while(i<(array.length/2))
	{
		if(array[i*2]!="")
		{
			if(array[i*2+1]=="")
				document.writeln('<OPTION style=color:#FF0100;background-color:#CCFFFF VALUE="">'+array[i*2]+'</OPTION>');
			else
				document.writeln('<option value='+array[i*2+1]+'>'+array[i*2]+'</option>');
		}
		i++;
	}
	document.write('</SELECT>');
}

function send_selection_msg(selection)
{
	send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)
{
	send_msg_ex(document.inputform.WHOTO.value,msg,document.inputform.IMGURL.value,2,-1,"",0);
}

function play_pic(selection)
{
	if(document.inputform.AI.checked)
	{
		if(selection.value!="")
		{
			var msg = inputform.msg.value;
			if(msg=="")
				msg=selection.options[selection.selectedIndex].text;
			send_msg_ex(document.inputform.WHOTO.value,msg,paste_path(selection.value),2,-1,"",0);
			inputform.msg.value="";
		}
	}
	else
		alert('请先选择图音!');
	selection.options[0].selected=true;
}

function get_room_type(roomid)
{
	if (roomid.match(/^\d{4,6}$/))
		return 0;
	else if (roomid.match(/^202\.96\.140\.\d{1,3}\:\d{4,5}$/))
		return 1;
	else if (roomid.match(/^t\d{4}$/i))
		return 2;
	else
		return -1;
}

function gotoroom(roomid,user,pass)
{
	if(roomid==room_number&&user==a_user)
		return;

	var roomurl;
	switch (get_room_type(roomid))
	{
	case 0:
		roomurl="http://202.96.140.67/cgi-bin/login.cgi?roomid="+roomid+"&USER="+user+"&PASS="+pass;
		break;
	case 1:
		roomurl="http://"+roomid+"?USER="+user+"&PASS="+pass;
		break;
	default:
		return;
	break;
	}
	window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
}

function gotolinkroom(selection)
{
	if(selection.value!="")
		gotoroom(selection.value,a_user,a_pass);
	selection.options[0].selected=true;
}

function changebkcolor(selection)
{
	if(selection.value!="")
		document.inputform.bgcolor.value=selection.value;
	selection.options[0].selected=true;
}

function gotolinkurl(selection)
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function keep_mic_fnc(user)
{
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

function end_keep_mic()
{
	if(keep_mic_user!=""&&keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(other_timer_id);
		document.screenForm.KEEPMIC.value="护麦";
		document.screenForm.KEEPMIC.title="每隔6秒自动护麦";
		keep_mic_user="";
	}
}

function auto_keep_mic()
{
	window.clearInterval(other_timer_id);

	if(keep_mic_user==""&&document.inputform.WHOTO.value!="所有人")
	{
		document.screenForm.KEEPMIC.value="护麦中";
		document.screenForm.KEEPMIC.title="";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		other_timer_id=window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value="护麦";
		document.screenForm.KEEPMIC.title="";
		keep_mic_user="";
	}
}

///////////////////////////////////
//	自动发言及回复
function auto_spack_fnc()
{
	auto_spack_input(false);
	auto_spack_count++;
	var msg=msg_auto_spack+""+auto_spack_count+"";
	send_msg(msg);
}

function auto_spack()
{
	window.clearInterval(other_timer_id);
	if(autospack.value=="话题")
	{
		var msg=prompt('请输入话题内容:',msg_auto_spack);
		if(msg==""||msg==null)
			return;
		else
			msg_auto_spack=msg;
		auto_spack_count=0;
		autospack.value="停止";
		autospack.title="停止话题"
		parent.cs("所有人");
		auto_spack_fnc();
		other_timer_id=window.setInterval("auto_spack_fnc()", 15000);
	}
	else
	{
		autospack.value="话题";
		autospack.title="自动话题内容"
		auto_spack_input(false);
		send_msg(msg_back_spack);
	}
}

function auto_spack_input(disable)
{
	var selects=document.all.tags("INPUT");
	for(var i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	selects=document.all.tags("SELECT");
	for(i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	selects=document.all.tags("BUTTON");
	for(i=0;i<selects.length;i++)
		selects[i].disabled=disable;
	autospack.disabled=false;
}

//////////////////////////////////////////
//	麦序管理
function prepare()//准备接麦了
{
	if(document.singerform.singer.selectedIndex>0)
	{
		inputform.msg.value="谢谢您的耐心等待，请准备接麦~~";
		parent.cs(singerform.singer.value);
	}
	else
		parent.cs("所有人");
	inputform.msg.focus();
}

function listsingers(type)//列表序
{
	if(singerform.singer.length==1&&type==0)
		return;
	var i=1;
	var singerstr='麦序:→';

	while(i<singerform.singer.length)
	{
		if(singerstr.length+singerform.singer.options[i].value.length >=96)
		{
			send_msg_ex(document.inputform.WHOTO.value,singerstr,"",2,11,"#FFFFCC",1);
			singerstr = '→续麦序:';
		}
		else
			singerstr=singerstr+'['+singerform.singer.options[i].value+']';
			i++;
	}
	if (singerstr != '麦序:→' && singerstr != '→续麦序:')
		send_msg_ex(document.inputform.WHOTO.value,singerstr,"",2,11,"#FFFFCC",1);

	inputform.msg.focus();
}

function remove_singer()//删除麦序
{
	if(singerform.singer.length>1)
	{
		if(singerform.singer.selectedIndex==0)
		singerform.singer.selectedIndex=1;
		singerform.singer.options.remove(singerform.singer.selectedIndex);
		if(singerform.singer.length>1)
			singerform.singer.options[1].selected=true;
		else
			singerform.singer.options[0].selected=true;
		inputform.msg.value="";
	}
	listsingers(1);
}

function singer_exist(user)//是否存在
{
	if(multi_singer_list==1)
		return false;
	for(var i=0;i<singerform.singer.options.length;i++)
		if(user==singerform.singer.options[i].value)
			return true;
	return false;
}

function singer_order(user)//报告聊友麦序号
{
	for(var i=1;i<singerform.singer.options.length;i++)
		if(user==singerform.singer.options[i].value)
		{
			var msg = "谢谢【"+user+"】，您的麦序目前排在第 "+i+" 位!!";
			send_msg_ex(user,msg,"",2,11,"#FFFFCC",1);
			return;
		}
}

function add_singer_fnc(name,auto)//加入麦序
{
	if (auto && (auto_add_singer == 0 || (auto_add_singer == 1 && !isADMIN)))
		return;

	if(singer_exist(name)==false)
	{
		newoption=document.createElement('option');
		newoption.value=name;
		newoption.text=name;
		singerform.singer.options.add(newoption);
	}
	singer_order(name);
}

function addsinger()//加入当前聊友
{
	if(inputform.WHOTO.value!='所有人')
		add_singer_fnc(inputform.WHOTO.value,false);
}

function insertsinger()//插入聊友
{
	if(inputform.WHOTO.value!='所有人'&&singer_exist(inputform.WHOTO.value)==false)
	{
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(singerform.singer.selectedIndex>0)
			singerform.singer.options.add(newoption,singerform.singer.selectedIndex);
		else
			singerform.singer.options.add(newoption,1);
	}
	listsingers(0);
}

function passlist()//批量加入聊友
{	var fcsdx=inputform.msg.value;
	var posstart,posend;
	var struser;
	var add_user;
	var i=0;
	posstart=0;
	while(i<fcsdx.length)
	{
		if(fcsdx.charAt(i)=='[')
		posstart=i+1;
		if(fcsdx.charAt(i)==']'&&posstart!=0)
		{
			posend=i;
			if(posend>posstart)
			{
				struser=fcsdx.substring(posstart,posend);
				for(var j=0;j<singerform.singer.options.length;j++)
		    if(struser==singerform.singer.options[j].value)
		   	  {
		   	  	alert("待批麦序已存在或重复，请检查");
		   	  	return i=i+1;
		   	  }
				else
				add_user=struser;
				newoption=document.createElement('option');
				newoption.value=add_user;
				newoption.text=add_user;
				singerform.singer.options.add(newoption);
			}
			posstart=0;
		}
		i++;
	}
	listsingers(0);
}

function disablesingermanage(isdisable)//开关麦序功能
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	if(isdisable)
		singerform.singmanage.value="开";
	else
		singerform.singmanage.value="关";
}

function singermanage()//切换麦序管理状态
{
	if(singerform.singmanage.value=="开")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)
{
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');
	write_button("singmanage","开",0,0,19,20,"","打开或关闭排麦功能","singermanage()");
	write_button("addtolist","增",19,0,18,20,"","加入名字到麦序末尾","addsinger()");
	write_button("tolist","插",37,0,18,20,"","插入名字到选定人之前","insertsinger()");
	write_button("removefromlist","删",55,0,18,20,"","从名单中删除所选择的名字","remove_singer()");
	write_button("addlist","批",73,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
	write_button("listing","麦序",91,0,35,20,"","公布名单排序","listsingers(0)");
	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >¤-本室-*-麦序-¤</option>');
	document.write('</SELECT></form></DIV>');
	disablesingermanage(true);
}

///////////////////////////////////////
//	换名、换房间
function validname(username)
{
	if(username.length<1)
		return false;
	if(username.search("#")!=-1||username.search('&')!=-1)
	{
		alert("名字中不能包含特殊字符: # & ");
		return false;
	}
	return true;
}

function rename()
{
	if(validname(document.changeuserform.USER.value))
	document.changeuserform.submit();
}

function write_changeroom_form(left,top,width)
{
	var w=width;
	if(w<80)
		w=80;
	var l=w-35;
	document.write('<DIV style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name="change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新开房间,输入房间号\n大观园:123456\n特约房间:t1234\n江苏分站:1234.js" name="roomid">');
	write_button("","换房",l, 0,35,20,"","进其它房间","new_room()");
	document.writeln('</form></DIV>');
}

function write_changeuser_form(left,top,width)
{
	var w=width;
	if(w<100) 
		w=100;
	var wn=(w-30)/2;
	var wp=w-wn-35;
	var l=w-35;
	document.write('<DIV style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');
	document.write('<form action="http://'+parent.window.location.hostname+':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');
	document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="输入新名字" name="USER">');
	document.write('<input type="password" style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="输入密码" name="PASS">');
	write_button("","换名",l, 0,35,20,"","换个名字进来","rename()");
	document.write('</form></DIV>');
}

function new_room()
{
	var roomid=document.change_room_form.roomid.value;
	if(roomid.length==0)
		return;

	var user,pass;
	var roomurl;
	switch (get_room_type(roomid))
	{
	case 0:
	case 1:
		roomurl=roomid;
		break;
	case 2:
		roomurl=prompt("请输入 "+roomid+" 房间的IP(202.96.140.XX)和端口:","202.96.140.66:"+roomid.substr(1));
		break;
	default:
		alert("请输入一个合法的房间号码！！");
		return;
		break;
	}

	if(document.changeuserform.USER.value.length!=0)
	{
		user=document.changeuserform.USER.value;
		pass=document.changeuserform.PASS.value;
	}
	else
	{
		user=a_user;
		pass=a_pass;
	}
	gotoroom(roomurl,user,pass);
}

//	发言语句
function check_say_fnc(msg)
{
	var who=document.inputform.WHOTO.value;

	var pos=msg.indexOf("切");

	if(pos==-1||pos>2||isADMIN)
		return msg;

	if(get_user_type(who,false)<6)
		return "对不起，我说了不应该说的话:(..........";

	for(var i=0;i<a_name_filter.length;i++)
		if(eval("who.match(/"+a_name_filter[i]+"/ig)"))
				return "对不起，我说了不应该说的话:(..........";

	return msg;
}

function checksay()
{
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('发言请勿太长');
		document.inputform.msg.value='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('不能为空');
		document.inputform.msg.focus();
		return false;
	}

	if((document.inputform.msg.value==m_last_message)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('不能重复');
		document.inputform.msg.value='';
		document.inputform.msg.focus();
		return false;
	}

	m_last_message = check_say_fnc(document.inputform.msg.value);
	dx=document.inputform.WHOTO.value;

	send_msg_ex(document.inputform.WHOTO.value,m_last_message,document.inputform.IMGURL.value,2,-1,"",0);

	document.inputform.msg.value='';
	document.inputform.IMGURL.value='';
	document.inputform.msg.focus();

	return false;
}

function send_msgobj(msgobj)
{
	var oldmsg = document.inputform.msg.value;
	var oldimg = document.inputform.IMGURL.value;
	var oldwhoto = document.inputform.WHOTO.value;
	var oldcolor = document.inputform.color.selectedIndex;
	var oldbkcolor = document.inputform.bgcolor.value;
	var oldws = document.inputform.ws.checked;

	document.inputform.msg.value='';
	document.inputform.IMGURL.value='';
	document.inputform.SAYS.value=msgobj.msg;
	document.inputform.IMG.value=msgobj.img;

	parent.cs(msgobj.whoto);

	if (msgobj.color != -1)
		document.inputform.color.options[msgobj.color].selected=true;
	if (msgobj.bkcolor != "")
		document.inputform.bgcolor.value=msgobj.bkcolor;
	if (msgobj.ws == 0)
		document.inputform.ws.checked=false;
	else if (msgobj.ws == 1)
		document.inputform.ws.checked=true;

	document.inputform.submit();

	document.inputform.msg.value = oldmsg;
	document.inputform.IMGURL.value = oldimg;
	parent.cs(oldwhoto);
	document.inputform.color.options[oldcolor].selected=true;
	document.inputform.bgcolor.value = oldbkcolor;
	document.inputform.ws.checked=oldws;
}

function usermsg(whoto,msg,img,ws,color,bkcolor)
{
	this.whoto = whoto;
	this.msg = msg;
	this.img = img;
	this.ws = ws;
	this.color = color;
	this.bkcolor = bkcolor;
}

//	自动发送消息的功能
function sendmsg_timer_fnc()
{
	if (a_user_msg.length == 0 && a_user_msg1.length == 0)
	{
		clearInterval(sendmsg_timer_id);
		sendmsg_timer_id = 0;
		return;
	}

	var msgobj;
	if (a_user_msg.length > 0)
	{
		msgobj = a_user_msg[a_user_msg.length-1];
		a_user_msg.length--;
	}
	else if (a_user_msg1.length > 0)
	{
		msgobj = a_user_msg1[a_user_msg1.length-1];
		a_user_msg1.length--;
	}


	if (typeof(msgobj) != "undefined")
		send_msgobj(msgobj);

}

function send_msg_ex(whoto,msg,img,ws,color,bkcolor,type)
{
	var msgobj = new usermsg(whoto,msg,img,ws,color,bkcolor);
	if (type == 0)
		a_user_msg.unshift(msgobj);
	else
		a_user_msg1.unshift(msgobj);

	if (sendmsg_timer_id == 0)
	{
		sendmsg_timer_fnc();
		sendmsg_timer_id = window.setInterval("sendmsg_timer_fnc()", 1500);
	}
}

function repeat_msg()
{
if(document.inputform.SAYS.value!="")
send_msg(document.inputform.SAYS.value + "  ");
document.inputform.msg.focus();
}

function insert_picture()
{
	var imgurl="";

	imgurl=prompt('请输入图片的URL:','http://');
	while(1)
	{
		if (!imgurl)
		{
			imgurl="";
			break;
		}

		imgurl=trim(imgurl);
		if(imgurl.match(/^http\:\/\/.*(\.jpg|\.gif)$/i))
		{
			if(imgurl.match(/(\?|\()/))
				imgurl=prompt("特别提示：本室只可插入图片！\n且名称中不能有“?”和“(”！\n请输入文件扩展名为'gif'、'jpg'之类的URL:",imgurl);
			else
				break;
		}
		else
			imgurl=prompt("特别提示：本室只可插入图片！\n请输入文件扩展名为'gif'、'jpg'之类的URL:",imgurl);
	}
	document.inputform.IMGURL.value = imgurl;
	document.inputform.msg.focus();
}

/////////////////////////////////////////////
//	U1区
function writeu1()
{
	if(parent.u1.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}";
	if (m_full_screen_bkimage_u1)
	{
		HTMLstr+="</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-1-parent.u.document.body.offsetHeight));\"";
		HTMLstr+="><p class=\"p9\" align=\"left\">";
	}
	else
	{
		HTMLstr+="BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}");
		HTMLstr+="</style></head><body><p class=\"p9\" align=\"left\">";
	}
	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');document.writeln=parent.d.u1_writeln;</script>\n";
	parent.u1.document.open();
	parent.u1.document.write("<font size=2><font color=red>["+yingb+"]</font>对<font color=#0000ff>["+a_user+"]</font>微微一笑：<font color=#ff88ff>欢迎您光临『"+room_name+"』，愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家。本室网址http://"+room_number+".bliao.com</font><br><br>");
	parent.u1.document.write("<font color=#009933><b>【注意】</b>:1:本室配置对FLG份子进行了特殊处理，所以对浏览器要求比较高，需IE5.5以上才可正常显示配置，如果您没有正常显示，请您升级一下您的IE到6.0。&nbsp;&nbsp;<font color=red>2:将“滚屏”后的对勾取消即可出现各区滚动条。</font></font></font><br>");
	parent.u1.document.write(HTMLstr);
}

function u1_writeln(str)
{
	if (str.match(lunzi_check))
	{
		var name = RegExp.$1;
		var obj = parent.Users.FindObject(name);
		if (obj)
		{
			var d = new Date();
			var cur_time = d.getTime();
			if (cur_time - obj.user_logintime < 120 * 1000)
			{				
				if (obj.user_state == 0 && show_lun_info == 1)
				{
					msg = "<font color=#00bb00>系统：</font><font color=#FF0000>【<a href=\"javascript:parent.cs('"+name+"');\" target=d>"+name+"<\/a>】</font><font color=#00bb00>高度疑似“轮子”，其发言已被暂时屏蔽！</font><br>\n";
					parent.u1.document.write(msg);
				}
				obj.user_state = 2;
				return;
			}
		}
	}

	parent.u1.document.write(str+"\n");

	//	这段是自动加麦，分屏下自己向自己要麦是加不上的！
	if (typeof(singerform)=="object" && singerform.singmanage.value=="关" && str.match(wantmic_check))
	{
		var name = RegExp.$1;
		var no = RegExp.$3;
		var obj = parent.Users.FindObjectbyID(no.substr(1));
		if (obj && obj.name == name)
		{
			add_singer_fnc(obj.name,true);
			obj.user_state = 1;
		}
	}
}

function houtai()
{
window.open(config_houta+"admin.asp");
}
function auto_log_func()
{
	if(login_form.first.value != '2')
		setTimeout("login_form.submit();",10000);
	else
		window.clearInterval(autolog_timer_id);
}

function enable_auto_log(action)
{
	if(action!="")
	{
		var HTMLstr=('<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">');
		HTMLstr+=('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
		HTMLstr+=('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
		HTMLstr += ('<INPUT NAME="ucount" TYPE="HIDDEN" VALUE="'+parent.count+'">');
		HTMLstr+=('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(isADMIN?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
		HTMLstr+='<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
		setTimeout("login_form.submit()",2000);
		autolog_timer_id=setInterval("auto_log_func()",login_timer*1000);
	}
}
enable_auto_log(config_houta+"login.asp");
function exec_face_command(no,doc)
{
	var obj = parent.Icons.FindObject(no);
	var imghtml = "";
	if(obj)
		imghtml="<img src='"+obj.img.src+"' border=0 width="+obj.img.width+" height="+obj.img.height+" alt='"+obj.alt+"'>";
	else if (no.match(/^p\d{2}$/i))
		imghtml="<img src='"+paste_path("pic/p0"+no.substr(1)+".gif")+"'>";
	else if (doc == 0 && typeof(singerform)=="object" && singerform.singmanage.value=="关" && no.match(/^S\d*$/i))	
	{
		obj = parent.Users.FindObjectbyID(no.substr(1));
		if (obj)
			add_singer_fnc(obj.name,true);
	}

	if (imghtml != "")
		if (doc==0)
			parent.u.document.write(imghtml);
		else
			parent.u1.document.write(imghtml);
}

function u_face(no)//U区
{
	exec_face_command(no,0);
}

function u1_face(no)//U1区
{
	exec_face_command(no,1);
}

////////////////////////////////
//	语音部分
function writev_fnc(type)
{
	var HTMLstr;
	if(parent.v1.document==null)
		return;
	if (type == 0)
	{
		if (m_full_screen_bkimage_v1 && isIE55)
		{
			HTMLstr  = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
			HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?97:3)+"-parent.r.document.body.offsetHeight));\">";
			HTMLstr += "<script language='javascript'>window.onerror=new Function('return false');</script>";
			HTMLstr += "<iframe id=frm src='about:<html><body style=background-color:transparent></body></html>' width=100% height=100% BORDER=0 FRAMEBORDER=0 SCROLLING=no ALLOWTRANSPARENCY></iframe>";
			HTMLstr += "<script>setTimeout('this.document.all.frm.src=\"http://202.96.140.88/voice.phtml?bgcolor="+escape('" style=background-color:transparent "')+"&port="+parent.window.location.port+"&host="+parent.window.location.hostname+"&name="+a_user+"&pass="+a_pass+"&encode=gb2312\"',1000);<\/script>";
			HTMLstr += "</body></html>";
			parent.v1.document.open();
			parent.v1.document.write(HTMLstr);
			parent.v1.document.close();
		}
		else
			parent.writev();
	}
	else
	{
		parent.v1.document.open();
		parent.v1.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body bgcolor=#EFF5FE></p></body></html>");
		parent.v1.document.close();
	}

	if(parent.v.document==null)	
		return;
	
	HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (m_full_screen_bkimage_v)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?(type==0?187:97):(type==0?93:3))+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += "BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}");
	}
	HTMLstr += "INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>\n";

	HTMLstr += "<script>\n";
	HTMLstr += "function v2v\(\)\n";
	HTMLstr += "{\n";
	HTMLstr += "	if(parent.d.inputform.WHOTO.value=='所有人')return;\n";
	HTMLstr += "	if (parent.d.black_roomname =='')\n";
	HTMLstr += "	{\n";
	HTMLstr += "		if(document.f.v2vv.value == \'"+(type==0?'双工对话':'双工')+"\')\n";
	HTMLstr += "		{\n";
	HTMLstr += "			document.f.v2vv.value=\'"+(type==0?'退出双工':'退出')+"\';\n";
	HTMLstr += "			parent.d.v2vForm.TOONE.value=1;\n";
	HTMLstr += "			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
	HTMLstr += "			parent.d.v2vForm.submit();\n";
	HTMLstr += "		}else{\n";
	HTMLstr += "			document.f.v2vv.value=\'"+(type==0?'双工对话':'双工')+"\';\n";
	HTMLstr += "			parent.d.v2vForm.TOONE.value=0;\n";
	HTMLstr += "			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
	HTMLstr += "			parent.d.v2vForm.submit();\n";
	HTMLstr += "		}\n";
	HTMLstr += "	}else if(confirm('黑屋去啦'))\n";
	HTMLstr += "	{\n";
	HTMLstr += "		parent.d.send_msg('我去双工房了');\n";
	HTMLstr += "		parent.d.gotoroom(parent.d.black_roomnumb,parent.d.a_user,parent.d.a_pass);\n";
	HTMLstr += "	}\n";
	HTMLstr += "}\n";
	HTMLstr += "<\/script>\n";

	HTMLstr += "<script language='javascript'>window.onerror=new Function('return false');</script>\n";

	if (type == 0)
	{
		HTMLstr += "<form name=f><center><input type=button name=v2vv value=双工对话 onclick=\"v2v();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=closev value=关闭语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
	}
	else
	{
		HTMLstr += "<center><form name=f><p>\n";
		HTMLstr += "<object id='blueskyvoice' classid='clsid:991481A7-4669-4e15-8C24-100404E1F5CB' width='160' height='62' codebase='http://www.bluesky.cn/download/blueskyvoice_60.cab#Version=6,0,0,18'>\n";
		HTMLstr += "  <param name=\"_cx\" value=\"5080\">\n";
		HTMLstr += "  <param name=\"_cy\" value=\"5080\">\n";
		HTMLstr += "  <param name=\"_ExtentY\" value=\"3784\">\n";
		HTMLstr += "  <param name=\"_StockProps\" value=\"0\">\n";
		HTMLstr += "  <param name=\"host\" value=\""+window.location.hostname+"\">\n";
		HTMLstr += "  <param name=\"port\" value=\""+parent.window.location.port+"\">\n";
		HTMLstr += "  <param name=\"name\" value=\""+a_user+"\">\n";
		HTMLstr += "  <param name=\"pass\" value=\""+a_pass+"\">\n";
		HTMLstr += "  <param name=\"roomid\" value=\"0\">\n";
		HTMLstr += "  <param name=\"mode\" value=\""+(sound_stereo==1?"HIGH":"NORMAL")+"\">\n";
		HTMLstr += "  <param name=\"samples\" value=\""+(sound_stereo==1?"8":"$samplemode")+"\">\n";
		HTMLstr += "  <param name=\"quality\" value=\"1\">\n";
		HTMLstr += "</object>\n";
		HTMLstr += "<script language='JavaScript' for='blueskyvoice' event='selectname(name)'>\n";
		HTMLstr += "parent.cs(name);\n";
		HTMLstr += "<\/script>\n";

		HTMLstr += "<script>\n";
		HTMLstr += "document.blueskyvoice.RecOff();\n";
		HTMLstr += "function handle\(v\){\n";
		HTMLstr += "	parent.d.voicehandleForm.VOICEHANDLE.value=v;\n";
		HTMLstr += "	parent.d.voicehandleForm.WHOTO.value=parent.d.inputform.WHOTO.value;\n";
		HTMLstr += "	parent.d.voicehandleForm.submit\(\);\n";
		HTMLstr += "}\n";
		HTMLstr += "<\/script>\n";

		HTMLstr += "<input type=button name=requestmic  value=拿麦 title='' onclick=\"document.blueskyvoice.RequestMic();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=releasemic  value=放麦 title='' onclick=\"document.blueskyvoice.ReleaseMic();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=filtervoice  value=过滤 title='' onclick=\"document.blueskyvoice.FilterVoice();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=v2vv  value=双工 title='' onclick=\"v2v();this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<br><input type=button name=mainmic  disabled value=主 title='' onclick=\"handle(1);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=secondmic  disabled value=附 title='' onclick=\"handle(2);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=getmic disabled value=收 title='' onclick=\"handle(0);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=cutmic disabled value='切' title='' onclick=\"handle(4);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=freemic  disabled value='自' title='' onclick=\"handle(3);this.blur();parent.d.document.inputform.msg.focus();\">\n";
		HTMLstr += "<input type=button name=close value='关 闭' title='' onclick=\"parent.v1.location='about:blank';parent.writecv_new()\"></form>\n";
		HTMLstr += '</body></html>';
	}

	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();

	if (type == 0)
	{
		parent.voiceframe.rows="*,30";
		reset_btn_style(parent.v.f.v2vv,70);
		reset_btn_style(parent.v.f.closev,70);
	}
	else
	{
		parent.voiceframe.rows="0,*";

		reset_btn_style(parent.v.f.requestmic,35);
		reset_btn_style(parent.v.f.releasemic,35);
		reset_btn_style(parent.v.f.filtervoice,35);
		reset_btn_style(parent.v.f.v2vv,35);

		reset_btn_style(parent.v.f.mainmic,17);
		reset_btn_style(parent.v.f.secondmic,18);
		reset_btn_style(parent.v.f.getmic,17);
		reset_btn_style(parent.v.f.cutmic,18);
		reset_btn_style(parent.v.f.freemic,17);
		reset_btn_style(parent.v.f.close,46);
	}
}
setTimeout('parent.v.document.blueskyvoice.RecOn()',3000);
function writev_new()
{
	writev_fnc(1);
}

function writev()
{
	writev_fnc(0);
}

function writecv_fnc(type)
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (m_full_screen_bkimage_v)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-1-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?97:3)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	}
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");

	if (type == 0)
		HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";
	else
		HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"{parent.writev_new();if(parent.InAdminMode==1){parent.EnableVoiceAdmin();}else{parent.DisableVoiceAdmin();}}\">";

	HTMLstr+="<script language='javascript'>window.onerror=new Function('return false');</script>";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>说明&测试</span></a></body></html>";
	parent.voiceframe.rows="0,*";
	parent.v.document.open();
	parent.v.document.write(HTMLstr);
	parent.v.document.close();
	reset_btn_style(parent.v.closev,70);
}

function writecv()
{
	writecv_fnc(0);
}

function writecv_new()
{
	writecv_fnc(1);
}

//	一些通用的函数
function auto_open_ai_fnc()
{
	if(auto_open_ai==1)
	{
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
	}
	if(auto_open_div==1)
	{
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
	}
	if(disable_notice==1&&document.screenForm.NOTICE)
	{
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
	}
	if(auto_open_ai==1||auto_open_div==1||disable_notice==1)
		document.aicontrolForm.submit();
}

function about()
{
	if((window.event.srcElement.tagName=='INPUT')&&(window.event.srcElement.type.toUpperCase()=='TEXT'||window.event.srcElement.type.toUpperCase()=='PASSWORD'))
		window.event.returnValue=true;else window.event.returnValue=false;
}

function cs(name)
{
	add(name);
	document.inputform.WHOTO.value=name;
	document.inputform.msg.focus();
	parent.lastwhoto = name;

	var obj = parent.Users.FindObject(name);
	if (obj && obj.user_wsstate!=0)
		document.inputform.ws.checked=obj.user_wsstate==2?false:true;
	else if (auto_set_ws == 1)
		document.inputform.ws.checked = default_ws;

	return;
}

function whoto_onchange()
{
	parent.lastwhoto = document.inputform.WHOTO.value;

	var obj = parent.Users.FindObject(document.inputform.WHOTO.value);
	if (obj && obj.user_wsstate!=0)
		document.inputform.ws.checked=obj.user_wsstate==2?false:true;
	else if (auto_set_ws == 1)
		document.inputform.ws.checked = default_ws;

}

function array_unshift(item)
{
	var oldlen = this.length;
	for (var i = oldlen ; i > 0 ; i--)
		this[i] = this[i-1];
	this[0] = item;
}

function find_user_title(user_type)
{
	var index = 0;
	while(index < a_user_title.length)
	{
		if(user_type == a_user_title[index])
			return index / USER_TITLE_FIELDS;
		index+=USER_TITLE_FIELDS;
	}
	return (a_user_title.length / USER_TITLE_FIELDS) - 1;
}

function find_user_icon(user_title)
{
	var index = 0;
	while(index < a_user_icon.length)
	{
		if(a_user_title[user_title*USER_TITLE_FIELDS+2] == a_user_icon[index])
			return index / USER_ICON_FIELDS;
		index+=USER_ICON_FIELDS;
	}
	return (a_user_icon.length / USER_ICON_FIELDS) - 1;
}

function Users_Add(name,adminmode,usertype,extinfo,icon,id,sex,voice, video)
{	
	var isnewuser = (parent.Users.FindObject(name) == null);

	var user_type = get_user_type(name,adminmode);
	parent.Users.Add(name,adminmode,usertype,extinfo,icon,id,sex,voice, video);
	var obj = parent.Users.FindObject(name);
	obj.user_type = user_type;
	obj.user_title = find_user_title(user_type);
	obj.user_icon = find_user_icon(obj.user_title);
	if (isnewuser)
	{
		var d = new Date();
		obj.user_logintime = d.getTime();
		obj.user_state = 0;
		obj.user_wsstate = 0;
		if (isAutoWelcome && (auto_welcome_type == 2 || (auto_welcome_type == 1 && isADMIN)))
			setTimeout('send_msg_ex("'+name+'","'+get_autosend_msg(a_welcome)+'","",2,11,"#FFFFCC",1)',5000);
	}
}

function switch_autowelcome()
{
	isAutoWelcome = !isAutoWelcome;
	if (isAutoWelcome)
		autowelcome.value="停止迎宾";
	else
		autowelcome.value="自动迎宾";
}

function UserList_SortOnType(a,b)
{
	var n1 = a.user_type ;
	var n2 = b.user_type ;
	if(n1 == n2)
	{
		if (a.name == b.name)
			return 0 ;
		if(a.name < b.name)		
			return -1 ;
		if(a.name > b.name)		
			return 1;					
	}
	if(n1 < n2)
		return  (n2 >= 0 && n1 < 0)?1:-1;
	if(n1 > n2)
		return (n1 >= 0 && n2 < 0)?-1:1;
		if (lists[0] != "临时主持")
           man_user = 1;
}
function lszc()
{
if (man_user == 1 && a_user == "临时主持")
{      login_succeed = false;
     document.controlForm.LEAVEIT.onclick();
     alert('您好['+a_user+']！\n万分抱歉，本房间现在已经有主持了！\n谢谢你的热心！！！');
     parent.close();
     return;
}
else if(a_user == "临时主持")
     setTimeout("guan()",3000);

}
function UserList_SortByType()
{
	this.m_pUsers.sort(this.SortOnType);
}

function UserList_FindObjectbyID(ID)
{	
	for(var i = 0; i < this.GetCount(); i ++)
		if(this.GetObject(i).id == ID) 
			return this.GetObject(i) ;
	return null;
}

function paste_path(imagename)
{
	return imagename.match(/^http\:\/\/.+$/i)?imagename:base_path+imagename;
}

function get_user_type(username,admin)
{
	var user_type;
	var index;
  if ((room_adminname_head != "" && username.indexOf(room_adminname_head)==0))
		user_type = 7;
	else if(username.match(/^\*/))
		user_type = 8;
	else if(username.match(/^\d+$/))
		user_type = 9;
	else if(username.match(/^\w*$/))
		user_type = 10;
	else if(username.match(/^\w+/))
		user_type = -3;
	else
		user_type = -4;

	if(admin == 1)
		 user_type=((user_type==2)?0:1);
	index = 0;
while(index<a_vip_user.length)
{if(username == a_vip_user[index])
   {if(isADMIN)
     user_type = a_vip_user[index+1];
   else
   	 user_type = a_vip_user[index+1];} 
	index+=2;}  
	return user_type;
}



function ws_onclick()
{
	if (auto_set_ws == 0)
		return;
	var name = document.inputform.WHOTO.value;
	if (name == "所有人")
	{
		default_ws = document.inputform.ws.checked;
		return;
	}

	var obj = parent.Users.FindObject(name);
	if (obj)
		obj.user_wsstate = document.inputform.ws.checked?1:2;
}
function ascheck()
{if(full_screen_bkimage == 1)
  {
	if(document.inputform.as.checked){
		parent.u.document.body.scroll='no';
		parent.d.document.body.scroll='no';
		parent.u1.document.body.scroll='no'
	}else{
		parent.u.document.body.scroll='yes';
		parent.d.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes'
		}
}}


setInterval("ascheck()",500);
init_system();
setTimeout("lszc()",2000);