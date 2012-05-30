#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;
#use CGI;

my $mysql_table = '';
my $mysql_user = 'root';
my $mysql_pass = '';

my $mova="Ua";
#my $mova="Ru";
my $ocnazvapr ="";
my $syearp= "";
my $smonth ="";

my $dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");


my $base="f340";
# потым зміню на таблицю сальдо нового місяця
my $basesal="f330";
my $basebeg="fskau331";

my ($date,$tekdatanak,$day,$month,$year);

#print '<div>---------'.$q->param('dcheck').'</div>';

#my $termin;
my $mdata;

#if  ($q->param('dcheck')) {
#$termin=$q->param('dcheck');
#}

#if  ($termin eq "per2") {
#$base="f340new";
#$basesal="f330new";
#}else{
#$base="f340";
#$basesal="f330";
#}

#if  ($termin eq "per2") {
#$base="f340new";
$basenew="f330new";
#}else{
$base="f340";
$basesal="f330";
#}


my $sqlr ='TRUNCATE TABLE '.$basenew.'';
my $sthr = $dbhr->prepare($sqlr);
$sthr->execute();

$basenewob="fskau331t";


my $sqlr ='TRUNCATE TABLE '.$basenewob.'';
my $sthr = $dbhr->prepare($sqlr);
$sthr->execute();


my $choice=0;
#if ($q->param('term1')){
#$choice=$q->param('term1');
#};

my $choicecoc=0;
#if ($q->param('term2')){
#$choicecoc=$q->param('term2');
#};

# загальні змінні для рахунку
# saldo початкове субрахунок

my $mbooc=0;

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

# формування оборотів по кау з пчатку року для нового місяця

$sqlr = '(SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,SUM(t1.summa) AS summa,t1.booc AS booc,t1.idzak AS idzak,t1.idzakkc AS idzakkc,t1.kau AS kau,t1.kaukc AS kaukc,t1.idsimetr AS idsimetr,t1.doc AS doc,t1.ceh1 AS ceh1 FROM '.$base.' AS t1 GROUP BY booc,oc,coc,kc,ckc,idzak,idzakkc,doc,ceh1)';
$sqlr = $sqlr .  ' UNION (SELECT t2.oc AS oc,t2.coc AS coc,t2.kc AS kc,t2.ckc AS ckc,SUM(t2.summa) AS summa,t2.booc AS booc,t2.idzak AS idzak,t2.idzakkc AS idzakkc,t2.kau AS kau,t2.kaukc AS kaukc,t2.idsimetr AS idsimetr,t2.doc AS doc,t2.ceh1 AS ceh1  FROM '.$basebeg.' AS t2 GROUP BY booc,oc,coc,kc,ckc,idzak,idzakkc,doc,ceh1)';
#$sqlr = '(SELECT t1.oc AS oc,t1.coc AS coc,t1.kc AS kc,t1.ckc AS ckc,SUM(t1.summa) AS summa,t1.booc AS booc,t1.idzak AS idzak FROM '.$base.' AS t1 WHERE oc="'.$choice.'" and coc="'.$mtekcoc.'" GROUP BY booc,oc,coc,kc,ckc,izak) UNION (SELECT t2.oc AS oc,t2.coc AS coc,t2.kc AS kc,t2.ckc AS ckc,SUM(t2.summa) AS summa,t2.booc AS booc,t2.idzak AS idzak  FROM '.$basebeg.' AS t2 WHERE oc="'.$choice.'" and coc="'.$mtekcoc.'" GROUP BY booc,oc,coc,kc,ckc,idzak)';
#$sqlr = $sqlr . ' ORDER BY oc,coc,kc,ckc,booc';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

my ($oct,$coct,$kct,$ckct)=(0,0,0,0);
my ($oc1,$coc1,$kc1,$ckc1)=(0,0,0,0);
my $one=1;
my ($sumprd,$sumprk,$sumprdny,$sumprkny)=(0,0,0,0);

while (($oc1,$coc1,$kc1,$ckc1,$sum1,$mbooc,$midzak,$midzakkc,$mkau,$mkaukc,$midsimetr,$mdoc,$mceh) = $sthr->fetchrow()) {;

#print ($oc1,$coc1,$kc1,$ckc1,$sum1,$mbooc,$midzak);

$sqls = 'INSERT INTO '.$basenewob.' (oc,coc,kc,ckc,booc,summa,idzak,idzakkc,kau,kaukc,idsimetr,doc,ceh1)';
$sqls = $sqls .  ' VALUES ("'.$oc1.'","'.$coc1.'","'.$kc1.'","'.$ckc1.'","'.$mbooc.'","'.sprintf("%12.2f",$sum1).'","'.$midzak.'","'.$midzakkc.'","'.$mkau.'","'.$mkaukc.'","'.$midsimetr.'","'.$mdoc.'","'.$mceh.'")';



#print $sqls;
$sths = $dbhr->do($sqls);


};



# тут отримаємо дату з якою працюємо

#$sqlr ='SELECT data FROM '.$base.'';
#$sqlr = $sqlr . ' ORDER BY data';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#$mdataop = $sthr->fetchrow();
#print $sqlr;

# сформуємо дати для шапки таблиці
#$outdate = $mdataop;
#$smonth =perekladmis();
#my $outyear = $mdataop;
#$outyear =~s/(\d{4})-(\d{2})-(\d{2})/$3\.$2\.$1/;
#$syearp= $1;

#&shapprint();

#$sqlglav ='SELECT DISTINCT t1.oc  AS oc,t2.oc  AS oc,t3.oc  AS oc FROM '.$base.' AS t1,'.$basesal.' AS t2,'.$basebeg.' AS t3';

my $sqlglav ='(SELECT t1.oc AS oc FROM '.$base.' AS t1) UNION (SELECT t2.oc AS oc FROM '.$basesal.' AS t2) UNION (SELECT t3.oc AS oc FROM '.$basebeg.' AS t3)';
#$sqlglav ='SELECT DISTINCT oc FROM '.$base.'  WHERE oc="'.$choice.'"';
$sqlglav = $sqlglav . ' ORDER BY oc';
my $sthglav = $dbhr->prepare($sqlglav);
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

#$sqlr ='SELECT rahname FROM fnazrah WHERE oc="'.$choice.'"';
#$sqlr = $sqlr . ' ORDER BY oc,coc';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#$ocnazva = $sthr->fetchrow();

#print '<div align="center" style="border: 0px solid #000000; float:left; width: 40%; background-color: #ffffff;">'.$choice.'-'.$ocnazva.'</div>';
#print ' <div  style="clear:both;"></div>';

&subrahunok();

# сальдо по рахунку
$deb=$deb+$debsch;
$kred=$kred+$kredsch;
$debny=$debny+$debschny;
$kredny=$kredny+$kredschny;

$psdeb=$psdeb+$psdebsch;
$pskr=$pskr+$pskrsch;

$isaldeb=$isaldeb+$isaldebsch;
$isalkr=$isalkr+$isalkrsch;

#if ($mova eq "Ua") {
#print '<div align="center" style="border: 0px solid #000000; float:left; width: 10%; background-color: #ffffff;">Всього:'.$choice.'</div>';
#}else{
#print '<div align="center" style="border: 0px solid #000000; float:left; width: 10%; background-color: #ffffff;">Итого:'.$choice.'</div>';
#}

#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%10.2f",$psdebsch).'</font></div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%10.2f",$pskrsch).'</font></div>';

#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.sprintf("%10.2f",$debsch).'</div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.sprintf("%10.2f",$kredsch).'</div>';

#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.sprintf("%10.2f",$debschny).'</div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.sprintf("%10.2f",$kredschny).'</div>';


#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%10.2f",($isaldebsch)).'</font></div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#000000" size="3">'.sprintf("%10.2f",($isalkrsch)).'</font></div>';
#print ' <div  style="clear:both;"></div>';

#$printline=$printline+1;
#if ($printline >=40) {
#&shapprint();
#}

# кінець обробки  distic рахунку
};

#$sthr->finish;
#$sthsch->finish;
#$sths->finish;
#$sthk->finish;
#$sthkau1->finish;
$dbhr->disconnect;



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

#print $mtekcoc;
$choicecoc=$mtekcoc;

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

#print $kc1,$ckc1;

if ($one==1) {
($oct,$coct,$kct,$ckct)=($oc1,$coc1,$kc1,$ckc1);
#($oct,$coct)=($oc1,$coc1);
#$kct=$kc1;
#$ckct=$ckc1;
$one=0;
};

if ($mdata == null) {
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

#$printline=$printline+1;
#if ($printline >=40) {
#&shapprint();
#}

# кінець розрахунок оборотів по субрахунку
};

#остання проводка 

if ($oct > 0 and $kct > 0) {

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

#if ($mova eq "Ua") {
#print '<div align="center" style="border: 0px solid #000000; float:left; width: 10%; background-color: #ffffff;">'.$choice.'/'.$choicecoc.'-</div>';
#}else{
#print '<div align="center" style="border: 0px solid #000000; float:left; width: 10%; background-color: #ffffff;">'.$choice.'/'.$choicecoc.'-</div>';
#}

#$printline=$printline+1;
#if ($printline >=40) {
#&shapprint();
#}

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
#my $pryzn=$dbhr->quote($mprizop);

if ($saldisx>0) {
$mbooc =2;
$sqlr = 'INSERT INTO '.$basenew.' (oc,coc,booc,saldo)';
$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.sprintf("%12.2f",$saldisx).'")';
#$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.$saldisx.'")';
#sprintf("%10.2f",$itdebsch)

#print $sqlr;
$sthr = $dbhr->do($sqlr);

};
#$sqlr = 'INSERT INTO '.$base.' (oc,coc,booc,kau,saldo,priznak,zakname)';
#$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.$mkauop.'","'.$saldisx.'","'.$mprizop.'","'.$mzakname.'")';

if ($salkisx>0) {
$mbooc =3;
$sqlr = 'INSERT INTO '.$basenew.' (oc,coc,booc,saldo)';
#$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.$salkisx.'")';
$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.sprintf("%12.2f",$salkisx).'")';

#print $sqlr;
$sthr = $dbhr->do($sqlr);

};



#кінець розрахунку saldo
};


#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%10.2f",$saldisx).'</font></div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%10.2f",$salkisx).'</font></div>';
#print ' <div  style="clear:both; "></div>';




#$debsch=$debsch+$itdebsch;
#$kredsch=$kredsch+$itkredsch;

# С початку року
#$debschny=$debschny+$itdspr+$itdebsch;
#$kredschny=$kredschny+$itkspr+$itkredsch;

#$psdebsch=$psdebsch+$salpochd;
#$pskrsch=$pskrsch+$salpochk;

#$isaldebsch=$isaldebsch+$saldisx;
#$isalkrsch=$isalkrsch+$salkisx;

# кінець обробки субрахунку
};
};


sub kausaldo {
# загальні змінні для рахунку
#---------------
my ($msummaop,$midzak,$tsprnum);

$sqlkau1 ='(SELECT t1.idzak AS idzak,t1.sprnum AS sprnum FROM '.$base.' AS t1 WHERE oc="'.$choice.'" and coc="'.$choicecoc.'") UNION (SELECT t2.idzak AS idzak,t2.sprnum AS sprnum  FROM '.$basesal.' AS t2 WHERE oc="'.$choice.'" and coc="'.$choicecoc.'")';
$sqlkau1 = $sqlkau1 . ' ORDER BY idzak';
$sthkau1 = $dbhr->prepare($sqlkau1);
$sthkau1->execute();
while (($midzakdis,$tsprnum) = $sthkau1->fetchrow()){;

# поточный KAU
my $itdebet=0;
my $itkredit=0;

my ($sqlk,$sthk,$salkau,$tkau,$tzakname);
$sqlk ='SELECT booc,summa,kau,zakname FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and idzak="'.$midzakdis.'" and sprnum="'.$tsprnum.'"';
#$sqlk = $sqlk . ' ORDER BY idzak,data,kc,ckc,dok';
$sthk = $dbhr->prepare($sqlk);
$sthk->execute();
while (($mbooc,$msummaop,$tkau,$tzakname) = $sthk->fetchrow()){;

if ($mbooc==2 or $mbooc==4 ) {
$itdebet=$itdebet+$msummaop;
}else{
$itkredit=$itkredit+$msummaop;
};

# кінець обробки вибраного kau
};


$sqlk ='SELECT saldo,booc,kau,zakname FROM '.$basesal.' WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and  idzak="'.$midzakdis.'" and sprnum="'.$tsprnum.'"';
$sthk = $dbhr->prepare($sqlk);
$sthk->execute();
($salkau,$mbooc,$tkau,$tzakname) = $sthk->fetchrow();

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

my $zname=$dbhr->quote($tzakname);
# Додати КАУ Назву кау 
if ($saldisx1>0) {
$mbooc =2;
$sqlr = 'INSERT INTO '.$basenew.' (oc,coc,booc,saldo,idzak,kau,sprnum,zakname)';
$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.sprintf("%12.2f",$saldisx1).'","'.$midzakdis.'","'.$tkau.'","'.$tsprnum.'","'.$zame.'")';
#$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.$saldisx.'")';
#sprintf("%10.2f",$itdebsch)

#print $sqlr;
$sthr = $dbhr->do($sqlr);

};
#$sqlr = 'INSERT INTO '.$base.' (oc,coc,booc,kau,saldo,priznak,zakname)';
#$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.$mkauop.'","'.$saldisx.'","'.$mprizop.'","'.$mzakname.'")';

if ($salkisx1>0) {
$mbooc =3;
$sqlr = 'INSERT INTO '.$basenew.' (oc,coc,booc,saldo,idzak,kau,sprnum,zakname)';
#$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.$salkisx.'")';
$sqlr = $sqlr .  ' VALUES ("'.$choice.'","'.$choicecoc.'","'.$mbooc.'","'.sprintf("%12.2f",$salkisx1).'","'.$midzakdis.'","'.$tkau.'","'.$tsprnum.'","'.$zname.'")';

#print $sqlr;
$sthr = $dbhr->do($sqlr);

};

#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.$choice.'/ '.$choicecoc.'/'.$midzakdis.'</font></div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%10.2f",$saldisx1).'</font></div>';
#print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;"><font color="#0000ff" size="3">'.sprintf("%10.2f",$salkisx1).'</font></div>';
#print ' <div  style="clear:both; "></div>';

# вихідне сальдо по субрахунку
$saldisx=$saldisx+$saldisx1;
$salkisx=$salkisx+$salkisx1;

#$sqlk ='SELECT booc,SUM(summa),kau,sprnum,zakname FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and idzak="'.$midzakdis.'" and booc=2 and sprnum="'.$tsprnum.'"';
#$sthk = $dbhr->prepare($sqlk);
#$sthk->execute();
#($mbooc,$msummaop,$tkau,$tsprnum,$tzakname) = $sthk->fetchrow();

#$sqlk ='SELECT booc,SUM(summa),kau,sprnum,zakname FROM '.$base.'  WHERE oc="'.$choice.'" and coc="'.$choicecoc.'" and idzak="'.$midzakdis.'" and booc=3 and sprnum="'.$tsprnum.'"';
#$sthk = $dbhr->prepare($sqlk);
#$sthk->execute();
#($mbooc,$msummaop,$tkau,$tsprnum,$tzakname) = $sthk->fetchrow();



# кінець distict KAU
};

};