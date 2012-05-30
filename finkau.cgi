#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;
use DBI;

$q = new CGI;
$q->header(-charset=>'UTF-8');


my $mysql_table = '';
my $mysql_user = 'root';
my $mysql_pass = '';


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

#$sqlr = 'ALTER TABLE f340 ADD idzakkc INT(10)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

#$sqlr = 'ALTER TABLE f340 ADD zaknamekc text(40)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

#$sqlr = 'ALTER TABLE f340 ADD idzak INT(10)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

#$sqlr = 'ALTER TABLE f340 ADD zakname text(40)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();


#Пкрквіремо звідкіля викликали програму
my $finbase=1;
if  ($q->param('fbase')) {
$finbase=$q->param('fbase');
};


# номер
if  ($q->param('id')) {
$idop=$q->param('id');
};

# номер рядка що видаляється 
my $idplat;

if  ($q->param('idkrt')) {
# Id картки  краму 
$idplat=$q->param('idkrt');
};

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
}
};

if  ($finbase==2) {
$base="f340";
if  ($mperiod eq 2) {
$base="f340new";
}

};

if  ($finbase==31) {
$base="f330";
}

if  ($finbase==32) {
$base="f330new";
}

if  ($finbase==33) {
$base="f331";
}

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

$sqlr = 'UPDATE '.$base.' SET zakname='.$zplat.', kau='.$mshifra.', sprnum='.$zamovn.', idzak='.$idnumbersp.' where  id="'.$idop.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

$sqlr = 'UPDATE '.$base.' SET zaknamekc='.$zplat.', kaukc='.$mshifra.', sprnum1='.$zamovn.', idzakkc='.$idnumbersp.' where  id="'.$midsimetr.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

}else{
$sqlr = 'UPDATE '.$base.' SET zakname='.$zplat.', kau='.$mshifra.', sprnum='.$zamovn.', idzak='.$idnumbersp.' where  id="'.$idop.'"';
#print $sqlr;
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

}

if  ($finbase==1) {
$sqlr = 'UPDATE '.$basef1.' SET zakname='.$zplat.', kau='.$mshifra.', sprnum='.$zamovn.', idzak='.$idnumbersp.' where  num1="'.$idop.'" and idsimetr>0';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$basef1.' SET zaknamekc='.$zplat.', kaukc='.$mshifra.', sprnum1='.$zamovn.', idzakkc='.$idnumbersp.' where num1="'.$idop.'" and idsimetr is null';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
#print $sqlr;
};
#if ($ENV{'HTTP_X_REQUESTED_WITH'}) {

#my $par3=$idop;
#my $par6=$q->param('nadd');
#my $par7=$q->param('sprnum');
#    print 'psort='."$par".'&navnakl='."$par1".'&poisk='."$par2".'&id='."$par3".'&redag='."$par4".'&idnakl='."$par5".'&nadd='."$par6".'&sprnum='."$par7";

#    print 'id='."$par3".'&navnakl='."$par4";
#    print 'id='."$par3";

#} else {
#    print "Доступ запрещен";
#}

#$sthr->finish;
$dbhr->disconnect;