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

my $idsort="number";
my $sdvigpn= "0";


my $ryadok =1;

my $dbhr;
my $sqlr;
my $sthr;
my $msearch;
my $naklid;
my $prym;
my $msp=0;

if  ($q->param('poisk')) {
$prpoisk=$q->param('poisk');
}

if  ($q->param('psort')) {
$idsort=$q->param('psort');
}

if  ($q->param('navnakl')) {
$sdvigpn=$q->param('navnakl');
}

#if  ($q->param('id')) {
#$naklid=$q->param('id');
#}

my $razoper="bank";
if  ($q->param('razoper')) {
$razoper=$q->param('razoper');
}

#if  ($mova eq "Ua") {
##print '<div  style="float:left; width: 25%; background-color: #99ccff;">Cntr-Перемикає панелі</div>';
#print '<div  style="width: 99%; background-color: #999999;">Cntr-перемикає панелі Стрілки- рух</div>';
#}else{
#print '<div  style="width: 48%; background-color: #99ccff;">Cntr-переключает панели Стрелки-движ.</div>';
#};
#print $idsort;

$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

#$sqlr = 'ALTER TABLE oper ADD id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY';
#$sqlr = 'ALTER TABLE fo340 CHANGE recnum id';
#$sqlr = 'ALTER TABLE fo340 DROP recnum';
#$sqlr = 'ALTER TABLE fo340 CHANGE dok dok DECIMAL(8.0)';
#$sqlr = 'ALTER TABLE fo340 ADD dok DECIMAL(8,0)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

print '<table border=1 cellpadding="0" cellspacing="0">';

my $base="oper";


my ($id,$num1,$name,$satel,$com,$oc,$coc,$kc,$ckc);
my ($porojnia);

#Перейти на останні накладні якщо перше завантаження скрипта 
if  ($q->param('navnakl')) {
$sdvigpn=$q->param('navnakl');
$sdvigpn=$sdvigpn-1;
}else{

#Якщо вибрано на начало navnakl=0 то не працює if тому параметри збільшені на 1
# перевірити як узгоджуються параметри зміщення
#$sdvigpn=$porojnia-15;
}


if  ($razoper eq 'mater') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = "м" ';
}
if  ($razoper eq 'bank') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = "б"';
}
if  ($q->param('razoper') eq 'zarplata') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = "з"';
}
if  ($razoper eq 'kaca') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = "к"';
}

if  ($razoper eq 'fondy') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = "ф"';
}

if  ($razoper eq 'nalog') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = "н"';
}
if  ($razoper eq 'proch') {
$sqlr = 'SELECT SQL_CALC_FOUND_ROWS id,num1,name,satelit,com,oc,coc,kc,ckc FROM '.$base.' WHERE satelit = " "';
}

if  ($prpoisk) {
$msearch=$prpoisk;
$sqlr =$sqlr .'and (num1 LIKE "%'.$msearch.'%" OR name LIKE "%'.$msearch.'%" OR oc LIKE "%'.$msearch.'%")';
}

if ($sdvigpn < 0) {
$sdvigpn= 0;
}

# подыл на надходження  выдвантаження
$sqlr = $sqlr . ' ORDER BY name' if $idsort eq 'number';
$sqlr = $sqlr . ' ORDER BY oc,kc,name ' if $idsort eq 'name';
$sqlr = $sqlr . ' LIMIT '.$sdvigpn.',18';
#print $sqlr;

$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

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
print '<tr bgcolor="#99ccff"><th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" id="num" class=winleft>_____________Назва____________</a></NOBR></th>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" class=winleft>_Основ. проводка</a></NOBR></td>';
}else{
print '<tr bgcolor="#99ccff"><th align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=number&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" id="num" class=winleft>_________Наименование_________</a></NOBR></th>';
print '<td align="center"><NOBR><a href="/cgi-bin/sortnakl.cgi?psort=name&razoper='. $razoper.'&navnakl='.($sdvigpn+1).'&poisk='.$prpoisk.'" class=winleft>основ. проводка</a></NOBR></td>';

}

print '</tr>';
my $keymove=0;
my $zebra=0;

my $idoper;
while ( ($id,$num1,$name,$satel,$com,$oc,$coc,$kc,$ckc) = $sthr->fetchrow() ){;

$ryadok = $ryadok+1;

# Підфарбуємо рядок на якому стоїеь форма
#print  '<tr bgcolor="#CCCCFF"><td valign=center width=300>' ;

$keymove=$keymove+1;
my $idmove="r$keymove";
my $idmover="s$keymove";

if ($zebra eq 0) {
print  '<tr bgcolor="#eeeeee" id='.$idmover.' ><td align=left>' ;
$zebra = 1
}else{
print  '<tr bgcolor="#dedede" id='.$idmover.' ><td align=left>' ;
#print  '<tr bgcolor="#fefefe" id='.$idmover.' ><td valign=center>' ;
$zebra = 0
}

#print $idoper;
my $com1=$dbhr->quote($com);

print '<a href="/cgi-bin/finoperadd.cgi?idkrt='.$id.'&id='.$naklid.'&razoper='.$razoper.'&psort='.$idsort.'&navnakl='.($sdvigpn+1).'&sprnum='.$msp.'" title='.$com1.' id='.$idmove.'  class="platoper">'.$name.'</a></td>';
#print  '<th nowrap><NOBR>'.$num1." " .$id.'</NOBR></td>';

print  '<th nowrap><NOBR>' .$oc.' '.$coc.'- - '.$kc.' '.$ckc.' '. '</NOBR></td></tr>';
}

while ($ryadok < 19) {;
$ryadok = $ryadok+1;
print  '<tr bgcolor="#eeeeee"><td> ..........</td>' . '<td> ............</td></tr>';

};

print  '</table>';

my $sdvigPD=$sdvigpn+20;
#my $sdvigPU=$sdvigpn-18;
if ($porojnia < $sdvigPD) {
$sdvigPD=$porojnia-15;
}


if  ($mova eq "Ua") {
print '<div  style="float:left; width: 25%; background-color: #99ccff;">';
print '<a href="?navnakl='.'1'.'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="beg" class=winleft>Home</a></div>';
print '<div  style="float:left; width: 24%; background-color: #99ccff;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn-18).'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="pup" class=winleft>pageUp</a></div>';
print '<div  style="float:left; width: 29%; background-color: #99ccff;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigPD).'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="pdw" class=winleft>PageDown</a></div>';
print '<div  style="float:left; width: 22%; background-color: #99ccff;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&razoper='. $razoper.'&psort='.$idsort.'&poisk='.$prpoisk.'" id="pend" class=winleft>End</a></div>';
print ' <div  style="clear:both;"></div>';
}else{
print '<div  style="float:left; width: 25%; background-color: #eeeeee;">';
print '<a href="?navnakl='.'1'.'&razoper='. $razoper.'&redag='.$prym.'&psort='.$idsort.'&poisk='.$prpoisk.'&sprnum='.$msp.'&id='.$naklid.'" id="beg" class=winleft>в начало (Home)</a></div>';
print '<div  style="float:left; width: 22%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn-18).'&razoper='. $razoper.'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pup" class=winleft>назад (pageUp)</a></div>';
print '<div  style="float:left; width: 29%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigPD).'&razoper='. $razoper.'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pdw" class=winleft>вперед(pageDown)</a></div>';
print '<div  style="float:left; width: 23%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&razoper='. $razoper.'&redag='.$prym.'&psort='.$idsort.'&sprnum='.$msp.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pend" class=winleft>в конец (End)</a></div>';
print ' <div  style="clear:both;"></div>';

}

#новий пошук
print '<form id="naklpoisk" action="/cgi-bin/sortnakl.cgi" method="post">';

print '<div id="fpoisk" style="float:left; width: 75%;">';

print '<input type=hidden size=10 name=psort value='.$idsort.'>';
print '<input type=hidden size=10 name=navnakl value='.$sdvigpn.'>';
#print '<input type=hidden size=10 name=id value='.$naklid.'>';
#print '<input type=hidden  name=sprnum value='.$zamovn.'>';
#print '<input type=hidden  name=redag value='.$prym.'>';
print '<input type=hidden  name=razoper value='.$razoper.'>';

#print '<input type=text size=10 name=psort value='.$idsort.'>';
#print '<input type=text size=10 name=navnakl value='.$sdvigpn.'>';

if  ($mova eq "Ua") {
print '<input type=submit value="Пошук">';
}else{
print '<input type=submit value="Поиск">';
}
print '<input type=text size=20 id="polep" name="poisk"> -'.$sdvigpn.'-';
# Судя по всему сброс не нужен нажатие на пустой поик дает тот же результат
#print '<input type="reset" value="Сброс" id="reset">';
#print '<input type=submit value="Сброс" id="resetpoisk">';

print '</div>';

print ' <div  style="clear:both;"></div>';
print '</form>';

$sthr->finish;
$sthk->finish;

$dbhr->disconnect;

#Вихід з програми
