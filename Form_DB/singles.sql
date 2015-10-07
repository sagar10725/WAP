-- On mumstudents.org you can use the following to connect:
-- user: match-maker
-- pass: meant2B 


-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: nerdluv
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `singles`
--

DROP TABLE IF EXISTS `singles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `singles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(256) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `type1` char(1) DEFAULT NULL,
  `type2` char(1) DEFAULT NULL,
  `type3` char(1) DEFAULT NULL,
  `type4` char(1) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `singles`
--

LOCK TABLES `singles` WRITE;
/*!40000 ALTER TABLE `singles` DISABLE KEYS */;
INSERT INTO `singles` VALUES (1,'Ada Lovelace','$2y$10$DsGmA5drgJJu3HmzHq9RJekku3om9Pxk7velkzoAAUfvqaTuCoq42','F',96,'I','S','T','J','Linux',24,99),(2,'Adele Goldberg','$2y$10$EnuEuQky38y9nnAidb7Xe.YTYbFgd.dwRnRfSZ4Yi34Xy9GR51Aca','F',65,'E','N','F','J','Windows',50,70),(3,'Alan Turing','$2y$10$IttdlkvPKKlmIIJDKBz9L.LI6UuyNa24Pm4Dqn6TgnDxEAT82KIPi','M',41,'E','S','T','P','Mac OS X',31,50),(4,'Anakin Skywalker','$2y$10$SYt0L4pQK84Wygz8S6o1v.nsQ9bFLVggguMUWedSo/yDEzrqwUcC6','M',27,'I','N','T','J','Linux',15,30),(5,'Angry Video Game Nerd','$2y$10$rqKTyK8zUcIdfEXFudZgp.PJzsx2gBzs9oiKbSUEs76ZeNaLuwLUe','M',29,'I','S','T','J','Mac OS X',1,99),(6,'Anita Borg','$2y$10$/dI5QGym5o.kMO99Ljen7e74u0b4LYrNWFHlCSD1zgNg5JLglI.Py','F',54,'I','S','F','P','Windows',41,55),(7,'Barbara Liskov','$2y$10$kYfRDXyuZ1Voxk/hDmCkN.0HMhDDcRu1Pr.mYSdjelCuln9rifAvm','F',71,'E','S','F','J','Mac OS X',41,76),(8,'Bill Gates','$2y$10$a3CR91C3ySkPVX5ncAMHZ.iGGslo7VmiZ7JFKhMle62TLrNiBDDKu','M',52,'I','N','T','J','Windows',2,99),(9,'Bill Joy','$2y$10$4P47278JszqH6Pz76BNqJe149tZwSE5CQAFnOIbcWnebwqGve0cIW','M',54,'E','N','F','P','Linux',50,70),(10,'Bjarne Stroustroup','$2y$10$EU2Bpn4cCLuqtzZMA77xb.lxwjM6gYhIHXCNeC7aeXxzTlClCVtrm','M',59,'I','N','F','J','Windows',40,62),(11,'Buffy Summers','$2y$10$z3w3HuBvJPevKcR74H1Dhezmm.IVHwR/T.UvC3POBJvP/xFOqjjGq','F',27,'I','N','T','P','Windows',18,49),(12,'Charles Babbage','$2y$10$I/tqHagUwI6G4X27eo9Lhe3dC8SHOsYK5n6hGAxBPCQ2szyFgBcyq','M',79,'E','S','F','P','Linux',30,82),(13,'Dana Scully','$2y$10$CdXCeaSxYw0agqBpfgAdju.4I/6KR5gzAdR/sjykL7vW41Xm3NgSG','F',41,'I','S','T','J','Mac OS X',36,54),(14,'Deanna Troi','$2y$10$R2SR/G1lhPp3GaJstPyrQOcVPV9wMmqb8zBFh4tpsYg.KHPvAa4He','F',53,'E','N','F','J','Mac OS X',32,48),(15,'Donald Knuth','$2y$10$9fPEMlLABfpvaC8oPJqCt.QT2jXVJBgt1O7ujFCl32LH2F5Jrf/3u','M',70,'I','N','T','J','Linux',12,17),(16,'Edsger Dijkstra','$2y$10$FVufSr/gR7DmtlDcJXuzTuxVjEb.sY8DjeQr1TQOsQG0Zosl5gYeK','M',72,'I','S','T','P','Linux',16,58),(17,'Ellen Ripley','$2y$10$U9IVM/WydIdLB4b2/ewtB.NXOu0e2XPjc9nrrIMyQZ9TXSvLs9Ndy','F',35,'E','S','F','J','Linux',20,40),(18,'Frances Allen','$2y$10$hdhFbbnXxNEr9JOGWp4PbOd7DpsKqBcy8tzHKDtZQGTKbKFRVByuy','F',78,'E','S','T','P','Linux',67,78),(19,'Gordon Moore','$2y$10$xEA7BRkQx3R1JKSGZurVHuM701ing9sCL5avs6gv4vxMm/dDXAbkO','M',81,'E','N','F','P','Windows',60,99),(20,'Grace Hopper','$2y$10$EosbF3hsTSsBcJuB5hHKe.fOPWpc1V35D0qxVaRVVtg33F0apUvS2','F',87,'I','S','F','P','Windows',47,80),(21,'Jadzia Dax','$2y$10$0FbTFj2edjwHL1pbZl7tfe5EB77VnuqPSuND0QjfamC0nOZIkrKdK','F',46,'E','N','F','J','Mac OS X',18,32),(22,'James Gosling','$2y$10$VmpQdflYSuSJqOrAqFQcbOhQ.K08lKFOy0sb/LbkqTsOWC9Wa56QC','M',55,'E','S','F','J','Linux',18,40),(23,'Jeannette Wing','$2y$10$LK3.4vw1jfDH4uuWsYgzD.w5ICRkMF/U2NjV2vlxfXuq9Xw6FrzRG','F',38,'I','N','T','P','Mac OS X',45,60),(24,'Kathryn Janeway','$2y$10$5cgXCWRCVzbJeVHpyBHob.VlMEy5bxgTcEcjqzj8e4w5UyYqL28tC','F',49,'E','S','T','J','Windows',30,55),(25,'Lara Croft','$2y$10$p7AlFoAcqhorKZ9hxIhRHuIoUOuoxQV8StwObgzaXPkidTIcenF3C','F',23,'E','N','T','P','Linux',18,30),(26,'Leeloo','$2y$10$aJBuvaXLlX0DXaPO8Uvn.O3xsbkHCB3OWI46E0d5K52VbYBPNMQ8.','F',19,'I','S','T','J','Linux',1,99),(27,'Leia Organa','$2y$10$n6xo858s8jqX0MIZ9rBhIu8ceCBcFYPH7cirf4IUBfsVlFFK2hbnS','F',53,'I','S','F','J','Windows',20,60),(28,'Lenore Blum','$2y$10$F7esdoh1Du4Szd7oPyneHu3YGQbsb2GkdVMrYWVg1Zjfk3FjoYWam','F',70,'I','N','T','P','Mac OS X',66,99),(29,'Marissa Mayer','$2y$10$gZMhIt81lqE33CqAp5WYGuvEkVmPsZNUWpriwEuxFlaHbztvBAc.W','F',35,'E','N','T','P','Linux',20,40),(30,'Mary Lou Jepsen','$2y$10$kp6mlHae/hpgKRXp97pOvulGLqCVF2PL44i8c2dcCa3RTEu6N3JuG','F',45,'I','S','T','J','Windows',10,80),(31,'Ms Frizzle','$2y$10$efFLtHuQDKcKSK5iteX/3O1DnkVvOOf2KtmBCjmUUabVeuIbvyxrS','F',39,'E','N','T','P','Mac OS X',19,49),(32,'Natalie Portman','$2y$10$ZHAQu/WvScyYYBwNwZTvT.HVXSDVc3asem7ttgs9qoHq5FEk20DxW','F',26,'I','N','F','J','Mac OS X',20,39),(33,'Niklaus Wirth','$2y$10$bXfbDzAwUcKdjnhP1SNWs.MmSxINHQeP/Zq3aMMe25kaCYKxjtf9S','M',76,'E','N','F','J','Windows',50,77),(34,'Nostalgia Critic','$2y$10$JbU./az3LiiEdqeMmmSXt.wBMK6tJnSzIrumzA3kSz7xydsQ6MBN.','M',28,'E','N','T','J','Linux',12,79),(35,'Nyota Uhura','$2y$10$kaJ0Vt27njbPYtrQ6e55Te0ZS3MGkneddCAAT9Que/WWYA3amlmu2','F',77,'E','N','F','P','Mac OS X',70,99),(36,'Oldspice Guy','$2y$10$V9Z4fFGv.MTBinWrGkUnsOihM3zU8n03ngbohutZdwdPQXk4SJeZC','M',36,'E','N','T','J','Windows',1,99),(37,'Rasmus Lerdorf','$2y$10$6pcEZ.sYtK8UFnj0i/YrQek1P3R8I01jxV6edt31PxmC/0FkGyDt2','M',41,'E','N','T','P','Linux',15,35),(38,'Richard Stallman','$2y$10$M4PaXX6fqApBh9ba7F.R6emmW6.33RBW3KlDcAKpMeES7zZIrRapW','M',57,'I','S','F','J','Linux',46,56),(39,'River Tam','$2y$10$jr9ECCc5eUpgkNWX6gYVXOJs8C55ASbYN7nedwhQVeuFBw0RCJNDK','F',26,'E','N','T','J','Linux',18,25),(40,'Roberta Williams','$2y$10$XhyoWCNMR4qt.SvJ4U3wC.M5JkxAvvLxSs.bZ2IiRsDcqZcNUmQC6','F',57,'E','N','F','P','Windows',54,67),(41,'Rosie O Donnell','$2y$10$W6Ws7R2JDJSLl5/dSBgKnewbdnm2l3TfkCvuZ.ehgwgN8o/hQSv1C','F',46,'E','N','F','J','Windows',30,50),(42,'Sarah Connor','$2y$10$DvaYnLEodULT4N0cAjZzE.Gm/sQvK705XAirlnBi/RoydwvwPb/CC','F',53,'I','S','F','P','Windows',49,67),(43,'Seven of Nine','$2y$10$lfeiS5wKJA.MUoHjcrV66OO3Srck.l6DMkmMSHptg2ZLBPw/4JseC','F',40,'I','S','T','J','Windows',12,50),(44,'Stewie Griffin','$2y$10$vAdlMNadVY13uL3eBlqkO.Q6/mv.XEJvuM7WklXuS4OF5lIRcJbF2','M',1,'I','N','T','P','Mac OS X',1,59),(45,'Stuart Reges','$2y$10$FbawRv.2NYP336hjFXN6aeuS8pHJv4NdxfDChSzCWUgcpe4dDRb.O','M',48,'I','N','F','P','Mac OS X',18,35),(46,'Tpol','$2y$10$mINlJrZEReTwXoIw80sH9uagye1KMP7siah0n1Kapzx2yn7IkQy5u','F',35,'I','S','T','J','Windows',30,39),(47,'Trinity','$2y$10$i1aZPF1I52faxBhnB3h.Y.qNkjJMyu.PEUiMKQI/sCKy1FjHRIojO','F',42,'E','S','F','P','Linux',35,55),(48,'Tyler Durden','$2y$10$UeOiT7YoZKHCr15FOgx4/e4HBzcesHXRnBpuu11cswmPv45aLHEby','M',46,'E','N','F','P','Mac OS X',20,39),(49,'Valentina Tereshkova','$2y$10$w1qrSSJ4.kv7mbXHN83STOqt4YT.a6Z8lioFSaK4b1IXgUx9DUCEC','F',71,'E','N','T','J','Mac OS X',55,65),(50,'Vint Cerf','$2y$10$5iPKsC3eQarmJmqQfygvvutAJqU3zWdUjA3WAo37Wp/ya1S880Afy','M',67,'I','S','F','P','Mac OS X',28,55),(51,'Yukihiro Matsumoto','$2y$10$37h8g9UlNmgYvIzIPCt8/uH4nbD2.7fz1GRykBfdj4LPSg/VCH.Bu','M',45,'E','N','T','P','Mac OS X',10,25),(52,'Zelda','$2y$10$.MRbs1pxIu/u1aUj5GwQlOeRajH8UG5JRcjFT88iWg5wMmxxc0x7a','F',59,'E','S','T','P','Windows',40,62);
/*!40000 ALTER TABLE `singles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-06 10:19:34
