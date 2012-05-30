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


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");
#$dbhr->do("SET collation_connection = utf8_general_ci");


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
my $choice=31;
if ($q->param('term1')){
$choice=$q->param('term1');
}

my $choicecoc=0;

if ($q->param('term2')){
$choicecoc=$q->param('term2');
}

my $rahunok=$choicecoc;
#my $basenazva="fnazrah";
if ($choicecoc > 0) {
$sqlr ='SELECT rahname FROM fnazrah WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
}else{
$sqlr ='SELECT rahname FROM fnazrah WHERE oc="'.$choice.'"';
};
$sqlr = $sqlr . ' ORDER BY oc,coc';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

my $ocnazva = $sthr->fetchrow();



#print $date;
# тут до назви потім додати позначку користувача до назви файлу
#---------------
#$sqlr ='SELECT id,oc,coc,kc,ckc,booc,data,kau,kaukc,summa,priznak,kol1,kol2,kol3 FROM '.$base.'  WHERE satelit = "'.$satel.'" and id="'.$tid.'"';

my ($moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mdok);

#my ($mrecnum,$moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mdok);

# тут отримаємо дату з якою працюємо

$sqlr ='SELECT data FROM '.$base.' WHERE oc="'.$choice.'"';

$sqlr = $sqlr . ' ORDER BY data';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$mdataop = $sthr->fetchrow();
#print $sqlr;

# сформуємо дати для шапки таблиці
my $outdate = $mdataop;
my $smonth =perekladmis();
my $outyear = $mdataop;
$outyear =~s/(\d{4})-(\d{2})-(\d{2})/$3\.$2\.$1/;
my $syearp= $1;

#$sqlr ='SELECT t1.oc,t1.coc,t1.kc,t1.ckc,t1.booc,t1.data,t1.kau,t1.kaukc,t1.summa,t1.priznak,t1.dok,t2.saldo FROM '.$base.' AS t1, '.$basesal.' AS t2 WHERE t1.oc = "'.$choice.'" and t2.oc="'.$choice.'"';

#$sqlr ='SELECT id,oc,coc,kc,ckc,booc,data,kau,kaukc,summa,priznak,dok FROM '.$base.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';


#$sqlr ='SELECT t1.oc,t1.coc,t1.kc,t1.ckc,t1.booc,t1.data,t1.kau,t1.kaukc,t1.summa,t1.priznak,t1.dok,t2.saldo,t2.oc,t2.coc FROM '.$base.' AS t1 LEFT  JOIN '.$basesal.' AS t2 ON t1.oc = "'.$choice.'" and t2.oc="'.$choice.'" WHERE t1.oc = "'.$choice.'" and t2.oc="'.$choice.'"';

#$sqlr ='SELECT t1.oc,t1.coc,t1.kc,t1.ckc,t1.booc,t1.data,t1.kau,t1.kaukc,t1.summa,t1.priznak,t1.dok,t2.saldo FROM '.$base.' AS t1 LEFT  JOIN '.$basesal.' AS t2 ON t1.oc=t2.oc WHERE t1.oc = "'.$choice.'" and t2.oc="'.$choice.'"';

#$sqlr ='SELECT t1.oc,t1.coc,t1.kc,t1.ckc,t1.booc,t1.data,t1.kau,t1.kaukc,t1.summa,t1.priznak,t1.dok,t2.saldo FROM '.$base.' AS t1 LEFT  JOIN '.$basesal.' AS t2 ON t1.oc=t2.oc WHERE  t1.coc # t2.coc and t1.oc = "'.$choice.'" and t2.oc="'.$choice.'"';

#$sqlr ='SELECT t1.oc,t1.coc,t1.kc,t1.ckc,t1.booc,t1.data,t1.kau,t1.kaukc,t1.summa,t1.priznak,t1.dok,t2.saldo FROM '.$base.' AS t1 RIGHT JOIN '.$basesal.' AS t2 USING (oc,coc) WHERE  t1.coc # t2.coc and t1.oc = "'.$choice.'" and t2.oc="'.$choice.'"';

#$sqlr ='SELECT t1.oc,t1.coc,t1.kc,t1.ckc,t1.booc,t1.data,t1.kau,t1.kaukc,t1.summa,t1.priznak,t1.dok,t2.saldo,t2.oc,t2.coc FROM '.$base.' AS t1 INNER JOIN '.$basesal.' AS t2 USING (oc) WHERE t1.oc="'.$choice.'" and t2.oc="'.$choice.'" and t1.coc # t2.coc';

#$sqlr = $sqlr . ' GROUP BY coc';
#print $sqlr;

#$sqlr ='(SELECT t1.oc AS oc,t1.coc AS coc,t1.summa AS summa FROM '.$base.' AS t1 WHERE t1.oc="'.$choice.'") UNION ALL (SELECT t2.oc AS oc,t2.coc AS coc,t2.saldo AS summa FROM '.$basesal.' AS t2) WHERE t2.oc="'.$choice.'" and t1.coc # t2.coc ORDER BY coc';
#sqlr ='SELECT SQL_CALC_FOUND_ROWS id,oc,coc,booc,kau,saldo,priznak,zakname FROM '.$base.'';


#$sqlr ='(SELECT t1.oc AS oc,t1.coc AS coc,t1.summa AS summa,t1.dok AS dok FROM '.$base.' AS t1 WHERE oc="'.$choice.'") UNION ALL (SELECT t2.oc AS oc,t2.coc AS coc,t2.saldo AS summa,null AS dok FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'")';

if ($choicecoc == 0) {
$sqlr ='(SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,t1.booc AS booc,t1.data AS data,t1.priznak AS priznak,t1.summa AS summa,t1.dok AS dok FROM '.$base.' AS t1 WHERE oc="'.$choice.'") UNION ALL (SELECT t2.oc AS oc,t2.coc AS coc,null AS kc,null AS ckc,null AS booc,null AS data,null AS priznak,t2.saldo AS summa,null AS dok FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'")';
}else{
$sqlr ='SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,t1.booc AS booc,t1.data AS data,t1.priznak AS priznak,t1.summa AS summa,t1.dok AS dok FROM '.$base.' AS t1 WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
};

#$sqlr ='(SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,t1.booc AS booc,t1.data AS data,t1.kau AS kau,t1.kaukc AS kaukc,t1.summa AS summa,t1.priznak AS priznak,t1.dok AS dok FROM '.$base.' AS t1 WHERE oc="'.$choice.'")';
#$sqlr = $sqlr . ' UNION ALL (SELECT t2.oc AS oc,t2.coc AS coc,null AS kc,null AS ckc,t2.booc AS booc,null AS data,t2.kau AS kau,null AS kaukc,t2.saldo AS summa,t2.priznak AS priznak,null AS dok FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'")';
$sqlr = $sqlr . ' ORDER BY oc,coc,data,kc,ckc,dok';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();


if ($moc == 30) {

if ($mova eq "Ua") {
print '<div  style="width: 100%;text-align: center; background-color: #ffffff;">Оборотна відомість по касі: '.$choice.'/'.$choicecoc.' за '.$smonth.' '.$syearp.'</div>';
}else{
print '<div  style="float:left; width: 100%; text-align: center; background-color: #ffffff;">Оборотная ведомость по кассе: '. $choice.'/'.$choicecoc.''. $naimss.' за '.$date.'</div>';
}

}else{
if ($choicecoc == 0) {
if ($mova eq "Ua") {
print '<div  style="width: 100%; text-align: center; background-color: #ffffff;">Оборотна відомість по рахунку: '.$choice.' за '.$smonth.' '.$syearp.'р.</div>';
}else{
print '<div  style="float:left; width: 100%; text-align: center; background-color: #ffffff;">Оборотная ведомость по счету: '.$choice.' за '.$smonth.' '.$syearp.'р.</div>';
}
}else{
if ($mova eq "Ua") {
print '<div  style="width: 100%; text-align: center; background-color: #ffffff;">Оборотна відомість по рахунку: '.$choice.'/'.$choicecoc.' за '.$smonth.' '.$syearp.'р.</div>';
}else{
print '<div  style="float:left; width: 100%; text-align: center; background-color: #ffffff;">Оборотная ведомость по счету: '.$choice.'/'.$choicecoc.' за '.$smonth.' '.$syearp.'р.</div>';
}

};

}

if ($mova eq "Ua") {
print ' <div  style="clear:both;"></div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">№ докум.</div</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 25%; background-color: #ffffff;">Призначення платежу</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Рахунок</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Дата</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Дебіт</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Кредіт</div>';
print ' <div  style="clear:both;"></div>';

}else{
print ' <div  style="clear:both;"></div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">№ докум.</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 25%; background-color: #ffffff;">Назначение платежа</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Счет/СС</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Дата</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Дебет</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 12%; background-color: #ffffff;">Кредит</div>';
print ' <div  style="clear:both;"></div>';
};

print '<div align="center" style="border: 0px solid #000000; float:left; width: 90%; background-color: #ffffff;">'.$ocnazva.'</div>';
print ' <div  style="clear:both;"></div>';

my $itdebet=0;
my $itkredit=0;

my $itdebsch=0;
my $itkredsch=0;

my $ittekdat=$date;
my $itteksch=0;
my $ittekss=0;

my $first=1;
my $kilkist=0;

my $debosr=0;
my $kredosr=0;

#while (($moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mdok,$msaldo,$msaloc,$msalcoc) = $sthr->fetchrow()){;
#while (($mrecnum,$moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mdok) = $sthr->fetchrow()){;

while (($moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mprizop,$msummaop,$mdok) = $sthr->fetchrow()){;

#print $mbooc;

if ($ittekdat eq $mdataop and  $itteksch==$mkc and  $ittekss==$mckc and ($first==0)) {

$kilkist=$kilkist+1;
if ($mbooc==2 or $mbooc==4 ) {
$itdebsch=$itdebsch+$msummaop;
}else{
$itkredsch=$itkredsch+$msummaop;
};
}else{

if ($kilkist>1) {
if ($mova eq "Ua") {
print '<div  style="float:left; width: 54%; background-color: #ffffff;">Всього по рах:'.$itteksch.''.$ittekss.' за '.$ittekdat.'</div>';
}else{
print '<div  style="float:left; width: 54%; background-color: #ffffff;">Всего по счету:'.$itteksch.''.$ittekss.' за '.$ittekdat.'</div>';
}

print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$itdebsch).'</font></div>';
print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$itkredsch).'</font></div>';
print ' <div  style="clear:both;"></div>';


};

$kilkist=1;
$itdebsch=0;
$itkredsch=0;


#print $msummaop;
#print "/";
#print $mbooc;
#print "/";

if ($mbooc==2 or $mbooc==4 ) {
$itdebsch=$itdebsch+$msummaop;
}else{
$itkredsch=$itkredsch+$msummaop;
};
#print $itdebsch,$itkredsch;

$ittekdat=$mdataop;
$itteksch=$mkc;
$ittekss=$mckc;

};


if (($choicecoc ne $mcoc) and ($first==0)) {

$sqls ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
#$sqls = $sqls . ' ORDER BY oc,coc';
$sths = $dbhr->prepare($sqls);
$sths->execute();

my $saldop = $sths->fetchrow();

if ($mova eq "Ua") {
print '<div  style="float:left; width: 24%; background-color: #ffffff;">Всього по Cубрах:'.$choice.'/'.$choicecoc.'</div>';
}else{
print '<div  style="float:left; width: 24%; background-color: #ffffff;">Всего по cубсчету:'.$choice.'/'.$choicecoc.'</div>';
}


print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$saldop).'</font></div>';
print '<div  style="float:left; width: 14%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$debosr).'</font></div>';
print '<div  style="float:left; width: 14%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$kredosr).'</font></div>';
print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($saldop+$debosr-$kredosr)).'</font></div>';
print ' <div  style="clear:both;"></div>';
$debosr=0;
$kredosr=0;
$choicecoc = $mcoc;

};


if ($mkc==null) {
#print $moc,$mcoc,$msummaop;

$sqln ='SELECT rahname FROM fnazrah WHERE oc="'.$moc.'" and coc="'.$mcoc.'"';
$sqln = $sqln . ' ORDER BY oc,coc';
$sthn = $dbhr->prepare($sqln);
$sthn->execute();
my $ocnazva = $sthn->fetchrow();

if ($mova eq "Ua") {
print '<div  style="float:left; width: 54%; background-color: #ffffff;">Сальдо по субрах:'.$moc.'/'.$mcoc.'-'.$ocnazva.'</div>';
}else{
print '<div  style="float:left; width: 54%; background-color: #ffffff;">Сальдо по субсчету:'.$moc.'/'.$mcoc.'-'.$ocnazva.'</div>';
}

print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$msummaop).'</font></div>';
print ' <div  style="clear:both;"></div>';

}else{

if ($first==1) {
$ittekdat=$mdataop;
$choicecoc=$mcoc;
$itteksch=$mkc;
$ittekss=$mckc;
$first=0;
};


if ($mbooc==2 or $mbooc==4 ) {
#$itdebsch=$itdebsch+$msummaop;
$itdebet=$itdebet+$msummaop;
$debosr=$debosr+$msummaop;
}else{
#$itkredsch=$itkredsch+$msummaop;
$itkredit=$itkredit+$msummaop;
$kredosr=$kredosr+$msummaop;
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

print '<div  style="float:left; width: 9%; background-color: #ffffff;"><font color="#000000" size="3">'.$mdok.'</font></div>';
print '<div  style="float:left; width: 25%; background-color: #ffffff;"><font color="#000000" size="3">'.$mprizop.'</font></div>';

print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$mkc.'</font></div>';
print '<div  style="float:left; width: 5%; background-color: #ffffff;"><font color="#000000" size="3">'.$mckcp.'</font></div>';

print '<div  style="float:left; width: 10%; background-color: #ffffff;"><font color="#000000" size="3">'.$mdataop.'</font></div>';

#print '<div  style="float:left; width: 10%; background-color: #ffffff;"><font color="#0000ff" size="2">'.$mbooc.'</font></div>';

if ($mbooc==2 or $mbooc==4 ) {
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$msummaop).'</div>';
print '<div  style="float:left; width: 12%; text-align: center; background-color: #ffffff;"><font color="#0000ff" size="3">-</font></div>';
}else{
print '<div  style="float:left; width: 12%; text-align: center; background-color: #ffffff;"><font color="#0000ff" size="2">-</font></div>';
print '<div  style="float:left; width: 12%; text-align: right; background-color: #eeffff;">'.sprintf("%10.2f",$msummaop).'</div>';
};
print ' <div  style="clear:both;"></div>';
#print '<div  style="float:left; width: 23%; background-color: #ffffff;"> '.$dz.' '.$idkrt.' '.$zfs.'</div>';


# кінець обходу якщо це салбдо субрах по якому немає руху коштів 
};



};
#Надруквати якщо останны рядки пыдбиваються
if ($kilkist>1) {
if ($mova eq "Ua") {
print '<div  style="float:left; width: 54%; background-color: #ffffff;">Всього по рах:'.$itteksch.''.$ittekss.' за '.$ittekdat.'</div>';
}else{
print '<div  style="float:left; width: 54%; background-color: #ffffff;">Всего по счету:'.$itteksch.''.$ittekss.' за '.$ittekdat.'</div>';
}

print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$itdebsch).'</font></div>';
print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$itkredsch).'</font></div>';
print ' <div  style="clear:both;"></div>';
};







if ($rahunok == 0) {
if ($choicecoc ne 0) {

$sqls ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
#$sqls = $sqls . ' ORDER BY oc,coc';
$sths = $dbhr->prepare($sqls);
$sths->execute();

my $saldop = $sths->fetchrow();

if ($mova eq "Ua") {
print '<div  style="float:left; width: 24%; background-color: #ffffff;">Всього по Cубрах:'.$choice.'/'.$choicecoc.'</div>';
}else{
print '<div  style="float:left; width: 24%; background-color: #ffffff;">Всего по cубсчету:'.$choice.'/'.$choicecoc.'</div>';
}


print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$saldop).'</font></div>';
print '<div  style="float:left; width: 14%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$debosr).'</font></div>';
print '<div  style="float:left; width: 14%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$kredosr).'</font></div>';
print '<div  style="float:left; width: 20%; text-align: left; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($saldop+$debosr-$kredosr)).'</font></div>';
print ' <div  style="clear:both;"></div>';
#$debosr=0;
#$kredosr=0;
#$choicecoc = $mcoc;

};






$sqlr ='SELECT SUM(saldo) FROM '.$basesal.' WHERE oc="'.$choice.'"';
}else{
$sqlr ='SELECT saldo FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'"';
};

$sqlr = $sqlr . ' ORDER BY oc,coc';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

my $saldo = $sthr->fetchrow();


if ($mova eq "Ua") {
print '<div  style="float:left; width: 9%; background-color: #ffffff;">Загалом:</div>';
}else{
print '<div  style="float:left; width: 9%; background-color: #ffffff;">Всего:</div>';
}


print '<div  style="float:left; width: 20%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",$saldo).'</font></div>';

print '<div  style="float:left; width: 20%; background-color: #ffffff;">'.sprintf("%19.2f",$itdebet).'</div>';
print '<div  style="float:left; width: 20%; background-color: #ffffff;">'.sprintf("%19.2f",$itkredit).'</div>';
print '<div  style="float:left; width: 20%; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%19.2f",($saldo+$itdebet-$itkredit)).'</font></div>';
print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Відповідальний за розробку:</div>';
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Перевірив:</div>';
}else{
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Ответственній за выпуск:</div>';
print '<div  style="float:left; width: 40%; background-color: #ffffff;">Ведомость проверил:</div>';
}



$sths->finish;
$sthn->finish;
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

