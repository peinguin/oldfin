#!/usr/bin/perl

print "Content-Type: text/html;CHARSET=UTF-8\n\n";
use CGI;
use DBI;
$q = new CGI;
$q->header(-charset=>'UTF-8');
#$url=$q->url();
#------------------------------------
my $mysql_table = '';
my $mysql_user = 'root';
my $mysql_pass = '';

#Завантаження зображення товару на сервер
#my $images_dirf = '/var/www/sklad/htdocs/images';
my $images_urlf = '/images/';
#--------------------------------

$red="#ffb3b3";
$dred="#ff4a4a";
$blue="#c8ceff";
$yellow="#fffea1";
$green="#d5ffd2";
$silver="#e0e0e0";
$dsilver="#b1b1b1";

#$cdate=$cur_date if ($cdate eq "");

my $mova="Ua";
#my $mova="Ru";


# змінні для popup_menu Одиниці виміру
#my @medizm;
#my %medizmret=();


my $idsort="number";
my $sdvigpn= "0";
#&showkart($q);


#sub showkart {

#my ($day,$month,$year) = (localtime)[3..5];
#$year = 1900 + $year;
#$month++;
#my $date = sprintf("%.2d.%.2d.%.4d",($day1,$month1,$year1));
#my $date = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));
#my $tekdatanak=$date;

my $rezim="";
my $krtid=0;
my $dbhr;
my $sqlr;
my $sthr;

$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

#$sqlr = 'ALTER TABLE dspod ADD okpo text(10)';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();



#$sqlr ='SELECT krb FROM dinit'; 
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#$valkurs = $sthr->fetchrow() ;


#if  ($q->param('parnakl')) {
#$idsort=$q->param('parnakl');
#}

if  ($q->param('redag')) {
$rezim=$q->param('redag');
}

#if  ($q->param('poisk')) {
#$prpoisk=$q->param('poisk');
#}

#if  ($q->param('psort')) {
#$idsort=$q->param('psort');
#}

#if  ($q->param('navnakl')) {
#$sdvigpn=$q->param('navnakl');
#}
# номер накладної
if  ($q->param('id')) {
$iddoc=$q->param('id');
}

# kilkist kramy накладної
if  ($q->param('radd')) {
$kilkadd=$q->param('radd');
}

if  ($q->param('idkrt')) {
# Номенклатурний номер краму 
$krtid=$q->param('idkrt');
}

my $base="vrhnika_dszak";

my $msprnum=$q->param('sprnum');

$zamovn=1;
if  ($q->param('sprnum') eq 2) {
$base="dspod";
$zamovn=2;
}

#print $q->param('redag');

if  ($q->param('redag') eq "Y") {
&subredaktor();
}

#if  ($q->param('redag') eq "del") {
#&subdelete();
#}


if  ($q->param('redag') eq "add") {
&subadd();
}else{
print '<div  style="clear:both;"></div>';
if ($mova eq "Ua" ){
print '<div style="float:left; width: 45%;"><a href="/cgi-bin/dszak.cgi?id='.$iddoc.'&redag='."add".'&poisk='.$prpoisk.'" TARGET="displayWindow" class="newnakl"><nobr>Додати картку</nobr></a></div>';
}else{
print '<div style="float:left; width: 45%;"><a href="/cgi-bin/dszak.cgi?id='.$iddoc.'&redag='."add".'&poisk='.$prpoisk.'" TARGET="displayWindow" class="newnakl"><nobr></nobr>Добавить карткочку</a></div>';
}
};


if ($mova eq "Ua" ){
$kartka="Картка кліента";
$pidpr="Підприємство";
$povnazv="Повна назва";
$city="Місто";
$adr="Адреса";
$keriv="ПІБ керівника";
$podnom="Податковий номер";
$plrekv="Платіжні реквізиты";
$rahun="Рахунок";
$adbank="Адреса банка";
$znyschity="Знищити";
$zberegty="Зберегти";
}else{
$kartka="Карточка клиента";
$pidpr="Предприятие";
$povnazv="Наименование";
$city="Город";
$adr="Адрес";
$keriv="ФИО руководителя";
$podnom="Налоговый номер";
$plrekv="Платежные реквизиты";
$rahun="Рас. счет";
$adbank="Адрес банка";
$znyschity="Удалить";
$zberegty="Сохранить";
}


#my ($idkard,$mshifra,$mnaimsokr,$mnaimpoln,$mgorod,$madres,$mrsbank,$madrbanka,$mdirector) = (0,"","","","","","","","");
$sqlr = 'SELECT id,shifra,naimsokr,naimpoln,okpo,gorod,adres,rsbank,adrbanka,director,namebank,kodbank,citybank,pnom,svid,telef FROM '.$base.' ';
$sqlr = $sqlr . ' WHERE id="'.$krtid.'" ';

#print $sqlr;

#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
my ($idkard,$mshifra,$mnaimsokr,$mnaimpoln,$mokpo,$mgorod,$madres,$mrsbank,$madrbanka,$mdirector,$mnamebank,$mkodbank,$mcitybank,$mpnom,$msvid,$mtelef) = $sthr->fetchrow_array();

#print $idkard;
# заголовок картки
print '<div  style="clear:both;"></div>';


print '<form id="platredkrt" class="dszak" TARGET="displayWindow" action="/cgi-bin/dszak.cgi?idkrt='.$krtid.'&id='.$iddoc.'" method="post">';

print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 100%; float:left; background-color:#a4d3db;"><font color="#000000" size="4">'.$kartka.'</font></div></div>';
print '<div  style="clear:both;"></div>';

print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 10%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">Номер</font></div></div>';
print  '<div style="width: 10%; float:left; background-color:#a4d3db;"><input type=text size=5 id="ishifra" name="shifra" value='.$mshifra.'></div>';
print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$pidpr.'</font></div></div>';
#print  '<div style="width: 60%; float:left; background-color:#a4d3db;"><input type=text size=40 id="inamsokr" name="naimsokr" value='.$mnaimsokr.'></div>';

print  '<div style="width: 60%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'naimsokr',size=>40,-value=>$mnaimsokr).'</div>';

print '<div  style="clear:both;"></div>';
print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$povnazv.'</font></div></div>';
print  '<div style="width: 80%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'naimpoln',size=>76,-value=>$mnaimpoln).'</div>';

#print  '<div style="width: 80%; float:left; background-color:#a4d3db;"><input type=text size=76 id="inumnakl" name="numnakl" value='.$mnaimpoln.'></div>';
print '<div  style="clear:both;"></div>';


print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 100%; float:left; background-color:#a4d3db;"><font color="#000000" size="4">_ _ _ _ _</font></div></div>';
print '<div  style="clear:both;"></div>';

print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$city.'</font></div></div>';
print  '<div style="width: 30%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'gorod',size=>30,-value=>$mgorod).'</div>';

print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 11%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">Телефон</font></div></div>';
print  '<div style="width: 39%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'telef',size=>30,-value=>$mtelef).'</div>';
print '<div  style="clear:both;"></div>';

print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$adr.'</font></div></div>';
print  '<div style="width: 80%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'adres',size=>76,-value=>$madres).'</div>';
print '<div  style="clear:both;"></div>';


print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">Код ОКПО</font></div></div>';
print  '<div style="width: 20%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'okpo',size=>12,-value=>$mokpo).'</div>';

print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$keriv.'</font></div></div>';
print  '<div style="width: 40%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'director',size=>40,-value=>$mdirektor).'</div>';

print '<div  style="clear:both;"></div>';



print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$podnom.'</font></div></div>';
print  '<div style="width: 20%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'pnom',size=>20,-value=>$mpnom).'</div>';

print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">№ свидетельства</font></div></div>';
print  '<div style="width: 40%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'svid',size=>20,-value=>$msvid).'</div>';
print '<div  style="clear:both;"></div>';

print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 100%; float:left; background-color:#a4d3db;"><font color="#000000" size="4">'.$plrekv.'</font></div></div>';
print '<div  style="clear:both;"></div>';



print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$rahun.'</font></div></div>';
print  '<div style="width: 20%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'rsbank',size=>30,-value=>$mrsbank).'</div>';

#print  '<div style="width: 20%; float:left; background-color:#a4d3db;"><input type=text size=20 id="inumnakl" name="numnakl" value='.$mrsbank.'></div>';
print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 25%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">Банк</font></div></div>';
print  '<div style="width: 35%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'namebank',size=>30,-value=>$mnamebank).'</div>';

#print  '<div style="width: 30%; float:left; background-color:#a4d3db;"><input type=text size=30 id="inumnakl" name="numnakl" value='.$yy.'></div>';
print '<div  style="clear:both;"></div>';

print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$city.'</font></div></div>';
print  '<div style="width: 25%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'citybank',size=>20,-value=>$mcitybank).'</div>';

print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">МФО</font></div></div>';
print  '<div style="width: 35%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'kodbank',size=>20,-value=>$mkodbank).'</div>';
print '<div  style="clear:both;"></div>';

print '<div float:left; style="text-align: left;"><div id="zagolovok" style="width: 20%; float:left; background-color:#a4d3db;"><font color="#0000ff" size="4">'.$adbank.'</font></div></div>';
print  '<div style="width: 80%; float:left; background-color:#a4d3db;">'.$q->textfield(-name=>'adrbanka',size=>76,-value=>$madrbanka).'</div>';

print '<div float:left; style="text-align: center;"><div id="zagolovok" style="width: 100%; float:left; background-color:#a4d3db;"><font color="#000000" size="4">______________</font></div></div>';
print '<div  style="clear:both;"></div>';


# Погріб картки
#print '<div style="float:left; text-align: center;">';
#
print '<div  style="clear:both;"></div>';
print '<div id="recvizity" style="float:left; width: 80%;">';
print '<input type=hidden  name=idkrt value='.$krtid.'>';
print '<input type=hidden  name=sprnum value='.$msprnum.'>';
print '<input type=hidden  name=redag value="Y">';

print '<lable for="idsklad"></lable><input type=submit value='.$zberegty.'>';
print '</div>';

print '<div id="recvizity2" style="float:left; width: 10%;">'.$znyschity.'</div>';

print '<div id="recvizity3" style="float:left; width: 10%;">';
print '<input type=checkbox TARGET="displayWindow"  name="delplat" value="Del">';
print '<input type=checkbox TARGET="displayWindow"  name="delyes" value="Del">';
print '</div>';

print '</form>';

## кінець  контейнера для реквізитів

$sthr->finish;
$dbhr->disconnect;

#print '<a href="javascript:window.open('vkart.cgi','','…')">Новое окно</a>';


#кінець програми
#};

sub subredaktor {

#print $rezim;
#print $q->param();
#print $q->param('delplat');
#print $q->param('delyes');

if  (($q->param('delplat') eq "Del") and ($q->param('delyes') eq "Del")) {

print "Знищию";
print $krtid;

#if  ($q->param('dcheck')) {
$sqlr = 'DELETE  FROM '.$base.' WHERE id = "'.$krtid.'"';
#print $sqlr;
$sthr = $dbhr->do($sqlr);
#};

}else{

#print "Редагую";

my $pnaim1=$dbhr->quote($q->param('naimsokr'));
my $pnaim2=$dbhr->quote($q->param('naimpoln'));
my $padres=$dbhr->quote($q->param('adres'));
my $pnaim3=$dbhr->quote($q->param('namebank'));
my $padrbank=$dbhr->quote($q->param('adrbanka'));

$sqlr = 'UPDATE '.$base.' SET  naimsokr='.$pnaim1.', naimpoln='.$pnaim2.',shifra="'.$q->param('shifra').'", gorod="'.$q->param('gorod').'", adres='.$padres.'';
$sqlr =  $sqlr . ',okpo="'.$q->param('okpo').'", telef="'.$q->param('telef').'", director="'.$q->param('director').'", pnom="'.$q->param('pnom').'", svid="'.$q->param('svid').'", rsbank="'.$q->param('rsbank').'"';
$sqlr =  $sqlr . ',namebank='.$pnaim3.', citybank="'.$q->param('citybank').'", kodbank="'.$q->param('kodbank').'", adrbanka='.$padrbank.'';
$sqlr = $sqlr . ' WHERE id="'.$krtid.'" ';
#print $sqlr;
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
}
#$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
};

sub subadd {

#print "Додаю";

my $newnum=0;
$sqlr ='SELECT MAX(shifra) FROM '.$base.'';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$newnum = $sthr->fetchrow_array();

# Зробити номер наступної
$newnum= $newnum+1;
#print $newnum;

#$sqlr = 'ALTER TABLE '.$base.' CHANGE id id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY';
#print $sqlr;
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

$sqlr = 'INSERT INTO '.$base.' (shifra)  VALUES ("'.$newnum.'")';
$sthr = $dbhr->do($sqlr);

#print $sqlr;

# отримати id останього доданого Замовника
$sqlr ='SELECT LAST_INSERT_ID()';

my $idlast;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
#($idlast) = $sthr->fetchrow_array();
($krtid) = $sthr->fetchrow_array();

#$krtid = $idlast;
print $krtid;
};



sub subdelete {

#print "Знищию";
#print $krtid;
#print $q->param();
#print $q->param('del');

#if  ($q->param('dcheck')) {
#$sqlr = 'DELETE  FROM '.$base.' WHERE id = "'.$krtid.'"';
#print $sqlr;
#$sthr = $dbhr->do($sqlr);
#};

};
