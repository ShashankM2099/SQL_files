-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: fall2018dbramaprasad.cbws47nyw68y.us-east-1.rds.amazonaws.com    Database: MovieRentalStore-Fall2018-Increment2
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `Actor`
--
DROP DATABASE IF EXISTS movierental;
CREATE DATABASE IF NOT EXISTS movierental;
USE movierental;

DROP TABLE IF EXISTS `Actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Actor` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Actor`
--

LOCK TABLES `Actor` WRITE;
/*!40000 ALTER TABLE `Actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `membership_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `middle_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `addr_line_1` varchar(100) DEFAULT NULL,
  `addr_line_2` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zip_code` char(5) DEFAULT NULL,
  `cc_name` varchar(80) DEFAULT NULL,
  `cc_num` varchar(25) DEFAULT NULL,
  `cc_expiry` date DEFAULT NULL,
  `cc_cvv` char(4) DEFAULT NULL,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Gregory','M','House','1061 E Main St','Apt 1','Roxboro','North Carolina ','32321',NULL,'1234567890191837','2019-01-31','830'),(2,'James',NULL,'Wilson','2345 Park Ave',NULL,'Roxboro','North Carolina ','32465',NULL,'3726482748274827','2018-10-31','123'),(3,'Lisa',NULL,'Cuddy','10 Downing Rd',NULL,'Roxboro','North Carolina ','32847',NULL,'6574868614361892','2020-10-31','420'),(4,'Allison',NULL,'Cameron','43 N Sadie Ln',NULL,'Roxboro','North Carolina ','32986',NULL,'8372783829184728','2019-03-31','800'),(5,'Eric','R','Foreman','89 Ridge Rd',NULL,'Roxboro','North Carolina ','32321',NULL,'6767416716371631','2019-05-31','451'),(6,'Robert',NULL,'Chase','91 Conifer Dr',NULL,'Roxboro','North Carolina ','32986',NULL,'7489749749274917','2018-11-09','351'),(7,'James',NULL,'Wilson','103 River Rd','Apt 7','Roxboro','North Carolina','35263',NULL,'6657273910384762','2018-11-30','461');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Director`
--

DROP TABLE IF EXISTS `Director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Director` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Director`
--

LOCK TABLES `Director` WRITE;
/*!40000 ALTER TABLE `Director` DISABLE KEYS */;
INSERT INTO `Director` VALUES (1,'Christopher',' Nolan'),(2,'Peter',' Jackson'),(3,'Todd',' Phillips'),(4,'James',' Wan'),(5,'Andy',' Wachowski'),(6,'Lana',' Wachowski'),(7,'Mary',' Harron'),(8,'Ridley',' Scott'),(9,'Guy',' Ritchie'),(10,'Paul',' Feig'),(11,'Stuart',' Rosenberg'),(12,'Andrew',' Douglas'),(13,'David',' O. Russell'),(14,'Joe',' Johnston'),(15,'Anthony',' Russo'),(16,'Joe',' Russo');
/*!40000 ALTER TABLE `Director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Genre`
--

DROP TABLE IF EXISTS `Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre`
--

LOCK TABLES `Genre` WRITE;
/*!40000 ALTER TABLE `Genre` DISABLE KEYS */;
INSERT INTO `Genre` VALUES (1,'Science Fiction'),(2,'Thriller'),(3,'Fantasy'),(4,'Comedy'),(5,'Horror'),(6,'Action'),(7,'Drama'),(8,'Mystery'),(9,'Crime'),(10,'Adventure'),(11,'Romance');
/*!40000 ALTER TABLE `Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InventoryManager`
--

DROP TABLE IF EXISTS `InventoryManager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InventoryManager` (
  `username` varchar(100) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InventoryManager`
--

LOCK TABLES `InventoryManager` WRITE;
/*!40000 ALTER TABLE `InventoryManager` DISABLE KEYS */;
/*!40000 ALTER TABLE `InventoryManager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movie` (
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL,
  `year` year(4) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `synopsis` text,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'Inception',2010,NULL,'A thief who steals corporate secrets through use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.'),(2,'Lord of the rings: fellowship of the ring',2001,NULL,'A meek hobbit of the Shire and eight companions set out on a journey to Mount Doom to destroy the One Ring and the dark lord Sauron.'),(3,'The Hangover',2009,NULL,'Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.'),(4,'Saw',2004,NULL,'With a dead body lying between them, two men wake up in the secure lair of a serial killer who\'s been nicknamed \"Jigsaw\". The men must follow various rules and objectives if they wish to survive and win the deadly game set for them.'),(5,'The Matrix',1999,NULL,'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.'),(6,'The Prestige',2006,NULL,'The rivalry between two magicians becomes more exacerbated by their attempt to perform the ultimate illusion.'),(7,'American Psycho',2000,NULL,'A wealthy New York investment banking executive hides his alternate psychopathic ego from his co-workers and friends as he escalates deeper into his illogical, gratuitous fantasies.'),(8,'Gladiator',2000,NULL,'When a Roman general is betrayed and his family murdered by an emperor\'s corrupt son, he comes to Rome as a gladiator to seek revenge.'),(9,'Snatch',2000,NULL,'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers, and supposedly Jewish jewelers fight to track down a priceless stolen diamond.'),(10,'The Matrix Reloaded',2003,NULL,'Neo and the rebel leaders estimate that they have 72 hours until 250,000 probes discover Zion and destroy it and its inhabitants. During this, Neo must decide how he can save Trinity from a dark fate in his dreams.'),(11,'The Matrix Revolutions',2003,NULL,'The human city of Zion defends itself against the massive invasion of the machines as Neo fights to end the war at another front while also opposing the rogue Agent Smith.'),(12,'Bridesmaids',2011,NULL,'Competition between the maid of honor and a bridesmaid, over who is the bride\'s best friend, threatens to upend the life of an out-of-work pastry chef.'),(13,'The Amityville Horror',1979,NULL,'Newlyweds move into a house where a murder was committed, and experience strange manifestations which drive them away.'),(14,'The Amityville Horror',2005,NULL,'A family is terrorized by demonic forces after moving into a home that was the site of a grisly mass-murder.'),(15,'Memento',2000,NULL,'A man, suffering from short-term memory loss, uses notes and tattoos to hunt for the man he thinks killed his wife.'),(16,'American Hustle',2013,NULL,'A con man, Irving Rosenfeld, along with his seductive partner Sydney Prosser, is forced to work for a wild FBI agent, Richie DiMaso, who pushes them into a world of Jersey powerbrokers and mafia.'),(17,'Captain America: The First Avenger',2011,NULL,'After being deemed unfit for military service, Steve Rogers volunteers for a top secret research project that turns him into Captain America, a superhero dedicated to defending USA ideals.'),(18,'Captain America: The Winter Soldier',2014,NULL,'Steve Rogers struggles to embrace his role in the modern world and battles a new threat from old history: the Soviet agent known as the Winter Soldier.');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MovieActor`
--

DROP TABLE IF EXISTS `MovieActor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MovieActor` (
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `actor_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `movie_actor_fk_actor_id` (`actor_id`),
  CONSTRAINT `movie_actor_fk_actor_id` FOREIGN KEY (`actor_id`) REFERENCES `Actor` (`actor_id`),
  CONSTRAINT `movieactor_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `Movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MovieActor`
--

LOCK TABLES `MovieActor` WRITE;
/*!40000 ALTER TABLE `MovieActor` DISABLE KEYS */;
/*!40000 ALTER TABLE `MovieActor` ENABLE KEYS */;

UNLOCK TABLES;

--
-- Table structure for table `MovieDirector`
--

DROP TABLE IF EXISTS `MovieDirector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MovieDirector` (
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `director_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`director_id`),
  KEY `movie_director_fk_director_id` (`director_id`),
  CONSTRAINT `movie_director_fk_director_id` FOREIGN KEY (`director_id`) REFERENCES `Director` (`director_id`),
  CONSTRAINT `moviedirector_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `Movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MovieDirector`
--

LOCK TABLES `MovieDirector` WRITE;
/*!40000 ALTER TABLE `MovieDirector` DISABLE KEYS */;
INSERT INTO `MovieDirector` VALUES (1,1),(6,1),(15,1),(2,2),(3,3),(4,4),(5,5),(10,5),(11,5),(5,6),(10,6),(11,6),(7,7),(8,8),(9,9),(12,10),(13,11),(14,12),(16,13),(17,14),(18,15),(18,16);
/*!40000 ALTER TABLE `MovieDirector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MovieGenre`
--

DROP TABLE IF EXISTS `MovieGenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MovieGenre` (
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre_id`),
  KEY `movie_genre_fk_genre_id` (`genre_id`),
  CONSTRAINT `movie_genre_fk_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `Genre` (`genre_id`),
  CONSTRAINT `moviegenre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `Movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MovieGenre`
--

LOCK TABLES `MovieGenre` WRITE;
/*!40000 ALTER TABLE `MovieGenre` DISABLE KEYS */;
INSERT INTO `MovieGenre` VALUES (1,1),(5,1),(10,1),(11,1),(17,1),(18,1),(1,2),(6,2),(15,2),(2,3),(3,4),(9,4),(12,4),(4,5),(13,5),(14,5),(5,6),(8,6),(10,6),(11,6),(17,6),(18,6),(6,7),(7,7),(8,7),(13,7),(14,7),(16,7),(6,8),(14,8),(15,8),(7,9),(9,9),(16,9),(11,10),(17,10),(18,10),(12,11);
/*!40000 ALTER TABLE `MovieGenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rental`
--

DROP TABLE IF EXISTS `Rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rental` (
  `membership_id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `check_out_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `check_in_date` date DEFAULT NULL,
  PRIMARY KEY (`membership_id`,`video_id`,`check_out_date`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `Rental_ibfk_1` FOREIGN KEY (`membership_id`) REFERENCES `Customer` (`membership_id`),
  CONSTRAINT `Rental_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `Video` (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rental`
--

LOCK TABLES `Rental` WRITE;
/*!40000 ALTER TABLE `Rental` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rental` ENABLE KEYS */;
INSERT INTO `Rental` (`membership_id`, `video_id`, `check_out_date`, `due_date`, 
`check_in_date`) VALUES
(2, 14, '2017-09-01', '2017-09-05', '2017-09-04'),
(3, 14, '2017-10-31', '2017-11-04', NULL),
(3, 19, '2017-10-31', '2017-11-04', NULL),
(4, 3, '2017-09-15', '2017-09-20', '2017-09-24'),
(4, 20, '2017-11-06', '2017-11-10', NULL),
(6, 1, '2017-10-02', '2017-10-06', NULL),
(6, 3, '2017-10-02', '2017-10-06', NULL),
(6, 9, '2017-11-06', '2017-11-10', NULL);

UNLOCK TABLES;

--
-- Table structure for table `Video`
--

DROP TABLE IF EXISTS `Video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Video` (
  `video_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `format` enum('DVD','Blu_Ray') DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `availability` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `Video_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `Movie` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Video`
--

LOCK TABLES `Video` WRITE;
/*!40000 ALTER TABLE `Video` DISABLE KEYS */;
INSERT INTO `Video` VALUES (1,1,'DVD',14.99,1),(2,1,'Blu_Ray',19.99,1),(3,2,'DVD',9.99,1),(4,3,'DVD',4.99,1),(5,3,'Blu_Ray',6.99,1),(6,4,'DVD',7.99,1),(7,5,'DVD',8.99,1),(8,6,'Blu_Ray',12.99,1),(9,8,'Blu_Ray',12.99,1),(10,10,'DVD',12.99,1),(11,12,'DVD',9.99,1),(12,13,'DVD',12.99,1),(13,13,'Blu_Ray',14.99,1),(14,14,'DVD',5.99,1),(15,15,'Blu_Ray',14.99,1),(16,17,'DVD',13.99,1),(17,18,'DVD',14.99,1),(18,18,'Blu_Ray',19.99,1),(19,3,'DVD',4.99,1);
/*!40000 ALTER TABLE `Video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-08 21:32:03
