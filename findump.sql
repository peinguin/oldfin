-- MySQL dump 10.11
--
-- Host: localhost    Database: work2
-- ------------------------------------------------------
-- Server version	5.0.84-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aof`
--

DROP TABLE IF EXISTS `aof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aof` (
  `id` int(11) NOT NULL auto_increment,
  `Inv` int(6) NOT NULL,
  `Sth` char(2) collate utf8_unicode_ci NOT NULL,
  `Sub` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Spod` char(3) collate utf8_unicode_ci NOT NULL,
  `La` int(1) NOT NULL,
  `Mol` int(4) NOT NULL,
  `Stoi` decimal(18,2) NOT NULL,
  `Kz_a` varchar(9) collate utf8_unicode_ci NOT NULL,
  `N_am` int(6) NOT NULL,
  `N_pv` decimal(7,4) NOT NULL,
  `K_o` varchar(7) collate utf8_unicode_ci NOT NULL,
  `d_vp` varchar(4) collate utf8_unicode_ci default NULL,
  `D_vv` date NOT NULL,
  `D_f` date NOT NULL,
  `Z_n` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Am_m` decimal(18,2) NOT NULL,
  `Izn` decimal(18,2) NOT NULL,
  `Iznt` decimal(18,2) NOT NULL,
  `Stoo` decimal(18,2) NOT NULL,
  `Ls` char(1) collate utf8_unicode_ci NOT NULL,
  `Iznr` decimal(18,2) NOT NULL,
  `Dizn` date NOT NULL,
  `Reg_n` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Sd1` decimal(10,6) NOT NULL,
  `Sd2` decimal(10,6) NOT NULL,
  `Sd3` decimal(10,6) NOT NULL,
  `Sd4` decimal(10,6) NOT NULL,
  `Prob` decimal(7,3) NOT NULL,
  `Iz_m` decimal(18,2) NOT NULL,
  `Kfc` decimal(10,4) NOT NULL,
  `komehtap4` varchar(36) collate utf8_unicode_ci NOT NULL,
  `liksum` int(4) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aof`
--

LOCK TABLES `aof` WRITE;
/*!40000 ALTER TABLE `aof` DISABLE KEYS */;
INSERT INTO `aof` VALUES (1,7,'10','','2','1',0,1,'1161.66','',0,'25.0000','','1998','1998-12-01','1970-01-01','','Компьютер-386','5.65','0.00','1071.26','90.40','T','1019.63','2007-07-01','1076.91','0.000058','0.000000','0.000000','0.000000','84.750','5.65','0.0000','pay1.jpg',NULL),(2,8,'10','40','2','1',0,1,'2160.00','83',2,'25.0000','1234567','','2001-07-01','1970-01-01','','Компьютер 850 PPGA','19.47','0.00','1848.40','311.60','T','1670.45','2007-07-01','1867.875','0.000000','0.000000','0.000000','0.000000','292.125','19.47','0.0000','',NULL),(3,9,'10','40','2','1',0,1,'2236.67','83',2,'25.0000','','','2001-07-01','1970-01-01','','Компьютер Intel Celeron 700','20.17','0.00','1914.02','322.65','T','1729.75','2007-07-01','1934.1856','0.000000','0.000000','0.000000','0.000000','302.484','20.17','0.0000','',NULL),(4,10,'10','40','2','1',0,1,'833.33','83',2,'25.0000','','','2001-07-01','1970-01-01','','Принтер Epson FX 1500','7.51','0.00','713.11','120.22','T','644.46','2007-07-01','720.62375','0.000000','0.000000','0.000000','0.000000','112.706','7.51','0.0000','',NULL),(5,11,'10','40','2','1',0,1,'1808.00','83',2,'25.0000','','','2001-07-01','1970-01-01','','Компьютер Реntium 75','16.30','0.00','1547.18','260.82','T','1398.23','2007-07-01','1563.4812','0.000000','0.000000','0.000000','0.000000','244.519','16.30','0.0000','',NULL),(6,12,'10','40','2','1',0,1,'2027.50','83',2,'25.0000','','01','2001-07-01','1970-01-01','','Компьютер Pentium 150','18.28','0.00','1735.02','292.48','T','1567.98','2007-07-01','1753.3','0.000000','0.000000','0.000000','0.000000','274.200','18.28','0.0000','Samsung Monitor.jpg',NULL),(7,13,'10','30','1','1',0,1,'23990.94','83',1,'5.0000','','','2001-07-01','1970-01-01','','Здание офиса','205.62','0.00','7541.15','16449.79','T','6027.04','2007-07-01','7746.7723','0.000000','0.000000','0.000000','0.000000','9999.999','205.62','0.0000','',1700),(86,0,'','','','',0,0,'0.00','',0,'0.0000','',NULL,'0000-00-00','0000-00-00','','n','0.00','0.00','0.00','0.00','','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000','0.00','0.0000','',NULL),(83,0,'','','','',0,0,'0.00','',0,'0.0000','',NULL,'0000-00-00','0000-00-00','','n','0.00','0.00','0.00','0.00','','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000','0.00','0.0000','',NULL),(10,16,'10','40','2','1',0,1,'743.67','83',2,'25.0000','','','2002-01-01','2002-04-01','','Принтер EPSON ST PIO750','7.63','0.00','621.61','122.06','T','551.90','2007-07-01','629.23875','0.000000','0.000000','0.000000','0.000000','114.431','7.63','0.0000','',NULL),(11,17,'10','40','2','1',0,1,'684.48','83',2,'25.0000','','','2002-01-01','2002-04-01','','Монитор SVGA 15','7.02','0.00','572.13','112.35','T','507.97','2007-07-01','579.15187','0.000000','0.000000','0.000000','0.000000','105.328','7.02','0.0000','',NULL),(12,3,'10','11','2','8',1,3,'900.00','',0,'25.0000','','20','2001-01-01','2004-06-01','34567','add new kard 4 2009-04-01','3.06','0.00','851.00','49.00','T','0.00','0000-00-00','854.0625','0.000001','0.000002','0.000003','0.000000','45.938','7.02','0.0000','4236-pengs.jpg',0),(13,19,'10','40','2','1',0,1,'650.00','83',2,'25.0000','','','2002-01-01','2002-04-01','','Монитор SVGA 15','6.67','0.00','543.32','106.68','T','482.39','2007-07-01','549.9875','0.000000','0.000000','0.000000','0.000000','100.013','6.67','0.0000','Samsung Monitor.jpg',NULL),(14,20,'10','40','2','1',0,1,'2310.83','83',83,'25.0000','','','2002-01-01','2002-04-01','','Комп.Intel Celeron 1000 PPGA','23.71','0.00','1931.55','379.28','T','1714.94','2007-07-01','1955.255','0.000000','0.000000','0.000000','0.000000','355.575','23.71','0.0000','',NULL),(15,21,'01','40','2','1',0,1,'1532.58','83',2,'25.0000','','','2003-04-01','1970-01-01','сист.блок в составе','Компьютер Intel Celeron 1700','21.71','0.00','1185.24','347.34','T','986.87','2007-07-01','1206.9487','0.000000','0.000000','0.000000','0.000000','325.631','21.71','0.0000','',NULL),(16,22,'01','40','2','1',0,1,'568.32','83',2,'25.0000','','','2003-04-01','1970-01-01','','МониторSAMSUNG 551S','8.05','0.00','439.52','128.80','T','365.96','2007-07-01','447.57','0.000000','0.000000','0.000000','0.000000','120.750','8.05','0.0000','aof.jpg',NULL),(17,23,'01','40','4','1',0,1,'719.15','83',2,'15.0000','0','04','2004-07-01','2004-07-01','','Принтер Epson Photo R200','13.55','0.00','357.71','361.44','T','246.84','2007-07-01','371.264','0.000000','0.000000','0.000000','0.000000','347.886','13.55','0.0000','',NULL),(18,2774,'10','40','2','1',0,1,'1395.83','83',83,'15.0000','','04','2004-10-01','1970-01-01','','Кондиционер сплит','27.33','0.00','666.96','728.87','T','443.38','2007-07-01','694.29262','0.000000','0.000000','0.000000','0.000000','701.537','27.33','0.0000','4236-pengs.jpg',NULL),(19,5,'10','40','2','1',0,5,'900.00','',0,'25.0000','','1995','1995-01-01','1970-01-01','5808450','Телефакс \"Дайтекс\"ДК-2000','3.06','0.00','851.07','48.93','T','823.12','2007-07-01','854.12812','0.000006','0.000000','0.000000','0.000000','45.872','3.06','1.0000','Panasonic-kxfl403ru.jpg',NULL),(26,12345,'10','40','2','1',1,1,'1099.00','',0,'25.0000','','08','2009-05-06','0000-00-00','3451234565','Проверка','68.69','0.00','0.00','1099.00','','0.00','0000-00-00','68.6875','0.000000','0.000000','0.000000','0.000000','1030.313','0.00','0.0000','',0),(36,15,'10','40','2','1',0,1,'1977.00','',2,'25.0000','','','2002-01-01','2002-04-01','','Принтер НР 1100','0.00','0.00','1652.51','324.49','','1467.20','2007-07-01','1672.7906','0.000000','0.000000','0.000000','0.000000','304.209','0.00','0.0000','hp1100p01.jpg',NULL),(39,2,'10','11','2','8',1,3,'900.00','',0,'25.0000','','2001','2001-01-01','2004-06-01','34567','add new kard 3 2009-04-01','3.06','0.00','851.06','48.94','','0.00','0000-00-00','854.11875','0.000001','0.000002','0.000003','0.000000','45.881','0.00','0.0000','aof.jpg',0),(43,1,'10','11','4','2',0,6,'200.00','',0,'25.0000','123','2010','2008-01-01','2010-01-01','1234567','new oc 1','12.50','0.00','0.00','200.00','','0.00','0000-00-00','12.5','0.000000','0.000000','0.000000','0.000000','187.500','0.00','0.0000','39.jpg',0),(84,0,'','','','',0,0,'0.00','',0,'0.0000','',NULL,'0000-00-00','0000-00-00','','n','0.00','0.00','0.00','0.00','','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000','0.00','0.0000','',NULL),(85,0,'','','','',0,0,'0.00','',0,'0.0000','',NULL,'0000-00-00','0000-00-00','','n','0.00','0.00','0.00','0.00','','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000','0.00','0.0000','',NULL),(76,123464,'','','','1',1,1,'200.00','',0,'25.0000','','','2010-07-01','0000-00-00','','додання введення','13.00','0.00','0.00','200.00','','0.00','0000-00-00','12.5','0.000000','0.000000','0.000000','0.000000','187.500','0.00','0.0000','hitech.jpg',NULL),(77,123465,'','','','1',1,1,'300.00','',0,'25.0000','2','','2010-07-01','0000-00-00','33333','ins','19.00','0.00','0.00','300.00','','0.00','0000-00-00','18.75','0.000000','0.000000','0.000000','0.000000','281.250','0.00','0.0000','manhattan1.jpg',NULL),(78,12346,'','','','1',0,1,'100.00','',0,'25.0000','','','2010-07-01','0000-00-00','','новий гз','6.00','0.00','0.00','100.00','','0.00','0000-00-00','6.25','0.000000','0.000000','0.000000','0.000000','93.750','0.00','0.0000','',NULL),(79,123458,'20','10','1','2',0,6,'100.00','',0,'25.0000','1','','2010-07-10','2010-07-10','7896','Введення нового гз','6.00','0.00','0.00','100.00','','0.00','0000-00-00','6.25','0.000000','0.000000','0.000000','0.000000','93.750','0.00','0.0000','220px-Marie_antoinette.jpg',NULL),(80,12347,'','','','1',0,1,'50.00','',0,'25.0000','','','2010-07-10','0000-00-00','','\'новий гз\'','3.00','0.00','0.00','50.00','','0.00','0000-00-00','3.125','0.000000','0.000000','0.000000','0.000000','46.875','0.00','0.0000','gudzic.jpg',NULL),(81,0,'','','','',0,0,'0.00','',0,'0.0000','',NULL,'0000-00-00','0000-00-00','','n','0.00','0.00','0.00','0.00','','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000','0.00','0.0000','',NULL),(82,0,'','','','',0,0,'0.00','',0,'0.0000','',NULL,'0000-00-00','0000-00-00','','n','0.00','0.00','0.00','0.00','','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000','0.00','0.0000','',NULL);
/*!40000 ALTER TABLE `aof` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceha`
--

DROP TABLE IF EXISTS `ceha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceha` (
  `Nce` int(2) NOT NULL,
  `Nac` varchar(40) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceha`
--

LOCK TABLES `ceha` WRITE;
/*!40000 ALTER TABLE `ceha` DISABLE KEYS */;
INSERT INTO `ceha` VALUES (2,'Программисты'),(3,'Cовместители'),(4,'Сторожа'),(5,'Договора подряда'),(1,'Управление'),(6,'\"Сєвєродонецька філія\"'),(7,'камбуз'),(8,'Цех 22'),(199,'перевірка великого номеру');
/*!40000 ALTER TABLE `ceha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defrash`
--

DROP TABLE IF EXISTS `defrash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defrash` (
  `nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `rnumop` varchar(4) collate utf8_unicode_ci NOT NULL,
  `rnameoper` varchar(27) collate utf8_unicode_ci NOT NULL,
  `pnumop` varchar(4) collate utf8_unicode_ci NOT NULL,
  `pnameoper` varchar(37) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defrash`
--

LOCK TABLES `defrash` WRITE;
/*!40000 ALTER TABLE `defrash` DISABLE KEYS */;
INSERT INTO `defrash` VALUES ('99142','291','Cписание товара','274','получ.деньги за товар');
/*!40000 ALTER TABLE `defrash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dinit`
--

DROP TABLE IF EXISTS `dinit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dinit` (
  `Sound` char(1) collate utf8_unicode_ci NOT NULL,
  `Path` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Lines` int(3) NOT NULL,
  `Naimsokr` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Naimpoln` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Naosnove` varchar(45) collate utf8_unicode_ci NOT NULL,
  `Gorod` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Font` int(1) NOT NULL,
  `Adres` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Rsbank` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Adrbanka` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Director` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Telef` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Dzp` decimal(6,2) NOT NULL,
  `Soc` decimal(6,2) NOT NULL,
  `Amo` decimal(6,2) NOT NULL,
  `Nak` decimal(6,2) NOT NULL,
  `Pri` decimal(6,2) NOT NULL,
  `Krb` decimal(6,2) NOT NULL,
  `Namebank` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Citybank` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Kodbank` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Okpo` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Satelit` char(1) collate utf8_unicode_ci NOT NULL,
  `Rskor` varchar(22) collate utf8_unicode_ci NOT NULL,
  `Tp` int(1) NOT NULL,
  `Prnds` char(1) collate utf8_unicode_ci NOT NULL,
  `Uslbank` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Activ` char(3) collate utf8_unicode_ci NOT NULL,
  `Pasiv` char(3) collate utf8_unicode_ci NOT NULL,
  `Money` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Pens` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Sum1` decimal(15,2) NOT NULL,
  `Usl1` decimal(15,2) NOT NULL,
  `Sum2` decimal(15,2) NOT NULL,
  `Usl2` decimal(15,2) NOT NULL,
  `Sum3` decimal(15,2) NOT NULL,
  `Usl3` decimal(15,2) NOT NULL,
  `Sum4` decimal(15,2) NOT NULL,
  `Usl4` decimal(15,2) NOT NULL,
  `Lines12` int(3) NOT NULL,
  `Pport` int(1) NOT NULL,
  `Svid` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Pnom` varchar(12) collate utf8_unicode_ci NOT NULL,
  `Akcent` int(1) NOT NULL,
  `Armnalnak` int(2) NOT NULL,
  `Nalask` int(1) NOT NULL,
  `Paperfmt` int(1) NOT NULL,
  `Fiobuh` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Pustiska` int(1) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `shifra` varchar(5) collate utf8_unicode_ci default NULL,
  `komentar1` tinytext collate utf8_unicode_ci,
  `komentar2` tinytext collate utf8_unicode_ci,
  `komentar3` tinytext collate utf8_unicode_ci,
  `komentar4` tinytext collate utf8_unicode_ci,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dinit`
--

LOCK TABLES `dinit` WRITE;
/*!40000 ALTER TABLE `dinit` DISABLE KEYS */;
INSERT INTO `dinit` VALUES ('F','',0,'НВПП \"Сєвєродонецьк-комп\'ютер\" ','НВПП \"Сєвєродонецьк-комп\'ютер\" 23','Устава прiдприемства','Сєвєродонецьк',0,'93416 Украiна, Луганська обл., м. Сєвєродонецьк, ','26575466','93416 Луганська обл., м.Северодонецьк  1  5566333','','(06452)8-88-88 т.ф.7-77-77','0.00','20.00','0.00','0.00','0.00','7.70','СФ АППБ\"АВАЛЬ\"111111111111','Сєвєродонецьк','304955','13678987',2,'1','',0,'0','','','','','','999999999999.00','0.60','0.00','0.00','0.00','0.00','0.00','0.00',0,0,'16627654','133815812147',0,0,0,0,'',1,1,'111','1 Goods once sold cannot be returned back or exchanged.','2 Goods remain property of QQQQQQQQQ until paid full in cash.jjjjjjjjjj 5555555','notes3 123445566777777777777888888888888888899999999911111111hhhhhhhh','notes4 ролролрлоролролрлоролролролролрлорл2222222 555 666666'),('F','',0,'PRIMOROSO LLC (MOONSTONE ACCSR)','PRIMOROSO Trading LLC','','Deira, Diiiii, ooo',0,'DXB 33090 P.O.Box','','','','Fax 04-3787398','0.00','0.00','0.00','0.00','0.00','0.00','aaa','','','000',0,'','',0,'','','','','','','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',0,0,'','',0,0,0,0,'',1,2,'1','1 Goods recieved in perfect condition.','2 After receiving the second party is fully responsible for the goods. ','3 Recieving party not allowed to give goods to other parties without full payment.',''),('F','A:',63,'Свободно можно заполнять','НПЧП \"Северодонецьк-комп\'ютер\"  ','Статуту пiдприемства','Северодонецьк   ',0,'93416 г.Северодонецьк,вул.ttt код ОКПО 6444444587','2600530130060','93400 м. Северодонецьк,Луганська обл.','','(06452)-999-5-50 ,ф.777-25-00','0.00','20.00','0.00','0.00','0.00','0.00','фiлiя вiддiлення ПIБ','Северодонецьк','304535','177777787',2,'1','61101901051215',6,'0','    0.60','310','740','грн.','коп.','999999999999.00','0.60','0.00','0.00','0.00','0.00','0.00','0.00',42,1,'16627654','15555512147',2,0,0,0,'Вggggg Н.Л.',1,3,'33','1','2','',''),('','',0,'Mantellina LLC','Mantellina LLC good company','','Drrri - gg',0,'Desrt - Sand Duna 35 PO 15234 DXB','','','','tel 050-1234567 fax+97141234567','0.00','0.00','0.00','0.00','0.00','0.00','ТрилітроваБанка ','','','',0,'','',0,'','','','','','','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',0,0,'','',0,0,0,0,'',0,15,'35','1 Goods once sold cannot be returned back or exchanged.','2 Goods remain property of QQQQQQQQQ until paid full in cash.','Додав  три  и так растянуто','додав 4 гщшшщгщшщшщшгшщгшщ'),('','',0,'Trader 1','Big trader','','Dutt',0,'Very good street','','','','22332233 fax. 33443344','0.00','0.00','0.00','0.00','0.00','0.00','','','','',0,'','',0,'','','','','','','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',0,0,'','',0,0,0,0,'',0,16,'36',NULL,NULL,NULL,NULL),('','',0,'TOP STYLE salon LLC','TOP STYLE salon LLC full name','','tttai - yyE',0,'Garhood - deira - AV clb 15654','','','','tel 050-1234567 fax+97167234567','0.00','0.00','0.00','0.00','0.00','0.00','','','','',0,'','',0,'','','','','','','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',0,0,'','',0,0,0,0,'',0,34,'37','','',NULL,NULL),('','',0,'PRIMOROSO trading LLC','PRIMOROSO trading LLC','','',0,'','','','','','0.00','0.00','0.00','0.00','0.00','0.00','','','','',0,'','',0,'','','','','','','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',0,0,'','',0,0,0,0,'',0,52,'38','','','','');
/*!40000 ALTER TABLE `dinit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropmenu`
--

DROP TABLE IF EXISTS `dropmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dropmenu` (
  `id` int(11) NOT NULL,
  `id_drop` int(11) NOT NULL auto_increment,
  `name` text,
  `eng` text,
  PRIMARY KEY  (`id_drop`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropmenu`
--

LOCK TABLES `dropmenu` WRITE;
/*!40000 ALTER TABLE `dropmenu` DISABLE KEYS */;
INSERT INTO `dropmenu` VALUES (1,1,'Разноска бух. операций','razoper'),(1,2,'Печать ведомостей','printved'),(1,3,'Отчеты','otchetrasoper'),(2,4,'Лицевые счета','licscheta'),(2,5,'Отчеты по цеху','otchetceh'),(2,6,'Сводные отчеты','svodotchet'),(2,7,'Справочники','zarplspravoch'),(3,8,'Расход','rashod'),(3,9,'Приход','prihod'),(3,10,'Отчеты','skldotchet'),(3,11,'Картотека','skladkart'),(4,12,'Платежные поручения','platporuch'),(4,13,'Счет - фактура','schetfakt'),(4,14,'Расходный ордер','rashodord'),(4,15,'Приходный ордер','prihodord'),(5,16,'Заказчики','zakazchik'),(5,17,'Поставщики','postavshik'),(5,18,'Мои Реквизиты','myrekviz'),(6,19,'Картотека','fondkart'),(6,20,'Отчеты','fondotchet'),(6,21,'Сводные отчеты','fondsvodotchet'),(6,22,'Справочник','fondspravoch');
/*!40000 ALTER TABLE `dropmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dspod`
--

DROP TABLE IF EXISTS `dspod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dspod` (
  `id` int(10) NOT NULL auto_increment,
  `Naimsokr` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Naimpoln` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL,
  `Gorod` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Adres` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Rsbank` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Adrbanka` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Director` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Telef` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Citybank` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Kodbank` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Namebank` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Shifra` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Coc` char(2) collate utf8_unicode_ci NOT NULL,
  `Rskor` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Pnom` varchar(12) collate utf8_unicode_ci NOT NULL,
  `Svid` varchar(10) collate utf8_unicode_ci NOT NULL,
  `okpo` tinytext collate utf8_unicode_ci,
  `diskont` tinytext collate utf8_unicode_ci,
  `user` int(10) default NULL,
  `sklad` decimal(3,0) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dspod`
--

LOCK TABLES `dspod` WRITE;
/*!40000 ALTER TABLE `dspod` DISABLE KEYS */;
/*!40000 ALTER TABLE `dspod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dszak`
--

DROP TABLE IF EXISTS `dszak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dszak` (
  `Naimsokr` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Naimpoln` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL,
  `Gorod` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Adres` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Rsbank` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Adrbanka` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Director` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Telef` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Citybank` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Kodbank` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Namebank` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Shifra` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Coc` char(2) collate utf8_unicode_ci NOT NULL,
  `Rskor` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Pnom` varchar(12) collate utf8_unicode_ci NOT NULL,
  `Svid` varchar(10) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dszak`
--

LOCK TABLES `dszak` WRITE;
/*!40000 ALTER TABLE `dszak` DISABLE KEYS */;
/*!40000 ALTER TABLE `dszak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvig`
--

DROP TABLE IF EXISTS `dvig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvig` (
  `Nkor` int(2) NOT NULL,
  `Vop` int(2) NOT NULL,
  `Inv` int(6) NOT NULL,
  `Sth` char(2) collate utf8_unicode_ci NOT NULL,
  `Sub` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Spod` char(3) collate utf8_unicode_ci NOT NULL,
  `La` int(1) NOT NULL,
  `Mol` int(4) NOT NULL,
  `Stoi` decimal(18,2) NOT NULL,
  `Kz_a` varchar(9) collate utf8_unicode_ci NOT NULL,
  `N_am` int(6) NOT NULL,
  `N_pv` decimal(7,4) NOT NULL,
  `K_o` varchar(7) collate utf8_unicode_ci NOT NULL,
  `D_vp` char(2) collate utf8_unicode_ci NOT NULL,
  `D_vv` date NOT NULL,
  `D_f` date NOT NULL,
  `Z_n` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Izn` decimal(18,2) NOT NULL,
  `Iznr` decimal(16,2) NOT NULL,
  `Dizn` date NOT NULL,
  `Reg_n` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Sd1` decimal(10,6) NOT NULL,
  `Sd2` decimal(10,6) NOT NULL,
  `Sd3` decimal(10,6) NOT NULL,
  `Sd4` decimal(10,6) NOT NULL,
  `Prob` decimal(7,3) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `datop` date default NULL,
  `stoo` decimal(8,0) default NULL,
  `am_m` decimal(8,0) default NULL,
  `iznt` decimal(8,0) default NULL,
  `komehtap4` varchar(30) collate utf8_unicode_ci default NULL,
  `liksum` int(4) default NULL,
  `idkrt` int(10) default NULL,
  `dok` varchar(8) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvig`
--

LOCK TABLES `dvig` WRITE;
/*!40000 ALTER TABLE `dvig` DISABLE KEYS */;
INSERT INTO `dvig` VALUES (0,1,123464,'','','','1',1,1,'200.00','',0,'25.0000','','','2010-07-01','0000-00-00','','додання введення','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',22,'2010-07-18','200','13','0','hitech.jpg',0,NULL,NULL),(0,1,123465,'','','','1',1,1,'300.00','',0,'25.0000','2','','2010-07-01','0000-00-00','33333','ins','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',23,'2010-07-18','300','19','0','manhattan1.jpg',0,NULL,NULL),(0,1,12346,'','','','1',0,1,'100.00','',0,'25.0000','','','2010-07-01','0000-00-00','','новий гз','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',17,'2010-07-17','100','6','0',NULL,0,NULL,NULL),(0,1,123458,'20','10','1','2',0,6,'100.00','23',0,'25.0000','1','','2010-07-10','2010-07-10','7896','Введення нового гз','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',18,'2010-07-17','100','6','0','220px-Marie_antoinette.jpg',0,NULL,NULL),(0,1,12347,'','','','1',0,1,'50.00','',0,'25.0000','','','2010-07-10','0000-00-00','','\'новий гз\'','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',19,'2010-07-17','50','3','0','gudzic.jpg',0,NULL,NULL),(0,2,1,'10','11','4','2',0,6,'200.00','',0,'25.0000','123','20','2008-01-01','2010-01-01','1234567','new oc 1','0.00','0.00','0000-00-00','12.5','0.000000','0.000000','0.000000','0.000000','187.500',24,'2010-07-21','200','13','0','39.jpg',NULL,43,NULL),(0,2,2,'10','11','2','8',1,3,'900.00','',0,'25.0000','','20','2001-01-01','2004-06-01','34567','add new kard 3 2009-04-01','0.00','0.00','0000-00-00','851.0625','0.000001','0.000002','0.000003','0.000000','48.938',25,'2010-07-21','49','3','851','aof.jpg',NULL,39,NULL),(0,2,3,'10','11','2','8',1,3,'900.00','',0,'25.0000','','20','2001-01-01','2004-06-01','34567','add new kard 4 2009-04-01','0.00','0.00','0000-00-00','851.0625','0.000001','0.000002','0.000003','0.000000','48.938',26,'2010-07-21','49','3','851','4236-pengs.jpg',NULL,12,NULL);
/*!40000 ALTER TABLE `dvig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvigar`
--

DROP TABLE IF EXISTS `dvigar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvigar` (
  `Nkor` int(2) NOT NULL,
  `Vop` int(2) NOT NULL,
  `Inv` int(6) NOT NULL,
  `Sth` char(2) collate utf8_unicode_ci NOT NULL,
  `Sub` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Spod` char(3) collate utf8_unicode_ci NOT NULL,
  `La` int(1) NOT NULL,
  `Mol` int(4) NOT NULL,
  `Stoi` decimal(18,2) NOT NULL,
  `Kz_a` varchar(9) collate utf8_unicode_ci NOT NULL,
  `N_am` int(6) NOT NULL,
  `N_pv` decimal(7,4) NOT NULL,
  `K_o` varchar(7) collate utf8_unicode_ci NOT NULL,
  `D_vp` char(2) collate utf8_unicode_ci NOT NULL,
  `D_vv` date NOT NULL,
  `D_f` date NOT NULL,
  `Z_n` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Izn` decimal(18,2) NOT NULL,
  `Iznr` decimal(16,2) NOT NULL,
  `Dizn` date NOT NULL,
  `Reg_n` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Sd1` decimal(10,6) NOT NULL,
  `Sd2` decimal(10,6) NOT NULL,
  `Sd3` decimal(10,6) NOT NULL,
  `Sd4` decimal(10,6) NOT NULL,
  `Prob` decimal(7,3) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `datop` date default NULL,
  `stoo` decimal(8,0) default NULL,
  `am_m` decimal(8,0) default NULL,
  `iznt` decimal(8,0) default NULL,
  `komehtap4` varchar(30) collate utf8_unicode_ci default NULL,
  `liksum` int(4) default NULL,
  `idkrt` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvigar`
--

LOCK TABLES `dvigar` WRITE;
/*!40000 ALTER TABLE `dvigar` DISABLE KEYS */;
INSERT INTO `dvigar` VALUES (0,1,123464,'','','','1',1,1,'200.00','',0,'25.0000','','','2010-07-01','0000-00-00','','додання введення','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',1,'2010-07-18','200','13','0','hitech.jpg',NULL,NULL),(0,1,123465,'','','','1',1,1,'300.00','',0,'25.0000','2','','2010-07-01','0000-00-00','33333','ins','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',2,'2010-07-18','300','19','0','manhattan1.jpg',NULL,NULL),(0,1,12346,'','','','1',0,1,'100.00','',0,'25.0000','','','2010-07-01','0000-00-00','','новий гз','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',3,'2010-07-17','100','6','0','',NULL,NULL),(0,1,123458,'20','10','1','2',0,6,'100.00','',0,'25.0000','1','','2010-07-10','2010-07-10','7896','Введення нового гз','0.00','0.00','0000-00-00','','0.000000','0.000000','0.000000','0.000000','0.000',4,'2010-07-17','100','6','0','220px-Marie_antoinette.jpg',NULL,NULL),(0,2,1,'10','11','4','2',0,6,'200.00','',0,'25.0000','123','20','2008-01-01','2010-01-01','1234567','new oc 1','0.00','0.00','0000-00-00','12.5','0.000000','0.000000','0.000000','0.000000','187.500',6,'2010-07-21','200','13','0','39.jpg',NULL,NULL),(0,2,2,'10','11','2','8',1,3,'900.00','',0,'25.0000','','20','2001-01-01','2004-06-01','34567','add new kard 3 2009-04-01','0.00','0.00','0000-00-00','851.0625','0.000001','0.000002','0.000003','0.000000','48.938',7,'2010-07-21','49','3','851','aof.jpg',NULL,NULL),(0,2,3,'10','11','2','8',1,3,'900.00','',0,'25.0000','','20','2001-01-01','2004-06-01','34567','add new kard 4 2009-04-01','0.00','0.00','0000-00-00','851.0625','0.000001','0.000002','0.000003','0.000000','48.938',8,'2010-07-21','49','3','851','4236-pengs.jpg',NULL,NULL);
/*!40000 ALTER TABLE `dvigar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ed_izm`
--

DROP TABLE IF EXISTS `ed_izm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ed_izm` (
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ed_izm`
--

LOCK TABLES `ed_izm` WRITE;
/*!40000 ALTER TABLE `ed_izm` DISABLE KEYS */;
INSERT INTO `ed_izm` VALUES ('шт',1),('м',2),('кг',3),('Пачка',4),('ярд',5),('литр',6),('Барель',7),('dzn 1',8),('ящик д',11),('пляшка',10),('pcs',12),('',13);
/*!40000 ALTER TABLE `ed_izm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f330`
--

DROP TABLE IF EXISTS `f330`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f330` (
  `id` int(5) NOT NULL auto_increment,
  `oc` int(2) default NULL,
  `coc` varchar(2) default NULL,
  `kau` varchar(5) default NULL,
  `saldo` decimal(12,2) default NULL,
  `booc` int(1) default NULL,
  `priznak` tinytext,
  `sprnum` int(1) default NULL,
  `idzak` int(5) default NULL,
  `zakname` tinytext,
  `kaukc` varchar(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f330`
--

LOCK TABLES `f330` WRITE;
/*!40000 ALTER TABLE `f330` DISABLE KEYS */;
INSERT INTO `f330` VALUES (4,10,'12','','1200.00',3,'фонды',0,0,'',NULL),(3,31,'10','','132.72',2,'пиб',0,0,'',NULL),(6,37,'10','524','1.00',3,'постачальники',1,15,'ЧП \"Система\"',NULL),(7,63,'10','3','692.29',3,'проба',1,16,'СТКЭ',NULL),(8,37,'12','555','1.00',3,'постачальники',1,21,'СФ АППБ \"АВАЛЬ\"',NULL),(12,31,'11','','336.45',2,'аваль',NULL,NULL,'',NULL),(11,37,'10','510','188.05',2,'телефон',1,11,'\"Укртелеком\" ЦЕС N 7',NULL),(13,63,'10','530','108.26',3,'земля',1,18,'Мiський бюджет',NULL),(14,63,'10','640','801.32',2,'электроэнер',1,28,'Лисичанский филиал ООО \" ЛЭО \"',NULL),(15,63,'10','741','12.76',3,'мусор',1,71,'КАТП-032810',NULL),(17,22,NULL,NULL,'0.00',2,NULL,NULL,NULL,NULL,NULL),(18,31,'13','','100.00',2,'test',NULL,NULL,'',NULL),(19,68,'10','789','150.00',3,'новый',1,107,'ДержНДIТБХВ',NULL),(20,68,'11','616','25.00',2,'новый',1,25,'ДП НИИУВМ \"ИМПУЛЬС\"',NULL);
/*!40000 ALTER TABLE `f330` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f330new`
--

DROP TABLE IF EXISTS `f330new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f330new` (
  `id` int(5) NOT NULL auto_increment,
  `oc` varchar(2) default NULL,
  `coc` varchar(2) default NULL,
  `kau` varchar(5) default NULL,
  `saldo` decimal(12,2) default NULL,
  `booc` int(1) default NULL,
  `priznak` tinytext,
  `sprnum` int(1) default NULL,
  `idzak` int(5) default NULL,
  `zakname` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f330new`
--

LOCK TABLES `f330new` WRITE;
/*!40000 ALTER TABLE `f330new` DISABLE KEYS */;
INSERT INTO `f330new` VALUES (1,'10','12',NULL,'1200.00',3,NULL,NULL,NULL,NULL),(2,'31','10',NULL,'9.46',2,NULL,NULL,NULL,NULL),(3,'31','11',NULL,'457.59',2,NULL,NULL,NULL,NULL),(4,'31','13',NULL,'100.00',2,NULL,NULL,NULL,NULL),(5,'37','10','','10.00',2,NULL,1,5,''),(6,'37','10','510','190.19',2,NULL,1,11,''),(7,'37','10','524','1.00',3,NULL,1,15,'\'ЧП \"Система\"\''),(8,'37','10','','2.00',2,NULL,1,121,''),(9,'37','10','','4.00',2,NULL,0,121,''),(10,'37','10','','12.00',3,NULL,1,127,'NULL'),(11,'37','12','555','1.00',3,NULL,1,21,'\'СФ АППБ \"АВАЛЬ\"\''),(12,'44','10',NULL,'93.14',3,NULL,NULL,NULL,NULL),(13,'63','10','3','492.29',3,NULL,1,16,'\'СТКЭ\''),(14,'63','10','','18.82',2,NULL,1,17,''),(15,'63','10','640','818.12',2,NULL,1,28,''),(16,'64','11',NULL,'44.67',3,NULL,NULL,NULL,NULL),(17,'64','14',NULL,'27.36',2,NULL,NULL,NULL,NULL),(18,'64','30',NULL,'17.00',2,NULL,NULL,NULL,NULL),(19,'64','40',NULL,'12.69',3,NULL,NULL,NULL,NULL),(20,'66','10',NULL,'4.00',3,NULL,NULL,NULL,NULL),(21,'68','10','','102.00',3,NULL,1,30,'NULL'),(22,'68','10','789','150.00',3,NULL,1,107,'\'ДержНДIТБХВ\''),(23,'68','10','','45.00',3,NULL,1,127,'NULL'),(24,'68','11','616','25.00',2,NULL,1,25,''),(25,'79','10',NULL,'64.80',2,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `f330new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f331`
--

DROP TABLE IF EXISTS `f331`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f331` (
  `id` int(5) NOT NULL auto_increment,
  `oc` varchar(2) default NULL,
  `coc` varchar(2) default NULL,
  `kau` varchar(5) default NULL,
  `summa` decimal(12,2) default NULL,
  `booc` int(1) default NULL,
  `priznak` tinytext,
  `sprnum` int(1) default NULL,
  `idzak` int(5) default NULL,
  `zakname` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f331`
--

LOCK TABLES `f331` WRITE;
/*!40000 ALTER TABLE `f331` DISABLE KEYS */;
INSERT INTO `f331` VALUES (1,'10','11','615','-1.00',3,NULL,1,24,'ЧМП \"НАТА\"'),(2,'12','11','3','1.00',2,'ghj',1,16,'СТКЭ');
/*!40000 ALTER TABLE `f331` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f331kor`
--

DROP TABLE IF EXISTS `f331kor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f331kor` (
  `id` int(5) NOT NULL auto_increment,
  `oc` int(2) default NULL,
  `coc` int(2) default NULL,
  `kau` varchar(5) default NULL,
  `summa` decimal(12,2) default NULL,
  `booc` int(1) default NULL,
  `priznak` tinytext,
  `sprnum` int(1) default NULL,
  `idzak` int(5) default NULL,
  `zakname` tinytext,
  `kc` int(2) default NULL,
  `ckc` int(2) default NULL,
  `kaukc` varchar(5) default NULL,
  `sprnumkc` int(1) default NULL,
  `zaknamekc` tinytext,
  `iduserkc` int(5) default NULL,
  `idzakkc` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f331kor`
--

LOCK TABLES `f331kor` WRITE;
/*!40000 ALTER TABLE `f331kor` DISABLE KEYS */;
INSERT INTO `f331kor` VALUES (1,10,11,'2','-2.00',3,'hghhg',1,121,'ОАО Рога и Копыта',14,13,'204',NULL,'Home Retail',NULL,1),(2,31,11,'','21.00',2,'hghhg gggg',0,0,'',37,10,NULL,NULL,NULL,NULL,NULL),(3,10,13,NULL,'11.00',2,NULL,NULL,NULL,NULL,20,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `f331kor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f340`
--

DROP TABLE IF EXISTS `f340`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f340` (
  `oc` int(2) default NULL,
  `coc` int(2) default NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh1` char(3) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh2` char(3) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Data` date NOT NULL,
  `Summa` decimal(17,2) NOT NULL,
  `Priznak` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Satelit` char(1) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Kol1` int(9) NOT NULL,
  `Kol2` int(9) NOT NULL,
  `Kol3` int(9) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `idzakkc` int(10) default NULL,
  `zaknamekc` tinytext collate utf8_unicode_ci,
  `idzak` int(10) default NULL,
  `zakname` tinytext collate utf8_unicode_ci,
  `iduser` int(5) default NULL,
  `doc` int(5) default NULL,
  `dok` int(5) default NULL,
  `idsimetr` int(10) default NULL,
  `perc` decimal(5,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=624 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f340`
--

LOCK TABLES `f340` WRITE;
/*!40000 ALTER TABLE `f340` DISABLE KEYS */;
INSERT INTO `f340` VALUES (68,10,'17','','31','11','17','',3,'2010-07-26','102.00','Получ опл Ажип','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,398,63,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'0.00'),(37,10,'510','','84','','','',3,'2010-07-30','98.96','Спис.услуг без НДС','1',373,'','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,382,NULL,'\'\'',11,'\"Укртелеком\" ЦЕС N 7',NULL,NULL,80176,NULL,'83.33'),(84,0,'','','37','10','510','',2,'2010-07-30','98.96','Спис.услуг без НДС','1',373,'','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,383,NULL,'\"Укртелеком\" ЦЕС N 7',11,'\'\'',NULL,NULL,80176,382,'83.33'),(84,0,'510','','79','10','','',3,'2010-07-30','98.96','Сп.усл.арен/тел','1',373,'','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,384,NULL,'\'\'',11,'\"Укртелеком\" ЦЕС N 7',NULL,NULL,80176,NULL,'83.33'),(79,10,'','','84','','510','',2,'2010-07-30','98.96','Сп.усл.арен/тел','1',373,'','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,385,NULL,'\"Укртелеком\" ЦЕС N 7',11,'\'\'',NULL,NULL,80176,384,'83.33'),(37,10,'510','','64','40','','',3,'2010-07-30','19.80','Сп.вып.услуг НДС','1',373,'','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,386,NULL,'\'\'',11,'\"Укртелеком\" ЦЕС N 7',NULL,NULL,80176,NULL,'16.67'),(64,40,'','','37','10','510','',2,'2010-07-30','19.80','Сп.вып.услуг НДС','1',373,'','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,387,NULL,'\"Укртелеком\" ЦЕС N 7',11,'\'\'',NULL,NULL,80176,386,'16.67'),(31,11,'','','63','10','530','',3,'2010-07-26','108.26','пер за землю ','1',374,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,388,NULL,'Мiський бюджет',18,'\'\'',NULL,NULL,447,NULL,'0.00'),(63,10,'530','','31','11','','',2,'2010-07-26','108.26','пер за землю ','1',374,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,389,NULL,'\'\'',18,'Мiський бюджет',NULL,NULL,447,388,'0.00'),(64,11,'2','','64','40','22','',2,'2011-04-30','0.33','Оплата за товар','1',395,'','Оплата за товар',0,0,0,'',1,1,603,7,'PTR NAZENKA 1',121,'ОАО Рога и Копыта',NULL,NULL,765,602,'16.67'),(37,10,'0','','31','10','1','',2,'2010-07-30','108.26','нач за землю','1',375,'','Оплата 2соб.Д371 К31/10',0,0,0,'',0,1,525,127,'supplier 001',NULL,'NULL',NULL,NULL,154,524,'0.00'),(79,10,'779','','70','30','779','',3,'2010-07-30','148.33','Выполнены работы','1',371,'','Выполнены работы  сч 681',0,0,0,'',1,0,376,63,'ООО \"Содружество\"',97,'ООО \"Содружество\"',NULL,NULL,81,NULL,'83.33'),(70,30,'779','','79','10','779','',2,'2010-07-30','148.33','Выполнены работы','1',371,'','Выполнены работы  сч 681',0,0,0,'',1,0,377,0,'ООО \"Содружество\"',97,'ООО \"Содружество\"',NULL,NULL,81,376,'83.33'),(31,11,'','','37','10','510','',3,'2010-07-14','120.90','пер ц 7 телефон','1',372,'','Переч.за услуги К 3111',0,0,0,'',1,0,378,NULL,'\"Укртелеком\" ЦЕС N 7',11,'\'\'',NULL,NULL,445,NULL,'0.00'),(37,10,'510','','31','11','','',2,'2010-07-14','120.90','пер ц 7 телефон','1',372,'','Переч.за услуги К 3111',0,0,0,'',1,0,379,NULL,'\'\'',11,'\"Укртелеком\" ЦЕС N 7',NULL,NULL,445,378,'0.00'),(64,40,'','','64','11','510','',3,'2010-07-14','20.15','возм.НДС по предопл','1',372,'','Переч.за услуги К 3111',0,0,0,'',1,0,380,NULL,'\"Укртелеком\" ЦЕС N 7',11,'\'\'',NULL,NULL,445,NULL,'16.67'),(64,11,'510','','64','40','','',2,'2010-07-14','20.15','возм.НДС по предопл','1',372,'','Переч.за услуги К 3111',0,0,0,'',1,0,381,NULL,'\'\'',11,'\"Укртелеком\" ЦЕС N 7',NULL,NULL,445,380,'16.67'),(63,10,'640','','31','11','','',2,'2010-07-14','321.12','пер за электроэнерг','1',363,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,317,NULL,'\'\'',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,444,316,'0.00'),(70,30,'779','','64','30','779','',2,'2010-07-30','29.67','Выполнены работы','1',371,'','Выполнены работы  сч 681',0,0,0,'',1,0,375,0,'ООО \"Содружество\"',97,'ООО \"Содружество\"',NULL,NULL,81,374,'16.67'),(64,30,'779','','70','30','779','',3,'2010-07-30','29.67','Выполнены работы','1',371,'','Выполнены работы  сч 681',0,0,0,'',1,0,374,63,'ООО \"Содружество\"',97,'ООО \"Содружество\"',NULL,NULL,81,NULL,'16.67'),(70,30,'731','','79','10','731','',2,'2010-07-30','249.99','Выполнены работы','1',366,'','Выполнены работы  сч 681',0,0,0,'',1,0,353,NULL,'Предприниматель Сахно В.В.',63,'ЧП СВВ',NULL,NULL,84,352,'83.33'),(79,10,'731','','70','30','731','',3,'2010-07-30','249.99','Выполнены работы','1',366,'','Выполнены работы  сч 681',0,0,0,'',1,1,352,63,'ЧП СВВ',63,'Предприниматель Сахно В.В.',NULL,NULL,84,NULL,'83.33'),(70,30,'731','','68','10','731','',3,'2010-07-30','200.00','вып чп свв 6','1',367,'','Выполнены работы  сч 681',0,0,0,'',1,0,342,NULL,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',NULL,NULL,84,NULL,'0.00'),(68,10,'731','','70','30','731','',2,'2010-07-30','200.00','вып чп свв 6','1',367,'','Выполнены работы  сч 681',0,0,0,'',1,0,343,NULL,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',NULL,NULL,84,342,'0.00'),(64,30,'731','','70','30','731','',3,'2010-07-30','33.34','Выполнены работы','1',367,'','Выполнены работы  сч 681',0,0,0,'',1,0,344,NULL,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',NULL,NULL,84,NULL,'16.67'),(70,30,'731','','64','30','731','',2,'2010-07-30','33.34','Выполнены работы','1',367,'','Выполнены работы  сч 681',0,0,0,'',1,0,345,NULL,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',NULL,NULL,84,344,'16.67'),(79,10,'731','','70','30','731','',3,'2010-07-30','166.66','Выполнены работы','1',367,'','Выполнены работы  сч 681',0,0,0,'',1,0,346,NULL,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',NULL,NULL,84,NULL,'83.33'),(70,30,'731','','79','10','731','',2,'2010-07-30','166.66','Выполнены работы','1',367,'','Выполнены работы  сч 681',0,0,0,'',1,0,347,NULL,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',NULL,NULL,84,346,'83.33'),(68,10,'731','','31','11','731','',3,'2010-07-13','200.00','Получена xg CBB','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,354,63,'\'Предприниматель Сахно В.В.\'',63,'Предприниматель Сахно В.В.',NULL,NULL,19148,NULL,'0.00'),(31,11,'731','','68','10','731','',2,'2010-07-13','200.00','Получена xg CBB','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,355,0,'Предприниматель Сахно В.В.',63,'\'Предприниматель Сахно В.В.\'',NULL,NULL,19148,354,'0.00'),(64,11,'731','','64','30','731','',3,'2010-07-13','33.34','Предоплата НДС','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,356,63,'\'Предприниматель Сахно В.В.\'',63,'Предприниматель Сахно В.В.',NULL,NULL,19148,NULL,'16.67'),(64,30,'731','','64','11','731','',2,'2010-07-13','33.34','Предоплата НДС','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,357,0,'Предприниматель Сахно В.В.',63,'\'Предприниматель Сахно В.В.\'',NULL,NULL,19148,356,'16.67'),(64,14,'731','','84','','731','',3,'2010-07-13','12.00','Начисл.Единый налог','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,358,63,'\'Предприниматель Сахно В.В.\'',63,'Предприниматель Сахно В.В.',NULL,NULL,19148,NULL,'6.00'),(84,0,'731','','64','14','731','',2,'2010-07-13','12.00','Начисл.Единый налог','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,359,0,'Предприниматель Сахно В.В.',63,'\'Предприниматель Сахно В.В.\'',NULL,NULL,19148,358,'6.00'),(84,0,'731','','79','10','731','',3,'2010-07-13','12.00','Начисл.Единый налог','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,360,63,'\'Предприниматель Сахно В.В.\'',63,'Предприниматель Сахно В.В.',NULL,NULL,19148,NULL,'6.00'),(79,10,'731','','84','','731','',2,'2010-07-13','12.00','Начисл.Единый налог','1',368,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,361,0,'Предприниматель Сахно В.В.',63,'\'Предприниматель Сахно В.В.\'',NULL,NULL,19148,360,'6.00'),(31,11,'','','63','10','3','',3,'2010-07-26','200.00','переч СТКЕ 3','1',369,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,362,NULL,'СТКЭ',16,'\'\'',NULL,NULL,449,NULL,'0.00'),(63,10,'3','','31','11','','',2,'2010-07-26','200.00','переч СТКЕ 3','1',369,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,363,NULL,'\'\'',16,'СТКЭ',NULL,NULL,449,362,'0.00'),(68,10,'0','','31','11','779','',3,'2010-07-13','178.00','опл Содружество','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,364,63,'ООО \"Содружество\"',97,'NULL',NULL,NULL,19148,NULL,'0.00'),(31,11,'779','','68','10','0','',2,'2010-07-13','178.00','опл Содружество','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,365,0,'NULL',97,'ООО \"Содружество\"',NULL,NULL,19148,364,'0.00'),(64,11,'0','','64','30','779','',3,'2010-07-13','29.67','Предоплата НДС','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,366,63,'ООО \"Содружество\"',97,'NULL',NULL,NULL,19148,NULL,'16.67'),(64,30,'779','','64','11','0','',2,'2010-07-13','29.67','Предоплата НДС','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,367,0,'NULL',97,'ООО \"Содружество\"',NULL,NULL,19148,366,'16.67'),(64,14,'0','','84','','779','',3,'2010-07-13','10.68','Начисл.Единый налог','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,368,63,'ООО \"Содружество\"',97,'NULL',NULL,NULL,19148,NULL,'6.00'),(84,0,'779','','64','14','0','',2,'2010-07-13','10.68','Начисл.Единый налог','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,369,0,'NULL',97,'ООО \"Содружество\"',NULL,NULL,19148,368,'6.00'),(84,0,'0','','79','10','779','',3,'2010-07-13','10.68','Начисл.Единый налог','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,370,63,'ООО \"Содружество\"',97,'NULL',NULL,NULL,19148,NULL,'6.00'),(79,10,'779','','84','','0','',2,'2010-07-13','10.68','Начисл.Единый налог','1',370,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,371,0,'NULL',97,'ООО \"Содружество\"',NULL,NULL,19148,370,'6.00'),(70,30,'779','','68','10','779','',3,'2010-07-30','178.00','віп Содружество','1',371,'','Выполнены работы  сч 681',0,0,0,'',1,0,372,63,'ООО \"Содружество\"',97,'ООО \"Содружество\"',NULL,NULL,81,NULL,'0.00'),(68,10,'779','','70','30','779','',2,'2010-07-30','178.00','віп Содружество','1',371,'','Выполнены работы  сч 681',0,0,0,'',1,0,373,0,'ООО \"Содружество\"',97,'ООО \"Содружество\"',NULL,NULL,81,372,'0.00'),(31,11,'','','63','10','640','',3,'2010-07-14','321.12','пер за электроэнерг','1',363,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,316,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'\'\'',NULL,NULL,444,NULL,'0.00'),(63,10,'640','','84','','640','',3,'2010-07-30','253.59','Нач расх  услуги','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,318,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,NULL,'83.33'),(84,0,'640','','63','10','640','',2,'2010-07-30','253.59','Нач расх  услуги','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,319,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,318,'83.33'),(63,10,'640','','64','11','640','',3,'2010-07-30','50.73','Нач расх услуг НДС','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,320,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,NULL,'16.67'),(64,11,'640','','63','10','640','',2,'2010-07-30','50.73','Нач расх услуг НДС','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,321,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,320,'16.67'),(84,0,'640','','23','','640','',3,'2010-07-30','253.59','Нач расх услуг безН','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,322,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,NULL,'83.33'),(23,0,'640','','84','','640','',2,'2010-07-30','253.59','Нач расх услуг безН','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,323,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,322,'83.33'),(23,0,'640','','79','10','640','',3,'2010-07-30','253.59','Нач расх услуг безН','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,324,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,NULL,'83.33'),(79,10,'640','','23','','640','',2,'2010-07-30','253.59','Нач расх услуг безН','1',364,'','Начис расх услуги 1соб К631',0,0,0,'',1,0,325,NULL,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',NULL,NULL,747,324,'83.33'),(68,10,'','','31','11','731','',3,'2010-07-23','300.00','опл чп свв','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,326,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,NULL,'0.00'),(31,11,'731','','68','10','','',2,'2010-07-23','300.00','опл чп свв','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,327,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,326,'0.00'),(64,11,'','','64','30','731','',3,'2010-07-23','50.01','Предоплата НДС','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,328,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,NULL,'16.67'),(64,30,'731','','64','11','','',2,'2010-07-23','50.01','Предоплата НДС','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,329,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,328,'16.67'),(64,14,'','','84','','731','',3,'2010-07-23','18.00','Начисл.Единый налог','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,330,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,NULL,'6.00'),(84,0,'731','','64','14','','',2,'2010-07-23','18.00','Начисл.Единый налог','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,331,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,330,'6.00'),(84,0,'','','79','10','731','',3,'2010-07-23','18.00','Начисл.Единый налог','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,332,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,NULL,'6.00'),(79,10,'731','','84','','','',2,'2010-07-23','18.00','Начисл.Единый налог','1',365,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,333,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,332,'6.00'),(70,30,'731','','64','30','731','',2,'2010-07-30','50.01','Выполнены работы','1',366,'','Выполнены работы  сч 681',0,0,0,'',1,0,351,NULL,'Предприниматель Сахно В.В.',63,'ЧП СВВ',NULL,NULL,84,350,'16.67'),(64,30,'731','','70','30','731','',3,'2010-07-30','50.01','Выполнены работы','1',366,'','Выполнены работы  сч 681',0,0,0,'',1,1,350,63,'ЧП СВВ',63,'Предприниматель Сахно В.В.',NULL,NULL,84,NULL,'16.67'),(68,10,'731','','70','30','731','',2,'2010-07-30','300.00','вып чп свв','1',366,'','Выполнены работы  сч 681',0,0,0,'',1,0,349,NULL,'Предприниматель Сахно В.В.',63,'ЧП СВВ',NULL,NULL,84,348,'0.00'),(70,30,'731','','68','10','731','',3,'2010-07-30','300.00','вып чп свв','1',366,'','Выполнены работы  сч 681',0,0,0,'',1,1,348,63,'ЧП СВВ',63,'Предприниматель Сахно В.В.',NULL,NULL,84,NULL,'0.00'),(31,11,'17','','68','10','17','',2,'2010-07-26','102.00','Получ опл Ажип','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,399,0,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,398,'0.00'),(64,11,'17','','64','30','17','',3,'2010-07-26','17.00','Предоплата НДС','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,400,63,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'16.67'),(64,30,'17','','64','11','17','',2,'2010-07-26','17.00','Предоплата НДС','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,401,0,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,400,'16.67'),(64,14,'17','','84','','17','',3,'2010-07-26','6.12','Начисл.Единый налог','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,402,63,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'6.00'),(84,0,'17','','64','14','17','',2,'2010-07-26','6.12','Начисл.Единый налог','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,403,0,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,402,'6.00'),(84,0,'17','','79','10','17','',3,'2010-07-26','6.12','Начисл.Единый налог','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,404,63,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'6.00'),(79,10,'17','','84','','17','',2,'2010-07-26','6.12','Начисл.Единый налог','1',376,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,405,0,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',NULL,NULL,48,404,'6.00'),(31,11,'','','64','14','','',3,'2010-07-06','93.00','переч единый налог','1',377,'','Перечислен един.налог.К3111',0,0,0,'',0,0,406,NULL,'\'\'',NULL,'\'\'',NULL,NULL,444,NULL,'0.00'),(64,14,'','','31','11','','',2,'2010-07-06','93.00','переч единый налог','1',377,'','Перечислен един.налог.К3111',0,0,0,'',0,0,407,NULL,'\'\'',NULL,'\'\'',NULL,NULL,444,406,'0.00'),(31,11,'','','23','','555','',3,'2010-07-29','45.00','расч обсл Аваль','1',378,'','Услуги банка  3111',0,0,0,'',1,0,408,NULL,'СФ АППБ \"АВАЛЬ\"',21,'\'\'',NULL,NULL,1821,NULL,'0.00'),(23,0,'555','','31','11','','',2,'2010-07-29','45.00','расч обсл Аваль','1',378,'','Услуги банка  3111',0,0,0,'',1,0,409,NULL,'\'\'',21,'СФ АППБ \"АВАЛЬ\"',NULL,NULL,1821,408,'0.00'),(23,0,'','','84','','555','',3,'2010-07-29','45.00','расч обсл Аваль','1',378,'','Услуги банка  3111',0,0,0,'',1,0,410,NULL,'СФ АППБ \"АВАЛЬ\"',21,'\'\'',NULL,NULL,1821,NULL,'0.00'),(84,0,'555','','23','','','',2,'2010-07-29','45.00','расч обсл Аваль','1',378,'','Услуги банка  3111',0,0,0,'',1,0,411,NULL,'\'\'',21,'СФ АППБ \"АВАЛЬ\"',NULL,NULL,1821,410,'0.00'),(84,0,'','','79','10','555','',3,'2010-07-29','45.00','расч обсл Аваль','1',378,'','Услуги банка  3111',0,0,0,'',1,0,412,NULL,'СФ АППБ \"АВАЛЬ\"',21,'\'\'',NULL,NULL,1821,NULL,'0.00'),(79,10,'555','','84','','','',2,'2010-07-29','45.00','расч обсл Аваль','1',378,'','Услуги банка  3111',0,0,0,'',1,0,413,NULL,'\'\'',21,'СФ АППБ \"АВАЛЬ\"',NULL,NULL,1821,412,'0.00'),(31,11,'','','23','','555','',3,'2010-07-29','40.00','расч обсл Аваль','1',379,'','Услуги банка  3111',0,0,0,'',1,0,414,NULL,'СФ АППБ \"АВАЛЬ\"',21,'\'\'',NULL,NULL,1675,NULL,'0.00'),(23,0,'555','','31','11','','',2,'2010-07-29','40.00','расч обсл Аваль','1',379,'','Услуги банка  3111',0,0,0,'',1,0,415,NULL,'\'\'',21,'СФ АППБ \"АВАЛЬ\"',NULL,NULL,1675,414,'0.00'),(23,0,'','','84','','555','',3,'2010-07-29','40.00','расч обсл Аваль','1',379,'','Услуги банка  3111',0,0,0,'',1,0,416,NULL,'СФ АППБ \"АВАЛЬ\"',21,'\'\'',NULL,NULL,1675,NULL,'0.00'),(84,0,'555','','23','','','',2,'2010-07-29','40.00','расч обсл Аваль','1',379,'','Услуги банка  3111',0,0,0,'',1,0,417,NULL,'\'\'',21,'СФ АППБ \"АВАЛЬ\"',NULL,NULL,1675,416,'0.00'),(84,0,'','','79','10','555','',3,'2010-07-29','40.00','расч обсл Аваль','1',379,'','Услуги банка  3111',0,0,0,'',1,0,418,NULL,'СФ АППБ \"АВАЛЬ\"',21,'\'\'',NULL,NULL,1675,NULL,'0.00'),(79,10,'555','','84','','','',2,'2010-07-29','40.00','расч обсл Аваль','1',379,'','Услуги банка  3111',0,0,0,'',1,0,419,NULL,'\'\'',21,'СФ АППБ \"АВАЛЬ\"',NULL,NULL,1675,418,'0.00'),(31,11,'0','','63','10','528','',3,'2010-07-26','18.82','переч водоканал','1',380,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,420,18,'ГКП \"Северодонецкводоканал\"',17,'NULL',NULL,NULL,448,NULL,'0.00'),(63,10,'528','','31','11','0','',2,'2010-07-26','18.82','переч водоканал','1',380,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,421,0,'NULL',17,'ГКП \"Северодонецкводоканал\"',NULL,NULL,448,420,'0.00'),(31,10,'1','','37','10','0','',3,'2010-07-30','108.26','нач за землю','1',375,'','Оплата 2соб.Д371 К31/10',0,0,0,'',1,0,524,NULL,'NULL',127,'supplier 001',NULL,NULL,154,NULL,'0.00'),(79,10,'','','81','10','','',2,'2010-10-25','4.00','weeeyyyy56','1',388,'','Начислена зарплата',0,0,0,'',0,0,505,NULL,'\'\'',NULL,'\'\'',NULL,NULL,23145,504,'0.00'),(81,10,'','','66','10','','',2,'2010-10-25','4.00','weeeyyyy56','1',388,'','Начислена зарплата',0,0,0,'',0,0,503,NULL,'\'\'',NULL,'\'\'',NULL,NULL,23145,502,'0.00'),(81,10,'','','79','10','','',3,'2010-10-25','4.00','weeeyyyy56','1',388,'','Начислена зарплата',0,0,0,'',0,0,504,NULL,'\'\'',NULL,'\'\'',NULL,NULL,23145,NULL,'0.00'),(66,10,'','','81','10','','',3,'2010-10-25','4.00','weeeyyyy56','1',388,'','Начислена зарплата',0,0,0,'',0,0,502,NULL,'\'\'',NULL,'\'\'',NULL,NULL,23145,NULL,'0.00'),(84,0,'0','','63','10','528','',2,'2010-07-31','18.82','Нач водоканал','1',381,'','Нач.усл.1соб без НДС  631',0,0,0,'',0,0,517,NULL,'\'ГКП \"Северодонецкводоканал\"\'',NULL,'\'\'',NULL,NULL,229,516,'0.00'),(37,10,'0','','31','11','0','',2,'2010-10-25','58.00','111111111333 676','1',387,'','Оплата за материалы сч31/11',0,0,0,'',0,0,585,NULL,'NULL',NULL,'NULL',NULL,NULL,213,584,'0.00'),(64,40,'0','','64','11','0','',3,'2010-10-25','9.67','Оплата за материалы','1',387,'','Оплата за материалы сч31/11',0,0,0,'',0,0,586,NULL,'NULL',NULL,'NULL',NULL,NULL,213,NULL,'16.67'),(63,10,'528','','84','','0','',3,'2010-07-31','18.82','Нач водоканал','1',381,'','Нач.усл.1соб без НДС  631',0,0,0,'',0,0,516,NULL,'\'\'',NULL,'\'ГКП \"Северодонецкводоканал\"\'',NULL,NULL,229,NULL,'0.00'),(31,11,'0','','63','10','741','',3,'2010-07-14','12.76','За усл. мусор','1',382,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,430,18,'КАТП-032810',71,'NULL',NULL,NULL,446,NULL,'0.00'),(63,10,'741','','31','11','0','',2,'2010-07-14','12.76','За усл. мусор','1',382,'','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,431,0,'NULL',71,'КАТП-032810',NULL,NULL,446,430,'0.00'),(79,10,'0','','23','','741','',2,'2010-07-30','10.63','Нач расх услуг безН','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,467,NULL,'\'КАТП-032810\'',NULL,'\'\'',NULL,NULL,391,466,'83.33'),(23,0,'741','','79','10','0','',3,'2010-07-30','10.63','Нач расх услуг безН','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,466,NULL,'\'\'',NULL,'\'КАТП-032810\'',NULL,NULL,391,NULL,'83.33'),(84,0,'741','','23','','0','',3,'2010-07-30','10.63','Нач расх услуг безН','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,464,NULL,'\'\'',NULL,'\'КАТП-032810\'',NULL,NULL,391,NULL,'83.33'),(23,0,'0','','84','','741','',2,'2010-07-30','10.63','Нач расх услуг безН','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,465,NULL,'\'КАТП-032810\'',NULL,'\'\'',NULL,NULL,391,464,'83.33'),(64,11,'0','','63','10','741','',2,'2010-07-30','2.13','Нач расх услуг НДС','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,463,NULL,'\'КАТП-032810\'',NULL,'\'\'',NULL,NULL,391,462,'16.67'),(63,10,'741','','64','11','0','',3,'2010-07-30','2.13','Нач расх услуг НДС','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,462,NULL,'\'\'',NULL,'\'КАТП-032810\'',NULL,NULL,391,NULL,'16.67'),(84,0,'0','','63','10','741','',2,'2010-07-30','10.63','Нач расх мусор','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,461,NULL,'\'КАТП-032810\'',NULL,'\'\'',NULL,NULL,391,460,'83.33'),(63,10,'741','','84','','0','',3,'2010-07-30','10.63','Нач расх мусор','1',383,'','Начис расх услуги 1соб К631',0,0,0,'',0,0,460,NULL,'\'\'',NULL,'\'КАТП-032810\'',NULL,NULL,391,NULL,'83.33'),(44,10,'17','','79','10','','',3,'2010-07-30','93.14','прибыль','1',384,'','прибыль',0,0,0,'',1,0,440,NULL,'\'\'',30,'ЧП Ажиппо',NULL,NULL,167,NULL,'0.00'),(79,10,'','','44','10','17','',2,'2010-07-30','93.14','прибыль','1',384,'','прибыль',0,0,0,'',0,1,441,30,'ЧП Ажиппо',NULL,'\'\'',NULL,NULL,167,440,'0.00'),(64,40,'22','','64','11','2','',3,'2011-04-30','0.33','Оплата за товар','1',395,'','Оплата за товар',0,0,0,'',1,1,602,121,'ОАО Рога и Копыта',7,'PTR NAZENKA 1',NULL,NULL,765,NULL,'16.67'),(79,10,'17','','84','','17','',2,'2010-07-30','6.12','отнес.на фин.рез-т','1',385,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,0,593,NULL,'\'ЧП Ажиппо В.П.\'',NULL,'\'ЧП Ажиппо В.П.\'',NULL,NULL,84,592,'6.00'),(84,0,'17','','79','10','17','',3,'2010-07-30','6.12','отнес.на фин.рез-т','1',385,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,0,592,NULL,'\'ЧП Ажиппо В.П.\'',NULL,'\'ЧП Ажиппо В.П.\'',NULL,NULL,84,NULL,'6.00'),(84,0,'17','','64','14','17','',2,'2010-07-30','6.12','начисл.ед.налог','1',385,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,0,591,NULL,'\'ЧП Ажиппо В.П.\'',NULL,'\'ЧП Ажиппо В.П.\'',NULL,NULL,84,590,'6.00'),(37,10,'17','','31','11','17','',3,'2010-07-30','102.00','вып Ажип 8','1',385,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,0,588,NULL,'\'ЧП Ажиппо В.П.\'',NULL,'\'ЧП Ажиппо В.П.\'',NULL,NULL,84,NULL,'0.00'),(31,11,'17','','37','10','17','',2,'2010-07-30','102.00','вып Ажип 8','1',385,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,0,589,NULL,'\'ЧП Ажиппо В.П.\'',NULL,'\'ЧП Ажиппо В.П.\'',NULL,NULL,84,588,'0.00'),(64,14,'17','','84','','17','',3,'2010-07-30','6.12','начисл.ед.налог','1',385,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,0,590,NULL,'\'ЧП Ажиппо В.П.\'',NULL,'\'ЧП Ажиппо В.П.\'',NULL,NULL,84,NULL,'6.00'),(37,10,'2','','31','10','22','',2,'2011-04-30','2.00','hhjjhhjhjj','1',395,'','Оплата за товар',0,0,0,'',1,1,601,7,'PTR NAZENKA 1',121,'ОАО Рога и Копыта',NULL,NULL,765,600,'0.00'),(64,11,'0','','64','40','0','',2,'2010-10-25','9.67','Оплата за материалы','1',387,'','Оплата за материалы сч31/11',0,0,0,'',0,0,587,NULL,'NULL',NULL,'NULL',NULL,NULL,213,586,'16.67'),(31,11,'0','','68','10','','',2,'2010-10-25','45.00','iooiioioioio','1',386,'','Ошиб.переч.Д3111/К 6810',0,0,0,'',0,1,577,127,'supplier 0012',0,'',NULL,NULL,1245,576,'0.00'),(79,10,'2','','84','','1','',2,'2010-10-25','0.72','отнес.на фин.рез-т','1',389,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,1,567,127,'supplier 001',NULL,'\'ОАО Рога и Копыта\'',NULL,NULL,1232,566,'6.00'),(37,10,'1','','31','11','2','',3,'2010-10-25','12.00','test12345612','1',389,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',1,0,562,NULL,'\'ОАО Рога и Копыта\'',127,'supplier 001',NULL,NULL,1232,NULL,'0.00'),(84,0,'528','','23','','0','',3,'2010-07-31','18.82','Нач.расх.1с. безНДС','1',381,'','Нач.усл.1соб без НДС  631',0,0,0,'',0,0,518,NULL,'\'\'',NULL,'\'ГКП \"Северодонецкводоканал\"\'',NULL,NULL,229,NULL,'0.00'),(23,0,'0','','84','','528','',2,'2010-07-31','18.82','Нач.расх.1с. безНДС','1',381,'','Нач.усл.1соб без НДС  631',0,0,0,'',0,0,519,NULL,'\'ГКП \"Северодонецкводоканал\"\'',NULL,'\'\'',NULL,NULL,229,518,'0.00'),(23,0,'528','','79','10','0','',3,'2010-07-31','18.82','hhhhhhh','1',381,'','Нач.усл.1соб без НДС  631',0,0,0,'',0,0,520,NULL,'\'\'',NULL,'\'ГКП \"Северодонецкводоканал\"\'',NULL,NULL,229,NULL,'0.00'),(79,10,'0','','23','','528','',2,'2010-07-31','18.82','hhhhhhh','1',381,'','Нач.усл.1соб без НДС  631',0,0,0,'',0,0,521,NULL,'\'ГКП \"Северодонецкводоканал\"\'',NULL,'\'\'',NULL,NULL,229,520,'0.00'),(68,10,'1','','31','11','0','',3,'2010-10-25','45.00','iooiioioioio','1',386,'','Ошиб.переч.Д3111/К 6810',0,0,0,'',1,0,576,NULL,'NULL',127,'supplier 0012',NULL,NULL,1245,NULL,'0.00'),(84,0,'1','','79','10','2','',3,'2010-10-25','0.72','отнес.на фин.рез-т','1',389,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',1,0,566,NULL,'\'ОАО Рога и Копыта\'',127,'supplier 001',NULL,NULL,1232,NULL,'6.00'),(84,0,'2','','64','14','1','',2,'2010-10-25','0.72','начисл.ед.налог','1',389,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,1,565,127,'supplier 001',NULL,'\'ОАО Рога и Копыта\'',NULL,NULL,1232,564,'6.00'),(64,14,'1','','84','','2','',3,'2010-10-25','0.72','начисл.ед.налог','1',389,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',1,0,564,NULL,'\'ОАО Рога и Копыта\'',127,'supplier 001',NULL,NULL,1232,NULL,'6.00'),(31,11,'2','','37','10','1','',2,'2010-10-25','12.00','test12345612','1',389,'','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',0,1,563,127,'supplier 001',NULL,'\'ОАО Рога и Копыта\'',NULL,NULL,1232,562,'0.00'),(31,11,'0','','37','10','0','',3,'2010-10-25','58.00','111111111333 676','1',387,'','Оплата за материалы сч31/11',0,0,0,'',0,0,584,NULL,'NULL',NULL,'NULL',NULL,NULL,213,NULL,'0.00'),(31,10,'3','','63','10','1','',2,'2011-04-04','1.00','hhhhhhhhh','1',394,'','Ошибочн.перечисл.Д3110',0,0,0,'',0,0,599,NULL,'\'supplier 001\'',NULL,'\'ОАО \"Рога и копыта\" \'',NULL,NULL,12,598,'0.00'),(31,10,'22','','37','10','2','',3,'2011-04-30','2.00','hhjjhhjhjj','1',395,'','Оплата за товар',0,0,0,'',1,1,600,121,'ОАО Рога и Копыта',7,'PTR NAZENKA 1',NULL,NULL,765,NULL,'0.00'),(63,10,'1','','31','10','3','',3,'2011-04-04','1.00','hhhhhhhhh','1',394,'','Ошибочн.перечисл.Д3110',0,0,0,'',0,0,598,NULL,'\'ОАО \"Рога и копыта\" \'',NULL,'\'supplier 001\'',NULL,NULL,12,NULL,'0.00'),(31,10,'22','','37','10','2','',3,'2011-06-13','4.00','Оплата за товар','1',396,'','Оплата за товар',0,0,0,'',0,0,604,121,'\'ОАО Рога и Копыта\'',7,'\'PTR NAZENKA 1\'',NULL,NULL,765,NULL,'0.00'),(37,10,'2','','31','10','22','',2,'2011-06-13','4.00','Оплата за товар','1',396,'','Оплата за товар',0,0,0,'',0,0,605,7,'\'PTR NAZENKA 1\'',121,'\'ОАО Рога и Копыта\'',NULL,NULL,765,604,'0.00'),(64,40,'22','','64','11','2','',3,'2011-06-13','0.67','Оплата за товар','1',396,'','Оплата за товар',0,0,0,'',0,0,606,121,'\'ОАО Рога и Копыта\'',7,'\'PTR NAZENKA 1\'',NULL,NULL,765,NULL,'16.67'),(64,11,'2','','64','40','22','',2,'2011-06-13','0.67','Оплата за товар','1',396,'','Оплата за товар',0,0,0,'',0,0,607,7,'\'PTR NAZENKA 1\'',121,'\'ОАО Рога и Копыта\'',NULL,NULL,765,606,'16.67'),(31,10,'','','37','10','146','',3,'2011-07-11','10.00','gjhgjhgjhgjhgh','1',397,'','Оплата за материалы',0,0,0,'',0,1,608,5,'PST SKIDKA',NULL,'\'\'',NULL,NULL,12,NULL,'0.00'),(37,10,'146','','31','10','','',2,'2011-07-11','10.00','gjhgjhgjhgjhgh','1',397,'','Оплата за материалы',0,0,0,'',1,0,609,NULL,'\'\'',5,'PST SKIDKA',NULL,NULL,12,608,'0.00'),(64,40,'','','64','11','146','',3,'2011-07-11','1.67','Оплата за матер.НДС','1',397,'','Оплата за материалы',0,0,0,'',0,1,610,5,'PST SKIDKA',NULL,'\'\'',NULL,NULL,12,NULL,'16.67'),(64,11,'146','','64','40','','',2,'2011-07-11','1.67','Оплата за матер.НДС','1',397,'','Оплата за материалы',0,0,0,'',1,0,611,NULL,'\'\'',5,'PST SKIDKA',NULL,NULL,12,610,'16.67'),(79,10,'2','','84','','0','',2,'2011-08-20','12.00','отнес.на фин.рез-т','1',398,'','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',0,0,623,NULL,'NULL',NULL,'\'supplier 2\'',NULL,NULL,1655,622,'6.00'),(84,0,'0','','79','10','2','',3,'2011-08-20','12.00','отнес.на фин.рез-т','1',398,'','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',0,0,622,NULL,'\'supplier 2\'',NULL,'NULL',NULL,NULL,1655,NULL,'6.00'),(84,0,'2','','64','14','0','',2,'2011-08-20','12.00','начисл.ед.налог2','1',398,'','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',0,0,621,NULL,'NULL',NULL,'\'supplier 2\'',NULL,NULL,1655,620,'6.00'),(64,14,'0','','84','','2','',3,'2011-08-20','12.00','начисл.ед.налог2','1',398,'','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',0,0,620,NULL,'\'supplier 2\'',NULL,'NULL',NULL,NULL,1655,NULL,'6.00'),(31,11,'2','','37','10','0','',2,'2011-08-20','200.00','hjkjhljkhlkjkljklkl','1',398,'','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',0,0,619,NULL,'NULL',NULL,'\'supplier 2\'',NULL,NULL,1655,618,'0.00'),(37,10,'0','','31','11','2','',3,'2011-08-20','200.00','hjkjhljkhlkjkljklkl','1',398,'','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',0,0,618,NULL,'\'supplier 2\'',NULL,'NULL',NULL,NULL,1655,NULL,'0.00');
/*!40000 ALTER TABLE `f340` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f340new`
--

DROP TABLE IF EXISTS `f340new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f340new` (
  `oc` int(2) default NULL,
  `coc` int(2) default NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh1` char(3) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh2` char(3) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Data` date NOT NULL,
  `Summa` decimal(17,2) NOT NULL,
  `Priznak` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Satelit` char(1) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Kol1` int(9) NOT NULL,
  `Kol2` int(9) NOT NULL,
  `Kol3` int(9) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `idzakkc` int(10) default NULL,
  `zaknamekc` tinytext collate utf8_unicode_ci,
  `idzak` int(10) default NULL,
  `zakname` tinytext collate utf8_unicode_ci,
  `iduser` int(5) default NULL,
  `doc` int(5) default NULL,
  `dok` int(5) default NULL,
  `idsimetr` int(10) default NULL,
  `perc` decimal(5,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=171 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f340new`
--

LOCK TABLES `f340new` WRITE;
/*!40000 ALTER TABLE `f340new` DISABLE KEYS */;
INSERT INTO `f340new` VALUES (68,10,'731','','31','11','','',3,'2010-09-23','300.00','опл чп сахно','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,33,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'0.00'),(31,11,'','','68','10','731','',2,'2010-09-23','300.00','опл чп сахно','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,34,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,33,'0.00'),(64,11,'731','','64','30','','',3,'2010-09-23','50.01','Предоплата НДС','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,35,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'16.67'),(64,30,'','','64','11','731','',2,'2010-09-23','50.01','Предоплата НДС','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,36,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,35,'16.67'),(64,14,'731','','84','','','',3,'2010-09-23','18.00','Начисл.Единый налог','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,37,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'6.00'),(84,0,'','','64','14','731','',2,'2010-09-23','18.00','Начисл.Единый налог','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,38,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,37,'6.00'),(84,0,'731','','79','10','','',3,'2010-09-23','18.00','Начисл.Единый налог','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,39,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'6.00'),(79,10,'','','84','','731','',2,'2010-09-23','18.00','Начисл.Единый налог','1',13,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,40,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,24159,39,'6.00'),(79,10,'0','','84','','731','',2,'2010-09-13','12.00','Начисл.Единый налог','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,104,0,'Предприниматель Сахно В.В.',63,'NULL',NULL,NULL,24159,103,'6.00'),(84,0,'731','','79','10','0','',3,'2010-09-13','12.00','Начисл.Единый налог','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,103,0,'NULL',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'6.00'),(84,0,'0','','64','14','731','',2,'2010-09-13','12.00','Начисл.Единый налог','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,102,0,'Предприниматель Сахно В.В.',63,'NULL',NULL,NULL,24159,101,'6.00'),(64,14,'731','','84','','0','',3,'2010-09-13','12.00','Начисл.Единый налог','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,101,0,'NULL',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'6.00'),(64,11,'731','','64','30','0','',3,'2010-09-13','33.34','Предоплата НДС','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,99,0,'NULL',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'16.67'),(64,30,'0','','64','11','731','',2,'2010-09-13','33.34','Предоплата НДС','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,100,0,'Предприниматель Сахно В.В.',63,'NULL',NULL,NULL,24159,99,'16.67'),(31,11,'0','','68','10','731','',2,'2010-09-13','200.00','Получена сахно','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,98,0,'Предприниматель Сахно В.В.',63,'NULL',NULL,NULL,24159,97,'0.00'),(68,10,'731','','31','11','0','',3,'2010-09-13','200.00','Получена сахно','1',23,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,97,0,'NULL',63,'Предприниматель Сахно В.В.',NULL,NULL,24159,NULL,'0.00'),(68,10,'779','','31','11','','',3,'2010-09-13','178.00','опл содружество','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,49,NULL,'\'\'',97,'ООО \"Содружество\"',NULL,NULL,123,NULL,'0.00'),(31,11,'','','68','10','779','',2,'2010-09-13','178.00','опл содружество','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,50,NULL,'ООО \"Содружество\"',97,'\'\'',NULL,NULL,123,49,'0.00'),(64,11,'779','','64','30','','',3,'2010-09-13','29.67','Предоплата НДС','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,51,NULL,'\'\'',97,'ООО \"Содружество\"',NULL,NULL,123,NULL,'16.67'),(64,30,'','','64','11','779','',2,'2010-09-13','29.67','Предоплата НДС','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,52,NULL,'ООО \"Содружество\"',97,'\'\'',NULL,NULL,123,51,'16.67'),(64,14,'779','','84','','','',3,'2010-09-13','10.68','Начисл.Единый налог','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,53,NULL,'\'\'',97,'ООО \"Содружество\"',NULL,NULL,123,NULL,'6.00'),(84,0,'','','64','14','779','',2,'2010-09-13','10.68','Начисл.Единый налог','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,54,NULL,'ООО \"Содружество\"',97,'\'\'',NULL,NULL,123,53,'6.00'),(84,0,'779','','79','10','','',3,'2010-09-13','10.68','Начисл.Единый налог','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,55,NULL,'\'\'',97,'ООО \"Содружество\"',NULL,NULL,123,NULL,'6.00'),(79,10,'','','84','','779','',2,'2010-09-13','10.68','Начисл.Единый налог','1',15,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,56,NULL,'ООО \"Содружество\"',97,'\'\'',NULL,NULL,123,55,'6.00'),(68,10,'17','','31','11','0','',3,'2010-09-26','102.00','Получена предоплата','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,57,NULL,'NULL',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'0.00'),(31,11,'0','','68','10','17','',2,'2010-09-26','102.00','Получена предоплата','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,58,NULL,'ЧП Ажиппо В.П.',30,'NULL',NULL,NULL,48,57,'0.00'),(64,11,'17','','64','30','0','',3,'2010-09-26','17.00','Предоплата НДС','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,59,NULL,'NULL',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'16.67'),(64,30,'0','','64','11','17','',2,'2010-09-26','17.00','Предоплата НДС','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,60,NULL,'ЧП Ажиппо В.П.',30,'NULL',NULL,NULL,48,59,'16.67'),(64,14,'17','','84','','0','',3,'2010-09-26','6.12','Начисл.Единый налог','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,61,NULL,'NULL',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'6.00'),(84,0,'0','','64','14','17','',2,'2010-09-26','6.12','Начисл.Единый налог','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,62,NULL,'ЧП Ажиппо В.П.',30,'NULL',NULL,NULL,48,61,'6.00'),(84,0,'17','','79','10','0','',3,'2010-09-26','6.12','Начисл.Единый налог','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,63,NULL,'NULL',30,'ЧП Ажиппо В.П.',NULL,NULL,48,NULL,'6.00'),(79,10,'0','','84','','17','',2,'2010-09-26','6.12','Начисл.Единый налог','1',16,'','Предоплата Д31/11 К68/10',0,0,0,'',1,0,64,NULL,'ЧП Ажиппо В.П.',30,'NULL',NULL,NULL,48,63,'6.00'),(70,30,'','','68','10','731','',3,'2010-09-30','200.00','вып сахно','1',17,'','Выполнены работы  сч 681',0,0,0,'',1,0,65,NULL,'Предприниматель Сахно В.В.',63,'\'\'',NULL,NULL,21,NULL,'0.00'),(68,10,'731','','70','30','','',2,'2010-09-30','200.00','вып сахно','1',17,'','Выполнены работы  сч 681',0,0,0,'',1,0,66,NULL,'\'\'',63,'Предприниматель Сахно В.В.',NULL,NULL,21,65,'0.00'),(31,11,'0','','68','10','731','',3,'2010-09-30','300.00',' yuyiuiuyiu','1',26,'','Возвр.ошиб.пол.сум.Д681К311',0,0,0,'',0,0,157,NULL,'\'Предприниматель Сахно В.В.\'',NULL,'\'\'',NULL,NULL,22,NULL,'0.00'),(68,10,'731','','31','11','0','',2,'2010-09-30','300.00',' yuyiuiuyiu','1',26,'','Возвр.ошиб.пол.сум.Д681К311',0,0,0,'',0,0,158,NULL,'\'\'',NULL,'\'Предприниматель Сахно В.В.\'',NULL,NULL,22,157,'0.00'),(31,10,'0','','37','10','779','',3,'2010-09-30','178.00','вып содружество','1',20,'','Оплата 2соб.Д371 К31/10',0,0,0,'',0,0,159,NULL,'\'ООО \"Содружество\"\'',NULL,'NULL',NULL,NULL,51,NULL,'0.00'),(37,10,'779','','31','10','0','',2,'2010-09-30','178.00','вып содружество','1',20,'','Оплата 2соб.Д371 К31/10',0,0,0,'',0,0,160,NULL,'NULL',NULL,'\'ООО \"Содружество\"\'',NULL,NULL,51,159,'0.00');
/*!40000 ALTER TABLE `f340new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finstatus`
--

DROP TABLE IF EXISTS `finstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finstatus` (
  `id` int(5) NOT NULL auto_increment,
  `psw` varchar(10) default NULL,
  `period` int(1) default NULL,
  `uslog` tinytext,
  `fulloper` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finstatus`
--

LOCK TABLES `finstatus` WRITE;
/*!40000 ALTER TABLE `finstatus` DISABLE KEYS */;
INSERT INTO `finstatus` VALUES (1,'alex',1,'buh1',1),(2,NULL,1,'buh2',NULL);
/*!40000 ALTER TABLE `finstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmol`
--

DROP TABLE IF EXISTS `fmol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmol` (
  `Mol` int(4) NOT NULL,
  `Fio` varchar(40) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fmol`
--

LOCK TABLES `fmol` WRITE;
/*!40000 ALTER TABLE `fmol` DISABLE KEYS */;
INSERT INTO `fmol` VALUES (1,'Иванов Юрий Николаевич'),(2,'Дем\'ян'),(3,'\"Прошупанадогіляки \"'),(5,'Коваль'),(6,'Пан Возний');
/*!40000 ALTER TABLE `fmol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fnazrah`
--

DROP TABLE IF EXISTS `fnazrah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fnazrah` (
  `id` int(5) NOT NULL auto_increment,
  `oc` varchar(2) default NULL,
  `coc` varchar(2) default NULL,
  `rahname` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fnazrah`
--

LOCK TABLES `fnazrah` WRITE;
/*!40000 ALTER TABLE `fnazrah` DISABLE KEYS */;
INSERT INTO `fnazrah` VALUES (1,'10','12','основні засоби'),(2,'31','10','Розрахунковий рахунок ПИБ'),(3,'31','11','Розрахунковий рахунок Аваль'),(4,'37','10','Розрахунки по авансам выданим'),(5,'68','10','Розрахунки по авансам отриманим'),(6,'31','','Розрахунковий рахунок '),(7,'68','','Розрахунки по авансам отриманим'),(8,'23',NULL,'производство'),(9,'70',NULL,'Доход от реализации работ и услуг'),(10,'79',NULL,'Результат основной деятельности'),(11,'84',NULL,'Прочие операционные расходы'),(12,'64',NULL,'Расчеты с бюджетом');
/*!40000 ALTER TABLE `fnazrah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fo340`
--

DROP TABLE IF EXISTS `fo340`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fo340` (
  `Oc` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau` int(5) NOT NULL,
  `Ceh1` char(3) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` int(5) NOT NULL,
  `Ceh2` char(3) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Data` date NOT NULL,
  `Summa` decimal(17,2) NOT NULL,
  `Priznak` varchar(19) collate utf8_unicode_ci NOT NULL,
  `satelit` int(5) default NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Kol1` int(9) NOT NULL,
  `Kol2` int(9) NOT NULL,
  `Kol3` int(9) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `Dani` char(1) collate utf8_unicode_ci NOT NULL,
  `dok` decimal(8,0) default NULL,
  `id` int(10) NOT NULL auto_increment,
  `idoper` int(10) default NULL,
  `zakname` tinytext collate utf8_unicode_ci,
  `idzak` int(10) default NULL,
  `zaknamekc` tinytext collate utf8_unicode_ci,
  `idzakkc` int(10) default NULL,
  `iduser` int(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=399 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fo340`
--

LOCK TABLES `fo340` WRITE;
/*!40000 ALTER TABLE `fo340` DISABLE KEYS */;
INSERT INTO `fo340` VALUES ('','',0,'','','',0,'',0,'2010-10-25','45.00','iooiioioioio',1,'189','Ошиб.переч.Д3111/К 6810',0,0,0,'',0,0,'','1245',386,188,NULL,NULL,NULL,NULL,NULL),('','',0,'','','',0,'',0,'2010-10-25','58.00','111111111333 676',1,'56','Оплата за материалы сч31/11',0,0,0,'',0,0,'','213',387,55,NULL,NULL,NULL,NULL,NULL),('','',0,'','','',0,'',0,'2010-10-25','4.00','weeeyyyy56',1,'84','Начислена зарплата',0,0,0,'',0,0,'','23145',388,83,NULL,NULL,NULL,NULL,NULL),('','',2,'','','',1,'',0,'2010-10-25','12.00','test12345612',1,'258','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',1,1,'','1232',389,257,'ОАО Рога и Копыта',121,'supplier 001',127,NULL),('','',2,'','','',22,'',0,'2011-04-30','2.00','hhjjhhjhjj',1,'47','Оплата за товар',0,0,0,'',1,1,'','765',395,46,'ОАО Рога и Копыта',121,'PTR NAZENKA 1',7,NULL),('','',530,'','','',0,'',0,'2010-07-26','108.26','пер за землю ',1,'79','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,'','447',374,78,'Мiський бюджет',18,NULL,NULL,NULL),('','',0,'','','',530,'',0,'2010-07-30','108.26','нач за землю',1,'251','Оплата 2соб.Д371 К31/10',0,0,0,'',1,0,'','154',375,250,NULL,NULL,'Мiський бюджет',18,NULL),('','',17,'','','',17,'',0,'2010-07-26','102.00','Получ опл Ажип',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','48',376,66,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',30,NULL),('','',0,'','','',0,'',0,'2010-07-06','93.00','переч единый налог',1,'115','Перечислен един.налог.К3111',0,0,0,'',0,0,'','444',377,114,'',0,NULL,NULL,NULL),('','',555,'','','',0,'',0,'2010-07-29','45.00','расч обсл Аваль',1,'73','Услуги банка  3111',0,0,0,'',1,0,'','1821',378,72,'СФ АППБ \"АВАЛЬ\"',21,NULL,NULL,NULL),('','',555,'','','',0,'',0,'2010-07-29','40.00','расч обсл Аваль',1,'73','Услуги банка  3111',0,0,0,'',1,0,'','1675',379,72,'СФ АППБ \"АВАЛЬ\"',21,NULL,NULL,NULL),('','',528,'','','',0,'',0,'2010-07-26','18.82','переч водоканал',1,'79','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,'','448',380,78,'ГКП \"Северодонецкводоканал\"',17,'',0,NULL),('','',0,'','','',528,'',0,'2010-07-31','18.82','Нач водоканал',1,'111','Нач.усл.1соб без НДС  631',0,0,0,'',1,0,'','229',381,110,'',0,'ГКП \"Северодонецкводоканал\"',17,NULL),('','',741,'','','',0,'',0,'2010-07-14','12.76','За усл. мусор',1,'79','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,'','446',382,78,'КАТП-032810',71,'',0,NULL),('','',0,'','','',741,'',0,'2010-07-30','12.76','Нач расх мусор',1,'80','Начис расх услуги 1соб К631',0,0,0,'',1,0,'','391',383,79,'',0,'КАТП-032810',71,NULL),('','',0,'','','',17,'',0,'2010-07-30','93.14','прибыль',1,'7','прибыль',0,0,0,'',0,1,'','167',384,6,NULL,NULL,'ЧП Ажиппо',30,NULL),('','',17,'','','',17,'',0,'2010-07-30','102.00','вып Ажип 8',1,'258','Возв.ошиб.пер.Д 31/11 К631',0,0,0,'',1,0,'','84',385,257,'ЧП Ажиппо В.П.',30,'ЧП Ажиппо В.П.',30,NULL),('','',0,'','','',510,'',0,'2010-07-30','118.76','спис ц7 телеф',1,'81','Спис.вып.услуг 2соб.сч 371',0,0,0,'',1,0,'','80176',373,80,NULL,NULL,'\"Укртелеком\" ЦЕС N 7',11,NULL),('','',640,'','','',0,'',0,'2010-07-14','321.12','пер за электроэнерг',1,'79','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,'','444',363,78,'Лисичанский филиал ООО \" ЛЭО \"',28,NULL,NULL,NULL),('','',640,'','','',640,'',0,'2010-07-30','304.32','начис за электроэне',1,'80','Начис расх услуги 1соб К631',0,0,0,'',1,0,'','747',364,79,'Лисичанский филиал ООО \" ЛЭО \"',28,'Лисичанский филиал ООО \" ЛЭО \"',28,NULL),('','',731,'','','',0,'',0,'2010-07-23','300.00','опл чп свв',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','24159',365,66,'Предприниматель Сахно В.В.',63,NULL,NULL,NULL),('','',731,'','','',731,'',0,'2010-07-30','300.00','вып чп свв',1,'76','Выполнены работы  сч 681',0,0,0,'',1,0,'','84',366,75,'ЧП СВВ',63,'Предприниматель Сахно В.В.',63,NULL),('','',731,'','','',731,'',0,'2010-07-30','200.00','вып чп свв 6',1,'76','Выполнены работы  сч 681',0,0,0,'',1,0,'','84',367,75,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',63,NULL),('','',731,'','','',731,'',0,'2010-07-13','200.00','Получена xg CBB',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','19148',368,66,'Предприниматель Сахно В.В.',63,'Предприниматель Сахно В.В.',63,NULL),('','',3,'','','',0,'',0,'2010-07-26','200.00','переч СТКЕ 3',1,'79','Пер.за усл.2соб Д6310 К3111',0,0,0,'',1,0,'','449',369,78,'СТКЭ',16,NULL,NULL,NULL),('','',779,'','','',0,'',0,'2010-07-13','178.00','опл Содружество',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','19148',370,66,'ООО \"Содружество\"',97,'',0,NULL),('','',779,'','','',779,'',0,'2010-07-30','178.00','віп Содружество',1,'76','Выполнены работы  сч 681',0,0,0,'',1,0,'','81',371,75,'ООО \"Содружество\"',97,'ООО \"Содружество\"',97,NULL),('','',510,'','','',0,'',0,'2010-07-14','120.90','пер ц 7 телефон',1,'98','Переч.за услуги К 3111',0,0,0,'',1,0,'','445',372,97,'\"Укртелеком\" ЦЕС N 7',11,NULL,NULL,NULL),('','',3,'','','',1,'',0,'2011-04-04','1.00','hhhhhhhhh',1,'136','Ошибочн.перечисл.Д3110',0,0,0,'',1,1,'','12',394,135,'ОАО \"Рога и копыта\" ',16,'supplier 001',127,NULL),('','',2,'','','',22,'',0,'2011-06-13','4.00','Оплата за товар',1,'47','Оплата за товар',0,0,0,'',1,0,'','765',396,46,'ОАО Рога и Копыта',121,'PTR NAZENKA 1',7,NULL),('','',146,'','','',0,'',0,'2011-07-11','10.00','gjhgjhgjhgjhgh',1,'11','Оплата за материалы',0,0,0,'',1,0,'','12',397,10,'PST SKIDKA',5,NULL,NULL,NULL),('','',2,'','','',0,'',0,'2011-08-20','200.00','hjkjhljkhlkjkljklkl',1,'258','Возв.ошиб.пер.Д 31/11 К631 ',0,0,0,'',1,0,'','1655',398,257,'supplier 2',129,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fo340` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fo340new`
--

DROP TABLE IF EXISTS `fo340new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fo340new` (
  `Oc` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau` int(5) NOT NULL,
  `Ceh1` char(3) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` int(5) NOT NULL,
  `Ceh2` char(3) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Data` date NOT NULL,
  `Summa` decimal(17,2) NOT NULL,
  `Priznak` varchar(19) collate utf8_unicode_ci NOT NULL,
  `satelit` int(5) default NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Kol1` int(9) NOT NULL,
  `Kol2` int(9) NOT NULL,
  `Kol3` int(9) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `Dani` char(1) collate utf8_unicode_ci NOT NULL,
  `dok` decimal(8,0) default NULL,
  `id` int(10) NOT NULL auto_increment,
  `idoper` int(10) default NULL,
  `zakname` tinytext collate utf8_unicode_ci,
  `idzak` int(10) default NULL,
  `zaknamekc` tinytext collate utf8_unicode_ci,
  `idzakkc` int(10) default NULL,
  `iduser` int(5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fo340new`
--

LOCK TABLES `fo340new` WRITE;
/*!40000 ALTER TABLE `fo340new` DISABLE KEYS */;
INSERT INTO `fo340new` VALUES ('','',731,'','','',0,'',0,'2010-09-30','300.00',' yuyiuiuyiu',1,'190','Возвр.ошиб.пол.сум.Д681К311',0,0,0,'',1,0,'','22',26,189,'Предприниматель Сахно В.В.',63,'',0,NULL),('','',0,'','','',731,'',0,'2010-09-23','300.00','опл чп сахно',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','24159',13,66,NULL,NULL,'Предприниматель Сахно В.В.',63,NULL),('','',0,'','','',779,'',0,'2010-09-13','178.00','опл содружество',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','123',15,66,NULL,NULL,'ООО \"Содружество\"',97,NULL),('','',0,'','','',17,'',0,'2010-09-26','102.00','Получена предоплата',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','48',16,66,NULL,NULL,'ЧП Ажиппо В.П.',30,NULL),('','',731,'','','',0,'',0,'2010-09-30','200.00','вып сахно',1,'76','Выполнены работы  сч 681',0,0,0,'',1,0,'','21',17,75,'Предприниматель Сахно В.В.',63,NULL,NULL,NULL),('','',17,'','','',0,'',0,'2010-09-30','102.00','вып ажиппо',1,'76','Выполнены работы  сч 681',0,0,0,'',1,0,'','2',19,75,'ЧП Ажиппо В.П.',30,NULL,NULL,NULL),('','',779,'','','',0,'',0,'2010-09-30','178.00','вып содружество',1,'251','Оплата 2соб.Д371 К31/10',0,0,0,'',1,0,'','51',20,250,'ООО \"Содружество\"',97,NULL,NULL,NULL),('','',0,'','','',731,'',0,'2010-09-13','200.00','Получена сахно',1,'67','Предоплата Д31/11 К68/10',0,0,0,'',1,0,'','24159',23,66,'',0,'Предприниматель Сахно В.В.',63,NULL);
/*!40000 ALTER TABLE `fo340new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fskau331`
--

DROP TABLE IF EXISTS `fskau331`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fskau331` (
  `oc` int(2) default NULL,
  `coc` int(2) default NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh1` char(3) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh2` char(3) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Data` date NOT NULL,
  `Summa` decimal(17,2) NOT NULL,
  `Priznak` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Satelit` char(1) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Kol1` int(9) NOT NULL,
  `Kol2` int(9) NOT NULL,
  `Kol3` int(9) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `idzakkc` int(10) default NULL,
  `zaknamekc` tinytext collate utf8_unicode_ci,
  `idzak` int(10) default NULL,
  `zakname` tinytext collate utf8_unicode_ci,
  `iduser` int(5) default NULL,
  `doc` int(5) default NULL,
  `dok` int(5) default NULL,
  `idsimetr` int(10) default NULL,
  `perc` decimal(5,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fskau331`
--

LOCK TABLES `fskau331` WRITE;
/*!40000 ALTER TABLE `fskau331` DISABLE KEYS */;
/*!40000 ALTER TABLE `fskau331` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fskau331t`
--

DROP TABLE IF EXISTS `fskau331t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fskau331t` (
  `oc` int(2) default NULL,
  `coc` int(2) default NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh1` char(3) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Ceh2` char(3) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Data` date NOT NULL,
  `Summa` decimal(17,2) NOT NULL,
  `Priznak` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Satelit` char(1) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Kol1` int(9) NOT NULL,
  `Kol2` int(9) NOT NULL,
  `Kol3` int(9) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  `idzakkc` int(10) default NULL,
  `zaknamekc` tinytext collate utf8_unicode_ci,
  `idzak` int(10) default NULL,
  `zakname` tinytext collate utf8_unicode_ci,
  `iduser` int(5) default NULL,
  `doc` int(5) default NULL,
  `dok` int(5) default NULL,
  `idsimetr` int(10) default NULL,
  `perc` decimal(5,2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fskau331t`
--

LOCK TABLES `fskau331t` WRITE;
/*!40000 ALTER TABLE `fskau331t` DISABLE KEYS */;
/*!40000 ALTER TABLE `fskau331t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krt01`
--

DROP TABLE IF EXISTS `krt01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krt01` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Naim2` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `cenaroz` decimal(19,6) NOT NULL,
  `procnadroz` decimal(2,0) NOT NULL,
  `cenaoptmel` decimal(19,6) NOT NULL,
  `procnadoptm` decimal(2,0) NOT NULL,
  `cenaoptkrup` decimal(19,6) NOT NULL,
  `procnadoptkr` decimal(2,0) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Kol` decimal(13,3) NOT NULL,
  `Ost` decimal(13,3) NOT NULL,
  `Kol1` decimal(13,3) NOT NULL,
  `Ost1` decimal(13,3) NOT NULL,
  `Skol` decimal(13,3) NOT NULL,
  `ostnn` decimal(13,0) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Descr` varchar(72) collate utf8_unicode_ci NOT NULL,
  `Vid` varchar(34) collate utf8_unicode_ci NOT NULL,
  `Ves` decimal(11,3) NOT NULL,
  `Ed_ves` char(3) collate utf8_unicode_ci NOT NULL,
  `Netto` decimal(11,3) NOT NULL,
  `Ed_net` char(3) collate utf8_unicode_ci NOT NULL,
  `Brutto` decimal(11,3) NOT NULL,
  `Ed_brut` char(3) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Barcod1` varchar(28) collate utf8_unicode_ci NOT NULL,
  `barcod2` varchar(28) collate utf8_unicode_ci NOT NULL,
  `tarakol` decimal(13,3) NOT NULL,
  `cenavalroz` decimal(19,6) NOT NULL,
  `prnadvalroz` decimal(2,0) NOT NULL,
  `cenavaloptm` decimal(19,6) NOT NULL,
  `prnadvaloptm` decimal(2,0) NOT NULL,
  `cenavaloptk` decimal(19,6) NOT NULL,
  `prnadvalk` decimal(2,0) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `krtetalon`
--

DROP TABLE IF EXISTS `krtetalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krtetalon` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Naim2` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `cenaroz` decimal(19,6) NOT NULL,
  `procnadroz` decimal(2,0) NOT NULL,
  `cenaoptmel` decimal(19,6) NOT NULL,
  `procnadoptm` decimal(2,0) NOT NULL,
  `cenaoptkrup` decimal(19,6) NOT NULL,
  `procnadoptkr` decimal(2,0) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Kol` decimal(13,3) NOT NULL,
  `Ost` decimal(13,3) NOT NULL,
  `Kol1` decimal(13,3) NOT NULL,
  `Ost1` decimal(13,3) NOT NULL,
  `Skol` decimal(13,3) NOT NULL,
  `ostnn` decimal(13,0) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Descr` varchar(72) collate utf8_unicode_ci NOT NULL,
  `Vid` varchar(34) collate utf8_unicode_ci NOT NULL,
  `Ves` decimal(11,3) NOT NULL,
  `Ed_ves` char(3) collate utf8_unicode_ci NOT NULL,
  `Netto` decimal(11,3) NOT NULL,
  `Ed_net` char(3) collate utf8_unicode_ci NOT NULL,
  `Brutto` decimal(11,3) NOT NULL,
  `Ed_brut` char(3) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Barcod1` varchar(28) collate utf8_unicode_ci NOT NULL,
  `barcod2` varchar(28) collate utf8_unicode_ci NOT NULL,
  `tarakol` decimal(13,3) NOT NULL,
  `cenavalroz` decimal(19,6) NOT NULL,
  `prnadvalroz` decimal(2,0) NOT NULL,
  `cenavaloptm` decimal(19,6) NOT NULL,
  `prnadvaloptm` decimal(2,0) NOT NULL,
  `cenavaloptk` decimal(19,6) NOT NULL,
  `prnadvalk` decimal(2,0) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krtetalon`
--

LOCK TABLES `krtetalon` WRITE;
/*!40000 ALTER TABLE `krtetalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `krtetalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc01`
--

DROP TABLE IF EXISTS `lc01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lc01` (
  `id` int(11) NOT NULL auto_increment,
  `Tbn` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Fam` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Ima` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Ots` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Uch` char(3) collate utf8_unicode_ci NOT NULL,
  `Bri` char(2) collate utf8_unicode_ci NOT NULL,
  `Kat` int(1) NOT NULL,
  `Okl` decimal(14,4) NOT NULL,
  `Prf` int(1) NOT NULL,
  `Dpz` date NOT NULL,
  `Raz` int(2) NOT NULL,
  `Pav` int(12) NOT NULL,
  `Ngr` int(2) NOT NULL,
  `Kod` int(2) NOT NULL,
  `Koc` decimal(6,2) NOT NULL,
  `Fav` int(12) NOT NULL,
  `Fop` int(1) NOT NULL,
  `Nap` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Spz` varchar(8) collate utf8_unicode_ci NOT NULL,
  `Dolg` decimal(12,2) NOT NULL,
  `Kna` int(1) NOT NULL,
  `Pra` decimal(6,2) NOT NULL,
  `Duz` date NOT NULL,
  `Pfz` int(1) NOT NULL,
  `Dolg1` decimal(12,2) NOT NULL,
  `Veh` decimal(6,2) NOT NULL,
  `Noh` decimal(6,2) NOT NULL,
  `Vdn` decimal(6,2) NOT NULL,
  `Ktg` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Pdn` int(2) NOT NULL,
  `Pov` decimal(6,2) NOT NULL,
  `Kmi` int(2) NOT NULL,
  `Pna` int(1) NOT NULL,
  `Nls` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nsb` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Na1` decimal(12,2) NOT NULL,
  `Na2` decimal(12,2) NOT NULL,
  `Na3` decimal(12,2) NOT NULL,
  `Ng1` int(2) NOT NULL,
  `Ng2` int(2) NOT NULL,
  `Ng3` int(2) NOT NULL,
  `Vo1` int(1) NOT NULL,
  `Vo2` int(1) NOT NULL,
  `Vo3` int(1) NOT NULL,
  `Adr1` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Adr2` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Adr3` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Adr4` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Kodmud` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nammud` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Koddpa` char(2) collate utf8_unicode_ci NOT NULL,
  `Kodreg` char(2) collate utf8_unicode_ci NOT NULL,
  `Dolgpred` decimal(12,2) NOT NULL,
  `Prpen` char(1) collate utf8_unicode_ci NOT NULL,
  `Penpna` varchar(17) collate utf8_unicode_ci NOT NULL,
  `Kau1` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kau2` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `Sprnum2` int(1) NOT NULL,
  `Zakname1` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Zakname2` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Social` decimal(7,2) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc01`
--

LOCK TABLES `lc01` WRITE;
/*!40000 ALTER TABLE `lc01` DISABLE KEYS */;
INSERT INTO `lc01` VALUES (1,'1234456767','Папуга 1','Балакучий','Зелений','','',0,'0.0000',0,'0000-00-00',0,0,0,0,'0.00',0,3,'','81','0.00',0,'0.00','0000-00-00',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','','','','','0.00','','','','',0,0,'','','',0,'0.00',''),(9,'1223344677','Корейко','иван','Иванолвич','','',0,'100.0000',0,'0000-00-00',0,50,1,0,'0.00',0,0,'','','0.00',0,'0.00','0000-00-00',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'Старгород','Улица 2 гуся','дом высокий','квартира большая','','','','','0.00','','','','',0,0,'','','',0,'0.00',''),(2,'2727206785','Рослякова','Iрина','Вiкторiвна','','',0,'0.0000',0,'1998-06-01',0,0,1,0,'0.00',0,3,'гл.бухгалтер','26','0.00',0,'0.00','2001-05-30',1,'0.00','0.00','0.00','0.00','Администрация',0,'0.00',1,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','21823651','ГНИ г.Северодонецк','','','0.00','','','','',0,0,'','','',0,'0.00',''),(3,'2069208754','Сахно','Юрiй','Миколайович','','',2,'375.0000',0,'1991-02-01',0,0,1,22,'176.00',0,0,'директор','81','0.00',0,'0.00','1970-01-01',1,'0.00','0.00','0.00','0.00','',22,'176.00',1,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','21823651','ГНИ г.Северодонецк','','','0.00','','','','',0,0,'','','',0,'175.00',''),(4,'3023208057','Сахно','Олексiй','Юрiйович','','',0,'188.0000',0,'1998-12-10',0,0,1,22,'176.00',0,3,'бухгалтер','81','0.00',0,'0.00','1970-01-01',0,'0.00','0.00','0.00','0.00','',22,'176.00',1,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','21823651','ГНИ г.Северодонецка','','','0.00','','','','',0,0,'','','',0,'175.00',''),(5,'1782911300','Бендер 1','Остап','Сулейман','','',0,'100.0000',0,'0000-00-00',0,50,1,0,'0.00',0,3,'Комбинатор','81','0.00',0,'0.00','2003-11-25',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'1','2','3','4','','','','','0.00','','','','',0,0,'','','',0,'0.00',''),(6,'2313512028','Фоменко','Тетяна','Михайлiвна','','',0,'166.0000',0,'2001-05-21',0,0,1,0,'0.00',0,3,'бухгалтер','81','0.00',0,'0.00','2005-11-21',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','','','','','0.00','','','','',0,0,'','','',0,'0.00',''),(7,'2828803303','Волокита','Наталiя','Леонiдiвна','','',0,'0.0000',0,'2001-06-01',0,0,1,0,'0.00',0,0,'гл.бухгалтер','81','0.00',0,'0.00','2005-07-28',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','','','','','0.00','','','','',0,0,'','','',0,'0.00',''),(8,'9789878979','Пузан','Пузанько ','Пузан','','',0,'0.0000',0,'0000-00-00',0,0,0,0,'0.00',0,0,'','81','0.00',0,'0.00','0000-00-00',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'Гора Арарат','','','','','','','','0.00','','','20','23',0,0,'','','',0,'0.00',''),(11,'3333333333','smit','','','','',0,'0.0000',0,'0000-00-00',0,0,1,0,'0.00',0,0,'','','0.00',0,'0.00','0000-00-00',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','','','','','0.00','','','','',0,0,'','','',0,'0.00',''),(13,'456778','Сталоне','остап','Илькович','','',0,'0.0000',0,'0000-00-00',0,0,1,0,'0.00',0,0,'','','0.00',0,'0.00','0000-00-00',0,'0.00','0.00','0.00','0.00','',0,'0.00',0,0,'','','0.00','0.00','0.00',0,0,0,0,0,0,'','','','','','','','','0.00','','','20','202',0,0,'','','',0,'0.00','');
/*!40000 ALTER TABLE `lc01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lc02`
--

DROP TABLE IF EXISTS `lc02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lc02` (
  `id` int(11) NOT NULL auto_increment,
  `Tbn` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Fam` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Ima` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Ots` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Uch` char(3) collate utf8_unicode_ci NOT NULL,
  `Bri` char(2) collate utf8_unicode_ci NOT NULL,
  `Kat` int(1) NOT NULL,
  `Okl` decimal(14,4) NOT NULL,
  `Prf` int(1) NOT NULL,
  `Dpz` date NOT NULL,
  `Raz` int(2) NOT NULL,
  `Pav` int(12) NOT NULL,
  `Ngr` int(2) NOT NULL,
  `Kod` int(2) NOT NULL,
  `Koc` decimal(6,2) NOT NULL,
  `Fav` int(12) NOT NULL,
  `Fop` int(1) NOT NULL,
  `Nap` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Spz` varchar(8) collate utf8_unicode_ci NOT NULL,
  `Dolg` decimal(12,2) NOT NULL,
  `Kna` int(1) NOT NULL,
  `Pra` decimal(6,2) NOT NULL,
  `Duz` date NOT NULL,
  `Pfz` int(1) NOT NULL,
  `Dolg1` decimal(12,2) NOT NULL,
  `Veh` decimal(6,2) NOT NULL,
  `Noh` decimal(6,2) NOT NULL,
  `Vdn` decimal(6,2) NOT NULL,
  `Ktg` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Pdn` int(2) NOT NULL,
  `Pov` decimal(6,2) NOT NULL,
  `Kmi` int(2) NOT NULL,
  `Pna` int(1) NOT NULL,
  `Nls` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nsb` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Na1` decimal(12,2) NOT NULL,
  `Na2` decimal(12,2) NOT NULL,
  `Na3` decimal(12,2) NOT NULL,
  `Ng1` int(2) NOT NULL,
  `Ng2` int(2) NOT NULL,
  `Ng3` int(2) NOT NULL,
  `Vo1` int(1) NOT NULL,
  `Vo2` int(1) NOT NULL,
  `Vo3` int(1) NOT NULL,
  `Adr1` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Adr2` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Adr3` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Adr4` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Kodmud` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nammud` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Koddpa` char(2) collate utf8_unicode_ci NOT NULL,
  `Kodreg` char(2) collate utf8_unicode_ci NOT NULL,
  `Dolgpred` decimal(12,2) NOT NULL,
  `Prpen` char(1) collate utf8_unicode_ci NOT NULL,
  `Penpna` varchar(17) collate utf8_unicode_ci NOT NULL,
  `Kau1` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kau2` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Sprnum1` int(1) NOT NULL,
  `Sprnum2` int(1) NOT NULL,
  `Zakname1` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Zakname2` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Social` decimal(7,2) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lc02`
--

LOCK TABLES `lc02` WRITE;
/*!40000 ALTER TABLE `lc02` DISABLE KEYS */;
/*!40000 ALTER TABLE `lc02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nu01`
--

DROP TABLE IF EXISTS `nu01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nu01` (
  `id` int(11) NOT NULL auto_increment,
  `Uch` char(3) collate utf8_unicode_ci NOT NULL,
  `Tbn` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Pnu` char(1) collate utf8_unicode_ci NOT NULL,
  `Vna` char(3) collate utf8_unicode_ci NOT NULL,
  `Nna` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Pna` varchar(17) collate utf8_unicode_ci NOT NULL,
  `Flr` char(1) collate utf8_unicode_ci NOT NULL,
  `Spz` varchar(8) collate utf8_unicode_ci NOT NULL,
  `Kat` int(1) NOT NULL,
  `Dnn` date NOT NULL,
  `Don` date NOT NULL,
  `Sna` decimal(12,2) NOT NULL,
  `Pro` decimal(6,2) NOT NULL,
  `Dni` int(2) NOT NULL,
  `Koc` decimal(6,2) NOT NULL,
  `Pri` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Pr1` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nok` int(1) NOT NULL,
  `Nap` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Prpen` char(1) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Zakname` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Ozndox` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nu01`
--

LOCK TABLES `nu01` WRITE;
/*!40000 ALTER TABLE `nu01` DISABLE KEYS */;
INSERT INTO `nu01` VALUES (1,'','3023208057','Н','001','Повременная оплата','11111101100102 11','T','81',0,'2006-10-01','1970-01-01','188.00','0.00',22,'22.00','81','',0,'бухгалтер','','',0,'','','',0,0),(2,'','3023208057','У','197','Пенсионный фонд (1%)','00000000000002','T','6510',0,'2006-10-01','1970-01-01','5.06','2.00',0,'0.00','6510','',0,'','','',0,'','','',0,0),(3,'','3023208057','У','400','Фонд социального страхования','00000000000002','T','65/40',0,'2006-10-01','1970-01-01','1.27','0.50',0,'0.00','65/40','',0,'','','',0,'','','',0,0),(4,'','3023208057','У','164','Фонд занятости','00000000000002','T','6530',0,'2006-10-01','1970-01-01','1.27','0.50',0,'0.00','6530','',0,'','','',0,'','','',0,0),(5,'','3023208057','У','182','Налог с доходов физ.лиц','00000000000002','T','6413',0,'2006-10-01','1970-01-01','9.16','0.00',0,'0.00','6413','',0,'','','',0,'','','',0,0),(6,'','2069208754','Н','027','Индексация за октябрь 2006г. 34.6%','11111101900102 11','F','81',2,'2006-10-01','1970-01-01','129.75','34.60',0,'0.00','81','',0,'директор','','',0,'','','',0,0),(7,'','2069208754','Н','001','Повременная оплата','11111101100102 11','T','81',2,'2006-10-01','1970-01-01','375.00','0.00',22,'176.00','81','',0,'директор','','',0,'','','',0,0),(8,'','2069208754','У','197','Пенсионный фонд (1%)','00000000000002','T','6510',0,'2006-10-01','1970-01-01','10.10','2.00',0,'0.00','6510','',0,'','','',0,'','','',0,0),(9,'','2069208754','У','164','Фонд занятости','00000000000002','T','6530',0,'2006-10-01','1970-01-01','2.52','0.50',0,'0.00','6530','',0,'','','',0,'','','',0,0),(10,'','2069208754','У','182','Налог с доходов физ.лиц','00000000000002','T','6413',0,'2006-10-01','1970-01-01','41.23','0.00',0,'0.00','6413','',0,'','','',0,'','','',0,0),(11,'','3023208057','Н','027','Индексация за октябрь 2006г. 34.6%','11111101900102 11','F','81',0,'2006-10-01','1970-01-01','65.05','34.60',0,'0.00','81','',0,'бухгалтер','','',0,'','','',0,0);
/*!40000 ALTER TABLE `nu01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nu02`
--

DROP TABLE IF EXISTS `nu02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nu02` (
  `id` int(11) NOT NULL auto_increment,
  `Uch` char(3) collate utf8_unicode_ci NOT NULL,
  `Tbn` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Pnu` char(1) collate utf8_unicode_ci NOT NULL,
  `Vna` char(3) collate utf8_unicode_ci NOT NULL,
  `Nna` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Pna` varchar(17) collate utf8_unicode_ci NOT NULL,
  `Flr` char(1) collate utf8_unicode_ci NOT NULL,
  `Spz` varchar(8) collate utf8_unicode_ci NOT NULL,
  `Kat` int(1) NOT NULL,
  `Dnn` date NOT NULL,
  `Don` date NOT NULL,
  `Sna` decimal(12,2) NOT NULL,
  `Pro` decimal(6,2) NOT NULL,
  `Dni` int(2) NOT NULL,
  `Koc` decimal(6,2) NOT NULL,
  `Pri` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Pr1` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nok` int(1) NOT NULL,
  `Nap` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Prpen` char(1) collate utf8_unicode_ci NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Zakname` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Ozndox` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nu02`
--

LOCK TABLES `nu02` WRITE;
/*!40000 ALTER TABLE `nu02` DISABLE KEYS */;
/*!40000 ALTER TABLE `nu02` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oper`
--

DROP TABLE IF EXISTS `oper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oper` (
  `Oc` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Booc` int(1) NOT NULL,
  `Perc` decimal(10,6) NOT NULL,
  `Com` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Satelit` char(1) collate utf8_unicode_ci NOT NULL,
  `Obor` char(1) collate utf8_unicode_ci NOT NULL,
  `Num` char(3) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Oc1` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc1` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau1` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc1` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc1` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc1` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc1` decimal(10,6) NOT NULL,
  `Com1` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc2` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc2` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau2` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc2` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc2` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc2` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc2` decimal(10,6) NOT NULL,
  `Com2` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc3` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc3` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau3` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc3` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc3` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc3` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc3` decimal(10,6) NOT NULL,
  `Com3` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc4` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc4` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau4` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc4` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc4` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc4` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc4` decimal(10,6) NOT NULL,
  `Com4` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc5` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc5` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau5` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc5` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc5` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc5` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc5` decimal(10,6) NOT NULL,
  `Com5` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc6` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc6` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau6` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc6` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc6` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc6` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc6` decimal(10,6) NOT NULL,
  `Com6` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc7` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc7` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau7` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc7` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc7` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc7` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc7` decimal(10,6) NOT NULL,
  `Com7` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc8` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc8` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau8` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc8` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc8` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc8` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc8` decimal(10,6) NOT NULL,
  `Com8` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc9` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc9` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau9` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc9` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc9` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc9` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc9` decimal(10,6) NOT NULL,
  `Com9` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc10` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc10` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau10` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc10` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc10` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc10` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc10` decimal(10,6) NOT NULL,
  `Com10` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc11` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc11` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau11` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc11` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc11` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc11` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc11` decimal(10,6) NOT NULL,
  `Com11` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc12` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc12` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau12` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc12` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc12` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc12` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc12` decimal(10,6) NOT NULL,
  `Com12` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc13` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc13` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau13` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc13` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc13` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc13` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc13` decimal(10,6) NOT NULL,
  `Com13` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc14` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc14` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau14` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc14` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc14` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc14` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc14` decimal(10,6) NOT NULL,
  `Com14` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc15` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc15` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau15` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc15` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc15` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc15` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc15` decimal(10,6) NOT NULL,
  `Com15` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc16` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc16` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau16` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc16` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc16` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc16` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc16` decimal(10,6) NOT NULL,
  `Com16` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc17` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc17` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau17` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc17` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc17` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc17` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc17` decimal(10,6) NOT NULL,
  `Com17` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc18` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc18` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau18` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc18` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc18` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc18` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc18` decimal(10,6) NOT NULL,
  `Com18` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc19` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc19` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau19` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc19` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc19` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc19` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc19` decimal(10,6) NOT NULL,
  `Com19` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Oc20` char(2) collate utf8_unicode_ci NOT NULL,
  `Coc20` char(2) collate utf8_unicode_ci NOT NULL,
  `Kau20` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Kc20` char(2) collate utf8_unicode_ci NOT NULL,
  `Ckc20` char(2) collate utf8_unicode_ci NOT NULL,
  `Kaukc20` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Perc20` decimal(10,6) NOT NULL,
  `Com20` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Snum` int(1) NOT NULL,
  `Snumkc` int(1) NOT NULL,
  `Snum1` int(1) NOT NULL,
  `Snumkc1` int(1) NOT NULL,
  `Snum2` int(1) NOT NULL,
  `Snumkc2` int(1) NOT NULL,
  `Snum3` int(1) NOT NULL,
  `Snumkc3` int(1) NOT NULL,
  `Snum4` int(1) NOT NULL,
  `Snumkc4` int(1) NOT NULL,
  `Snum5` int(1) NOT NULL,
  `Snumkc5` int(1) NOT NULL,
  `Snum6` int(1) NOT NULL,
  `Snumkc6` int(1) NOT NULL,
  `Snum7` int(1) NOT NULL,
  `Snumkc7` int(1) NOT NULL,
  `Snum8` int(1) NOT NULL,
  `Snumkc8` int(1) NOT NULL,
  `Snum9` int(1) NOT NULL,
  `Snumkc9` int(1) NOT NULL,
  `Snum10` int(1) NOT NULL,
  `Snumkc10` int(1) NOT NULL,
  `Snum11` int(1) NOT NULL,
  `Snumkc11` int(1) NOT NULL,
  `Snum12` int(1) NOT NULL,
  `Snumkc12` int(1) NOT NULL,
  `Snum13` int(1) NOT NULL,
  `Snumkc13` int(1) NOT NULL,
  `Snum14` int(1) NOT NULL,
  `Snumkc14` int(1) NOT NULL,
  `Snum15` int(1) NOT NULL,
  `Snumkc15` int(1) NOT NULL,
  `Snum16` int(1) NOT NULL,
  `Snumkc16` int(1) NOT NULL,
  `Snum17` int(1) NOT NULL,
  `Snumkc17` int(1) NOT NULL,
  `Snum18` int(1) NOT NULL,
  `Snumkc18` int(1) NOT NULL,
  `Snum19` int(1) NOT NULL,
  `Snumkc19` int(1) NOT NULL,
  `Snum20` int(1) NOT NULL,
  `Snumkc20` int(1) NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=264 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oper`
--

LOCK TABLES `oper` WRITE;
/*!40000 ALTER TABLE `oper` DISABLE KEYS */;
INSERT INTO `oper` VALUES ('50','02','док','71','','кау',2,'0.000000','Внесено в кассу','к','','6',2,'Приходный ордер подотчет','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),('80','20','','20','20','док',2,'0.000000','списан.материалов','м','','9',3,'Cписание материалов','79','10','док','80','20','док','0.000000','Списание материалов','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2),('81','10','кау','66','10','док',2,'0.000000','','з','','13',4,'Начисленная зарплата АУП','79','10','КАУ','81','10','кау','0.000000','Начислен.зарпл.АУП','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3),('66','10','','64','13','',2,'0.000000','','н','','23',5,'Удержан  подоходный налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4),('70','03','кау','50','02','док',2,'0.000000','','к','','30',6,'материальная помощь','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,5),('79','10','кау','44','10','',2,'0.000000','прибыль','','','rrr',7,'прибыль','','','','','','','0.000000','Налог на прибыль','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6),('66','10','кау','30','10','док',2,'0.000000','Выплач.зараб.плата','к','','',56,'Выплата з\\платы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7),('23','','','31','10','',2,'0.000000','Услуги банка','б','','',9,'Услуги банка','84','','','23','','','0.000000','Услуги банка','79','10','','84','','','0.000000','Услуги банка','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8),('66','10','','65','10','',2,'0.000000','Нач.1% пенс.фонд','н','','',10,'Удер.1% пенсионного фонда','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,9),('37','10','КАУ','31','10','кау',2,'0.000000','Оплата за материалы','б','','',11,'Оплата за материалы','64','11','кау','64','40','кау','16.666667','Оплата за матер.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10),('39','10','','66','10','',2,'0.000000','','з','','',12,'Начисление отпускн.буд.пер.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,11),('64','11','no','31','10','док',2,'0.000000','','б','','',13,'Перечислен НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12),('64','13','','31','10','',2,'0.000000','','б','','',14,'Перечислен подоходний налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13),('65','10','','31','10','',2,'0.000000','','б','','',15,'Перечислено пенсионному фон','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,14),('68','05','','51','','',2,'0.000000','','б','','',16,'Переч.налог на прибыль','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15),('81','40','','66','10','',2,'0.000000','Нач.отп.тек.м\\ца','з','','',17,'Начислены отпускн.тек.м-ца','79','10','','81','40','','0.000000','Нач.отп.тек.м\\ца','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16),('84','','','37','20','кау',2,'83.333333','Аванс.отчет без НДС','','','',18,'Авансовые отчеты','64','11','кау','37','20','кау','16.666667','Аванс.отчет НДС','23','','кау','84','','кау','83.333333','Аванс.отчет без НДС','79','10','кау','23','','кау','83.333333','Аванс.отчет без НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,17),('81','','','51','','',2,'0.000000','','б','','',19,'Перечислена пеня','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18),('70','03','кау','50','02','док',2,'0.000000','','к','','',20,'Выплаты за проездн.билеты','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19),('69','02','кау','50','02','док',2,'0.000000','До и после род.б.л.','к','','',21,'Выплаты за до и после р.б.л','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,20),('26','','','50','02','док',2,'0.000000','За пос.семинара','к','','',22,'Прочие выплаты','20','','','26','','','0.000000','За пос.семинара','46','01','','20','','','0.000000','За пос.семинара','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,21),('69','02','','70','01','',2,'0.000000','Начисл.по больн.лис','з','','',23,'Начисление больнич.листа','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,22),('69','03','','50','02','док',2,'0.000000','Пособие на ребенка','к','','',24,'Пособие на ребен.до 3-х лет','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23),('83','10','','13','10','',2,'0.000000','износ осн.ср-в','ф','','',25,'Отражение износа осн.средст','23','','','83','10','','0.000000','износ осн.ср-в','79','10','','23','','','0.000000','износ осн.ср-в','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,24),('96','01','док','50','02','док',2,'0.000000','Пособие до 16 лет','к','','',26,'Пособие на ребенка до 16лет','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25),('65','20','','30','10','док',2,'0.000000','Выплата больн.','к','','',27,'Выплата по больн.листам','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,26),('66','10','кау','65','30','кау',2,'0.000000','0.5%-ф-д занятости','н','','',28,'Фонд занятости','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,27),('30','10','кау','66','10','кау',2,'0.000000','Возврат зарплаты','к','','',29,'Приходн.ордер возврат з/пл.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,28),('66','10','','65','40','',2,'0.000000','Удерж.проф.взн.1%','н','','',30,'Проф.взносы 1% из з/пл.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,29),('69','05','кау','31','11','кау',2,'0.000000','Переч.проф.взнос 1%','б','','',31,'Переч.профсоюзн.взнос-1%','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30),('84','10','','66','10','',2,'0.000000','Начисл.материал.пом','з','','',32,'Начисл.материальная помощь','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,31),('20','20','кау','37','10','КАУ',2,'83.333333','Оприход.матер.2 соб','м','','',33,'Оприх.материалов 2 событ','64','40','кау','37','10','КАУ','16.666667','Оприход.матер.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32),('84','','кау','37','20','кау',2,'0.000000','Авансов отчет','','','',34,'Авансов отчет без НДС','23','','кау','84','','кау','0.000000','Авансов отчет','79','10','кау','23','','кау','0.000000','Авансовый отчет','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33),('23','','кау','20','90','кау',2,'0.000000','Списан.доверенности','м','','',35,'Списание доверенностей','84','','кау','23','','кау','0.000000','Списан.доверенности','79','10','','84','','','0.000000','Списан.доверенности','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34),('20','90','кау','37','10','кау',2,'83.333333','Оприх.доверен.','м','','',36,'Оприходован.доверенности','64','40','кау','37','10','кау','16.666667','Оприх.доверенности','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,35),('65','30','кау','31','10','кау',2,'0.000000','Пер.в ф-д занят.0.5','б','','',37,'Переч.в ф-д занятости 0.5%','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,36),('70','','','50','','',2,'0.000000','','к','','',38,'получили','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,37),('33','','кау','60','','кау',2,'0.000000','','ф','','',39,'Ввод нового обьекта ОФ','01','','','33','','','0.000000','Ввод ОФ','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,38),('15','20','','20','20','',2,'0.000000','','ф','','',40,'Списан. ссч 05 на сч 01','10','40','','15','20','','0.000000','Перевод с 202 на104','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,39),('01','','кау','76','01','кау',2,'0.000000','','ф','','',41,'Ввод нов.обьекта ОФ сч76','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,40),('64','14','','31','10','',2,'0.000000','','б','','',42,'Перечислен единый налог.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,41),('81','','','68','02','',2,'0.000000','','н','','',43,'Начис 10% амортиз.отчисл.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,42),('81','','','68','01','',2,'0.000000','','н','','',44,'Начисл.пеня по подох.налогё','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,43),('01','','','05','','',2,'0.000000','','ф','','',228,'Справка','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,44),('03','01','','05','01','',2,'0.000000','','ф','','',46,'Списан.матер на ремонт ОФ','20','','','03','01','','0.000000','Спис.мат.на ремонт','46','01','','20','','','0.000000','Спис.мат.на ремонт','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,45),('37','10','кау','31','10','кау',2,'0.000000','Оплата за товар','б','','',47,'Оплата за товар','64','11','кау','64','40','кау','16.666667','Оплата за товар','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,46),('80','80','док','28','10','док',2,'0.000000','списан.товара','м','','9',48,'Cписание товара','79','10','док','80','80','док','0.000000','Списание товара','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,47),('60','','кау','51','','кау',2,'0.000000','','б','','',49,'Перечисл за подарки','81','','кау','60','','кау','0.000000','Преобрет.подарки','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,48),('31','10','кау','68','50','кау',2,'0.000000','','б','','',50,'Получ.деньги от комиссионер','70','20','кау','64','11','кау','16.666667','Пол.ден.от комисНДС','68','50','кау','70','20','кау','0.000000','Получ.деньги от ком','84','','','64','14','кау','6.000000','Начисл. Единый нал','79','10','','84','','','6.000000','Начисл. Единый нал.','70','20','','79','10','','83.333333','Спис.сум.на фин.рез','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49),('50','','','76','','',2,'0.000000','','к','','',51,'Информационные услуги','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,50),('84','','кау','68','50','кау',2,'83.333333','','м','','',52,'Спис сумма комисс.вознагр','64','11','кау','68','50','кау','16.666667','Спис.комис.возн.НДС','70','20','кау','79','10','','83.333333','Спис.комис.вознагр','70','20','кау','64','11','кау','16.666667','Нач.НДСна комис.воз','68','50','кау','70','20','','0.000000','Стоим.услуг комисон','79','10','кау','84','','кау','83.330000','Спис.комис.на фин р','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,51),('84','','кау','37','10','кау',2,'83.333333','Усл.вып.безНДС','м','','',53,'Услуги выполн.испонителем','64','40','кау','37','10','кау','16.666667','Услуги.вып.пост.НДС','79','10','кау','84','','кау','83.333333','Услуги.вып.безНДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,52),('28','30','','28','10','',2,'0.000000','','м','','',54,'Возвр.скомис.торг.на скл05','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,53),('37','10','КАУ','31','11','кау',2,'0.000000','Оплата за канцтов.','б','','',55,'Оплата за товар  К31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,54),('37','10','КАУ','31','11','кау',2,'0.000000','Оплата за материалы','б','','',56,'Оплата за материалы сч31/11','64','11','кау','64','40','кау','16.666667','Оплата за материалы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,55),('68','10','кау','31','11','кау',2,'0.000000','За усл.без НДС 2соб','б','','',57,'Переч.за усл.Д68/05 К31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,56),('31','10','кау','68','10','кау',2,'0.000000','Получена педоплата','б','','',58,'Предоплата Д31/10 К68/10','64','30','кау','64','11','кау','16.666667','Предоплата НДС','84','','кау','64','14','кау','6.000000','Начисл.Един.налог','79','10','КАУ','84','','КАУ','6.000000','Начисл.Един.налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,57),('31','10','кау','68','10','кау',2,'0.000000','Пост.деньги','б','','',59,'Реализ.ден.пост.(товар)3110','64','30','кау','64','11','кау','16.666667','Пост.деньги НДС','68','10','кау','70','20','кау','0.000000','Выполн.пост.товара','70','20','кау','64','30','кау','16.666667','Выполн.поставка НДС','70','20','кау','79','10','кау','83.333333','Реализ.деньги пост','84','','','64','14','кау','6.000000','Начисл.Единый налог','79','10','','84','','кау','6.000000','Начисл.Единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,58),('31','10','кау','68','10','кау',2,'0.000000','Пост.деньги без НДС','б','','',60,'Реализ.ден.пост(услуги)3110','64','30','кау','64','11','кау','16.666667','Пост.деньги НДС','68','10','кау','70','30','кау','0.000000','Выполнены услуги','70','30','кау','64','30','кау','16.666667','Выполн.услуги НДС','70','30','кау','79','10','кау','83.333333','Реализ.деньги пост','84','','','64','14','кау','6.000000','Начисл.един.налог','79','10','','84','','кау','6.000000','Начисл.Единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,59),('31','11','кау','68','10','кау',2,'0.000000','Пост.деньги без НДС','б','','',61,'Реализ.ден.пост(услуги)3111','64','30','кау','64','11','кау','16.666667','Пост.деньги НДС','68','10','кау','70','30','кау','0.000000','Выполнены услуги','70','30','кау','64','30','кау','16.666667','Выполн.услуги НДС','70','30','кау','79','10','кау','83.333333','Реализ.деньги пост','84','','','64','14','кау','6.000000','Начисл.Единый налог','79','10','','84','','кау','6.000000','Начисл.Единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,60),('31','10','кау','36','10','кау',2,'0.000000','','б','','',62,'Предопл.за усл.2 соб.Д31/10','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,61),('31','10','кау','36','10','кау',2,'0.000000','','б','','',63,'Опл.за услуги 2 соб.Д31/10','84','','кау','64','14','кау','6.000000','Нач.Ед.нал2соб 36сч','79','10','кау','84','','кау','6.000000','Нач.Ед.нал2соб 36сч','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,62),('37','10','КАУ','31','10','кау',2,'0.000000','Оплата за материалы','б','','',64,'Перечислено за материалы','64','11','кау','64','40','кау','16.666667','Оплата за матер.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63),('31','11','','79','10','',2,'0.000000','банковские %','б','','',65,'Поступ.банковских % Д 31/11','','','','','','','0.000000','Банковские %','84','','','64','14','','6.000000','Начисл.единый налог','79','10','','84','','','6.000000','Начисл.единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64),('31','11','кау','68','10','кау',2,'0.000000','Пост.деньги','б','','',66,'Реализ.ден.пост.(товар)3111','64','30','кау','64','11','кау','16.666667','Пост.деньги НДС','68','10','кау','70','20','кау','0.000000','Вып.поставка товара','70','20','кау','64','30','кау','16.666667','Пост.деньги НДС','70','20','кау','79','10','кау','83.333333','Реализ.деньги пост','84','','','64','14','кау','6.000000','Начисл.Единый налог','79','10','','84','','кау','6.000000','Начисл.Единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65),('31','11','кау','68','10','кау',2,'0.000000','Получена педоплата','б','','',67,'Предоплата Д31/11 К68/10','64','30','кау','64','11','кау','16.666667','Предоплата НДС','84','','кау','64','14','кау','6.000000','Начисл.Единый налог','79','10','КАУ','84','','КАУ','6.000000','Начисл.Единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,66),('31','10','','79','10','',2,'0.000000','банковские %','б','','',68,'Поступ.банковских % Д 31/10','','','','','','','0.000000','','84','','','64','14','','6.000000','Начисл.единый налог','79','10','','84','','','6.000000','Начисл.единый налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,67),('31','11','кау','63','10','кау',2,'0.000000','','б','','',69,'Опл.за услуги 2 соб.Д31/11','84','','кау','64','14','кау','6.000000','Нач.Ед.нал2соб 36сч','79','10','','84','','','6.000000','Нач.Ед.нал2соб 36чс','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,68),('68','10','кау','31','11','кау',2,'0.000000','За усл.без НДС 2соб','б','','',70,'Пер.за аренд.Д68/05 К31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69),('64','11','кау','37','20','кау',2,'0.000000','','','','',71,'Авансовый отчет НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,70),('28','10','кау','37','20','кау',2,'83.333333','Аванс.отчет без НДС','','','',72,'Авансовые отчеты Д 281','64','11','кау','37','20','кау','16.666667','Аванс.отчет НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,71),('23','','','31','11','',2,'0.000000','Услуги банка','б','','',73,'Услуги банка  3111','84','','','23','','','0.000000','Услуги банка','79','10','','84','','','0.000000','Услуги банка','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,72),('84','','кау','63','10','кау',2,'83.333333','','м','','',74,'Нач расх услуги Д6440 К6310','64','40','кау','63','10','кау','16.666667','расх за усл.без НДС','23','','кау','84','','кау','83.333333','Нач.расх за услуги','79','10','кау','23','','кау','83.333333','Нач.расх за услуги','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,73),('36','10','кау','70','30','кау',2,'0.000000','','','','',75,'Выполнены работы  сч 361','70','30','кау','64','11','кау','16.666667','Выполнены работы','70','30','кау','79','10','кау','83.333333','Выполнены работы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,74),('68','10','кау','70','30','кау',2,'0.000000','','','','',76,'Выполнены работы  сч 681','70','30','кау','64','30','кау','16.666667','Выполнены работы','70','30','кау','79','10','кау','83.333333','Выполнены работы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,75),('68','10','кау','70','20','кау',2,'0.000000','Вып.поставка товара','','','',77,'Выполн.пост.товара Д681','70','20','кау','64','30','кау','16.666667','Вып.пост.товара НДС','70','20','кау','79','10','кау','83.333333','Вып.поставка товара','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,76),('63','10','кау','31','10','кау',2,'0.000000','За усл.без НДС 2соб','б','','',78,'Пер.за усл.2соб Д6310 К3110','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,77),('63','10','кау','31','11','кау',2,'0.000000','За усл.без НДС 2соб','б','','',79,'Пер.за усл.2соб Д6310 К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,78),('84','','кау','63','10','кау',2,'83.333333','Нач расх  услуги','м','','',80,'Начис расх услуги 1соб К631','64','11','кау','63','10','кау','16.666667','Нач расх услуг НДС','23','','кау','84','','кау','83.333333','Нач расх услуг безН','79','10','кау','23','','кау','83.333333','Нач расх услуг безН','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,79),('84','','кау','37','10','кау',2,'83.333333','Спис.услуг без НДС','м','','',81,'Спис.вып.услуг 2соб.сч 371','79','10','кау','84','','кау','83.333333','Сп.усл.арен/тел','64','40','кау','37','10','кау','16.666667','Сп.вып.услуг НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,80),('28','10','кау','37','10','КАУ',2,'83.333333','Оприход.матер.2 соб','м','','',82,'Оприх.товара 2 событ сч3710','64','40','кау','37','10','КАУ','16.666667','Оприход.матер.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,81),('81','10','кау','66','10','док',2,'0.000000','','з','','13',83,'Начисленная зарплата','79','10','КАУ','81','10','кау','0.000000','Начислен.зарпл.АУП','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,82),('81','10','кау','66','10','док',2,'0.000000','','з','','13',84,'Начислена зарплата','79','10','КАУ','81','10','кау','0.000000','Начислен.зарпл.АУП','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83),('28','10','','20','20','',2,'0.000000','','м','','',85,'Перенос мат.в тов.К202 Д281','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,84),('84','','кау','68','10','кау',2,'83.333333','Нач расх  связь','м','','',86,'Начисл. расходы на аренду','79','10','кау','84','','кау','83.333333','Нач расх связь НДС','64','11','кау','68','10','кау','16.666667','Нач расх связь НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,85),('63','10','кау','31','10','кау',2,'0.000000','За услуги 1соб.пр.','б','','',87,'Переч.2соб c НДС 631ч.31/10','64','11','кау','64','40','кау','16.666667','За услуги НДСпредоп','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,86),('15','20','кау','37','10','кау',2,'83.333333','','ф','','',88,'Ввод нов.обьекта ОФ сч371','64','40','кау','37','10','кау','16.666667','Поступ.ОФ отраж.НДС','10','40','','15','20','','83.333333','Зачил.объект в ОФ','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,87),('84','','кау','63','10','КАУ',2,'0.000000','Усл.вып.безНДС','м','','',89,'Усл.вып.пос-ком без НДС 631','23','','кау','84','','кау','0.000000','отн.вып.усл.на п-во','79','10','кау','23','','кау','0.000000','спис.усл.на фин.рез','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,88),('80','80','док','28','10','док',2,'0.000000','списан.товара','м','','9',90,'Cпис.товара для собст.нужд','79','10','док','80','80','док','0.000000','Списание товара','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,89),('15','20','','20','20','',2,'0.000000','','ф','','',91,'Списан. ссч 202 на сч 104','10','40','','15','20','','0.000000','Перевод с 202 на104','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,90),('68','50','кау','31','10','кау',2,'0.000000','За усл.без НДС 2соб','б','','',92,'Пер.за аренд.Д68/05 К31/10','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,91),('31','10','','30','10','',2,'0.000000','','к','','',93,'Сданы деньги в банк','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,92),('84','','кау','68','50','кау',2,'0.000000','','м','','',94,'Начисл.расх.на аренду б НДС','79','10','кау','84','','кау','0.000000','Расх.на арен.безНДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,93),('30','10','док','37','20','кау',2,'0.000000','','к','','',95,'Возврат неизр. суммы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,94),('28','10','кау','37','20','кау',2,'0.000000','Аванс.отчет без НДС','','','',96,'Аванс. отчет Д 281без НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,95),('28','10','кау','37','20','кау',2,'83.333333','Аванс.отчет без НДС','','','',97,'Авансовые отчеты  сч.Д 2810','64','11','кау','37','20','кау','16.666667','Аванс.отчет НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,96),('37','10','кау','31','11','кау',2,'0.000000','За услуги 1 соб.','б','','',98,'Переч.за услуги К 3111','64','11','кау','64','40','кау','16.666667','возм.НДС по предопл','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,97),('37','10','кау','31','10','кау',2,'0.000000','За усл.без НДС','б','','',99,'Переч.за услуги К 3110','64','11','кау','64','40','кау','16.666667','За услуги НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,98),('63','10','кау','31','10','кау',2,'0.000000','За усл.без НДС','б','','',100,'Переч.за услуг.К3110 безНДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,99),('84','','','28','30','',2,'0.000000','','м','','',101,'Спис товар комис.торг 28/30','79','10','','84','','','0.000000','Спис.тов.комис.торг','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,100),('37','10','кау','31','11','кау',2,'0.000000','За усл.без НДС','б','','',102,'Переч.за услуг.К3111 безНДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,101),('65','20','','31','11','',2,'0.000000','','б','','',103,'Перечислено в ф-д инвалидов','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,102),('','','','','','',2,'0.000000','','н','','',104,'Удерж.изл.выпл.сумма','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,103),('20','20','кау','37','20','кау',2,'83.333333','Аванс.отчет без НДС','','','',105,'Авансовые отчеты  сч.Д 202','64','11','кау','37','20','кау','16.666667','Аванс.отчет НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,104),('20','20','кау','37','20','кау',2,'0.000000','Аванс.отчет без НДС','','','',106,'Аванс. отчет Д 202без НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,105),('20','20','кау','63','10','кау',2,'83.333333','','м','','',107,'Оприх.матер.1соб.Д202 К 631','64','11','кау','63','10','кау','16.666667','Опр.матер.1 соб.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,106),('44','10','кау','63','10','КАУ',2,'0.000000','Усл.вып.безНДС','м','','',108,'Усл.вып.испол.безНДС 631/44','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,107),('37','10','кау','31','10','кау',2,'0.000000','За усл.без НДС','б','','',109,'Переч.за подписку К3110','39','20','кау','37','10','кау','0.000000','Отн.в расх.б.п.подп','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,108),('37','10','кау','31','11','кау',2,'0.000000','За усл.без НДС','б','','',110,'Переч.за подписку К3111','39','20','кау','37','10','кау','0.000000','Отн.в расх.б.п.подп','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,109),('84','','кау','63','10','кау',2,'0.000000','нач.расх.на услуги','м','','',111,'Нач.усл.1соб без НДС  631','23','','кау','84','','кау','0.000000','Нач.расх.1с. безНДС','79','10','кау','23','','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,110),('84','','кау','63','10','кау',2,'0.000000','начисл.р-ды без НДС','м','','',112,'Начисл.пеня К63','79','10','кау','84','','кау','0.000000','начисл.р-ды','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,111),('37','10','кау','31','10','кау',2,'0.000000','','б','','',113,'Перечисл.за квартиру К3110','15','20','кау','37','10','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,112),('64','11','док','31','11','док',2,'0.000000','перечислен НДС','б','','',114,'Перечислен НДС К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,113),('64','14','','31','11','',2,'0.000000','','б','','',115,'Перечислен един.налог.К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,114),('65','10','','31','11','',2,'0.000000','перечисл.пенсион.ф.','б','','',116,'Перечисл. пенсион. ф К 3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,115),('64','13','','31','11','',2,'0.000000','','б','','',117,'Переч. подоходний нал.К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,116),('65','30','кау','31','11','кау',2,'0.000000','Пер.в ф-д занят.0.5','б','','',118,'Переч.в занятост.0.5% К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,117),('64','11','кау','68','50','кау',2,'0.000000','','н','','',120,'Справка по НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,118),('84','10','кау','68','50','кау',2,'0.000000','','н','','',120,'Справка по НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,119),('84','10','кау','68','50','кау',2,'0.000000','','н','','',121,'Справка по НДС  аренда','79','10','кау','84','10','кау','0.000000','Спр.по НДС аренда','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,120),('94','80','','64','11','',2,'0.000000','','н','','',122,'Начислена пеня о НДС','79','10','','94','80','','0.000000','Начисл.пенчя по НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,121),('15','10','кау','37','10','кау',2,'0.000000','','м','','',123,' Оказаны услуги в прибр.ОФ','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,122),('15','20','кау','37','10','кау',2,'83.333333','','м','','',124,'Оказаны услуги в приобр.ОФ','64','40','кау','37','10','кау','16.666667','Оказ.усл.приобр.ОФ','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,123),('68','10','кау','70','30','кау',2,'0.000000','','','','',125,'Выполнены работы Д681 К6411','70','30','кау','64','11','кау','16.666667','Выполнены работы','70','30','кау','79','10','кау','83.333333','Выполнены работы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,124),('84','10','кау','68','50','кау',2,'0.000000','','н','','',126,'Справка по НДС аренда Д8410','79','10','кау','84','10','кау','0.000000','Спр.по НДС аренда','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,125),('30','10','док','31','11','кау',2,'0.000000','','к','','4',208,'Получ.в кассу по чеку 31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,126),('15','20','кау','37','20','кау',2,'0.000000','','','','',128,'Авансовый отчет Д152 безНДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,127),('23','','кау','39','20','кау',2,'0.000000','Спис.расх.буд.пер-д','м','','',129,'Спис.расх.период К39сч Д23','84','','кау','23','','кау','0.000000','Спис.расх.буд.пер-д','79','10','кау','84','','кау','0.000000','Спис.расх.буд.пер-д','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128),('37','10','кау','31','11','кау',2,'0.000000','','б','','',130,'Перечисл.за квартиру К3111','15','20','кау','37','10','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,129),('31','10','кау','68','10','кау',2,'0.000000','','б','','',131,'Опл.за усл.2соб Д3110 К6810','','','','','','','0.000000','','84','','кау','64','14','кау','6.000000','Нач.Единый налог','79','10','кау','84','','кау','6.000000','Нач.Единый налог','','','','','','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,130),('28','10','кау','63','10','кау',2,'83.333333','','м','','',132,'Оприх.товар.1соб.Д281 К 631','64','11','кау','63','10','кау','16.666667','Опр.товар.1 соб.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,131),('84','','кау','39','20','кау',2,'0.000000','Спис.расх.б/п К391','м','','',133,'Спис.расх.б/п К39/1сч Д23','23','','кау','84','','кау','0.000000','Спис.расх.б/п К391','79','10','кау','23','','кау','0.000000','Спис.р-ды б/периода','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,132),('70','30','кау','64','40','кау',2,'0.000000','','н','','',134,'Справка НДС Д7030 К6440','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,133),('70','30','кау','64','11','кау',2,'0.000000','','н','','',135,'Справка НДС Д7030 К6411','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,134),('31','10','кау','63','10','кау',2,'0.000000','','б','','',136,'Ошибочн.перечисл.Д3110','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,135),('31','11','кау','68','10','кау',2,'0.000000','','б','','',137,'Опл.за усл.2соб Д3111 К6810','','','','','','','0.000000','','84','','кау','64','14','кау','6.000000','Нач.Единый налог','79','10','кау','84','','кау','6.000000','Нач.Единый налог','','','','','','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,136),('63','10','кау','31','10','кау',2,'0.000000','','б','','',138,'Переч.ошиб.получ.сум.К3110','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,137),('20','50','кау','37','20','кау',2,'0.000000','Аванс.отчет без НДС','','','',139,'Аванс. отчет Д 205без НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,138),('20','50','кау','37','20','кау',2,'83.333333','Аванс.отчет без НДС','','','',140,'Авансовые отчеты  сч.Д 2050','64','11','кау','37','20','кау','16.666667','Аванс.отчет НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,139),('20','50','кау','37','10','КАУ',2,'83.333333','Оприход.матер.2 соб','м','','',141,'Оприх.строит.матер.2 событ','64','40','кау','37','10','КАУ','16.666667','Оприход.матер.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,140),('37','10','кау','31','11','кау',2,'0.000000','','б','','',142,'Перечислено за матер.К3111','64','11','кау','64','40','кау','16.666667','Оплата за материалы','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,141),('39','20','кау','37','20','кау',2,'0.000000','','','','',143,'Авансов.отсчет Д39 без НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,142),('37','10','КАУ','31','10','кау',2,'0.000000','Оплата за материалы','б','','',144,'Оплата за материалы без НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,143),('84','','кау','63','10','кау',2,'0.000000','','м','','',145,'Нач.расх.на услуги Д 8410','79','10','кау','84','','кау','0.000000','Нач.расх.на услуги','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,144),('64','11','кау','64','40','кау',2,'0.000000','','н','','',146,'НДС Д64/11 К 64/40','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,145),('15','10','','20','50','',2,'0.000000','','м','','',147,'Списание строит. материалов','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,146),('28','10','','28','30','',2,'0.000000','','м','','',148,'Возвр.скомис.торг.К283 Д281','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,147),('37','10','кау','84','10','кау',2,'0.000000','','н','','',149,'Справка Д371 К 841','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,148),('79','10','','84','10','',2,'0.000000','','н','','',150,'Справка Д791 К8410','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,149),('44','30','','84','10','',2,'0.000000','','н','','',151,'Справка Д443 К8410','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,150),('44','30','кау','37','10','кау',2,'0.000000','','','','',152,'Приб.,использован.Д443 К371','44','10','','44','30','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,151),('37','10','КАУ','31','11','кау',2,'0.000000','Оплата за материалы','б','','',153,'Опл.за матер. безНДС К31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,152),('31','10','кау','37','10','кау',2,'0.000000','','б','','',154,'Возвр. предопл.за тов.Д3110','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,153),('79','10','','84','','',2,'0.000000','','н','','',155,'Справка Д791 К84','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,154),('30','10','док','31','11','кау',2,'0.000000','','к','','4',208,'Получ.в кассу по чеку 31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,155),('30','01','кау','37','10','кау',2,'0.000000','','к','','',157,'получ.деньги за товар','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,156),('68','10','кау','37','20','кау',2,'0.000000','','','','',158,'аванс. оплата за товар','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,157),('20','50','кау','37','10','КАУ',2,'0.000000','Оприход.матер.2 соб','м','','',159,'Оприх.стр.матер.2соб.безНДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,158),('66','10','','65','40','',2,'0.000000','Удерж.ф-д соц.страх','н','','',160,'Взн. на случ.врем.нетрудосп','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,159),('84','','кау','39','20','кау',2,'0.000000','Спис.расх.б/п К391','м','','',161,'Спис.расх.б/п К39/2сч Д84','79','10','кау','84','','кау','0.000000','Спис.расх.б/п К391','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,160),('84','','кау','68','10','кау',2,'0.000000','','м','','',162,'Нач.расх.на аренд.с Д 84','79','10','кау','84','','кау','0.000000','Нач.расх.аренд.Д84','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,161),('68','10','кау','70','30','кау',2,'0.000000','','','','',163,'Отгр.покуп.тов.по дог.комис','64','11','кау','64','40','кау','16.666667','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,162),('00','24','кау','','','',2,'0.000000','','м','','',164,'Оприх.товар.на комиссию','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,163),('64','40','кау','68','50','кау',2,'0.000000','','м','','',165,'Начисл.НДС на аренду','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,164),('70','30','кау','68','50','кау',2,'0.000000','','','','',166,'Искл.из дох.задолж.комитент','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,165),('70','30','кау','79','10','кау',2,'83.333333','','','','',167,'Спис.расх.по дог.комисии','70','30','кау','64','11','кау','16.666667','Начисл.НДС дог.комс','','','','','','','0.000000','','84','','','64','14','','6.000000','Нач.Един.нал.комисс','79','10','','84','','','6.000000','Нач.Един.нал.комисс','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,166),('68','50','кау','31','11','кау',2,'0.000000','','б','','',168,'Произ.расч.с комит-ом К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,167),('64','11','кау','68','10','кау',2,'0.000000','','м','','',169,'Нач. НДСна аренд. Д6411','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,168),('31','11','кау','68','10','кау',2,'0.000000','Получена педоплата','б','','',170,'Предопл.Д3111 К681 дог.ком.','64','30','кау','64','11','кау','16.666667','Пред.НДС комиссион','64','40','кау','64','30','кау','16.666667','закр.расч.по НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,169),('65','40','','31','11','',2,'0.000000','','б','','',171,'Переч.0.5%-врем.нетруд 3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,170),('','','','00','24','кау',2,'0.000000','','м','','',172,'Спис.стоим.товара на комисс','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,171),('31','10','кау','68','10','кау',2,'0.000000','Получена педоплата','б','','',173,'Предопл.Д3110 К681 дог.ком.','64','30','кау','64','11','кау','16.666667','Предоплата НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,172),('15','20','','63','10','кау',2,'0.000000','','м','','',174,'Списаны расх.на  стоим.ОФ','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,173),('63','10','кау','68','50','кау',2,'0.000000','','м','','',175,'Спр.отнес.расх.Д631 К 685','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,174),('79','10','','84','','',2,'0.000000','','н','','',176,'Справка Д 791 К 84','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,175),('65','40','','31','10','',2,'0.000000','','б','','',177,'Переч.0.5%-врем.нетруд 3110','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,176),('39','20','кау','63','10','кау',2,'0.000000','','м','','',178,'Оприх.услуги Д39 К631','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,177),('23','','кау','37','10','кау',2,'83.333333','','м','','',179,'Выполнен.раб.Д23 К371','64','11','кау','37','10','кау','16.666667','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,178),('68','50','кау','70','30','кау',2,'83.333333','','','','',180,'отгр.товар по дог.ком.Д681','64','11','кау','70','30','кау','16.666667','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,179),('23','','кау','37','10','кау',2,'83.333333','','м','','',181,'выполн.раб.Дт 23','64','30','кау','37','10','кау','16.666667','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,180),('31','11','кау','68','10','кау',2,'0.000000','','б','','',182,'Опл.за усл.2соб.Д3111 К6810','','','','','','','0.000000','','84','','','64','14','','6.000000','Нач.ед.налог 2 соб.','79','10','','84','','','6.000000','Нач.ед.налог 2 соб.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,181),('84','','кау','37','10','кау',2,'0.000000','','м','','',183,'начисл.налог на рекламу без','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,182),('68','50','кау','31','11','кау',2,'0.000000','без НДС','б','','',184,'перечислено за землю','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,183),('28','10','кау','68','10','кау',2,'83.333333','','м','','',185,'Оприх.тов.1соб.Кт6810','64','11','кау','68','10','кау','16.666667','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,184),('84','','кау','37','10','кау',2,'83.333333','начисл.расх.1 соб.','м','','',186,'спис.вып.усл.1соб Кт371','64','11','кау','37','10','кау','16.666667','начисл.НДС 1 соб.','79','10','кау','84','','кау','83.333333','спис.на фин.рез-т','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,185),('84','','кау','68','10','кау',2,'0.000000','','м','','',187,'начисл.расх.аренд.бНДС 681','79','10','кау','84','','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,186),('84','','кау','68','50','кау',2,'0.000000','Начисл.расх.на зем.','м','','',188,'нач.расх.на землю без НДС','23','','кау','84','','кау','0.000000','Начисл.расх.на зем.','79','10','кау','23','','кау','0.000000','Нач.расх.зем.налога','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,187),('31','11','кау','68','10','кау',2,'0.000000','','б','','',189,'Ошиб.переч.Д3111/К 6810','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,188),('68','10','кау','31','11','кау',2,'0.000000','','б','','',190,'Возвр.ошиб.пол.сум.Д681К311','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,189),('00','24','','','','',2,'0.000000','','м','','',191,'Списаны довер.Д024 К202','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,190),('10','30','','15','00','',2,'0.000000','','ф','','',192,'Оприх.с-ть ОФ Д103 К15','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,191),('64','11','кау','64','30','кау',2,'0.000000','','м','','',193,'Возмещ.НДС Д641 К 643','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,192),('84','10','кау','63','10','кау',2,'0.000000','','н','','',194,'Нач.услуги Д84 К 631','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,193),('79','10','кау','70','30','кау',2,'0.000000','','','','',195,'получ.вознагр.Д68 К 703','64','11','кау','70','30','кау','16.666667','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,194),('10','30','кау','20','20','кау',2,'0.000000','','м','','',196,'перенос мат.на основные','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,195),('20','20','кау','37','10','кау',2,'83.333333','опр.матер.1 соб.','м','','',197,'Опр.матер.1 соб.Д202 К371','64','11','кау','37','10','кау','16.666667','получ.матер.1соб.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,196),('63','10','кау','31','11','кау',2,'0.000000','','б','','',198,'Предоп.Д631 К 31/11','64','11','кау','64','40','кау','16.666667','Предопл.НДС за усл.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,197),('20','20','кау','63','10','кау',2,'83.333333','опр.материал','м','','',199,'Оприх.матер.2соб.Д202 К631','64','40','кау','63','10','кау','16.666667','Опр.матер.2 соб.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,198),('84','','кау','63','10','кау',2,'83.333333','','м','','',200,'Нач.усл.аренды 2собД84К631','64','40','кау','63','10','кау','16.666667','нач.НДС 2 соб.','79','10','кау','84','','кау','83.333333','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,199),('85','00','кау','28','10','кау',2,'0.000000','','м','','',201,'списание К281 Д85','79','10','кау','85','00','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,200),('85','00','кау','20','20','кау',2,'0.000000','','м','','',202,'списан.мат.К202 Д85','79','10','кау','85','00','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,201),('80','00','кау','20','90','кау',2,'0.000000','','м','','',203,'спис.мат.К209 Д80','79','10','кау','80','00','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,202),('20','50','кау','20','20','кау',2,'0.000000','','м','','',204,'спис.матер.К202 Д205','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,203),('84','00','кау','33','10','кау',2,'0.000000','','м','','',205,'Спис.герб.мар.К331 Д84','23','00','кау','84','00','кау','0.000000','','79','10','','23','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,204),('50','02','','51','','',2,'0.000000','','б','','',206,'Получено из банка по чеку','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,205),('30','10','док','31','11','кау',2,'0.000000','','к','','4',208,'Получ.в кассу по чеку 31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,206),('30','10','док','31','11','кау',2,'0.000000','','к','','4',208,'Получ.в кассу по чеку 31/11','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,207),('37','70','Док','30','10','кау',2,'0.000000','','к','','',209,'Выдана ссуда Д377 К3010','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,208),('64','3','кау','37','10','кау',2,'0.000000','выполнен.работы','м','','',211,'Корректир.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,209),('64','40','кау','37','10','кау',2,'0.000000','выполн.работы','м','','',211,'корректир.НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,210),('68','10','кау','70','20','кау',2,'0.000000','Выполн.пост.товара','','','',212,'Вып.пост.товараД681 К 702','70','20','кау','64','11','кау','16.666667','Вып.пост.тов.НДС','70','20','кау','79','10','кау','83.333333','Вып.пост.товара','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,211),('15','20','кау','28','10','кау',2,'0.000000','','ф','','',228,'Справка','10','40','','15','20','','0.000000','оприх.О.Ф.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,212),('10','30','кау','15','10','кау',2,'0.000000','Оприходованы О.Ф.','ф','','',214,'Оприх.стоим.ОФ Д1030 К1510','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,213),('84','','кау','33','10','кау',2,'0.000000','спиис.герб.марки','м','','',215,'Спис.гербов.марки К 331','23','','кау','84','','кау','0.000000','спис.герб.марки','79','10','кау','23','','кау','0.000000','спис.герб.марки','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,214),('84','','','20','20','',2,'0.000000','','м','','',216,'Спис.доверрен.Д84 К 202','23','','','84','','','0.000000','','79','10','','23','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,215),('10','30','','15','20','',2,'0.000000','оприход.О.Ф.','ф','','',217,'Оприх.с-тьОФ Д103 К1520','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,216),('','','','20','20','',2,'0.000000','','м','','',218,'Списаны доверен.К 2020','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,217),('20','20','кау','28','10','кау',2,'0.000000','перен.тов.на матер.','м','','',219,'Перенос товара Д202 К281','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,218),('10','40','','15','20','',2,'0.000000','оприх.осн.средства','ф','','',220,'справка Д1040 К1520','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,219),('20','20','','10','40','',2,'0.000000','перенес.на МБП','м','','',221,'Справка Д202 К 104','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,220),('84','','','20','20','',2,'0.000000',' спис.материалы','м','','',222,'Списан.Д84 К 202','23','','','84','','','0.000000','','79','10','','23','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,221),('15','20','кау','37','10','кау',2,'0.000000','уст.тел.подкл.к сет','ф','','',223,'Справка Д152 К 371','10','40','кау','15','20','кау','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,222),('84','','кау','37','10','кау',2,'0.000000','спис.расх.подкл.сет','м','','',224,'Справка Д 84  К 371','23','','','84','','','0.000000','','79','10','','23','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,223),('20','20','','10','60','',2,'0.000000','спис.МБП','ф','','',225,'Справка Д 202 К 106','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,224),('84','10','кау','37','10','кау',2,'0.000000','нач.расх.на услуги','м','','',226,'Cправка  Д 841 К 371','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,225),('84','','кау','37','10','кау',2,'0.000000','начисл.услуги','м','','',227,'Начисл.услуги Д84 К 371','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,226),('84','10','кау','63','10','кау',2,'0.000000','начисл.расх.на усл.','м','','',228,'Справка','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,227),('84','','кау','63','10','кау',2,'0.000000','начисл.услуги','м','','',229,'Начисл.услуги Д 84 К 631','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,228),('66','10','кау','37','70','кау',2,'0.000000','удерж.ссуда из з/пл','н','','',230,'ССуда','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,229),('63','10','кау','31','11','кау',2,'0.000000','предопл.за услуги','б','','',231,'Переч.1соб.Д631 К31/11сНДС','64','11','кау','64','40','кау','16.666667','за услуги  НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,230),('63','10','кау','31','11','кау',2,'0.000000','за услуги','б','','',232,'Переч.2соб.сНДС631 31/11','64','11','кау','64','40','кау','16.666667','за услуги  НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,231),('31','11','кау','65','40','кау',2,'0.000000','Получено от ФСС','б','','',233,'Пост.от ФСС на Нов.подарки','','','','','','','0.000000','','84','','','64','14','','6.000000','Начисл.ед.налог','79','10','','84','','','6.000000','Начисл.ед.налог','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,232),('65','40','кау','37','20','кау',2,'0.000000','Приобр.Новог.подар.','','','',234,'Авансовые отчеты Д 65/40','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,233),('84','','кау','39','20','кау',2,'0.000000','спис.р-ды будущ.пер','м','','',235,'Спис.расх.б/п К39/2 Д 84','79','10','кау','84','','кау','0.000000','спис.р-ды буд.пер.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,234),('84','','кау','65','20','кау',2,'0.000000','р-ды по врем.нетруд','н','','',236,'Взн.врем.нетр.Д 84 К 65/20','79','10','кау','84','','кау','0.000000','р-ды по врем.нетруд','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,235),('84','','кау','65','30','кау',2,'0.000000','нач.р-ды ф.зан.','н','','',237,'Справка Д 84 К 65/30','79','10','кау','84','','кау','0.000000','спис.р-ды ф.зан.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,236),('10','40','кау','20','20','кау',2,'0.000000','перен.матер.на осн.','м','','',238,'Справка Д1040 К 202','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,237),('65','20','','31','11','',2,'0.000000','','б','','',239,'Перечисл.соц.страх 0.25%','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,238),('15','20','кау','37','10','кау',2,'83.333333','приобр.осн.ср-ва','м','','',240,'Приобр.осн.средств','64','40','кау','37','10','кау','16.666667','отр.налог.кред.НДС','10','40','кау','15','20','кау','83.333333','оприх.осн.ср-ва','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,239),('65','20','','31','10','',2,'0.000000','','б','','',241,'Переч.0.25% ФСС Д652 К31/10','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,240),('30','10','','31','10','',2,'0.000000','','к','','',242,'Получено в кассу по чеку','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,241),('65','50','кау','31','11','кау',2,'0.000000','','б','','',243,'ФСС от несч.случ.на пр-ве','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,242),('84','','кау','65','50','кау',2,'0.000000','нач.ФСС от несч.сл.','н','','',244,'Нач.ФСС от несч.сл.на пр-ве','79','10','кау','84','','кау','0.000000','спис.фин.рез-т фсс','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,243),('65','50','кау','31','10','кау',2,'0.000000','ФСС несч.сл.на пр-в','б','','',245,'ФСС несч.сл.на пр-ве К3110','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,244),('20','20','кау','37','10','кау',2,'0.000000','оприход.материалы','м','','',246,'Оприход.материалы б/НДС','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,245),('68','10','кау','31','11','кау',2,'0.000000','переч.денеж.ср-ва','б','','',247,'Переч.неисп.ден.ср-в К311','64','11','кау','64','30','кау','16.666667','возм.налог.обязат.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,246),('84','','','39','10','',2,'0.000000','спис.р-ды б/период.','з','','',248,'Спис.отпускные б/п','79','10','','84','','','0.000000','отн.расх.фин.рез-т','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,247),('84','','кау','20','90','кау',2,'0.000000','спис.бл.довер.','м','','',249,'Списаны бл.доверенностей','79','10','кау','84','','кау','0.000000','отнес.на фин.рез-т','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,248),('63','10','кау','31','10','кау',2,'0.000000','За услуги 1соб.пр.','б','','',250,'Переч.1соб c НДС 631ч.31/10','64','11','кау','64','40','кау','16.666667','За услуги НДСпредоп','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,249),('37','10','КАУ','31','10','кау',2,'0.000000','Оплата за услуги','б','','',251,'Оплата 2соб.Д371 К31/10','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,250),('37','10','кау','31','10','кау',2,'0.000000','предоп.за услуги','б','','',252,'Предоп.за услуги 1 соб.','64','11','кау','64','40','кау','16.666667','возм.НДС 1соб.пред.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,251),('37','10','кау','31','11','кау',2,'0.000000','За услуги 1 соб.','б','','',253,'Переч.за услуги К 3111 1соб','64','11','кау','64','40','кау','16.666667','возм.НДС по предопл','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,252),('37','10','КАУ','31','10','кау',2,'0.000000','Оплата за услуги','б','','',254,'Перечисл.Д371 К31/10  2соб.','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,253),('84','','кау','65','40','кау',2,'0.000000','ФСС по врем.нетр.','н','','',255,'Справка Д-т 84 К-т 65/40','79','10','кау','84','','кау','0.000000','отнес.на фин.рез-т','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,254),('15','20','кау','63','10','кау',2,'83.333333','приобр.осн.ср-ва','м','','',256,'Опр.осн.ср-ва К-т 631','64','40','кау','63','10','кау','16.666667','отр.налог.кредитНДС','10','40','кау','15','20','кау','83.333333','оприход.осн.ср-ва','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255),('28','10','кау','63','10','кау',2,'83.333333','Опр.тов.2 событ.','м','','',257,'Опр.тов.2соб.Д 281 К 631','64','40','кау','63','10','кау','16.666667','отраж.налог.кредит','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,256),('31','11','кау','37','10','кау',2,'0.000000','Возв.ошиб.пер.суммы','б','','',258,'Возв.ошиб.пер.Д 31/11 К631 ','','','','','','','0.000000','','84','','кау','64','14','кау','6.000000','начисл.ед.налог2','79','10','кау','84','','кау','6.000000','отнес.на фин.рез-т','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','8','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,257),('84','','кау','37','10','кау',2,'0.000000','начисл.экпл.р-ды','м','','',259,'Начисл.экспл.р-ды К 371','79','10','кау','84','','кау','0.000000','отнес.на фин.рез-т','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,258),('66','10','кау','37','40','кау',2,'0.000000','','н','','',260,'Удерж.по и/листу','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,259),('37','40','кау','31','11','кау',2,'0.000000','','б','','',261,'Переч.и/листу Д37/40 К3111','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,260),('37','20','кау','30','10','док',2,'0.000000','Расходный ордер','к','','5',262,'Расходный ордер подотчет','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,261),('','','','','','',0,'0.000000','','','','',263,'','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,262),('31','11','','37','10','',0,'0.000000','проба','б','','',264,'проба add','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','','','','','','','','0.000000','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,263);
/*!40000 ALTER TABLE `oper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payinit`
--

DROP TABLE IF EXISTS `payinit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payinit` (
  `Sound` char(1) collate utf8_unicode_ci NOT NULL,
  `Fcolor` char(1) collate utf8_unicode_ci NOT NULL,
  `Path` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Lines` int(3) NOT NULL,
  `Naimsokr` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Naimpoln` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Naosnove` varchar(45) collate utf8_unicode_ci NOT NULL,
  `Gorod` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Adres` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Rsbank` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Rskor` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Adrbanka` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Dol` varchar(12) collate utf8_unicode_ci NOT NULL,
  `Director` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Telef` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Dzp` decimal(6,2) NOT NULL,
  `Soc` decimal(6,2) NOT NULL,
  `Amo` decimal(6,2) NOT NULL,
  `Nak` decimal(6,2) NOT NULL,
  `Pri` decimal(6,2) NOT NULL,
  `Namebank` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Citybank` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Kodbank` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Okpo` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Ceh` int(2) NOT NULL,
  `Data` date NOT NULL,
  `Pnz` char(1) collate utf8_unicode_ci NOT NULL,
  `Ot_dn` decimal(6,2) NOT NULL,
  `Ot_kr` int(1) NOT NULL,
  `Pnbp` int(1) NOT NULL,
  `Tp` int(1) NOT NULL,
  `Okr` int(2) NOT NULL,
  `Pport` int(1) NOT NULL,
  `Nds` decimal(6,2) NOT NULL,
  `Mhelp1` char(3) collate utf8_unicode_ci NOT NULL,
  `Mhelp2` char(3) collate utf8_unicode_ci NOT NULL,
  `Mhelp3` char(3) collate utf8_unicode_ci NOT NULL,
  `Vdivide1` char(3) collate utf8_unicode_ci NOT NULL,
  `Vdivide2` char(3) collate utf8_unicode_ci NOT NULL,
  `Vdivide3` char(3) collate utf8_unicode_ci NOT NULL,
  `Arenda` char(3) collate utf8_unicode_ci NOT NULL,
  `Arenda1` char(3) collate utf8_unicode_ci NOT NULL,
  `Arenda2` char(3) collate utf8_unicode_ci NOT NULL,
  `Komisia` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch1` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch2` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch3` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch4` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch5` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch6` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch7` char(3) collate utf8_unicode_ci NOT NULL,
  `Proch8` char(3) collate utf8_unicode_ci NOT NULL,
  `Kvartal` int(1) NOT NULL,
  `Nalogi` int(1) NOT NULL,
  `Dead` int(1) NOT NULL,
  `Doppn` char(3) collate utf8_unicode_ci NOT NULL,
  `Doppn1` char(3) collate utf8_unicode_ci NOT NULL,
  `Doppn2` char(3) collate utf8_unicode_ci NOT NULL,
  `Skvoznak` int(1) NOT NULL,
  `Nazva` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Bookkeep` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Keepnum` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Chefnum` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Cheffone` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Keepfone` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Kodmudakov` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Nammudakov` varchar(56) collate utf8_unicode_ci NOT NULL,
  `Paperfmt` int(1) NOT NULL,
  `Font` int(1) NOT NULL,
  `Lines12` int(3) NOT NULL,
  `Buxnom` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Mavan` int(1) NOT NULL,
  `Penpna` varchar(17) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payinit`
--

/*LOCK TABLES `payinit` WRITE;
/*!40000 ALTER TABLE `payinit` DISABLE KEYS */;
/*!40000 ALTER TABLE `payinit` ENABLE KEYS */;
/*UNLOCK TABLES;

--
-- Table structure for table `paystatus`
--

DROP TABLE IF EXISTS `paystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paystatus` (
  `id` int(5) NOT NULL auto_increment,
  `uslog` tinytext,
  `psw` varchar(10) default NULL,
  `pswkey` varchar(16) default NULL,
  `inum` decimal(3,0) default NULL,
  `prava` tinytext,
  `znyzhka` decimal(2,0) default NULL,
  `akceptor` decimal(3,0) default NULL,
  `adress` int(10) default NULL,
  `lang` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paystatus`
--

LOCK TABLES `paystatus` WRITE;
/*!40000 ALTER TABLE `paystatus` DISABLE KEYS */;
INSERT INTO `paystatus` VALUES (1,'su','su','So4EndshN5ztfge','1','a',NULL,NULL,NULL,'ua'),(2,'su',NULL,'So4EndshN5ztfge','1','a',NULL,NULL,NULL,'ua'),(3,'su',NULL,'So4EndshN5ztfge','1','a',NULL,NULL,NULL,'ua'),(4,'su',NULL,'So4EndshN5ztfge','1','a',NULL,NULL,NULL,NULL),(5,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(6,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(7,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(8,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(9,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(10,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(11,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(12,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(13,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(14,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL),(15,'su',NULL,'So4EndshN5ztfge','1',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `paystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poruc`
--

DROP TABLE IF EXISTS `poruc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poruc` (
  `Summa` decimal(15,2) NOT NULL,
  `Summa1` decimal(15,2) NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Naimpoln` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Klient` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Kodk` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Rsklient` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Bankk` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Cityklient` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Data` date NOT NULL,
  `Zachto` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Zachto1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Zachto2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Zachto3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Number` int(4) NOT NULL,
  `Okpo` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Ndata` date NOT NULL,
  `Rskor` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Plat` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Datausl` varchar(10) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poruc`
--

/*LOCK TABLES `poruc` WRITE;
/*!40000 ALTER TABLE `poruc` DISABLE KEYS */;
/*!40000 ALTER TABLE `poruc` ENABLE KEYS */;
/*UNLOCK TABLES;

--
-- Table structure for table `prj01`
--

DROP TABLE IF EXISTS `prj01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prj01` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `naim` varchar(30) collate utf8_unicode_ci default NULL,
  `naim2` varchar(30) collate utf8_unicode_ci default NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `idkrt` int(11) NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Dz` date NOT NULL,
  `Nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ndstoim` decimal(19,6) NOT NULL,
  `Pp` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idpp` int(11) NOT NULL,
  `Pr` decimal(13,3) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Shifr` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Stoim` decimal(19,6) NOT NULL,
  `D_n` int(1) NOT NULL,
  `Vp` int(1) NOT NULL,
  `Do` date NOT NULL,
  `Nds` decimal(6,3) NOT NULL,
  `S_nds` decimal(19,2) NOT NULL,
  `Torg` decimal(6,2) NOT NULL,
  `Srasj` decimal(5,2) NOT NULL,
  `Ztrans` decimal(19,2) NOT NULL,
  `Seller` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Driver` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Otgr` decimal(11,2) NOT NULL,
  `ch_kogo` varchar(25) collate utf8_unicode_ci default NULL,
  `n_dov` varchar(10) collate utf8_unicode_ci default NULL,
  `Osnov` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Forma` varchar(40) collate utf8_unicode_ci NOT NULL,
  `mash` varchar(10) collate utf8_unicode_ci default NULL,
  `Stavka` int(1) NOT NULL,
  `Dor_stav` decimal(6,3) NOT NULL,
  `Dor_sum` decimal(19,2) NOT NULL,
  `Ug` char(1) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Nzp` int(3) NOT NULL,
  `Newkau` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `idnd` int(11) default NULL,
  `splacheno` decimal(19,6) default NULL,
  `delivered` varchar(60) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`),
  KEY `Nd` (`Nd`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prj01`
--

LOCK TABLES `prj01` WRITE;
/*!40000 ALTER TABLE `prj01` DISABLE KEYS */;
/*!40000 ALTER TABLE `prj01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prjetalon`
--

DROP TABLE IF EXISTS `prjetalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prjetalon` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naim2` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `idkrt` int(11) NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Dz` date NOT NULL,
  `Nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ndstoim` decimal(19,6) NOT NULL,
  `Pp` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idpp` int(11) NOT NULL,
  `Pr` decimal(13,3) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Shifr` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Stoim` decimal(19,6) NOT NULL,
  `D_n` int(1) NOT NULL,
  `Vp` int(1) NOT NULL,
  `Do` date NOT NULL,
  `Nds` decimal(6,3) NOT NULL,
  `S_nds` decimal(19,2) NOT NULL,
  `Torg` decimal(6,2) NOT NULL,
  `Srasj` decimal(5,2) NOT NULL,
  `Ztrans` decimal(19,2) NOT NULL,
  `Seller` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Driver` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Otgr` decimal(11,2) NOT NULL,
  `Ch_kogo` varchar(25) collate utf8_unicode_ci NOT NULL,
  `N_dov` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Osnov` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Forma` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Mash` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Stavka` int(1) NOT NULL,
  `Dor_stav` decimal(6,3) NOT NULL,
  `Dor_sum` decimal(19,2) NOT NULL,
  `Ug` char(1) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Nzp` int(3) NOT NULL,
  `Newkau` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `idnd` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `Nd` (`Nd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prjetalon`
--

LOCK TABLES `prjetalon` WRITE;
/*!40000 ALTER TABLE `prjetalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `prjetalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pstatus`
--

DROP TABLE IF EXISTS `pstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pstatus` (
  `zapis` text collate utf8_unicode_ci NOT NULL,
  `par1` text collate utf8_unicode_ci NOT NULL,
  `par2` text collate utf8_unicode_ci NOT NULL,
  `par3` text collate utf8_unicode_ci NOT NULL,
  `par4` text collate utf8_unicode_ci NOT NULL,
  `recnum` int(11) NOT NULL auto_increment,
  `copykardsklad` varchar(3) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`recnum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pstatus`
--

LOCK TABLES `pstatus` WRITE;
/*!40000 ALTER TABLE `pstatus` DISABLE KEYS */;
INSERT INTO `pstatus` VALUES ('nored','name','0','','no',1,'76');
/*!40000 ALTER TABLE `pstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsj01`
--

DROP TABLE IF EXISTS `rsj01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsj01` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `naim` varchar(30) collate utf8_unicode_ci default NULL,
  `naim2` varchar(30) collate utf8_unicode_ci default NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `idkrt` int(11) NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Dz` date NOT NULL,
  `Nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ndstoim` decimal(19,6) NOT NULL,
  `Pp` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idpp` int(11) NOT NULL,
  `Pr` decimal(13,3) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Shifr` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Stoim` decimal(19,6) NOT NULL,
  `D_n` int(1) NOT NULL,
  `Vp` int(3) NOT NULL,
  `idprih` int(11) NOT NULL,
  `Do` date NOT NULL,
  `Nds` decimal(6,3) NOT NULL,
  `S_nds` decimal(19,2) NOT NULL,
  `Torg` decimal(6,2) NOT NULL,
  `Srasj` decimal(5,2) NOT NULL,
  `Ztrans` decimal(19,2) NOT NULL,
  `Seller` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Driver` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Otgr` decimal(11,2) NOT NULL,
  `ch_kogo` varchar(25) collate utf8_unicode_ci default NULL,
  `n_dov` varchar(10) collate utf8_unicode_ci default NULL,
  `Osnov` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Forma` varchar(40) collate utf8_unicode_ci NOT NULL,
  `mash` varchar(10) collate utf8_unicode_ci default NULL,
  `Stavka` int(1) NOT NULL,
  `Dor_stav` decimal(6,3) NOT NULL,
  `Dor_sum` decimal(19,2) NOT NULL,
  `Ug` char(1) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Nzp` int(3) NOT NULL,
  `Newkau` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `idnd` int(11) default NULL,
  `splacheno` decimal(19,6) default NULL,
  `delivered` varchar(60) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsj01`
--

LOCK TABLES `rsj01` WRITE;
/*!40000 ALTER TABLE `rsj01` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsj01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rsjetalon`
--

DROP TABLE IF EXISTS `rsjetalon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsjetalon` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(20) collate utf8_unicode_ci NOT NULL,
  `naim2` varchar(30) collate utf8_unicode_ci default NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `idkrt` int(11) NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Dz` date NOT NULL,
  `Nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ndstoim` decimal(19,6) NOT NULL,
  `Pp` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idpp` int(11) NOT NULL,
  `Pr` decimal(13,3) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Shifr` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Stoim` decimal(19,6) NOT NULL,
  `D_n` int(1) NOT NULL,
  `Vp` int(3) NOT NULL,
  `idprih` int(11) NOT NULL,
  `Do` date NOT NULL,
  `Nds` decimal(6,3) NOT NULL,
  `S_nds` decimal(19,2) NOT NULL,
  `Torg` decimal(6,2) NOT NULL,
  `Srasj` decimal(5,2) NOT NULL,
  `Ztrans` decimal(19,2) NOT NULL,
  `Seller` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Driver` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Otgr` decimal(11,2) NOT NULL,
  `ch_kogo` varchar(25) collate utf8_unicode_ci default NULL,
  `n_dov` varchar(10) collate utf8_unicode_ci default NULL,
  `Osnov` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Forma` varchar(40) collate utf8_unicode_ci NOT NULL,
  `mash` varchar(10) collate utf8_unicode_ci default NULL,
  `Stavka` int(1) NOT NULL,
  `Dor_stav` decimal(6,3) NOT NULL,
  `Dor_sum` decimal(19,2) NOT NULL,
  `Ug` char(1) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Nzp` int(3) NOT NULL,
  `Newkau` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `idnd` int(11) default NULL,
  `splacheno` decimal(19,6) default NULL,
  `delivered` varchar(60) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rsjetalon`
--

LOCK TABLES `rsjetalon` WRITE;
/*!40000 ALTER TABLE `rsjetalon` DISABLE KEYS */;
/*!40000 ALTER TABLE `rsjetalon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sfak`
--

DROP TABLE IF EXISTS `sfak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sfak` (
  `number` int(10) NOT NULL auto_increment,
  `postav` text collate utf8_unicode_ci NOT NULL,
  `plat` varchar(76) collate utf8_unicode_ci NOT NULL,
  `gorod` varchar(20) collate utf8_unicode_ci NOT NULL,
  `adres` text collate utf8_unicode_ci NOT NULL,
  `rsbank` varchar(18) collate utf8_unicode_ci NOT NULL,
  `citybank` varchar(15) collate utf8_unicode_ci NOT NULL,
  `adrbanka` varchar(76) collate utf8_unicode_ci NOT NULL,
  `kodbank` varchar(9) collate utf8_unicode_ci NOT NULL,
  `namebank` varchar(30) collate utf8_unicode_ci NOT NULL,
  `datascheta` date NOT NULL,
  `tovar` text collate utf8_unicode_ci NOT NULL,
  `cena` decimal(9,2) NOT NULL,
  `kolich` decimal(9,2) NOT NULL,
  `ed` text collate utf8_unicode_ci NOT NULL,
  `nds` int(2) NOT NULL,
  `kom1` text collate utf8_unicode_ci NOT NULL,
  `kom2` text collate utf8_unicode_ci NOT NULL,
  `t1` text collate utf8_unicode_ci NOT NULL,
  `k1` decimal(9,2) NOT NULL,
  `e1` text collate utf8_unicode_ci NOT NULL,
  `c1` decimal(9,2) NOT NULL,
  `t2` text collate utf8_unicode_ci NOT NULL,
  `k2` decimal(9,2) NOT NULL,
  `e2` text collate utf8_unicode_ci NOT NULL,
  `c2` decimal(9,2) NOT NULL,
  `t3` text collate utf8_unicode_ci NOT NULL,
  `k3` decimal(9,2) NOT NULL,
  `e3` text collate utf8_unicode_ci NOT NULL,
  `c3` decimal(9,2) NOT NULL,
  `t4` text collate utf8_unicode_ci NOT NULL,
  `k4` decimal(9,2) NOT NULL,
  `e4` text collate utf8_unicode_ci NOT NULL,
  `c4` decimal(9,2) NOT NULL,
  `t5` text collate utf8_unicode_ci NOT NULL,
  `k5` decimal(9,2) NOT NULL,
  `e5` text collate utf8_unicode_ci NOT NULL,
  `c5` decimal(9,2) NOT NULL,
  `t6` text collate utf8_unicode_ci NOT NULL,
  `e6` text collate utf8_unicode_ci NOT NULL,
  `k6` decimal(9,2) NOT NULL,
  `c6` decimal(9,2) NOT NULL,
  `t7` text collate utf8_unicode_ci NOT NULL,
  `e7` text collate utf8_unicode_ci NOT NULL,
  `k7` decimal(9,2) NOT NULL,
  `c7` decimal(9,2) NOT NULL,
  `t8` text collate utf8_unicode_ci NOT NULL,
  `e8` text collate utf8_unicode_ci NOT NULL,
  `k8` decimal(9,2) NOT NULL,
  `c8` decimal(9,2) NOT NULL,
  `t9` text collate utf8_unicode_ci NOT NULL,
  `e9` text collate utf8_unicode_ci NOT NULL,
  `k9` decimal(9,2) NOT NULL,
  `c9` decimal(9,2) NOT NULL,
  UNIQUE KEY `number` (`number`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sfak`
--

LOCK TABLES `sfak` WRITE;
/*!40000 ALTER TABLE `sfak` DISABLE KEYS */;
/*!40000 ALTER TABLE `sfak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sk`
--

DROP TABLE IF EXISTS `sk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sk` (
  `Sk` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Nom` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `Invisible` char(1) collate utf8_unicode_ci NOT NULL,
  `id` int(10) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sk`
--

LOCK TABLES `sk` WRITE;
/*!40000 ALTER TABLE `sk` DISABLE KEYS */;
INSERT INTO `sk` VALUES ('комора велика та гарна',1,'','',1);
/*!40000 ALTER TABLE `sk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skladstatus`
--

DROP TABLE IF EXISTS `skladstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skladstatus` (
  `id` int(5) NOT NULL auto_increment,
  `uslog` tinytext,
  `psw` varchar(10) default NULL,
  `pswkey` varchar(16) default NULL,
  `inum` decimal(3,0) default NULL,
  `prava` tinytext,
  `znyzhka` decimal(2,0) default NULL,
  `akceptor` decimal(3,0) default NULL,
  `adress` int(10) default NULL,
  `lang` tinytext,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skladstatus`
--

LOCK TABLES `skladstatus` WRITE;
/*!40000 ALTER TABLE `skladstatus` DISABLE KEYS */;
INSERT INTO `skladstatus` VALUES (1,'alex','alex','5cDN7OzA8kGP04b','75','a','10','75',2,'En'),(2,'nataly','nataly','XQZRWCx5a5Fx5Cd','75','a','10','75',2,'En'),(3,'su','su','K8J1DllQ2Hsax9G','1','t','5','73',2,'ua'),(4,'marat','marat','5T19s83tFsb39M9','77','a','10','77',2,'En'),(5,'su2','su2','3XX5oD8yxscffL2','1','a','4','4',2,'en'),(7,'aldark','rhb38ksm','8LbzLfVEGGX5Wg5','1','a','5','78',15,'ua'),(20,'alex75','alex75','1aYRp3eam9LTkbA','75','t','10','79',75,'en'),(21,'alex73','alex73','71xh4wL10G4iYOo','73','t','15',NULL,2,'en'),(22,'alitop82','alitop82','zHMqXBdWfnfrLxX','82','t','5',NULL,34,'en'),(23,'alitop81','alitop81','02NnG1D7iu6k8FL','81','t','5',NULL,34,'en'),(27,'vpazp','vpazp','a53jW348EbTsCAC','77','a','10','73',2,'en'),(24,'alex79','alex79','6CXC6oq73K89RL1','79','u','10',NULL,79,'en'),(25,'alexbhr','alexbhr','2WW4JG5227zNniD','75','t','0',NULL,0,'en'),(26,'',NULL,'vvgi7QmR1Qswm0d','1',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `skladstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sost`
--

DROP TABLE IF EXISTS `sost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sost` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `dr` date default NULL,
  `metod` varchar(1) default NULL,
  `server` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sost`
--

LOCK TABLES `sost` WRITE;
/*!40000 ALTER TABLE `sost` DISABLE KEYS */;
INSERT INTO `sost` VALUES (1,'2011-04-01',NULL,NULL);
/*!40000 ALTER TABLE `sost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmpobor`
--

DROP TABLE IF EXISTS `tmpobor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmpobor` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `Naim` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naim2` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `idkrt` int(11) NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Dz` date NOT NULL,
  `Nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ndstoim` decimal(19,6) NOT NULL,
  `Pp` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idpp` int(11) NOT NULL,
  `Pr` decimal(13,3) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Shifr` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Stoim` decimal(19,6) NOT NULL,
  `D_n` int(1) NOT NULL,
  `Vp` int(3) NOT NULL,
  `idprih` int(11) NOT NULL,
  `Do` date NOT NULL,
  `Nds` decimal(6,3) NOT NULL,
  `S_nds` decimal(19,2) NOT NULL,
  `Torg` decimal(6,2) NOT NULL,
  `Srasj` decimal(5,2) NOT NULL,
  `Ztrans` decimal(19,2) NOT NULL,
  `Seller` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Driver` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Otgr` decimal(11,2) NOT NULL,
  `Ch_kogo` varchar(25) collate utf8_unicode_ci NOT NULL,
  `N_dov` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Osnov` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Forma` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Mash` varchar(10) collate utf8_unicode_ci NOT NULL,
  `Stavka` int(1) NOT NULL,
  `Dor_stav` decimal(6,3) NOT NULL,
  `Dor_sum` decimal(19,2) NOT NULL,
  `Ug` char(1) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Nzp` int(3) NOT NULL,
  `Newkau` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `idnd` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmpobor`
--

LOCK TABLES `tmpobor` WRITE;
/*!40000 ALTER TABLE `tmpobor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmpobor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmprozrah`
--

DROP TABLE IF EXISTS `tmprozrah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmprozrah` (
  `id` int(11) NOT NULL auto_increment,
  `Sklad` int(2) NOT NULL,
  `Zfs` char(3) collate utf8_unicode_ci NOT NULL,
  `naim` varchar(30) collate utf8_unicode_ci default NULL,
  `naim2` varchar(30) collate utf8_unicode_ci default NULL,
  `Naimgr` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Nn` varchar(13) collate utf8_unicode_ci NOT NULL,
  `idkrt` int(11) NOT NULL,
  `Ei` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Ei1` varchar(6) collate utf8_unicode_ci NOT NULL,
  `Cena` decimal(19,6) NOT NULL,
  `Scena` decimal(19,6) NOT NULL,
  `Sch` char(2) collate utf8_unicode_ci NOT NULL,
  `Subsch` char(2) collate utf8_unicode_ci NOT NULL,
  `Komm` varchar(12) collate utf8_unicode_ci NOT NULL,
  `S_torg` decimal(17,6) NOT NULL,
  `Dz` date NOT NULL,
  `Nd` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ndstoim` decimal(19,6) NOT NULL,
  `Pp` varchar(40) collate utf8_unicode_ci NOT NULL,
  `idpp` int(11) NOT NULL,
  `Pr` decimal(13,3) NOT NULL,
  `Pr1` decimal(13,3) NOT NULL,
  `Shifr` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Stoim` decimal(19,6) NOT NULL,
  `D_n` int(1) NOT NULL,
  `Vp` int(3) NOT NULL,
  `idprih` int(11) NOT NULL,
  `Do` date NOT NULL,
  `Nds` decimal(6,3) NOT NULL,
  `S_nds` decimal(19,2) NOT NULL,
  `Torg` decimal(6,2) NOT NULL,
  `Srasj` decimal(5,2) NOT NULL,
  `Ztrans` decimal(19,2) NOT NULL,
  `Seller` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Driver` varchar(25) collate utf8_unicode_ci NOT NULL,
  `Otgr` decimal(11,2) NOT NULL,
  `ch_kogo` varchar(25) collate utf8_unicode_ci default NULL,
  `n_dov` varchar(10) collate utf8_unicode_ci default NULL,
  `Osnov` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Forma` varchar(40) collate utf8_unicode_ci NOT NULL,
  `mash` varchar(10) collate utf8_unicode_ci default NULL,
  `Stavka` int(1) NOT NULL,
  `Dor_stav` decimal(6,3) NOT NULL,
  `Dor_sum` decimal(19,2) NOT NULL,
  `Ug` char(1) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Nzp` int(3) NOT NULL,
  `Newkau` varchar(7) collate utf8_unicode_ci NOT NULL,
  `Komehtap1` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap2` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap3` varchar(50) collate utf8_unicode_ci NOT NULL,
  `Komehtap4` varchar(50) collate utf8_unicode_ci NOT NULL,
  `idnd` int(11) default NULL,
  `splacheno` decimal(19,6) default NULL,
  `delivered` varchar(60) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmprozrah`
--

/*LOCK TABLES `tmprozrah` WRITE;
/*!40000 ALTER TABLE `tmprozrah` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmprozrah` ENABLE KEYS */;
/*UNLOCK TABLES;

--
-- Table structure for table `vina`
--

DROP TABLE IF EXISTS `vina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vina` (
  `id` int(11) NOT NULL auto_increment,
  `Vnk` char(3) collate utf8_unicode_ci NOT NULL,
  `Vna` char(3) collate utf8_unicode_ci NOT NULL,
  `Nna` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Ukr` char(1) collate utf8_unicode_ci NOT NULL,
  `Flr` char(1) collate utf8_unicode_ci NOT NULL,
  `Pna` varchar(17) collate utf8_unicode_ci NOT NULL,
  `Spz` varchar(8) collate utf8_unicode_ci NOT NULL,
  `Pro` decimal(6,2) NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Zakname` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  `Ozndox` int(2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vina`
--

LOCK TABLES `vina` WRITE;
/*!40000 ALTER TABLE `vina` DISABLE KEYS */;
INSERT INTO `vina` VALUES (1,'','002','Сдельная оплата','T','F','11110111100102 11','','0.00','',0,'','','',0,0),(2,'','003','Компенсация от заказчика','F','F','11111110000102  1','','0.00','',0,'','','',0,0),(3,'','004','Наставничество','F','F','11110110000102  1','26/2','0.00','',0,'','','',0,0),(4,'','005','Праздничные','T','T','11110111110102 11','26','100.00','',0,'','','',0,0),(5,'','006','Дотация на питание','F','F','10010100003102  1','81','600.00','',0,'','','',0,0),(6,'','007','Больничные','T','T','11110100000102 00','69/01','0.00','',0,'','','',0,0),(7,'','008','Больничные за октябрь','F','F','11111101100102 00','69','0.00','',0,'','','',0,0),(8,'','009','Отпускные ИТР','F','F','11110110000102 11','26','0.00','',0,'','','',0,0),(9,'','010','Отпускные','T','T','11110100010102 11','20','0.00','',0,'','','',0,0),(10,'','011','Отпускные за будущий месяц','F','F','11110110000102 11','26/1','0.00','',0,'','','',0,0),(11,'','012','Пособие по уходу за ребенком до 3 лет','F','F','00000000000002  0','69/1','0.00','',0,'','','',0,0),(12,'','013','Пособие маме воспит.более 3 детей','F','F','00000000000002  0','68','0.00','',0,'','','',0,0),(13,'','014','Компенсация детям до 16 лет','F','F','20000000000002  1','68','0.00','',0,'','','',0,0),(14,'','015','Пособие по уходу за ребенком-инвалидом','F','F','10110000000002  1','69','0.00','',0,'','','',0,0),(15,'','016','Сдельно ТУ','F','F','20001100000002  0','','0.00','',0,'','','',0,0),(16,'','017','Тринадцатая зарплата','F','F','11110110000002  1','87','0.00','',0,'','','',0,0),(17,'','019','Выходное пособие','F','F','20000000000002  1','26/1','0.00','',0,'','','',0,0),(18,'','020','Сверхурочные','F','F','11111110000002  1','26/2','137.50','',0,'','','',0,0),(19,'','022','Премия по КТУ','F','F','11110110000102  1','81','0.00','',0,'','','',0,0),(20,'','023','Ученические','F','F','11110110000002  1','26','0.00','',0,'','','',0,0),(21,'','024','Индексация за июль 2005г.','F','F','11111101100102 11','81','0.00','',0,'','','',0,0),(22,'','025','Индексация за июнь 2005 г.','F','F','11111101100102 11','81','0.00','',0,'','','',0,0),(23,'','026','Индексация за октябрь 2006г. 32.2%','F','F','11111101120102 11','20','32.20','',0,'','','',0,0),(24,'','027','Индексация за октябрь 2006г. 34.6%','F','F','11111101900102 11','20','34.60','',0,'','','',0,0),(25,'','028','Индексация за сентябрь','F','F','11111101100102 11','20','0.00','',0,'','','',0,0),(26,'','029','Индексация за октябрь','F','F','11111101100102 11','20','0.00','',0,'','','',0,0),(27,'','030','Стипендия','T','F','000000000   02  0','87','0.00','',0,'','','',0,0),(28,'','031','Ночные','T','T','111111011  102 11','26/1','20.00','',0,'','','',0,0),(29,'','032','Единовременное поощрение','F','F','11111101100102 11','20','0.00','',0,'','','',0,0),(30,'','033','Подростковые','F','F','111101111   02  1','26/1','0.00','',0,'','','',0,0),(31,'','034','Совмещение','F','F','11111110 0 102 11','20','0.00','',0,'','','',0,0),(32,'','035','Доплата за ночное время сторожам','F','T','11111101100102 11','23','20.00','',0,'','','',0,0),(33,'','036','Отпускные за счет прибыли','F','F','11110110000102  1','87/02','0.00','',0,'','','',0,0),(34,'','037','Вознаграждение за удержание г/с','F','F','10010100000002  1','76','0.00','',0,'','','',0,0),(35,'','038','Повременная оплата ТУ','F','F','00000100000','26/2','0.00','',0,'','','',0,0),(36,'','039','Материальная помощь ,облаг.подох.налогом','F','F','10010100000102 11','87/02','0.00','',0,'','','',0,0),(37,'','040','Гособязанность','F','F','11110110000102  1','26','0.00','',0,'','','',0,0),(38,'','041','Погашение долга по з/плате','F','F','00000000000002  0','50','0.00','',0,'','','',0,0),(39,'','042','Депоненты','F','F','00000000000002  0','70','0.00','',0,'','','',0,0),(40,'','043','Спецпитание','F','F','10010000000002  1','81','0.00','',0,'','','',0,0),(41,'','044','Питание уч.ЧАЭС','F','F','00000000000002  1','68','0.00','',0,'','','',0,0),(42,'','045','Оплата по трудовому соглашению','F','F','11110110000002  1','26/2','0.00','',0,'','','',0,0),(43,'','046','Гособязанность','F','F','11110110000102  1','26/1','0.00','',0,'','','',0,0),(44,'','047','Классность','F','F','11110110000102  1','26/2','0.00','',0,'','','',0,0),(45,'','048','Единовременная компенсация','F','F','00001000000002  1','','0.00','',0,'','','',0,0),(46,'','049','Пособие на рождение ребенка','F','F','00000000000002  0','69','0.00','',0,'','','',0,0),(47,'','050','Возмещение по трудовому увечью','F','F','00000000000002  0','26/4','0.00','',0,'','','',0,0),(48,'','051','Единоразовая помощь к отп.ЧАЭС','F','F','00000000000002  0','68','0.00','',0,'','','',0,0),(49,'','052','Ежемесячная компенсация на ком.усл.,хлеб','F','F','11111110000102  1','','0.00','',0,'','','',0,0),(50,'','053','Ежемес.компен.м/о детям','F','F','00000000000002  0','68','0.00','',0,'','','',0,0),(51,'','054','Компенс.за неиспольз.пут.ЧАЭС','F','F','00000000000002  0','87','0.00','',0,'','','',0,0),(52,'','055','Пособие по уходу за реб.до 6 лет','F','F','10000110000002  1','81','0.00','',0,'','','',0,0),(53,'','056','Компенсация за неиспольз.отпуск ИТР','F','F','11111101100102 11','26','0.00','',0,'','','',0,0),(54,'','057','Компенсация за неиспольз.отпуск РАБ.','F','F','10010110000102 11','26/1','0.00','',0,'','','',0,0),(55,'','058','Компенсация за неиспольз.отпуск ФП','F','F','10010010000102  1','81','0.00','',0,'','','',0,0),(56,'','059','Отпускные уч.ЧАЭС','F','F','00000000000002  1','68','0.00','',0,'','','',0,0),(57,'','060','Выслуга уч.ЧАЭС','F','F','00000000000002  1','68','0.00','',0,'','','',0,0),(58,'','061','Компенсация за неисп.отпуск за счет приб','F','F','10100000000002  1','87/02','0.00','',0,'','','',0,0),(59,'','063','Договора подряда','F','F','10000100000102  1','20','0.00','',0,'','','',0,0),(60,'','102','Сдельная оплата','F','F','11111111000102  1','20','0.00','',0,'','','',0,0),(61,'','103','Доплата за уборку','F','F','11111101100102 11','20','0.00','',0,'','','',0,0),(62,'','104','Материальная помощь не обл подохдн нал.','F','F','00000000000102  0','87/02','0.00','',0,'','','',0,0),(63,'','61','Проездные билеты-для начисл.под.налога','F','F','10010111100102  1','87/02','0.00','',0,'','','',0,0),(64,'','62','Кураторские','F','F','11110100000102  1','26','0.00','',0,'','','',0,0),(65,'','63','Премия за повышение продуктивности труда','F','F','10110101100102 11','20','0.00','',0,'','','',0,0),(66,'','64','Компенсация за исп.л\\автомобиля','F','F','10000000000002 11','26','0.00','',0,'','','',0,0),(67,'','65','Компенсация по команд.для обл.подх.налог','F','F','10000000000002 11','','0.00','',0,'','','',0,0),(68,'','66','За бензин для нач.подоходнего налога','F','F','10000100000102  1','','0.00','',0,'','','',0,0),(69,'','67','За увеличение обьема работ','F','F','11111101100102 11','20','0.00','',0,'','','',0,0),(70,'','68','Надбавка к окладу','F','F','111111001  102 11','23','0.00','',0,'','','',0,0),(71,'','69','Повременная оплата пенсионера','F','F','11111101100102','84','0.00','',0,'','','',0,0),(72,'','70','Отпускные пенсионера','F','F','11111101100102','84','0.00','',0,'','','',0,0),(73,'','71','Доплата за обучение','F','F','11111101100102  1','20','0.00','',0,'','','',0,0),(74,'','72','Доплата до минимума','F','F','11111101100102 11','20','0.00','',0,'','','',0,0),(75,'','001','Повременная оплата','T','T','11111101100102 11','23','0.00','',0,'','','',0,0);
/*!40000 ALTER TABLE `vina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viud`
--

DROP TABLE IF EXISTS `viud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viud` (
  `id` int(11) NOT NULL auto_increment,
  `Vud` char(3) collate utf8_unicode_ci NOT NULL,
  `Flr` char(1) collate utf8_unicode_ci NOT NULL,
  `Nud` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Pna` varchar(17) collate utf8_unicode_ci NOT NULL,
  `Ukr` char(1) collate utf8_unicode_ci NOT NULL,
  `Spz` varchar(8) collate utf8_unicode_ci NOT NULL,
  `Pro` decimal(6,2) NOT NULL,
  `Name` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Num1` int(3) NOT NULL,
  `Object` varchar(19) collate utf8_unicode_ci NOT NULL,
  `Kau` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Zakname` varchar(27) collate utf8_unicode_ci NOT NULL,
  `Sprnum` int(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viud`
--

LOCK TABLES `viud` WRITE;
/*!40000 ALTER TABLE `viud` DISABLE KEYS */;
INSERT INTO `viud` VALUES (1,'165','F','Исполнительный лист','00000000000002','T','76','20.00','',0,'','','',0),(2,'166','F','Соц.вр.нетруд.0.5% после 20 января','00000000000002','F','65/40','0.00','',0,'','','',0),(3,'167','F','Налог с дох.физ.лиц с уч.изм.вр.нетр.','00000000000002','F','64/13','0.00','',0,'','','',0),(4,'168','F','Исполнительный лист','00000000000002','F','76','0.00','',0,'','','',0),(5,'170','F','Соц.вр.нетруд.1% до 20 января','00000000000002','F','65/40','0.00','',0,'','','',0),(6,'171','F','Выплачено из кассы','00000000000002','F','50','0.00','',0,'','','',0),(7,'172','T','Невыплаченные копейки','00000000000002','T','7003','0.00','',0,'','','',0),(8,'177','F','Квартплата','00000000000002','F','7603','0.00','',0,'','','',0),(9,'178','F','Прокат телевизора','00000000000002','F','7603','0.00','',0,'','','',0),(10,'180','T','Аванс','00000000000002','T','31/10','0.00','',0,'','','',0),(11,'182','T','Налог с доходов физ.лиц','00000000000002','T','6413','0.00','',0,'','','',0),(12,'183','T','Подоходный налог совместителей','00000000000002','T','6413','0.00','',0,'','','',0),(13,'184','T','Подоходн.налог за пред.\\будущ.периоды','00000000000002','T','6413','0.00','',0,'','','',0),(14,'185','F','Мат.помощь превыш.12 необл.минимумов','00000000000002','F','87/02','0.00','',0,'','','',0),(15,'186','F','Под.налог за отр.время до средины месяца','00000000000002','F','6801','0.00','',0,'','','',0),(16,'190','F','Сберкасса','00000000000002','F','7603','0.00','',0,'','','',0),(17,'197','T','Пенсионный фонд (1%)','00000000000002','T','6510','1.00','',0,'','','',0),(18,'198','T','Профсоюзные взносы (1%)','00000000000002','T','7606','1.00','',0,'','','',0),(19,'199','F','1%-пенсион.фонда с проезд.билетов','00000000000002','F','69/03','0.00','',0,'','','',0),(20,'204','T','Долг по зарплате','00000000000002','T','70/01','0.00','',0,'','','',0),(21,'272','F','Кредит','00000000000002','F','73','0.00','',0,'','','',0),(22,'280','F','Подотчетные','00000000000002','F','71','0.00','',0,'','','',0),(23,'282','F','Ссуда','00000000000002','F','377','0.00','',0,'','','',0),(24,'283','F','Удержание штрафа','00000000000002','F','76','0.00','',0,'','','',0),(25,'284','F','Автоуслуги','00000000000002','F','46','0.00','',0,'','','',0),(26,'285','F','За не сданный инструм.и спецодежду','00000000000002','F','46','0.00','',0,'','','',0),(27,'286','F','Больничные','00000000000002','F','6610','0.00','',0,'','','',0),(28,'287','T','Долг по алиментам','00000000000002','F','76','0.00','',0,'','','',0),(29,'288','F','Долг по зарплате','00000000000002','F','66/10','0.00','',0,'','','',0),(30,'289','F','Депоненты','00000000000002','F','7001','0.00','',0,'','','',0),(31,'290','F','П/Сбор по алиментам','00000000000002','F','76','10.00','',0,'','','',0),(32,'291','F','За уголь','00000000000002','F','45','0.00','',0,'','','',0),(33,'292','F','Н Д С','00000000000002','F','6801','0.00','',0,'','','',0),(34,'293','F','Госпошлина','00000000000002','F','7603','0.00','',0,'','','',0),(35,'294','F','Депоненты прошлых лет','00000000000002','F','68','0.00','',0,'','','',0),(36,'295','F','Полученная з/та','00000000000002','F','76','0.00','',0,'','','',0),(37,'296','F','За газ','00000000000002','F','76','0.00','',0,'','','',0),(38,'297','F','Получ.компенсация на удорожан.хлеба','00000000000002','F','50/02','0.00','',0,'','','',0),(39,'333','T','Почтовый сбор для алиментов','00000000000002','T','76','0.00','',0,'','','',0),(40,'334','F','Выплата отпускных из кассы','00000000000002','F','31/10','0.00','',0,'','','',0),(41,'335','F','Проездные билеты-справка','00000000000002','F','50/02','0.00','',0,'','','',0),(42,'336','F','1%-пенсонного фонда с мат.помощи','00000000000002','F','69/03','0.00','',0,'','','',0),(43,'337','F','Удержано за основные фонды','00000000000002','F','85','0.00','',0,'','','',0),(44,'338','F','За бензин -справка','00000000000002','F','','0.00','',0,'','','',0),(45,'339','F','Получена премия','00000000000002','F','50/02','0.00','',0,'','','',0),(46,'340','F','Аванс будущего месяца','00000000000002','F','50/02','0.00','',0,'','','',0),(47,'341','F','Справка','00000000000002','F','','0.00','',0,'','','',0),(48,'342','F','Подоходн.нал.по перерасчету','00000000000002','F','6413','0.00','',0,'','','',0),(49,'343','F','Материальная помощь','00000000000002','F','66/10','0.00','',0,'','','',0),(50,'344','F','Компенс.за неисп.отпуск получ.в кассе','00000000000002','F','66/10','0.00','',0,'','','',0),(51,'345','F','Пенсион.фонд за октябрь','00000000000002','F','65/10','0.00','',0,'','','',0),(52,'346','F','Фонд занятости за октябрь','00000000000002','F','65/30','0.00','',0,'','','',0),(53,'347','F','Фонд соц.страхования за пред.период','00000000000002','F','65','0.00','',0,'','','',0),(54,'348','F','Исполн.лист за октябрь (доплата)','00000000000002','F','76','0.00','',0,'','','',0),(55,'400','T','Фонд социального страхования','00000000000002','F','65/40','0.00','',0,'','','',0),(56,'164','T','Фонд занятости','00000000000002','T','6530','0.50','',0,'','','',0);
/*!40000 ALTER TABLE `viud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrhnika_dszak`
--

DROP TABLE IF EXISTS `vrhnika_dszak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrhnika_dszak` (
  `id` int(10) NOT NULL auto_increment,
  `Naimsokr` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Naimpoln` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Status` int(1) NOT NULL,
  `Gorod` varchar(20) collate utf8_unicode_ci NOT NULL,
  `Adres` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Rsbank` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Adrbanka` varchar(76) collate utf8_unicode_ci NOT NULL,
  `Director` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Telef` varchar(40) collate utf8_unicode_ci NOT NULL,
  `Citybank` varchar(15) collate utf8_unicode_ci NOT NULL,
  `Kodbank` varchar(9) collate utf8_unicode_ci NOT NULL,
  `Namebank` varchar(30) collate utf8_unicode_ci NOT NULL,
  `Shifra` varchar(5) collate utf8_unicode_ci NOT NULL,
  `Coc` char(2) collate utf8_unicode_ci NOT NULL,
  `Rskor` varchar(18) collate utf8_unicode_ci NOT NULL,
  `Pnom` varchar(12) collate utf8_unicode_ci NOT NULL,
  `Svid` varchar(10) collate utf8_unicode_ci NOT NULL,
  `okpo` tinytext collate utf8_unicode_ci,
  `diskont` tinytext collate utf8_unicode_ci,
  `user` int(10) default NULL,
  `sklad` decimal(3,0) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrhnika_dszak`
--

LOCK TABLES `vrhnika_dszak` WRITE;
/*!40000 ALTER TABLE `vrhnika_dszak` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrhnika_dszak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-16 16:29:34
