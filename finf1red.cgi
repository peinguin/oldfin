#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";
use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;

use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

my $muser="buh1";
my $mperiod=1;
my $mid=0;


$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();




my $base="f340";
if  ($mperiod eq 2) {
$base="f340new";
}
my $satel=$mid;

if  ($q->param('id')) {
$idriad=$q->param('id');
}

#print ($q->param('idkrt'));
#print "---------------";

my $krtid;
if  ($q->param('idkrt')) {
# Id картки  краму 
$krtid=$q->param('idkrt');
}

my $val=$q->param('parval');
my $redpole=$q->param('redag');

$sqlr ='SELECT idsimetr FROM '.$base.' WHERE id = "'.$idriad.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($midsimetr)=$sthr->fetchrow();






if  ($q->param('oborot')) {
$sqlr = 'UPDATE '.$base.' SET booc="'.$q->param('oborot').'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

if  (($q->param('oborot') eq 2) or ($q->param('oborot') eq 4)) {
$moborot=($q->param('oborot'))+1;
}else{
$moborot=($q->param('oborot'))-1;
};

#if  ($q->param('oborot') eq 2) {
#$moborot=3;
#};
#if  ($q->param('oborot') eq 3) {
#$moborot=2;
#};

#if  ($q->param('oborot') eq 4) {
#$moborot=5;
#};
#if  ($q->param('oborot') eq 5) {
#$moborot=4;
#};

$sqlr = 'UPDATE '.$base.' SET booc="'.$moborot.'" WHERE id="'.$midsimetr.'"';
};


if ($redpole eq "oc") {
$sqlr = 'UPDATE '.$base.' SET oc="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET kc="'.$val.'" WHERE id="'.$midsimetr.'"';
};

if ($redpole eq "coc") {
$sqlr = 'UPDATE '.$base.' SET coc="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET ckc="'.$val.'" WHERE id="'.$midsimetr.'"';

};

if ($redpole eq "kc") {
$sqlr = 'UPDATE '.$base.' SET kc="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET oc="'.$val.'" WHERE id="'.$midsimetr.'"';

};

if ($redpole eq "ckc") {
$sqlr = 'UPDATE '.$base.' SET ckc="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET coc="'.$val.'" WHERE id="'.$midsimetr.'"';

};


if ($redpole eq "dok") {
$sqlr = 'UPDATE '.$base.' SET dok="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET dok="'.$val.'" WHERE id="'.$midsimetr.'"';

};

if ($redpole eq "summa") {
$sqlr = 'UPDATE '.$base.' SET summa="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET summa="'.$val.'" WHERE id="'.$midsimetr.'"';

};

#print "--- $redpole";
if ($redpole eq "priznak") {
my $val1=$dbhr->quote($val);
$val=$val1;
$sqlr = 'UPDATE '.$base.' SET priznak='.$val.' WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET priznak='.$val.' WHERE id="'.$midsimetr.'"';

};

#print $val;

# сформуємо дату 

if ($redpole eq "data") {
#print $val;
my $ryear = substr($val,0,4);
#print $ryear;
my $rmonth = substr($val,5,2);
#print $rmonth;
#my $nperiod = substr($adddate,5,2);
my $rday = substr($val,8,2);
#print $rday;
#print $newyear;
$val = sprintf("%.4d.%.2d.%.2d",($ryear,$rmonth,$rday));
#print $val;
#$val=$rasdata;

$sqlr = 'UPDATE '.$base.' SET data="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$base.' SET data="'.$val.'" WHERE id="'.$midsimetr.'"';

};
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
#print $sqlr;

#$sthr->finish;
$dbhr->disconnect;