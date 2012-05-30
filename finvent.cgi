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


my $krtid;
if  ($q->param('idkrt')) {
# Id картки  краму 
$krtid=$q->param('idkrt');
}

#print "Newwin";
# отримати номер поточної комори
my $rashsklad ='rsj18';
my $numsklad ='krt18';
my $prihsklad ='prj18';

my $sqlr ='SELECT inum FROM ini_sk'; 
my $sthr = $dbhr->prepare($sqlr);
$sthr->execute();
my $sklad = $sthr->fetchrow() ;

if ($sklad < 10) {
$numsklad ='krt0'."$sklad";
$prihsklad ='prj0'."$sklad";
$rashsklad ='rsj0'."$sklad";
}else{
$numsklad ='krt'."$sklad";
$prihsklad ='prj'."$sklad";
$rashsklad ='rsj'."$sklad";
}

#print $prihsklad;
## для нової накладної операції буду робить при створенні першої картки
# тут буде номер нової накладної потім розберусь
#my $newnumn=0;
#$sqlr ='SELECT MAX(nd) FROM '.$rashsklad.'';
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#$newnakl = $sthr->fetchrow_array();

# Зробити номер наступної
#$newnakl= $newnakl+1;



#$sqlr ='SELECT rnameoper,rnumop,pnameoper,pnumop FROM defrash  ';

##print $sqlr;
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#($rasoper,$mshifr,$prioper,$mzfs)= $sthr->fetchrow_array();
##print $rasoper;

my ($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;
$month++;
my $date = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));
my $tekdatanak=$date;


# надходження краму
#sub showprih {
#$q->header(-charset=>'utf8');
#print  $q->start_multipart_form(-action=>$params{'url'});
#$sdvigp =0;
#if  ($q->param('sdvigposh')) {
#$sdvigp = $q->param('sdvigposh');

#if ($sdvigp < 0){
#$sdvigp =0
#}
#}else{
$sdvigp = 0;
#}

#print $q->h1($q->Dump);

#my $msearch;
#if  ($q->param('nadres')) {
#$msearch = $q->param('nadres');
#}else{
#$msearch = $q->param('modsp');
#}
# номер склада надходження (ім'я таблиці) 
#my $nsklad = $q->param('nplat');

my $ryadoksp =0;
my ($idnn,$naims,$naim2s,$naimgrs,$cenas,$pr,$dz,$nd,$pp);

#my $sqlfaksp;
#print $sdvig;
#my $sqlposhuk;
#print $msearch;

#if  ($q->param('numsf')) {
#$id = $q->param('numsf');
#}

#$sqlr ='SELECT SUM(pr) FROM '.$prihsklad.'  WHERE idkrt = "'.$krtid.'" or naim = "'.$msearch.'"';
#print $sqlr;
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#my $psvodkol=$sthr->fetchrow();

#$sqlr ='SELECT nn,naim,naim2,naimgr FROM '.$numsklad.'  WHERE vn = 0';
#$sqlr ='SELECT nn,naim,naim2,naimgr FROM '.$numsklad.'  WHERE id = "'.$krtid.'" or naim = "'.$msearch.'"';
#print $sqlr;
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

#my ($idnns,$naimss) = $sthr->fetchrow();


#Повне співпадання або схожі
#$sqlr ='SELECT nn,naim,naim2,naimgr,cena,pr,dz,nd,pp,vp FROM '.$prihsklad.'  WHERE idkrt = "'.$krtid.'" or naim = "'.$msearch.'"';

#my ($idkrt,$nnkrt,$naim2krt,$naimkrt,$naimgrkrt,$skladkrt,$descrkrt,$ei1krt,$scenakrt1,$schkrt,$subkrt,$cenakrt,$kolkrt,$veskrt,$kommkrt,$komm2krt);

#$sqlr = 'SELECT id,nn,naim2,naim,naimgr,sklad,descr,ei1,scena,sch,subsch,cenaroz,ost1,ves,komm,komehtap2 FROM '.$numsklad.' ';
#$sqlr = $sqlr . ' ORDER BY nn,naim';
#$sqlr = $sqlr . ' ORDER BY nn, naim,cena';


$sqlr = 'SELECT id,inv,sth,sub,kau,spod,la,mol,stoi,n_pv,k_o,d_vp,d_vv,d_f,z_n,naim,am_m,izn,iznt,stoo,ls,iznr,dizn,reg_n,sd1,sd2,sd3,sd4,prob,iz_m,kfc,n_am,komehtap4 FROM aof';
$sqlr = $sqlr . ' ORDER BY inv,naim';
#$sqlr = $sqlr . ' WHERE id="'.$krtid.'" ';

$sthr = $dbhr->prepare($sqlr);
$sthr->execute();


#print $sqlr;






#$sqlr ='SELECT nn,naim,naim2,naimgr,cena,pr,dz,nd,pp,vp FROM '.$numsklad.'';

#$sqlr = 'SELECT DISTINCT nd,dz,pp,ndstoim,idpp,sprnum,idnd FROM '.$prihsklad.' WHERE vp = 0 and ndstoim >0';
#$sqlr = $sqlr . ' ORDER BY pp';
#$sqlr = $sqlr . ' ORDER BY nn,naim';
#$sqlr = $sqlr . ' LIMIT '.$sdvigp.',30';
#print $sqlr;
#print $sqlposhuk;

#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();

if ($mova eq "Ua") {
print '<div  style="width: 100%; background-color: #ffffff;">______________________ </div>';
print '<div  style="width: 100%; background-color: #ffffff;">(установа, організація)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Ідентифікаційний код</div>';
print '<div  style="width: 100%; background-color: #ffffff;">за ЄДРПОУ______________</div>';
print '<div align="center" style="width: 100%; background-color: #ffffff;">ІНВЕНТАРИЗАЦІЙНИЙ ОПИС</div>';
print '<div align="center" style="width: 100%; background-color: #ffffff;">матеріальних цінностей, прийнятих (зданих) на відповідальне зберігання</div>';
print '<div  style="width: 100%; background-color: #ffffff;">_______________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(дата складання)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Розписка</div>';
print '<div  style="width: 100%; background-color: #ffffff;">До початку проведення інвентаризації всі видаткові та прибуткові документи на матеріальні цінності здані в бухгалтерію і</div>';
print '<div  style="width: 100%; background-color: #ffffff;">всі матеріальні цінності, що надійшли на мою відповідальність,оприбутковані, а ті, що вибули, списані.</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Матеріально відповідальна особа</div>';
print '<div  style="width: 100%; background-color: #ffffff;">___________    ____________   ___________________________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(посада)       (підпис)      (прізвище, ім я, по батькові)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">___________    ____________   ___________________________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(посада)       (підпис)      (прізвище, ім я, по батькові)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">На підставі наказу (розпорядження) від </div>';
print '<div  style="width: 100%; background-color: #ffffff;">___ ____________200___р. N____ проведено зняття фактичних</div>';
print '<div  style="width: 100%; background-color: #ffffff;">залишків  цінностей,  які  знаходяться  на балансовому рахунку </div>';
print '<div  style="width: 100%; background-color: #ffffff;"> Інвентаризація: розпочата ___ ____________200___ р.</div>';
print '<div  style="width: 100%; background-color: #ffffff;"> закінчена "___"____________200___ р.</div>';
print '<div  style="width: 100%; background-color: #ffffff;"> При інвентаризації встановлено таке: </div>';


}else{
print '<div  style="float:left; width: 100%; background-color: #ffffff;">Инвентарная ведомость '. $idnns.''. $naimss.'с по</div>';
}






#print '<div  style="float:left; width: 23%; background-color: #ffffff;">';
#print '<a href="/cgi-bin/trabkart.cgi?idkrt='."$krtid".'" id="vyxod" class="exit">Выйти</a>';
#print '</div>';
#print ' <div  style="clear:both;"></div>';

print ' <div  style="clear:both;"></div>';

#print '<div style="width: 100%;>';

#print '<table wigth=100% height=5% align="left"  cellspacing="0" border="1" cellpadding="0" bgcolor="#ffffff">';
#print  '<tr><td align="center" wigth=25%>'.'Номенклатурний номер'.'</td><td align="center" wigth=25%>'.'__________Назва__________'.'</td><td align="center" wigth=25%>'.'Ціна'. '</td></tr>';
#print '</table>';

print '<div  style="float:left; width: 68%; background-color: #ffffff;">.</div>';
print '<div align="center" style="float:left; width: 28%; background-color: #ffffff;">Вартість по обліку</div>';
#print '<div align="center" style="border: 1px solid #000000; float:left; width: 28%; background-color: #ffffff;">Кількість</div>';

print ' <div  style="clear:both;"></div>';
print '<div  style="border: 1px solid #000000; float:left; width: 5%; background-color: #ffffff;"> Nп/п</div>';
print '<div  style="border: 1px solid #000000; float:left; width: 14%; background-color: #ffffff;">Інв.номер</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 35%; background-color: #ffffff;">Назва</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 9%; background-color: #ffffff;">Первісна</div>';
#print '<div  style="border: 1px solid #000000; float:left; width: 5%; background-color: #ffffff;">Од.в.</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">Знос</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 10%; background-color: #ffffff;">залишкова</div>';
print '<div align="center" style="border: 1px solid #000000; float:left; width: 7%; background-color: #ffffff;">%</div>';
print ' <div  style="clear:both;"></div>';






print ' <div  style="clear:both;"></div>';


my $vppr1=0;
my $vplbl1="..";

my $tekpost="";
my $tekpostsum=0;
my $vsegosum=0;
my $npp=0;



my ($mid,$minv,$msth,$msub,$mkau,$mspod,$mla,$mmol,$mstoi,$mn_pv,$mk_o,$md_vp,$md_vv,$md_f,$mz_n,$mnaim,$mam_m,$mizn,$miznt,$mstoo,$mls,$miznr,$mdizn,$mreg_n,$msd1,$msd2,$msd3,$msd4,$mprob,$miz_m,$mkfc,$mn_am,$kommkard4);
while ( ($mid,$minv,$msth,$msub,$mkau,$mspod,$mla,$mmol,$mstoi,$mn_pv,$mk_o,$md_vp,$md_vv,$md_f,$mz_n,$mnaim,$mam_m,$mizn,$miznt,$mstoo,$mls,$miznr,$mdizn,$mreg_n,$msd1,$msd2,$msd3,$msd4,$mprob,$miz_m,$mkfc,$mn_am,$kommkard4) = $sthr->fetchrow() ){;
#$ryadoksp = $ryadoksp+1;

# Підфарбуємо рядок на якому стоїеь форма
#if ($id eq $idnn) { 
#print  '<tr bgcolor="#CCCCFF"><td>' ;
#}else{
#print  '<tr bgcolor="#ddeedd"><td>' ;
#}


if ($vppr1 ne 0) {
$vplbl1="VP";
}

#if ($tekpost ne $pp) {

#if ($mova eq "Ua") {
#print '<div  style="float:left; width: 15%; background-color: #ffffff;">Разом по</div>';
#}else{
#print '<div  style="float:left; width: 15%; background-color: #ffffff;">Итого по</div>';
#}
#print '<div  style="float:left; width: 35%; background-color: #ffffff;">'.$tekpost.'</div>';
#print '<div  style="float:left; width: 25%; background-color: #ffffff;">'.sprintf("%19.2f",$tekpostsum).'</div>';
#print ' <div  style="clear:both;"></div>';

#print '<div  style="width: 80%;"><h4>Постачальник '.$pp.'</h4></div>';

#$tekpost=$pp;
#$tekpostsum=0;
#}
$npp=$npp+1;
$tekpostsum=$tekpostsum+$cenakrt;
$vsegosum=$vsegosum+$mstoi;

if ($md_vp eq "") {
$md_vp="..";
}
#$mid,$minv,$msth,$msub,$mkau,$mspod,$mla,$mmol,$mstoi,$mn_pv,$mk_o,$md_vp,$md_vv,$md_f,$mz_n,$mnaim,$mam_m,$mizn,$miznt,$mstoo,$mls,$miznr,$mdizn,$mreg_n,$msd1,$msd2,$msd3,$msd4,$mprob,$miz_m,$mkfc,$mn_am,$kommkard4
print '<div  style="float:left; width: 4%; text-align: right; background-color: #ffffff;">'.$npp.'</div>';
print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.$minv.'</div>';
print '<div  style="float:left; width: 34%; background-color: #ffffff;">. '.$mnaim.'</div>';
print '<div  style="float:left; width: 3%; background-color: #ffffff;">'.$md_vp.'</div>';
print '<div  style="float:left; width: 10%; background-color: #ffffff;">'.$md_vv.'</div>';
print '<div  style="float:left; width: 4%; text-align: right; background-color: #ffffff;">'.sprintf("%7.1f",($miznt*100/$mstoi)).'</div>';
print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.sprintf("%19.2f",$mstoi).'</div>';
print '<div  style="float:left; width: 11%; text-align: center; background-color: #ffffff;">'.sprintf("%19.2f",$miznt).'</div>';
print '<div  style="float:left; width: 11%; text-align: right; background-color: #ffffff;">'.sprintf("%19.2f",$mstoo).'</div>';

#print '<div  style="float:left; width: 23%; background-color: #ffffff;"> '.$dz.' '.$nd.' '.sprintf("%19.2f",$stoim).'</div>';
print ' <div  style="clear:both;"></div>';
}

if ($mova eq "Ua") {
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Разом по</div>';
}else{
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Итого по</div>';
}

#print '<div  style="float:left; width: 35%; background-color: #ffffff;">'.$tekpost.'</div>';
#print '<div  style="float:left; width: 25%; background-color: #ffffff;">'.sprintf("%19.2f",$tekpostsum).'</div>';
#print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Всього</div>';
}else{
print '<div  style="float:left; width: 15%; background-color: #ffffff;">Всего</div>';
}

print '<div  style="float:left; width: 35%; background-color: #ffffff;">_ _ _</div>';
print '<div  style="float:left; width: 25%; background-color: #ffffff;">'.sprintf("%19.2f",$vsegosum).'</div>';
print ' <div  style="clear:both;"></div>';

if ($mova eq "Ua") {
print '<div  style="width: 100%; background-color: #ffffff;">Всього за описом______________________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(прописом)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Голова комісії</div>';
print '<div  style="width: 100%; background-color: #ffffff;">___    ____________   ___________________________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(посада)   (підпис)      (прізвище, ім я, по батькові)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Члени комісії:__</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(посада)       (підпис)   (прізвище, ім я, по батькові)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">___ ____________ ___________________________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(посада)       (підпис)   (прізвище, ім я, по батькові)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Усі цінності, пойменовані в цьому інвентаризаційному описі з</div>';
print '<div  style="width: 100%; background-color: #ffffff;">N_____  до  N_____,  перелічені  комісією в натурі за моєї (нашої) </div>';
print '<div  style="width: 100%; background-color: #ffffff;">присутності та внесені в  опис,  у  зв язку  з  чим  претензій  до </div>';
print '<div  style="width: 100%; background-color: #ffffff;">інвентаризаційної комісії не маю (не маємо). Цінності, перелічені</div>';
print '<div  style="width: 100%; background-color: #ffffff;">в описі, знаходяться на моєму (нашому) відповідальному зберіганні.</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Матеріально відповідальна(і) особа(и)</div>';
print '<div  style="width: 100%; background-color: #ffffff;">___ ____________200___р.</div>';
print '<div  style="width: 100%; background-color: #ffffff;">Вказані у даному описі дані та підрахування перевірив:</div>';
print '<div  style="width: 100%; background-color: #ffffff;">___ ____________</div>';
print '<div  style="width: 100%; background-color: #ffffff;">(посада)       (підпис)</div>';
print '<div  style="width: 100%; background-color: #ffffff;"></div>';
print '<div  style="width: 100%; background-color: #ffffff;">___ ____________200___ р.</div>';
#print '<div  style="width: 100%; background-color: #ffffff;"> При інвентаризації встановлено таке: </div>';


}else{
print '<div  style="float:left; width: 100%; background-color: #ffffff;">Инвентарная ведомость '. $idnns.''. $naimss.'с по</div>';
}








$sthr->finish;
$dbhr->disconnect;

#}