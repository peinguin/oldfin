#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

#mova systemy
my $mova="Ua";
#my $mova="Ru";

my $kart="Бухгалтерські операції";
my $vidv="Бухгалтерські проводки";
my $prybut="Довідники";
my $vnp="";
my $finroz="Налаштування";
my $zamovl="";
my $zvity="Формування звітів";


if ($mova eq "Ru") {
$kart="Бухгалтерськие операции";
 $vidv="Бухгалтерськие проводки";
$prybut="Справочники";
$vnp="";
$finroz="Настройка";
$zamovl="";
$zvity="Отчетные документы";
}

print '<div id="menu" style="float:left; text-align: center; width: 20%; background-color: #ffffcc;">';
print '<a style="color:#0000ff; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi" id="foper" class=fin>'.$kart.'</a></div>';
print '<div id="menu1" style="float:left; text-align: center; width: 20%; background-color: #ffffcc;">';
print '<a style="color:#0000ff; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi" id="fprovod" class=fin>'.$vidv.'</a></div>';
print '<div id="menu2" style="float:left; text-align: center; width: 20%; background-color: #ffffcc;">';
print '<a style="color:#0000ff; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi" id="zvyt" class=fin>'.$zvity.'</a></div>';


print '<div id="menu3" style="float:left; text-align: center; width: 20%; background-color: #ffffcc;">';
print '<a style="color:#0000ff; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi" id="dovid" class=fin>'.$prybut.'</a></div>';
#print '<div id="menu3" style="float:left; width: 16%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/stoppoiskn.cgi" id="vnp" class=sklad>'.$vnp.'</a></div>';
print '<div id="menu4" style="float:left; text-align: center; width: 20%; background-color: #ffffcc;">';
# Змінити rssch1 -> rasch
print '<a style="color:#0000ff; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi" id="rasch1" class=fin>'.$finroz.'</a></div>';

#print '<div id="menu5" style="float:left; width: 12%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/stoppoiskn.cgi" id="zakaz" class=sklad>'.$zamovl.'</a></div>';

print '<div  style="clear:both;"></div>';



