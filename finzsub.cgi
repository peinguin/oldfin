#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;
#use CGI;

use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );

my $mova="Ua";
#my $mova="Ru";
my $ocnazvapr ="";
my $syearp= "";
my $smonth ="";

$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");


#my $krtid;
#if  ($q->param('idkrt')) {
# Id картки  краму 
#$krtid=$q->param('idkrt');
#}

my $base="f340";
# потым зміню на таблицю сальдо нового місяця
my $basesal="f330";

#if  ($finbase==1) {

#if  ($mperiod eq 2) {
#$base="f340new";
#}
#};


my ($date,$tekdatanak,$day,$month,$year);

#print '<div>---------'.$q->param('dcheck').'</div>';

my $termin;


if  ($q->param('dcheck')) {
$termin=$q->param('dcheck');
}

if  ($termin eq "per2") {
$base="f340new";
$basesal="f330";
}else{
$base="f340";
$basesal="f330";
}


($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;
$year--;

$month++;
#$month--;
$date = sprintf("%.4d-%.2d-%.2d",($year,$month,$day));
#my $tekdatanak=$date;

($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;
$month++;
$tekdatanak=sprintf("%.4d-%.2d-%.2d",($year,$month,$day));


$datapoch=$q->param('term1');

$year = substr($datapoch,0,4);
$month = substr($datapoch,5,2);
$day = substr($datapoch,8,2);
$date = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));

$datacinc=$q->param('term2');

$year = substr($datacinc,0,4);
$month = substr($datacinc,5,2);
$day = substr($datacinc,8,2);
$tekdatanak = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));

#-----------------------
#($day,$month,$year) = (localtime)[3..5];
#$year = 1900 + $year;
#$year--;

#$month=7;
#$month--;
#$testdate = sprintf("%.4d-%.2d-%.2d",($year,$month,$day));
$printline=0;
$numpage=1;


my $outdate = $tekdatanak;
#my $outdate = $testdate;
#my $smonth =perekladmis();

#print "-----------";
#print $smonth;
#print $testdate;
#___________________________

#print "-----------";
#print $datapoch;
#print $q->param('term1');
my $choice=64;
if ($q->param('term1')){
$choice=$q->param('term1');
};

my $choicecoc=0;
if ($q->param('term2')){
$choicecoc=$q->param('term2');
};

# загальні змінні для рахунку
my $debsch=0;
my $kredsch=0;

my $psdebsch=0;
my $pskrsch=0;

my $isaldebsch=0;
my $isalkrsch=0;




if ($choicecoc==0) {
$sqlsch ='(SELECT t1.coc AS coc FROM '.$base.' AS t1 WHERE oc="'.$choice.'") UNION (SELECT t2.coc AS coc FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'")';
#$sqlsch ='(SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,t1.booc AS booc,t1.data AS data,t1.priznak AS priznak,t1.summa AS summa,t1.dok AS dok FROM '.$base.' AS t1 WHERE oc="'.$choice.'") UNION ALL (SELECT t2.oc AS oc,t2.coc AS coc,null AS kc,null AS ckc,null AS booc,null AS data,null AS priznak,t2.saldo AS summa,null AS dok FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'")';
#$sqlsch ='SELECT DISTINCT coc FROM '.$base.'  WHERE oc="'.$choice.'"';
}else{
$sqlsch ='SELECT DISTINCT coc FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
};

$sqlsch = $sqlsch . ' ORDER BY coc';
$sthsch = $dbhr->prepare($sqlsch);
$sthsch->execute();

while (($mtekcoc) = $sthsch->fetchrow()){;

my $itdebsch=0;
my $itkredsch=0;

my $psaldebss=0;
my $psalkrss=0;

my $isaldebss=0;
my $isalkrss=0;


#print $mtekcoc;
$choicecoc=$mtekcoc;

$sqlr ='SELECT rahname FROM fnazrah WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$ocnazva = $sthr->fetchrow();

#---------------
my ($mrecnum,$moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mdok,$mzakname,$midzak);

# тут отримаємо дату з якою працюємо
$sqlr ='SELECT data FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
$sqlr = $sqlr . ' ORDER BY data';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$mdataop = $sthr->fetchrow();
#print $sqlr;

# сформуємо дати для шапки таблиці
$outdate = $mdataop;
$smonth =perekladmis();
my $outyear = $mdataop;
$outyear =~s/(\d{4})-(\d{2})-(\d{2})/$3\.$2\.$1/;
$syearp= $1;

#print $smonth;

&shapprint();
#print $printline;

#my $itteksch=0;
#my $ittekss=0;

my ($sqls,$sths,$salkau,$boocs,$salpochd,$salpochk);


#$sqlkau ='SELECT DISTINCT dok FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
#$sqlkau = $sqlkau . ' ORDER BY dok';
#$sthkau = $dbhr->prepare($sqlkau);
#$sthkau->execute();

#while ($mdokdis = $sthkau->fetchrow()) {;
#my ($idnumbersp)=(1,"0","нет названия");
#my $satel=$sprnum;
#if ($midzakdis==0) {
#}else{
#my $basezak="vrhnika_dszak";
#$zamovn=1;
#if  ($sprnum == 2) {
#$basezak="dspod";
#}

#my ($idnumbersp,$naimsokrsp,$adressp,$namebanksp,$rsbanksp,$kodbanksp);
# вважаю що перейду на пошук накладної по  автоматичному id тому тут прибрав дату
#$sqlr = 'SELECT id,shifra,naimsokr FROM '.$basezak.' WHERE id='.$midzakdis.'';
#print $sqlr;

#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#($idnumbersp,$mshifra,$midnazva)=$sthr->fetchrow();
#};


# поточный KAU
#print $midnazva;

my $kilkline=0;

my $itdebet=0;
my $itkredit=0;



#print '<div  style="float:left; width: 50%; background-color: #ffffff;">'.$mshifra.'-'.$midnazva.'</div>';
#print '<div  style="float:left; width: 45%; background-color: #ffffff;">_________________________________</div>';
print ' <div  style="clear:both;"></div>';



$sqlr ='SELECT id,oc,coc,kc,ckc,booc,data,kau,kaukc,summa,priznak,dok,zakname,idzak FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
$sqlr = $sqlr . ' ORDER BY kc,ckc,data,dok';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

while (($mrecnum,$moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mdok,$mzakname,$midzak) = $sthr->fetchrow()){;

#$kilkline=$kilkline+1;

if ($mbooc==2 or $mbooc==4 ) {
$itdebsch=$itdebsch+$msummaop;
$itdebet=$itdebet+$msummaop;
}else{
$itkredit=$itkredit+$msummaop;
$itkredsch=$itkredsch+$msummaop;
};
if ($mdok eq "") {
$mdok="--";
};

if ($mprizop eq "") {
$mprizop="--";
};
$mckcp=$mckc;
if ($mckc eq "") {
$mckcp="-";
};

if ($mkauop eq "") {
$mkauop="--";
};

#print ' <div  style="clear:both;"></div>';
print '<div  style="float:left; width: 9%; background-color: #ffffff;"><font color="#000000" size="3">'.$mdok.'</font></div>';
print '<div  style="float:left; width: 9%; background-color: #ffffff;"><font color="#000000" size="3">'.$mkauop.'</font></div>';

print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$mkc.'</font></div>';
print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$mckcp.'</font></div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#000000" size="3">'.$mdataop.'</font></div>';

if ($mbooc==2 or $mbooc==4 ) {
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$msummaop).'</div>';
print '<div  style="float:left; width: 12%; text-align: center; background-color: #ffffff;"><font color="#0000ff" size="3">-</font></div>';
}else{
print '<div  style="float:left; width: 12%; text-align: center; background-color: #ffffff;"><font color="#0000ff" size="2">-</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$msummaop).'</div>';
};

print '<div  style="float:left; width: 2%; background-color: #ffffff;"><font color="#000000" size="3">..</font></div>';

print '<div  style="float:left; width: 25%; background-color: #ffffff;"><font color="#000000" size="3">'.$mprizop.'</font></div>';
print ' <div  style="clear:both;"></div>';

$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}
# кінець обробки вибраного dok
#};


#$sqls ='SELECT saldo,booc FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  idzak="'.$midzakdis.'"';
#$sths = $dbhr->prepare($sqls);
#$sths->execute();
#($salkau,$boocs) = $sths->fetchrow();



#$salpochd=0;
#$salpochk=0;
#if ($boocs==2) {
#$salpochd=$salkau;
#$psaldebss=$psaldebss+$salkau;
#}else{
#$salpochk=$salkau;
#$psalkrss=$psalkrss+$salkau;
#};


#print $kilkline;

if ($kilkline>1) {
print '<div  style="float:left; width: 20%; background-color: #ffffff;">.</div>';

#if ($mova eq "Ua") {
#print '<div  style="float:left; width: 15%; background-color: #ffffff;">Сальдо вхідне:</div>';

#}else{
#print '<div  style="float:left; width: 15%; background-color: #ffffff;">Сальдо входящее:</div>';
#}

#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salpochd).'</font></div>';
#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salpochk).'</font></div>';
#print ' <div  style="clear:both;"></div>';


if ($mova eq "Ua") {
#print '<div  style="float:left; width: 24%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. Всього по: '.$mdokdis.'</div>';
}else{
#print '<div  style="float:left; width: 24%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. Всего по: '.$mdokdis.'</div>';
}

#my $saldisx=0;
#my $salkisx=0;

#if ($salpochd>0) {

#$saldisx=$salpochd+$itdebet-$itkredit;
#if ($saldisx<0) {
#$salkisx=-$saldisx;

#$saldisx=0;
#};

#}else{

#$salkisx=$salpochk-$itdebet+$itkredit;
#if ($salkisx<0) {
#$saldisx=-$salkisx;
#$salkisx=0;
#};

#};
# вихыдне сальдо по субрахунку
#$isaldebss=$isaldebss+$saldisx;
#$isalkrss=$isalkrss+$salkisx;
#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itdebsch).'</font></div>';
#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itkredsch).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itdebet).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itkredit).'</font></div>';

print ' <div  style="clear:both;"></div>';
$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}

$kilkline=0;
};

#if ($mova eq "Ua") {
#print '<div  style="float:left; width: 40%; background-color: #ffffff;">.</div>';
#print '<div  style="float:left; width: 20%; background-color: #ffffff;">на кінець місяця:</div>';
#}else{
#print '<div  style="float:left; width: 40%; background-color: #ffffff;">.</div>';
#print '<div  style="float:left; width: 20%; background-color: #ffffff;">на конец месяца:</div>';
#}

#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$saldisx).'</font></div>';
#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salkisx).'</font></div>';
#print ' <div  style="clear:both;"></div>';
#$printline=$printline+1;
#if ($printline >=40) {
#&shapprint();
#}


# кінець distict KAU
};

$sqls ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  booc=2';
$sths = $dbhr->prepare($sqls);
$sths->execute();
($salsubd) = $sths->fetchrow();

$sqls ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  booc=3';
$sths = $dbhr->prepare($sqls);
$sths->execute();
($salsubk) = $sths->fetchrow();


$salpochd=0;
$salpochk=0;
if ($salsubd>$salsubk) {
$salpochd=$salsubd-$salsubk;
$psaldebss=$psaldebss+$salpochd;
}else{
$salpochk=$salsubk-$salsubd;
$psalkrss=$psalkrss+$salpochk;
};



if ($mova eq "Ua") {
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Всього по:'.$choice.'/'.$choicecoc.'-'.$ocnazva.'</div>';
}else{
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Итого по:'.$choice.'/'.$choicecoc.'-'.$ocnazva.'</div>';
}

print '<div  style="float:left; width: 49%; background-color: #ffffff;">________________________________</div>';
print ' <div  style="clear:both;"></div>';

$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}


if ($mova eq "Ua") {
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Сальдо вхідне:</div>';
}else{
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Сальдо входящее:</div>';
}

print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salpochd).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salpochk).'</font></div>';
#print ' <div  style="clear:both;"></div>';


if ($mova eq "Ua") {
#print '<div  style="float:left; width: 24%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. Всього обороти:</div>';
}else{
#print '<div  style="float:left; width: 24%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. Всего обороты:</div>';
}


#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itdebsch).'</font></div>';
#print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itkredsch).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itdebsch).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itkredsch).'</font></div>';

print ' <div  style="clear:both;"></div>';

$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}

my $saldisx=0;
my $salkisx=0;

if ($salpochd>0) {

$saldisx=$salpochd+$itdebsch-$itkredsch;
if ($saldisx<0) {
$salkisx=-$saldisx;

$saldisx=0;
};

}else{

$salkisx=$salpochk-$itdebsch+$itkredsch;
if ($salkisx<0) {
$saldisx=-$salkisx;
$salkisx=0;
};

};



if ($mova eq "Ua") {
print '<div  style="float:left; width: 40%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 20%; background-color: #ffffff;">на кінець місяця:</div>';
}else{
print '<div  style="float:left; width: 40%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 20%; background-color: #ffffff;">на конец месяца:</div>';
}

print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$saldisx).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salkisx).'</font></div>';
print ' <div  style="clear:both; "></div>';

$debsch=$debsch+$itdebsch;
$kredsch=$kredsch+$itkredsch;

$psdebsch=$psdebsch+$psaldebss;
$pskrsch=$pskrsch+$psalkrss;

$isaldebsch=$isaldebsch+$saldisx;
$isalkrsch=$isalkrsch+$salkisx;


# кінець обробки рахунку
};


#$sqlr ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'"';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

#my $saldo = $sthr->fetchrow();


if ($mova eq "Ua") {
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Всього по : '.$choice.'</div>';
}else{
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Итого по : '.$choice.'</div>';
}

print '<div  style="float:left; width: 49%; background-color: #ffffff;">________________________________</div>';
print ' <div  style="clear:both;"></div>';

#if ($mova eq "Ua") {
#print '<div  style="float:left; width: 9%; background-color: #ffffff;">Загалом:</div>';
#}else{
#print '<div  style="float:left; width: 9%; background-color: #ffffff;">Всего:</div>';
#}


print '<div  style="float:left; width: 14%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$psdebsch).'</font></div>';
print '<div  style="float:left; width: 14%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$pskrsch).'</font></div>';

print '<div  style="float:left; width: 14%; background-color: #ffffff;">'.sprintf("%19.2f",$debsch).'</div>';
print '<div  style="float:left; width: 14%; background-color: #ffffff;">'.sprintf("%19.2f",$kredsch).'</div>';
print '<div  style="float:left; width: 14%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($isaldebsch)).'</font></div>';
print '<div  style="float:left; width: 14%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($isalkrsch)).'</font></div>';
print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Відповідальний за розробку:</div>';
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Перевірив:</div>';
}else{
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Ответственній за выпуск:</div>';
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Ведомость проверил:</div>';
}


$sthr->finish;
$dbhr->disconnect;




# зміна форми дати та перекласти номер місяця в його назву
sub perekladmis {
#print $outdate;
$outdate =~s/(\d{4})-(\d{2})-(\d{2})/$3\.$2\.$1/;
$yearp= $1;
$monthp= $2;
$dayp = $3;

#print $outdate;
#print $monthp;
if ($mova eq "Ua") {

if ($monthp eq '01') {
$simmonth= "січень";
}elsif ($monthp eq '02') {
$simmonth= "лютий";
}elsif ($monthp eq '03') {
$simmonth= "березень";
}elsif ($monthp eq '04') {
$simmonth= "квітень";
}elsif ($monthp eq '05') {
$simmonth= "травень";
}elsif ($monthp eq '06') {
$simmonth= "червень";
}elsif ($monthp eq '07') {
$simmonth= "липень";
}elsif ($monthp eq '08') {
$simmonth= "серпень";
}elsif ($monthp eq '09') {
$simmonth= "вересень";
}elsif ($monthp eq '10') {
$simmonth= "жовтень";
}elsif ($monthp eq '11') {
$simmonth= "листопад";
}elsif ($monthp eq '12') {
$simmonth= "грудень";
}

}else{

if ($monthp eq '01') {
$simmonth= "январь";
}elsif ($monthp eq '02') {
$simmonth= "февраль";
}elsif ($monthp eq '03') {
$simmonth= "март";
}elsif ($monthp eq '04') {
$simmonth= "апрель";
}elsif ($monthp eq '05') {
$simmonth= "май";
}elsif ($monthp eq '06') {
$simmonth= "июнь";
}elsif ($monthp eq '07') {
$simmonth= "июль";
}elsif ($monthp eq '08') {
$simmonth= "август";
}elsif ($monthp eq '09') {
$simmonth= "сентябрь";
}elsif ($monthp eq '10') {
$simmonth= "октябрь";
}elsif ($monthp eq '11') {
$simmonth= "ноябрь";
}elsif ($monthp eq '12') {
$simmonth= "декабрь";
}

}
return $simmonth
};

sub shapprint {
if ($mova eq "Ua") {

print '<div  style="float:left; width: 7%; text-align: left; page-break-before: always; background-color: #ffffff;">Лист '.$numpage.'</div>';
print '<div  style="float:left; width: 90%; text-align: center; background-color: #ffffff;"> Оборотна відомість по рахунку: '.$choice.' за '.$smonth.' '.$syearp.'р.</div>';
#print '<div  style="width: 100%; text-align: center; background-color: #ffffff;">Оборотна відомість по рахунку: '.$choice.'/'.$choicecoc.' за '.$smonth.' '.$syearp.'р.</div>';
}else{
print '<div  style="float:left; width: 7%; text-align: left; page-break-before: always; background-color: #ffffff;">Лист '.$numpage.'</div>';
print '<div  style="float:left; width: 90%; text-align: center; background-color: #ffffff;">Оборотная ведомость по счету: '. $choice.' за '.$smonth.''.$date.' '.$syearp.'р.</div>';
}

print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {

print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">№ док.</div</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">КАУ.</div</div>';

print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Рахунок</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Дата</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Дебет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Кредіт</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 25%; background-color: #ffffff;">Коментар</div>';
}else{
print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">№ докум.</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">КАУ.</div</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Счет/СС</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Дата</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Дебет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Кредит</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 25%; background-color: #ffffff;">Коментарий</div>';
};
print ' <div  style="clear:both;"></div>';

print '<div align="center" style="border: 0px solid #000000; float:left; width: 90%; background-color: #ffffff;">'.$choice.'/'.$choicecoc.'-'.$ocnazva.'</div>';
print ' <div  style="clear:both;"></div>';
$printline=3;
$numpage=$numpage+1;
};