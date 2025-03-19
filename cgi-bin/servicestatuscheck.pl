if ($ENV{"REQUEST_METHOD"} eq 'GET') { $buffer = $ENV{'QUERY_STRING'}; }
else { read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'}); }
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
        ($name, $value) = split(/=/, $pair);
        $value =~ tr/+/ /;
        $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
        $FORM{$name} = $value;
}

print "Content-type: text/html\n\n";
	
$port=int($FORM{'port'});
$roomid=int($FORM{'roomid'});
unless ($port >0){
	print ""; 
	exit;
}

$servicename="bchat_".$port;

use Win32::Service;
use Win32;
my %status;

Win32::Service::GetStatus( '',$servicename, \%status);
if($status{CurrentState}==4){
	print "document.all.div${port}${roomid}.innerHTML='‘À––';";
}else{ 
	print "document.all.div${port}${roomid}.innerHTML='Õ£÷π';";
}
exit;

