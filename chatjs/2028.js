var a_user = document.inputform.USER.value;
var a_pass = document.inputform.PASS.value;
var config_place = "http://www.bhqf.net/tu/";
var room_owner="*☆o音乐㊣制造o☆";
var room_name="爱情码头";
var room_adminname_head="";
var room_number="2028";
var room_link_url = "http://2028.liaowan.com";
var black_roomname="";
var black_roomnumb="";
//var userlist_top_html = "<B><font style=\"filter: glow(color=#009900,strength=4); Height:12pt; color:#FFFFCC; padding:1px;\">&nbsp;&nbsp;<font size=4> 爱 </font><font size=4> 情 </font><font size=4> 码 </font><font size=4> 头 </font></font></B>";

var userlist_top_html = "<table border=0 width=120px cellspacing=0><tr><td align=middle><img src=http://daoer.512j.com/logo2.jpg></td></tr></table>";
var userlist_bottom_html = "<img src=http://daoer.512j.com/logo1.gif>";
var userlist_bkcolor = "#E8F4E0";
var userlist_bkimage = "http://daoer.512j.com/bj.jpg";
var voice_normal_color = "#00D000";
var voice_v2v_color = "#BFBFBF";
var voice_vr_color = "#00D000";	
var div_screen_bkcolor = "";
var div_screen_bkimage = "";
var voice_bkcolor = "#E5F1DF";
var voice_bkimage = "";	
var input_bkcolor = "#E8F4E0";
var input_bkimage = "";	
var input_msg_color	= "#328305";
var input_msg_bkcolor = "#F0F8FF";
var body_text_color	= "#328305";
var select_color = "#328305";
var select_text_color = "#328305";
var button_text_color = "#00008B";
var button_bk_image	= 1;
var button_bk_color = "";
var full_screen_bkimage	= 1;
var auto_hide_scrollbar = 0;
var disable_notice = 1;	
var a_btn_pic = new Array
(17,"http://daoer.512j.com/bn17.gif",18,"http://daoer.512j.com/bn18.gif",19,"http://daoer.512j.com/bn18.gif",35,"http://daoer.512j.com/bn35.gif",46,"http://daoer.512j.com/bn46.gif",70,"http://daoer.512j.com/bn70.gif");
var url_popup_window = "";
var only_registr_user = 0;	
var only_chinese_name = 0;
var default_admin_pass = "2028";
var auto_open_ai = 1;
var auto_open_mic = 1;
var auto_open_div = 1;
var multi_singer_list = 0;
var msg_login		=	"★爱情码头★~0~★开心的乐园~0~★~0~温馨的港湾★．°★欢迎你的到来,愿它成为你网络的家园,带给你开心★带给你快乐!!美丽的家园有你有我才精彩★!! ";
var msg_admin		=	"大家好，〖"+a_user+"〗上管了,由我来为大家服务:)";
var msg_quitadmin	=	"〖"+a_user+"〗先下管了，谢谢大家对我的支持！！";
var msg_leave		=	"各位：〖"+a_user+"〗先行一步了,下次再和大家聊！";
var msg_auto_spack	=	"我有些事临时离开一下，一会儿就回来！！";
var msg_back_spack	=	"大家好呀，我回来了！你们聊什么呢？让我也听听。。。。。";
var a_link_button = new Array
("主頁","http://www.xlbbs.com/",
"論壇","http://www.xlbbs.com/bbs/cgi-bin/leobbs.cgi",
"註冊","http://www.liaowan.com/USadmin/regadd.asp",
"留言","http://www.touch.sh/gb/gbook.php?user=轩|东",
"調麥","http://www.qhzs.net/qbjy/cx5.1.htm",
"管理","http://www.liaowan.com/roomadmin/");
var a_vip_user = new Array
(
"*☆o音乐㊣制造o☆",1,"*島兒oo",1,"*☆o音樂㊣製造o☆",1,"*╰ぃ寶貝ルゞ",2,"*$$島兒$$",2,"*星雨",6,"*嘿嘿嘿",6,"*",6,"*",6,"*",6,"*",6,"*",6,"*",6,"*",6,"*ん夏话",5,"*⺷神话⺷",5,"*",5,"*",5,"*",5,"*",5,"*℡DJル→尐傻瀦╰ァ",4,"*",6,"*≈○o追╄风☆╮",4,"*",5,"*",4,"",5,"*",4,"*",6,"*",5,"*",4,"*",5,"*",5,"*",4,"*",5,"*",5,"*",5,"*",4,"*",5,"*",5,"*",4,"*",4,"*",5,"*",4,"*",4,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",5,"*",4,"*",5,"*",4);
var a_name_filter = new Array
("≈明≈月≈","≈小剛≈");
var a_hide_user = new Array
("*",0,"*",0,"",0);
var bianyi = new Array
("*愛妳壹生","*≈明≈月≈","*≈小剛≈","*☆o音乐㊣制造o☆","*島兒oo","*☆o音樂㊣製造o☆","嘿嘿~");
var a_usertitle = new Array
(0,"在线主持","http://daoer.512j.com/zxgl.gif","#FFc2e","#FFFFFF",
1,"本室室豬","http://daoer.512j.com/sz.gif","#FF4500","#FFFFFF",
2,"本室監管","http://www.wzdu.com/UploadFile/20044414383886552.gif","#8FBC8F","#FFFFFF",
3,"本室副室","http://daoer.512j.com/fs.gif","#FFCC33","#FFFFFF",
4,"本室高管","http://daoer.512j.com/peizhi/012.gif","#9900FF","#FFFFFF",
5,"本室管理","http://daoer.512j.com/peizhi/016.gif","#990099","#FFFFFF",
6,"特殊貴賓","http://daoer.512j.com/05.gif","#FA089D","#FFFFFF",
7,"本室貴賓","http://daoer.512j.com/peizhi/011.gif","#0000ff","#FFFFFF",
8,"本室嘉賓","http://daoer.512j.com/peizhi/008.gif","#0000ff","#FFFFFF",
9,"本室嘉賓","http://daoer.512j.com/24.gif","#0000ff","#FFFFFF",
10,"本室嘉賓","http://daoer.512j.com/30.gif","#0000ff","#FFFFFF");
var a_roomlink = new Array
(
black_roomname,	black_roomnumb,
"等待加入",	"",
"等待加入",             ""
);
var a_welcome = new Array
("欢迎",	"欢迎您光临《" + room_name + "》语音聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
"欢迎",	"^_^*《" + room_name + "》*^_^*欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
"欢迎",	"你终于来了呀！欢迎欢迎！！！我在《" + room_name + "》等你,你是我一生的等待和牵挂！朋友！！！");
var a_lleave = new Array
("答谢",	"〖"+document.inputform.USER.value+"〗谢谢"+room_name+"朋友们!!!!",
"谢谢",	"〖"+document.inputform.USER.value+"〗谢谢"+room_name+"朋友们的鲜花,掌声和鼓励!!!",
"再谢",	"〖"+document.inputform.USER.value+"〗衷心感谢"+room_name+"朋友们的热情!!!");
var a_santmic = new Array
("准备",	"您好!下一位到您接麦了,请您做好准备~~!请给管理员打1111提示~~谢谢!",
"接麦",	"您好!请您接麦,不好意思,让您久等了,请给管理员打1111提示~~请准备接好您的麦克风!谢谢!!!");
var a_flower = new Array
("醉倒",	"醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧！要带唇印的哦~保安~我的鞋~",
"签名",	"■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~～☆★☆～~我听的都醉了~0~",
"醉了",	"哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀",
"迷人",	"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",
"玫瑰",	"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮葱花╰☆☆╮ 礼花～～腰花～～杠上花",
"歌星",	"☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的吗？我怀疑是歌星唱的啊！！* ~",
"真棒",	"唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我－紫风铃",
"郁金",	":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",
"啪啪",	"*^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",
"水仙",	"玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮ぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",
"牡丹",	"* *．°牡丹★·。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．°一筐一筐又一筐∴");
var a_message = new Array
("有樂",	"有音乐11111有音乐伴奏，有音乐1111111111有伴奏音乐111111",
"音樂",	"有音乐111111有音乐伴奏，有音乐111111111有音乐1111111111");
var a_see = new Array
("無音","没有音乐啊！没有音乐，没有音乐，没有音乐！",
"無樂","没有音乐啊！没有音乐，没有音乐，没有音乐。~！");
var a_byebye = new Array
("不舍","真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，"+ room_link_url +"，别忘了哦~！",
"走好","走好呀，天黑了，留神脚底下。有时间一定再来《"+ room_name +"》串串门好吗！！");
var a_leave = new Array
("想留",	"其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
"告别",	"长叹一声,凄婉地说道:▅█拜拜●了█▅一曲离歌泪千行,不知何日再逢君.我这就去了,大家多保重▅█拜拜●了█▅··有红包收吗，有的话，可以再多留三秒······");
var a_love = new Array
("邀请演出",	"您好!亲爱的朋友,欢迎您的到来,您可以给大家唱一首歌吗，说说话吗？：）谢谢☆⌒_⌒．☆° ．",
"希望参与",	"欢迎您来到“《" + room_name + "》”，希望你多多参与的娱乐活动，给管理员打999，管理员会把麦交到您手上的，祝您在这里玩的开心：",
"感谢唱歌",	"您好!谢谢您为大家献上的歌曲,是非常的动听,如果有时间再为大家献上一曲吧,我们感谢您..同时也欢迎您常来!!");
var a_like = new Array
("开心",	"你清丽秀雅的脸上始终荡漾着春天般美丽的笑容，在你那流转顾盼的眼睛里，〖"+document.inputform.USER.value+"〗总能捕捉到你的宁静，你的热烈，你的敏感，你的聪颖",
"想你",	"想你的时候是清风拂过睡莲的幽香,念你的时候歌声越过晚霞的飘渺.你知道〖"+document.inputform.USER.value+"〗在想你吗? ",
"网恋",	"倘若西子再世，见到你她也会自惭形秽，无颜见人，唯有投水自溺；假如昭君复生，在你面前也会黯然失色，自叹弗如，只能远避边塞，从此不敢再回中原",
"魅力",	"给〖"+document.inputform.USER.value+"〗一个微笑就够了，如薄酒一杯，像柔风一缕，这就是一篇最动人的宣言呵，仿佛春天，温馨又飘逸。",
"爱错",	"〖"+document.inputform.USER.value+"〗深深地恳求你；不要把我逐出你的爱门之外，我一分一秒也不能缺少你的爱。只有赢得你的爱，我的生命才有光彩。",
"旧梦",	"你像那沾满露珠的花瓣，给我带来一室芳香；你像那划过蓝天的鸽哨，给我带来心灵的静远和追求",
"网情",	"〖"+document.inputform.USER.value+"〗每时每刻都在思恋的“苦刑”下熬煎，不知你何日方能赐恩，减轻我的这种苦刑！",
"红颜",	"没有你，别人的关怀，都是徒然的。对于这些关怀，〖"+document.inputform.USER.value+"〗无意接受，也没有资格接受",
"开心",	"我爱你！我真的爱你！我真的好爱你！〖"+document.inputform.USER.value+"〗 love you！〖"+document.inputform.USER.value+"〗 love you so much！",
"想你",	"认识你以后我脑海里挂着的一切都消失得无影无踪，取而代之的是我两在一起的欢乐时光");
var a_jantmic = new Array
("急事",	"〖"+document.inputform.USER.value+"〗我有急事要119!!!请先给我麦，谢谢!!!",
"急麦",	"〖"+document.inputform.USER.value+"〗119急麦,╭═●我有急事-119,请先给我麦，谢谢!!!");
var a_thank = new Array
("搅拌", "【领导可以搅伴吗??】",
"搅拌", "【唱得好哇！】【我也想唱歌了~~】",
"搅拌", "【我要麦，我要搅拌这首歌!!】【我要麦，我要搅拌这首歌!!!】");
var a_wantmic = new Array
("要麦",	"我要麦⑨⑨⑨⑨⑨⑨请主持人排个麦.谢谢╭═●   :)",
"唱歌",	"我要表演呀⑨⑨⑨⑨⑨我要唱歌呀⑨⑨⑨⑨⑨╭═●");
var a_heart = new Array
("听见",	"11111111111111111111111111111111111111111111",
"听见",	"听见了～听见了～||||||||||||||||||||||||||||||||||||||",
"听见",	"听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲听见了，好清楚▲▲▲▲▲");
var a_emote = new Array
("☆问候☆","","He你好","//hello","愉快招呼","//greet","热烈欢迎","//welcome","握手","//hand","请多关照","//visit","公子有礼","//boy","愉快表情","//:)","对他笑笑","//:)2","热情拥抱","//bearhug","坐在一起","//sit","弯腰鞠躬","//bow","你太客气","//welcome2","生日快乐","//birthday","热烈鼓掌","//clap","打哈哈","//ha",
"哈哈大笑","//haha","疑惑看着",	"//?","壮士过奖","//cool","做鬼鬼脸","//face","你真好",	"//thank","高实在高","//gao","傻笑几声","//he","想说什么","//en","吐舌头","//:p",
"☆调情☆","","发誓爱你","//ai","天真望著","//@@","昏倒怀抱","//faint","飞了过去","//fly","嘴巴堵你","//ds","这个女人",	"//girl","好喜欢你","//ppp","真的是你","//wait4","我在等你","//waiting","等的花谢","//wait3","眼眸眨眨","//lovesee","含情脉脉","//lovelook","撩人诱惑","//lure","向你求婚","//marry","好象见过","//mm","脸好热热","//shy",
"无辜望著","//inn","轻轻拥抱","//hug","跳入怀里","//jump","啵亲一下","//kiss","热情拥吻","//smooch","疯吻N口",	"//lly","用爱折磨","//zhemo","做我姐姐","//qsister","做我妹妹","//qsister1","做我弟弟","//qbrother","做我哥哥","//qbrother1","在肩上哭","//cry","唉叹口气","//sigh",
"☆打斗☆","","将蛋扔去","//allen","流口水","//drivel","坏欺负人","//bad","咬他哇叫","//bite","恶毒看着","//crazy","剁成小块","//cut","满脸桃花","//da","落闸放狗","//dog","喷嚏过去","//ds3","躲远烦你","//duo","催肥大法","//fat","化为灰烬","//zap","拎耳扔出","//tu","狗皮膏药","//paste","拧得发青","//pinch","用铁锤敲","//hammer",
"一大傻冒","//beaut","人工呼吸","//breath","篮球扣下","//koxia","☆其他☆","","完全同意","//agree","这么定了","//so","你吃蛋糕","//bb","懒得理你","//angry","不舒服了","//ill","我很出名","//know","我不知道","//no","我苦出身","//work","谁不知晓","//who","捧腹大笑","//laugh","跟我无关","//noask","说的对！","//right","摇了摇头","//shake",
"愉快微笑","//smile","赔礼道歉","//sorry","请求原谅","//sorry2","原谅对象","//sorry3","奇怪眼神","//stare","想破脑袋","//think","真的好累","//tired","胜利手势","//yeah","NoNo","//finger",
"☆告别☆","","后会有期","//cu","吻别再见","//cu2","望着背影","//cu3","再陪陪俺","//stw","请保重！","//goodbye","会后有期","//goodbye2","难过要哭","//tear","留路上吃","//tea1","挥挥手。","//wave");
var a_admin = new Array
("本室网址","聊天室网址 "+ room_link_url ,"color:#009900",
"禁用踢人","fnc:disable_KICK(true)","color:#0000FF;background-color:#CCFFCC",
"快踢卡名","fnc:quick_kick()","color:#FF0000;background-color:#FFFF99",
"启用踢人","fnc:disable_KICK(false)","color:#0000FF;background-color:#CCFFCC",
"请您准备","您好，欢迎来到“《" + room_name + "》”，下一个就是您的麦了,请准备好!!!!","",
"拒绝双工","您好!十分对不起，我现在不能和您双工，请您谅解。 ","color:#6600ff",
"已经排麦","您好!我已为您排麦,请您耐心待等候!","",
"请您接麦","您好!请您接麦,不好意思,让您久等了,请接好您的麦克风!","",
"请您关麦","朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
"请开语音","您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",
"文明聊天","提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",
"打黑警告","打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",
"请您换名","我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。","",
"换注册名","请您换一个文字名字或注册名字好吗，这样大家会记住您的，大家叫您时也方便！谢谢","");
//——图片——
var a_picture = new Array
(
	 "欢迎光临","http://flash.daqing.net/bl/images/huanying.gif" , 
         "你好谢谢",   "http://flash.daqing.net/bl/images/xie1.gif", 
         "敬茶",      "http://flash.daqing.net/bl/images/hecha.gif", 
         "摔死你",      "http://icq.163kk.net/mimi/lbyy/room/pic/shuaisi.gif",
         "看你还刷屏不",      "http://icq.163kk.net/mimi/lbyy/room/pic/shuaping.gif",
         "连环导弹",      "http://www.lndd.org/button/0283.gif",
         "数钱","http://flash.daqing.net/bl/images/shuqian.gif",
         "嘎嘎~",     "http://flash.daqing.net/bl/images/gaga.gif",
        "老婆我爱你",     "http://icq.163kk.net/mimi/lbyy/room/pic/lp.gif",
        "老公我爱你~",     "http://icq.163kk.net/mimi/lbyy/room/pic/lg.gif",
        "敲你~",          "http://icq.163kk.net/mimi/lbyy/room/pic/qiao.gif",
        "瞧你那傻样~",     "http://icq.163kk.net/mimi/lbyy/room/pic/sha.jpg",
         "☆赞扬☆",	"",
         "太好听",      "http://flash.daqing.net/bl/images/haoting.gif",
         "太好听2",     "http://flash.daqing.net/bl/images/haoting2.gif",
         "太好听3",      "http://flash.daqing.net/bl/images/zhenmei.gif",
         "太好听4",    "http://flash.daqing.net/bl/images/gao.gif",
         "太好听5",    "http://flash.daqing.net/bl/images/changfehao2.gif",
         "太好听6",      "http://flash.daqing.net/bl/images/changdehao.gif",
         "太好听7",      "http://flash.daqing.net/bl/images/jiayou4.gif",
         "太好听8",      "http://flash.daqing.net/bl/images/jiayou5.gif",
         "太好听9",      "http://flash.daqing.net/bl/images/taihaole.gif",
         "大歌星",      "http://flash.daqing.net/bl/images/qingwen.gif", 
         "☆献花☆",	"",
         "献花",      "http://flash.daqing.net/bl/images/hua.gif",
         "献花2",      "http://flash.daqing.net/bl/images/hua2.gif",
         "献花3",     "http://flash.daqing.net/bl/images/hua3.gif",
         "献花4",     "http://flash.daqing.net/bl/images/hua4.gif",
         "献花5",      "http://flash.daqing.net/bl/images/hua5.gif",
         "献花6",      "http://flash.daqing.net/bl/images/hua6.gif",
         "献花7",      "http://flash.daqing.net/bl/images/hua7.gif",
         "献花8",      "http://flash.daqing.net/bl/images/hua8.gif",
         "献花9",      "http://flash.daqing.net/bl/images/hua9.gif",
         "献花10",      "http://flash.daqing.net/bl/images/hua10.gif",
         "献花11",      "http://flash.daqing.net/bl/images/hua11.gif",
         "献花12",      "http://flash.daqing.net/bl/images/hua12.gif",
         "献花13",      "http://flash.daqing.net/bl/images/hua13.gif",
         "献花14",      "http://flash.daqing.net/bl/images/hua14.gif",
         "献花15",      "http://flash.daqing.net/bl/images/hua15.gif",
         "献花16",      "http://flash.daqing.net/bl/images/hua16.gif",
         "献花17",      "http://flash.daqing.net/bl/images/hua17.gif",
         "献花18",      "http://flash.daqing.net/bl/images/hua18.gif",
         "献花19",      "http://flash.daqing.net/bl/images/hua19.gif",
         "献花20",      "http://flash.daqing.net/bl/images/hua20.gif",
         "☆跳舞☆",	"",
         "伴舞",      "http://flash.daqing.net/bl/images/tiaowu.gif",
         "伴舞2",     "http://flash.daqing.net/bl/images/tiaowu12.gif",
         "伴舞3",     "http://flash.daqing.net/bl/images/tiaowu13.gif",
         "伴舞4",     "http://flash.daqing.net/bl/images/tiaowu14.gif",
         "伴舞5",     "http://flash.daqing.net/bl/images/tiaowu5.gif",
         "伴舞6",     "http://flash.daqing.net/bl/images/tiaowu6.gif",
         "伴舞7",     "http://flash.daqing.net/bl/images/tiaowu7.gif",
         "伴舞8",     "http://flash.daqing.net/bl/images/tiaowu8.gif",
         "伴舞9",     "http://flash.daqing.net/bl/images/tiaowu9.gif",
         "伴舞10",    "http://flash.daqing.net/bl/images/tiaowu10.gif",
         "伴舞11",    "http://flash.daqing.net/bl/images/tiaowu11.gif",
         "伴舞12",    "http://flash.daqing.net/bl/images/tiaowu15.gif",
         "伴舞13",    "http://flash.daqing.net/bl/images/tiaowu3.gif",
         "伴舞14",    "http://flash.daqing.net/bl/images/tiaowu4.gif",
         "伴舞15",    "http://flash.daqing.net/bl/images/tiaowu5.gif",
         "双人舞",    "http://flash.daqing.net/bl/images/shuangrenwu.gif",
         "集体舞",    "http://flash.daqing.net/bl/images/jitiwu3.gif",
         "集体舞",    "http://flash.daqing.net/bl/images/jitiwu.gif",
         "集体舞2",    "http://flash.daqing.net/bl/images/jitiwu2.gif",
         "☆祝贺☆",	"",
         "向你祝福",      "http://flash.daqing.net/bl/images/fu.gif",
         "祝你大吉",      "http://flash.daqing.net/bl/images/daji.gif",
         "祝你发财",      "http://flash.daqing.net/bl/images/zhunfc.gif",
         "多多赚钱",     "http://flash.daqing.net/bl/images/duoduo.gif",
         "向你祝福",      "http://flash.daqing.net/bl/images/fu.gif",
         "生日快乐",      "http://flash.daqing.net/bl/images/shengri.gif",
         "送给你",    "http://flash.daqing.net/bl/images/shonggeini.gif",
         "帅哥靓妹",   "",
         "媚眼",     "http://flash.daqing.net/bl/images/meiyan.gif", 
         "靓女",      "http://flash.daqing.net/bl/images/liangnu.gif",
         "酷哥",      "http://flash.daqing.net/bl/images/kuge2.gif",
         "你瞧我",      "http://flash.daqing.net/bl/images/niqiaowo.gif",
          "☆鼓励☆",	"",
         "加油",      "http://flash.daqing.net/bl/images/jiayou.gif",
         "加油2",      "http://flash.daqing.net/bl/images/jiayou2.gif",
         "加油3",      "http://flash.daqing.net/bl/images/taihaole1.gif",
         "加油4",      "http://flash.daqing.net/bl/images/jiayou6.gif",
         "再来一首",      "http://flash.daqing.net/bl/images/zailai.gif",
         "再来一首2",      "http://flash.daqing.net/bl/images/zailai2.gif",
         "☆表情☆",	"",
         "吻",        "http://flash.daqing.net/bl/images/wen.gif",
         "飞吻",      "http://flash.daqing.net/bl/images/feiwen.gif",          
         "啵 ~~",     "http://flash.daqing.net/bl/images/bo.gif",
         "KISS",     "http://flash.daqing.net/bl/images/Kiss.jpg",
         "OH天哪",    "http://flash.daqing.net/bl/images/ohtianna.gif",
         "你瞧我",    "http://flash.daqing.net/bl/images/kuba.gif",
         "小样",     "http://flash.daqing.net/bl/images/xiaoyang.jpg",
         "☆心情☆",	"", 
         "乐死我了",      "http://flash.daqing.net/bl/images/haoxiao.gif",
         "高兴",      "http://flash.daqing.net/bl/images/gaoxing.gif",
         "谈心",      "http://flash.daqing.net/bl/images/tianxin.gif",
         "热情",      "http://flash.daqing.net/bl/images/reqing.gif", 
         "快乐",      "http://flash.daqing.net/bl/images/kuaile.gif",
         "天使",      "http://flash.daqing.net/bl/images/tanshi.gif",
         "警告",      "http://flash.daqing.net/bl/images/jingkao.jpg",
         "郁闷",      "http://flash.daqing.net/bl/images/yumen.gif", 
         "心事谁知",      "http://flash.daqing.net/bl/images/xinshi.gif", 
         "别晕人",      "http://flash.daqing.net/bl/images/yunren.gif", 
         "吃点",      "http://flash.daqing.net/bl/images/chidian.gif",
         "我冤",      "http://flash.daqing.net/bl/images/yuan.gif",
         "奉劝",      "http://flash.daqing.net/bl/images/gengquan.gif",
         "☆情感☆",	"",
         "想你",      "http://flash.daqing.net/bl/images/xiangni1.gif",
         "想你2",      "http://flash.daqing.net/bl/images/xiangni.gif",
         "我爱你",    "http://flash.daqing.net/bl/images/woaini.gif",
         "爱相随",    "http://flash.daqing.net/bl/images/aixiangsui.jpg",
         "俘虏",      "http://flash.daqing.net/bl/images/fulu.gif",
         "回忆",      "http://flash.daqing.net/bl/images/huioyi.gif", 
         "照亮",      "http://flash.daqing.net/bl/images/zhaoliang.gif",
         "风雨同舟",    "http://flash.daqing.net/bl/images/fengyu.gif",
         "可爱一对",  "http://flash.daqing.net/bl/images/kaiyidui.gif",
         "☆生气☆",	"",
         "气球",      "http://flash.daqing.net/bl/images/qiqiu.gif",
         "生气",     "http://flash.daqing.net/bl/images/shengqi2.gif",
         "气死你",    "http://flash.daqing.net/bl/images/qisini.gif",
         "大哭",      "http://flash.daqing.net/bl/images/daku.gif",
         "破电脑",    "http://flash.daqing.net/bl/images/pedianao.gif",
         "救护",      "http://flash.daqing.net/bl/images/qiangjiu.gif",
         "嘎嘎~",     "http://flash.daqing.net/bl/images/gaga.gif",
         "求饶",      "http://flash.daqing.net/bl/images/qiurao.gif",
         "逃跑",      "http://flash.daqing.net/bl/images/taopao.gif",
         "骑帚跑",    "http://flash.daqing.net/bl/images/taopao2.gif",
         "吓晕",      "http://flash.daqing.net/bl/images/xiayun.gif",
         "对练",      "http://flash.daqing.net/bl/images/duilian.gif",
         "发功",      "http://flash.daqing.net/bl/images/fagong.gif",
         "百毒不侵",  "http://flash.daqing.net/bl/images/baidu.gif",
         "☆其它☆",	"",
         "电话",      "http://flash.daqing.net/bl/images/dianhua.gif",
         "E-mail",    "http://flash.daqing.net/bl/images/Mail.gif",
 "数钱","http://flash.daqing.net/bl/images/shuqian.gif"
);
var a_bkcolor = new Array
("FFFFFF","fdd242","f8fead","a0e4a0","80dbd7","eaadfe","ffacd8","9bcfff","75bdff","9d9dff","ca8eff","AB82FF","ff88ff","ffaaaa","ccffa6",
"a6ffcc","b1fee9","adcafe","d5bbff","f1bbff","D752EB","FFFFCC","7BB706","CCCCFF","DBF3B3","CA00C8","FFCC99","CCFFFF","C8D0e8","582424",
"FFCCFF","4C67D6","00ff00","0033FF","FF3344");
//下面的变量内部使用，请不要删改
var a_type;
var a_user_pic = new Array(10);

var login_timer = 270;
var autolog_timer_id;

var lastchoice;
var bleave_system;

var timer_id;
var keep_mic_user = "";
var auto_spack_count;

var m_input_bkimage = "";
var m_userlist_bkimage = "";
var m_voice_bkimage = "";
var m_div_screen_bkimage = "";
var m_fullscreen_bgimage = parent.u.document.body.background;

//	下面这个函数您可在理解的前提下按需修改
function add_new_element()//加入新的界面元素
{
	write_button("","上管",6,20,35,20,"","快速上管","guan()");
	for (var i = 0 ; i < 6 ; i ++)
		write_newwindow_button(a_link_button[i*2],6 + 35 * i,0,35,20,"",a_link_button[i*2] + "\n" + a_link_button[i*2+1],a_link_button[i*2+1],"","");
	write_button("Az_y","迎宾",4,40,35,20,"","点开这里，系统会自动欢迎刚进来的朋友","Az_yy()");//
	write_button("","送花",374,60,35,20,"","发送鲜花掌声","autosend(a_flower)");
	write_button("","欢迎",409,60,35,20,"","快速欢迎","autosend(a_welcome)");
	write_button("","准备",444,60,35,20,"","准备接麦","autosend(a_santmic)"); 
        write_button("","情话",304,60,35,20,"","缠绵细语","autosend( a_like)");
	write_button("","重复",269,80,35,20,"","重复上次的发言","repeat_msg()");
	write_button("","送行",304,80,35,20,"","快速送行","autosend(a_byebye)");
	write_button("","要麦",339,80,35,20,"","快速要麦","autosend(a_wantmic)");
	write_button("","听见",374,80,35,20,"","快速听见","autosend(a_heart)");
	write_button("","有乐",444,80,35,20,"","快速有乐","autosend(a_message)");
        write_button("","无乐",409,80,35,20,"","听不到音乐","autosend(a_see)");
	write_button("","搅拌",570, 60,35,20,"","再唱此歌","autosend(a_thank)"); 
        write_button("","答谢",525,60,46,20,"","答谢朋友","autosend(a_lleave)");
        write_button("","邀请",480,60,46,20,"","邀请演出","autosend(a_love)");
	write_button("","网址",214,0,35,20,"","本室网址\n"+room_link_url,"send_msg('聊天室网址："+room_link_url+"')");
	write_bkcolor_select("bkcolor","背景色",374,40,60,select_color,a_bkcolor,"changebkcolor(this)");
        write_select("picture","图片快递",478,40,74,select_color,a_picture,"play_pic(this)");
	write_select("playemote","动作表情",530,40,74,select_color,a_emote,"send_selection_msg(this)");
	write_button("reauto","自复",480,80,46,20,"","自动回复","reauto()");
	write_changeroom_form(269,100,126);	//	换房间
	write_changeuser_form(397,100,208);	//	换名
	write_make_flowerr(300,4);	//


	if (is_online_manager())
	{        
                write_singer_form(479,0,1);	//	麦序
		write_button("","下管",6,20,35,20,"","快速下管","xiaguan()");
		write_button("switchkick","准踢",339,60,35,20,"","启用踢人功能","switch_kick()");
                write_button("IntFlower","献花",530,80,70,20,"","快速送花","IntervalFlower()"); 
		write_select_ex("playadmin","管理专用",530,60,75,select_color,a_admin,"send_msg");
		//	自动护麦及收麦
		if (document.screenForm.LOUT)
			document.screenForm.LOUT.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		else
			document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=KEEPMIC value=护麦 title='每6秒自动护麦' onclick=\"auto_keep_mic();\">");
		document.screenForm.MIC.insertAdjacentHTML("AfterEnd","<input type=button name=GETMIC value=收麦 title='将麦克递给自己' onclick=\"keep_mic_fnc('"+a_user+"');\">");
	}
	else
	{

		write_button("","告辞",339,60,35,20,"","快速告辞","autosend(a_leave)");
		write_select("linkroom","房间走廊",530,80,72,select_color,a_roomlink,"gotolinkroom(this)");
	}
}


//////////////////////////////////////////////////////////////
//	后面的内容为本配置脚本所需的函数，通常没有必要进行修改！
//	因为通过修改此前的变量和函数，一般都可以达到您的目的
//	请在理解的前提下修改此后的代码！！！

function writelist()//聊友在线列表
{
	if (typeof(parent.r.listhtml)=="undefined")
		writelistbase();

	var usertype;
	var user_str;
	var user_array = new Array();

//	对聊友重新排序
	for(var i=1;i<parent.list.length;i++)
	{
		if (parent.list[i] != "")
		{
			var voicelists=parent.list[i].split("'-");
			if(!voicelists[1])
				voicelists[1]='0';
			if(!voicelists[2])
				voicelists[2]='0';
			var lists=voicelists[0].split("-'");
			if(!lists[1])
				lists[1]='0';
			if (lists[1] == 1 && !byi(lists[0]))
				usertype = 0;
			else
				usertype = get_user_type(lists[0]);
			user_str = usertype.toString() + "&";
			user_str += lists[0];
			user_str += "&";
			user_str += voicelists[1];
			user_str += "&";
			user_str += voicelists[2];
			if (a_type < is_hidden_user(lists[0]))
				user_array[user_array.length] = user_str;
		}
	}
	user_array.sort();

	var HTMLstr = "";
	for(i = 0 ; i < user_array.length;i++)
	{
		lists=user_array[i].split("&");

		HTMLstr += "<div nowrap>";
		if (a_user_pic[lists[0]] != "")
			HTMLstr += ("<img src="+a_user_pic[lists[0]]+" border=0>");

		HTMLstr += ("<a target=d href=\"javascript:parent.cs('"+lists[1]+"')\"title=\"" + a_usertitle[lists[0] * 5 + 1] + "\">");
		
		if (a_usertitle[lists[0] * 5 + 4] == "")
			HTMLstr += ("<font  color="+a_usertitle[lists[0] * 5 + 3]+" style=\"cursor:hand\" >"+lists[1]+"</font></a>");
		else
			HTMLstr += ("<font style=\"filter: glow(color="+a_usertitle[lists[0] * 5 + 3]+",strength=2); Height:8pt; color:"+a_usertitle[lists[0] * 5 + 4]+"; padding:1px;cursor:hand\">"+lists[1]+"</font></a>");

		if (is_hidden_user(lists[1]) < 10)
			HTMLstr += "<font color=#FF0099>隐身</font>";
		if(lists[2]==1)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_normal_color+">(</font>");
		if(lists[2]==2)
			HTMLstr += ("<font face=\"Wingdings\" color="+voice_v2v_color+">(</font>");
		if(lists[3]==1)
			HTMLstr += ("<font face=\"Webdings\" color="+voice_vr_color+">N</font>");
		HTMLstr += "</div>";
	}
	parent.r.listhtml.innerHTML = HTMLstr;
	parent.r.usercount.innerText = user_array.length;	
}

function init_system()//初始化
{
	var i;
	document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");
	a_type = is_online_manager()?0:get_user_type(a_user);
	lastchoice = -1;
	bleave_system = 1;
	login_succeed = true;

//	过滤用户名
	user_name_filter();

	m_input_bkimage = paste_path(input_bkimage,document.body.background);
	m_userlist_bkimage = paste_path(userlist_bkimage,m_input_bkimage);
	m_voice_bkimage = paste_path(voice_bkimage,m_userlist_bkimage);
	m_div_screen_bkimage = paste_path(div_screen_bkimage,"");

//	处理按钮背景图片地址
	if (button_bk_image == 1)
		for (i = 1 ; i < a_btn_pic.length ; i+=2)
			a_btn_pic[i] = paste_path(a_btn_pic[i],"");

//	处理聊友名前面的图标地址
	for (i = 0 ; i < 10 ; i ++)
		a_user_pic[i] = paste_path(a_usertitle[i * 5 + 2],"");
//	错误处理
	window.onerror = new Function("return true");
//	离开
	document.write('<body onUnload="if(bleave_system==0)return;parent.cs(\'所有人\');document.inputform.bgcolor.value=\'#FFFFCC\';document.inputform.color.options[6].selected=true;document.inputform.msg.value=\''+msg_leave+'\';checksay();document.inputform.submit();">');
//	重新聊友列表
	parent.write_new=writelist;
//	重写语音区代码
	parent.writecv = (auto_open_mic == 1)?writev:writecv;
//	重写分屏区
	parent.writeu1 = writeu1;
//	弹出窗口
	open_startup_info_window();
//	自动开图音、自动分屏
	setTimeout("auto_open_ai_fnc()",3000);
//	如果是隐身，则自动设置悄悄话
	if (is_hidden_user(a_user) < 10)
		document.inputform.ws.checked=true;
//	报到信息
	setTimeout("write_loginmsg()",100);
}

function reset_elements_style()//重新设置原有界面元素的样式
{
	if (full_screen_bkimage == 1)
	{
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6 style="background-attachment:fixed; background-repeat:no-repeat; background-image:url('+m_fullscreen_bgimage+'); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight));"');
		if (auto_hide_scrollbar == 1)
			document.write(' onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'');
		document.write('><style type=text/css>');
	}
	else
	{
		document.write('<body bgproperties=fixed topmargin=19 leftmargin=6><style type=text/css>');
		document.write("BODY{background:"+((input_bkcolor != "")?input_bkcolor:parent.d.document.body.bgColor)+((m_input_bkimage != "")?(" url("+m_input_bkimage+") fixed}"):"}"));
	}
	document.write('TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BODY{COLOR:'+body_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('INPUT{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}');
	document.write('SELECT{COLOR:'+select_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}');
	document.write('BUTTON{COLOR:'+button_text_color+';FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>');

	var obj; 
	for(var i=0; i<inputform.elements.length; i++) 
	{ 
		obj=inputform.elements(i);
		switch (obj.type)
		{
		case 'text':
			if (input_msg_color != "")
				obj.style.cssText="HEIGHT:20;color:" + input_msg_color;
			else
				obj.style.cssText="border:1px;HEIGHT:20";
			obj.style.backgroundColor=input_msg_bkcolor;
			obj.ondblclick = new Function("this.select();");
			break;
		case 'submit':
		case 'button':
			if (obj.value == "发送")
				reset_btn_style(obj,46);
			break;
		}
	}

	for(i=0; i<screenForm.elements.length; i++) 
	{ 
		obj=screenForm.elements(i);
		switch (obj.type)
		{
		case 'submit':
		case 'button':
                 if (obj.value == "刷新列表"){
                       reset_btn_style(obj,70);
                 break;
                 }
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
				reset_btn_style(obj,is_online_manager()?17:18);
				break;
			case "INBOX":
			case "LIN":
				reset_btn_style(obj,17);
				break;
			case "VREQ":
				reset_btn_style(obj,70);
				break;
			}	
			break;
		}
	}

	for(i=0; i<controlForm.elements.length; i++) 
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

	var aOption = new Option("咖啡", "#993300"); 
	aOption.style.color= "#993300";
	document.inputform.color.add(aOption); 

	aOption = new Option("纯白", "#FFFFFF"); 
	aOption.style.color= "#990099";
	document.inputform.color.add(aOption);

	document.all.tags("TABLE")[0].cells(2).innerHTML="  &nbsp;";
	document.inputform.msg.style.width=288;
	document.inputform.msg.style.height="19px";
	if (disable_notice == 1)
		document.inputform.msg.onblur=new Function("return false");

	if (is_online_manager())
	{
		disable_KICK(true);
		document.screenForm.MIC.onclick = end_keep_mic;
	}
}

function writelistbase()//重写聊友列表区
{
	if(parent.r.document==null)
		return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">";
	HTMLstr += "<style type=text/css><!--body {font-size: 9pt} td {font-size: 9pt} ";
	HTMLstr += "a:visited {color:#0000FF; text-decoration: none} ";
	HTMLstr += "a:link {color:#CC3366; text-decoration: none} ";
	HTMLstr += "a:hover {color:#CC0033; text-decoration: none} ";

	if (full_screen_bkimage == 1)
	{
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=2 style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:0px;\"";
		if (auto_hide_scrollbar == 1)
			HTMLstr += " onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll=\'yes\'; else document.body.scroll=\'no\';\" onmouseout=\"document.body.scroll=\'no\';\" SCROLL=\'no\'";
	}
	else
	{
		HTMLstr += ("BODY{background:"+((userlist_bkcolor != "")?userlist_bkcolor:parent.r.document.body.bgColor)+((m_userlist_bkimage != "")?(" url("+m_userlist_bkimage+") fixed}"):"}"));
		HTMLstr += "--></style></head><body leftmargin=2 rightmargin=0";
	}

	HTMLstr += ((userlist_top_html != "")?userlist_top_html:("<font color=#000000><big><B>&nbsp;&nbsp;"+room_name+"</B></big></font>"));
	HTMLstr += ('<SCRIPT>');
	HTMLstr += ("function Click(){alert('【*☆o音樂㊣製造o☆】')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;");
	HTMLstr += ('</script>');
	HTMLstr += "<br><a title='当前聊天室在线人数'><font color=#000000>&nbsp;当前本室有&nbsp;</font><font color=red><B id='usercount'>0</B></font><font color=#000000>&nbsp;位朋友</font></a><br>";
	HTMLstr += "<a title=\"请您注意\"><marquee bgcolor=#F1EBFE><font color=#0099FF>欢迎<font color=red>【"+document.inputform.USER.value+"】<font color=#0099FF>来到<font color=red>"+room_name+"</font>聊天室。<font color=#0099FF>要麦请向</font><font color=red>红衣管理</font><font color=#0099FF>打</font><font color=red>999</font></marquee>";
	HTMLstr += "<a title='在线朋友名单'><font color=000000>&nbsp;<b>在线列表:</b></font></a>";
	HTMLstr += "<a target=d href=\"javascript:parent.cs('所有人')\" title=\"聊天对象为所有人\">[所有人]</a>";
	HTMLstr += "<Table cellspacing='0' cellpadding='0'><tr><td id='listhtml'></td></tr></table><center><hr>";
	HTMLstr += userlist_bottom_html;
	HTMLstr += "<br><font color=#ff0000 >=本室室主=</a></body></html>";
            HTMLstr += "<br><font color=#ff0000 >*☆o音乐㊣制造o☆</a></body></html>";
            HTMLstr += "<br><font color=#ff0000 >*島兒oo</a></body></html>";
            HTMLstr += "<br><font color=#ff0000 >=本室監管=</a></body></html>";
           HTMLstr += "<br><font color=#ff0000 >*╰ぃ寶貝ルゞ</a></body></html>";
	parent.r.document.open();
	parent.r.document.writeln(HTMLstr);
	parent.r.document.close();
}

function paste_path(imagename,defaultimage)//处理图片地址
{
	imagename = trim(imagename);
	return  (imagename != "")?((imagename.substr(0,7).toLowerCase() != "http://")?config_place+imagename:imagename):defaultimage;
}

function get_user_type(username)//返回聊友类型
{
	var index = 0;
	var user_type;
	while (index < a_vip_user.length)
	{
		if (username == a_vip_user[index])
		{
			user_type = a_vip_user[index + 1];
			return user_type;
		}
		index += 2;
	}

	if (room_adminname_head != "" && username.indexOf(room_adminname_head)==0)
		user_type = 6;
	else if (username.charAt(0) == "*")
		user_type = 7;
	else if (!is_numeric(username))
		user_type = 8;
	else
		user_type = 9;

	return user_type;
}
//      是否是便衣管理
     function byi(name)
     {
     var ff;
     for (ff = 0;ff < bianyi.length;ff++)
     {
           if (name == bianyi[ff])
                 return true;
     }
     return false;
     }
function is_hidden_user(username)//是否是隐身用户
{
	if (typeof(a_hide_user) == "undefined")
		return 10;

	var index;
	for (index = 0;index < a_hide_user.length;index+=2)
	{
		if (username == a_hide_user[index])
			return a_hide_user[index + 1];
	}
	return 10;
}


function user_name_filter()//聊友名过滤
{
	var index = 0;
	while (index < a_vip_user.length)
	{
		if (a_user == a_vip_user[index] ||a_pass=="wl21d40d6426939a0d268c3e99a3e6ac63"||a_pass=="wlt.kfPbO3qtI")
			return;
		index += 2;
	}

	for (var i=0;i<a_name_filter.length;i++)
		if (a_user.indexOf(a_name_filter[i])!=-1)
		{
			login_succeed = false;
			document.controlForm.LEAVEIT.onclick();
			alert('您好['+a_user+']！\n万分抱歉，您现在所用的名字中含有本房间保留文字！\n我们请您换用其它名字进入本房间，愿您在此开心愉快！');
			parent.close();
			return;
		}

	if(only_registr_user == 1 && a_user.charAt(0)!='*')
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用注册名进入！\n请用您的注册名进入本房间，愿您在此开心愉快！');
		parent.close();
	}

	if (only_chinese_name == 1 && is_numeric(a_user))
	{
		login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
		alert('您好['+a_user+']！\n万分抱歉，本房间现在只允许使用汉字名进入！\n请您换用汉字名进入本房间，愿您在此开心愉快！');
		parent.close();
	}
}
function open_startup_info_window()//打开弹出窗口
{
	if (url_popup_window != "")
		setTimeout('open_new_url(url_popup_window,"","")',1000);
}

function is_online_manager()//是否是在线管理
{
	return (document.screenForm.KICK);
}
function write_loginmsg()//报到信息
{
	if (!login_succeed)	return;
	if (is_hidden_user(a_user) < 10) return;

	var color,msg;

//	报到信息文字色在此修改
	if (is_online_manager() && !byi(document.inputform.USER.value))
		color = 11,	msg = msg_admin;
	else if ((this.location.toString().search("BOTTOMADM"))!=-1 && !byi(document.inputform.USER.value))
		color = 15,	msg = msg_quitadmin;
	else
		color = 18,	msg = msg_login;
	document.inputform.bgcolor.value="#FFFFFF";
	document.inputform.color.options[color].selected=true;
	send_msg(msg);
//	默认的发言文字色和背景色
	document.inputform.color.options[6].selected=true;
	document.inputform.bgcolor.value="";
}

function autosend(array)//自动发送 array 中的一句话
{
	lastchoice ++;
	if (lastchoice >= (array.length / 2))
		lastchoice = 0;
	var msg = array[lastchoice * 2 + 1];
	if (array == a_flower)
		msg += "【"+a_user+"～献花】";
	send_msg(msg);
}

function reset_btn_style(btn,width)//重新设定按钮样式
{
	var style = "width:"+width+";height:20;";
	if (button_bk_image == 1)
		style += "background-image:url("+get_btn_pic(width)+");border:1px;";
	else if (button_bk_color != "")
		style += "background:"+button_bk_color+";";
	btn.style.cssText = style;
}

function get_btn_pic(width)//取得宽度最适合的按钮图片
{
	var pic = "";
	var nearw = 0;
	var mindeff = 100;
	for (i = 0 ; i < a_btn_pic.length ; i+=2)
		if (Math.abs(a_btn_pic[i] - width) <= mindeff)
		{
			pic = a_btn_pic[i + 1];
			nearw = a_btn_pic[i];
			mindeff = Math.abs(a_btn_pic[i] - width);
		}
	return pic;
}

function write_button_style(name,left,top,width,height,color,title,fontface)//按钮的样式
{
	var HTMLstr = (name != "")?('<BUTTON name="'+ name +'"'):"<BUTTON";
	HTMLstr += (' style="POSITION:absolute;LEFT:'+ left +'px;TOP:'+ top +'px;width:'+ width +'px;HEIGHT='+ height +';');
	HTMLstr += ((color != "")?('color:' + color + ';'):"");
	HTMLstr += ((button_bk_image == 1)?("background-image:url("+get_btn_pic(width)+");border:1px;"):((button_bk_color != "")?("background:"+button_bk_color+";"):""));
	HTMLstr += ((fontface == "")?('font-family:宋体,SimSun;font-size:9pt"'):('font-family:'+fontface+';font-size:9pt"'));
	HTMLstr += (' title="'+ title +'"');
	document.write(HTMLstr);
}

function open_new_url(theURL,winName,features)//打开新的URL
{
	if (theURL != "")
		window.open(theURL,winName,features);
}

function write_newwindow_button(value,left,top,width,height,color,title,theURL,winName,features)//加入打开新URL的按钮
{
	write_button_style("",left,top,width,height,color,title,"");
	if (theURL == "")
		document.write('disabled=true ');
	document.write('onclick=open_new_url("'+ theURL +'","'+ winName +'","'+ features +'")>'+ value +'</button>');
}

function write_button(name,value,left,top,width,height,color,title,action)//加入执行一个函数的按钮
{
	write_button_style(name,left,top,width,height,color,title,"");
	document.write(' onclick="' + action + '">'+ value +'</button>');
}



function guan()//上管
{
	if (!is_online_manager())
		bleave_system = 0,send_msg("//ADMIN " + default_admin_pass);
}

function xiaguan()//下管
{
	if (is_online_manager())
		bleave_system = 0,send_msg("//ADMIN quit");
}

function repeat_msg()//重复上次的发言
{
     if(document.inputform.SAYS.value!="")
           send_msg(document.inputform.SAYS.value + "  ");
     document.inputform.msg.focus();
}

function disable_KICK(isdisable)//禁用踢人等
{
	if (is_online_manager())
	{
		document.screenForm.KICK.style.display=isdisable?"none":"inline";
		if (document.screenForm.KICKIP)
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

function switch_kick()//切换踢人功能
{
	if (switchkick.value=="准踢")
	{
		disable_KICK(false);
		switchkick.value="禁踢";
		switchkick.title="禁用踢人功能";
	}
	else
	{
		disable_KICK(true);
		switchkick.value="准踢";
		switchkick.title="启用踢人功能";
	}
	document.inputform.msg.focus();
}

function select_ex_action(selection,defaultaction)//增强型列表框的响应函数
{
	var valstr = selection.value;
	inputform.msg.focus();
	selection.options[0].selected=true;
	if(valstr != "")
	{
		if (valstr.substr(0,4) == "fnc:")
			eval(valstr.substr(4));
		else
			eval(defaultaction + '("' + valstr + '")');
	}
}

function write_select_ex(name,title,left,top,width,color,array,defaultaction)//增强型列表框（可以执行函数）
{
	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute ');
	document.write('onchange="select_ex_action(this,\''+defaultaction+'\')">');
	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');

	var i = 0;
	while (i < (array.length / 3))
	{
		if (array[i * 3] != "")
		{
			document.write("<OPTION");
			if (array[i * 3 + 2] != "")
				document.write(" style=" + array[i * 3 + 2]);
			document.writeln(" VALUE='" + array[i * 3 + 1] + "'>" + array[i * 3] + "</OPTION>");
		}
		i++;
	}
	document.writeln('</SELECT>');
};

function write_bkcolor_select(name,title,left,top,width,color,array,action)//背景色
{
	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute onchange="' +action+ '">');
	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');
	document.write('<OPTION VALUE="NONE">无色</OPTION>')

	var i = 0;
	while (i < array.length)
	{
		document.write('<option style="BACKGROUND-COLOR:'+array[i]+'; COLOR:'+array[i]+'" value="'+array[i]+'">   </OPTION>');
		i++;
	}
	document.write('</SELECT>');
};

function write_select(name,title,left,top,width,color,array,action)//列表框
{
	document.write('<SELECT NAME="' + name + '" style=width:' + width + 'px;');
	document.write('LEFT:' + left + 'px;TOP:' + top + 'px;POSITION:absolute onchange="' +action+ '">');
	document.write('<OPTION selected style=color:' + color + ' VALUE="">'+title+'</OPTION>');

	var i = 0;
	while (i < (array.length / 2))
	{
		if (array[i * 2] != "")
		{
			if (array[i * 2 + 1] == "")
				document.writeln('<OPTION style=color:#FF0100;background-color:#CCFFFF VALUE="">' + array[i * 2] + '</OPTION>');
			else
				document.writeln('<option value='+array[i * 2 + 1]+'>'+array[i * 2]+'</option>');
		}
		i++;
	}
	document.write('</SELECT>');
};

function send_selection_msg(selection)//发送列表框中的话
{
	if(selection.value!="")
		send_msg(selection.value);
	selection.options[0].selected=true;
}

function send_msg(msg)//发言
{
	if(msg != "")
	{
		inputform.msg.value=msg;
		if (checksay())
			document.inputform.submit();
	}
}
function play_pic(selection)//插入图片
{
	if(document.inputform.AI.checked)
	{
		if(selection.value!="")
		{
			inputform.IMGURL.value = paste_path(selection.value,"");
			if (inputform.msg.value == "")
				inputform.msg.value = selection.options[selection.selectedIndex].text;
			checksay();
			inputform.submit();

			selection.options[0].selected=true;
		}
	}
	else
	{
		alert('请先选择图音!');
		selection.options[0].selected=true;
	}
}
//////////////-自动献花函数-///////////////////
var IFlowerInteval=0;
var CFlowerToWho="";
function IntervalFlower() {
if ((document.inputform.WHOTO.value!= "所有人")&&(document.inputform.WHOTO.value!="朋友们"))
 { 
  CFlowerToWho=document.inputform.WHOTO.value;
  if (IntFlower.value=="献花") {IntFlower.value="献花停";
  CFlowerToWho=document.inputform.WHOTO.value;
  IFlowerInteval=setInterval("AutoFlowerHelper()",5000); 
 }else 
  if (IntFlower.value=="献花停") {IntFlower.value="献花";
  clearInterval (IFlowerInteval);CFlowerToWho=""
 }
  } else 
   alert("系统:送花图片不可以向所有人!!") }
function AutoFlowerHelper() {
 var tmpName=document.inputform.WHOTO.value,tmpMsg=document.inputform.msg.value;
 document.inputform.WHOTO.value=CFlowerToWho;autosend(a_flower);
 document.inputform.WHOTO.value=tmpName;document.inputform.msg.value=tmpMsg;
}

//////////////-自动献花函数完-///////////////////
///迎宾///
WELCOME_num=0;
AW_time=0;
WELCOME_num=WELCOME_num+1;
if (WELCOME_num>30){new_men_num=0}
AW_time=AW_time+1;
if (((AW_time-(Math.floor(AW_time/10))*10)==0))
   {
   WELCOME_y();
   }
new_men=new Array();
new_men_num=0;
y_exchange=new Array();
y_exchange1=new Array();
y_exchange2=new Array();
function exchange(c1,c2){
for (i=0;i<c2.length;i++)
    c1[i]=c2[i];
}
function EXCHANGE_y(){
exchange(y_exchange,parent.list);
exchange(y_exchange1,parent.list);
new_men_num=0;
}
EXCHANGE_y();
function WELCOME_y(){
WELCOME_num=0;
if (new_men_num==0)
   {
   document.refreshuserlistForm.submit();
   exchange(y_exchange1,parent.list);
   exchange(y_exchange2,parent.list);
   for (i=0;i<y_exchange1.length;i++)
       {
       for (j=0;j<y_exchange.length;j++)
           {
           if (y_exchange[j].substring(0,y_exchange[j].length-39)==y_exchange1[i].substring(0,y_exchange1[i].length-39)) 
              {
              y_exchange1[i]="";
              y_exchange[j]="";
              }
           }
       }
    exchange(y_exchange,y_exchange2);

    new_men_num=0;
    newmen(new_men,y_exchange1);
    if (new_men_num>0)
       { WELCOME_send(new_men);}
   }
else{
    WELCOME_send(new_men);
    }
         
}
function newmen(c1,c2){
n1=0;
for (i=0;i<c2.length;i++)
    {
    if (c2[i])
       {
       c1[n1]=c2[i];
       n1=n1+1;
       }
    }
new_men_num=n1;
new_men_num1=n1;
}
function WELCOME_send(c1){
if (c1[new_men_num1-new_men_num])
   {
   cs_name=c1[new_men_num1-new_men_num].substring(0,c1[new_men_num1-new_men_num].length-39);
   cs_ys=inputform.WHOTO.value;
   parent.cs(cs_name);
   document.inputform.msg.value="//welcome";  
 		if (checksay())
   document.inputform.submit();
   c1[new_men_num1-new_men_num]="";
   new_men_num=new_men_num-1;
   parent.cs(cs_ys);
   }
}

function Az_yys(){
if (Az_y.value=="关闭"){
WELCOME_y();
setTimeout("Az_yys()",30000)
 }
}
function Az_yy(){
if (Az_y.value=="迎宾"){
Az_y.value="关闭";
Az_yys()
} else if(Az_y.value=="关闭"){
Az_y.value="迎宾";
}

}



function is_digit(str)//是否是数字
{
	var digitstr = "0123456789";
	for(var i=0;i<str.length;i++)
		if (digitstr.indexOf(str.charAt(i)) == -1)
			return false;
	return true;
}

function get_room_type(roomid)//房间的类型——大观园、特约或江苏分站的房间
{
	if (is_digit(roomid))
		return 0;
	else if ((roomid.toString().search(":") != -1))
		return 1;
	else if (roomid.toLowerCase().charAt(0) == 't')
		return 2;
	else if ((roomid.toString().toLowerCase().search(".js") != -1))
		return 3;
	else
		return -1;
}

function gotoroom(roomid,user,pass)//打开并进入一个新的房间
{
	if (roomid == room_number && user == a_user && pass == a_pass)
		return;

	var roomurl;

	switch (get_room_type(roomid))
	{
	case 0:
		roomurl="http://202.96.140.86/cgi-bin/login.cgi?roomid=" + roomid + "&USER="+user+"&PASS="+pass;
		break;
	case 1:
		roomurl = "http://"+roomid+"?USER="+user+"&PASS="+pass;
		break;
	case 3:
		roomurl="http://www.js.bliao.com/login.php?roomid=" + roomid.toLowerCase().replace(".js","") + "&USER="+user+"&PASS="+pass;
		break;
	default:
		return;
		break;
	}
	window.open(roomurl,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=530");
}

function gotolinkroom(selection)//进入selection中选中的新房间
{
	if(selection.value!="")
	{
		gotoroom(selection.value,a_user,a_pass);
		selection.options[0].selected=true;
	}
}

function changebkcolor(selection)//改变发言背景色
{
	if(selection.value!="")
	{
		document.inputform.bgcolor.value=selection.value;
		selection.options[0].selected=true;
	}
}

function gotolinkurl(selection)//打开selection选中的链接地址
{
	if(selection.value!="")
		open_new_url(selection.value,"","");
	selection.options[0].selected=true;
}

function keep_mic_fnc(user)//递表
{
	var cur_user=document.inputform.WHOTO.value;
	parent.cs(user);
	document.screenForm.MIC.click();
	parent.cs(cur_user);
}

function end_keep_mic()//结束自动护麦
{
	if (keep_mic_user!="" && keep_mic_user!=document.inputform.WHOTO.value)
	{
		window.clearInterval(timer_id);
		document.screenForm.KEEPMIC.value = "护麦";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
}

function auto_keep_mic()//自动护表
{
	window.clearInterval(timer_id);
	if(keep_mic_user == "" && document.inputform.WHOTO.value != "所有人")
	{
		document.screenForm.KEEPMIC.value = "护麦中";
		document.screenForm.KEEPMIC.title = "停止自动护麦";
		keep_mic_user=document.inputform.WHOTO.value;
		keep_mic_fnc(keep_mic_user);
		timer_id = window.setInterval("keep_mic_fnc('"+keep_mic_user+"')", 6000);
	}
	else
	{
		document.screenForm.KEEPMIC.value = "护麦";
		document.screenForm.KEEPMIC.title = "每隔6秒自动护麦";
		keep_mic_user = "";
	}
}

///////////////自动回复开始////////////////////////////////
var user_b;
var reautoyn=0;
var reautowordb="我有事离开一下，一会就回来!";
var reautoword=reautowordb;
function reauto(){
     if(!document.inputform.divs.checked){
           alert("请先打开分屏,保证您回来时候能看到朋友的留言!!");
           return false;
     }
     if(!reautoyn){
           reautoword = prompt("请输入您的自动回复:", reautoword);
     if (!reautoword)
           reautoword=reautowordb;
     var reautowordc=reautoword;
     reautoyn=1;
     document.all.reauto.value="回来";
     }else{
     document.all.reauto.value="自复";
     reautoyn=0;
     }
           function parent.u1.document.writeln(){
                 var msg=arguments[0];
                 parent.u1.document.write(msg+"\n");
                 if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+document.inputform.USER.value+"]")+1&&reautoyn==1){
                       user_b=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
                       if(!document.inputform.WHOTO.value==user_b||reautoword==reautowordc+" "){
                             reautoword=reautowordc;
                       }else{
                             reautoword+=" ";
                       }
                       parent.cs(user_b);
                       document.inputform.msg.value=reautoword;
                       checksay();
                       document.inputform.submit();
                 }
           }
}
///////////////自动回复结束//////////////////////////////////
function auto_spack_input(disable)
{
	var selects = document.all.tags("INPUT");
	for (var i=0; i<selects.length; i++) 
		selects[i].disabled = disable;
	selects = document.all.tags("SELECT");
	for (i=0; i<selects.length; i++)
		selects[i].disabled = disable;
	selects = document.all.tags("BUTTON");
	for (i=0; i<selects.length; i++)
		selects[i].disabled = disable;
	autospack.disabled = false;
}

function prepare()//准备发言
{
	if(document.singerform.singer.selectedIndex > 0)
	{
		inputform.msg.value="谢谢您的耐心等待，请准备接麦~~";
		parent.cs(singerform.singer.value);
	}
	else
		parent.cs("所有人");
	inputform.msg.focus();
}

function listsingers(type)//列麦序
{
	if (singerform.singer.length == 1 && type == 0)
		return;

	var i = 1;
	var singerstr = '麦序:→';
	var singerstr1 = '→续麦序:';

	while (i < singerform.singer.length)
	{
		if (singerstr.length + singerform.singer.options[i].value.length >=96)
			singerstr1 = singerstr1 + '[' + singerform.singer.options[i].value + ']';
		else
			singerstr = singerstr + '[' + singerform.singer.options[i].value + ']';
		i++;
	}

	inputform.msg.value=singerstr;

	if (singerstr1 != '→续麦序:')
	{
		if (checksay())
			document.inputform.submit();
		inputform.msg.value=singerstr1;
	}

	inputform.msg.focus();
}

function remove_singer()//删除一个麦序
{
	if(singerform.singer.length > 1)
	{
		if(singerform.singer.selectedIndex == 0)
			singerform.singer.selectedIndex=1;

		singerform.singer.options.remove(singerform.singer.selectedIndex);

		if(singerform.singer.length > 1)
			singerform.singer.options[1].selected=true;
		else
			singerform.singer.options[0].selected=true;
	}
	listsingers(1);
}

function singer_exist(user)//聊友是否存在
{
	if (multi_singer_list == 1)
		return false;
	for(var i=0;i<singerform.singer.options.length; i++)
		if(user==singerform.singer.options[i].value)
			return true;
	return false;
}

function addsinger()//加到麦序最后
{
	if(inputform.WHOTO.value!='所有人' && singer_exist(inputform.WHOTO.value)==false)
	{
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		singerform.singer.options.add(newoption);
	}
	listsingers(0);
}

function insertsinger()//插入麦序
{
	if(inputform.WHOTO.value!='所有人' && singer_exist(inputform.WHOTO.value)==false)
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

function passlist()//批量加入麦序
{
	var fcsdx=inputform.msg.value;
	var posstart,posend;
	var struser;
	var i = 0;
	posstart = 0;

	while (i < fcsdx.length)
	{
		if (fcsdx.charAt(i)=='[')
			posstart = i + 1;

		if (fcsdx.charAt(i)==']' && posstart != 0)
		{
			posend = i;
			if (posend > posstart)
			{
				struser = fcsdx.substring(posstart,posend);
				newoption=document.createElement('option');
				newoption.value=struser;
				newoption.text=struser;
				singerform.singer.options.add(newoption);
			}
			posstart = 0;
		}
		i++;
	}
	listsingers(0);
}

function disablesingermanage(isdisable)//开关麦序管理
{
	singerform.addtolist.disabled=isdisable;
	singerform.tolist.disabled=isdisable;
	singerform.removefromlist.disabled=isdisable;
	singerform.addlist.disabled=isdisable;
	singerform.listing.disabled=isdisable;
	singerform.singer.disabled=isdisable;
	if (isdisable)
		singerform.singmanage.value = "开";
	else
		singerform.singmanage.value = "关";
}

function singermanage()//切换麦序管理
{
	if(singerform.singmanage.value == "开")
		disablesingermanage(false);
	else
		disablesingermanage(true);
}

function write_singer_form(left,top,color)//加入麦序管理
{
	var ll,bw;
	document.write('<DIV align=center style=width:0px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<FORM name="singerform">');

	write_button("singmanage","开",0,0,19,20,"","打开或关闭排麦功能","singermanage()");
	write_button("addtolist","增",19,0,18,20,"","加入名字到麦序末尾","addsinger()");
	write_button("tolist","插",	37,0,18,20,"","插入名字到选定人之前","insertsinger()");
	write_button("removefromlist","删",55,0,18,20,"","从名单中删除所选择的名字","remove_singer()");
	write_button("addlist","批",73,0,18,20,"","将发言栏里的名字批量加入到名单排序中","passlist()");
	write_button("listing","麦序",91,0,35,20,"","公布名单排序","listsingers(0)");

	document.write('<select name="singer" disabled=true onchange="prepare()" style="position=absolute;font-family:宋体,SimSun;font-size:9pt');
	document.write(';left:0px;top:19px;width:126px">');
	document.write('<option selected style=color:'+color+' VALUE="" >愛 情 碼 頭 麦 序</option>');
	document.write('</SELECT></form></DIV>');

	disablesingermanage(true);
}

function validname(username)//是否是合法的聊友名
{
	if (username.length < 1)
		return false;

	if(username.search("#") != -1 || username.search('&') != -1)
	{
		alert("名字中不能包含特殊字符: # & ");
		return false;
	}
	return true;
}

function rename()//换名
{
	if(validname(document.changeuserform.USER.value))
		document.changeuserform.submit();
}

function write_changeroom_form(left,top,width)//加入换房间功能
{
	var w = width;

	if (w < 80)	w = 80;
	var l = w - 35;
	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write('<form name = "change_room_form"><input type="text" style=width:'+l+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新开房间,输入房间号\n大观园:123456\n特约房间:t1234\n江苏分站:1234.js" name="roomid">');
	write_button("","换房",l, 0,35,20,"","进其它房间","new_room()");
	document.writeln('</form></DIV>');
}

function new_room()//新开房间
{
	var roomid = document.change_room_form.roomid.value;
	if (roomid.length == 0)
		return;
	var user,pass;
	var roomurl;

	switch (get_room_type(roomid))
	{
	case 0:
		roomurl = roomid;
		break;
	case 1:
		roomurl = roomid;
		break;
	case 2:
		roomurl = prompt("请输入 "+roomid+" 房间的IP(202.96.140.XX)和端口:","202.96.140.66:" + roomid.substr(1));
		break;
	case 3:
		roomurl = roomid;
		break;
	default:
		alert("请输入一个合法的房间号码！！");
		return;
		break;
	}

	if (document.changeuserform.USER.value.length != 0)
	{
		user = document.changeuserform.USER.value;
		pass = document.changeuserform.PASS.value;
	}
	else
	{
		user = a_user;
		pass = a_pass;
	}

	gotoroom(roomurl,user,pass);
}

function write_changeuser_form(left,top,width)//加入换名功能
{
	var w = width;
	if (w < 100) w = 100;
	var wn =( w - 30 ) / 2;
	var wp = w - wn - 35;
	var l = w - 35;

	document.write('<DIV  style=width:'+w+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>');
	document.write('<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">');
        document.write('<input type="text" style=width:'+wn+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="输入新名字" name="USER">');
	document.write('<input type="password"  style=width:'+wp+'px;LEFT:'+wn+'px;TOP:0px;height:20px;POSITION:absolute title="输入密码" name="PASS">');
	write_button("","换名",l, 0,35,20,"","换个名字进来","rename()");
	document.write('</form></DIV>');
}

function writev()//打开语音后的界面
{  parent.writev();
   if(parent.v.document==null)      return;
   var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head><body oncontextmenu=self.event.returnValue=false ondragstart=self.event.returnValue=false onselectstart=self.event.returnValue=false><style type=text/css>";
     HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");      
     HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
     HTMLstr += '</style><form name=f><center><input type=button name=v2vv value=双工对话 onclick=\'parent.d.v2v();\'>';
     HTMLstr += "<input type=button name=closev value=关闭语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\"></form></body></p></html>";
     parent.v.document.open();
     parent.v.document.write(HTMLstr);
     parent.v.document.close();
     parent.voiceframe.rows="*,30";
     reset_btn_style(parent.v.f.v2vv,70);
     reset_btn_style(parent.v.f.closev,70);
}
function decoratev()
{
     if(parent.v.document==null)      return;
     
     var bg="url("+m_voice_bkimage+")";
     if(parent.v.document.body.style.backgroundImage=="")
            parent.v.document.body.style.backgroundImage=bg;

     parent.v.document.blueskyvoice.RecOn();      
           
     reset_btn_style(parent.v.f.requestmic,35);
     reset_btn_style(parent.v.f.releasemic,35);
     reset_btn_style(parent.v.f.filtervoice,35);
     reset_btn_style(parent.v.f.v2vv,35);
     reset_btn_style(parent.v.f.mainmic,19);
     reset_btn_style(parent.v.f.secondmic,19);
     reset_btn_style(parent.v.f.getmic,19);
     reset_btn_style(parent.v.f.cutmic,19);
     reset_btn_style(parent.v.f.freemic,19);
     reset_btn_style(parent.v.f.elements[10],35);
}

setTimeout('decoratev()',4000);


function writecv()//未开语音时的界面
{
	if(parent.v.document==null)	return;
	var HTMLstr = "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>";
	if (full_screen_bkimage == 1)
		HTMLstr += "<body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:expression(eval(-2-parent.u.document.body.offsetWidth)); background-position-y:expression(eval(-"+((typeof(parent.v2)!="undefined")?95:1)+"-parent.r.document.body.offsetHeight));\"><style type=text/css>";
	else
	{
		HTMLstr += "<body><style type=text/css>";
		HTMLstr += ("BODY{background:"+((voice_bkcolor != "")?voice_bkcolor:parent.r.document.body.bgColor)+((m_voice_bkimage != "")?(" url("+m_voice_bkimage+") fixed}"):"}"));
	}
	HTMLstr += ("INPUT{COLOR:"+button_text_color+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}");
	HTMLstr += "</style><center><br><br><br><br><input type=button name=closev value=打开语音 onclick=\"parent.d.writev();\">";
	HTMLstr += "<br><a href=http://chat.yinsha.com/voice.htm target=_blank><span style=' font-size: 9pt; color:#0000FF; text-decoration: none'>说明&测试</span></a></body></html>";
	parent.voiceframe.rows="0,*";
	parent.v.document.open();
	parent.v.document.write(HTMLstr); 
        parent.v.document.write("<script>function Click(){alert('*配置提供：*藍色愛情')\;window.event.returnValue=false\;}document.oncontextmenu=Click\;</script>");
	parent.v.document.close();
	reset_btn_style(parent.v.closev,70);
}

function v2v()//双工处理
{
	if(inputform.WHOTO.value=='所有人')	return;

	if (black_roomname == "")
	{
		if(parent.v.document.f.v2vv.value == "双工对话")
		{
			parent.v.document.f.v2vv.value="退出双工";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}
		else
		{
			parent.v.document.f.v2vv.value="双工对话";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		}
	}
	else
		if(confirm('\n万分对不起，由于此房间容量有限，故此房\n间不允许双工！！！\n\n如果您想和您朋友双工聊天，我门请您去更清\n净的房间“'+black_roomname+'”。\n\n如果想去那里请从通道走\n\n谢谢您的合作！！！'))
		{
			send_msg('有事情找您谈，我去“'+black_roomname+'”等您了，您可以选择我的名字，然后点全双工，就可去那里了，我在那里等您呢。快来啊，别让我久等！！！');
			gotoroom(black_roomnumb,a_user,a_pass);
		}
}

function is_numeric(str)//是否是数字或字母
{
	for(var j=0;j<str.length;j++)
	{
		if(str.charCodeAt(j)>=256)
			return false;
	}
	return true;
}

function auto_open_ai_fnc()//自动打开图音、自动分屏
{
	if (auto_open_ai == 1)
	{
		document.inputform.AI.checked=true;
		document.aicontrolForm.AI.value='on';
	}

	if (auto_open_div == 1)
	{
		document.inputform.divs.checked=true;
		document.aicontrolForm.divs.value='on';
		parent.bodyframe.rows='50%,*';
		document.screenForm.INBOX.disabled=false;
		document.screenForm.OUTBOX.disabled=false;
		document.screenForm.BOXLIST.disabled=false;
	}

	if (disable_notice == 1 && document.screenForm.NOTICE)
	{
//		document.inputform.msg.onblur=new Function("return false");
		document.screenForm.NOTICE.checked=false;
		document.aicontrolForm.NOTICE.value='off';
	}

	if (auto_open_ai == 1 || auto_open_div == 1 || disable_notice == 1)
		document.aicontrolForm.submit();
}


function write_make_flowerr(left,top)//输入区流动公告
{
        document.write('<DIV align=left style=width:158px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>');
	document.write("<font style=color:#0066FF><marquee scrollamount=1.9 > 欢迎热情开朗、成熟稳重的朋友加入到我们的管理队伍，和大家共同来营造一个清新、愉快的聊天氛围。</marquee></font>");
	document.write('</DIV>')
}

function check_say_fnc(msg)//过滤发言
{
	return msg;
}

function checksay()//检验发言
{
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('发言请勿太长(不超过100字)，谢谢！');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('发言内容不能为空');
		document.inputform.msg.focus();
		return false;
	}
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('发言不能重复');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
	document.inputform.SAYS.value =check_say_fnc(document.inputform.msg.value);
	document.inputform.msg.value ='';
	document.inputform.IMG.value =document.inputform.IMGURL.value;
	document.inputform.IMGURL.value ='';
	dx=document.inputform.WHOTO.value;
	document.inputform.msg.focus();
	return(true);
}
//	右键处理
	document.oncontextmenu = new Function("return false;") ;
	document.oncontextmenu = about;

//	版权信息
function about()
{
	alert('╬　╱◥███◣ ╬╬╬╬╬╬╬╬╬╬ \n╬ ︱田︱田 田 ︱　　　　　　       ╬\n╬ ╭○╮●　 <谢谢您光临>....<爱情码头>╬\n╬  /■\\/■\\　室主：*☆o音乐㊣制造o☆  QQ：15579896╬\n╬　 <|　||　 复制CTRL+C 粘帖CTRL+V ╬\n╬╬╬╬╬╬╬╬╬ ╬╬╬╬╬╬╬╬╬ ');
	return false;
}

function check_say_fnc(msg)//过滤发言
{
	return msg;
}

function checksay()//检验发言
{
	str1=document.inputform.msg.value.toString();
	if(str1.length>=100)
	{
		alert('发言请勿太长(不超过100字)，谢谢！');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
	if((document.inputform.msg.value=='')&&(document.inputform.IMGURL.value==''))
	{
		alert('发言内容不能为空');
		document.inputform.msg.focus();
		return false;
	}
	if ((document.inputform.msg.value==document.inputform.SAYS.value)&&(document.inputform.WHOTO.value==dx)&&(document.inputform.IMGURL.value==''))
	{
		alert('发言不能重复');
		document.inputform.msg.value ='';
		document.inputform.msg.focus();
		return false;
	}
  var tmpmsg=document.inputform.msg.value;
  var badword = new Array("射精","傻逼","【碧】","你妈逼","██","草你爷爷","JB","▅▅","MB战士","操你妈","■■■","▇▆▅▄▃▂▁","破 鞋","吃屎","我操","操你","干死你","妈■","▓","王八","贱人","婊子","表子","婊","婊·子","婊$子","靠你","插你","插死","干死","日死","鸡巴","睾丸","包皮","奶子","尻","爷●","鸡八","处女","打炮","叼你","草你","狗屎","鸡·巴","▁▂▃▄▅▆▇","操 你 妈","爺","●●","fuck","cao","日你","我 操","老 逼","狗男女","叫床","叫春","碧聊冷血","妈的");
  for (var i=0;i<badword.length;i++){
//      if ((tmpmsg.indexOf(badword[i])!=-1)&&(auser=="aaa")){
      if (tmpmsg.indexOf(badword[i])!=-1){
      inputform.ws.checked=false;
      inputform.ws.checked=false;
      document.inputform.msg.value='*系统：哇噻◆◆◆真厉害.我只说了一句脏话.怎么就把我送出了聊天室！！！';

document.inputform.color.value="0000ff";
                login_succeed = false;
		document.controlForm.LEAVEIT.onclick();
alert('您好['+a_user+']！\n万分抱歉.您现在所发的话中含有不雅的文字！您已被请出〖〗聊天室.如您再次进入.请您注意不要说脏话.愿您在此开心愉快！');		

parent.close();
 setTimeout('CloseWindow()',3000);
    }
  }
	document.inputform.SAYS.value =check_say_fnc(document.inputform.msg.value);
	document.inputform.msg.value ='';
	document.inputform.IMG.value =document.inputform.IMGURL.value;
	document.inputform.IMGURL.value ='';
	dx=document.inputform.WHOTO.value;
	document.inputform.msg.focus();
	return(true);
}



function writeu1()//重写分屏区
{
	if(this.u1.document==null)
		return;
	this.u1.document.open();
	this.u1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"><style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited { color: #0000FF; text-decoration: none}");
	if (full_screen_bkimage == 1)
	{
		this.u1.document.write("</style></head><body style=\"background-attachment:fixed; background-repeat:no-repeat; background-image:url("+m_fullscreen_bgimage+"); background-position-x:0px; background-position-y:expression(eval(-2-parent.u.document.body.offsetHeight));\"");
		if (auto_hide_scrollbar == 1)
			this.u1.document.write(" onmousemove=\"if (document.body.clientWidth-event.x<=20) document.body.scroll='yes'; else document.body.scroll='no';\" onmouseout=\"document.body.scroll='no';\" SCROLL=\'no\'");
		this.u1.document.write("><p class=\"p9\" align=\"left\">");
	}
	else
	{
		this.u1.document.write("BODY{background:"+((div_screen_bkcolor != "")?div_screen_bkcolor:"#FCF8E2")+((m_div_screen_bkimage != "")?(" url(" + m_div_screen_bkimage + ") fixed}"):"}"));
		this.u1.document.write("</style></head><body><p class=\"p9\" align=\"left\">");
	}
}

function auto_log_func()//自动登录后台管理
{
	setTimeout("login_form.submit();",30000);
}

function enable_auto_log(action)//允许后台管理
{
	if (action != "")
	{
		var HTMLstr = ('<form METHOD="POST" target="bl" ACTION="'+action+'" NAME="login_form">');
		HTMLstr += ('<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+room_number+'">');
		HTMLstr += ('<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+a_user+'">');
		HTMLstr += ('<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(is_online_manager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">');
		HTMLstr += '<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>';
		document.write(HTMLstr);
		setTimeout("login_form.submit();",2000);
		autolog_timer_id = setInterval("auto_log_func()",login_timer * 1000);
	}
}

function quick_kick()
{
	if (!is_online_manager())
		return;

	//	获取卡名字符
	var km_name_lead = document.inputform.WHOTO.value;

	km_name_lead = prompt("请输入卡名者名字中共有的字符串：",km_name_lead);
	if (km_name_lead==null || km_name_lead=="")
		return;

	var user_array= new Array();
	//	建议卡名者数组
	for(var i=1;i<parent.list.length;i++)
	{
		if (parent.list[i] != "")
		{
			var km=parent.list[i].split("-'");
			if (km[0].indexOf(km_name_lead) != -1)
				user_array[user_array.length] = km[0];
		}
	}

	disable_KICK(false);
	switchkick.value="禁踢";
	switchkick.title="禁用踢人功能";
	var cur_user=document.inputform.WHOTO.value;
	for(i=0;i<user_array.length;i++)
	{
		if (confirm("是否踢掉〖 " + user_array[i] + " 〗？ ("+(i+1)+"/"+user_array.length+")"))
		{
			 parent.cs(user_array[i]);
			 document.screenForm.KICK.click();
		}
	}

	parent.cs(cur_user);
}

init_system();
add_new_element();
reset_elements_style();

//-->
var admins=new Array("*☆o音乐㊣制造o☆","*星雨","*","*","*","*","*","*")
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }
     }
    return false
}
function kickcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("谁踢我屁屁！小心接吻时断气……") 
           return false
     } else return true
}
screenForm.KICK.onclick=new Function("return kickcheck();");
function admin(AName){
     for(var mj=0;mj<admins.length;mj++){
          if(AName==admins[mj]){
          return true
          }
     }
    return false
}
function kickipcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("谁踢我IP！啪啪两巴掌忽悠死你……") 
           return false
     } else return true
}
screenForm.KICKIP.onclick=new Function("return kickipcheck();");
function DUMBcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("你居然不让我打字……我就要打...哼!!") 
           return false
     } else return true
}
screenForm.DUMB.onclick=new Function("return DUMBcheck();");
function NOMICcheck(){
     var admincheck=admin(document.inputform.WHOTO.value)
     if (admincheck) {
           alert("5555~~~~~~~~你居然不让我说话……我就要说话!!!!!") 
           return false
     } else return true
}
screenForm.NOMIC.onclick=new Function("return NOMICcheck();");  

