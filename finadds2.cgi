#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;
use DBI;

$q = new CGI;
$q->header(-charset=>'UTF-8');


use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

if  ($q->param('id')) {
$idop=$q->param('id');
}

# номер рядка що видаляється з накладної
my $idplat;
if  ($q->param('idkrt')) {
# Id картки  краму 
$idplat=$q->param('idkrt');
}

#print $idop;
my $muser="buh1";
my $mperiod=1;
my $mid=0;


$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();

my $base="f330new";
if  ($mperiod eq 2) {
#$base="f340new";
}
my $satel=$mid;


my ($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;
$month++;
my $date = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));
my $tekdata=$date;




#my $baseop="oper";

# вважаю що перейду на пошук накладної по  автоматичному id тому тут прибрав дату
#$sqlr = 'SELECT name,num1 FROM '.$baseop.' WHERE id='.$idplat.'';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#my ($mname,$mnum1)=$sthr->fetchrow();

#print $sqlr;


#my $zplat=$dbhr->quote($mname);

#Тут потім будем вставляти Id користувача

#if ($idop == 0) {
$sqlr = 'INSERT INTO '.$base.' (booc,saldo)  VALUES (2,0.0)';
#$sthr = $dbhr->do($sqlr);
#print $sqlr;
#}else{
#$sqlr = 'UPDATE '.$base.' SET  name='.$zplat.', num='.$mnum1.', idoper='.$idplat.' where  id="'.$idop.'"';
#};
#print $sqlr;
$sthr = $dbhr->do($sqlr);

#$sthr->finish;
$dbhr->disconnect;