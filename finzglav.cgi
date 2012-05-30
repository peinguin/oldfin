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


my $base="f340";
# потым зміню на таблицю сальдо нового місяця
my $basesal="f330";
my $basebeg="fskau331";

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
$basebeg="fskau331t";
}else{
$base="f340";
$basesal="f330";
$basebeg="fskau331";
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
#print $basebeg;
#___________________________

#print "-----------";
#print $datapoch;
#print $q->param('term1');
my $choice=68;
if ($q->param('term1')){
$choice=$q->param('term1');
};

my $choicecoc=0;
if ($q->param('term2')){
$choicecoc=$q->param('term2');
};

# загальні змінні для рахунку
# saldo початкове субрахунок
my $salpochd=0;
my $salpochk=0;
my $psaldebss=0;
my $psalkrss=0;

my $saldisx=0;
my $salkisx=0;


my $debsch=0;
my $kredsch=0;

# С початку року
my $debschny=0;
my $kredschny=0;


my $psdebsch=0;
my $pskrsch=0;

my $isaldebsch=0;
my $isalkrsch=0;

my $itdebsch=0;
my $itkredsch=0;
my $itdspr=0;
my $itkspr=0;


#my $isaldebss=0;
#my $isalkrss=0;



# тут отримаємо дату з якою працюємо

$sqlr ='SELECT data FROM '.$base.'';
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

&shapprint();

#$sqlglav ='SELECT DISTINCT t1.oc  AS oc,t2.oc  AS oc,t3.oc  AS oc FROM '.$base.' AS t1,'.$basesal.' AS t2,'.$basebeg.' AS t3';

$sqlglav ='(SELECT t1.oc AS oc FROM '.$base.' AS t1) UNION (SELECT t2.oc AS oc FROM '.$basesal.' AS t2) UNION (SELECT t3.oc AS oc FROM '.$basebeg.' AS t3)';

#$sqlglav ='SELECT DISTINCT oc FROM '.$base.'  WHERE oc="'.$choice.'"';
$sqlglav = $sqlglav . ' ORDER BY oc';
$sthglav = $dbhr->prepare($sqlglav);
$sthglav->execute();

while (($mtekoc) = $sthglav->fetchrow()){;

$choice=$mtekoc;

$debsch=0;
$kredsch=0;

# С початку року
$debschny=0;
$kredschny=0;

$psdebsch=0;
$pskrsch=0;

$isaldebsch=0;
$isalkrsch=0;



$sqlr ='SELECT rahname FROM fnazrah WHERE oc="'.$choice.'"';
$sqlr = $sqlr . ' ORDER BY oc,coc';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$ocnazva = $sthr->fetchrow();

print '<div align="center" style="border: 0px solid #000000; float:left; width: 40%; background-color: #ffffff;">'.$choice.'-'.$ocnazva.'</div>';
#print ' <div  style="clear:both;"></div>';

&subrahunok();

$deb=$deb+$debsch;
$kred=$kred+$kredsch;

$debny=$debny+$debschny;
$kredny=$kredny+$kredschny;

$psdeb=$psdeb+$psdebsch;
$pskr=$pskr+$pskrsch;

$isaldeb=$isaldeb+$isaldebsch;
$isalkr=$isalkr+$isalkrsch;

if ($mova eq "Ua") {
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Всього по : '.$choice.'</div>';
}else{
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Итого по : '.$choice.'</div>';
}

print '<div  style="float:left; width: 49%; background-color: #ffffff;">________________________________</div>';
print ' <div  style="clear:both;"></div>';

print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$psdebsch).'</font></div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$pskrsch).'</font></div>';

print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$debsch).'</div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$kredsch).'</div>';

print '<div  style="float:left; width: 4%; background-color: #ffffff;">п.р.:</div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$debschny).'</div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$kredschny).'</div>';


print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($isaldebsch)).'</font></div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($isalkrsch)).'</font></div>';
print ' <div  style="clear:both;"></div>';

# кінець обробки  distic рахунку
};


if ($mova eq "Ua") {
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Загалом : </div>';
}else{
print '<div align="center" style="border: 0px solid #000000; float:left; width: 50%; background-color: #ffffff;">Итого : </div>';
}

print '<div  style="float:left; width: 49%; background-color: #ffffff;">________________________________</div>';
print ' <div  style="clear:both;"></div>';

print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$psdeb).'</font></div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$pskr).'</font></div>';

print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$deb).'</div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$kred).'</div>';

print '<div  style="float:left; width: 4%; background-color: #ffffff;">п.р.:</div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$debny).'</div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;">'.sprintf("%19.2f",$kredny).'</div>';

print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($isaldeb)).'</font></div>';
print '<div  style="float:left; width: 12%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($isalkr)).'</font></div>';
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
print '<div  style="float:left; width: 90%; text-align: center; background-color: #ffffff;"> Г О Л О В Н А  К Н И Г А за '.$smonth.' '.$syearp.'р.</div>';
}else{
print '<div  style="float:left; width: 7%; text-align: left; page-break-before: always; background-color: #ffffff;">Лист '.$numpage.'</div>';
print '<div  style="float:left; width: 90%; text-align: center; background-color: #ffffff;">Г Л А В Н А Я К Н И Г А за '.$smonth.''.$date.' '.$syearp.'р.</div>';
}

print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Рах./CубР</div</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Кор.р/СубР</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Дебет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Кредіт</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Дебет з п.р.</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Кредіт з п.р.</div>';
}else{
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Счет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Корсчет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Дебет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Кредит</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Дебет с н.г.</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 15%; background-color: #ffffff;">Кредит с н.г.</div>';
};

print ' <div  style="clear:both;"></div>';
#print '<div align="center" style="border: 0px solid #000000; float:left; width: 90%; background-color: #ffffff;">'.$choice.'/'.$choicecoc.'-'.$ocnazva.'</div>';
#print ' <div  style="clear:both;"></div>';
$printline=3;
$numpage=$numpage+1;
};


sub subrahunok {
$sqlsch ='(SELECT t1.coc AS coc FROM '.$base.' AS t1 WHERE oc="'.$choice.'") UNION (SELECT t2.coc AS coc FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'") UNION (SELECT t3.coc AS coc FROM '.$basebeg.' AS t3 WHERE oc="'.$choice.'")';
$sqlsch = $sqlsch . ' ORDER BY coc';
$sthsch = $dbhr->prepare($sqlsch);
$sthsch->execute();

while (($mtekcoc) = $sthsch->fetchrow()) {;

$itdebsch=0;
$itkredsch=0;
$itdspr=0;
$itkspr=0;


#$isaldebss=0;
#$isalkrss=0;

#print $mtekcoc;
$choicecoc=$mtekcoc;

$sqlr ='SELECT rahname FROM fnazrah WHERE oc="'.$choice.'" and coc="'.$mtekcoc.'"';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$ocnazva = $sthr->fetchrow();

print '<div align="center" style="border: 0px solid #000000; float:left; width: 40%; background-color: #ffffff;">'.$choice.'/'.$mtekcoc.'-'.$ocnazva.'</div>';
print ' <div  style="clear:both;"></div>';

#---------------

$sqlr = '(SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,SUM(t1.summa) AS summa,t1.booc AS booc,t1.data AS data FROM '.$base.' AS t1 WHERE oc="'.$choice.'" and coc="'.$mtekcoc.'" GROUP BY booc,oc,coc,kc,ckc) UNION (SELECT t2.oc AS oc,t2.coc AS coc,t2.kc AS kc,t2.ckc AS ckc,SUM(t2.summa) AS summa,t2.booc AS booc,null AS data  FROM '.$basebeg.' AS t2 WHERE oc="'.$choice.'" and coc="'.$mtekcoc.'" GROUP BY booc,oc,coc,kc,ckc)';

$sqlr = $sqlr . ' ORDER BY oc,coc,kc,ckc';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

my ($oct,$coct,$kct,$ckct)=(0,0,0,0);
my ($oc1,$coc1,$kc1,$ckc1)=(0,0,0,0);
my $one=1;
my ($sumprd,$sumprk,$sumprdny,$sumprkny)=(0,0,0,0);

while (($oc1,$coc1,$kc1,$ckc1,$sum1,$mbooc,$mdata) = $sthr->fetchrow()) {;

#print $sum1,$mbooc;
#print $kc1,$ckc1;

if ($one==1) {
($oct,$coct,$kct,$ckct)=($oc1,$coc1,$kc1,$ckc1);
#($oct,$coct)=($oc1,$coc1);
#$kct=$kc1;
#$ckct=$ckc1;
$one=0;
};

if ($mdata == null) {
#print "1111111111";
if ($mbooc==2 or $mbooc==4 ) {
$itdspr=$itdspr+$sum1;
}else{
$itkspr=$itkspr+$sum1;
};

}else{

if ($mbooc==2 or $mbooc==4 ) {
$itdebsch=$itdebsch+$sum1;
}else{
$itkredsch=$itkredsch+$sum1;
};

};

#print '<div>'.$oc1.','.$coc1.','.$kc1.','.$ckc1.'';
#print "--111-----------";
#print ''.$oct.','.$coct.','.$kct.','.$ckct.'</div>';


if ($oct==$oc1 and $coct==$coc1 and $kct==$kc1 and $ckct==$ckc1) {

if ($mdata == null) {
if ($mbooc==2 or $mbooc==4 ) {
$sumprdny=$sum1;
}else{
$sumprkny=$sum1;
};

}else{

if ($mbooc==2 or $mbooc==4 ) {
$sumprd=$sum1;
}else{
$sumprk=$sum1;
};

};

}else{

#if ($coct == null) {
#$coct="-";
#};

#if ($ckct == null) {
#$ckct="-";
#};




#print '<div  style="float:left; width: 20%; background-color: #ffffff; color: #000; font-size: 20px;">'.$oct.' '.$coct.' '.$kct.' '.$ckct.'</div>';


print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">'.$oct.'</div>';
print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">';
if ($coct== null) {
print "-";
}else{
print sprintf("%2.0f",$coct);
};
print '</div>';



print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">'.sprintf("%2.0f",$kct).'</div>';
print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">';
if ($ckct== null) {
print "-";
}else{
print sprintf("%2.0f",$ckct);
};
print '</div>';


print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$sumprd).'</div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$sumprk).'</div>';
#print '<div  style="float:left; width: 12%; text-align: center; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%10.2f",$sumprk).'</font></div>';

# пыдготувати для оборотыв з початку року 
print '<div  style="float:left; width: 15%; background-color: #ffffff;"><font color="#000000" size="3">.</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",($sumprdny+$sumprd)).'</div>';

print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",($sumprkny+$sumprk)).'</div>';

print ' <div  style="clear:both;"></div>';

($oct,$coct,$kct,$ckct)=($oc1,$coc1,$kc1,$ckc1);

($sumprd,$sumprk,$sumprdny,$sumprkny)=(0,0,0,0);

if ($mdata == null) {
if ($mbooc==2 or $mbooc==4 ) {
$sumprdny=$sum1;
}else{
$sumprkny=$sum1;
};

}else{

if ($mbooc==2 or $mbooc==4 ) {
$sumprd=$sum1;
}else{
$sumprk=$sum1;
};

};

# кінець рядка проводки 
};

$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}

# кінець розрахунок оборотів по субрахунку
};

#остання проводка 

if ($oct > 0 and $kct > 0) {

if ($coct == null) {
$coct="-";
};

if ($ckct == null) {
$ckct="-";
};

#print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$oct.'</font></div>';
#print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$coct.'</font></div>';

#print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 14px;">'.sprintf("%2.0f",$kct).'</div>';
#print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 14px;">'.sprintf("%2.0f",$ckct).'</div>';

#print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$kct.'</font></div>';
#print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$ckct.'</font></div>';

print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">'.$oct.'</div>';
print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">';
if ($coct== null) {
print "-";
}else{
print sprintf("%2.0f",$coct);
};
print '</div>';



print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">'.sprintf("%2.0f",$kct).'</div>';
print '<div  style="float:left; width: 5%; background-color: #ffffff; color: #000; font-size: 16px;">';
if ($ckct== null) {
print "-";
}else{
print sprintf("%2.0f",$ckct);
};
print '</div>';
 
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$sumprd).'</div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$sumprk).'</div>';

# пыдготувати для оборотыв з початку року 
print '<div  style="float:left; width: 15%; background-color: #ffffff;"><font color="#000000" size="3">.</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",($sumprdny+$sumprd)).'</div>';

print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",($sumprkny+$sumprk)).'</div>';

print ' <div  style="clear:both;"></div>';

#$kct=$kc1;
#$ckct=$ckc1;
#($oct,$coct)=($oc1,$coc1);
($oct,$coct,$kct,$ckct)=($oc1,$coc1,$kc1,$ckc1);

($sumprd,$sumprk,$sumprdny,$sumprkny)=(0,0,0,0);

if ($mdata == null) {
if ($mbooc==2 or $mbooc==4 ) {
$sumprdny=$sum1;
}else{
$sumprkny=$sum1;
};

}else{

if ($mbooc==2 or $mbooc==4 ) {
$sumprd=$sum1;
}else{
$sumprk=$sum1;
};

};
# кынець друку останньоъ проводки
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
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. Всього обороти:</div>';
}else{
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. Всего обороты:</div>';
}


print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itdebsch).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",$itkredsch).'</font></div>';

if ($mova eq "Ua") {
#print '<div  style="float:left; width: 24%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. З початку року:</div>';
}else{
#print '<div  style="float:left; width: 24%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 18%; background-color: #ffffff;">. С начала года:</div>';
}

print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",($itdspr+$itdebsch)).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%19.2f",($itkspr+$itkredsch)).'</font></div>';


print ' <div  style="clear:both;"></div>';

$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}
# початкове сальдо
$salpochd=0;
$salpochk=0;
# вихідне сальдо
$saldisx=0;
$salkisx=0;


if (($choice==37) or ($choice==63) or ($choice==68)) {
&kausaldo();
}else{
$sqls ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  booc=2';
$sths = $dbhr->prepare($sqls);
$sths->execute();
($salsubd) = $sths->fetchrow();

$sqls ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  booc=3';
$sths = $dbhr->prepare($sqls);
$sths->execute();
($salsubk) = $sths->fetchrow();

if ($salsubd>$salsubk) {
$salpochd=$salsubd-$salsubk;
$psaldebss=$psaldebss+$salpochd;
}else{
$salpochk=$salsubk-$salsubd;
$psalkrss=$psalkrss+$salpochk;
};


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


#кінець розрахунку saldo
};

if ($mova eq "Ua") {
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Сальдо вхідне:</div>';
}else{
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Сальдо входящее:</div>';
}

print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salpochd).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salpochk).'</font></div>';
#print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {
print '<div  style="float:left; width: 4%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 20%; background-color: #ffffff;">на кінець місяця:</div>';
}else{
print '<div  style="float:left; width: 4%; background-color: #ffffff;">.</div>';
print '<div  style="float:left; width: 20%; background-color: #ffffff;">на конец месяца:</div>';
}

print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$saldisx).'</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$salkisx).'</font></div>';
print ' <div  style="clear:both; "></div>';

$printline=$printline+1;
if ($printline >=40) {
&shapprint();
}

$debsch=$debsch+$itdebsch;
$kredsch=$kredsch+$itkredsch;

# С початку року
$debschny=$debschny+$itdspr+$itdebsch;
$kredschny=$kredschny+$itkspr+$itkredsch;

$psdebsch=$psdebsch+$salpochd;
$pskrsch=$pskrsch+$salpochk;

$isaldebsch=$isaldebsch+$saldisx;
$isalkrsch=$isalkrsch+$salkisx;


#$debsch=$debsch+$itdebsch;
#$kredsch=$kredsch+$itkredsch;

#$psdebsch=$psdebsch+$psaldebss;
#$pskrsch=$pskrsch+$psalkrss;

#$isaldebsch=$isaldebsch+$isaldebss;
#$isalkrsch=$isalkrsch+$isalkrss;

# кінець обробки субрахунку
};
};


sub kausaldo {
# загальні змінні для рахунку
#---------------
my ($mbooc,$msummaop,$midzak,$tsprnum);

$sqlkau1 ='(SELECT t1.idzak AS idzak,t1.sprnum AS sprnum FROM '.$base.' AS t1 WHERE oc="'.$choice.'" and coc="'.$choicecoc.'") UNION (SELECT t2.idzak AS idzak,t2.sprnum AS sprnum  FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'" and coc="'.$choicecoc.'")';
$sqlkau1 = $sqlkau1 . ' ORDER BY idzak';
$sthkau1 = $dbhr->prepare($sqlkau1);
$sthkau1->execute();
while (($midzakdis,$tsprnum) = $sthkau1->fetchrow()){;

# поточный KAU
my $itdebet=0;
my $itkredit=0;

my ($sqlk,$sthk,$salkau);
$sqlk ='SELECT booc,summa FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and idzak="'.$midzakdis.'" and sprnum="'.$tsprnum.'"';
#$sqlk = $sqlk . ' ORDER BY idzak,data,kc,ckc,dok';
$sthk = $dbhr->prepare($sqlk);
$sthk->execute();
while (($mbooc,$msummaop) = $sthk->fetchrow()){;

if ($mbooc==2 or $mbooc==4 ) {
$itdebet=$itdebet+$msummaop;
}else{
$itkredit=$itkredit+$msummaop;
};

# кінець обробки вибраного kau
};


$sqlk ='SELECT saldo,booc FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  idzak="'.$midzakdis.'" and sprnum="'.$tsprnum.'"';
$sthk = $dbhr->prepare($sqlk);
$sthk->execute();
($salkau,$mbooc) = $sthk->fetchrow();

$salpd=0;
$salpk=0;
if ($mbooc==2) {
$salpd=$salkau;
$salpochd=$salpochd+$salkau;
}else{
$salpk=$salkau;
$salpochk=$salpochk+$salkau;
};

$saldisx1=0;
$salkisx1=0;

if ($salpd>0) {

$saldisx1=$salpd+$itdebet-$itkredit;
if ($saldisx1<0) {
$salkisx1=-$saldisx1;
$saldisx1=0;
};

}else{

$salkisx1=$salpk-$itdebet+$itkredit;
if ($salkisx1<0) {
$saldisx1=-$salkisx1;
$salkisx1=0;
};

};
# вихідне сальдо по субрахунку
$saldisx=$saldisx+$saldisx1;
$salkisx=$salkisx+$salkisx1;

# кінець distict KAU
};

};