/******************************************************************
Version:FX400C 
authors:寂静飞翔   Date: 2004-09-16
Copyright (C)2004 fxfl.cn
您在使用中有任何问题请登陆:http://fxdl.cn/bbs提问
*********************************************************************/

AUSER=document.inputform.USER.value;                  // 定义用户名变量
APASS=document.inputform.PASS.value;                  // 定义密码变量

WEBPLACES          = "lu_1/";                         // 按纽所在文件夹
BACKGROUNDCOLOR    = "#0A8216";                       // 按纽.下拉框文字色
INPUTTEXBKCOLOR    = "#C9F2BB";                       // 下拉框底色
INPUTBKCOLOR       = "#027F17";                       // 输入区文字色
MOUSEOVERCOLOR     = "#0000ff";                       // 鼠标移过按纽字色
ROOMBKCOLOR        = "#C9F2BB";                       // R.V区背景色
ROOMBKGROUND       = "#33CC00";                       // 链接背景色                            
ROOMNAMES          = "钟爱一生";                      // 聊室名称
ROOMNUMBER         = "301368";                          // 序号
USERADMINLS        = "临时主持";                      // 临时主持只具有递麦的权限,宜设为0级管理
SUBMISSAUSER       = "迎宾小姐";                      // 自动迎宾名字
BLACKROOMNAME      = "缘分情网";                      // 私聊房间
BLACKROOMNUMB      = "305039";                                 // 私聊房间序号
LEAVEROOM          = "http://"+ROOMNUMBER+".chat.yinsha.com";  // 聊室网址
WEBPLACE           = "http://218.65.209.14:28141/images/";     // 图片存放的路径
AUSERASP           = "http://218.65.209.14:28141/admin/";      // 管理后台
LISTLOGOGIF        = "http://js.liaowan.com/bj/zays.gif";                             // gif室微,为空则为默认霓虹灯室微
LISTLOGOSWF        = "";                                       // swf室微,不是请设为空
LISTIOGOSE         = "lines02.gif";                   // 室微下的图片
DEFAULTADMINPASS   = "123";                        // 自动上管密码  

INPUTWS            = 1;                               // 聊室人数达到设定数字时送花间隔悄悄话
INPUTWSALL         = 30;                              // 聊室人数达到设定数字时送花自动悄悄话
INPUTWSNG          = 25;                              // 聊室人数达到设定数字时发送图片自动悄悄话           
PU1WRITLE          = 0;                               // 送花是否不进分屏 0——否 1——是
ZENGBING           = 1;                               // 是否使用整屏 0——不使用，1——使用
BGINTEGRITY        = 0;                               // 是否无缝隙整屏 0——否 1——是 
SCROLLHIDDEN       = 0;                               // 默认隐藏滚动条 0——否 1——是
SUBUSER            = 1;                               // 是否使用人气马甲 
BODYBKIMAGE        = "r.jpg";                         // 输入区背景图片
DIVSBKIMAGE        = "r.jpg";                         // 分屏区背景图片
VOICEBKIMAGE       = "r.jpg";                         // 语音区的背景图，
LISTBKIMAGE        = "r.jpg";                         // 列表区背景图，
VOICEV1IMG         = "v1.gif";                        // 开语音的图标
VOICEV2IMG         = "v2.gif";                        // 双工图标
VOICEV0IMG         = "v0.gif";                        // 未开语音图标
VIDEOV2IMG         = "v3.gif";                        // 视频图标

BUTTONBKIMAGE     = 1;                                // 按钮使用背景图片，1——使用，0——不使用
TOUMINGD          = "100";                            // 按纽透明参数0——100可选

BUTTONBCOLOR      = "";                               // 按钮不使用背景图片时的颜色,空串则使用默认色
ONLYCHINESENAME   = 0;                                // 是否限制数字 0——不限制, 1——限制
AUTOOPENMIC       = 1;                                // 自动打开语音,0——不打开；1——自动打开
BLACKROOMV2VV     = 1;                                // 是否允许双工0——不允许，1——允许
AUTOOPENAI        = 1;                                // 自动打开图音,0——不打开；1——自动打开
AUTOOPENDIV       = 1;                                // 自动分屏,0——不分屏；1——自动分屏
ONINNERHTML       = 0;                                // 是否允许插图音0——否,1——是
AUSERCOLOR        = 0;                                // 列表区聊友名是使用彩边 0——否，1——是
VOICEVIMGES       = 0;                                // 聊友名后是否使用图片 0——不使用，1——使用
USERPICTURE       = 1;                                // 聊友名前是否使用图片 0——不使用，1——使用
ROOMPRGHTML       = 1;                                // 例表区是否使用滚动字幕 0——不使用，1——使用
ROOMPDGHTML       = 0;                                // 输入区是否使用滚动字幕 0——不使用，1——使用
LOGINCOLOR        = 18;                               // 入室文字信息颜色 1——22可选,颜色可参见聊室里【字色】下拉框里的排序,1——黑色,2——淡蓝....               
ADMINCOLOR        = 11;                               // 上管文字信息颜色 同上
QUITCOLOR         = 20;                               // 下管文字信息颜色 同上
LEAVECOLOR        = 16;                               // 离室文字信息颜色 同上
BGCOLOR           = "#ffffff";                        // 入室.离室信息背景色 可任意写入色码
//————立体声语音调节部分——
VOICEMODE         = 1;                                // 是否立体声:1——立体声 0——普通多方语音
                                                      // (不论是否购买立体声功能,只要在室主后台设了多方语音,并选:1 即可享用立体声功能)

VOICEMODESAMPLE   = 1;                                // 语音品质:1——高品质立体声 0——低品质立体声 
                                                      // (选1占用CUP较高,CUP及显卡不良容易引起杂音)

AOUTBUFFER        = 1;                                // 音质缓存调节 1——高,0——低
                                                      // (如果使用多方通话语音,为不引起杂音 宜选——0)
//————立体声语音调节部分END——
//————非立体声单语音调节部分——
VOICEMODESAMPLED   = 0;                               // 是否自动关麦 1——是 0——否

USERLOGIN         = "大家好,想我了吗!!我【"+AUSER+"】又回来了";
USERADMIN         = "HI~，大家好！要麦或试麦的朋友请向网管打999。我【"+AUSER+"】上管大家服务了:)";
USERQUITADMIN     = "【"+AUSER+"】先下管了，以后再为大家服务。";
USERLEAVE         = "【"+AUSER+"】有事先行一步了,朋友下次见,拜拜喽！";
MSGAUTOSPACK      = "我有些事暂时离开一下，一会儿就回来,有事请留言..";          
MSGAUTOSPACKE     = "大家好,本室今日讨论话题，欢迎您加入我们的话题发言";

if(ROOMPRGHTML==1)
//——例表区滚动字幕——
ROOMNAMEGHTML="<MARQUEE direction=up align=center onmouseout=this.start() onmouseover=this.stop() scrollAmount=1 HEIGHT=70 WIDTH=145 <font color=#ff0000><font color=#FF0000 face='华文行楷' size=3>我在月桂下翩舞<br>那千百年以来的忧伤<br>在漫舞飞扬的<br>雪花中<br>重回<br>你的怀抱.....</font></marquee></head>";

if(ROOMPDGHTML==1)
//——输入区滚动字幕——
ROOMNAMEGHTM = "<font color=#FF0000>"+ROOMNAMES+"欢迎:<font color=#990099>【"+AUSER+"】的到来：<font color=#ff0000>轻轻袅袅，你在微摆杨柳间穿行而过；而千年的缘分啊！注定了你我风花雪月的相会...! <font color=#ff0000>网址:http://370278.bliao.com";

//——霓虹灯室微,如果非4字室名,请修改size值——
ROOMNAMEFLASH="<script Language='JavaScript'>var i=0,ROOMNAMES='"+ROOMNAMES+"'; function changeCharColor() {str = '<center><font face=华文行楷 size=5><font color=blue>';for (var j = 0; j < ROOMNAMES.length; j++) {if( j == i) {str += '<font face=华文行楷 color=red>' + ROOMNAMES.charAt(i) + '</font>';}else {str += ROOMNAMES.charAt(j);}}str += '</font></font></center>';a.innerHTML = str;(i == ROOMNAMES.length) ? i=0 : i++;}setInterval('changeCharColor()', 400);</script>"

//————按纽————
BUTTONEVENT = 'onmouseout="this.style.color=\'\';" onmouseover="this.style.color=\''+MOUSEOVERCOLOR+'\';"';
BUTTONSTYLECOM=";filter:progid:DXImageTransform.Microsoft.Alpha(opacity="+TOUMINGD+");";
BUTTONSTYLEIMG=[
		22,"smiley.gif",
		18,WEBPLACES+"qan18.gif",
		30,WEBPLACES+"qan30.gif",
		34,WEBPLACES+"qan34.gif",
		44,WEBPLACES+"qan44.gif",
		60,WEBPLACES+"qan60.gif"
];

//——友情通道——
AROOMLINK =[
          BLACKROOMNAME,	BLACKROOMNUMB,
		 "红豆飙歌场","liao.wo99.com:2000",
		 "网事尘缘","370278",
		 "出门转左","202.96.140.40:4528"
];
//——免踢——
POWERPERSONLIST=[
		 "*寂静飞翔",
		 "*小楼一夜听风雨`",
		 "临时主持",
		 "*马甲1",
		 "*马甲1"
];
//——限制入室名字——
NAMEFILTER =[
		"寂静飞翔",
		"小楼一夜听风雨",
		"马甲1",
		"马甲2",
		"马甲3",
		"马甲4"
];
//——隐蔽自动上管(入室即有管权)
EMCEEPERSONLIST = [
		"小楼一夜听风雨",
		"马甲1",
		"马甲1",
		"马甲1",
		"马甲1"
];
//——可看到隐身人
LISTWATCH = "^(\\小楼一夜听风雨|\\寂静飞翔|\\admin)$";
//——隐身——
HIDEUSER =[
		"寂静飞翔",
		"马甲1",
		"马甲1",
		"马甲1"
];
//——人气马甲——
XNUSER=[
		"*一脸等待",
		"*爱D根源",
		"*“语叠",
		"小林子",
		"名花",
		"看看~~",
		"开心",
		"哈哈",
		"找人",
		"看到我了吗",
		"3321",
		"225",
		"AGFH"
];

//——VIP排序，可任意曾减级别
VIPUSER = {
		"9394":"1",
		"马甲1":"2",
		"寂静飞翔":"3",
		"admin":"4",
		"马甲2":"5",
		"马甲3":"6",
		"马甲4":"7",
		"马甲5":"8",
		"马甲6":"3"
	}

//——聊友名字的颜色和图标(头像)可任意曾减级别
AUSERTITLE= { 
        "1":[1,"本室室主","001.gif","#1B13BD"],
		"2":[2,"今日佳宾","002.gif","#FB8302"],
		"3":[3,"*副室主*","003.gif","#990AB8"],
		"4":[4,"本室督管","004.gif","#F3942E"],
		"5":[5,"高级管理","005.gif","#0033FF"],
		"6":[6,"本室管理","006.gif","#FF00FF"],
		"7":[7,"本室佳宾","001.gif","#1B13BD"],
		"8":[8,"本室佳宾","001.gif","#1B13BD"],
		"9":[9,"本室佳宾","001.gif","#1B13BD"],
		"10":[10,"本室佳宾","001.gif","#1B13BD"],
		"11":[11,"本室佳宾","001.gif","#1B13BD"],
		"12":[12,"本室佳宾","001.gif","#1B13BD"],
		"13":[13,"本室佳宾","001.gif","#1B13BD"],
		"14":[14,"本室佳宾","001.gif","#1B13BD"],
		"15":[15,"本室佳宾","001.gif","#1B13BD"],
		"A":[0,"在线主持","000.gif","#FF0000"],
		"B":[16,"注册聊友","007.gif","#1B13BD"],
        "C":[17,"中文聊友","008.gif","#1B13BD"],
		"D":[18,"数字英文聊友","009.gif","#1B13BD"],
        "E":[19,"本室迎宾小姐","yinbin.gif","#FF0000"]
		}
//——按纽上的链接——
LINKVUTTON = [
		"主页","http://fxdl.cn/bbs",
		"相册","",
		"留言","",
		"论坛","http://qliao.ku.net",
		"管理","http://admin.bliao.com/admin/s_admin.php"];

//——下拉框链接——
ALINKURL = [
		"在线修改配置","http://fxdl.cn/fxdl/login3.asp",
		"用户注册","http://chat.silversand.net/reguser.html",
		"江苏注册","http://www.js.bliao.com/user_reg.php",
		"大观园配置","http://admin.bliao.com/admin/s_admin.php",
		"特约配置","http://admin.bliao.com/admin/r_admin.php",
		"江苏碧聊配置","http://www.js.bliao.com/admin/s_admin.php",
		"如何伴奏","http://rekangtou.wx-e.com/chat/guangqu.htm",
		"碧聊伴奏","http://talk3.silversand.net/midi/hktaiwan.htm",
		"联众游戏","http://www.ourgame.com/",
		"google搜索","http://www.google.com/"
];
//——欢迎用语——
LSWELCOME = [
		"您好!欢迎您光临【" +ROOMNAMES+ "】聊天室！愿您在这里玩儿的开心！玩儿的愉快！这里就是您的家！！！",
		"您好!【" +ROOMNAMES+ "】欢迎您、并祝您生活愉快、合家欢乐、吉祥幸福、万事如意！！！！！",
		"您好!您来了！坐,请坐,请上坐;茶,敬茶,敬香茶！！【" +ROOMNAMES+ "】欢迎您的到来！！！",
		"您好!你终于来了呀！欢迎欢迎！！！我们在【" +ROOMNAMES+ "】等你,你是我们一生的等待和牵挂！朋友！！！"
];
//————迎宾小姐回复语————
MISSWELCOME=[
        "您好!欢迎您光临【" +ROOMNAMES+ "】聊天室！我是本室迎宾小姐,只迎宾不能聊天..",
        "您好!您终于来了呀！欢迎欢迎！！！我是本室迎宾小姐,只迎宾不能聊天,请谅解....愿您在这玩得开心:)",
		"您好!【" +ROOMNAMES+ "】欢迎您,我是本室迎宾小姐,只迎宾不能聊天,也不具有管理权限,请谅解....)",
        "您好!我是本室迎宾小姐,只迎宾不能聊天,也不具有管理权限,请谅解....愿您在这玩得开心:)"
];
//——情话——
ALOVE = [
		"爱你是我的错，不爱你是我的错过，宁任由美丽的错误诞生，也不愿错过任何一次机会去说一声我爱你。",
		"虽然我们相隔两地，但距离挡不住我对你的思念与祝福。愿网络可以传递你我的心声。",
		"你是那样地美，美得象一首抒情诗。你全身充溢着少女的纯情和青春的风采。留给我印象最深的是你那双湖水般清澈的眸子，以及长长的、一闪一闪的睫毛。像是探询，像是关切!",
		"不同的时间，不同的地点，不同的人群，相同的只有我和你！时间在变，时空在变，不变的只有 我对你无限的思念！",
		"想你想你好想你，把你的名字写在水杯里。每天喝水亲亲你。想你想你好想你，把你写在内衣里，每天贴身保护你！",
		"我能感天动地，却不能感动你；我愿祈天求地，祈求快乐幸福永远伴着你；我想怨天恨地怪自己没有拥有你的福气！"
];
//——鲜花——
FLOWERS = [
		"■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~～☆★☆～~我听的都醉了~0~",
		"鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～～掌声～～鲜花～掌声～～鲜花～掌声～～鲜花～掌声～鲜花～掌声～～",
		"¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",
		"艺术家！！专业歌星ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ(((((啪啪)))))ぷ╰ぷ╰签名！！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？",
		"玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮葱花╰☆☆╮ 礼花～～腰花～～杠上花",
		"☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的吗？我怀疑是歌星唱的啊！！* ~",
		"★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★☆ぷ╰☆╮ぷ",
		"☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～ ∵*☆★∵ ∵*☆★∴☆∵*☆★∴☆∵偶像～～签名～～～ ∵*☆★∴☆∵",
		"鲜花=========== 啪------啪- -掌声为你响起．°．°★·。∴°★·鲜花=========== 啪---啪--掌声为你响起",
		"醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧！要带唇印的哦~保安~我的鞋~",
		"希望伱︵.o天 天  都 在 ぺ【" + ROOMNAMES + "】─＞`.我最愛這裏━─所以你也要來喲┈.+ヾ+好ヾ　⺌^`  ヾ+嗎ヾ　⺌^",
		"、°｀、°、°｀、°｀、°╲KiｓS⌒_⺷嘴嘴╱｀、°｀、°｀、°小猪猪▂^ǒ^▂▂^ǒ^▂▂^ǒ^▂｀、°｀、°｀、°你好可爱哟｀、°｀、°",
		"⌒╮ ╭⌒╮ ヅ 顶 顶 肺...╭⌒╮死 心 塌 地...祗 因 爱 上 你 -- +︷︷ 的歌╭⌒╮┅~ ¤　 ╭⌒╮ 嘿嘿╭⌒╮ ヅ`╭⌒╮★",
		"棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒〓★〓棒棒棒★",
		"ＫＩＳＳ嘴嘴～～╭╩╮～＠～╭╩╮╭╩╮～～ＫＩＳＳ嘴嘴～～╭╩╮～＠～╭╩╮╭╩╮～～ＫＩＳＳ嘴嘴～～╭╩╮～＠～ＫＩＳＳ嘴嘴～～",
		"★．°唱☆的★☆好★送☆你★---→╭⺷ō⺷╯ ★．°·∴°☆ ·▲唱△不▲好△就┣▇〣▇〣═─…PP象ｏ一样打你出去⊥ｏ★．°·∴°",
		"㈠▁②▂⑶▃㈣▄⑤▅⑥▆⑺▇⑧█⑨朵玫瑰送给你●㊣『~*~啪』㊣≈☆￡鲜花≈●㊣" + ROOMNAMES + "㊣版权所有㊣违者必究㊣～☆★☆～",
		"▁▂▃▃▂▁★『掌声』☆ ▁▂▃▃▂▁★『啪啪』☆ ▁▂▃▃▂▁★『原版』☆ ▁▂▃▃▂▁★『绝唱』☆ ▁▂▃▃▂▁★『~*~啪』☆ ",
		"^⊙ō⊙^·飛吻大放送～～o○啵～～╲KiｓS⌒_⺷嘴嘴╱*·^⊙ō⊙^·狂啵你～～o○啵～～╲KiｓS⌒_⺷嘴嘴╱*·^⊙ō⊙^·狂啵你",
		"『~*~啪』很棒哟｀、｀、『~*~啪』为你拍巴掌｀、｀、『~*~啪』受不了啦｀、｀、『~*~啪』继续｀、｀、『~*~啪』真的很棒｀、"
];

//————送行————
ABYEBYE = [
		"真是舍不得你走啊....我会想你的..走好~~~~~有空常来玩，"+LEAVEROOM+"，别走错了哦~！",
		"真是舍不得，一路走好！我们会想你的~~~~~！有空常来玩，"+LEAVEROOM+"，别忘了哦~！"
];

//————告辞————
ALEAVE = [
		"其实不想走 其实我想留,留下来陪你每个春夏秋冬,你要相信我 再不用多久,我要你和我今生一起度过... ",
		"依依不舍地望着大家  ,真是舍不得啊....我会想你们的..你们不用想我的，也不一定要把我放在心里好啦，只要今晚有梦，梦里有我就行啦%¤%￥∮#·@"
];

//————要麦————
AWANTMIC = [
		"999999999，请给我麦999谢谢！",
		"我要麦╭═●999999，我要麦"
];

//————谢谢————
THANK= [
		"谢谢!!——————^_^——————谢谢您!!——————^_^——————谢谢!!",
		"谢谢您!!~~~~~~~~~~~~~谢谢!!~~~~~~~~~~~~谢谢您!!"
];


//————听见————
AHEART = [
		"||||||||||||||||||||||||||||||",
		"【听见了】——————听见了——————"
];

//————无音————
AHEARTON = [
		"您好!您的麦没声音☆【听不见】——————",
		"你的麦没声音——————【听不见】————————————"
];

//————网址————
ROOMLEAVE = [
		"【" +ROOMNAMES+ "】聊天室网址 "+ LEAVEROOM,
		"您好!请记住本室网址:http://"+ROOMNUMBER+".bliao.com"
];

//————管理用语————
ADMINSMG = [
		"准备接麦", "您好!下一个就是您的麦了，请您做好准备~~~~",
		"麦无声音", "您好!可能是您的麦有问题或是网速太慢☆★☆★您的麦没声音☆【听不见】",
		"拒绝双工", "您好!十分对不起，因为我正在上管主持，不能和聊友双工，请您谅解。等有时间我们再双工！实在抱歉了！",
		"请换名字", "您好!您现用的名字不适合进入本室,请您另换名进来,否则管理员将请您出去,谢谢合作! ",
		"请勿断麦", "当其他人说话和唱歌时您可不要断麦噢！这是对您和大家的尊重！请把右下角语音框里面的小麦克点成X既可！否则管理员会给你禁音",
		"未开麦克", "您好！系统：您尚未打开语音或处于双工语音状态，请你打开语音或是先退出双工对话，否则我们是递不了麦给你的哦！",
		"已经排麦", "您好！您的要麦的名单已记下,请稍后好吗?请不要再打999喽,这样会影响我们的屏幕,也会影响网友聊天的.谢谢理解与支持!",
		"请您接麦",	"您好！请您接麦,不好意思,让你久等了,请接好您的麦克风！☆⌒_⌒．☆°  ",
		"邀请唱歌",	"您好！你可以给大家唱一首歌或郎诵诗文吗？谈谈话题说说你的感受也行：）谢谢☆⌒_⌒．☆° ",
   		"提醒文明", "为了营造聊室温馨、文明的聊天环境,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,否则将被请出聊天室,谢谢合作！",
		"请您换名",	"我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。",
		"打黑警告",	"为了聊室的温馨气分！本室不能长时间黑电话！如果您确实要和朋友私聊！请您从本室友情通道进入私聊室,谢谢合作~！"
];

//————表情————
AEMOTE = [
		"问候",	"",	          "你好", "//hello",	 "Hi~",   "//hi",		"招呼", "//greet",
		"欢迎", "//welcome",  "握手", "//hand",		 "关照",  "//visit",	"有礼",	"//boy",
		"愉快",	"//:)",		  "笑笑",	"//:)2",	 "拥抱",  "//bearhug",   "一起",	"//sit",
		"鞠躬",	"//bow",	  "客气",  "//welcome2", "发财",  "//happy",	"事成",	"//bless",
		"生日",	"//birthday", "鼓掌",	"//clap",	 "加油",  "//addoil",   "玟瑰",	"//rose",
		"牛奶",	"//milk",	  "包子",	"//tea",	 "喝了",  "//wine",		"擦汗",	"//sweat",
		"蘑菇",	"//gzxj",	  "哈哈",	"//ha",		 "大笑",  "//haha",		"疑惑",	"//?",
		"过奖",	"//cool",	  "开饭",	"//eat",	 "鬼脸",  "//face",		"你真好","//thank",
		"高~",	"//gao",	  "呆笑",	"//giggle",	 "傻笑",  "//he",		"呵呵",	"//hehe",
		"想说?","//en",		  "吐舌",	"//:p",		 "惊讶",  "//ah",		"看开",	"//shou",

		"调情",	"",		       "爱你",	"//ai",		"天真",	"//@@",		    "喵～",	"//cat",
		"约我",	"//date",	   "怀抱",	"//faint",	"飞去",	"//fly",		"嘴堵",	"//ds",
		"痴望",	"//flook",	   "这女",	"//girl",	"答讪",	"//go", 		"赞美",	"//beauty",
		"情歌!","//sing",	   "摇篮",	"//sleep",	"喜欢",	"//ppp",		"爱你",	"//love",
		"是你?","//miss",	   "是你?","//wait4",	"等你",	"//waiting",	"花谢",	"//wait3",
		"发誓",	"//love2",	   "脉脉",	"//love3",	"证人",	"//loveu",		"眨眨",	"//lovesee",
		"含情",	"//lovelook",  "诱惑",	"//lure",	"睡不着","//night",		"求婚",	"//marry",
		"见过",	"//mm",		   "脸热",	"//shy",	"欲仙",	"//smoke",		"陶醉",	"//dance",
		"无辜",	"//inn",		"擦鞋",	"//caxie",	"轻抱",	"//hug",		"紧抱",	"//hug2",
		"紧缠",	"//spider",		"轻抚",	"//care",	"抚摸",	"//caress",		"爱抚",	"//touch",
		"拍头",	"//pat",		"依偎",	"//lean",	"跳入",	"//jump",		"啵亲",	"//kiss",
		"吻你",	"//kiss2",		"吻你",	"//kiss3",	"拥吻",	"//smooch",		"轻吻",	"//ykiss",
		"亲N口","//lly",		"疯吻",	"//xixi",	"折磨",	"//zhemo",		"做姐",	"//qsister",
		"做妹",	"//qsister1",	"做弟",	"//qbrother", "做哥","//qbrother1",
		"疙瘩",	"//cold",		"苦水",	"//:(",		"乞求",	"//cringe",		"肩哭",	"//cry",
		"唉叹",	"//sigh",		"安慰",	"//comfort","面包",	"//comfort1",	"伤多",	"//sad",

		"打斗",	"",
		"蛋扔",	"//allen",		"口水",	"//drivel",		"欺负",	"//bad",		"咬他",	"//bite",
		"变态",	"//bt",		    "臭虫",	"//bug",		"恶毒",	"//crazy",		"剁成",	"//cut",
		"桃花",	"//da",		    "放狗",	"//dog",		"好话",	"//dove",		"砒霜",	"//drug",
		"说?说","//ds2",		"喷嚏",	"//ds3",		"烦你",	"//duo",		"面子",	"//faceless",
		"催肥",	"//fat",		"怕了",	"//fear",		"羞脸",	"//blush",		"奸笑",	"//heihei",
		"冷笑",	"//heng",		"原谅",	"//forgive",	"瞎子",	"//grin",		"咆哮",	"//grow",
		"锤敲",	"//hammer",		"打PP",	"//handpat",	"红心",	"//hit",		"冰雕",	"//ice",
		"离婚",	"//nolove",		"顶你",	"//nudge",		"灰烬",	"//zap",		"扔出",	"//tu",
		"手捅",	"//poke",		"捅?捅","//poke2",		"膏药",	"//paste",		"拧你",	"//pinch",
		"吐你",	"//puke",		"狠揍",	"//punch",		"刀落",	"//qia",		"放倒",	"//qian",
		"无聊",	"//zzz",		"狂笑",	"//znw",		"砍你",	"//ti",		    "不怀",	"//look3",
		"叽歪",	"//jjww",		"所谓",	"//joe",		"踢PP",	"//kick",		"杀死",	"//kill",
		"馊主",	"//look",		"拜服",	"//wait2",		"傻冒",	"//beaut",		"呼吸",	"//breath",		"球扣",	"//koxia",

		"其他",	"",
		"同意",	"//agree",		"定了",	"//so",		    "你错",	"//wrong",		"蛋糕",	"//bb",
		"懒理",	"//angry",		"复机",	"//bbb",		"帮助",	"//hp", 		"不舒",	"//ill",
		"出名",	"//know",		"笨题",	"//fool",		"别问",	"//wen",		"不知",	"//no",
		"苦身",	"//work",		"不晓",	"//who",		"捧腹",	"//laugh",		"咋说",	"//look2",
		"沉闷",	"//lonely",		"模糊",	"//no2",		"无关",	"//noask",		"点头",	"//nod",
		"正传",	"//now",		"猪慢",	"//pig",		"对！",	"//right",		"摇头",	"//shake",
		"破电脑","//slow",		"微笑",	"//smile",		"赔礼",	"//sorry",		"原谅",	"//sorry2",
		"原谅",	"//sorry3",		"奇怪",	"//stare",		"破脑",	"//think",		"好累",	"//tired",
		"猪起",	"//wake",		"胜利",	"//yeah",		"NoNo",	"//finger",

		"告别","",
		"有期",	"//cu", 		"吻别",	"//cu2",		"隐退",	"//wait",		"再见",	"//bye",
		"背影",	"//cu3",		"陪俺",	"//stw",		"保重",	"//goodbye",	"会后",	"//goodbye2",
		"难过",	"//tear",		"留吃",	"//tea1",		"挥手。","//wave"

	];

//——图片——
APICTURE = [
        "问候",     "",
	    "弟好",		"wenhou/0001.gif", 
        "哥好",		"wenhou/0002.gif", 
        "妹好",		"wenhou/0003.gif", 
        "姐好",		"wenhou/0004.gif", 
        "朗诵",		"wenhou/0005.gif", 
        "欢迎",		"wenhou/0006.gif", 
        "谢管",		"wenhou/0007.gif", 
        "好听",		"wenhou/0008.gif", 
		"你好",		"wenhou/01.gif",  
		"礼男",     "wenhou/02.gif",   
		"礼女",     "wenhou/03.gif",
		"鼓掌",		"wenhou/04.gif",  
		"精彩",  	"wenhou/05.gif",   
		"伴奏",		"wenhou/06.gif",
		"伴舞1",	"wudao/01.gif",   
		"伴舞2",    "wudao/02.gif",    
		"伴舞3",	"wudao/03.gif",
		"伴舞4",	"wudao/04.gif",   
		"伴舞5",	"wudao/05.gif",     
		"伴舞6",    "wudao/06.gif",
		"伴奏7",	"wudao/07.gif",	  
		"双人舞",   "wudao/08.gif",	  
		"双人舞",	"wudao/09.gif",
    	"双人舞",	"wudao/10.gif",	 
		"双人舞",   "wudao/11.gif",

        "鲜花类",        "",
		"鲜花1",        "hua/01.gif",
		"鲜花2",        "hua/02.gif",
		"鲜花3",        "hua/03.gif",
		"鲜花4",        "hua/04.gif",
		"鲜花5",  	    "hua/05.gif",
		"鲜花6",        "hua/06.gif",
		"鲜花7",        "hua/07.gif",
		"鲜花8",        "hua/08.gif",
		"鲜花9",        "hua/09.gif",
		"鲜花10",    	"hua/10.gif",
		"鲜花11",       "hua/11.gif",
		"鲜花12",       "hua/12.gif",
		"鲜花13",       "hua/13.gif",
		"鲜花14",       "hua/14.gif",
		"鲜花15",  	    "hua/15.gif",
		"玫瑰1",        "meigui/01.gif",
		"玫瑰2",        "meigui/02.gif",
		"玫瑰3",        "meigui/03.gif",
		"玫瑰4",        "meigui/04.gif",
		"玫瑰5",     	"meigui/05.gif",
		"玫瑰6",        "meigui/06.gif",
		"玫瑰7",        "meigui/07.gif",
		"玫瑰8",        "meigui/08.gif",
		"玫瑰9",        "meigui/09.gif",
		"玫瑰10",   	"meigui/10.gif",

        "打斗类",        "",
		"功夫1", 	    "dadou/01.gif",
		"功夫2", 	    "dadou/02.gif",
		"功夫3", 	    "dadou/03.gif",
		"功夫4", 	    "dadou/04.gif",
		"功夫5", 	    "dadou/05.gif",	
		"功夫6", 	    "dadou/06.gif",
		"我杀", 	    "dadou/07.gif",
		"我砍", 	    "dadou/08.gif",
		"我跑", 	    "dadou/09.gif",
		"我追", 	    "dadou/10.gif",
		"快跑", 	    "dadou/11.gif",
		"吃拳",	        "dadou/12.gif",
        "吊你",         "dadou/13.gif",
		"封嘴", 	    "dadou/14.gif",	
		"发功", 	    "dadou/15.gif",
		"我顶",		    "dadou/16.gif",
		"我踩", 	    "dadou/17.gif",
		"抽你", 	    "dadou/18.gif",
		"耳光",	        "dadou/19.gif",
		"炸药",         "dadou/20.gif",
		"枪打", 	    "dadou/21.gif",
		"打烂", 	    "dadou/22.gif",
		"女枪",		    "dadou/23.gif",

        "调情类",        "",
        "美女",		    "tiaoqin/001.gif", 
        "泡妞",		    "tiaoqin/002.gif", 
        "泡哥",		    "tiaoqin/003.gif", 
        "网恋",		    "tiaoqin/004.gif", 

		"恩爱1",        "tiaoqin/01.gif",
		"恩爱2",        "tiaoqin/02.gif",
		"恩爱3",        "tiaoqin/03.gif",
		"定情",         "tiaoqin/04.gif",
		"约会",         "tiaoqin/05.gif",
		"约会",         "tiaoqin/06.gif",
		"亲吻1",        "tiaoqin/07.gif",
		"亲吻2",        "tiaoqin/08.gif",
		"亲吻3",        "tiaoqin/09.gif",
		"爱心",         "tiaoqin/10.gif",
		"情诗",         "tiaoqin/11.gif",
		"眉眼1",        "tiaoqin/12.gif",
		"眉眼2",        "tiaoqin/13.gif",
		"眉眼3",        "tiaoqin/14.gif",
		"等你",         "tiaoqin/15.gif",
        "抱你",         "tiaoqin/16.gif",

        "表情类",        "",
		"鬼舞", 	    "biaoqin/01.gif",
		"筋斗", 	    "biaoqin/02.gif",
		"放屁", 	    "biaoqin/03.gif",
		"开心", 	    "biaoqin/04.gif",
		"开心", 	    "biaoqin/05.gif",
		"大笑", 	    "biaoqin/06.gif",
		"大笑", 	    "biaoqin/07.gif",
		"电话中", 	    "biaoqin/08.gif",
		"吵嘴", 	    "biaoqin/09.gif",
		"聊天", 	    "biaoqin/10.gif",
		"吓你", 	    "biaoqin/11.gif",
		"我哭",	        "biaoqin/12.gif",
        "眼泪",        "biaoqin/13.gif",
		"阿门", 	    "biaoqin/14.gif",
		"敬礼", 	    "biaoqin/15.gif",
		"意外",		    "biaoqin/16.gif",
		"天使1", 	    "biaoqin/17.gif",
		"天使2", 	    "biaoqin/18.gif",
		"我忙",	        "biaoqin/19.gif",
		"我冤",         "biaoqin/20.gif",
		"警察", 	    "biaoqin/21.gif",
		"我美", 	    "biaoqin/22.gif",
		"你美",		    "biaoqin/23.gif",
		"红牌",		    "biaoqin/24.gif",

        "食品类",        "",
		"咖啡3",		"shipin/0001.gif", 
        "生日1",		"shipin/0002.gif", 
         "生日2",		"shipin/0003.gif", 
		"点心",         "shipin/01.gif",
		"汉堡1",        "shipin/02.gif",
		"汉堡2",        "shipin/021.gif",
		"蛋糕",         "shipin/03.gif",
		"鸡蛋",         "shipin/04.gif",
		"巧克力",       "shipin/05.gif",
		"巧克力",       "shipin/06.gif",
		"香蕉",         "shipin/07.gif",
		"西瓜",         "shipin/08.gif",
		"葡萄",         "shipin/09.gif",
		"萍果",         "shipin/10.gif",
		"蘑菇",         "shipin/11.gif",
		"蛋筒",         "shipin/12.gif",
		"可乐",         "shipin/13.gif",
		"牛奶",         "shipin/14.gif",
		"咖啡",         "shipin/15.gif",
		"喝茶1",        "shipin/16.gif",
		"喝茶2",        "shipin/17.gif",
        "干杯",         "shipin/18.gif",

        "动物类",        "",
		"放豹",         "dongwu/01",
		"老虎",         "dongwu/02",
		"小免",         "dongwu/03",
		"管闲事",       "dongwu/04.gif",
		"青蛙",         "dongwu/05.gif",
		"黑猫",         "dongwu/06.gif",
		"绅士",         "dongwu/07.gif",
		"响尾蛇",       "dongwu/08.gif",
		"谗猪",         "dongwu/09.gif",
	    "放狗",         "dongwu/10.gif",
		"牛!",          "dongwu/11.gif",
		"下蛋",         "dongwu/12.gif",
		"狐狸",         "dongwu/13.gif",
		"美食",         "dongwu/14.gif",
		"恶狼",         "dongwu/15.gif",
		"乌龟",         "dongwu/16.gif",

         "其它类",        "",
         "痛饮",		"qita/0001.gif", 
         "抢镜",		"qita/0002.gif", 
         "拳击",		"qita/0003.gif", 
         "道歉",		"qita/0004.gif", 
         "贪吃",		"qita/0005.gif", 
         "OK!",		    "qita/0006.gif", 
         "痛哭",		"qita/0007.gif", 
         "多硬?",       "qita/0008.gif", 
         "请坐",		"qita/0009.gif", 
         "两人",		"qita/0010.gif", 
         "苦苦",		"qita/0011.gif", 
         "晕我",		"qita/0012.gif", 
         "小样",		"qita/0013.gif", 
 		 "手机",         "qita/01.gif",	    
		 "电话",         "qita/02.gif",	   
		 "电话",         "qita/03.gif",
		 "小车",         "qita/04.gif",	    
		 "小车",         "qita/05.gif",	    
		 "马车",         "qita/06.gif",
		 "音乐",         "qita/07.gif",	    
		 "吸烟",         "qita/08.gif",	   
		 "取钱",         "qita/09.gif",
	     "钞票",         "qita/10.gif",	   
		 "金币",         "qita/11.gif",	   
		 "圣诞",         "qita/12.gif",	  
		 "圣诞",         "qita/13.gif",	    
		 "圣诞",         "qita/14.gif",  	
		 "圣诞",         "qita/15.gif",	 
		 "春节",         "qita/16.gif",	   
		 "发财",         "qita/17.gif",  	
		 "服务",         "qita/18.gif"
	];

ABKCOLOR = [
		"FFFFFF",
		"FFFF00",
		"FFE000",
		"FFC000",
		"FFA000",
		"FF8000",
		"FF6000",
		"FFA0FF",
		"FF80FF",
		"FF60FF",
		"FF00FF",
		"E000FF",
		"C000FF",
		"00FFFF",
		"00E0FF",
		"00C0FF",
		"00A0FF",
		"0080FF",
		"A0FF00",
		"80FF00",
		"00FF00",
		"00E000",
		"000000"
		];

VOPTION=[
        "咖啡","993300",
        "铜紫", "990099",
        "古红", "E10500",
         "纯白","FFFFFF"
         ];

//————————内部变量————————
IE=(ScriptEngineMajorVersion() + "." + ScriptEngineMinorVersion());
var ACHANG0 = [],ACHANG1 = [],ACHANG2 = [];
var BLEAVESYSTEM,AUTOADMIN=[],AUTOVIP=[],AUTOADMINS;
var RINTERVAL=20000,MINTERVAL=10000,ONTAKEOVER = 0,BLEAVESYSTEM = 1,LoginSucceed = true;
//————————是否整屏图片————————

if(ZENGBING == 1){
	 WUSERLISTBKIMAGE  = parent.u.document.body.background;
     WVOICEBKIMAGE     = parent.u.document.body.background;
     WDIVSKIMAGE       = parent.u.document.body.background;
	 WBODYKIMAGE       = parent.u.document.body.background;
	 }else{
	 WUSERLISTBKIMAGE  = PastePath(LISTBKIMAGE);
     WVOICEBKIMAGE     = PastePath(VOICEBKIMAGE);
     WDIVSKIMAGE       = PastePath(DIVSBKIMAGE);
	 WBODYKIMAGE       = PastePath(BODYBKIMAGE);

}

//————————CSS————————
if(IE<"5.5"){
LISTSTYLE="<style type=text/css><!--body  {  font-size: 9pt}a:visited {  color: #0000FF; text-decoration: none}a:link {  color: #0000FF; text-decoration: none}a:hover {  color: #FF0000}TD{FONT-SIZE:10pt}";
BODYSTYLE="<style type=text/css>TD{FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}BODY{COLOR:"+INPUTBKCOLOR+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}INPUT{COLOR:"+BACKGROUNDCOLOR+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}SELECT{COLOR:"+BACKGROUNDCOLOR+";FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;}BUTTON{COLOR:000000;FONT-SIZE:9pt;FONT-FAMILY:宋体,SimSun;cursor:hand}</style>";
DIVPSTYLE="<style type=\"text/css\">.p9 { font-family:宋体; font-size: 11pt; line-height: 21pt};a:hover {  color: #FF0000};a:link {  color: #0000FF; text-decoration: none};a:visited {  color: #0000FF; text-decoration: none}</style>";
}else{
SCRLSTYLE="SCROLLBAR-FACE-COLOR: rgb(233,255,233); SCROLLBAR-ARROW-COLOR: rgb(53,233,0); SCROLLBAR-DARKSHADOW-COLOR: rgb(191,255,163); SCROLLBAR-BASE-COLOR: rgb(220,255,186);";
LISTSTYLE="<style type=text/css><!-- body {font-size: 9pt} a:visited {color:"+INPUTTEXBKCOLOR+";text-decoration:none;font-size:9pt} a:link {color:"+BACKGROUNDCOLOR+";text-decoration:none;font-size:9pt} A:hover {border-bottom:1px solid "+BACKGROUNDCOLOR+"; padding:0; COLOR: #FFFFFF;background-color:"+ROOMBKGROUND+"; font-size:9pt } TD{FONT-SIZE:9pt} BODY{color:#804040;"+SCRLSTYLE+"}";
DIVPSTYLE="<style type=text/css><!-- .p9 {font-family:宋体,SimSun;font-size:11pt;line-height:17pt}A:link {COLOR: "+BACKGROUNDCOLOR+"; TEXT-DECORATION: none; background-color:"+INPUTTEXBKCOLOR+"; font-size:11pt; border-bottom-style:solid; border-bottom-width:1}A:visited {COLOR: "+BACKGROUNDCOLOR+"; TEXT-DECORATION: none; background-color:"+INPUTTEXBKCOLOR+"; font-size:11pt; border-bottom-style:solid; border-bottom-width:1}A:hover {border-bottom:1px solid "+BACKGROUNDCOLOR+"; padding:0; COLOR: #FFFFFF;background-color:"+ROOMBKGROUND+"; font-size:11pt } BODY{color:#804040;"+SCRLSTYLE+"}--></style>";
BODYSTYLE="<style type=text/css>TD{FONT-SIZE:9pt}.p9 {font-size:9pt}BODY {color:"+INPUTBKCOLOR+";"+SCRLSTYLE+"}INPUT{font-family:SimSun,宋体;font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}SELECT {font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}</style>";
}


/***********************基本信息变量END****************************
Version:FX400C 

Copyright (C)2004 fxfl.cn
************************聊室界面布局开始*****************************/
InitSystem();//引用执行功能函数

function CreateButtonPic(){

	(screenForm.KICK)?aTop=20:aTop=0;
 
     for (var h=0;h<(LINKVUTTON.length/2);h++){
         CreateButton("",5+34*h,0,34,LINKVUTTON[h*2],"本室"+LINKVUTTON[h*2]+"\n"+LINKVUTTON[h*2+1],"OpenConfiguredURL(" + h + ")");}
         CreateButton("",224,60,34,"清屏","刷新聊天显示区","Reload()");
         CreateButton("",292,80,34,"情话","发送情话","AutosNnd(ALOVE)");
         CreateButton("",224,80,34,"送别","送行用语","AutosNnd(ABYEBYE)");
         CreateButton("",292,60,34,"听见","听见用语","AutosNnd(AHEART)");
         CreateButton("",360,80,34,"网址","本室网址\n"+LEAVEROOM,"AutosNnd(ROOMLEAVE)");
         CreateButton("",326,80,34,"无音","麦无声音","AutosNnd(AHEARTON)");
         CreateButton("",326,60,34,"谢谢","谢谢鼓励","AutosNnd(THANK)");
         CreateButton("",258,80,34,"告辞","告辞用语","AutosNnd(ALEAVE)");
         CreateButton("LEAVEIT",258,60,34,"离开","退出聊天室","LeavEll()");
         CreateButton("SUBMIT",519,40,30,"发送","更改你的名字","SaySubmit()");
         CreateButton("",549,40,30,"重复","重复上次的发言","RepeatMsg()");
         CreateButton("",549,60,60-aTop*1.5,"欢迎","欢迎用语","AutosNnd(LSWELCOME)");
         CreateButton("",549,80,60-aTop*1.5,"献花","快速送花","AutosNnd(FLOWERS)");
         CreateButton("cutflower",174,0,60,"自制献花","打开自定义献花功能","MakCustomFlower()");

         CreateButton("genghuan",73,80,34,"换名","更改你的名字","GengHuanName()");
         CreateButton("huanroom",107,80,34,"换室","你可以从这里进入另一个聊室","GengHuanRoom()");
         CreateButton("VREQ",5,80,34,"视频","视频连接","screenForm.VREQ.click()");
         CreateButton("AdminAuto",39,80,34,"统计","点击查看聊友和管理信息","AdminAuto()");
         CreateButton("Scroll",141,80,34,"隐藏","隐藏滚动条","ScrollClick()");
         CreateButton("middle",175,80,18,"图","在弹出输入窗口输入框填上图片或者音乐的网址(URL)","IMGURL()");


         CreateButton("micOrder",518,80,30,"查麦","向主持查看麦序  20分钟查看一次","AutoOrder()");
         CreateButton("miclist",518,60,30,"要麦","向主持自动排麦,5分钟使用一次","AutoMic()");

         CreateButton("",5,60,34,"屏蔽","屏蔽“对象”中所指定的人的发言。最多可以屏蔽10人。","screenForm.SCREEN.click()");
         CreateButton("",39,60,34,"解除","解除对“对象”中所指定的人发言的屏蔽。","screenForm.NOSCREEN.click()");
         CreateButton("",73,60,34,"列表","列出全部被您屏蔽的人。","screenForm.SHOWSCREEN.click()");
         CreateButton("INBOX",107,60,18,"+","加入到您的包厢显示列表","screenForm.INBOX.click()");
         CreateButton("OUTBOX",125,60,18,"-","从您的包厢显示列表删除","screenForm.OUTBOX.click()");
         CreateButton("BOXLIST",143,60,18,"L","列出您的包厢显示列表中的人员","screenForm.BOXLIST.click()");



         WriteSelect("bkcolor","背景",464,40,50,BACKGROUNDCOLOR,ABKCOLOR,"ChangeBkColor(this)");
         WriteSelect("playemote","作表情",400,60,61,BACKGROUNDCOLOR,AEMOTE,"SendSelectionMsg(this)");
         WriteSelect("picture","发图片",400,80,61,BACKGROUNDCOLOR,APICTURE,"PlayPic(this)");
         WriteSelect("linkroom","友情通道",442,60,72,BACKGROUNDCOLOR,AROOMLINK,"GotoLinkRoom(this)");
         WriteSelect("linkurl","站点链接",442,80,72,BACKGROUNDCOLOR,ALINKURL,"GotoLinkUrl(this)");
         CreateButton("",280,20,22,"","发送心情图标","ShowFaces()");
         WriteText( 115,105,"自动");
         WriteText( 0,  105,"对象");
         WriteText( 70, 105,"提示");
         WriteText( 225, 25,"分屏");
         WriteText( 180, 25,"图音");
         WriteText( 135, 25,"滚屏");
         WriteText( 90,  25,"悄悄");
         WriteText( 45,  25,"公悄");
         WriteText( 0,   25,"接悄");
        
         WriteUserForm(335,0+aTop,100);
         WriteRoomForm(180,0,100);
         WriteFlower(350,0+aTop,260);

if (screenForm.KICK){
         CreateButton("autospack",360,60,34,"话题","点击输入你要发送的话题内容","AutoSpacke()");
         CreateButton("Duseropt",579,60,30,"自动","点此按纽自动迎客","Duserclick()");
         CreateButton("IntFlower",579,80,30,"自动","点此按纽自动送花","IntervalFlower()");
         CreateButton("KICKCLOSE",169,60,44,"关管权","打开管理权管,使用踢人功能等","DealKickManclick()");
         CreateButton("KICK",179,80,34,"踢人","按此钮将把对象所指的人踢出去","screenForm.KICK.click()");
         CreateButton("KICKIP",145,80,34,"踢IP","按此钮将把对象所在的IP踢出去","screenForm.KICKIP.click()");
         CreateButton("KLIST",73,60,34,"例表","列出当前处于被踢状态的人和IP","screenForm.KLIST.click()");
         CreateButton("DUMB",111,80,34,"禁言","禁止对象发言5分钟","screenForm.DUMB.click()");
         CreateButton("NOMIC",77,80,34,"禁音","禁止对象出声5分钟","screenForm.NOMIC.click()");
         CreateButton("ODOOR",59,80,18,"开","开聊室门","screenForm.ODOOR.click()");
         CreateButton("CDOOR",41,80,18,"关","关聊室门","screenForm.CDOOR.click()");
         CreateButton("LIN",23,80,18,"请","请门外的朋友进室","screenForm.LIN.click()");
         CreateButton("LOUT",5,80,18,"拒","拒绝门外的朋友进室","screenForm.LOUT.click()");
         CreateButton("QUET",179,80,34,"下管","快速下管","AdminQuit()");

         CreateButton("",257,0,18,"导","将麦序名单导入麦序里","ClearPuOrder()");
         CreateButton("AutoSendMic",579,40,30,"护麦","每10秒自动护麦","AutoKeepMic()");
         CreateButton("keepmic",519,0,30,"收麦","不用点你的名字,点此可把麦递给自已","CallBackMic()");
         CreateButton("Trans",549,0,30,"传麦","点此可按顺序把麦传给麦序中的名单","TransMic()" );
         CreateButton("CallBack",579,0,30,"递麦","快速递麦","CallMIC()" );
         CreateButton("autoOrder",365,0,30,"自动","自动加入名字到名单排序末尾","ToAddOrder()");
         CreateButton("",347,0,18,"加","加入名字到名单排序末尾","AddOrder()");
         CreateButton("",275,0,18,"例","公布名单排序","SendOrders()");
         CreateButton("InsertQueue",293,0,18,"插","插入名字到选定人之前","InsertOrder()");
         CreateButton("RemoveQueue",311,0,18,"删","从名单排序中删除所选择的名字","RemoveOrder()");
         CreateButton("ClearQueue",329,0,18,"清","从名单排序中删除所有名字","ClearOrder()");

         WriteSelect("dQueue",ROOMNAMES+"麦序",400,0,114,BACKGROUNDCOLOR,"","PrepareTakeMic()");
         WriteSelect("Adminuse","本室管理用语",442,60,72,BACKGROUNDCOLOR,ADMINSMG,"SendMsg(this.value)");
         }else{
         CreateButton("Duseropt",579,40,30,"自动","点此按纽自动迎客,仅限VIP会员使用","Duserclick()");
         CreateButton("reauto",360,60,34,"暂离","暂时离开的自动回复信息","AutoSpack()");
         CreateButton("",161,60,34,"上管","快速上管","AdminPass()");
//————————移动公告————————	
if(ROOMPDGHTML==1){
        document.write('<DIV align=center >'
        +'<table align=left border=0 cellspacing=2 cellpadding=1 bordercolorlight="'+BACKGROUNDCOLOR+'" style=LEFT:300px;TOP:20px;POSITION:absolute>'
        +'<tr><td><MARQUEE direction=op align=center onmouseout=this.start() onmouseover=this.stop() scrollAmount=2 style="HEIGHT: 7px; WIDTH: 305">'+ROOMNAMEGHTM+'</marquee></td>'
        +'</tr></table></DIV>');
       }
//————————移动公告————————

     }
} 

//————————换房文本框————————	
function WriteRoomForm(left,top,width){
         document.write('<DIV  id=huanf align=left style=visibility:hidden;width:150px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute><a name=quickchgname>'
         +'<form name = "newroom"><input type="text" style=background-color:'+INPUTTEXBKCOLOR+';width:'+(118-aTop*3.65)+'px;LEFT:0px;TOP:0px;height:20px;POSITION:absolute title="新开房间,输入房间号\n大观园:123456\n特约房间:t1234\n江苏分站:1234.js" name="roomid">');
         CreateButton("",118-aTop*3.65,0,32,"确定","进其它房间","NewRoom()");
         document.write('</form></DIV>');
}

//————————换名文本框————————	

function WriteUserForm(left,top,width){
         document.write('<DIV id=huan align=left style=visibility:hidden;width:'+width+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>'
         +'<form action="http://'+parent.window.location.hostname + ':'+parent.window.location.port+'/" method=get name=changeuserform target="_top">'
         +'<font style="font-family:宋体,SimSun;font-size:9pt">'
         +'<input type="text"  name="USER" style="LEFT:32px;TOP:1px;height:18;width:81px;POSITION:absolute;background-color:'+INPUTTEXBKCOLOR+';" value="'+AUSER+'" maxlength=15 onclick=USER.value="'+USERADMINLS+'" title="这里就是更衣室了，请输入您的网名！" >'
         +'<input type="password"  name="PASS" style="LEFT:145px;TOP:1px;height:18;width:100px;POSITION:absolute;background-color:'+INPUTTEXBKCOLOR+';border-width:2;FONT-SIZE:9pt;" value="输入密码" maxlength=10 onclick=PASS.value="" title="在这里输入密码,请输入您的密码！">');
         CreateButton("",0,0,32,"名字","请输入名字","");
         CreateButton("",113,0,32,"密码","请输入密码","");
         CreateButton("",243,0,32,"确定","更换马甲","ReName()");
         document.write('</form></DIV>');
}

//————————自制献花文本框————————	

function WriteFlower(left,top,width){
         document.write('<DIV  id=flower align=left style=visibility:hidden;width:'+width+'px;LEFT:'+left+'px;TOP:'+top+'px;POSITION:absolute>'
         +"<form name = \"flowers\">名字:"
         +'<input type="text" title="这里是献花的名字" name="fname" style="background-color:'+INPUTTEXBKCOLOR+';width:78px" maxlength="8" value = "鲜花">'
         +'&nbsp;献词<input type="text" title="打上祝福的词语" name="ftext" style="background-color:'+INPUTTEXBKCOLOR+';width:79px" maxlength="8" value = "祝福">');
         CreateButton("",220,0,34,"发送","发送祝词","CustomFlower()");
         document.write('<input type="hidden" value="0" name="resend">');
         document.write('</form></DIV>')
}


//————————输入区界面——————-
function SetneWareaTAG(){    
         document.body.style.setExpression("backgroundPositionY","-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight");
		 document.body.style.backgroundImage="url("+WBODYKIMAGE+")";
		 document.write(BODYSTYLE)

		 //————————删除.隐藏原界面元素——————-
		 inputform.ACTION.previousSibling.data = "";
         inputform.WHOTO.previousSibling.data  = "";
         inputform.msg.previousSibling.data    = "";
		 inputform.as.previousSibling.data     = "";
         inputform.ws.previousSibling.data     = "";
         inputform.AI.previousSibling.data     = "";
         inputform.divs.previousSibling.data   = "";
         screenForm.EAR.previousSibling.data    = "";
		 screenForm.SHOW.previousSibling.data   = "";
		 screenForm.NOTICE.previousSibling.data = "";
		 screenForm.object.previousSibling.data = "";
		 screenForm.AUTOREFRESHUSERLIST.previousSibling.data = "";

		 document.all.tags("span")[4].style.visibility="hidden";
         document.all.tags("span")[6].style.visibility="hidden";
		 inputform.tags("INPUT")[13].style.visibility="hidden";
		 controlForm.LEAVEIT.style.visibility="hidden";
		 controlForm.RELOAD.style.visibility="hidden";
		 for(var i=0; i<screenForm.elements.length; i++){ 
		     aobject=screenForm.elements(i);
		     switch (aobject.type){
		     case 'submit':
		     case 'button':
			 aobject.style.visibility = "hidden";break;
			           }
		}
        INBOX.disabled=true;
	    OUTBOX.disabled=true;
	    BOXLIST.disabled=true;
        if(ONINNERHTML==0)middle.disabled=true;
         //————————修改.重定位原界面元素——————-
         inputform.color.style.cssText  =";WIDTH: 50px;LEFT: 432px;TOP:40px;POSITION:absolute";
	     inputform.ACTION.style.cssText =";WIDTH: 50px;LEFT: 400px;TOP:40px;POSITION:absolute";
	     inputform.WHOTO.style.cssText  =";WIDTH: 110px;LEFT: 5px;TOP:40px;POSITION:absolute";
	     inputform.msg.style.cssText    =";WIDTH:280px;LEFT:115px;TOP:40px;POSITION:absolute";
	     inputform.divs.style.cssText   =";LEFT:255px;TOP:20px;POSITION:absolute";
	     inputform.AI.style.cssText     =";LEFT:210px;TOP:20px;POSITION:absolute";
	     inputform.as.style.cssText     =";LEFT:165px;TOP:20px;POSITION:absolute";
	     inputform.ws.style.cssText     =";LEFT:120px;TOP:20px;POSITION:absolute";
	     screenForm.SHOW.style.cssText   =";LEFT:75px;TOP:20px;POSITION:absolute";
	     screenForm.EAR.style.cssText    =";LEFT:30px;TOP:20px;POSITION:absolute";
	     screenForm.NOTICE.style.cssText =";LEFT:100px;TOP:100px;POSITION:absolute";
	     screenForm.AUTOREFRESHUSERLIST.style.cssText=";LEFT:150px;TOP:100px;POSITION:absolute";
	     screenForm.object.style.cssText =";LEFT:30px;TOP:100px;POSITION:absolute";
		 parent.document.bgColor=INPUTBKCOLOR;
		 parent.document.body.style.border='0px';
         parent.document.all.tags("FRAMESET")[0].frameSpacing='0';
         parent.document.all.tags("FRAMESET")[2].frameSpacing='1px';
   	     for(var i=0; i< VOPTION.length/2; i ++) {
  		     aoption = document.createElement("OPTION");
  		     aoption.text = VOPTION[2*i+0]; aoption.value = VOPTION[2*i+1]; 
		     aoption.style.cssText = "color:#"+ VOPTION[2*i+1];
		     inputform.color.add(aoption);
         }

}

//————————分屏区界面——————-
function writeu1(){
	 if(this.u1.document==null) return;
	 this.u1.document.open();
	 this.u1.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\">"+DIVPSTYLE+"</head>")
	 this.u1.document.writeln("<body background="+WDIVSKIMAGE+" bgcolor=\"#FCF8E2\" bgproperties=fixed>");
	 if (parent.writev_new)
	 this.u1.document.writeln("<td width=\"100%\"><font color=\"#0000FF\"><CENTER>本室使用立体声多语音系统，如果您的语音区图片是红差<br>说明还没安装语音插件,请<a href=\"http://www.bliao.com/help/Bluesky.exe \" target=\"_blank\">下载并安装文件</a></font></CENTER></td>");
	 this.u1.document.writeln("<p class=\"p9\" align=\"left\">");
	 this.u1.document.writeln=parent.d.U1Writle;
//	 this.u1.document.body.scroll = "yes";

}

//————————例表区界面——————-
function WriteListHtm(){
	if(parent.r.document==null) return;
		parent.r.document.open();
		parent.r.document.writeln('<html><head><meta http-equiv="Content-Type" content="text/html; charset=gb2312">'+LISTSTYLE+''
	    +"BODY{background:"+((ROOMBKCOLOR != "")?ROOMBKCOLOR:parent.r.document.body.bgColor)+((WUSERLISTBKIMAGE != "")?(" url("+WUSERLISTBKIMAGE+") fixed}"):"}")
	    +"--></style></head><body leftmargin=0 rightmargin=0 topmargin=0");
	    if(LISTLOGOSWF!="")
		parent.r.document.writeln("<br><embed src="+PastePath(LISTLOGOSWF)+" quality='high' pluginspage='http://www.macromedia.com/go/getflashplayer' type='application/x-shockwave-flash' width='140' height='36'></embed>")
        else
	   (LISTLOGOGIF!="")?parent.r.document.writeln('<br><CENTER><img src='+PastePath(LISTLOGOGIF)+'></CENTER>'):parent.r.document.writeln('<br><img src='+PastePath(LISTIOGOSE)+'><table border="1" bgcolor='+INPUTTEXBKCOLOR+' bordercolordark="#000000" bordercolorlight="#FFFFFF"><td><div id=a>'+ROOMNAMEFLASH+'</div></td></table>');
	    parent.r.document.writeln('<img src='+PastePath(LISTIOGOSE)+'><br>'
	    +'<a title=\"当前"\"><font color=990033>当前本室人数&nbsp;</font><font color=red><B id="COUNTL"></B></font><a href=\'javascript:parent.writeuserlist();\'><font color=0000ff>【刷新】</a></font><br></table>'
		+"<div id='LISTN'></div><hr>"
	    +''+(ROOMPRGHTML==1?ROOMNAMEGHTML:'')+'</body></html>');
		//parent.r.document.body.scroll = "yes";
		if(BGINTEGRITY==1)
		parent.r.document.body.style.border="0px"
		parent.r.document.close();}

function WriteList(){
	var count=this.count;
	var list=this.list;
	var arr2d=[],array=[];
	var reg=new RegExp,wat=new RegExp;
    var PRDW="";
    var zhuchi=0,zhuce=0,shuzi=0,zhongw=0,vipneme=0,vipuser=0;

		wat.compile(LISTWATCH,"gi")
        reg.compile("^(.*)-'(.*)-'(.*)-'(.*)-'(.*)'-(.*)'-(.*)$","gi");
	for(var i=1;i<list.length;i++){
		if(list[i]!=null&&list[i].match(reg)!=null){
			var user=RegExp.$1,admin=RegExp.$2;
            var voice=RegExp.$6,video=RegExp.$7;
			var Type,Queue,Title,Img,Color;
				if(admin==1&&!EmceePers(user)) Type="A";
				else if(VIPUSER[user]!=null) Type=VIPUSER[user];
				else if(user.match(/^\*/)) Type="B";
				else if(!user.match(/\w/))Type="C";
				else Type="D";
				Queue=10000+AUSERTITLE[Type][0]*1000+i;
				Title=AUSERTITLE[Type][1];
				Img=PastePath(AUSERTITLE[Type][2]);
                Color=AUSERTITLE[Type][3];
				array[Queue]=[user,admin,Img,Color,Title,voice,video];
	           (!IsHiddenUser(user)||AUSER.match(wat)!=null)?arr2d[arr2d.length]=Queue:count=count-1
		}
	}
	arr2d=arr2d.sort();
    if (typeof(parent.r.LISTN)=="undefined")
	WriteListHtm();
	   PRDW+=("<table border='0' width=190px cellspacing='0' cellpadding='0' topmargin='0'>");
       PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["E"][2],"")+"\" border=0  ></td><td width=190 align=left>");
       PRDW+=("<a target=d href=\"javascript:parent.cs(SUBMISSAUSER)\" title=\""+AUSERTITLE["E"][1]+"\">");
       PRDW+=("<font style=\"filter: glow(color="+AUSERTITLE["E"][3]+",strength=2); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\" ><B>["+SUBMISSAUSER+"]</font></a>&nbsp;<font face=\"Wingdings\" color=#00DD00>(</font><br>");

	for(var i=0;i<arr2d.length;i++){
	   
		PRDW+=("<tr><td align=center><img src=\""+array[arr2d[i]][2]+"\" border=0  ></td><td width=190 height=20 align=left topmargin='2' >");
	    PRDW+=("<a target=d href=\"javascript:parent.cs('"+array[arr2d[i]][0]+"')\" title=\""+array[arr2d[i]][4]+"\">");
      
	   if (AUSERCOLOR==1){
		if (array[arr2d[i]][4]==AUSERTITLE["A"][1]){
        PRDW+=("<font style=\"filter: glow(color="+array[arr2d[i]][3]+",strength=3); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\"><B>["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
	 	AUTOADMIN[zhuchi]=array[arr2d[zhuchi++]][0];     
		}else
        PRDW+=("<font style=\"filter: glow(color="+array[arr2d[i]][3]+",strength=2); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\">["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
		}else{
	    if (array[arr2d[i]][4]==AUSERTITLE["A"][1]){
	    PRDW+=("<font style=\"color:"+array[arr2d[i]][3]+";cursor:hand\" ><B>["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
		AUTOADMIN[zhuchi]=array[arr2d[zhuchi++]][0];     
    	}else
	    PRDW+=("<font style=\"color:"+array[arr2d[i]][3]+";cursor:hand\" >["+array[arr2d[i]][0]+"]</font></a>&nbsp;");
	    }
      
	   (array[arr2d[0]][4]==AUSERTITLE["A"][1])?AUTOADMINS=1:AUTOADMINS=0;
      
	 if ((array[arr2d[i]][4]!=AUSERTITLE["A"][1])&&(array[arr2d[i]][4]!=AUSERTITLE["B"][1])&&(array[arr2d[i]][4]!=AUSERTITLE["C"][1])&&(array[arr2d[i]][4]!=AUSERTITLE["D"][1]))
	  {
	   AUTOVIP[vipuser]=array[arr2d[zhuchi+vipuser++]][0];     
        vipneme=vipneme+1;
	   }
	  if (IsHiddenUser(array[arr2d[i]][0])) PRDW+=("<font color=#FF0099>隐</font>");
	  if (VOICEVIMGES==0){
      VOICEVIMG="<font face=\"Wingdings\" color=#00DD00>(</font>"
	  if(array[arr2d[i]][5]==1) PRDW+=("<font face=\"Wingdings\" color=#00DD00>(</font>");
	  if(array[arr2d[i]][5]==2) PRDW+=("<font face=\"Wingdings\" color=black>(</font>");
      if(array[arr2d[i]][5]==0) PRDW+=("<font face=\"Wingdings\" color=#ff0000>(</font>");
	  if(array[arr2d[i]][6]==1) PRDW+=("<font face=\"Webdings\" color=#000000>N</font>");
	  }else{
      VOICEVIMG="<img src="+PastePath(VOICEV1IMG)+">"
	  if(array[arr2d[i]][5]==1) PRDW+=("<img src="+PastePath(VOICEV1IMG)+">");
	  if(array[arr2d[i]][5]==2) PRDW+=("<img src="+PastePath(VOICEV2IMG)+">");
      if(array[arr2d[i]][5]==0) PRDW+=("<img src="+PastePath(VOICEV0IMG)+">");
	  if(array[arr2d[i]][6]==1) PRDW+=("<img src="+PastePath(VIDEOV2IMG)+">");
      }
//————————人气马甲开始,如果你不使用此功能,以下可以删掉————————
if ((SUBUSER==1)){
    var color;
     if (array[arr2d[i]][4]==AUSERTITLE["B"][1])color=AUSERTITLE["B"][3];	
     if (array[arr2d[i]][4]==AUSERTITLE["C"][1])color=AUSERTITLE["C"][3];	
     if (array[arr2d[i]][4]==AUSERTITLE["D"][1])color=AUSERTITLE["D"][3];	

if (AUSERCOLOR==1)
    LISTCOLOR="<font style=\"filter: glow(color="+color+",strength=3); Height:8pt; color:FFFFFF; padding:1px;cursor:hand\">"
    else
    LISTCOLOR="<font style=\"color:"+color+";cursor:hand\" >"
    if ((array[arr2d[i]][4]==AUSERTITLE["B"][1])){
		zhuce=zhuce+1;
	if(zhuce<4){
	 if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+0]][0]))abc=XNUSER[0];
	 else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+1]][0]))abc=XNUSER[1];
	 else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+2]][0]))abc=XNUSER[2];
 	 PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["B"][2],"")+"\" border=0  ></td><td width=190 align=left>");
     PRDW+=("<a target=d href=\"javascript:parent.cs('"+abc+"')\" title=\""+AUSERTITLE["B"][1]+"\">");
	 PRDW+=(""+LISTCOLOR+"["+abc+"]</font></a>&nbsp;"+VOICEVIMG+"");

	 }}
    if (array[arr2d[i]][4]==AUSERTITLE["C"][1])	{
	   zhongw=zhongw+1;
	  if(zhongw<8)
		 {
	        if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+0]][0]))abc=XNUSER[3];
            else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+1]][0]))abc=XNUSER[4];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+2]][0]))abc=XNUSER[5];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+3]][0]))abc=XNUSER[6];
            else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+4]][0]))abc=XNUSER[7];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+5]][0]))abc=XNUSER[8];
	        else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+6]][0]))abc=XNUSER[9];
            PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["C"][2],"")+"\" border=0  ></td><td width=190 align=left>");
            PRDW+=("<a target=d href=\"javascript:parent.cs('"+abc+"')\" title=\""+AUSERTITLE["C"][1]+"\">");
	        PRDW+=(""+LISTCOLOR+"["+abc+"]</font></a>&nbsp;"+VOICEVIMG+"");
		}
	}
 if (array[arr2d[i]][4]==AUSERTITLE["D"][1])
		 {
		 shuzi=shuzi+1;
		 if(shuzi<4)
			 {
	      if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+zhongw+0]][0]))abc=XNUSER[10];
	      else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+zhongw+1]][0]))abc=XNUSER[11];
	      else if ((array[arr2d[i]][0]==array[arr2d[zhuchi+vipneme+zhuce+zhongw+2]][0]))abc=XNUSER[12];
 	      PRDW+=("<tr><td align=CENTER><img src=\""+PastePath(AUSERTITLE["D"][2],"")+"\" border=0  ></td><td width=190 align=left>");
          PRDW+=("<a target=d href=\"javascript:parent.cs('"+abc+"')\" title=\""+AUSERTITLE["D"][1]+"\">");
	      PRDW+=(""+LISTCOLOR+"["+abc+"]</font></a>&nbsp;"+VOICEVIMG+"");
		 }
	 }}
//————————人气马甲删到此.往下两行再删
	PRDW+=('</td></tr>');
	}
	PRDW+=('</table>');
//————————人气马甲曾序.不用此功能继续删除
	if (SUBUSER==1){
    (shuzi<4)?A2d = shuzi:A2d =3;
    (zhongw<8)?B2d=zhongw:B2d =7;
    (zhuce<4)?C2d=zhuce:C2d =3;
	parent.r.COUNTL.innerText = arr2d.length+A2d+B2d+C2d;
    }else
//————————人气马甲删到此END—————
	parent.r.COUNTL.innerText = arr2d.length;
	parent.r.LISTN.innerHTML = PRDW;
	}

//————————语音区界面————————
var InAdminMode=0;
function writev()//打开语音后的界面
{

	   if (!parent.writev_new){
            if(ZENGBING == 1 &&IE >= "5.5"){
		if(parent.v1.document==null)return;
        parent.v1.document.open();
		parent.v1.document.write("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>"
		+"<body><style type=text/css>BODY{background:"+ROOMBKCOLOR+" url("+WVOICEBKIMAGE+") fixed}</style>"
        +"<iframe id=frm src='javascript:document.write(\"<html><body style=background-color:transparent><font color=red>请稍候..................</font></body></html>\")' width=100% height=100% BORDER=0 FRAMEBORDER=0 SCROLLING=no ALLOWTRANSPARENCY></iframe>"   
		+("<script>setTimeout('this.document.all.frm.src=\""+(VOICEMODESAMPLED==1?"http://218.65.209.14:28141/docs/voice.asp":"http://www.bliao.com/voice.phtml")+"?bgcolor="+escape('" style=background-color:transparent "')+"&port="+parent.window.location.port+"&host="+parent.window.location.hostname+"&name="+AUSER+"&pass="+APASS+"&encode=gb2312\"',1000);<\/script>")
		+"</body></html>");
        parent.v1.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
        parent.v1.document.body.style.setExpression("backgroundPositionY","-"+((typeof(parent.v2)!="undefined")?94:0)+"-parent.r.document.body.offsetHeight");
		parent.v1.document.close();
		}else
		parent.writev();}
	    if(parent.v.document==null)return;
	    parent.v.document.open();
	    parent.v.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>");
        if (VOICEBKIMAGE != "")
        parent.v.document.writeln("<body><style type=text/css>BODY{background:"+ROOMBKCOLOR+" url("+WVOICEBKIMAGE+") fixed}")
		parent.v.document.writeln("INPUT{;font-family:宋体,SimSun;font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}");
        parent.v.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
        parent.v.document.body.style.setExpression("backgroundPositionY","-"+((typeof(parent.v2)!="undefined")?VR2:VRO)+"-parent.r.document.body.offsetHeight");
 
		if (parent.writev_new){
		parent.v.document.writeln("</style><br><form name=f><p>"
        +"<object id='blueskyvoice' classid='clsid:991481A7-4669-4e15-8C24-100404E1F5CB' width='160' height='62' codebase='http://www.bluesky.cn/download/blueskyvoice_60.cab#Version=6,0,0,27'>"
	    +"<param name=\"_cx\" value=\"5080\">"
	    +"<param name=\"_cy\" value=\"5080\">"
	    +"<param name=\"_ExtentY\" value=\"3784\">"
	    +"<param name=\"_StockProps\" value=\"0\">"
	    +"<param name=\"host\" value=\""+window.location.hostname+"\">"
        +"<param name=\"port\" value=\""+parent.window.location.port+"\">"
        +"<param name=\"name\" value=\""+parent.d.document.inputform.USER.value+"\">"
        +"<param name=\"pass\" value=\""+parent.d.document.inputform.PASS.value+"\">"
	    +"<param name=\"roomid\" value=\"0\">"
		+"<param name=\"mode\" value=\""+((VOICEMODE==1)?"HIGH":"NORMAL")+"\">"
	    +"<param name=\"samples\" value=\""+((VOICEMODE==1)?((VOICEMODESAMPLE==1)?"16":"8"):"$samplemode")+"\">"
		+"<param name=\"quality\" value=\"1\">"
	    +"<param name=\"autobuffer\" value=\""+AOUTBUFFER+"\">"
		+'<param name=\"bgcolor\" value="11264169">'
        +'<param name=\"textcolo\r" value="0">'
        +'<param name=\"listbgcolor\" value="12908993">'
        +'<param name=\"listfgcolor\" value="7303804">'
		+"</object>"
	    +"<script language='JavaScript' for='blueskyvoice' event='selectname(name)'>"
	    +"parent.cs(name);"
	    +"<\/script>"
	    +"<script>"
        +"document.blueskyvoice.RecOn();"
        +"function handle\(v\){"
        +" parent.d.voicehandleForm.VOICEHANDLE.value=v;"
        +" parent.d.voicehandleForm.WHOTO.value=parent.d.inputform.WHOTO.value;"
        +" parent.d.voicehandleForm.submit\(\);"
        +"} "
        +"<\/script>");
		parent.v.document.write("<input type=button name=requestmic  value=拿麦 title='拿起麦克风说话，只在自由抢麦方式下有效' onclick=\"document.blueskyvoice.RecOn();document.blueskyvoice.RequestMic();this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=releasemic  value=放麦 title='放下麦克风，停止发言' onclick=\"document.blueskyvoice.RecOff();document.blueskyvoice.ReleaseMic();this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=filtervoice  value=过滤 title='过滤某个当前发言者的声音' onclick=\"document.blueskyvoice.FilterVoice();this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=v2vv  value=全双工 title='与某个人双工对话' onclick=\"parent.d.v2v();this.blur();parent.d.document.inputform.msg.focus();\">"
        +"<br><input type=button name=mainmic  disabled value=主 title='把主麦(远端视频随之切换的麦克风)交给某个人' onclick=\"handle(1);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=secondmic  disabled value=附 title='把附麦(主麦之外的第二、第三麦克风)交给某个人' onclick=\"handle(2);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=getmic disabled value=收 title='收回某个人的麦克风，中断其发言' onclick=\"handle(0);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=cutmic disabled value='切' title='收回某个人的麦，并把这个麦交给管理员自己' onclick=\"handle(4);this.blur();document.blueskyvoice.RecOn();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">"
        +"<input type=button name=freemic  disabled value='F' title='设置成自由抢麦状态(只要有任何管理操作就回到受管理状态)' onclick=\"handle(3);this.blur();parent.d.document.inputform.msg.focus();\""+BUTTONEVENT+">");
        parent.v.document.writeln("<input type=button  name=closev value=关语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\" "+BUTTONEVENT+">"
        +'</body></html>');
        parent.v.document.close();
        parent.voiceframe.rows="0,*";
		ResetButtonStyle(parent.v.f.requestmic,34);
	    ResetButtonStyle(parent.v.f.releasemic,34);
	    ResetButtonStyle(parent.v.f.filtervoice,34);
		ResetButtonStyle(parent.v.f.mainmic,18);
	    ResetButtonStyle(parent.v.f.secondmic,18);
		ResetButtonStyle(parent.v.f.getmic,18);
		ResetButtonStyle(parent.v.f.cutmic,18);
	    ResetButtonStyle(parent.v.f.freemic,18);
		ResetButtonStyle(parent.v.f.v2vv,44);
		ResetButtonStyle(parent.v.f.closev,57);
		}else{
		parent.v.document.writeln("</style><form name=f><center><input type=button  name=v2vv value=全双工 onclick=\'parent.d.v2v();\' "+BUTTONEVENT+">"
	    +"<input type=button  name=closev value=关语音 onclick=\"parent.v1.location='about:blank';parent.d.writecv();\" "+BUTTONEVENT+">"
	    +"<script language=javascript>function peizhi() {window.open('http://fxdl.cn/bbs','myWindow','height=100,width=400,top=300,left=300,toolbar=0,menubar=0,scrollbars=1,resizable=1,location=1,status=0')}</script>"
		+"<input type=button  name=shezhi value=配置信息 onclick=\"peizhi()\""+BUTTONEVENT+">" 
	    +"</form></body></p></html>");
		parent.v.document.close();
		parent.voiceframe.rows="*,30";
		ResetButtonStyle(parent.v.f.v2vv,44);
	    ResetButtonStyle(parent.v.f.closev,44);
	    ResetButtonStyle(parent.v.f.shezhi,60);

}

}
function writecv(){//未开语音时的界面
	if(parent.v.document==null) return;
	   parent.voiceframe.rows="0,*";
	   parent.v.document.open();
	   parent.v.document.writeln("<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>");
       if (WVOICEBKIMAGE != "")

	   parent.v.document.writeln("<body><style type=text/css>BODY{background:"+ROOMBKCOLOR+" url("+WVOICEBKIMAGE+") fixed}");
       parent.v.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
       parent.v.document.body.style.setExpression("backgroundPositionY","-"+((typeof(parent.v2)!="undefined")?VR2:0)+"-parent.r.document.body.offsetHeight");
	   parent.v.document.writeln("INPUT{;font-family:宋体,SimSun;font-size:9pt;color:"+BACKGROUNDCOLOR+";background-color:"+INPUTTEXBKCOLOR+";}");
	   parent.v.document.writeln("</style><form name=ov><center><br><br><br><br><input type=button  name=closev value=打开语音 onclick=\"if(!parent.writev_new){parent.d.writev();}else{parent.d.writev();if(parent.InAdminMode==1){parent.EnableVoiceAdmin();}else{parent.DisableVoiceAdmin();}}\""+BUTTONEVENT+">"
	   +"<script language=javascript>"
	   +"function ceshi() {window.open(\"http://chat.yinsha.com/voice.htm\")}" 
	   +"</script>"
	   +"&nbsp;<input type=button  name=closevs  value=话筒测试 onclick=\"ceshi()\""+BUTTONEVENT+">" 
	   +"</form>"
	   +"</body></html>");
	   parent.v.document.close();	  
       ResetButtonStyle(parent.v.ov.closev,60);
       ResetButtonStyle(parent.v.ov.closevs,60);
}

function v2v(){//双工处理
	if((inputform.WHOTO.value=='所有人')||(inputform.WHOTO.value=='朋友们')||(inputform.WHOTO.value==AUSER))
	{alert("系统:不可以邀请/接受所有人或自己为全双工语音对话对象。")
    return;}
    else{
     if (BLACKROOMV2VV == 1){
		if(parent.v.document.f.v2vv.value == "全双工"){
			parent.v.document.f.v2vv.value="退双工";
			parent.d.v2vForm.TOONE.value=1;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		    }else{
			parent.v.document.f.v2vv.value="全双工";
			parent.d.v2vForm.TOONE.value=0;
			parent.d.v2vForm.WHOTO.value=parent.d.inputform.WHOTO.value;
			parent.d.v2vForm.submit();
		    }}else
		    if(confirm('\n对不起，本室不允许双工！！！\n\n双工请您去更清净的房间\n“'+BLACKROOMNAME+'”')){
			  SendMsg('我去“'+BLACKROOMNAME+'”等您了，您可以选择我的名字，然后点全双工，就可去那里了！！！');
			  GotoRoom(BLACKROOMNUMB,AUSER,APASS);
      }
   }
}



function InitSystem(){//执行函数集
//————————窗口大小被改变执行整屏————————
    document.write('<body onResize="KeepBkimag()">');

//————————隐蔽自动上管————————
	document.write('<body onload="if (EmceePers(AUSER)) AdminPass()">');

//————————例表区————————
  parent.write=WriteList;

//————————分屏区————————
   parent.writeu1 = writeu1;
   if(this.location.toString().search("BOTTOMADM")!=-1)
	parent.u1.document.writeln=U1Writle;

//————————语音区————————
if (parent.writev_new){ 
   VR2=94,VRO=0;
   parent.writev_new = writev;
   }else{
   VR2=184,VRO=100;
   parent.writecv = (AUTOOPENMIC == 1)?writev:writecv;
   }


//————自动欢迎————
  Achang(ACHANG0,parent.list);
//————-隐身自动悄悄————-	
if (IsHiddenUser(AUSER)) inputform.ws.checked=true;
//————-过滤用户名————
   UserNameFilter();
//————按纽组——————
   CreateButtonPic();

//——————————免踢————
	  if (IsOnlineManager()){
      screenForm.KICK.onclick=new Function("return KickCheck();");
      if (screenForm.KICKIP)
	  screenForm.KICKIP.onclick=new Function("return KickCheck();");
	  screenForm.DUMB.onclick=new Function("return KickCheck();");
      screenForm.NOMIC.onclick=new Function("return KickCheck();");

	  SeTrunEnvironMent(ONTAKEOVER);//临时管理权限限制
      setTimeout("ToAddOrder()",300);//自动加麦
  }
//————输入区——————
   SetneWareaTAG();
//————载入信息——————
   setTimeout("WriteLoginmsg()",300);

//————默认文字色——————
   setTimeout("Logibgcolor()",500);

//————整屏——————
   setTimeout("KeepBkimag()",1000);

//————————分屏欢迎词————————
setTimeout("LswelComTimed()",3000);
//————自动开图音。分屏————
  setTimeout("AutoOpenAiDiv()",4000);

//————VIP自动欢迎——————
if (!IsOnlineManager())
   setTimeout("NoVipList()",3000);

//————————隐藏滚动条————————
if(SCROLLHIDDEN==1)
setTimeout("ScrollClick();",3000);

//————————立体声语音自动开麦————————
if (parent.writev_new)
setTimeout("parent.v.document.blueskyvoice.RecOn();",10000);
}

/**************界面布局END*************************
Version:FX400C 

Copyright (C)2004  fxdl.cn
***************功能函数集合开始*********************/
//————————图片处理————————
 function PastePath(imagename){
	return  (imagename.substr(0,7).toLowerCase() != "http://")?WEBPLACE+imagename:imagename;
}

//————————按纽函数集————————
function CreateButton(aName,aLeft,aTop,aWidth,sText,sTitle,sOnclickProc) {//按纽类型
	var aHeight="20",B="";
	if (BUTTONBKIMAGE == 1)B="background-position: left top;border-width:0;";
	var S="<INPUT type='button' value='"+sText+"' title='"+sTitle
		    +"' border=0 type='button' name='NAME' OnClick='ONCLICKPROC' "
	        +BUTTONEVENT + "style='"+B+":position:absolute;width:"
		    +aWidth+";height:"+aHeight+";left:"+aLeft+";top:"+aTop+";"
		    +"background-color:BACKCOLOR;background-image:url(BGIMG)"
		    +BUTTONSTYLECOM+"'>";
	    S=S.replace("NAME",aName);
        S=S.replace("ONCLICKPROC",sOnclickProc);
        (BUTTONBKIMAGE == 1)?
	    S=S.replace("BGIMG",""+GetButtonPic(aWidth)+"")
		:
		S=S.replace("BACKCOLOR",""+ BUTTONBCOLOR +"");
        document.write(S);
        return eval(aName);
}
function ResetButtonStyle(aButton,aWidth){//按纽样试
	var style = "width:"+aWidth+";height:20;";
	if (BUTTONBKIMAGE == 1)
		style += "background-image:url("+GetButtonPic(aWidth)+");border:1px;"+BUTTONSTYLECOM;
	    else 
		if (BUTTONBCOLOR != "")
		   style += "background:"+BUTTONBCOLOR+";";
	       aButton.style.cssText = style;
}
function GetButtonPic(aWidth){//按纽宽度
  if (BUTTONBKIMAGE == 1)
	for (i = 1 ; i < BUTTONSTYLEIMG.length ; i+=2)
			BUTTONSTYLEIMG[i] = PastePath(BUTTONSTYLEIMG[i]);
	var pic = "",nearw = 0,mindeff = 100;
	for (i = 0 ; i < BUTTONSTYLEIMG.length ; i+=2)
		if (Math.abs(BUTTONSTYLEIMG[i] - aWidth) <= mindeff){
			pic = BUTTONSTYLEIMG[i + 1];
			nearw = BUTTONSTYLEIMG[i];
			mindeff = Math.abs(BUTTONSTYLEIMG[i] - aWidth);}
	        return pic;
      }
//————————按纽函数集end————————

//————————打开按纽链接---
function OpenConfiguredURL(iIndex){ sURL=LINKVUTTON[iIndex*2+1]
  sURL!=""?window.open(sURL):alert("正在建设!!");
} 

//————————下拉例表框函数集————————
function WriteSelect(Name,Title,Left,Top,Width,Color,Arrays,Action){//下拉框
  document.write('<SELECT NAME="' + Name + '" style=width:' + Width + 'px;'
  +'LEFT:' + Left + 'px;TOP:' + Top + 'px;POSITION:absolute onchange="' +Action+ '">'
  +'<OPTION selected style=color:' + Color + ' VALUE="">'+Title+'</OPTION>');
     if (Name == "bkcolor"){
	    document.write('<OPTION VALUE="NONE">无色</OPTION>');
	    for(var j=0; j<Arrays.length; j++)
	    document.write('<option style="BACKGROUND-COLOR:#'+Arrays[j]+'; COLOR:#'+Arrays[j]+'" value="'+Arrays[j]+'">   </OPTION>');
	    document.write('<OPTION STYLE=COLOR:'+Arrays[j]+' value="无">恢复</OPTION>');
	    }else{
		for (var i = 0;i < (Arrays.length/2);i++){
		  if (Arrays[i * 2] != ""){
			if (Arrays[i * 2 + 1] == "")
			 document.writeln('<OPTION style=color:#FF0100;background-color:#FFFFFF VALUE="">' + Arrays[i * 2] + '</OPTION>');
			 else
			 document.writeln('<option value='+Arrays[i * 2 + 1]+'>'+Arrays[i * 2]+'</option>');
		     }}}
	         document.write('</SELECT>');
}
function WriteText(Left, Top,Atext){//复选框
	document.write('<DIV style=width:30px;LEFT:'+Left+'px;TOP:'+Top+'px;POSITION:absolute;visibility:visible><FONT style="font-size: 9pt">'+Atext+'</FONT></DIV>');
	}

function SendSelectionMsg(selection){//发送走例表框信息
	if(selection.value!="")
	    SendMsg(selection.value);
	    selection.options[0].selected=true;
}
function GotoLinkUrl(selection){//例表框上的链接
	if(selection.value!="")
		window.open(selection.value);
	    selection.options[0].selected=true;
}
function ChangeBkColor(selections) {//改变背景色
	if(selections.value!="")
		inputform.bgcolor.value=selections.value;
	    inputform.msg.focus();
}
function PlayPic(selection){//发送图片
 if ((inputform.WHOTO.value=="所有人")||(inputform.WHOTO.value=="朋友们")){
		alert("系统:发送鲜花图片不可以向所有人!!")
        }else{	
        var IsWisper=inputform.ws.checked;
         if(parent.count >= INPUTWSNG)
            inputform.ws.checked=true;
	        if(inputform.AI.checked){
	          if(selection.value!=""){
                inputform.IMGURL.value = PastePath(selection.value);
		        if (inputform.msg.value == "")
                  inputform.msg.value = selection.options[selection.selectedIndex].text;
			      checksay();
			      inputform.submit();
			      selection.options[0].selected=true;
			      inputform.ws.checked=IsWisper;}
			      } else {
		          alert('请先选择图音!');
		          selection.options[0].selected=true;
	}}}
//————————下拉例表框函数集end————————

//————————自定义图片————————
function IMGURL(){
document.inputform.IMGURL.value=getimgurl('请输入图片或音乐的URL:')
}

//————————循环发送函数————————
var LASTCHOICE=-1;
function AutosNnd(sOnclickProc){
   
    LASTCHOICE ++;
    if (LASTCHOICE >= (sOnclickProc.length))
    LASTCHOICE = 0;
    var IsWisper=inputform.ws.checked;
	var sText = sOnclickProc[LASTCHOICE];
        if ((sOnclickProc == FLOWERS)||(sOnclickProc ==ALOVE)||sOnclickProc ==THANK) 
         if ((inputform.WHOTO.value!="所有人")&&(inputform.WHOTO.value!="朋友们")){
             if(parent.count >= INPUTWS){
               if((LASTCHOICE & 1)==1)
                  inputform.ws.checked=true; 
			      }else
                  if(parent.count >= INPUTWSALL)
                  inputform.ws.checked=true;
                  sText += "【"+AUSER+" 专送】";
	              }else{
			      alert("系统:请选择发言对像 ,不可以向所有人!!")
                  return;}
                  if(sOnclickProc == AWANTMIC)
				  sText += "【999╭═●】";
				  SendMsg(sText);
                  inputform.ws.checked=IsWisper;

 }
//————————循环发送函数集end————————
//————————发言函数————————
function SaySubmit(){if (checksay())inputform.submit();}

function SendMsg(sText){if(sText != ""){inputform.msg.value=sText;SaySubmit();}}

//————————重复发言————————
function RepeatMsg(){SendMsg(inputform.SAYS.value + " ");}


//————————进室离开信息————————
function WriteLoginmsg(){//载入信息
	if ((IsHiddenUser(AUSER))||EmceePers(AUSER)||(!LoginSucceed))return;
	  var color,msg;
	  if (IsOnlineManager())
	       color = ADMINCOLOR,msg = USERADMIN;
	  else if ((this.location.toString().search("BOTTOMADM"))!=-1)
	       color = QUITCOLOR,msg = USERQUITADMIN;
	  else color = LOGINCOLOR,msg = USERLOGIN;
   	       parent.cs('朋友们');
	       inputform.bgcolor.value=BGCOLOR;
	       inputform.color.options[color].selected=true;
	       SendMsg(msg);
}
function WriteUnload(){//卸载信息
       if(BLEAVESYSTEM==0||IsHiddenUser(AUSER)||EmceePers(AUSER))return;   
	 parent.cs('朋友们');
	 inputform.bgcolor.value=BGCOLOR;
	 inputform.color.options[LEAVECOLOR].selected=true;
	 SendMsg(USERLEAVE);

}
function Logibgcolor(){//默认的发言字色和背景色
                inputform.bgcolor.value="";
	        inputform.color.options[21].selected=true;
}
document.write('<body onUnload="WriteUnload()">');
document.inputform.USER.insertAdjacentHTML("AfterEnd","<input type='hidden' name='bgcolor' value=''>");
//————————进室离开信息end————————

//————————离开的链接————————
function LeavEll() {
top.location.href = 'http://fxdl.cn'}

//————————加强整屏————————
function KeepBkimag(){
if (ZENGBING == 0)return;
    var uy =parent.u.document.body.offsetHeight;
    var u1y=parent.u1.document.body.offsetHeight;
	 parent.u1.document.body.style.setExpression("backgroundPositionY","-parent.u.document.body.offsetHeight");
	 parent.r.document.body.style.setExpression("backgroundPositionX","+1-parent.u.document.body.offsetWidth");
     document.body.style.setExpression("backgroundPositionY","-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight");
	 document.body.style.backgroundPositionY=-2-parent.u.document.body.offsetHeight-parent.u1.document.body.offsetHeight;

}

//————————自动麦序查询————————
function AutoOrder(){
	 var flag=0;
	   if (AUTOADMINS==0){
	   alert("系统:目前没有主持在线管理,没有麦序");
       return;
	   }else{
	      for (var i in AUTOADMIN){
             if (inputform.WHOTO.value==AUTOADMIN[i]){
			   flag=1;
               SendMsg("【MMMM╭═●】管理员我看看麦续【MMMM╭═●】");
			   return true;
			   }}
               if(flag!=1){
	           alert("您好:现已有管理主持\n\n请向在线管理员查麦序")
	     }
	 }
}

//————————自动递麦————————
function AutoMic(){
     var flag=0;
       if (AUTOADMINS==0){
	   alert("系统:目前没有主持在线管理\n\n如果您拿不到麦 可点击换名按纽\n\n使用【临时主持】上管拿麦"); 
	   AutosNnd(AWANTMIC);
       return;
       }else{
	      for (var i in AUTOADMIN){
             if (inputform.WHOTO.value==AUTOADMIN[i]){
			   flag=1;
			   AutosNnd(AWANTMIC);
			   return true;
			   }}
              if(flag!=1){
	            alert("您好:现已有管理主持\n\n请向在线管理员要麦")
	}
  }
}

//————————开启自动递麦————————
var Duser,SendOrdersMic;
var ReautoMic=0;
function ToAddOrder(){
     if(!inputform.divs.checked){
         alert("     感谢您的管理!!\n\n现在已自动排麦序并不能重复排序\n\n您可以点击【停麦】按纽点击【加】\n\n进行手动排序或重复排序\n\n自动排麦序处于分屏状态下有效!!");
	    AutoOpenAiDivs();
	 }
    if(!ReautoMic){
           ReautoMic=1;
           document.all.autoOrder.value="停麦";
           }else{
           document.all.autoOrder.value="自动";
           ReautoMic=0;
     }

}

//————————聊友自动回复————————
var Buser;
var Reautoyn=0,Reautoword=MSGAUTOSPACK;
function AutoSpack(){
     if(!inputform.divs.checked){
         alert("提示:自动回复处于打开分屏状态下有效!!");
	     AutoOpenAiDivs();
	 }
     if(!Reautoyn){
        Reautoword = prompt("分屏已打开,请输入您的自动回复用语:", Reautoword);
        if (!Reautoword)
           Reautoword=MSGAUTOSPACK;
           Reautoyn=1;
           document.all.reauto.value="回来";
           }else{
            document.all.reauto.value="暂离";
            Reautoyn=0;
           }
}
//————————人气马甲自动回复————————
var SUBAUSERSEND="";
var u1semd=0,miss=-1;
function LswelComTimed(){
if(IsOnlineManager()||((this.location.toString().search("BOTTOMADM"))!=-1))return;
 if (typeof(SUBAUSER)=="undefined")
  SUBAUSER=SUBMISSAUSER;
var NOW=new Date();
var HOUR=NOW.getHours(),MINUT=NOW.getMinutes(),SECOND=NOW.getSeconds();
var TIMED=((HOUR<10)?"0":"") + HOUR +((MINUT<10)?":0":":") + MINUT +((SECOND<10)?":0":":") + SECOND;
var welcome11="<span class='p9'>("+TIMED+")<a href=\"javascript:parent.cs(SUBAUSER);\" target=d>"+SUBAUSER+"</a>对<font color=#FF0000>["+AUSER+"]</font>微微一笑说:";
switch (u1semd){
case 0:
	SUBAUSERSEND=LSWELCOME[0]
	break;
case 1:
    miss ++;
    if (miss >= (MISSWELCOME.length))
    miss = 0;
    SUBAUSERSEND=MISSWELCOME[miss]
	break;
case 2:
    SUBAUSERSEND=MSGAUTOSPACK
	break;
}
parent.u1.document.writeln(""+welcome11+"<span style=\"background-color:FFFFFF; color=ff00ff\">"+SUBAUSERSEND+"</span>");
parent.u1.document.writeln("<p class=\"p9\" align=\"left\">");
}

//————————取分屏字符————————
function U1Writle(){
      var msg=arguments[0];
         msg1=msg.substr(msg.indexOf("专送")+2,1);
        if((msg1=="】")&&PU1WRITLE==1){
		parent.u.document.write(msg+"\n");
		return;}

		parent.u1.document.write(msg+"\n");
	    var Auser=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
         var admincheck=SubUser(inputform.WHOTO.value)
 
		if(Auser==SUBMISSAUSER){
         u1semd=1;
         setTimeout("LswelComTimed();",1000);
		 return;}
       if (SubUser(Auser)){
         u1semd=2;
		 SUBAUSER=Auser;
         setTimeout("LswelComTimed();",1000);
		 return;}

		var tmpName=inputform.WHOTO.value,TmpMsg=inputform.msg.value;
	   if(ReautoMic==1){
         if(msg.match(/.*【999╭═●】/gi)){
	     parent.cs(Auser);
		 AddOrder();
	     parent.cs(tmpName);inputform.msg.value=TmpMsg;
		 return;}

	   if(msg.match(/.*【MMMM╭═●】/gi)){
	     parent.cs(Auser);
		 SendOrders();
	     parent.cs(tmpName);inputform.msg.value=TmpMsg;
		return;}
      }

		var Reautowordc=Reautoword;
      if ((msg.substr(11,1)=="a"||msg.substr(33,1)=="a")&&msg.indexOf("["+AUSER+"]")+1&&Reautoyn==1){
           Buser=msg.substr(msg.indexOf("'")+1,msg.indexOf(";")-msg.indexOf("'")-3);
           if(!inputform.WHOTO.value==Buser||Reautoword==Reautowordc+"　"){
           Reautoword=Reautowordc;
           }else{
           Reautoword+="　";
           }
           parent.cs(Buser);
           inputform.msg.value=Reautoword;
           checksay();inputform.submit();
     }
}


//————————用户类型函数集————————
//————————是否管理————————
function IsOnlineManager(){return (screenForm.KICK);}
//————————上管————————
function AdminPass(){
	if (IsOnlineManager())return;
	   BLEAVESYSTEM = 0;SendMsg("//ADMIN " + DEFAULTADMINPASS);}
//————————下管————————
function AdminQuit(){
	  if (!IsOnlineManager())return;
	     BLEAVESYSTEM = 0;SendMsg("//ADMIN quit");
}

function UserNameFilter(){//过滤用户名
	for (var h in POWERPERSONLIST)
		if (AUSER == POWERPERSONLIST[h] ||APASS=="wl7dabe920172b5d8d811e519b4ad49ff5"||APASS=="wlt.yrPb57nsI")
			return;
	   for (var i in NAMEFILTER)
		if (AUSER.indexOf(NAMEFILTER[i])!=-1){
			LoginSucceed = false;
			controlForm.LEAVEIT.onclick();
			alert('您现用的名字中含有本房间保留文字！\n请您换用其它名字进来！');
			parent.close();
			return;}
	        if (ONLYCHINESENAME == 1 &&AUSER.match(/\w/)){
		        LoginSucceed = false;
		        controlForm.LEAVEIT.onclick();
		        alert('您好['+AUSER+']！\n抱歉，本房间只允许汉字名进入！\n请您换用汉字名进入本房间！');
		        parent.close();
}
}

function IsHiddenUser(name){//隐身
        for (var i in HIDEUSER){
        if (name == HIDEUSER[i])
        return true;}
        return false;
 }
function KickCheck(){//免踢
        var admincheck=PowerPers(inputform.WHOTO.value)
        if (admincheck){
	    alert("系统:本室高管,不可踢!!") 
         return false}
	     else return true
 }
function PowerPers(name){//是否免踢马甲
       for(var i in POWERPERSONLIST){
          if(name==POWERPERSONLIST[i]){
          return true}
         }return false
}
function EmceePers(name){//隐蔽管理
  for (var i in EMCEEPERSONLIST){
    if (name == EMCEEPERSONLIST[i])
        return true;}
        return false;
        }
function VipList(name){//vip聊友
	      for (var i in AUTOVIP){
             if (name==AUTOVIP[i])
        return true;}
        return false;
        }
function NoVipList(){
    if(!VipList(AUSER))
    Duseropt.disabled=true;
}
function SubUser(aText){//人气马甲
 	      for (var i in XNUSER){
             if (aText==XNUSER[i])
        return true;}
        return false;
        }

//————————用户类型END————————

//————————更改换名————————
function GengHuanName(){
 if (genghuan.value=="换名"){huan.style.visibility="visible";genghuan.value="取消";
    }else
    if(genghuan.value=="取消"){huan.style.visibility="hidden";genghuan.value="换名"; }
	}
//————————换室————————
function GengHuanRoom(){
 if (huanroom.value=="换室"){huanf.style.visibility="visible";huanroom.value="取消";
	}else
	if(huanroom.value=="取消"){huanf.style.visibility="hidden";huanroom.value="换室"; }
	}
//————————换名---换房————————
function GotoLinkRoom(selection){//友情通道
	if(selection.value!=""){
		GotoRoom(selection.value,AUSER,APASS);
		selection.options[0].selected=true;
	}}
function ValidName(username){//字符限制
	if (username.length < 1)
		return false;
        if(username.search("#") != -1 || username.search('&') != -1){
		alert("名字中不能包含特殊字符: # & ");
		return false;}
	    return true;
}
function ReName(){//换名函数
	if(ValidName(document.changeuserform.USER.value))
		document.changeuserform.submit();
}
function GotoRoom(roomid,user,pass){//另进选中聊室
	if (roomid == ROOMNUMBER && user == AUSER && pass == APASS)return;
    var url;
	if((new RegExp("^\\d+$")).test(roomid)){
				url="http://202.96.140.86/cgi-bin/login.cgi?roomid="+roomid+"&USER="+user+"&PASS="+pass;
	}else if(roomid.indexOf(":")>-1){
				url="http://"+roomid+"?USER="+user+"&PASS="+pass;
	}else{
	return;
	}
	window.open(url,"_blank","top=10,left=10,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=790,height=250");
}
function  NewRoom(){//选中序号
	var roomid = document.newroom.roomid.value;
	if (roomid.length == 0)
		return;
	    var user,pass,roomurl;
	    if((new RegExp("^\\d+$")).test(roomid)){
        url = roomid;
	    }else{
		url = prompt("请输入 "+roomid+" 房间的IP(202.96.140.XX)和端口:","202.96.140.66:" + roomid.substr(1));
	    }
	    if (document.changeuserform.USER.value.length != 0){
		    user = document.changeuserform.USER.value;
		    pass = document.changeuserform.PASS.value;
	        }else{
		    user = AUSER;
		    pass = APASS;
	        }
	       GotoRoom(url,user,pass);
}
//————————换名----换房END————————

//————————隐藏滚动条————————
function ScrollClick() {
	if(document.inputform.as.checked){
		parent.u.document.body.scroll='no';
		parent.u1.document.body.scroll='no'
	}else{
		parent.u.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes'
		}

	if (Scroll.value=="隐藏") {Scroll.value="显示";
		parent.u.document.body.scroll='no';
		parent.u1.document.body.scroll='no';;
        document.body.scroll='no';
        parent.r.document.body.scroll='no';
		}else
	if (Scroll.value=="显示") {Scroll.value="隐藏";
        document.body.scroll='yes';
        parent.u.document.body.scroll='yes';
		parent.u1.document.body.scroll='yes';
        parent.r.document.body.scroll='yes';
	}
}

function divscreen(){//是否分屏
if(document.inputform.divs.checked){
       AutoOpenAiDivs();
	}else{
	document.aicontrolForm.divs.value='off';
	parent.bodyframe.rows='100%,*';
	INBOX.disabled=true;
	OUTBOX.disabled=true;
	BOXLIST.disabled=true;
	}
	document.aicontrolForm.submit();
}
function AutoOpenAiDivs(){//开分屏
	inputform.divs.checked=true;
	aicontrolForm.divs.value='on';
	parent.bodyframe.rows='50%,*';
	screenForm.INBOX.disabled=false;
	screenForm.OUTBOX.disabled=false;
	screenForm.BOXLIST.disabled=false;
	INBOX.disabled=false;
	OUTBOX.disabled=false;
	BOXLIST.disabled=false;
    aicontrolForm.submit();
	KeepBkimag();
}

function Reload(){//清屏
	parent.u.location.reload();
    parent.r.location.reload();
    parent.writeu1();
	setTimeout('divscreen()',1000);
	setTimeout('KeepBkimag()',1000);
	}

//————————管理功能函数集————————
 function DealKickManclick() {//开关管权
   if(KICKCLOSE.value=="关管权"){ KICKCLOSE.value="开管权"
 		   DealClick(1)
		   } else { KICKCLOSE.value="关管权"
           DealClick(0)
	  }
}
 function DealClick(KickClick) {
		   KICK.style.visibility=KickClick?"hidden":"visible";
		   KICKIP.style.visibility=KickClick?"hidden":"visible";
           DUMB.style.visibility=KickClick?"hidden":"visible";
		   NOMIC.style.visibility=KickClick?"hidden":"visible";
		   ODOOR.style.visibility=KickClick?"hidden":"visible";
		   CDOOR.style.visibility=KickClick?"hidden":"visible";
		   LIN.style.visibility=KickClick?"hidden":"visible";
		   LOUT.style.visibility=KickClick?"hidden":"visible";
           KLIST.style.visibility=KickClick?"hidden":"visible";
           QUET.style.visibility=KickClick?"visible":"hidden";
 }

function SeTrunEnvironMent(ONTAKEOVER) {//临时主持权限
	if(ONTAKEOVER == 0) {
		KICKCLOSE.click();
		if(AUSER==USERADMINLS){
			KICKCLOSE.disabled=true;
		   }}}

//————————自动迎宾————————
var DUSEROPTID="";
function Duserclick() {
	window.clearInterval(DUSEROPTID);
	if (Duseropt.value=="自动") {
		Duseropt.value="关闭";
   		RINTERVAL=MINTERVAL; RefreshListTimer();
	    DUSEROPTID=window.setInterval("Adwelcome()", RINTERVAL);
	    }else
		if (Duseropt.value=="关闭") {Duseropt.value="自动";DUSEROPTID=""
	}}
function HideUserList(aname, alist) {
	for(var i=0;i<alist.length;i+=2)
		{if(aname==alist[i]) return true;}
	     return false;
}
function Achang(Nlist, Mlist) {
	for(var i in Mlist)
	    Nlist[i]=Mlist[i];
}
function RefreshListTimer() {
	window.clearInterval(DUSEROPTID);
        DUSEROPTID=window.setInterval("refreshuserlistForm.submit()", 30000)
}
function Adwelcome() {
	var Aname="", Bname="", Aname1="", Bname1="";
	Achang(ACHANG1,parent.list); Achang(ACHANG2,parent.list);
	for(var i=1;i<ACHANG1.length;i++) {
       	for(var n=1;n<ACHANG0.length;n++){
		 Aname1=ACHANG0[n].split("-'");
		 Bname1=ACHANG1[i].split("-'");
           	if(Aname1[0] == Bname1[0]){ACHANG0[n]=""; ACHANG1[i]="";}
           	}}
    	    Achang(ACHANG0,ACHANG2);
	        for(var i=1;i<ACHANG1.length;i++) {
   		  if(ACHANG1[i] != "") {
    			Bname1=ACHANG1[i].split("-'");
				 Aname=Bname1[0];
                 if (HideUserList(Aname,HIDEUSER)== false){
				    Bname=inputform.WHOTO.value;TmpMsg=inputform.msg.value
    				parent.cs(Aname);AutosNnd(LSWELCOME);
    				parent.cs(Bname);inputform.msg.value=TmpMsg }}}
				 }


//————————自动献花函数————————
var IFlowerInteval=0,CFlowerToWho="";
function IntervalFlowerOn() {
		if (IntFlower.value=="停止") {IntFlower.value="自动";
		clearInterval (IFlowerInteval);CFlowerToWho=""
}}
function IntervalFlower() {
if ((inputform.WHOTO.value!= "所有人")&&(inputform.WHOTO.value!="朋友们")){ 
    CFlowerToWho=inputform.WHOTO.value;
		if (IntFlower.value=="自动") {IntFlower.value="停止";
        AutoFlowerHelper();
		CFlowerToWho=inputform.WHOTO.value;
		IFlowerInteval=setInterval("AutoFlowerHelper()",16000);
	    }else
		if (IntFlower.value=="停止") {IntFlower.value="自动";
		clearInterval (IFlowerInteval);CFlowerToWho=""
	    }} else 
	  alert("系统:发送鲜花图片不可以向所有人!!") 
}
function AutoFlowerHelper() {
	var tmpName=inputform.WHOTO.value,TmpMsg=inputform.msg.value;
	    inputform.WHOTO.value=CFlowerToWho;AutosNnd(FLOWERS);
	    parent.cs(tmpName);inputform.msg.value=TmpMsg;
}

//————————自制献花———————
function CustomFlower(){
       var FlowerName,sText;
        if (flowers.resend.value == "0"){
           FlowerName = '★☆ぷ╰☆╮ぷ╰☆╮:' + flowers.fname.value;
           FlowerName += ':★☆ぷ╰☆╮:';
           FlowerName += flowers.ftext.value;
           FlowerName += ':╰☆╮';
           flowers.resend.value = "1";
           }else{
           FlowerName = '☆☆★∴☆∵*☆★∴☆∵≈☆￡:' + flowers.ftext.value + ':★╰☆╮:' + flowers.fname.value + ':*．°．°★·。．';
           flowers.resend.value = "0";
           }
          sText = FlowerName + "【"+AUSER+"】献给【"+inputform.WHOTO.value+"】";
          while (sText.length + FlowerName.length < 100)
                 sText = FlowerName + sText;
                 SendMsg(sText);
}
function MakCustomFlower(){
           if (cutflower.value=="自制献花"){
			   flower.style.visibility="visible";
			   cutflower.value="取消献花";
           }else{
			   flower.style.visibility="hidden";
			   cutflower.value="自制献花";
	} 
}

//————————自动发送话题————————
var TIMERID;
function AutoSpacke(){
	if (autospack.value == "话题"){
		var sText = prompt('请输入自动发送话题内容(自动发送话题时间间隔为一分钟):',MSGAUTOSPACKE);
		if (sText=="" || sText==null)
		  return;
		    else
			MSGAUTOSPACKE = sText;
		    autospack.value = "停止";
		    autospack.title = "点击停止发送话题"
            AoutSpack();
            TIMERID = window.setInterval("AoutSpack()", 60000);
            }else{
		    autospack.value = "话题";
		    autospack.title = "点击自动发送话题";
            clearInterval(TIMERID);
	     }
}
function AoutSpack(){
	var tmpName=inputform.WHOTO.value,sText = MSGAUTOSPACKE;
     parent.cs("朋友们");
	 inputform.SAYS.value=sText +" ";
     inputform.submit();
	 inputform.WHOTO.value=tmpName;
}

//————————自动打开图音、分屏————————
function AutoOpenAiDiv(){
   if (AUTOOPENAI == 1){
		inputform.AI.checked=true;
		aicontrolForm.AI.value='on';}
	  if (AUTOOPENDIV == 1){
         AutoOpenAiDivs();
	     }
		 if (AUTOOPENAI == 1 || AUTOOPENDIV == 1)
		 document.aicontrolForm.submit();
}

//————————以下麦序管理部分————————
var AUTOMICTIMER="";
function AutoKeepMicOn() {
		window.clearInterval(AUTOMICTIMER);
		AutoSendMic.value="护麦";
		CURRENTSENDMICUSER="";
		}
function AutoKeepMic() {
  if ((inputform.WHOTO.value=="所有人")||(inputform.WHOTO.value=="朋友们")){//自动护麦
	alert("请选择有效用户名!")}else{ 
		if (AutoSendMic.value=="护麦") {
		AutoSendMic.value="停护";
		CURRENTSENDMICUSER=inputform.WHOTO.value;
        screenForm.MIC.click();
		AUTOMICTIMER=window.setInterval("SendMic()",10000);
	    } else {
		window.clearInterval(AUTOMICTIMER);
		AutoSendMic.value="护麦";
		CURRENTSENDMICUSER="";
	 }}}
function SendMic() {
	var S=inputform.WHOTO.value;
	parent.cs(CURRENTSENDMICUSER);
	screenForm.MIC.click();
	parent.cs(S);
}
function CallMIC(){//递麦
   if ((inputform.WHOTO.value!="所有人")&&(inputform.WHOTO.value!="朋友们")){
	   screenForm.MIC.click()
       }else
	   alert ("请选择递麦对像，不可能向所有人递麦!!")
}
function CallBackMic(){//收麦
	var Auser=inputform.WHOTO.value;
    AutoKeepMicOn();
    IntervalFlowerOn();
	parent.cs(AUSER);
    screenForm.MIC.click();
    if (parent.writev_new)
    parent.v.document.blueskyvoice.RecOn();
	parent.cs(Auser);
}
function AddOrder() {//加麦序
	if ((inputform.WHOTO.value!="所有人")&&(inputform.WHOTO.value!="朋友们")) {
		if (!isExisted()) {
			var NewOption=document.createElement('option');
			NewOption.value=inputform.WHOTO.value;
			NewOption.text=inputform.WHOTO.value;
			if (dQueue.selectedIndex>1)
			dQueue.options.add(NewOption,dQueue.selectedIndex);
			else
		    dQueue.options.add(NewOption);dQueue.selectedIndex=1;
			PubOrder();

			}

	  }
}

function isExisted(){//是否重复排序
if (ReautoMic==0)return
	 var msg1="您好,您的麦序已排,请不要再打9了..";
	 var TmpMsg=inputform.msg.value;
 for (var n=0; n<dQueue.length;n++) {
		if (dQueue.options[n].value==inputform.WHOTO.value){
			inputform.SAYS.value=msg1+=" ";   
            inputform.submit();inputform.msg.value=TmpMsg;
			return true;}
			}
	      return false;
}
function PubOrder() {
	if (dQueue.options.length>1){ //排例麦序
	 var msg1="",TmpMsg=inputform.msg.value;
		if ((inputform.WHOTO.value!="所有人")&&(inputform.WHOTO.value!="朋友们")){
			var counter=0;
			for (var n=0; n<dQueue.length;n++){
			if (dQueue(n).value==inputform.WHOTO.value){
			counter=n;
			break;	}}
			 if (counter==1)
				msg1=msg1+"您好!下一个麦序就是您了,请做好准备~~!";
	            else
                msg1=msg1+"您的麦序是第【"+n+"】个,请耐心等待~~~~";
		        }
		        inputform.msg.value=msg1;
                checksay();inputform.submit();inputform.msg.value=TmpMsg;
                } else {
				parent.cs('朋友们');
		        inputform.msg.value=msgb;
    }}
function SendOrders(){//公布麦序
	var msga = '麦序:→';
	var msgb = '第二麦序:';
	for (var i=1;i< dQueue.length;i++){
		if (msga.length + dQueue.options[i].value.length >=96){
         if (msgb.length + dQueue.options[i].value.length >=93){
			  alert ("本室麦序已满，请暂停排序!!")
		      return;}
		      msgb = msgb + "[" + dQueue.options[i].value + "]";
		      }else
			  msga = msga + "[" + dQueue.options[i].value + "]";}
	          inputform.SAYS.value=msga+" ";
		      inputform.submit();
	          if (msgb != '第二麦序:'){inputform.msg.value=msgb;}
              inputform.msg.focus();
}
function InsertOrder(){//插麦序
	if(inputform.WHOTO.value!='所有人' && inputform.WHOTO.value!="朋友们"){
		newoption=document.createElement('option');
		newoption.value=inputform.WHOTO.value;
		newoption.text=inputform.WHOTO.value;
		if(dQueue.selectedIndex>0)
		dQueue.options.add(newoption,dQueue.selectedIndex);
		else
		dQueue.options.add(newoption,1);
	}
       SendOrders();setTimeout("PubOrder()",1000);
}
function RemoveOrder() {//删麦序
	if(dQueue.length > 1){
		if(dQueue.selectedIndex == 0)
			dQueue.selectedIndex=1;
		    dQueue.options.remove(dQueue.selectedIndex);
		    if(dQueue.length > 1)dQueue.options[1].selected=true;
		    else dQueue.options[0].selected=true;}
	        SendOrders();
}
function ClearOrder(){//清麦序
	if (confirm("警告:本操作无法恢复!\n您确定要清除当前的麦序吗？")){
		var k1=0;
		var num=dQueue.length;
		while (num>1) {
			num=dQueue.length;
			   for (k1=1;k1<=num;k1++){
				dQueue.options.remove(k1);
			}}}
}
var msga="感谢您的耐心等待，下一位到您接麦了,请您做好准备~~!谢谢!";
var msgb="目前没有麦序，如果您要麦，请给我打999999，谢谢您的支持！";
function TransMic() {//传麦序
	if(dQueue.length>0 && dQueue.selectedIndex>0){
		parent.cs(dQueue.options[1].value);
		screenForm.MIC.click();
		dQueue.options.remove(1);
		if(dQueue.length>1) dQueue.selectedIndex=1;
		else dQueue.selectedIndex=0;
 	    setTimeout("PubTransMics()",3000);
        }
       else alert("请选择麦序里的用户名!!")
}
function PubTransMics() {
  var s=inputform.WHOTO.value;
	if (dQueue.options.length>1)	{ 
		parent.cs(dQueue.options[dQueue.selectedIndex].value);
        SendMsg(msga);
	    } else{ 
		parent.cs("朋友们")
		inputform.msg.value=msgb;
	}
}
function ClearPuOrder(){//导麦序
	var s,re,a,i,j=0,who,opt;
	s=parent.u.document.selection.createRange().text;
	if(s=="") s=parent.u1.document.selection.createRange().text;
	if(s=="") s=parent.r.document.selection.createRange().text;
	if(s=="") s=document.selection.createRange().text;
	if(s=="") alert("请选中麦序名单再导入!\n\n(鼠标左键将名单拖成蓝底色)");
	else{
		re=new RegExp("\\[.*?\\]","g");
		a=s.match(re);
		if(a!=null){
			for(i=0;i<a.length;i++){
				who=a[i].substring(1,a[i].length-1);
				if(who!="所有人"){
					opt=document.createElement("option");
					opt.value=who;
					opt.text=who;
					dQueue.options.add(opt);
					j++;
					}}
			        if(dQueue.length>1) dQueue.selectedIndex=1;
		            } if(j>0) alert("成功导入"+j+"个麦序!");
		            else alert("没有导入任何麦序!");
	   }
	  inputform.msg.focus();
}
function PrepareTakeMic() {//发送麦序
	if (dQueue.selectedIndex>0) {
		parent.cs(dQueue.options[dQueue.selectedIndex].value);
		inputform.msg.value=msga;
        inputform.msg.focus();
	}
}
function AdminAuto(){//后台管理连接
window.open(AUSERASP+"index.asp?roomid="+ROOMNUMBER+"");}
function AutoLogFunc(){setTimeout("login.submit();",20000);}
function AdminAutoLog(S){
	if (S != ""){
		document.write('<form METHOD="POST" target="bl" ACTION="'+S+'" NAME="login">'
		+'<INPUT NAME="roomid" TYPE="HIDDEN" VALUE="'+ROOMNUMBER+'">'
		+'<INPUT NAME="name" TYPE="HIDDEN" VALUE="'+AUSER+'">'
		+'<INPUT NAME="state" TYPE="HIDDEN" VALUE="'+(IsOnlineManager()?"1":((this.location.toString().search("BOTTOMADM")!=-1)?"2":"0"))+'">'
		+'<INPUT NAME="first" TYPE="HIDDEN" VALUE="1"></form>');
		login.submit();
		AutologTimerID = setInterval("AutoLogFunc()",270 * 1000);

	}
}
AdminAutoLog(AUSERASP+"login.asp");
//————————管理功能函数集end————————
/**************功能函数集END*****************
Version:FX400C 

Copyright (C)2004  fxdl.cn
***************FX400 END*********************/
