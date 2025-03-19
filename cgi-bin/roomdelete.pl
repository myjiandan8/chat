#$bchatexe="c:\\bchat\\bchat.exe"; ##聊天室运行主程序
#$portdir="c:\\bchat";	##聊天室运行端口目录
#$DSN = "chatdb"; 
#$DSN="dsn=chatdb; uid=xxx; pwd=xxx";

$toinclude=$ENV{'PATH_TRANSLATED'};
$toinclude=substr($toinclude,0,-13);
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

if($roomid==0){
	if (! $db->Sql("SELECT count(*) FROM [room] WHERE port like '${port}%'") ){ 
		if($db->FetchRow()) {
			$roomcount = $db->Data;
			if($roomcount>1){
				&error_mainroom();
				exit();
			}
		}else{
			&error_unknow();
			exit();
		}	
	}else{
		&error_unknow();
		exit();
	}
}

#验证密码
if (! $db->Sql("SELECT adminpasswd FROM [room] WHERE port=$portkey") ){ 
	if($db->FetchRow()) {
		if ($db->Data('adminpasswd') eq $FORM{'userroompasswd'}){
			;
		}else{
			print "Location:/\n\n";
			exit;
		}
	}
}

if($roomid==0){
	$command="$bchatexe -stop $portinifile";
	print $command;
	qx/$command/;
	$command="$bchatexe -remove $portinifile";
	print $command;
	qx/$command/;
	$command="del /Q $portdir\\$port";
	qx/$command/;
	$command="rd /Q $portdir\\$port";
	qx/$command/;		
}
if (! $db->Sql("delete FROM [room] WHERE port=$portkey") ){ 
	&success_normal();
	exit();	
}else{
	&error_unknow();
	exit();
}


#关闭链接 
$db->Close();


sub error_unknow(){
print "Content-type: text/html\n\n";
print qq!
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>restart</title>
</head>
<body>
<p align=center>未知错误！</p>
<p align=center> <a href='javascript:window.close()'>关闭窗口</a></p>
</body>
</html>
!;
}

sub error_mainroom(){
print "Content-type: text/html\n\n";
print qq!
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>restart</title>
</head>
<body>
<p align=center>删除主房间之前要预先删除其所有分房间。</p>
<p align=center> <a href='javascript:window.close()'>关闭窗口</a></p>
</body>
</html>
!;
}

sub success_normal(){
print "Content-type: text/html\n\n";
print qq!
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>restart</title>
</head>
<body>
<p align=center>成功删除该聊天室房间！(如果删除的是分房间，需要重新启动主聊天室才生效)</p>
<p align=center> <a href='javascript:window.close()'>关闭窗口</a></p>
</body>
</html>
!;
}