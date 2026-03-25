-- MySQL dump 10.13  Distrib 8.0.45, for macos15 (arm64)
--
-- Host: localhost    Database: music_app
-- ------------------------------------------------------
-- Server version	9.6.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '9827e62a-126b-11f1-bce0-a653af753ac2:1-142';

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `release_year` int DEFAULT NULL,
  `cover_url` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'The New Abnormal','The Strokes','Indie Rock',2020,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f8/The_Strokes_-_The_New_Abnormal.png/250px-The_Strokes_-_The_New_Abnormal.png',1),(2,'Blonde','Frank Ocean','R&B',2016,'https://upload.wikimedia.org/wikipedia/en/thumb/a/a0/Blonde_-_Frank_Ocean.jpeg/250px-Blonde_-_Frank_Ocean.jpeg',1),(3,'Dirt','Alice in Chains','Grunge',1992,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f9/Dirt_%28Alice_in_Chains_album_-_cover_art%29.jpg/250px-Dirt_%28Alice_in_Chains_album_-_cover_art%29.jpg',1),(4,'In Rainbows','Radiohead','Alt-Rock',2007,'https://upload.wikimedia.org/wikipedia/en/thumb/1/14/Inrainbowscover.png/250px-Inrainbowscover.png',1),(6,'Mayhem','Lady Gaga','Pop',2025,'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Lady_Gaga_-_Mayhem.png/250px-Lady_Gaga_-_Mayhem.png',0),(7,'Midnights','Taylor Swift','Pop',2022,'https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Midnights_-_Taylor_Swift.png/250px-Midnights_-_Taylor_Swift.png',0),(8,'Scorpion','Drake','Rap',2018,'https://upload.wikimedia.org/wikipedia/en/thumb/9/90/Scorpion_by_Drake.jpg/250px-Scorpion_by_Drake.jpg',0),(9,'Random Access Memories','Daft Punk','Dance',2013,'https://upload.wikimedia.org/wikipedia/en/2/26/Daft_Punk_-_Random_Access_Memories.png',1),(10,'Bad','Michael Jackson','Pop',1987,'https://upload.wikimedia.org/wikipedia/en/5/51/Michael_Jackson_-_Bad.png',0),(11,'DECIDE','Djo','Alternative',2022,'https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Decide_Djo.png/250px-Decide_Djo.png',0),(12,'Radical Optimism','Dua Lipa','Pop',2024,'https://upload.wikimedia.org/wikipedia/en/thumb/f/fa/Dua_Lipa_-_Radical_Optimism.png/250px-Dua_Lipa_-_Radical_Optimism.png',0),(13,'BRAT','Charli XCX','Pop',2024,'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Charli_XCX_-_Brat_%28album_cover%29.png/250px-Charli_XCX_-_Brat_%28album_cover%29.png',1),(14,'Lights','Ellie Goulding','Pop',2010,'https://upload.wikimedia.org/wikipedia/en/b/b9/Ellie_Goulding_-_Lights_%28album%29.png',0),(15,'AM','Arctic Monkeys','Indie Rock',2013,'https://upload.wikimedia.org/wikipedia/en/thumb/0/04/Arctic_Monkeys_-_AM.png/250px-Arctic_Monkeys_-_AM.png',0),(16,'Currents','Tame Impala','Indie Rock',2015,'https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Tame_Impala_-_Currents.png/250px-Tame_Impala_-_Currents.png',0),(17,'DAMN.','Kendrick Lamar','Hip-Hop',2017,'https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Kendrick_Lamar_-_Damn.png/250px-Kendrick_Lamar_-_Damn.png',0),(18,'Graduation','Kanye West','Hip-Hop',2007,'https://upload.wikimedia.org/wikipedia/en/thumb/7/70/Graduation_%28album%29.jpg/250px-Graduation_%28album%29.jpg',0),(19,'After Hours','The Weeknd','R&B',2020,'https://upload.wikimedia.org/wikipedia/en/thumb/c/c1/The_Weeknd_-_After_Hours.png/250px-The_Weeknd_-_After_Hours.png',0),(20,'Fine Line','Harry Styles','Pop',2019,'https://upload.wikimedia.org/wikipedia/en/thumb/b/b1/Harry_Styles_-_Fine_Line.png/250px-Harry_Styles_-_Fine_Line.png',0),(21,'Back to Black','Amy Winehouse','Soul',2006,'https://upload.wikimedia.org/wikipedia/en/6/67/Amy_Winehouse_-_Back_to_Black_%28album%29.png',0),(22,'To Pimp a Butterfly','Kendrick Lamar','Hip-Hop',2015,'https://upload.wikimedia.org/wikipedia/en/f/f6/Kendrick_Lamar_-_To_Pimp_a_Butterfly.png',0),(23,'Abbey Road','The Beatles','Rock',1969,'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/The_Beatles_Abbey_Road_album_cover.jpg/500px-The_Beatles_Abbey_Road_album_cover.jpg',0),(24,'Nevermind','Nirvana','Grunge',1991,'https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/NirvanaNevermindalbumcover.jpg/250px-NirvanaNevermindalbumcover.jpg',0),(25,'The Dark Side of the Moon','Pink Floyd','Progressive Rock',1973,'https://upload.wikimedia.org/wikipedia/en/thumb/3/3b/Dark_Side_of_the_Moon.png/250px-Dark_Side_of_the_Moon.png',0),(26,'Ctrl','SZA','R&B',2017,'https://upload.wikimedia.org/wikipedia/en/thumb/b/bf/SZA_-_Ctrl_cover.png/250px-SZA_-_Ctrl_cover.png',0),(27,'Astroworld','Travis Scott','Hip-Hop',2018,'https://upload.wikimedia.org/wikipedia/en/4/4b/Travis_Scott_-_Astroworld.png',0),(28,'Future Nostalgia','Dua Lipa','Pop',2020,'https://upload.wikimedia.org/wikipedia/en/thumb/f/f5/Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png/250px-Dua_Lipa_-_Future_Nostalgia_%28Official_Album_Cover%29.png',0),(29,'IGOR','Tyler, The Creator','Hip-Hop',2019,'https://upload.wikimedia.org/wikipedia/en/5/51/Igor_-_Tyler%2C_the_Creator.jpg',0),(30,'Channel Orange','Frank Ocean','R&B',2012,'https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Channel_ORANGE.jpg/250px-Channel_ORANGE.jpg',0),(31,'Good Kid, M.A.A.D City','Kendrick Lamar','Hip-Hop',2012,'https://upload.wikimedia.org/wikipedia/en/9/93/KendrickGKMC.jpg',0);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `published_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Frank Ocean Rumored to Be Working on New Music','Fans are speculating that Frank Ocean is finally preparing to release new material after years of silence.','https://hips.hearstapps.com/hmg-prod/images/frank-ocean-gettyimages-1147433944.jpg?crop=1xw:1.0xh;center,top&resize=640:*',1,'2026-03-25 10:13:56','https://www.billboard.com/music/music-news/frank-ocean-teases-back-in-studio-1235743183/'),(2,'Charli XCX Announces BRAT Deluxe Edition','Charli XCX hints at an extended version of BRAT with new tracks and collaborations dropping soon.','https://upload.wikimedia.org/wikipedia/commons/d/dc/Brat-remix-cover-art.png',1,'2026-03-25 10:13:56','https://uproxx.com/pop/charli-xcx-brat-album-deluxe-version-three-more-songs/'),(3,'Radiohead Fans Spot Studio Activity','Rumors are swirling as Radiohead members are seen entering a studio together for the first time in years.','https://img.apmcdn.org/fe09fe0995b6bd1c925c24a6f95ba700e4d8e11e/uncropped/a2bfaa-20130114-radiohead.jpg',0,'2026-03-25 10:13:56',NULL),(4,'The Rise of Album Listening Clubs','Across major cities, fans are gathering weekly to listen to full albums together in a shared experience.','https://img.freepik.com/premium-photo/people-office-listening-music-work_99043-2210.jpg',1,'2026-03-25 10:13:56','https://www.redbull.com/us-en/theredbulletin/blood-orange-essex-honey-listening-party-nyc'),(5,'Why Concept Albums Are Making a Comeback','Artists are increasingly returning to storytelling formats, bringing concept albums back into the spotlight.','https://townsquare.media/site/295/files/2019/07/Rocks-Willdest-Concept-Albums1.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89',0,'2026-03-25 10:13:56',NULL);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `album_id` bigint NOT NULL,
  `rating` int NOT NULL,
  `review_text` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,1,4,'Amazing album, truly The Strokes back in form.','2026-03-18 13:09:05'),(2,2,4,4,'I cried, I sang, I laughed, what more could you ask for?','2026-03-18 13:09:05'),(3,1,7,2,'Just not my thing. Honestly, who was this made for?','2026-03-18 13:09:05'),(4,2,6,5,'The modern RENAISSANCE of Lady Gaga and Pop as a whole. Truly a must listen.','2026-03-18 13:26:35'),(5,2,1,4,'One of my favourites. I wish I could hear it for the first time again...','2026-03-18 13:35:34'),(6,3,1,2,'I usually prefer stuff on the heavier side, but this is actually not terrible.','2026-03-18 13:37:15'),(7,2,14,2,'IDK, I like that one song I guess.','2026-03-18 13:51:48'),(8,6,2,5,'One of my favourite albums ever! So introspective, yet so relatable. We need you back Frank!','2026-03-23 15:00:32'),(9,7,3,5,'YEAAAAAA SICKMAN SICKMANNNNN','2026-03-23 15:01:45'),(10,7,4,1,'Honestly, I hated every second of this album. This is NewGuyTester... OUT ','2026-03-23 15:02:30'),(11,2,3,3,'It\'s good, but REALLY not my kinda thing. Not nearly as excited about it as the other guy...','2026-03-23 15:05:55'),(12,6,9,5,'Awe inspiring! You can catch me dancing to this album every Wednesday for \"One More Time: A Tribute to Daft Punk\", at Big Bad John\'s!','2026-03-23 15:11:25'),(13,4,1,5,'Sharp songwriting, cool production, and no wasted moments.','2026-03-23 15:25:57'),(14,5,1,4,'A really confident comeback album with a great atmosphere.','2026-03-23 15:25:57'),(15,6,1,3,'Good record overall, though a few tracks do blend together for me.','2026-03-23 15:25:57'),(16,7,1,5,'This album sounds effortless in the best possible way.','2026-03-23 15:25:57'),(17,8,1,4,'Stylish, catchy, and very replayable from start to finish.','2026-03-23 15:25:57'),(18,1,2,5,'Beautiful, intimate, and somehow different every time I hear it.','2026-03-23 15:25:57'),(19,2,2,4,'Super emotional album with amazing writing and mood.','2026-03-23 15:25:57'),(20,3,2,5,'It feels loose and precise at the same time. Incredible work.','2026-03-23 15:25:57'),(21,4,2,4,'A lot of subtle moments here that really reward repeat listens.','2026-03-23 15:25:57'),(22,5,2,5,'One of those albums that hits even harder late at night.','2026-03-23 15:25:57'),(23,1,3,5,'Heavy, bleak, and ridiculously powerful. This one never gets old.','2026-03-23 15:25:57'),(24,3,3,4,'Dark album, but the hooks and riffs are still unforgettable.','2026-03-23 15:25:57'),(25,4,3,5,'Absolutely massive sound. Feels raw without being messy.','2026-03-23 15:25:57'),(26,5,3,4,'Not always an easy listen, but definitely a great one.','2026-03-23 15:25:57'),(27,6,3,5,'Every track sounds huge. One of the best grunge records ever.','2026-03-23 15:25:57'),(28,1,4,5,'Warm, detailed, and somehow both relaxed and intense.','2026-03-23 15:25:57'),(29,3,4,5,'Incredible sequencing and a crazy high level of consistency.','2026-03-23 15:25:57'),(30,4,4,4,'Really smooth listen with some of their prettiest songs.','2026-03-23 15:25:57'),(31,5,4,5,'It feels intimate but still ambitious. Amazing album.','2026-03-23 15:25:57'),(32,6,4,4,'This one just gets better the more time you spend with it.','2026-03-23 15:25:57'),(33,1,6,4,'Big pop swings and a lot of attitude. Very fun record.','2026-03-23 15:25:57'),(34,3,6,5,'Really stylish and dramatic in a way that totally works for me.','2026-03-23 15:25:57'),(35,4,6,4,'A few tracks are absolute standouts and the whole thing moves well.','2026-03-23 15:25:57'),(36,5,6,3,'Some songs hit harder than others, but the highs are strong.','2026-03-23 15:25:57'),(37,6,6,4,'Confident, theatrical, and easy to come back to.','2026-03-23 15:25:57'),(38,2,7,4,'Very polished and easy to throw on at any time.','2026-03-23 15:25:57'),(39,3,7,3,'I like the vibe more than I love every song, but it is solid.','2026-03-23 15:25:57'),(40,4,7,4,'Cool production choices and a really cohesive late-night feel.','2026-03-23 15:25:57'),(41,5,7,5,'This one grew on me a lot. The atmosphere is excellent.','2026-03-23 15:25:57'),(42,6,7,3,'Not my favorite from her, but definitely has some strong moments.','2026-03-23 15:25:57'),(43,1,8,3,'Long album, but there are still plenty of good tracks here.','2026-03-23 15:25:57'),(44,2,8,4,'A mixed bag in places, but the best songs are really strong.','2026-03-23 15:25:57'),(45,3,8,2,'There is some filler, though I still enjoy a few cuts a lot.','2026-03-23 15:25:57'),(46,4,8,4,'More consistent than people give it credit for.','2026-03-23 15:25:57'),(47,5,8,5,'LOVE IT LOVE IT LOVE IT! I AM THE #1 DRAKE FAN.','2026-03-23 15:25:57'),(48,1,9,5,'So polished and immersive. Every detail feels intentional.','2026-03-23 15:25:57'),(49,2,9,5,'Huge sound, great grooves, and insanely smooth production.','2026-03-23 15:25:57'),(50,3,9,4,'Very classy album. It feels expensive in the best way.','2026-03-23 15:25:57'),(51,4,9,5,'This album is pure craft. Hard not to admire it.','2026-03-23 15:25:57'),(52,5,9,4,'Maybe a little long for me, but the highlights are fantastic.','2026-03-23 15:25:57'),(53,1,10,5,'Packed with hits and still sounds sharp all these years later.','2026-03-23 15:25:57'),(54,2,10,4,'Very strong pop album with a lot of energy throughout.','2026-03-23 15:25:57'),(55,3,10,5,'Classic for a reason. So many huge songs on one record.','2026-03-23 15:25:57'),(56,4,10,4,'A lot of charisma and really memorable production choices.','2026-03-23 15:25:57'),(57,5,10,5,'This album just does not miss very often.','2026-03-23 15:25:57'),(58,1,11,4,'Weird, catchy, and way more addictive than I expected.','2026-03-23 15:25:57'),(59,2,11,5,'Such a fun record. Offbeat but still full of hooks.','2026-03-23 15:25:57'),(60,3,11,3,'Some tracks work better for me than others, but it is interesting.','2026-03-23 15:25:57'),(61,4,11,4,'A cool mix of playful and emotional moments.','2026-03-23 15:25:57'),(62,5,11,5,'Really creative sound and a lot of personality on this one.','2026-03-23 15:25:57'),(63,1,12,4,'Bright, clean pop songs that are easy to revisit.','2026-03-23 15:25:57'),(64,2,12,3,'Enjoyable record, even if it does not fully stick the landing for me.','2026-03-23 15:25:57'),(65,3,12,4,'Very smooth and summery. Good mood album.','2026-03-23 15:25:57'),(66,4,12,5,'The production is super crisp and the melodies really land.','2026-03-23 15:25:57'),(67,5,12,3,'Nice listen overall, though I wanted a little more risk.','2026-03-23 15:25:57'),(68,1,13,5,'Loud, direct, and ridiculously fun. This one really commits.','2026-03-23 15:25:57'),(69,2,13,4,'A ton of attitude and some huge standout moments.','2026-03-23 15:25:57'),(70,3,13,5,'Very bold sound, and it totally works for me.','2026-03-23 15:25:57'),(71,4,13,4,'Messy in a way that feels exciting instead of sloppy.','2026-03-23 15:25:57'),(72,5,13,5,'One of the most personality-packed pop albums in a while.','2026-03-23 15:25:57'),(73,1,14,4,'Really nostalgic for me, but still genuinely strong pop.','2026-03-23 15:25:57'),(74,3,14,3,'A few songs feel dated, though the best ones still shine.','2026-03-23 15:25:57'),(75,4,14,4,'Very catchy and bright without feeling too lightweight.','2026-03-23 15:25:57'),(76,5,14,5,'This album has such a nice dreamy pop sound to it.','2026-03-23 15:25:57'),(77,6,14,4,'Easy to listen to and full of solid melodies.','2026-03-23 15:25:57'),(78,8,2,5,'OMG I LOVE THIS!','2026-03-23 16:03:19'),(79,8,3,4,'Gosh this bangs.','2026-03-23 16:03:19'),(80,8,4,5,'Could listen to this all day everyday','2026-03-23 16:03:19'),(81,6,1,3,'meh','2026-03-24 15:23:37'),(82,11,9,4,'It\'s pretty fire, it\'s pretty good, that one song with Julian whatever the heck his name is - is soooooooo gooood.','2026-03-25 10:25:29'),(83,1,15,5,'Absolutely loved this album. Great energy from start to finish.','2026-03-25 13:51:27'),(84,3,15,4,'Really solid project with some standout tracks.','2026-03-25 13:51:27'),(85,6,15,4,'Nice production and a lot of replay value here.','2026-03-25 13:51:27'),(86,2,16,5,'One of the strongest albums I have heard in a while.','2026-03-25 13:51:27'),(87,5,16,4,'Very polished and easy to listen to all the way through.','2026-03-25 13:51:27'),(88,7,16,3,'Not bad at all, just did not fully connect with every song.','2026-03-25 13:51:27'),(89,8,16,4,'A few tracks really carried this one for me.','2026-03-25 13:51:27'),(90,1,17,4,'Really enjoyable album with a cool overall vibe.','2026-03-25 13:51:27'),(91,4,17,5,'This one surprised me in the best way possible.','2026-03-25 13:51:27'),(92,6,17,3,'Some good moments, but a couple songs felt forgettable.','2026-03-25 13:51:27'),(93,2,18,5,'Super immersive album. I was hooked the whole time.','2026-03-25 13:51:27'),(94,3,18,4,'Very good record with a lot of personality.','2026-03-25 13:51:27'),(95,7,18,4,'Great atmosphere and some really memorable tracks.','2026-03-25 13:51:27'),(96,8,18,3,'Solid album, though it dragged a little in the middle.','2026-03-25 13:51:27'),(97,1,19,4,'A really clean and consistent listen.','2026-03-25 13:51:27'),(98,5,19,5,'Loved the songwriting on this one.','2026-03-25 13:51:27'),(99,6,19,4,'Strong album overall with very few weak points.','2026-03-25 13:51:27'),(100,2,20,3,'It was decent, but I do not think I will come back to it much.','2026-03-25 13:51:27'),(101,4,20,4,'There are some really strong songs here.','2026-03-25 13:51:27'),(102,7,20,5,'Amazing album. Easily one of my favourites lately.','2026-03-25 13:51:27'),(103,8,20,4,'Very cohesive and well put together.','2026-03-25 13:51:27'),(104,1,21,5,'Fantastic from the first track to the last.','2026-03-25 13:51:27'),(105,3,21,4,'Really well produced and full of great ideas.','2026-03-25 13:51:27'),(106,5,21,3,'Had some good songs, but not every track landed for me.','2026-03-25 13:51:27'),(107,2,22,4,'This album grew on me more with every listen.','2026-03-25 13:51:27'),(108,6,22,5,'So many highlights on this project.','2026-03-25 13:51:27'),(109,7,22,4,'Great balance between catchy and emotional.','2026-03-25 13:51:27'),(110,8,22,3,'I liked it, but I expected a bit more.','2026-03-25 13:51:27'),(111,1,23,4,'Really nice album with a smooth flow throughout.','2026-03-25 13:51:27'),(112,4,23,5,'This one hit immediately. Great record.','2026-03-25 13:51:27'),(113,5,23,4,'Very enjoyable and easy to replay.','2026-03-25 13:51:27'),(114,2,24,5,'One of the better albums I have heard this year.','2026-03-25 13:51:27'),(115,3,24,4,'Strong project with some excellent production.','2026-03-25 13:51:27'),(116,7,24,3,'Not bad, but I only saved a few tracks.','2026-03-25 13:51:27'),(117,8,24,4,'Pretty consistent and well executed overall.','2026-03-25 13:51:27'),(118,1,25,3,'It had a few good songs, but I wanted more from it.','2026-03-25 13:51:27'),(119,5,25,4,'A very solid album with a nice sound.','2026-03-25 13:51:27'),(120,6,25,5,'Loved this one. Definitely going back to it often.','2026-03-25 13:51:27'),(121,2,26,4,'Really good listen with some standout moments.','2026-03-25 13:51:27'),(122,4,26,5,'This album is stacked with great tracks.','2026-03-25 13:51:27'),(123,7,26,4,'Very strong and consistent from top to bottom.','2026-03-25 13:51:27'),(124,8,26,3,'I liked the vibe more than the individual songs.','2026-03-25 13:51:27'),(125,1,27,5,'Excellent album. Everything just clicked for me.','2026-03-25 13:51:27'),(126,3,27,4,'Very strong project with great pacing.','2026-03-25 13:51:27'),(127,6,27,4,'A lot of replay value here for sure.','2026-03-25 13:51:27'),(128,2,28,4,'This album was really enjoyable and easy to get into.','2026-03-25 13:51:27'),(129,5,28,3,'Good overall, but not quite a favourite for me.','2026-03-25 13:51:27'),(130,7,28,5,'Amazing work. I loved the sound on this record.','2026-03-25 13:51:27'),(131,8,28,4,'Really smooth listen with some great highlights.','2026-03-25 13:51:27'),(132,1,29,4,'Pretty strong album with a lot to like.','2026-03-25 13:51:27'),(133,4,29,5,'One of the most impressive albums in the set.','2026-03-25 13:51:27'),(134,6,29,3,'Some good ideas here, but it did not fully stick with me.','2026-03-25 13:51:27'),(135,2,30,5,'This album was excellent. No skips for me.','2026-03-25 13:51:27'),(136,3,30,4,'Really cohesive and well thought out.','2026-03-25 13:51:27'),(137,5,30,4,'Strong performances and very good production.','2026-03-25 13:51:27'),(138,7,30,3,'Not bad, but I preferred some of the other albums more.','2026-03-25 13:51:27'),(139,1,31,4,'A very enjoyable album with a lot of personality.','2026-03-25 13:51:27'),(140,4,31,5,'Loved this one. Great from beginning to end.','2026-03-25 13:51:27'),(141,8,31,4,'Really solid effort with several standout tracks.','2026-03-25 13:51:27');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Pis Llakolli','pl@email.com','1234'),(2,'Oaphne Driotis','od@email.com','4321'),(3,'Zong Blagoli','zb@email.com','6967'),(4,'Daryll Morey','MoreyBall@email.com','2222'),(5,'drakeFan21','Drakeboy@gmail.com','1111'),(6,'lisJone','joneli@gmail.com','1221'),(7,'NewGuyTester','newguy@gmail.com','1222'),(8,'Alex','alex@email.com','1234'),(9,'FriendlyPerson','ImNice@email.com','1234'),(10,'nathanMusicMan','nathan@email.com','1234'),(11,'ADB','alexdominicbrown@gmailhotmailemail.com','1'),(12,'jerryAtrick','j@gmail.com','11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-25 17:05:54
