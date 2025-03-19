var vers = "1.043"; // 配置版本号
var config_style = 0; // 配置的风格

var room_owner="*潇龍"; // 室主名称
var room_name="江南烟雨"; // 房间名称
var room_number="2179"; // 房间号码

var black_roomname=""; // 双工房间名称
var black_roomnumb=""; // 双工房间号码

// 图片等的存放位置，所有没有指定完全网址（http://.....）的图片都到此网址下寻找，但不包括下拉列表框。
var config_place = "http://aylm.ik8.com/aylm/image/";
// 上管记录地址
var guan_record = "";
// 进门自动播放音乐的地址，没有就设置为空
var auto_player = "";
// 聊友列表区上方的房间名称，可设为图片，只要用HTML代码就可以
var userlist_top_html ="<img src=http://pic.liaowan.com/sb/2045.gif>";
// 聊友列表下面的文字，如果不需要，请设置为空串
var userlist_bottom_html = "<p align='center' class='p9'><font color=#009900 >"+room_name+"欢迎您</font><br><tr><td colspan=3 align=center><table ><tr><td  colspan=3 width='103' align='center'><span style='font-size: 8.7pt;COLOR:red'><marquee direction=up height=70 onmouseout='this.start()' onmouseover=this.stop() scrollAmount=1 width=120 

var msg_bkimage = ""; // 大屏背景图片
var full_screen = 1; // 是否使用整幅背景，0不使用，1使用（使用大屏背景）
var def_textcolor = 4; // 默认的发言文字色,从1号到16号
var def_bgcolor = ""; // 默认的发言文字背景色

var div_screen_bkcolor = "fff6ea"; // 分屏区背景色
var div_screen_bkimage = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg"; // 分屏背景图片 
var div_msg_color1 = "#8800FF"; // 分屏公告颜色
var div_msg_color2 = "#FF0000"; // 分屏公告颜色

var list_user_color = "8800FF"; // 列表区字色
var userlist_bkcolor = "#D4F6DC"; // 列表区背景色
var userlist_bkimage = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg"; // 列表区的背景图

var voice_bkcolor = "#D4F6DC"; // 语音区背景色
var voice_bkimage = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg"; // 语音区的背景图
var voice_openimg = "http://www.cnjwedu.net/~lscf//832980/8889211.jpg"; // 打开语音后下部背景图

var body_text_color = "#660099"; // 输入区文字色
var input_bkcolor = "#D4F6DC"; // 输入区背景色
var input_bkimage = ""; // 输入区背景图片
var select_text_color = "#CC4499"; // 输入区列表框文字色
var select_bkg_color = "#EEEEFF"; // 输入区列表框背景色
var sel_txt_color = "#FF0100"; // 输入区列表框说明文字颜色
var sel_bkg_color = "#CCFFFF"; // 输入区列表框说明背景颜色
var button_t_color = "#000088"; // 输入区按钮文字色
var button_text_color = "#000088"; // 输入区按钮离开后文字色
var button_over_color = "#0000ff"; // 输入区鼠标覆盖时按钮文字色
var input_msg_color = "#0000FF"; // 输入区文字输入框文字色
var input_msg_bkcolor = "#CDE4F3"; // 输入区文字输入框背景色

var KeepMicTime = 6; // 自动护麦的时间间隔（单位：秒）
var AutoWelco = 3; // 自动迎宾的时间间隔（单位：秒）
var AutoSayTime =120; // 自动发言的时间间隔（单位：秒）

var button_bk_image = 1; // 按钮使用背景图片，0——不使用，1——使用
var btn_pic_18 = "http://home.5kh.com/dongdong/2021/0.gif"; // 18点宽
var btn_pic_35 = "http://home.5kh.com/dongdong/2021/1.gif"; // 35点宽
var btn_pic_45 = "http://home.5kh.com/dongdong/2021/1.gif"; // 45点宽
var btn_pic_60 = "http://home.5kh.com/dongdong/2021/2.gif"; // 60点宽
var btn_pic_72 = "http://home.5kh.com/dongdong/2021/3.gif"; // 72点宽

var url_popup_window = ""; // 进入聊天室时弹出的窗口，如果为空则不弹出
var only_registr_user = 0; // 只允许注册用户进入,0否；1是
var only_chinese_name = 0; // 只允许汉字名用户进入0否；1是
var default_admin_pass = "123"; // 默认的管理员口令

var auto_open_ai = 1; // 自动打开图音,0不打开；1自动打开
var auto_open_mic = 0; // 自动打开语音,0不打开；1自动打开
var auto_open_qq = 0; // 自动打开悄悄,0不打开；1自动打开
var auto_open_div = 1; // 自动打开分屏,0不分屏；1自动分屏
var auto_open_notice = 0; // 自动打开提示,0不打开；1自动打开
var auto_refresh = 1; // 自动打开刷新,0不打开；1自动打开
var auto_disable_kick = 1; // 自动禁止踢人,0不禁止；1自动禁止

var auto_flower_time = 6; // 自动送花的时间间隔，（单位：秒）
var acc_m_user = 1; // 是否允许多名用户,0不允许；1允许
var auto_flower = 1; // 是否允许自动送花,0不允许；1允许
var multi_singer_list = 0;  //  是否允许重复排麦,0不允许；1允许
var accept_right_click = 0; // 是否允许右键菜单,0不允许；1允许

// 用于连接按钮
var a_link_button = new Array
(
"论坛","情聊论坛", "http://qliao.wangbo.dhcn.net/",
"相册","本室相册", "http://qliao.wangbo.dhcn.net/Clasky_photo.asp",
"管理","后台管理", "http://liaowan.com/USadmin/adminroom.asp",
"注册","聊友注册", "http://www.liaowan.com/USadmin/regadd.asp",
"留言","欢迎留言", "http://qliao.wangbo.dhcn.net/beike/flashbook.htm"
);


// 本室中的 VIP 聊友
// 级别：1室主；2副室主；3高管；4-5-6管理；0、7、8、9已由内部使用
               
var a_vip_user = new Array
(
"*潇龍",1
);

    

//--聊友名过滤，凡是名字中包含下面文字的聊友，只要不是上面的VIP聊友，不准进入房间--
var a_name_filter = new Array
(
"碧海"
       "旮旯"
"00000",
"11111"
);


//——隐身人：名称，隐身等级。下面的名字是可以隐身的，但级别等于隐身级别的聊友可以看到他的名字——
var a_hide_user = new Array
(
"*旮旯",            0

);


// 第一步　添加便衣马甲数组
//      便衣马甲
     var bianyi = new Array
     (
     "*冀人老刀",
     "*~碧海",
     "*~依然",
     "*碧海",
     "*5411111",
     "*5400000"

     );

// 按钮背景图片  宽度,文件名
var a_btn_pic = new Array
(
17, "anniu/"+colortp_number+"/"+xztp_number+"/18.gif",
18, "anniu/"+colortp_number+"/"+xztp_number+"/18.gif",
19, "anniu/"+colortp_number+"/"+xztp_number+"/18.gif",
35, "anniu/"+colortp_number+"/"+xztp_number+"/35.gif",
46, "anniu/"+colortp_number+"/"+xztp_number+"/46.gif",
70, "anniu/"+colortp_number+"/"+xztp_number+"/70.gif"
);

//——聊友说明，在此修改聊友名字的颜色——   （0到9）
var a_usertitle = new Array
(
0, "在线管理", "http://pic.liaowan.com/tb/038.gif", "#FF0000", "",
1, "本室室主", "http://pic.liaowan.com/tb/042.gif", "#DE55cc", "",
2, "本室副室", "http://pic.liaowan.com/tb/048.gif", "#DE55cc", "",
3, "高级管理", "http://pic.liaowan.com/tb/031.gif", "#DE55cc", "",
4, "本室男管理", "tb/"+txlx_number+"/004.gif ", "#DE55cc", "",
5, "本室女管理", "tb/"+txlx_number+"/005.gif ", "#2c07fe", "",
6, "本室歌手", "http://pic.liaowan.com/tb/039.gif", "#2c07fe", "",
7, "注册名",          "http://pic.liaowan.com/tb/004.gif", "#2c07fe", "",
8, "汉字名",          "http://pic.liaowan.com/tb/011.gif", "#2c07fe", "",
9, "数字名",          "http://pic.liaowan.com/tb/011.gif ", "#2c07fe", ""
);

// 不可踢马甲
var wudimajia=new Array("*碧海","*旮旯","*~碧海","*~依然","*5411111","*5400000",
"*冀人老刀","*熏衣草","*依溪","*老刀～"
 );  



//——房间走廊,请注意房间号的写法——
var a_roomlink = new Array
(
black_roomname, black_roomnumb,
(
"风中尘缘", "2042",

);

now = new Date(),hour = now.getHours()
if(hour < 6){ var wenhao="你好!这么早,天还没亮呢!"; }
else if (hour < 9){var wenhao="早上好!";}
else if (hour < 11){var wenhao="上午好!";}
else if (hour < 14){var wenhao="中午好!";}
else if (hour < 18){var wenhao="下午好!";}
else if (hour < 23){var wenhao="晚上好!";}
else {var wenhao="你好!夜深了你还不想睡吗?";}


//--房间链接--
var a_linkurl = new Array
(
"热线连接", "",
"真情论坛", "http://www.369590.com",
"聊湾注册", "http://liaowan.com/USadmin/regadd.asp",
"聊湾帮助", "http://liaowan.com/help/",
"伴奏网址", "",
"音乐擂台", "http://www.tvma.com.cn/xianshangliange/banzouxiazai.asp",
       "伴奏音乐",          "http://www.meetchinese.com/song/music.html",
       "兰色伴奏",          "http://www.l521.com/banzou/",
       "歌友伴奏",         "http://www.163888.net/blist.asp",
"音乐网", "http://mtv99.com",
"搜刮搜索", "http://www.sogua.com",
"极限搜索", "http://www.chinamp3.net/search/index.php",
"百度mp3", "http://mp3.baidu.com",
"百度flas", "http://flash.baidu.com",
"管理后台", "http://pic.liaowan.com/houdai/admin.asp",
"房间管理", "http://liaowan.com/roomadmin/",
"后台管理", ""+cipdz+""
);


//--欢迎--
var a_welcome = new Array
(
"欢迎", "★《 "+room_name+" 》欢迎你！坐┳┳请坐┳┳┳请上坐┳┳┳┳！★ ( http://"+room_number+".liaowan.com)这里是女性同志聊天室!男仕请你回避!",
"欢迎", "☆"+room_name+"☆欢迎您的光临，愿您在这里玩儿的开心！玩儿的愉快！这里是女性同志聊天室!男仕请你回避!( http://"+room_number+".liaowan.com) ",
"欢迎", "你好，请坐，请上坐┳━┳━┳ .给您端上热咖啡一杯.免费赠送的哦~~~还有奶茶~！( http://"+room_number+".liaowan.com)这里是女性同志聊天室!男仕请你回避! ",
"欢迎", "●◢◤◥◣◢◤◥ "+room_name+" ◣◢◣◢◤◥◣聊◢◤◥◣天◢◤◥◣室◢◤◥◣欢◢◤◥◣迎◢◤◥◣您● ( http://"+room_number+".liaowan.com)这里是女性同志聊天室!男仕请你回避! " 
);


//--献花--
var a_flower = new Array
(
"醉倒", "醉倒!★真好听 * ．给我签个名吧！哎..大家不要挤嘛..呦..呦..谁踩俺脚了..哎~~签哪儿呢？..就签俺衣服上吧！要带唇印的哦~保安~我的鞋~",
"签名", "■~唱的太棒了~～☆★☆～~我听的都醉了~～☆★～~给我签个名吧~ ～☆★☆～~哇~～！！～~唱的太棒了~～☆★☆～~我听的都醉了~0~",
"醉了", "哗啦啦---下雨拉｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀、鲜花｀、｀、｀、｀、｀、好听｀给你雨伞、迷死了｀、｀、｀",
"迷人", "¤¤¤¤¤¤¤¤¤好棒哦¤¤¤¤¤¤¤迷死了¤¤¤¤¤¤¤好棒哦¤¤¤¤¤好棒哦¤¤¤¤¤¤好棒哦¤¤¤¤¤啪啪啪¤¤¤¤",
"歌星", "艺术家！！专业歌星~~~~ぷ╰哗...☆╮ぷ╰☆╮满天星★☆ぷ(((((啪啪)))))ぷ╰ぷ╰签名！签名！)嘿！哥们~~~~别挤嘛 **我的鞋呢？眼镜？ ",
"玫瑰", "玫瑰花☆╮╮芍药花☆╮╰☆☆╮合欢花╰☆☆╮喇叭花╰☆☆╮爆米花╰☆☆╮鱿鱼花╰☆☆╮葱花╰☆☆╮ 礼花～～腰花～～杠上花",
"歌星", "☆★．°■ ．☆°*°●★ ．歌星啊！真好听 * *．★☆多美妙的声音啊★*°☆* 太棒了！∴°★★°真的是你唱的吗？我怀疑是歌星唱的啊！！* ~",
"偶像", "☆☆★∴☆∵*☆★∴☆∵≈☆￡鲜花≈☆￡鲜花偶像～～签名～～～ ∵*☆★∵ ∵*☆★∴☆∵*☆★∴☆∵偶像～～签名～～～ ∵*☆★∴☆∵",
"百荷", "★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮野百荷★☆ぷ╰☆╮ぷ",
"真棒", "唱的真棒~~╰☆☆╮茉莉花╰☆☆鼓掌（（（PA PA）））玫瑰╰☆☆╮百合╰☆☆╮牡丹╰☆☆╮茉莉╰☆☆╮还有一枝勿忘我－紫风铃",
"郁金", ":→◥◣★☆★◢◤★↘*郁金香∴→◥◣★☆★◢◤★℡↘*郁金香∴→◥◣★☆★◢◤★ ↘ *郁金香∴→◥◣★☆★◢◤★↘",
"啪啪", "*^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^* *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*《啪》 *^_^*",
"水仙", "玫瑰花★☆ぷ╰☆╮ぷ╰☆╮满天星★☆ぷ╰☆╮ぷ(((((((((啪啪))))))))ぷ╰☆╮紫丁香★☆ぷ╰☆╮ぷぷ╰☆╮水仙花★☆ぷ╰☆╮ぷ╰☆╮",
"牡丹", "* *．°牡丹★·。 *菊花∴ * *夜来香∴°一筐一筐又一筐∴牡丹★·。 *菊花∴ * *夜来香∴°★·君子兰* *．°一筐一筐又一筐∴"
);


//--送行--
var a_byebye = new Array
(
"不舍","走好，再见，祝您开心快乐",
"走好","好的，拜拜！祝您开心快乐 "
);


//--告辞--
var a_leave = new Array
(
"想留", "Bye~~~~~~~~~再见，我要下了，祝您开心快乐~~~~~~~~~~~ ",
"告别", "Bye~~~~~~~~~再见，我要下了，祝您开心快乐~~~~~~~~~~~~ "
);

//--答谢--
var a_da = new Array
(
"多谢", "多谢多谢!!谢谢大家!!!!  ",
"多谢", "谢谢朋友们的鲜花,掌声和鼓励!!!",
"多谢", "衷心感谢朋友们的热情!!! "
);

//--文明--
var a_wen = new Array
(
"文明","提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ",
"文明","提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!!! "
);

//--换名--
var a_huan = new Array
(
"换名","我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作 ",
"换名","我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作! "
);

//--要麦--
var a_wantmic = new Array
(
"要麦", "999999999999999999999999我要麦呀9999999",
"唱歌", "999999999999999999999999我要麦呀99999999"
);

//--听见--
var a_heart = new Array
(
"听见", "││││││││││││││││││││││││听见了",
"听见", "│││││││││││││││││││││││││听见了"
);


//--搅拌--
var a_dai = new Array
(
"搅拌", "管理员，我要搅拌啊9999999999999999999999999，可以吗？(麦序超过5个俺就不搅拌了) ",
"搅拌", "管理员，我要搅拌啊9999999999999999999999999，可以吗？(麦序超过5个俺就不搅拌了)   "
);

//--准备--
var a_zhun = new Array
(
"准备", "您好!下一位到您接麦了,请您做好准备~~!(看到了请回信)谢谢 ",
"准备", "您好!下一位到您接麦了,请您做好准备~~! (看到了请回信)谢谢"
);

//--邀麦--
var a_yao = new Array
(
"邀麦", "☆⌒_⌒．☆°您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？谢谢☆⌒_⌒．☆",
"邀麦", "☆⌒_⌒．☆°您好!亲爱的朋友,欢迎你的到来,你可以给大家唱一首歌吗？谢谢☆⌒_⌒☆"
);

//--网址--
var a_wang = new Array
(
"网址", "聊天室网址："+room_link_url+" ",
"网址", "聊天室 网址："+room_link_url+" "
);

//--试麦--
var a_shi = new Array
(
"试麦", "管理员，您好。我要试麦66666666666666666666666 ",
"试麦", "管理员，您好。我要试麦666666666666666666666666 "
);

//--拒聊--
var a_ju = new Array
(
"拒聊", "很抱歉，我正在上管理主持，不能和您聊天，请谅解。 ",
"拒聊","很抱歉，我正在上管理主持，不能和您聊天，请您谅解。 "
);

//--未开麦--
var a_wei = new Array
(
"您未开麦", "您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦 ",
"您未开麦","您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦   "
);

//--麦无声音--
var a_wu = new Array
(
"麦无声音", "您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗 ",
"麦无声音","您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗   "
);

//--请您接麦--
var a_jie = new Array
(
"请您接麦", "您好!请您接麦,不好意思,让您久等了,请接好您的麦克风 ",
"请您接麦","您好!请您接麦,不好意思,让您久等了,请接好您的麦克风   "
);

//--已经排麦--
var a_yi = new Array
(
"已经排麦", "您好!我已为您排麦,请您耐心待等候。也请准备一下 为我们献上你的风采！ ",
"已经排麦", "您好!我已为您排麦,请您耐心待等候。也请准备一下 为我们献上你的风采！    "
);

//--您麦不好--
var a_duan = new Array
(
"您麦不好", "您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢 ",
"您麦不好",   "您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢   "
);

//--请您关麦--
var a_guan = new Array
(
"请您关麦", "朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作 ",
"请您关麦",   "朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作   "
);

//--拒绝双工--
var a_shuang = new Array
(
"拒绝双工", "您好!十分对不起，我现在不能和您双工，请您谅解。  ",
"拒绝双工",  "您好!十分对不起，我现在不能和您双工，请您谅解。    "
);

//--打黑警告--
var a_hei = new Array
(
"打黑警告", "打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~小心PP  ",
"打黑警告",  "打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~小心PP    "
);

//--游戏横线--
var a_heng = new Array
(
"游戏横线", "恭喜横线上和下朋友中奖===============================================   ",
"游戏横线",  "恭喜横线上和下朋友中奖===============================================     "
);

//--话题--
var huati = new Array
(
"话题", ""+div_msg4+"",
"话题",  ""+div_msg4+"  "
);

// 管理专用
var a_admin = new Array
(
"本室网址", "聊天室网址 "+ room_link_url ,"color:#009900",
"请您准备", "您好，欢迎来到“《" + room_name + "》”，下一个就是您的麦了,请准备好!!!!","",
"拒绝双工", "您好!十分对不起，我现在不能和您双工，请您谅解。 ","color:#6600ff",
"拒绝聊天", "您好!十分对不起，我现在正在上管不能和您聊天，请您谅解。 ","color:#6600ff",
"已经排麦", "您好!我已为您排麦,请您耐心待等候!","",
"请您接麦", "您好!请您接麦,不好意思,让您久等了,请接好您的麦克风!","",
"请您关麦", "朋友，请关上您的麦克！请您点击又下角的麦克风图标，使其变成红叉，这样您就不会断别人的麦！当您想说话和唱歌时，请您再点击一下，红叉消失即可说话！谢谢合作！","",
"请开语音", "您好!请您打开语音或是退全双工对话,否则我们是递不了麦给您的哦!!","",
"文明聊天", "提醒**请您文明聊天,注意自己的语言或名称,是和朋友开玩笑请用悄悄话,谢谢合作!!!!! ","",
"打黑警告", "打黑打黑~！快出来吧~！~没氧气了~！~！快出来吧~！~没氧气了~！~！","",
"请您换名", "我们的房间不欢迎这样的名字，请您换个名字进来，不然我请您出去换了，谢谢您的合作。","",
"换注册名", "请您换一个文字名字或注册名字好吗，这样大家会记住您的，大家叫您时也方便！谢谢","",
"您麦不好", "您好!可能是您的麦有问题或是网速太慢,我们听到的是断断续续的声音,请您再调试一下再要麦好吗?谢谢.","",
"麦无声音", "您好!亲爱的朋友,我们递麦给您,您的麦没有声音,请您再调试一下麦克,再向我们要麦好吗?",""
);


//--EMOTE--
var a_emote = new Array
(
"☆问候☆", "",
"He你好", "//hello",
"Hi你好！", "//hi",
"愉快招呼", "//greet",
"热烈欢迎", "//welcome",
"和您握手", "//hand",
"请多关照", "//visit",
"公子有礼", "//boy",
"愉快表情", "//:)",
"对他笑笑", "//:)2",
"热情拥抱", "//bearhug",
"坐在一起", "//sit",
"弯腰鞠躬", "//bow",
"你太客气", "//welcome2",
"生日快乐", "//birthday",
"热烈鼓掌", "//clap",
"大喊加油", "//addoil",
"献朵玟瑰", "//rose",
"热的牛奶", "//milk",
"热茶包子", "//tea",
"喝了再说", "//wine",
"替您擦汗", "//sweat",
"小蘑菇吃", "//gzxj",
"打打哈哈", "//ha",
"哈哈大笑", "//haha",
"疑惑看着", "//?",
"壮士过奖", "//cool",
"做鬼鬼脸", "//face",
"你真好", "//thank",
"高实在高", "//gao",
"傻笑几声", "//he",
"想说什么", "//en",
"吐舌头", "//:p",

"☆调情☆", "",
"发誓爱你", "//ai",
"天真望著", "//@@",
"昏倒怀抱", "//faint",
"飞了过去", "//fly",
"嘴巴堵你", "//ds",
"这个女人", "//girl",
"过去答讪", "//go",
"好喜欢你", "//ppp",
"我爱上你", "//love",
"真的是你", "//miss",
"真的是你", "//wait4",
"我在等你", "//waiting",
"等的花谢", "//wait3",
"含宝脉脉", "//love3",
"眼眸眨眨", "//lovesee",
"含情脉脉", "//lovelook",
"撩人诱惑", "//lure",
"向你求婚", "//marry",
"好象见过", "//mm",
"脸好热热", "//shy",
"飘飘欲仙", "//smoke",
"陶醉跳舞", "//dance",
"无辜望著", "//inn",
"轻轻拥抱", "//hug",
"轻轻抚摸", "//care",


