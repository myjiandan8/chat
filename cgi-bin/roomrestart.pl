#$bchatexe="c:\\bchat\\bchat.exe"; ##聊天室运行主程序
#$portdir="c:\\bchat";	##聊天室运行端口目录
#$DSN = "chatdb"; 
#$DSN="dsn=chatdb; uid=xxx; pwd=xxx";

$toinclude=$ENV{'PATH_TRANSLATED'};
$toinclude=substr($toinclude,0,-14);
$toinclude=$toinclude."include.pl";
require "$toinclude";

if ($ENV{"REQUEST_METHOD"} eq 'GET') { $buffer = $ENV{'QUERY_STRING'}; }
else { read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'}); }
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
        ($name, $value) = split(/=/, $pair);
        $value =~ tr/+/ /;
        $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
        $FORM{$name} = $value;
}

$port=int($FORM{'port'});
$roomid=int($FORM{'roomid'});
unless ($port >0 || $FORM{'userroompasswd'} ne ""){
	print "Content-type: text/html\n\n";
	print "对不起，请输入正确的端口号和管理密码"; 
	exit;
}
if ($roomid==0){$portkey=$port;}
else {$portkey=$port*1000+$roomid ;}

unless (-e "$bchatexe"){ 
	print "Content-type: text/html\n\n";
	print "聊天室运行主程序不存在，请与系统管理员联系"; 
	exit(); 
}
$portinifile="$portdir\\$port\\$port.ini";	##聊天室运行端口INI文件
unless (-e "$portinifile"){ 
	print "Content-type: text/html\n\n";
	print "聊天室运行端口INI文件不存在，请与系统管理员联系"; 
	exit(); 
}

use Win32::ODBC;

#$DSN = "chatdb"; 
#$DSN="dsn=chatdb; uid=xxx; pwd=xxx";

#连接数据库 

if (!($db = new Win32::ODBC($DSN))){ 
	print "Content-type: text/html\n\n";
	print "对不起，系统忙，请稍后再试"; 
	exit(); 
}
#选择数据表 
if (! $db->Sql("SELECT adminpasswd FROM [room] WHERE port=$portkey") ){ 
	if($db->FetchRow()) {
		if ($db->Data('adminpasswd') eq $FORM{'userroompasswd'}){
			$command="$bchatexe -install $portinifile";
			qx/$command/;
			$command="$bchatexe -stop $portinifile";
			qx/$command/;
			$command="$bchatexe -start $portinifile";
			qx/$command/;
			print "Content-type: text/html\n\n";
print qq!
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>restart</title>
</head>
<body>
<p align=center>成功启动聊天室！</p>
<p align=center> <a href='javascript:window.close()'>关闭窗口</a></p>
</body>
</html>
!;
		}else{
			print "Location:/\n\n";
			exit;
		}
	}
}

#关闭链接 
$db->Close();

