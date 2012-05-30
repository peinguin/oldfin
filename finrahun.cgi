#!/usr/bin/perl

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;
use DBI;

$q = new CGI;
$q->header(-charset=>'UTF-8');
$url=$q->url();
$view=$q->param('view');
#------------------------------------
use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );
#my $mysql_pass = '';

my $data_dir = '/var/www/cgi-bin/shop/data';

my $images_dirf = '/images/';
my $images_dir = '/images/';
my $images_url = '/images/';
my $images_urlf = '/images/';
my $sendmail = '/usr/sbin/sendmail';

#--------------------------------

$red="#ffb3b3";
$dred="#ff4a4a";
$blue="#c8ceff";
$yellow="#fffea1";
$green="#d5ffd2";
$silver="#e0e0e0";
$dsilver="#b1b1b1";

my $mova="Ua";
#my $mova="Ru";

# змінні для popup_menu обороту
#my @medizm;
#my %medizmret=();

#my ($vob)="ОД";
#$sqlr ='SELECT ei FROM ed_izm ORDER BY ei';
#$sthr = $dbhr->prepare($sqlr);
#print $sqlei;
#$sthr->execute();
#$rinit=0;
#while ( ($ei) = $sthr->fetchrow() ){;
#@medizm[0] = ("ОД") ;
#$medizm[1] = ("ОК") ;
#$medizm[2] = ("СД") ;
#$medizm[3] = ("СК") ;
#$medizmret{ $vob } = ("OД") ;
#$rinit = $rinit+1;
#print $ei;
#}





my $idsort="number";
my $sdvigpn= "0";

my $ryadok =1;

my $dbhr;
my $sqlr;
my $sthr;
my $msearch;
my $naklid;
my $prym;
my $tekriadok=1;
my $prym="no";

if  ($q->param('redag')) {
$prym=$q->param('redag');
}


if  ($q->param('poisk')) {
$prpoisk=$q->param('poisk');
}

if  ($q->param('psort')) {
$idsort=$q->param('psort');
}

if  ($q->param('navnakl')) {
$sdvigpn=$q->param('navnakl');
}

if  ($q->param('id')) {
$tekriadok=$q->param('id');
}

my $razoper="bank";
if  ($q->param('razoper')) {
$razoper=$q->param('razoper');
}

#print "111111111111111";
#print $idsort;
#print $sdvigpn;


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

#$iduser=1;
#my $user="buh1";
#$sqlr ='DROP TABLE f330new'; 

#$sqlr ='CREATE TABLE fo340new LIKE fo340'; 



#$sqlr ='CREATE TABLE f330new LIKE f330'; 





#$sqlr ='CREATE TABLE f330 (id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY)'; 
#$sthr = $dbhr->do($sqlr);

#$sqlr ='CREATE TABLE finstatus (id int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY)'; 

#$sthr = $dbhr->do($sqlr);




#$sqlr = 'ALTER TABLE f340 ADD id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY';
#$sqlr = 'ALTER TABLE fo340 CHANGE recnum id';
#$sqlr = 'ALTER TABLE f340 DROP recnum';
#$sqlr = 'ALTER TABLE fo340 CHANGE satelit satelit int(5)';
#$sqlr = 'ALTER TABLE fo340 ADD iduser int(5)';

#$sqlr = 'ALTER TABLE finstatus ADD fulloper int(2)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

#$sqlr = 'ALTER TABLE finstatus ADD uslog text(10)';
#$sqlr = 'ALTER TABLE finstatus DROP user';
#$sqlr = 'ALTER TABLE finstatus CHANGE user uslog text(10)';

#$sqlr = 'ALTER TABLE f330 ADD oc varchar(2)';
#$sqlr = 'ALTER TABLE f330 ADD kau varchar(5)';
#$sqlr = 'ALTER TABLE f330 ADD sprnum int(1)';
#$sqlr = 'ALTER TABLE f330 CHANGE saldo saldo decimal(12,2)';
#$sqlr = 'ALTER TABLE f330 ADD zakname text(19)';
#$sqlr = 'ALTER TABLE f330 ADD iduser int(5)';

#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

my $muser="buh1";
my $mperiod=1;
my $mid=0;
my $mfull=1;

# $sqlr = 'INSERT INTO finstatus (uslog,period)  VALUES ("'.$muser.'","'.$mperiod.'")';
##print $sqlr;
#$sthr = $dbhr->do($sqlr);

$sqlr ='SELECT id,uslog,period,fulloper FROM finstatus WHERE uslog = "'.$muser.'"';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod,$mfull)=$sthr->fetchrow();
#print $mid;
#print $mperiod;
print '<form id="formf1op" action="/cgi-bin/fins1red.cgi" method="post">';
print '<table border=1 cellpadding="0" cellspacing="0">';

my $base="f330";
if  ($mperiod eq 2) {
#$base="f340new";
}
my ($porojnia);
#
#Перейти на останні рядки якщо перше завантаження скрипта 
if  ($q->param('navnakl')) {
$sdvigpn=$q->param('navnakl');
$sdvigpn=$sdvigpn-1;
}else{

#Якщо вибрано на начало navnakl=0 то не працює if тому параметри збільшені на 1
# перевірити як узгоджуються параметри зміщення
#$sdvigpn=$porojnia-15;
}


#Показати таблицю операцій 
# id користувача
my $satel=$mid;
#my $satel=1;


if ($sdvigpn < 0) {
$sdvigpn= 0;
}

#$sqlposhuk ='SELECT recnum,oc,coc,kc,ckc,booc,name,data,kau,kaukc,summa,priznak,kol1,kol2,kol3 FROM f340  WHERE satelit = "'.$satel.'"';

#$sqlposhuk = $sqlposhuk . ' ORDER BY name' if  $params{'sort'} eq 'name' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY oc,coc,data,summa' if  $params{'sort'} eq 'oc' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY coc,oc,data,summa' if  $params{'sort'} eq 'coc' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY kc,ckc,data,summa' if  $params{'sort'} eq 'kc' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY ckc,kc,data,summa' if  $params{'sort'} eq 'ckc' ;

#$sqlposhuk = $sqlposhuk . ' ORDER BY booc,name' if  $params{'sort'} eq 'obor' ;



#$sqlposhuk = $sqlposhuk . ' ORDER BY data,name, summa' if $params{'sort'} eq 'date';
#$sqlposhuk = $sqlposhuk . ' ORDER BY kau' if  $params{'sort'} eq 'kau' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY summa,kau' if  $params{'sort'} eq 'summa' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY priznak,kau' if  $params{'sort'} eq 'priz' ;
#$sqlposhuk = $sqlposhuk . ' ORDER BY kaukc' if  $params{'sort'} eq 'kaukc' ;
#$sqlposhuk = $sqlposhuk . ' LIMIT '.$sdvignak.',28';


#if ($mfull eq 2) {
$sqlr ='SELECT SQL_CALC_FOUND_ROWS id,oc,coc,booc,kau,saldo,priznak,zakname FROM '.$base.'';
#$sqlr ='SELECT SQL_CALC_FOUND_ROWS recnum,oc,coc,kc,ckc,booc,name,data,kau,kaukc,summa,priznak,kol1,kol2,kol3,zakname,zaknamekc,satelit FROM '.$base.'';
#}else{

#$sqlr ='SELECT SQL_CALC_FOUND_ROWS id,oc,coc,booc,kau,saldo,priznak,zakname FROM '.$base.' WHERE satelit = "'.$satel.'"';
#$sqlr ='SELECT SQL_CALC_FOUND_ROWS recnum,oc,coc,kc,ckc,booc,name,data,kau,kaukc,summa,priznak,kol1,kol2,kol3,zakname,zaknamekc,satelit FROM '.$base.' WHERE satelit = "'.$satel.'"';
#};
#$sqlr = $sqlr . ' ORDER BY (data) desc,(id) desc,name, summa' if $idsort eq 'number';
#$sqlr = $sqlr . ' ORDER BY (data) desc,(id) desc,name, summa' if $idsort eq 'number';
#$sqlr = $sqlr . ' ORDER BY name' if  $idsort eq 'name';

$sqlr = $sqlr . ' ORDER BY oc,coc,saldo' if  $idsort eq 'oc';
$sqlr = $sqlr . ' ORDER BY coc,oc,saldo' if  $idsort eq 'coc';
#$sqlr = $sqlr . ' ORDER BY kc,ckc,data,summa' if  $idsort eq 'kc';
#$sqlr = $sqlr . ' ORDER BY ckc,kc,data,summa' if  $idsort eq 'ckc';
$sqlr = $sqlr . ' ORDER BY booc,oc' if  $idsort eq 'obor';
#$sqlr = $sqlr . ' ORDER BY data,name, summa' if $idsort eq 'date';
#$sqlr = $sqlr . ' ORDER BY dok' if  $idsort eq 'dok' ;
$sqlr = $sqlr . ' ORDER BY kau,oc' if  $idsort eq 'kau' ;
$sqlr = $sqlr . ' ORDER BY saldo,kau' if  $idsort eq 'summa' ;
$sqlr = $sqlr . ' ORDER BY priznak,kau' if  $idsort eq 'priz' ;
#$sqlr = $sqlr . ' ORDER BY kaukc,name' if  $idsort eq 'kaukc' ;
$sqlr = $sqlr . ' LIMIT '.$sdvigpn.',18';
#print $sqlr;

$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
# якщо не буде робить пыжрахунок додати в select row calk
$sqlr ='SELECT FOUND_ROWS()';
my $sthk = $dbhr->prepare($sqlr);
$sthk->execute();

$porojnia = $sthk->fetchrow_array();
#print $porojnia;

if ($porojnia < $sdvigpn) {
$sdvigpn=$porojnia-15;
}
#----------------------------
if ($sdvigpn < 0) {
$sdvigpn= 0;
}


# Id =num заготовка для работы с клавишами
if  ($mova eq "Ua") {

print '<tr bgcolor="#62dcfb"><th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>d </a></NOBR></th>';
print '<th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=oc&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>ОC_</a></NOBR></th>';
print '<th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=coc&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>_CОC_</a></NOBR></th>';
#print '<th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=kc&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>KC_</a></NOBR></th>';
#print '<th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=ckc&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>_CKC_</a></NOBR></th>';
print '<th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=obor&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>Об-т</a></NOBR></th>';

#print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=dok&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>__ДОК__</a></NOBR></td>';
#print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=date&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>Дата</a></NOBR></td>';

print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=kau&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>_КАУ_</a></NOBR></td>';
#print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=kaukc&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>_КАУ1_</a></NOBR></td>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=summa&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>____Сума___</a></NOBR></td>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=priz&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>_____Тип сальдо____</a></NOBR></td>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=priz&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>_______Контрагент_______</a></NOBR></td>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>_</a></NOBR></td>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>'.$porojnia.'</a></NOBR></td>';
}else{

print '<tr bgcolor="#eeeeee"><th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>d</a></NOBR></th>';
print '<th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" id="num" class=winright>________Наименование_________</a></NOBR></th>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&redag='.$prym.'&sprnum='.$msp.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'&id='.$naklid.'" class=winright>Дата</a></NOBR></td>';

}

print '</tr>';
my $keymove=0;
my $zebra=0;

my $idoper;
#------------------------

my $zak="Выбор";
my $zebra1=0;
# номер запису
my $mrecnum=0;
#print $hidenoper;

#print $prym;
#my $msummaop=0.0;
while (($mrecnum,$moc,$mcoc,$mbooc,$mkauop,$msummaop,$mprizop,$mzakname)=$sthr->fetchrow() ){;
$ryadoksp = $ryadoksp+1;

$ryadok = $ryadok+1;

# Підфарбуємо рядок на якому стоїеь форма
#print  '<tr bgcolor="#CCCCFF"><td valign=center width=300>' ;

#print $zakplat;

$keymove=$keymove+1;
my $idmove="p$keymove";
my $idmoveriad="t$keymove";


if ($zebra eq 0) {
print  '<tr bgcolor="#eeeeee" id='.$idmoveriad.' ><td align=left>' ;
$zebra = 1
}else{
print  '<tr bgcolor="#dedede" id='.$idmoveriad.' ><td align=left>' ;
#print  '<tr bgcolor="#fefefe" id='.$idmover.' ><td valign=center>' ;
$zebra = 0
}

my $zakplat=$dbhr->quote($mzakname);
my $zakplatkc=$dbhr->quote($mzaknamekc);
#print $idoper;
print  '<a href="/cgi-bin/finf1dubl.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag='.$prym.'&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'&komm2='.$mzakname.'"  class="riaddubl">+</a></td>';


#if (($prym eq "oper") and $tekriadok==$mrecnum) {
#print '<td id=c1'.$keymove.'><input type=text size=30 value='.$mnameop.'  id="vvodop" name="parval"></td>';
#print '<input type=hidden  name=id value='.$mrecnum.'>';
#print '<input type=hidden  name=redag value="name">';
#}else{
#print  '<th id=c1'.$keymove.' align="left"><a href="/cgi-bin/f1op.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=oper&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" title='.$zakplat.' id=p1'.$keymove.' class="redf1op">'.$mnameop.'</a></th>';
#}

if ($moc eq "") {
$moc=".";
}

if (($prym eq "oc") and $tekriadok==$mrecnum) {
if ($moc eq ".") {
print '<td id=c1'.$keymove.'><input type=text size=2 onblur="this.focus()" id="vvod" name="parval"></td>';
}else{
print '<td id=c1'.$keymove.'><input type=text size=2 value='.$moc.' onblur="this.focus()" id="vvod" name="parval"></td>';
}
print '<input type=hidden  name=id value='.$mrecnum.'>';
print '<input type=hidden  name=redag value="oc">';
}else{
print  '<th id=c1'.$keymove.'><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=oc&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id=p1'.$keymove.'  class="redf1op">'.$moc.'</a></th>';

}

if ($mcoc eq "") {
$mcoc=".";
}

if (($prym eq "coc") and $tekriadok==$mrecnum) {
if ($mcoc eq ".") {
print '<td id=c2'.$keymove.'><input type=text size=3 onblur="this.focus()" id="vvod" name="parval"></td>';
}else{
print '<td id=c2'.$keymove.'><input type=text size=3 value='.$mcoc.' onblur="this.focus()" id="vvod" name="parval"></td>';
}
print '<input type=hidden  name=id value='.$mrecnum.'>';
print '<input type=hidden  name=redag value="coc">';
}else{
print  '<th id=c2'.$keymove.'><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=coc&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id=p2'.$keymove.'  class="redf1op">'.$mcoc.'</a></th>';

}


#$vob=4;
print '<td>'.$q->popup_menu(-name=>'oborot', -values=>['2','3','4','5'], -default=>$mbooc, -labels=>{'2'=>'Дбт','3'=>'Крд','4'=>'СтД','5'=>'СтК'}). '</td>';

#print  '<th id=c5'.$keymove.'><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=dok&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id=p5'.$keymove.'  class="redf1op">'.$mbooc.'</a></th>';

#}



if ($mkauop eq "") {
$mkauop=".";
}


if (($prym eq "kau") and $tekriadok==$mrecnum) {
#print '<td id=c6'.$keymove.'><input type=text size=8 value='.sprintf("%9.2f",$msummaop).' id="idsumma" name="parval"></td>';
print '<td id=c3'.$keymove.'><input type=text size=5 value='.$mkauop.'  id="vvodop" name="parval"></td>';
print '<input type=hidden  name=id value='.$mrecnum.'>';
print '<input type=hidden  name=redag value="kau">';
}else{
#$mzakname1=str_replace('"','“',$mzakname);
print  '<th id=c3'.$keymove.'><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=kau&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" title='.$zakplat.' id=p3'.$keymove.'  class="redplat">'.$mkauop.'</a></th>';
}

#print  '<th id=c4'.$keymove.'><a href="/cgi-bin/nakloperadd.cgi?idkrt='.$num1.'&id='.$naklid.'&redag='.$prym.'&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'&komm2='.$com.'" id=p4'.$keymove.'  class="platoper">'.$mkauop.'</a></th>';
if ($mkauop eq "") {
$mkauop=".";
}


if (($prym eq "sum") and $tekriadok==$mrecnum) {

if ($msummaop == 0) {
print '<td id=c4'.$keymove.'><input type=text onblur="this.focus()" id="vvod" size=9 name="parval"></td>';
}else{
print '<td id=c4'.$keymove.'><input type=text onblur="this.focus()" id="vvod" size=9 value='.sprintf("%9.2f",$msummaop).' name="parval"></td>';
}
print '<input type=hidden  name=id value='.$mrecnum.'>';
print '<input type=hidden  name=redag value="summa">';
}else{
print  '<th id=c4'.$keymove.'><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=sum&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id=p4'.$keymove.'  class="redf1op">'.sprintf("%12.2f",$msummaop).'</a></th>';
}





if ($mprizop eq "") {
$mprizop="-";
}
if (($prym eq "priznak") and $tekriadok==$mrecnum) {
if ($mprizop eq "-") {
print '<td id=c5'.$keymove.'><input type=text size=23 onblur="this.focus()" id="vvod" name="parval"></td>';
}else{
print '<td id=c5'.$keymove.'><input type=text size=23 onblur="this.focus()" id="vvod" value="'.$mprizop.'" name="parval"></td>';
}

#print '<td id=c7'.$keymove.'><input type=text size=23 value='.$mprizop.' name="parval"></td>';
print '<input type=hidden  name=id value='.$mrecnum.'>';
print '<input type=hidden  name=redag value="priznak">';
}else{
print  '<th id=c5'.$keymove.' align="left"><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=priznak&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id=p5'.$keymove.'  class="redf1op">'.$mprizop.'</a></th>';
}

print  '<th id=c6'.$keymove.' align="left"><a href="/cgi-bin/f1.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag=priznak&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id=p6'.$keymove.'  class="redf1op">'.$mzakname.'</a></th>';
#if ($mfull eq 2) {
print  '<td bgcolor="#ddeedd">'.$satel. '</td>';
#}else{
#print  '<td bgcolor="#ddeedd">'."!". '</td>';
#};

print  '<td bgcolor="#ddeedd"><a href="/cgi-bin/fins1del.cgi?idkrt='.$num1.'&id='.$mrecnum.'&redag='.$prym.'&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" id='.$idmove.'  class="delrriad"> Удалить</td></tr>';

print '<script type="text/javascript">';
print 'document.getElementById("vvod").focus()';
print '</script>';


}

while ($ryadok < 19) {;
$ryadok = $ryadok+1;
print  '<tr bgcolor="#eeeeee"><td>..</td>'.'<td> .....</td>'.'<td> .......</td>'.'<td>.....</td>'.'<td>......</td>'.'<td> ......</td>'.'<td> .........</td>'.'<td> .....</td>'.'<td> ..</td>'.'<td>..</td></tr>';

};

print  '</table>';
my $zber="Зберегти";
if  ($mova eq "Ua") {
$zber="Зберегти";
}else{
$zber="Сохранить";
}
print ' <div  style="clear:both;"></div>';
print '<div id="zbf10p" style="float:left; width: 20%; background-color: #62dcfb;">';
print '<input type=hidden  name=idkrt value='.$krtid.'>';
print '<input type=submit value='.$zber.'>';
#print '<lable for="idsklad"></lable><input type=submit value="Зберегти">';
#print $q->p($q->submit('crgoods','зберегти'));
print '</div>';

my $sdvigPD=$sdvigpn+20;
#my $sdvigPU=$sdvigpn-18;
if ($porojnia < $sdvigPD) {
$sdvigPD=$porojnia-15;
}


if  ($mova eq "Ua") {
print '<div  style="float:left; width: 19%; background-color: #62dcfb;">';
print '<a href="?navnakl='.'1'.'&redag='.$prym.'&psort='.$idsort.'&poisk='.$prpoisk.'&sprnum='.$msp.'&id='.$naklid.'" id="begr" class=winright>На початок(Home)</a></div>';
print '<div  style="float:left; width: 19%; background-color: #62dcfb;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn-18).'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pupr" class=winright>Назад(PageUp)</a></div>';
print '<div  style="float:left; width: 19%; background-color: #62dcfb;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigPD).'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pdwr" class=winright>Вперед(PageDown)</a></div>';
print '<div  style="float:left; width: 19%; background-color: #62dcfb;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pendr" class=winright>До кінця(End)</a></div>';

}else{
print '<div  style="float:left; width: 19%; background-color: #eeeeee;">';
print '<a href="?navnakl='.'1'.'&redag='.$prym.'&psort='.$idsort.'&poisk='.$prpoisk.'&sprnum='.$msp.'&id='.$naklid.'" id="begr" class=winright>в начало (Home)</a></div>';
print '<div  style="float:left; width: 19%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn-18).'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pupr" class=winright>назад (pageUp)</a></div>';
print '<div  style="float:left; width: 19%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn+20).'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pdwr" class=winright>вперед(pageDown)</a></div>';
print '<div  style="float:left; width: 19%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pendr" class=winright>в конец (End)</a></div>';

}
print '<div id="recvizity3" style="float:left; width: 2%;">';
print '<input type=checkbox id=delriad name="del" value="Del">';
#print $q->checkbox({-name=>'Del', -override=>1},'Del');
print '</div>';

print ' <div  style="clear:both;"></div>';

print '</form>';

#if  ($mova eq "Ua") {
#$mon="Місяць";
#$mon1="Звітний";
#$mon2="Новий";

#}else{
#$mon="Месяц";
#$mon1="Отчетный";
#$mon2="Новый";
#}

#my $allop=1;
#my $alloper="Показати усі операції";

#if ($mfull eq 2) {

#if  ($mova eq "Ua") {
#$alloper="Показати операції $muser";

#}else{
#$alloper="Показать операции $muser";
#$alloper="Показать все операции";
#};
#$allop=1;

#}else{
##if ($mfull eq 1) {

#if  ($mova eq "Ua") {
#$alloper="Показати усі операції";
#}else{
#$alloper="Показать все операции";
#};

#$allop=2;
#};

#print "alop $allop";
#print $muser;
#print $mfull;

#my $tekchoise=$dsilver;
#my $tekchoise2=$dsilver;
#my $tekchoise3=$dsilver;

#if ($mperiod eq 1) {
#$tekchoise=$green;
#}else{
#$tekchoise2=$green;
#};

#print '<div style="float:left; text-align: center; width: 9%; background-color:#999999;">'.$mon.'</div>';

#print '<div style="float:left; text-align: center; width: 12%; background-color:'.$tekchoise.';">';
#print '<a style="color:#000000; font-size:14pt;" href="/cgi-bin/finperiod.cgi?id='.$mid.'&redag=1" class=month>'.$mon1.'</a></div>';
#print '<div id="menup11" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
#print '<div id="menup2" style="float:left; text-align: center; width: 12%; background-color:'.$tekchoise2.';">';
#print '<a style="color:#000000; font-size:14pt;" href="/cgi-bin/finperiod.cgi?id='.$mid.'&redag=2" class=month>'.$mon2.'</a></div>';

#print '<div id="menup11" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
#print '<div id="menup3" style="float:left; text-align: center; width: 30%; background-color:'.$tekchoise3.';">';
#print '<a style="color:#000000; font-size:14pt;" href="/cgi-bin/finfull.cgi?id='.$mid.'&redag='.$allop.'" class=month>'.$alloper.'</a></div>';


#print '<div  style="clear:both;"></div>';

#print ' <div  style="clear:both;"></div>';
$sthr->finish;
$sthk->finish;
$dbhr->disconnect;


#Вихід з програми



