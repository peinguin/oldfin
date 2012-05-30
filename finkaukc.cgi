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

#$sqlr = 'ALTER TABLE fo340 ADD idzakkc INT(10)';
#$sqlr = 'ALTER TABLE fo340 ADD zakname text(40)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();


my $finbase=1;
if  ($q->param('fbase')) {
$finbase=$q->param('fbase');
};


# номер накладної
if  ($q->param('id')) {
$idop=$q->param('id');
};

# номер рядка що видаляється з накладної
my $idplat;
if  ($q->param('idkrt')) {
# Id картки  краму 
$idplat=$q->param('idkrt');
};

#print $mplat;

#if  ($q->param('redag') eq "prih") {
#$rashsklad=$prihsklad;
#}
#print $idop;


my $muser="buh1";
my $mperiod=1;
my $mid=0;


$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();

my $base="fo340";
my $basef1="f340";

if  ($finbase==1) {
if  ($mperiod eq 2) {
$base="fo340new";
$basef1="f340new";
};
};

if  ($finbase==2) {
$base="f340";
if  ($mperiod eq 2) {
$base="f340new";
};
};

if  ($finbase==34) {
$base="f331kor";
}


my $satel=$mid;

my $basezak="vrhnika_dszak";

$zamovn=1;
if  ($q->param('sprnum') eq 2) {
$basezak="dspod";
$zamovn=2;
}

#my ($idnumbersp,$naimsokrsp,$adressp,$namebanksp,$rsbanksp,$kodbanksp);
# вважаю що перейду на пошук накладної по  автоматичному id тому тут прибрав дату
$sqlr = 'SELECT id,shifra,naimsokr FROM '.$basezak.' WHERE id='.$idplat.'';
#print $sqlr;

$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
my ($idnumbersp,$mshifra,$naimsokrsp)=$sthr->fetchrow();

#print $mname;
#print $mnum1;

my $zplat=$dbhr->quote($naimsokrsp);

if  ($finbase==2) {
$sqlr ='SELECT idsimetr FROM '.$base.' WHERE id = "'.$idop.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
my $midsimetr=$sthr->fetchrow();
# sprnum розыбратись sprnum1? 

$sqlr = 'UPDATE '.$base.' SET zaknamekc='.$zplat.', kaukc='.$mshifra.', sprnum1='.$zamovn.', idzakkc='.$idnumbersp.' where  id="'.$idop.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

$sqlr = 'UPDATE '.$base.' SET zakname='.$zplat.', kau='.$mshifra.', sprnum='.$zamovn.', idzak='.$idnumbersp.' where  id="'.$midsimetr.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

}else{
$sqlr = 'UPDATE '.$base.' SET zaknamekc='.$zplat.', kaukc='.$mshifra.', sprnum1='.$zamovn.', idzakkc='.$idnumbersp.' where  id="'.$idop.'"';
#print $sqlr;
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

}

if  ($finbase==1) {
$sqlr = 'UPDATE '.$basef1.' SET zaknamekc='.$zplat.', kaukc='.$mshifra.', sprnum1='.$zamovn.', idzakkc='.$idnumbersp.' where  num1="'.$idop.'" and idsimetr>0';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$basef1.' SET zakname='.$zplat.', kau='.$mshifra.', sprnum='.$zamovn.', idzak='.$idnumbersp.' where num1="'.$idop.'" and idsimetr is null';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
#print $sqlr;
};


#print $sqlr;
#$sthr->finish;
$dbhr->disconnect;