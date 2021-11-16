CREATE SCHEMA `webapp` ;

CREATE TABLE `Bookmark` (
  `user_id` bigint NOT NULL,
  `product_id` varchar(45) NOT NULL
)

CREATE TABLE `books` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(256) DEFAULT NULL,
  `price` varchar(256) DEFAULT NULL,
  `stock` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
)

CREATE TABLE `OrderHistory` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_id` bigint NOT NULL,
  `seller_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `review_desc` text,
  `rating` int DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buyer_name` varchar(64) NOT NULL,
  `buyer_address` varchar(64) NOT NULL,
  `buyer_postal` int NOT NULL,
  `buyer_phone` int NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`)
)

CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
)

INSERT INTO `users` (`userid`,`username`,`password`) VALUES (1,'username1','password1');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (2,'username2','password2');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (3,'halibutgrade','Password1');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (4,'mattershriek','P@ssword123');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (5,'bendcumin','BG9Q2QOOS8XWB');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (6,'oatsmeinie','5GXS25X05C102');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (7,'boilersuitlodestone','CJ1GIO9FJPE9L');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (8,'pumpkincommotion','9W5KAEWT2RDPO');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (9,'hypnoticaustrian','LVYRA40CI1304');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (10,'hardtofindhop','LW7GDWKSMTACD');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (11,'forgetdivide','PX59PA4NZJ55D');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (12,'meatriding','YGDS68D64ZVEZ');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (13,'clangmacaroni','AFDBQZ04V7AIE');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (14,'guacamolekill','UR7W0ODSNP3UY');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (15,'suchfreeboard','AJD34ZOJ86NHB');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (16,'useselection','EJ5P1N607DD9M');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (17,'smilevariety','U8AZI5IV2B9DA');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (18,'cardiganconsumer','NPHZHZFDEGEIL');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (19,'tendoncashier','JNZ7Y6OBF7XCN');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (20,'frigidlighten','PCSK7CCTNEZ43');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (21,'yardarmrunning','OTURZLNKH4YUX');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (22,'coversparse','KAUO2W04WEDU8');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (23,'vivaciousrunner','1367HOUZ9YJV2');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (24,'zygomaticcockatoo','5Y37AQBLRQ02B');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (25,'painterwater','LRKO5WHCADUZ9');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (26,'proportiondermis','X4ZCD41HQHGDP');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (27,'silverfishfault','8FXSD578RCOW2');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (28,'earningstreenail','5XVFNLYSJC4ZG');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (29,'iranianmatter','RJ134BT06GMOM');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (30,'adeptcure','6RRHEJQSJ37QW');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (31,'pumpedimpaling','DSQHXGFKWR3Q9');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (32,'regardanalytical','EEDT7OI28GPXB');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (33,'vengefullearned','P2R85YDY3XA2Y');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (34,'violetsailing','YJHVUJ574WERH');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (35,'pipercent','VAGHX8Q77UOTA');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (36,'sniffsurface','TFD0R00Z2JL4E');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (37,'trustingsue','J6J92SYFPQ6WS');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (38,'musedon’t','5R5NWT52968II');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (39,'compareseize','M6LRS6TQPJUZC');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (40,'antlercrepe','5ZY1F9DZIC7H2');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (41,'incidentcareful','D59BHMS3PDJOO');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (42,'momentwail','3R3UUD94PCK29');
INSERT INTO `users` (`userid`,`username`,`password`) VALUES (43,'pigmanscone','1K93WC3433TAH');

INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (1,3,6,22,'Amazing product - I LOVE IT!',5,'2021-10-24 00:00:00','Jon','10 Temasek Avenue',248213,92731239);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (2,1,8,8,'I really like this!',5,'2021-07-21 00:00:00','Tony','13 Wickham St',230493,84320943);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (3,2,8,9,'Terrible!',1,'2021-10-06 00:00:00','Jon','12 Jurong West Blk 123 #14-32',123124,93120392);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (4,3,1,10,'OKayish product',3,'2021-10-22 00:00:00','Dee','Bedok Blk 2',493031,98310341);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (5,6,1,11,'Terrible quality!',2,'2021-09-29 00:00:00','Susie','10 Rue de Geneva',812312,82139123);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (6,3,2,12,'Reliable and good',5,'2021-10-25 00:00:00','Gyles','10 Downing Street',231910,83120321);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (7,5,6,22,'Legend!',5,'2021-10-01 00:00:00','Kobe','10 California Lane',942023,94212032);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (8,4,8,25,'Lousy hat',1,'2021-10-06 00:00:00','Tom','1 New York',123412,65210234);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (9,6,8,26,'Out of fashion!',3,'2021-10-14 00:00:00','Chris','Jalan Kukok',412942,93123043);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (10,1,2,27,'nice and good',4,'2021-09-19 00:00:00','jon','Istana',213120,93123012);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (11,5,4,30,'really nice bag',5,'2021-10-13 00:00:00','Aryton','10 McLaren Rd',321041,64239102);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (12,7,5,32,'five-nil!',5,'2021-10-19 00:00:00','Salah','Anfield Lane 10',952302,65230123);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (13,1,6,35,'expensive but good',5,'2021-08-10 00:00:00','megan','19 Miami Rd',941201,65930439);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (14,5,6,36,'Expensive but not good',2,'2021-10-08 00:00:00','Carrie','23 Lorong Kurau',213021,65391023);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (15,4,7,39,'Looks ridiculous',1,'2021-10-13 00:00:00','Caesar','100 Bukit Batok Lane 2',631021,68593032);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (16,2,8,41,'Okayish product',4,'2021-10-12 00:00:00','Natasha','12 Ang Mo Kia Ave 3',234522,93821032);
INSERT INTO `OrderHistory` (`order_id`,`buyer_id`,`seller_id`,`product_id`,`review_desc`,`rating`,`order_date`,`buyer_name`,`buyer_address`,`buyer_postal`,`buyer_phone`) VALUES (17,3,1,42,'Classic',5,'2021-10-20 00:00:00','Nicolas','9 Bartley Rd',912318,83129210);

INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (1,'book 1','12','12');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (2,'book 2','98','2');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (3,'1st to Die','19','66');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (4,'2nd Chance','31','3');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (5,'3rd Degree','1','93');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (6,'4th Of July','88','29');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (7,'The 5th Horseman','62','97');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (8,'The 6th Target','77','53');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (9,'7th Heaven','51','50');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (10,'The 8th Confession','50','99');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (11,'The 9th Judgment','57','80');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (12,'10th Anniversary','89','27');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (13,'11th Hour','91','91');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (14,'12th of Never','31','42');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (15,'The 13-Minute Murder','60','31');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (16,'14th Deadly Sin','12','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (17,'15th Affair','2','1');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (18,'16th Seduction','18','1');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (19,'17th Suspect','60','26');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (20,'18th Abduction','80','2');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (21,'19th Christmas','95','21');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (22,'20th Victim','96','59');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (23,'96 Words for Love','69','3');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (24,'Against Medical Advice','23','10');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (25,'Alex Cross Also published as Cross','55','36');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (26,'Alert','56','37');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (27,'\"Alex Cross','0','14');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (28,'Alex Cross\'s Trial','5','52');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (29,'Ali Cross','90','88');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (30,'Along Came a Spider','61','69');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (31,'All-American Murder','75','86');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (32,'Ambush','37','97');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (33,'All-American Adventure','62','15');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (34,'Angel','92','53');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (35,'The Angel Experiment','69','42');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (36,'Armageddon','12','97');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (37,'The Beach House','30','45');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (38,'Beach Road','0','24');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (39,'The Big Bad Wolf','69','98');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (40,'Big Words for Little Geniuses','29','37');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (41,'Bigger Words for Little Geniuses','64','69');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (42,'The Black Book','74','45');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (43,'Black Friday','4','29');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (44,'Blindside','82','79');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (45,'Bullseye','66','28');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (46,'Burn','63','4');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (47,'Campfire','71','80');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (48,'The Candies Save Christmas','25','53');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (49,'Capturing the Devil','96','33');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (50,'Cat & Mouse','52','45');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (51,'The Chef','30','87');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (52,'The Christmas Wedding','24','50');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (53,'Confessions of a Murder Suspect','51','8');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (54,'Confessions: The Murder of an Angel','29','24');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (55,'Confessions: The Paris Mysteries','0','79');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (56,'Confessions: The Private School Murders','33','49');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (57,'The Cornwalls Are Gone','40','94');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (58,'Count To Ten: A Private Novel','69','62');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (59,'Cradle & All','92','94');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (60,'Crazy House','41','29');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (61,'Criss Cross','85','40');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (62,'Cross Country','68','84');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (63,'Cross Fire','99','43');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (64,'Cross Justice','80','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (65,'Cross My Heart','33','59');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (66,'Cross the Line','42','22');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (67,'Cuddly Critters For Little Geniuses','54','56');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (68,'Danger Down the Nile','41','9');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (69,'The Dangerous Days of Daniel X','1','56');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (70,'Demons and Druids','39','49');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (71,'Dog Diaries','12','49');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (72,'Dog Diaries: Happy Howlidays','79','38');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (73,'Dog Diaries: Mission Impawsible','93','40');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (74,'Don\'t Blink','7','72');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (75,'Double Cross','41','39');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (76,'\"Ernestine','0','75');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (77,'Escaping From Houdini','2','40');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (78,'Fall of Crazy House','27','85');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (79,'Fang','94','76');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (80,'Fifty Fifty','34','82');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (81,'Filthy Rich','91','39');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (82,'The Final Warning','74','8');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (83,'The Fire','89','57');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (84,'First Love','19','67');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (85,'The First Lady','81','26');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (86,'Four Blind Mice','52','97');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (87,'Game Over','28','20');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (88,'The Games: A Private Novel','42','44');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (89,'The Gift','60','59');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (90,'Girls of Paper and Fire','43','22');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (91,'Girls of Storm and Shadow','74','94');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (92,'Give Please a Chance','43','99');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (93,'Give Thank You a Try','64','9');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (94,'Gone','31','36');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (95,'Guilty Wives','5','15');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (96,'Gunslinger Girl','23','31');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (97,'Haunted','61','44');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (98,'Hawk','67','94');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (99,'Hide & Seek','14','4');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (100,'Home Sweet Murder','16','45');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (101,'Homeroom Diaries','30','15');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (102,'Honeymoon','14','35');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (103,'Hope to Die','91','51');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (104,'House of Kennedy','82','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (105,'House of Robots','29','79');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (106,'The House Next Door','72','50');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (107,'How to Be a Supervillain','56','55');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (108,'How to Be a Supervillain: Bad Guys Finish First','5','19');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (109,'How to Be a Supervillain: Born to be Good','1','78');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (110,'\"Humans','0','26');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (111,'Hunting Prince Dracula','31','23');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (112,'Hush','84','80');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (113,'\"I','0','24');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (114,'I Even Funnier','73','99');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (115,'I Funny','45','17');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (116,'I Funny School of Laughs','31','47');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (117,'I Funny TV','53','44');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (118,'The Injustice','85','10');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (119,'The Inn','68','31');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (120,'\"I','0','14');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (121,'I Totally Funniest','71','38');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (122,'Instinct','37','48');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (123,'Invisible','52','1');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (124,'Jack & Jill','47','6');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (125,'Jacky Ha-Ha','83','40');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (126,'Jacky Ha-Ha: My Life Is a Joke','86','91');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (127,'Jacky Ha-Ha: A Graphic Novel','64','49');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (128,'The Jester','97','4');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (129,'Judge & Jury','88','73');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (130,'Juror #3','44','21');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (131,'Katt vs. Dogg','93','57');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (132,'Kill Alex Cross','76','42');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (133,'Killer Instinct','57','69');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (134,'Kill Me If You Can','37','58');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (135,'The Kiss','46','79');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (136,'Kiss the Girls','85','34');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (137,'The Lake House','78','9');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (138,'Laugh Out Loud','45','42');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (139,'Liar Liar','84','94');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (140,'Lifeguard','66','57');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (141,'Lights Out','95','36');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (142,'London Bridges','37','96');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (143,'The Lost','36','14');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (144,'\"Mary','0','78');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (145,'Max Einstein: The Genius Experiment','33','11');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (146,'Max Einstein: Rebels With a Cause','97','62');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (147,'Max','90','76');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (148,'Maximum Ride Forever','90','86');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (149,'Med Head','25','34');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (150,'\"Merry Christmas','0','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (151,'Middle School: Big Fat Liar','56','36');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (152,'Middle School: Born to Rock','64','21');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (153,'Middle School: Dog\'s Best Friend','89','41');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (154,'Middle School: Escape to Australia','12','30');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (155,'Middle School: From Hero to Zero','37','26');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (156,'Middle School: Get Me Out of Here!','97','35');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (157,'\"Middle School: How I Survived Bullies','0','0');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (158,'Middle School: Just My Rotten Luck','12','27');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (159,'Middle School: Master of Disaster','87','77');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (160,'Middle School: Save Rafe!','38','0');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (161,'Middle School: The Worst Years of My Life','94','53');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (162,'Middle School: Ultimate Showdown','99','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (163,'The Midnight Club','30','31');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (164,'Miracle at Augusta','55','67');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (165,'Miracle at St. Andrews','82','42');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (166,'Miracle on the 17th Green','7','73');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (167,'Missing: A Private Novel','94','66');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (168,'Mistress','74','87');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (169,'Murder Beyond the Grave','38','4');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (170,'The Murder House','67','20');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (171,'\"Murder','0','21');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (172,'The Murder of King Tut','54','20');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (173,'The Nerdiest Wimpiest Dorkiest I Funny Ever','71','68');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (174,'Never Never','91','83');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (175,'Nevermore','86','67');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (176,'No More Monsters Under Your Bed','76','57');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (177,'Not So Normal Norbert','30','44');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (178,'Now You See Her','0','37');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (179,'NYPD Red','4','88');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (180,'NYPD Red 2','44','71');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (181,'NYPD Red 3','55','92');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (182,'NYPD Red 4','41','56');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (183,'Red Alert','11','88');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (184,'Once & Future','67','5');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (185,'Penguins of America','1','71');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (186,'The People vs. Alex Cross','16','56');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (187,'Peril at the Top of the World','11','7');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (188,'Plunder Down Under','49','87');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (189,'Pop Goes the Weasel','38','50');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (190,'The Postcard Killers','94','9');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (191,'Pottymouth and Stoopid','28','65');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (192,'The President Is Missing','46','69');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (193,'Private','59','3');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (194,'Private: #1 Suspect','39','47');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (195,'Private Berlin','5','87');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (196,'Private Down Under','32','74');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (197,'Private Games','98','15');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (198,'Private India: City on Fire','31','60');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (199,'Private L.A.','45','77');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (200,'Private London','82','51');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (201,'Private Paris','87','34');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (202,'Private Princess','24','73');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (203,'Private Vegas','96','97');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (204,'Public School Superhero','81','79');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (205,'Quest for the City of Gold','43','48');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (206,'The Quickie','0','81');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (207,'The Radcliffes','65','92');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (208,'Revenge','2','35');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (209,'The River Murders','48','53');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (210,'Robot Revolution','65','61');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (211,'Robots Go Wild!','75','86');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (212,'Roses Are Red','73','25');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (213,'Run For Your Life','46','28');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (214,'Sail','24','55');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (215,'Sam\'s Letters to Jennifer','17','46');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (216,'SantaKid','33','98');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (217,'Saving the World & Other Extreme Sports','86','86');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (218,'School\'s Out-Forever','88','98');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (219,'Sci-Fi Junior High','27','97');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (220,'Sci-Fi Junior High: Crash Landing','88','60');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (221,'Scouts','99','6');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (222,'Season of the Machete','57','52');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (223,'Second Honeymoon','28','62');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (224,'Secret of the Forbidden City','73','40');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (225,'See How They Run','59','27');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (226, 'Sophia','0','12');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (227,'Stalking Jack the Ripper','89','48');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (228,'Step on a Crack','55','32');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (229,'The Store','40','45');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (230,'The Summer House','20','60');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (231,'Sundays at Tiffany\'s','88','12');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (232,'Suzanne\'s Diary for Nicholas','53','0');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (233,'Swimsuit','62','46');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (234,'Swipe Right for Murder','13','5');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (235,'Sword in the Stars','77','47');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (236,'Target: Alex Cross','68','93');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (237,'Texas Ranger','82','82');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (238,'There was an Old Woman who Lived in a Book','99','33');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (239,'The Thomas Berryman Number','49','41');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (240,'Tick Tock','51','18');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (241,'Toys','66','6');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (242,'Treasure Hunters','66','37');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (243,'Truth or Die','22','62');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (244,'Twelve Steps to Normal','62','64');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (245,'Two from the Heart','80','23');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (246,'Unbelievably Boring Bart','21','7');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (247,'The Unflushables','96','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (248,'Triple Homicide','84','63');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (249,'The Ugly Doodles','43','95');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (250,'Unsolved','73','93');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (251,'Unlucky 13','28','20');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (252,'Violets Are Blue','31','78');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (253,'The Warning','25','98');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (254,'Watch the Skies','11','49');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (255,'When the Wind Blows','58','81');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (256,'When We Were Lost','30','7');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (257,'Witch & Wizard','87','32');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (258,'Woman of God','19','72');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (259,'Word of Mouse','5','25');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (260,'Worst Case','10','52');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (261,'You\'re Next','2','31');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (262,'You\'ve Been Warned','82','48');
INSERT INTO `books` (`product_id`,`product_name`,`price`,`stock`) VALUES (263,'ZOO','76','35');

INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (2,'3');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (4,'5');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (2,'1');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (3,'6');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (4,'7');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'8');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (3,'9');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (1,'10');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (8,'11');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (3,'12');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'15');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (4,'16');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'17');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (7,'18');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'21');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (4,'22');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (8,'24');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (4,'25');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (3,'28');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (2,'29');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (6,'31');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (4,'32');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'35');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (8,'37');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (1,'39');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'40');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (5,'41');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (8,'42');
INSERT INTO `Bookmark` (`user_id`,`product_id`) VALUES (2,'143');