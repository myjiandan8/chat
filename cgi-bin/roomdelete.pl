#$bchatexe="c:\\bchat\\bchat.exe"; ##����������������
#$portdir="c:\\bchat";	##���������ж˿�Ŀ¼
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
	print "�Բ�����������ȷ�Ķ˿ںź͹�������"; 
	exit;
}
if ($roomid==0){$portkey=$port;}
else {$portkey=$port*1000+$roomid ;}

unless (-e "$bchatexe"){ 
	print "Content-type: text/html\n\n";
	print "���������������򲻴��ڣ�����ϵͳ����Ա��ϵ"; 
	exit(); 
}
$portinifile="$portdir\\$port\\$port.ini";	##���������ж˿�INI�ļ�
unless (-e "$portinifile"){ 
	print "Content-type: text/html\n\n";
	print "���������ж˿�INI�ļ������ڣ�����ϵͳ����Ա��ϵ"; 
	exit(); 
}

use Win32::ODBC;

#$DSN = "chatdb"; 
#$DSN="dsn=chatdb; uid=xxx; pwd=xxx";

#�������ݿ� 

if (!($db = new Win32::ODBC($DSN))){ 
	print "Content-type: text/html\n\n";
	print "�Բ���ϵͳæ�����Ժ�����"; 
	exit(); 
}
#ѡ�����ݱ� 

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

#��֤����
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


#�ر����� 
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
<p align=center>δ֪����</p>
<p align=center> <a href='javascript:window.close()'>�رմ���</a></p>
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
<p align=center>ɾ��������֮ǰҪԤ��ɾ�������зַ��䡣</p>
<p align=center> <a href='javascript:window.close()'>�رմ���</a></p>
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
<p align=center>�ɹ�ɾ���������ҷ��䣡(���ɾ�����Ƿַ��䣬��Ҫ���������������Ҳ���Ч)</p>
<p align=center> <a href='javascript:window.close()'>�رմ���</a></p>
</body>
</html>
!;
}