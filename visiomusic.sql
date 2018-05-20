/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.0.22-community-nt : Database - visiomusique
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`visiomusique` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `visiomusique`;

/*Table structure for table `label` */

DROP TABLE IF EXISTS `label`;

CREATE TABLE `label` (
  `LabelID` int(5) NOT NULL auto_increment,
  `MusiqueID` int(5) NOT NULL,
  `PictureID` int(5) NOT NULL,
  `LabelNom` varchar(100) NOT NULL,
  PRIMARY KEY  (`LabelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `label` */

insert  into `label`(`LabelID`,`MusiqueID`,`PictureID`,`LabelNom`) values (1,2,1,'calm'),(2,6,1,'calm'),(3,1,3,'lonely'),(4,8,7,'warm'),(5,3,7,'warm'),(6,4,6,'spring'),(7,5,2,'happy'),(8,7,3,'lonely');

/*Table structure for table `musique` */

DROP TABLE IF EXISTS `musique`;

CREATE TABLE `musique` (
  `MusiqueID` int(5) NOT NULL auto_increment,
  `MusiqueNom` varchar(50) NOT NULL default '',
  `MusiquePic` varchar(100) NOT NULL,
  `MusiqueAudio` varchar(100) NOT NULL,
  `BPM` int(10) NOT NULL,
  PRIMARY KEY  (`MusiqueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `musique` */

insert  into `musique`(`MusiqueID`,`MusiqueNom`,`MusiquePic`,`MusiqueAudio`,`BPM`) values (1,'Goldberg Variations','assets/images/portfolio/1.jpg','assets/audios/1.mp3',50),(2,'Ricciardo e Zoraide','assets/images/portfolio/2.jpg','assets/audios/2.mp3',40),(3,'Das Unmoglichste von Allem','assets/images/portfolio/3.jpg','assets/audios/3.mp3',70),(4,'Vivaldi','assets/images/portfolio/5.jpg','assets/audios/4.mp3',100),(5,'Shostakovich','assets/images/portfolio/7.jpg','assets/audios/5.mp3',130),(6,'Christopher Hinterhuber','assets/images/portfolio/9.jpg','assets/audios/6.mp3',40),(7,'Angele Dubeau','assets/images/portfolio/10.jpg','assets/audios/7.mp3',60),(8,'John O’Conor','assets/images/portfolio/11.jpg','assets/audios/8.mp3',70);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `PictureID` int(5) NOT NULL auto_increment,
  `PictureSRC` varchar(100) NOT NULL,
  `PictureNom` varchar(100) NOT NULL default '',
  `PicPainter` varchar(100) NOT NULL,
  PRIMARY KEY  (`PictureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`PictureID`,`PictureSRC`,`PictureNom`,`PicPainter`) values (1,'assets/images/emotionpic/calm.jpg','Portrait of Daniel-Henry Kahnweiler','\r\nPablo Picasso(1910)\r\n'),(2,'assets/images/emotionpic/happy.jpg','Lots of Kaikai and Kiki','Takashi Murakami(2017)'),(3,'assets/images/emotionpic/lonely.jpg','La Persistance de la mémoire','\r\nSalvador Dalí(1931)\r\n'),(4,'assets/images/emotionpic/power.jpg','La Grande Vague de Kanagawa','Hokusai(1830)'),(5,'assets/images/emotionpic/spring.jpg','Water Lilies','Claude Monet'),(6,'assets/images/emotionpic/sun.jpg','Les Tournesols','Vincent van Gogh (août 1888)'),(7,'assets/images/emotionpic/warm.jpg','Almond Blossom','Vincent van Gogh(1890)');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
