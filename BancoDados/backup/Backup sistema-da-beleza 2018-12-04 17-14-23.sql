CREATE DATABASE IF NOT EXISTS sistem25_dabelez;

USE sistem25_dabelez;

DROP TABLE IF EXISTS tb_acesso;


CREATE TABLE `tb_acesso` (
  `co_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `ds_session_id` varchar(255) DEFAULT NULL,
  `dt_inicio_acesso` datetime DEFAULT NULL,
  `dt_fim_acesso` datetime DEFAULT NULL,
  `tp_situacao` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / F - Finalizado',
  `co_usuario` int(10) NOT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_acesso`,`co_usuario`,`co_trafego`),
  KEY `fk_TB_ACESSO_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_ACESSO_TB_TRAFEGO1_idx` (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;


INSERT INTO tb_acesso VALUES("1","ctjmil6v36vs0kg5sa7ka32qg0","2018-07-30 11:33:04","2018-07-30 12:04:08","F","1","1");

INSERT INTO tb_acesso VALUES("2","4dq4d6cakgte68vaoj6e5q1md2","2018-07-30 14:05:00","2018-07-30 15:52:59","F","1","2");

INSERT INTO tb_acesso VALUES("3","nhmk41i8khlhf3nh25alakdko7","2018-07-31 09:44:37","2018-07-31 12:42:35","F","1","3");

INSERT INTO tb_acesso VALUES("4","5i0o0v6712nnei371rvj5ohm93","2018-07-31 15:53:09","2018-07-31 16:37:15","F","1","4");

INSERT INTO tb_acesso VALUES("5","a0fq0ea0ogu81ravbrcs20ac03","2018-07-31 19:37:28","2018-07-31 20:51:48","F","1","5");

INSERT INTO tb_acesso VALUES("6","oahgj9g37acar7aaj0tmccaui7","2018-07-31 22:20:05","2018-08-01 00:28:09","F","1","6");

INSERT INTO tb_acesso VALUES("7","ap75nn88i7akc8s5vi5si0g0k1","2018-08-03 16:10:54","2018-08-03 20:02:53","F","1","7");

INSERT INTO tb_acesso VALUES("8","5ovsmkas39v69nr2iaa0dr30c5","2018-08-08 16:37:34","2018-08-08 17:07:38","F","1","8");

INSERT INTO tb_acesso VALUES("9","orcjrf536ja3b4nuvep99ki8n1","2018-08-13 10:27:38","2018-08-13 13:01:12","F","1","9");

INSERT INTO tb_acesso VALUES("10","qk463sir9jb1t8bs23mtat5137","2018-08-13 15:26:14","2018-08-13 18:38:38","F","1","10");

INSERT INTO tb_acesso VALUES("11","vhkah2sjqvnfufp04k1kt8lca5","2018-08-13 21:38:18","2018-08-13 22:04:43","F","1","11");

INSERT INTO tb_acesso VALUES("12","vhkah2sjqvnfufp04k1kt8lca5","2018-08-13 22:07:26","2018-08-13 23:18:23","F","1","12");

INSERT INTO tb_acesso VALUES("13","u27250udshkenmorn1h3felde4","2018-08-14 10:10:57","2018-08-14 10:17:21","F","1","13");

INSERT INTO tb_acesso VALUES("14","u27250udshkenmorn1h3felde4","2018-08-14 11:06:34","2018-08-14 12:09:35","F","1","14");

INSERT INTO tb_acesso VALUES("15","p9b2db1bordoslttqrp4piur93","2018-08-14 11:35:56","2018-08-14 12:05:56","F","7","15");

INSERT INTO tb_acesso VALUES("16","p9b2db1bordoslttqrp4piur93","2018-08-14 11:40:56","2018-08-14 12:16:45","F","7","16");

INSERT INTO tb_acesso VALUES("17","p9b2db1bordoslttqrp4piur93","2018-08-14 11:48:52","2018-08-14 12:05:38","F","7","17");

INSERT INTO tb_acesso VALUES("18","u27250udshkenmorn1h3felde4","2018-08-14 12:34:38","2018-08-14 12:35:12","F","7","18");

INSERT INTO tb_acesso VALUES("19","u27250udshkenmorn1h3felde4","2018-08-14 12:35:16","2018-08-14 12:35:20","F","7","19");

INSERT INTO tb_acesso VALUES("20","u27250udshkenmorn1h3felde4","2018-08-14 12:35:35","2018-08-14 12:38:33","F","1","20");

INSERT INTO tb_acesso VALUES("21","u27250udshkenmorn1h3felde4","2018-08-14 12:38:38","2018-08-14 12:41:31","F","7","21");

INSERT INTO tb_acesso VALUES("22","u27250udshkenmorn1h3felde4","2018-08-14 12:41:34","2018-08-14 13:20:44","F","7","22");

INSERT INTO tb_acesso VALUES("23","b6an1eflsv0n4h59pp6lvap5r5","2018-08-14 15:51:10","2018-08-14 16:08:36","F","7","23");

INSERT INTO tb_acesso VALUES("24","b6an1eflsv0n4h59pp6lvap5r5","2018-08-14 16:44:12","2018-08-14 17:16:11","F","1","24");

INSERT INTO tb_acesso VALUES("25","lfa8099kabh8na5tb0vhhj2b23","2018-08-14 16:46:20","2018-08-14 17:17:56","F","7","25");

INSERT INTO tb_acesso VALUES("26","lfa8099kabh8na5tb0vhhj2b23","2018-08-14 16:48:12","2018-08-14 16:59:55","F","8","26");

INSERT INTO tb_acesso VALUES("27","b6an1eflsv0n4h59pp6lvap5r5","2018-08-14 17:26:39","2018-08-14 17:28:35","F","1","27");

INSERT INTO tb_acesso VALUES("28","b6an1eflsv0n4h59pp6lvap5r5","2018-08-14 17:29:57","2018-08-14 17:59:58","F","8","28");

INSERT INTO tb_acesso VALUES("29","e9l8fv52l5igm10qj2nhmkk891","2018-08-15 10:04:44","2018-08-15 10:11:02","F","1","29");

INSERT INTO tb_acesso VALUES("30","e9l8fv52l5igm10qj2nhmkk891","2018-08-15 10:11:49","2018-08-15 11:07:33","F","8","30");

INSERT INTO tb_acesso VALUES("31","e9l8fv52l5igm10qj2nhmkk891","2018-08-15 11:07:37","2018-08-15 11:18:15","F","1","31");

INSERT INTO tb_acesso VALUES("32","e9l8fv52l5igm10qj2nhmkk891","2018-08-15 11:18:19","2018-08-15 12:21:42","F","8","32");

INSERT INTO tb_acesso VALUES("33","drv88lu8numedmeh30je0cgg93","2018-08-15 19:08:31","2018-08-15 19:43:15","F","8","33");

INSERT INTO tb_acesso VALUES("34","drv88lu8numedmeh30je0cgg93","2018-08-15 19:49:31","2018-08-15 19:58:27","F","1","34");

INSERT INTO tb_acesso VALUES("35","drv88lu8numedmeh30je0cgg93","2018-08-15 19:58:31","2018-08-15 20:11:53","F","8","35");

INSERT INTO tb_acesso VALUES("36","drv88lu8numedmeh30je0cgg93","2018-08-15 20:12:59","2018-08-15 20:13:04","F","8","36");

INSERT INTO tb_acesso VALUES("37","drv88lu8numedmeh30je0cgg93","2018-08-15 20:13:08","2018-08-15 20:14:19","F","1","37");

INSERT INTO tb_acesso VALUES("38","drv88lu8numedmeh30je0cgg93","2018-08-15 20:14:23","2018-08-15 20:21:17","F","8","38");

INSERT INTO tb_acesso VALUES("39","drv88lu8numedmeh30je0cgg93","2018-08-15 20:21:22","2018-08-15 20:23:20","F","1","39");

INSERT INTO tb_acesso VALUES("40","drv88lu8numedmeh30je0cgg93","2018-08-15 20:23:24","2018-08-15 21:02:52","F","8","40");

INSERT INTO tb_acesso VALUES("41","drv88lu8numedmeh30je0cgg93","2018-08-15 20:24:35","2018-08-15 20:24:40","F","1","41");

INSERT INTO tb_acesso VALUES("42","drv88lu8numedmeh30je0cgg93","2018-08-15 20:24:44","2018-08-15 20:24:48","F","1","42");

INSERT INTO tb_acesso VALUES("43","7tjt272ptghjd2vtnkbq05s685","2018-08-16 22:50:35","2018-08-16 23:57:49","F","8","43");

INSERT INTO tb_acesso VALUES("44","7tjt272ptghjd2vtnkbq05s685","2018-08-16 23:57:54","2018-08-16 23:57:59","F","8","44");

INSERT INTO tb_acesso VALUES("45","7tjt272ptghjd2vtnkbq05s685","2018-08-16 23:58:03","2018-08-16 23:58:57","F","1","45");

INSERT INTO tb_acesso VALUES("46","7tjt272ptghjd2vtnkbq05s685","2018-08-16 23:59:03","2018-08-17 00:00:05","F","1","46");

INSERT INTO tb_acesso VALUES("47","0t2k15iq2kk1fmjikhi2696el3","2018-08-16 23:59:37","2018-08-17 00:31:44","F","9","47");

INSERT INTO tb_acesso VALUES("48","7tjt272ptghjd2vtnkbq05s685","2018-08-17 00:00:09","2018-08-17 00:07:07","F","8","48");

INSERT INTO tb_acesso VALUES("49","7tjt272ptghjd2vtnkbq05s685","2018-08-17 00:08:17","2018-08-17 00:25:47","F","8","49");

INSERT INTO tb_acesso VALUES("50","7tjt272ptghjd2vtnkbq05s685","2018-08-17 00:25:52","2018-08-17 00:32:32","F","8","50");

INSERT INTO tb_acesso VALUES("51","7tjt272ptghjd2vtnkbq05s685","2018-08-17 00:32:43","2018-08-17 01:07:48","F","8","51");

INSERT INTO tb_acesso VALUES("52","mmaudsp616k9fvekc38dei5887","2018-08-17 15:59:03","2018-08-17 16:02:50","F","1","52");

INSERT INTO tb_acesso VALUES("53","mmaudsp616k9fvekc38dei5887","2018-08-17 16:02:55","2018-08-17 16:25:28","F","8","53");

INSERT INTO tb_acesso VALUES("54","mmaudsp616k9fvekc38dei5887","2018-08-17 16:25:33","2018-08-17 16:25:40","F","1","54");

INSERT INTO tb_acesso VALUES("55","mmaudsp616k9fvekc38dei5887","2018-08-17 16:25:44","2018-08-17 17:06:42","F","8","55");

INSERT INTO tb_acesso VALUES("56","mmaudsp616k9fvekc38dei5887","2018-08-17 17:56:41","2018-08-17 17:56:47","F","1","56");

INSERT INTO tb_acesso VALUES("57","mmaudsp616k9fvekc38dei5887","2018-08-17 17:56:51","2018-08-17 18:48:04","F","8","57");

INSERT INTO tb_acesso VALUES("58","4112km1j22v58h9tmp83s3qeh5","2018-08-22 14:45:59","2018-08-22 15:15:59","F","1","58");

INSERT INTO tb_acesso VALUES("59","uk5onru87sl3oinccd62qgsci7","2018-08-26 12:08:17","2018-08-26 12:10:34","F","1","59");

INSERT INTO tb_acesso VALUES("60","uk5onru87sl3oinccd62qgsci7","2018-08-26 12:10:40","2018-08-26 12:42:33","F","8","60");

INSERT INTO tb_acesso VALUES("61","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:25:57","2018-08-26 12:44:09","F","8","61");

INSERT INTO tb_acesso VALUES("62","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:44:16","2018-08-26 12:49:31","F","8","62");

INSERT INTO tb_acesso VALUES("63","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:49:48","2018-08-26 12:50:18","F","8","63");

INSERT INTO tb_acesso VALUES("64","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:50:34","2018-08-26 12:51:15","F","8","64");

INSERT INTO tb_acesso VALUES("65","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:51:20","2018-08-26 12:51:39","F","8","65");

INSERT INTO tb_acesso VALUES("66","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:51:45","2018-08-26 12:52:05","F","8","66");

INSERT INTO tb_acesso VALUES("67","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:52:08","2018-08-26 12:52:21","F","8","67");

INSERT INTO tb_acesso VALUES("68","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:52:30","2018-08-26 12:53:04","F","8","68");

INSERT INTO tb_acesso VALUES("69","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:53:15","2018-08-26 12:53:30","F","8","69");

INSERT INTO tb_acesso VALUES("70","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:53:51","2018-08-26 12:55:34","F","8","70");

INSERT INTO tb_acesso VALUES("71","60c1hesp7khggq7vuf341p5pe7","2018-08-26 12:55:37","2018-08-26 13:28:05","F","8","71");

INSERT INTO tb_acesso VALUES("72","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 16:04:39","2018-08-27 16:20:28","F","8","72");

INSERT INTO tb_acesso VALUES("73","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 16:20:33","2018-08-27 16:22:13","F","1","73");

INSERT INTO tb_acesso VALUES("74","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 16:22:16","2018-08-27 17:18:38","F","8","74");

INSERT INTO tb_acesso VALUES("75","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:19:38","2018-08-27 17:19:58","F","8","75");

INSERT INTO tb_acesso VALUES("76","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:20:01","2018-08-27 17:22:37","F","8","76");

INSERT INTO tb_acesso VALUES("77","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:22:41","2018-08-27 17:23:32","F","8","77");

INSERT INTO tb_acesso VALUES("78","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:23:36","2018-08-27 17:24:12","F","8","78");

INSERT INTO tb_acesso VALUES("79","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:24:16","2018-08-27 17:27:48","F","8","79");

INSERT INTO tb_acesso VALUES("80","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:27:52","2018-08-27 17:28:08","F","8","80");

INSERT INTO tb_acesso VALUES("81","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:28:12","2018-08-27 17:37:37","F","8","81");

INSERT INTO tb_acesso VALUES("82","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:38:01","2018-08-27 17:38:30","F","8","82");

INSERT INTO tb_acesso VALUES("83","6phinjfqrfa7h01ksojn6bmal6","2018-08-27 17:45:11","2018-08-27 18:17:07","F","8","83");

INSERT INTO tb_acesso VALUES("84","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 10:08:13","2018-08-28 10:20:22","F","8","84");

INSERT INTO tb_acesso VALUES("85","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 10:20:25","2018-08-28 10:20:46","F","8","85");

INSERT INTO tb_acesso VALUES("86","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 10:20:50","2018-08-28 10:28:17","F","8","86");

INSERT INTO tb_acesso VALUES("87","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 10:28:21","2018-08-28 11:09:01","F","1","87");

INSERT INTO tb_acesso VALUES("88","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 11:09:12","2018-08-28 11:12:57","F","1","88");

INSERT INTO tb_acesso VALUES("89","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 11:13:08","2018-08-28 11:14:03","F","1","89");

INSERT INTO tb_acesso VALUES("90","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 11:14:08","2018-08-28 11:14:14","F","8","90");

INSERT INTO tb_acesso VALUES("91","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 11:14:18","2018-08-28 11:22:11","F","1","91");

INSERT INTO tb_acesso VALUES("92","nngnd90o5cgtgepgfggsafvlt7","2018-08-28 11:22:16","2018-08-28 12:11:11","F","8","92");

INSERT INTO tb_acesso VALUES("93","oud2vtt5efsejt5matrmdnijm4","2018-08-28 18:05:50","2018-08-28 18:18:13","F","8","93");

INSERT INTO tb_acesso VALUES("94","oud2vtt5efsejt5matrmdnijm4","2018-08-28 18:18:16","2018-08-28 18:21:07","F","1","94");

INSERT INTO tb_acesso VALUES("95","oud2vtt5efsejt5matrmdnijm4","2018-08-28 18:21:12","2018-08-28 18:21:39","F","8","95");

INSERT INTO tb_acesso VALUES("96","oud2vtt5efsejt5matrmdnijm4","2018-08-28 18:21:43","2018-08-28 18:24:05","F","1","96");

INSERT INTO tb_acesso VALUES("97","oud2vtt5efsejt5matrmdnijm4","2018-08-28 18:24:12","2018-08-28 20:57:49","F","8","97");

INSERT INTO tb_acesso VALUES("98","iujl28q0e1ilsovl5tcr7of8p4","2018-08-29 09:47:48","2018-08-29 11:26:32","F","8","98");

INSERT INTO tb_acesso VALUES("99","iujl28q0e1ilsovl5tcr7of8p4","2018-08-29 12:00:35","2018-08-29 12:50:31","F","8","99");

INSERT INTO tb_acesso VALUES("100","g22915rfuljgns59r07rpfdsi7","2018-08-30 10:48:26","2018-08-30 13:34:01","F","8","100");

INSERT INTO tb_acesso VALUES("101","11eg1p1lo9i474thmt75inc712","2018-09-10 18:45:47","2018-09-10 18:49:38","F","8","101");

INSERT INTO tb_acesso VALUES("102","11eg1p1lo9i474thmt75inc712","2018-09-10 18:51:09","2018-09-10 18:52:01","F","1","102");

INSERT INTO tb_acesso VALUES("103","11eg1p1lo9i474thmt75inc712","2018-09-10 18:52:05","2018-09-10 19:35:03","F","8","103");

INSERT INTO tb_acesso VALUES("104","5gpiktheg61uc2fer9gbcet5g0","2018-09-10 18:56:41","2018-09-10 19:26:45","F","1","104");

INSERT INTO tb_acesso VALUES("105","jrj9jn48i62kelmlr8nrkohlg4","2018-09-11 11:24:56","2018-09-11 12:57:10","F","8","105");

INSERT INTO tb_acesso VALUES("106","1is1q1qul67lrc2vq4ahe63nq0","2018-09-11 20:22:22","2018-09-11 21:27:30","F","8","106");

INSERT INTO tb_acesso VALUES("107","ov9351s10gg5np28tgrooaroc5","2018-09-17 15:48:09","2018-09-17 19:00:42","F","8","107");

INSERT INTO tb_acesso VALUES("108","56fjs76qab1l67cjgd4d2v51c5","2018-09-18 08:41:59","2018-09-18 09:12:09","F","8","108");

INSERT INTO tb_acesso VALUES("109","56fjs76qab1l67cjgd4d2v51c5","2018-09-18 09:12:14","2018-09-18 09:26:51","F","8","109");

INSERT INTO tb_acesso VALUES("110","56fjs76qab1l67cjgd4d2v51c5","2018-09-18 09:26:55","2018-09-18 09:30:09","F","1","110");

INSERT INTO tb_acesso VALUES("111","56fjs76qab1l67cjgd4d2v51c5","2018-09-18 09:30:13","2018-09-18 10:39:24","F","8","111");

INSERT INTO tb_acesso VALUES("112","56fjs76qab1l67cjgd4d2v51c5","2018-09-18 10:39:29","2018-09-18 11:22:16","F","8","112");

INSERT INTO tb_acesso VALUES("113","tt1hh3jf13m2e58fec370kjhg4","2018-09-20 18:47:17","2018-09-20 21:28:58","F","8","113");

INSERT INTO tb_acesso VALUES("114","fjaf84fmdjkgpskgrg23vv5po6","2018-09-21 11:14:50","2018-09-21 11:14:54","F","1","114");

INSERT INTO tb_acesso VALUES("115","fjaf84fmdjkgpskgrg23vv5po6","2018-09-21 11:20:27","2018-09-21 12:02:42","F","8","115");

INSERT INTO tb_acesso VALUES("116","fjaf84fmdjkgpskgrg23vv5po6","2018-09-21 12:02:53","2018-09-21 13:02:56","F","8","116");

INSERT INTO tb_acesso VALUES("117","fjaf84fmdjkgpskgrg23vv5po6","2018-09-21 13:10:13","2018-09-21 13:42:00","F","8","117");

INSERT INTO tb_acesso VALUES("118","8ftqbo65uvuc57k4hddfbmtr67","2018-09-21 16:45:35","2018-09-21 19:16:56","F","8","118");

INSERT INTO tb_acesso VALUES("119","ru7fmpm398qv9p0pp1ipgscmq0","2018-09-21 20:38:58","2018-09-21 22:36:06","F","8","119");

INSERT INTO tb_acesso VALUES("120","gl64mbao1n1s6lb5vffiud0314","2018-09-22 09:58:49","2018-09-22 10:40:16","F","8","120");

INSERT INTO tb_acesso VALUES("121","gl64mbao1n1s6lb5vffiud0314","2018-09-22 10:51:47","2018-09-22 11:00:13","F","1","121");

INSERT INTO tb_acesso VALUES("122","gl64mbao1n1s6lb5vffiud0314","2018-09-22 11:00:17","2018-09-22 11:41:24","F","8","122");

INSERT INTO tb_acesso VALUES("123","hmaqkbajiapdcm0u0kqpv1kkm6","2018-09-24 18:31:47","2018-09-24 18:32:02","F","8","123");

INSERT INTO tb_acesso VALUES("124","hmaqkbajiapdcm0u0kqpv1kkm6","2018-09-24 18:32:05","2018-09-24 18:36:21","F","1","124");

INSERT INTO tb_acesso VALUES("125","hmaqkbajiapdcm0u0kqpv1kkm6","2018-09-24 18:36:25","2018-09-24 21:00:49","F","8","125");

INSERT INTO tb_acesso VALUES("126","srrm361or60f3k0gtic1d066h1","2018-09-25 12:16:18","2018-09-25 13:04:54","F","8","126");

INSERT INTO tb_acesso VALUES("127","gelbi1f2mctind37qass7lsdi3","2018-09-25 14:45:57","2018-09-25 14:46:07","F","8","127");

INSERT INTO tb_acesso VALUES("128","gelbi1f2mctind37qass7lsdi3","2018-09-25 14:46:10","2018-09-25 14:47:06","F","1","128");

INSERT INTO tb_acesso VALUES("129","gelbi1f2mctind37qass7lsdi3","2018-09-25 14:48:28","2018-09-25 15:41:03","F","8","129");

INSERT INTO tb_acesso VALUES("130","6n1l31vfn2uqelpcf51cj5feo1","2018-09-25 19:35:25","2018-09-25 21:13:48","F","8","130");

INSERT INTO tb_acesso VALUES("131","20piql4clg2rc3qlra0q0tvbe7","2018-10-18 19:54:24","2018-10-18 20:45:37","F","8","131");

INSERT INTO tb_acesso VALUES("132","la94jnf0s9c31oah4ouo6mpgv4","2018-10-19 10:58:03","2018-10-19 11:35:00","F","8","132");

INSERT INTO tb_acesso VALUES("133","la94jnf0s9c31oah4ouo6mpgv4","2018-10-19 11:35:06","2018-10-19 11:36:32","F","1","133");

INSERT INTO tb_acesso VALUES("134","la94jnf0s9c31oah4ouo6mpgv4","2018-10-19 11:36:35","2018-10-19 13:02:55","F","8","134");

INSERT INTO tb_acesso VALUES("135","la94jnf0s9c31oah4ouo6mpgv4","2018-10-19 13:15:56","2018-10-19 14:21:39","F","8","135");

INSERT INTO tb_acesso VALUES("136","54tvofua16dtq5sk9q0a2pmg01","2018-10-19 18:30:42","2018-10-19 19:59:59","F","8","136");

INSERT INTO tb_acesso VALUES("137","t24gutar3n7mo90ceqp6cu5n85","2018-10-22 15:09:14","2018-10-22 16:57:03","F","8","137");

INSERT INTO tb_acesso VALUES("138","8a5asuffc97eiv77b7e14r6d15","2018-10-22 21:29:59","2018-10-22 23:25:15","F","8","138");

INSERT INTO tb_acesso VALUES("139","8tj2bffnb3aq73lo0nmmn3c5h5","2018-10-23 17:48:09","2018-10-23 21:55:15","F","8","139");

INSERT INTO tb_acesso VALUES("140","ra62q0kflvfljiip84opkoh8o3","2018-10-23 23:01:14","2018-10-23 23:58:27","F","8","140");

INSERT INTO tb_acesso VALUES("141","ikrjs0qt2uqbrbi1cictrast34","2018-10-24 15:25:49","2018-10-24 16:32:48","F","8","141");

INSERT INTO tb_acesso VALUES("142","ikrjs0qt2uqbrbi1cictrast34","2018-10-24 16:32:52","2018-10-24 16:34:29","F","1","142");

INSERT INTO tb_acesso VALUES("143","ikrjs0qt2uqbrbi1cictrast34","2018-10-24 16:34:33","2018-10-24 17:32:56","F","8","143");

INSERT INTO tb_acesso VALUES("144","a82mqa05fa2nm9se4nmsq5k675","2018-10-24 20:46:55","2018-10-24 21:23:47","F","8","144");

INSERT INTO tb_acesso VALUES("145","sdso30upiq6pkh2m926gbgjnv5","2018-10-25 20:28:16","2018-10-25 21:04:03","F","8","145");

INSERT INTO tb_acesso VALUES("146","rj67tn73lnurhu3gvrglen6401","2018-11-01 15:21:43","2018-11-01 15:28:02","F","8","146");

INSERT INTO tb_acesso VALUES("147","rj67tn73lnurhu3gvrglen6401","2018-11-01 15:28:06","2018-11-01 15:29:28","F","1","147");

INSERT INTO tb_acesso VALUES("148","rj67tn73lnurhu3gvrglen6401","2018-11-01 15:29:31","2018-11-01 15:31:17","F","8","148");

INSERT INTO tb_acesso VALUES("149","rj67tn73lnurhu3gvrglen6401","2018-11-01 15:31:39","2018-11-01 16:06:47","F","8","149");

INSERT INTO tb_acesso VALUES("150","39d779vdm15t0lp4v1p3am0dq3","2018-11-02 12:53:41","2018-11-02 12:54:43","F","8","150");

INSERT INTO tb_acesso VALUES("151","39d779vdm15t0lp4v1p3am0dq3","2018-11-02 12:54:47","2018-11-02 14:07:07","F","8","151");

INSERT INTO tb_acesso VALUES("152","0ekpmvucvhbvpoq24agqj4hvg0","2018-11-06 20:31:53","2018-11-06 21:01:56","F","8","152");

INSERT INTO tb_acesso VALUES("153","n9b02derh5bedecbe96hrru5g6","2018-11-07 10:31:59","2018-11-07 10:41:49","F","8","153");

INSERT INTO tb_acesso VALUES("154","mp69genvio6up889qtqag7tht2","2018-11-13 09:43:39","2018-11-13 12:03:14","F","8","154");

INSERT INTO tb_acesso VALUES("155","mp69genvio6up889qtqag7tht2","2018-11-14 16:34:19","2018-11-14 16:34:40","F","8","155");

INSERT INTO tb_acesso VALUES("156","mp69genvio6up889qtqag7tht2","2018-11-14 16:34:50","2018-11-14 16:35:01","F","8","156");

INSERT INTO tb_acesso VALUES("157","mp69genvio6up889qtqag7tht2","2018-11-14 16:35:17","2018-11-14 16:35:28","F","8","157");

INSERT INTO tb_acesso VALUES("158","mp69genvio6up889qtqag7tht2","2018-11-14 16:35:38","2018-11-14 16:36:08","F","8","158");

INSERT INTO tb_acesso VALUES("159","mp69genvio6up889qtqag7tht2","2018-11-14 16:37:07","2018-11-14 16:58:15","F","8","159");

INSERT INTO tb_acesso VALUES("160","mp69genvio6up889qtqag7tht2","2018-11-14 16:58:23","2018-11-14 17:10:25","F","8","160");

INSERT INTO tb_acesso VALUES("161","mp69genvio6up889qtqag7tht2","2018-11-14 17:10:33","2018-11-14 17:13:40","F","8","161");

INSERT INTO tb_acesso VALUES("162","mp69genvio6up889qtqag7tht2","2018-11-14 17:13:52","2018-11-14 17:26:19","F","8","162");

INSERT INTO tb_acesso VALUES("163","mp69genvio6up889qtqag7tht2","2018-11-14 17:26:26","2018-11-14 17:28:41","F","8","163");

INSERT INTO tb_acesso VALUES("164","mp69genvio6up889qtqag7tht2","2018-11-14 17:28:51","2018-11-14 17:29:32","F","8","164");

INSERT INTO tb_acesso VALUES("165","mp69genvio6up889qtqag7tht2","2018-11-14 17:29:37","2018-11-14 17:36:57","F","8","165");

INSERT INTO tb_acesso VALUES("166","mp69genvio6up889qtqag7tht2","2018-11-14 17:37:13","2018-11-14 17:39:53","F","1","166");

INSERT INTO tb_acesso VALUES("167","mp69genvio6up889qtqag7tht2","2018-11-14 17:39:59","2018-11-14 17:53:58","F","8","167");

INSERT INTO tb_acesso VALUES("168","mp69genvio6up889qtqag7tht2","2018-11-14 17:54:07","2018-11-14 17:57:00","F","8","168");

INSERT INTO tb_acesso VALUES("169","mp69genvio6up889qtqag7tht2","2018-11-14 17:57:07","2018-11-14 17:57:24","F","1","169");

INSERT INTO tb_acesso VALUES("170","mp69genvio6up889qtqag7tht2","2018-11-14 17:57:33","2018-11-14 18:28:23","F","8","170");

INSERT INTO tb_acesso VALUES("171","06kugq0lulqgdfphfbkuobqtl5","2018-11-19 15:15:26","2018-11-19 15:47:46","F","8","171");

INSERT INTO tb_acesso VALUES("172","06kugq0lulqgdfphfbkuobqtl5","2018-11-19 15:51:17","2018-11-19 16:01:32","F","8","172");

INSERT INTO tb_acesso VALUES("173","06kugq0lulqgdfphfbkuobqtl5","2018-11-19 16:01:38","2018-11-19 16:04:12","F","1","173");

INSERT INTO tb_acesso VALUES("174","06kugq0lulqgdfphfbkuobqtl5","2018-11-19 16:04:19","2018-11-19 16:06:41","F","8","174");

INSERT INTO tb_acesso VALUES("175","06kugq0lulqgdfphfbkuobqtl5","2018-11-19 16:06:48","2018-11-19 16:08:22","F","1","175");

INSERT INTO tb_acesso VALUES("176","06kugq0lulqgdfphfbkuobqtl5","2018-11-19 16:08:28","2018-11-19 18:18:39","F","8","176");

INSERT INTO tb_acesso VALUES("177","06kugq0lulqgdfphfbkuobqtl5","2018-11-22 16:55:17","2018-11-23 09:31:57","F","8","177");

INSERT INTO tb_acesso VALUES("178","06kugq0lulqgdfphfbkuobqtl5","2018-11-23 11:55:27","2018-11-23 13:02:25","F","1","178");

INSERT INTO tb_acesso VALUES("179","06kugq0lulqgdfphfbkuobqtl5","2018-11-23 17:34:08","2018-11-23 17:47:20","F","1","179");

INSERT INTO tb_acesso VALUES("180","06kugq0lulqgdfphfbkuobqtl5","2018-11-23 17:51:20","2018-11-23 18:23:43","F","8","180");

INSERT INTO tb_acesso VALUES("181","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-26 10:41:16","2018-11-26 11:12:48","F","8","181");

INSERT INTO tb_acesso VALUES("182","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-26 11:30:57","2018-11-26 14:00:25","F","8","182");

INSERT INTO tb_acesso VALUES("183","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-26 14:00:34","2018-11-26 16:55:25","F","8","183");

INSERT INTO tb_acesso VALUES("184","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-27 15:10:11","2018-11-27 15:43:12","F","8","184");

INSERT INTO tb_acesso VALUES("185","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-27 17:17:36","2018-11-27 17:46:08","F","8","185");

INSERT INTO tb_acesso VALUES("186","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-27 17:46:14","2018-11-27 18:20:47","F","1","186");

INSERT INTO tb_acesso VALUES("187","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-27 18:20:53","2018-11-27 19:21:18","F","8","187");

INSERT INTO tb_acesso VALUES("188","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-28 15:31:13","2018-11-28 15:31:25","F","8","188");

INSERT INTO tb_acesso VALUES("189","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-28 15:31:31","2018-11-28 15:33:50","F","1","189");

INSERT INTO tb_acesso VALUES("190","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-28 15:33:57","2018-11-28 16:05:12","F","8","190");

INSERT INTO tb_acesso VALUES("191","plhm7n4m7n0a0sfn1tnbesbts7","2018-11-28 16:05:18","2018-11-28 18:18:43","F","8","191");

INSERT INTO tb_acesso VALUES("192","795r6t32rtj3vtr98968qmmu81","2018-12-03 11:55:23","2018-12-03 12:01:52","F","8","192");

INSERT INTO tb_acesso VALUES("193","795r6t32rtj3vtr98968qmmu81","2018-12-03 12:01:58","2018-12-03 13:28:06","A","1","193");




DROP TABLE IF EXISTS tb_assinante;


CREATE TABLE `tb_assinante` (
  `co_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'Data da expiração de utilização do sistema',
  `st_dados_complementares` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - inativo',
  `tp_assinante` varchar(1) DEFAULT 'M' COMMENT 'M  - Matriz / F - Filial',
  `co_empresa` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Responsável pelo Assinante',
  PRIMARY KEY (`co_assinante`,`co_empresa`,`co_pessoa`),
  KEY `fk_TB_ASSINANTE_TB_EMPRESA1_idx` (`co_empresa`),
  KEY `fk_TB_ASSINANTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO tb_assinante VALUES("1","2018-07-31 20:11:38","2018-11-19","N","A","F","1","5");

INSERT INTO tb_assinante VALUES("2","2018-07-31 22:39:48","2018-11-19","N","A","M","2","6");

INSERT INTO tb_assinante VALUES("3","2018-08-03 18:42:23","2018-11-19","N","A","F","4","7");

INSERT INTO tb_assinante VALUES("11","2018-08-14 16:45:26","2018-12-16","S","A","M","12","15");

INSERT INTO tb_assinante VALUES("12","2018-08-16 23:59:20","2018-09-30","N","A","M","13","16");

INSERT INTO tb_assinante VALUES("13","2018-08-28 10:59:39","2018-09-12","N","A","M","14","17");

INSERT INTO tb_assinante VALUES("14","2018-09-17 16:45:33","2018-10-02","N","A","M","15","18");




DROP TABLE IF EXISTS tb_assinante_filial;


CREATE TABLE `tb_assinante_filial` (
  `co_assinante_filial` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL COMMENT 'Assinante Filial',
  `co_assinante_matriz` int(11) NOT NULL,
  PRIMARY KEY (`co_assinante_filial`,`co_assinante`,`co_assinante_matriz`),
  KEY `fk_TB_ASSINANTE_FILIAL_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_ASSINANTE_FILIAL_TB_ASSINANTE_MATRIZ1_idx` (`co_assinante_matriz`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO tb_assinante_filial VALUES("9","2018-08-13 11:43:17","3","5");

INSERT INTO tb_assinante_filial VALUES("10","2018-08-13 11:58:27","1","5");




DROP TABLE IF EXISTS tb_assinante_matriz;


CREATE TABLE `tb_assinante_matriz` (
  `co_assinante_matriz` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL COMMENT 'Assinante Matriz',
  PRIMARY KEY (`co_assinante_matriz`,`co_assinante`),
  KEY `fk_TB_ASSINANTE_MATRIZ_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT INTO tb_assinante_matriz VALUES("5","2018-08-13 11:14:39","2");




DROP TABLE IF EXISTS tb_auditoria;


CREATE TABLE `tb_auditoria` (
  `co_auditoria` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `ds_perfil_usuario` text,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_auditoria`,`co_usuario`),
  KEY `fk_TB_AUDITORIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("1","2018-07-31 10:17:46","Master","1");

INSERT INTO tb_auditoria VALUES("2","2018-07-31 10:17:47","Master","1");

INSERT INTO tb_auditoria VALUES("3","2018-07-31 10:17:48","Master","1");

INSERT INTO tb_auditoria VALUES("4","2018-07-31 10:51:24","Master","1");

INSERT INTO tb_auditoria VALUES("5","2018-07-31 10:51:25","Master","1");

INSERT INTO tb_auditoria VALUES("6","2018-07-31 10:51:25","Master","1");

INSERT INTO tb_auditoria VALUES("7","2018-07-31 10:51:26","Master","1");

INSERT INTO tb_auditoria VALUES("8","2018-07-31 10:51:26","Master","1");

INSERT INTO tb_auditoria VALUES("9","2018-07-31 10:52:56","Master","1");

INSERT INTO tb_auditoria VALUES("10","2018-07-31 10:52:56","Master","1");

INSERT INTO tb_auditoria VALUES("11","2018-07-31 10:52:57","Master","1");

INSERT INTO tb_auditoria VALUES("12","2018-07-31 10:52:57","Master","1");

INSERT INTO tb_auditoria VALUES("13","2018-07-31 10:52:57","Master","1");

INSERT INTO tb_auditoria VALUES("14","2018-07-31 10:53:52","Master","1");

INSERT INTO tb_auditoria VALUES("15","2018-07-31 10:53:53","Master","1");

INSERT INTO tb_auditoria VALUES("16","2018-07-31 10:53:53","Master","1");

INSERT INTO tb_auditoria VALUES("17","2018-07-31 10:54:10","Master","1");

INSERT INTO tb_auditoria VALUES("18","2018-07-31 10:54:11","Master","1");

INSERT INTO tb_auditoria VALUES("19","2018-07-31 10:54:11","Master","1");

INSERT INTO tb_auditoria VALUES("20","2018-07-31 10:54:11","Master","1");

INSERT INTO tb_auditoria VALUES("21","2018-07-31 10:54:28","Master","1");

INSERT INTO tb_auditoria VALUES("22","2018-07-31 10:54:28","Master","1");

INSERT INTO tb_auditoria VALUES("23","2018-07-31 10:54:29","Master","1");

INSERT INTO tb_auditoria VALUES("24","2018-07-31 10:54:29","Master","1");

INSERT INTO tb_auditoria VALUES("25","2018-07-31 12:09:40","Master","1");

INSERT INTO tb_auditoria VALUES("26","2018-07-31 12:09:41","Master","1");

INSERT INTO tb_auditoria VALUES("27","2018-07-31 12:09:41","Master","1");

INSERT INTO tb_auditoria VALUES("28","2018-07-31 12:09:42","Master","1");

INSERT INTO tb_auditoria VALUES("29","2018-07-31 12:09:51","Master","1");

INSERT INTO tb_auditoria VALUES("30","2018-07-31 12:09:52","Master","1");

INSERT INTO tb_auditoria VALUES("31","2018-07-31 12:09:52","Master","1");

INSERT INTO tb_auditoria VALUES("32","2018-07-31 12:09:53","Master","1");

INSERT INTO tb_auditoria VALUES("33","2018-07-31 12:11:56","Master","1");

INSERT INTO tb_auditoria VALUES("34","2018-07-31 12:11:57","Master","1");

INSERT INTO tb_auditoria VALUES("35","2018-07-31 12:11:57","Master","1");

INSERT INTO tb_auditoria VALUES("36","2018-07-31 12:11:58","Master","1");

INSERT INTO tb_auditoria VALUES("40","2018-07-31 20:11:38","Master","1");

INSERT INTO tb_auditoria VALUES("41","2018-07-31 22:30:11","Master","1");

INSERT INTO tb_auditoria VALUES("42","2018-07-31 22:35:29","Master","1");

INSERT INTO tb_auditoria VALUES("43","2018-07-31 22:37:25","Master","1");

INSERT INTO tb_auditoria VALUES("44","2018-07-31 22:39:48","Master","1");

INSERT INTO tb_auditoria VALUES("45","2018-08-03 16:57:35","Master","1");

INSERT INTO tb_auditoria VALUES("46","2018-08-03 17:42:13","Master","1");

INSERT INTO tb_auditoria VALUES("49","2018-08-03 17:46:53","Master","1");

INSERT INTO tb_auditoria VALUES("50","2018-08-03 18:42:23","Master","1");

INSERT INTO tb_auditoria VALUES("51","2018-08-13 11:05:29","Master","1");

INSERT INTO tb_auditoria VALUES("55","2018-08-13 11:09:58","Master","1");

INSERT INTO tb_auditoria VALUES("56","2018-08-13 11:12:01","Master","1");

INSERT INTO tb_auditoria VALUES("57","2018-08-13 11:14:39","Master","1");

INSERT INTO tb_auditoria VALUES("58","2018-08-13 11:29:09","Master","1");

INSERT INTO tb_auditoria VALUES("59","2018-08-13 11:34:25","Master","1");

INSERT INTO tb_auditoria VALUES("65","2018-08-13 11:39:36","Master","1");

INSERT INTO tb_auditoria VALUES("72","2018-08-13 11:43:17","Master","1");

INSERT INTO tb_auditoria VALUES("73","2018-08-13 11:43:28","Master","1");

INSERT INTO tb_auditoria VALUES("74","2018-08-13 11:44:07","Master","1");

INSERT INTO tb_auditoria VALUES("75","2018-08-13 11:58:27","Master","1");

INSERT INTO tb_auditoria VALUES("76","2018-08-13 16:52:06","Master","1");

INSERT INTO tb_auditoria VALUES("80","2018-08-13 17:17:36","Master","1");

INSERT INTO tb_auditoria VALUES("81","2018-08-13 17:22:06","Master","1");

INSERT INTO tb_auditoria VALUES("83","2018-08-13 22:07:54","Master","1");

INSERT INTO tb_auditoria VALUES("85","2018-08-13 22:41:20","Master","1");

INSERT INTO tb_auditoria VALUES("86","2018-08-13 22:42:22","Master","1");

INSERT INTO tb_auditoria VALUES("87","2018-08-13 22:42:50","Master","1");

INSERT INTO tb_auditoria VALUES("88","2018-08-13 22:44:47","Master","1");

INSERT INTO tb_auditoria VALUES("89","2018-08-13 22:48:15","Master","1");

INSERT INTO tb_auditoria VALUES("90","2018-08-14 11:06:56","Master","1");

INSERT INTO tb_auditoria VALUES("91","2018-08-14 11:11:20","Master","1");

INSERT INTO tb_auditoria VALUES("92","2018-08-14 11:29:05","Via Site","0");

INSERT INTO tb_auditoria VALUES("93","2018-08-14 11:35:55","Via Site","0");

INSERT INTO tb_auditoria VALUES("94","2018-08-14 11:40:17","Master","1");

INSERT INTO tb_auditoria VALUES("95","2018-08-14 11:40:56","Via Site","0");

INSERT INTO tb_auditoria VALUES("96","2018-08-14 11:41:23","Via Site","0");

INSERT INTO tb_auditoria VALUES("97","2018-08-14 11:41:31","Via Site","0");

INSERT INTO tb_auditoria VALUES("98","2018-08-14 11:41:55","Via Site","0");

INSERT INTO tb_auditoria VALUES("99","2018-08-14 11:42:02","Via Site","0");

INSERT INTO tb_auditoria VALUES("100","2018-08-14 11:42:13","Via Site","0");

INSERT INTO tb_auditoria VALUES("101","2018-08-14 11:42:37","Via Site","0");

INSERT INTO tb_auditoria VALUES("102","2018-08-14 11:43:31","Via Site","0");

INSERT INTO tb_auditoria VALUES("103","2018-08-14 11:44:55","Via Site","0");

INSERT INTO tb_auditoria VALUES("104","2018-08-14 11:46:36","Via Site","0");

INSERT INTO tb_auditoria VALUES("105","2018-08-14 11:46:44","Via Site","0");

INSERT INTO tb_auditoria VALUES("106","2018-08-14 11:48:51","Via Site","0");

INSERT INTO tb_auditoria VALUES("107","2018-08-14 12:05:27","Profissional","7");

INSERT INTO tb_auditoria VALUES("108","2018-08-14 16:45:26","Master","1");

INSERT INTO tb_auditoria VALUES("109","2018-08-14 16:46:20","Via Site","0");

INSERT INTO tb_auditoria VALUES("110","2018-08-14 16:47:55","Via Site","0");

INSERT INTO tb_auditoria VALUES("111","2018-08-14 16:48:12","Via Site","0");

INSERT INTO tb_auditoria VALUES("112","2018-08-14 16:48:22","Via Site","0");

INSERT INTO tb_auditoria VALUES("113","2018-08-14 17:27:15","Master","1");

INSERT INTO tb_auditoria VALUES("114","2018-08-15 11:09:54","Master","1");

INSERT INTO tb_auditoria VALUES("115","2018-08-15 11:10:46","Master","1");

INSERT INTO tb_auditoria VALUES("116","2018-08-15 20:22:12","Master","1");

INSERT INTO tb_auditoria VALUES("117","2018-08-15 20:23:17","Master","1");

INSERT INTO tb_auditoria VALUES("118","2018-08-16 23:59:20","Master","1");

INSERT INTO tb_auditoria VALUES("119","2018-08-16 23:59:36","Via Site","0");

INSERT INTO tb_auditoria VALUES("120","2018-08-27 16:22:05","Master","1");

INSERT INTO tb_auditoria VALUES("121","2018-08-27 17:02:45","Gestor","8");

INSERT INTO tb_auditoria VALUES("122","2018-08-27 17:03:19","Gestor","8");

INSERT INTO tb_auditoria VALUES("123","2018-08-27 17:06:21","Gestor","8");

INSERT INTO tb_auditoria VALUES("124","2018-08-27 17:20:13","Gestor","8");

INSERT INTO tb_auditoria VALUES("125","2018-08-27 17:21:24","Gestor","8");

INSERT INTO tb_auditoria VALUES("126","2018-08-27 17:24:27","Gestor","8");

INSERT INTO tb_auditoria VALUES("127","2018-08-27 17:38:29","Gestor","8");

INSERT INTO tb_auditoria VALUES("128","2018-08-27 17:45:51","Gestor","8");

INSERT INTO tb_auditoria VALUES("129","2018-08-28 10:30:16","Master","1");

INSERT INTO tb_auditoria VALUES("130","2018-08-28 10:33:03","Master","1");

INSERT INTO tb_auditoria VALUES("131","2018-08-28 10:35:40","Master","1");

INSERT INTO tb_auditoria VALUES("132","2018-08-28 10:37:59","Master","1");

INSERT INTO tb_auditoria VALUES("135","2018-08-28 10:40:10","Master","1");

INSERT INTO tb_auditoria VALUES("136","2018-08-28 10:44:09","Master","1");

INSERT INTO tb_auditoria VALUES("137","2018-08-28 10:44:26","Master","1");

INSERT INTO tb_auditoria VALUES("138","2018-08-28 10:44:36","Master","1");

INSERT INTO tb_auditoria VALUES("139","2018-08-28 10:44:42","Master","1");

INSERT INTO tb_auditoria VALUES("140","2018-08-28 10:44:48","Master","1");

INSERT INTO tb_auditoria VALUES("142","2018-08-28 10:47:02","Master","1");

INSERT INTO tb_auditoria VALUES("143","2018-08-28 10:47:51","Master","1");

INSERT INTO tb_auditoria VALUES("144","2018-08-28 10:48:45","Master","1");

INSERT INTO tb_auditoria VALUES("145","2018-08-28 10:50:48","Master","1");

INSERT INTO tb_auditoria VALUES("146","2018-08-28 10:51:55","Master","1");

INSERT INTO tb_auditoria VALUES("147","2018-08-28 10:58:10","Master","1");

INSERT INTO tb_auditoria VALUES("148","2018-08-28 10:59:39","Master","1");

INSERT INTO tb_auditoria VALUES("149","2018-08-28 11:00:03","Master","1");

INSERT INTO tb_auditoria VALUES("150","2018-08-28 11:15:51","Master","1");

INSERT INTO tb_auditoria VALUES("151","2018-08-28 11:17:22","Master","1");

INSERT INTO tb_auditoria VALUES("152","2018-08-28 11:17:47","Master","1");

INSERT INTO tb_auditoria VALUES("153","2018-08-28 11:22:48","Gestor","8");

INSERT INTO tb_auditoria VALUES("154","2018-08-28 18:22:02","Master","1");

INSERT INTO tb_auditoria VALUES("155","2018-09-17 16:45:33","Gestor","8");

INSERT INTO tb_auditoria VALUES("181","2018-09-20 19:31:01","Gestor","8");

INSERT INTO tb_auditoria VALUES("182","2018-09-20 20:39:51","Gestor","8");

INSERT INTO tb_auditoria VALUES("188","2018-09-21 11:33:33","Gestor","8");

INSERT INTO tb_auditoria VALUES("192","2018-09-21 12:09:25","Gestor","8");

INSERT INTO tb_auditoria VALUES("193","2018-09-21 16:46:55","Gestor","8");

INSERT INTO tb_auditoria VALUES("198","2018-09-21 16:55:45","Gestor","8");

INSERT INTO tb_auditoria VALUES("199","2018-09-21 17:43:29","Gestor","8");

INSERT INTO tb_auditoria VALUES("200","2018-09-21 17:46:00","Gestor","8");

INSERT INTO tb_auditoria VALUES("201","2018-09-21 18:02:30","Gestor","8");

INSERT INTO tb_auditoria VALUES("202","2018-09-21 18:10:33","Gestor","8");

INSERT INTO tb_auditoria VALUES("203","2018-09-21 18:10:33","Gestor","8");

INSERT INTO tb_auditoria VALUES("204","2018-09-21 18:10:34","Gestor","8");

INSERT INTO tb_auditoria VALUES("205","2018-09-21 18:10:34","Gestor","8");

INSERT INTO tb_auditoria VALUES("206","2018-09-21 18:10:34","Gestor","8");

INSERT INTO tb_auditoria VALUES("207","2018-09-21 20:40:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("208","2018-09-21 20:41:26","Gestor","8");

INSERT INTO tb_auditoria VALUES("209","2018-09-21 21:04:57","Gestor","8");

INSERT INTO tb_auditoria VALUES("210","2018-09-21 21:13:50","Gestor","8");

INSERT INTO tb_auditoria VALUES("211","2018-09-21 21:31:32","Gestor","8");

INSERT INTO tb_auditoria VALUES("217","2018-09-21 21:55:00","Gestor","8");

INSERT INTO tb_auditoria VALUES("229","2018-09-21 22:02:37","Gestor","8");

INSERT INTO tb_auditoria VALUES("230","2018-09-21 22:02:58","Gestor","8");

INSERT INTO tb_auditoria VALUES("231","2018-09-21 22:05:02","Gestor","8");

INSERT INTO tb_auditoria VALUES("232","2018-09-21 22:06:00","Gestor","8");

INSERT INTO tb_auditoria VALUES("233","2018-09-22 11:07:35","Gestor","8");

INSERT INTO tb_auditoria VALUES("234","2018-09-22 11:10:15","Gestor","8");

INSERT INTO tb_auditoria VALUES("235","2018-09-22 11:10:48","Gestor","8");

INSERT INTO tb_auditoria VALUES("236","2018-09-24 18:32:34","Master","1");

INSERT INTO tb_auditoria VALUES("237","2018-09-24 18:33:00","Master","1");

INSERT INTO tb_auditoria VALUES("238","2018-09-24 19:26:26","Gestor","8");

INSERT INTO tb_auditoria VALUES("239","2018-09-24 19:49:37","Gestor","8");

INSERT INTO tb_auditoria VALUES("240","2018-09-24 19:56:15","Gestor","8");

INSERT INTO tb_auditoria VALUES("241","2018-09-24 19:57:38","Gestor","8");

INSERT INTO tb_auditoria VALUES("242","2018-09-24 20:02:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("243","2018-09-24 20:30:13","Gestor","8");

INSERT INTO tb_auditoria VALUES("244","2018-09-24 20:30:42","Gestor","8");

INSERT INTO tb_auditoria VALUES("245","2018-09-24 20:30:48","Gestor","8");

INSERT INTO tb_auditoria VALUES("246","2018-09-25 14:46:55","Master","1");

INSERT INTO tb_auditoria VALUES("247","2018-09-25 20:24:54","Gestor","8");

INSERT INTO tb_auditoria VALUES("248","2018-09-25 20:24:54","Gestor","8");

INSERT INTO tb_auditoria VALUES("249","2018-09-25 20:24:54","Gestor","8");

INSERT INTO tb_auditoria VALUES("250","2018-09-25 20:24:54","Gestor","8");

INSERT INTO tb_auditoria VALUES("251","2018-09-25 20:43:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("252","2018-09-25 20:43:47","Gestor","8");

INSERT INTO tb_auditoria VALUES("253","2018-09-25 20:43:47","Gestor","8");

INSERT INTO tb_auditoria VALUES("254","2018-10-18 19:56:27","Gestor","8");

INSERT INTO tb_auditoria VALUES("255","2018-10-18 19:57:37","Gestor","8");

INSERT INTO tb_auditoria VALUES("256","2018-10-18 19:57:37","Gestor","8");

INSERT INTO tb_auditoria VALUES("257","2018-10-18 19:57:38","Gestor","8");

INSERT INTO tb_auditoria VALUES("258","2018-10-18 19:57:38","Gestor","8");

INSERT INTO tb_auditoria VALUES("259","2018-10-18 20:02:18","Gestor","8");

INSERT INTO tb_auditoria VALUES("260","2018-10-18 20:02:18","Gestor","8");

INSERT INTO tb_auditoria VALUES("261","2018-10-18 20:02:47","Gestor","8");

INSERT INTO tb_auditoria VALUES("262","2018-10-18 20:02:48","Gestor","8");

INSERT INTO tb_auditoria VALUES("263","2018-10-18 20:15:36","Gestor","8");

INSERT INTO tb_auditoria VALUES("264","2018-10-18 20:15:36","Gestor","8");

INSERT INTO tb_auditoria VALUES("265","2018-10-19 11:36:21","Master","1");

INSERT INTO tb_auditoria VALUES("266","2018-10-22 15:12:26","Gestor","8");

INSERT INTO tb_auditoria VALUES("267","2018-10-22 15:12:27","Gestor","8");

INSERT INTO tb_auditoria VALUES("268","2018-10-22 15:14:57","Gestor","8");

INSERT INTO tb_auditoria VALUES("269","2018-10-22 15:14:57","Gestor","8");

INSERT INTO tb_auditoria VALUES("270","2018-10-22 15:37:00","Gestor","8");

INSERT INTO tb_auditoria VALUES("271","2018-10-22 15:37:01","Gestor","8");

INSERT INTO tb_auditoria VALUES("272","2018-10-22 15:37:01","Gestor","8");

INSERT INTO tb_auditoria VALUES("273","2018-10-22 15:39:20","Gestor","8");

INSERT INTO tb_auditoria VALUES("274","2018-10-22 15:39:20","Gestor","8");

INSERT INTO tb_auditoria VALUES("275","2018-10-22 15:39:21","Gestor","8");

INSERT INTO tb_auditoria VALUES("276","2018-10-22 15:39:21","Gestor","8");

INSERT INTO tb_auditoria VALUES("277","2018-10-22 15:44:44","Gestor","8");

INSERT INTO tb_auditoria VALUES("278","2018-10-22 15:44:45","Gestor","8");

INSERT INTO tb_auditoria VALUES("279","2018-10-22 15:44:45","Gestor","8");

INSERT INTO tb_auditoria VALUES("280","2018-10-22 15:44:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("281","2018-10-22 15:44:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("283","2018-10-23 18:55:22","Gestor","8");

INSERT INTO tb_auditoria VALUES("286","2018-10-23 18:59:14","Gestor","8");

INSERT INTO tb_auditoria VALUES("287","2018-10-23 19:01:04","Gestor","8");

INSERT INTO tb_auditoria VALUES("288","2018-10-23 19:05:21","Gestor","8");

INSERT INTO tb_auditoria VALUES("289","2018-10-23 19:06:27","Gestor","8");

INSERT INTO tb_auditoria VALUES("290","2018-10-23 19:07:26","Gestor","8");

INSERT INTO tb_auditoria VALUES("291","2018-10-23 20:56:26","Gestor","8");

INSERT INTO tb_auditoria VALUES("292","2018-10-23 23:24:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("293","2018-10-23 23:28:14","Gestor","8");

INSERT INTO tb_auditoria VALUES("294","2018-10-24 15:27:53","Gestor","8");

INSERT INTO tb_auditoria VALUES("295","2018-10-24 15:33:14","Gestor","8");

INSERT INTO tb_auditoria VALUES("297","2018-10-24 15:38:06","Gestor","8");

INSERT INTO tb_auditoria VALUES("298","2018-10-24 16:10:47","Gestor","8");

INSERT INTO tb_auditoria VALUES("303","2018-10-24 16:15:16","Gestor","8");

INSERT INTO tb_auditoria VALUES("304","2018-10-24 16:18:46","Gestor","8");

INSERT INTO tb_auditoria VALUES("305","2018-10-24 16:22:07","Gestor","8");

INSERT INTO tb_auditoria VALUES("306","2018-10-24 16:22:44","Gestor","8");

INSERT INTO tb_auditoria VALUES("307","2018-10-24 16:33:08","Master","1");

INSERT INTO tb_auditoria VALUES("308","2018-10-24 16:33:24","Master","1");

INSERT INTO tb_auditoria VALUES("309","2018-11-01 15:28:23","Master","1");

INSERT INTO tb_auditoria VALUES("310","2018-11-02 13:36:21","Gestor","8");

INSERT INTO tb_auditoria VALUES("311","2018-11-02 13:36:36","Gestor","8");

INSERT INTO tb_auditoria VALUES("312","2018-11-02 13:37:03","Gestor","8");

INSERT INTO tb_auditoria VALUES("313","2018-11-13 09:44:06","Gestor","8");

INSERT INTO tb_auditoria VALUES("314","2018-11-19 16:02:52","Master","1");

INSERT INTO tb_auditoria VALUES("315","2018-11-19 17:00:51","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("316","2018-11-19 17:17:38","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("317","2018-11-19 17:18:23","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("318","2018-11-23 17:45:38","Master","1");

INSERT INTO tb_auditoria VALUES("319","2018-11-26 11:50:36","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("320","2018-11-26 11:58:10","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("321","2018-11-26 11:58:10","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("322","2018-11-26 11:58:11","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("323","2018-11-26 11:58:11","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("324","2018-11-26 11:58:11","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("325","2018-11-26 11:58:12","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("326","2018-11-26 11:58:12","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("327","2018-11-26 11:58:13","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("328","2018-11-26 12:09:26","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("329","2018-11-26 12:09:26","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("330","2018-11-26 12:09:27","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("331","2018-11-26 12:09:27","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("332","2018-11-26 12:09:27","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("333","2018-11-26 12:09:27","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("334","2018-11-26 12:09:28","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("335","2018-11-26 12:09:28","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("336","2018-11-26 14:55:03","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("337","2018-11-26 14:55:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("338","2018-11-26 14:55:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("339","2018-11-26 14:55:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("340","2018-11-26 14:55:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("341","2018-11-26 14:55:05","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("342","2018-11-26 14:55:05","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("343","2018-11-26 14:55:05","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("344","2018-11-26 14:56:57","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("345","2018-11-26 14:56:58","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("346","2018-11-26 14:56:58","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("347","2018-11-26 14:56:58","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("348","2018-11-26 14:56:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("349","2018-11-26 14:56:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("350","2018-11-26 14:56:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("351","2018-11-26 14:56:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("354","2018-11-26 15:36:55","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("355","2018-11-26 15:37:13","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("356","2018-11-26 15:38:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("357","2018-11-26 15:38:35","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("358","2018-11-26 15:38:53","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("359","2018-11-26 15:39:10","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("360","2018-11-26 15:39:27","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("361","2018-11-26 15:39:47","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("362","2018-11-26 15:40:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("363","2018-11-26 15:40:22","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("364","2018-11-26 16:25:16","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("365","2018-11-28 15:32:07","Master","1");

INSERT INTO tb_auditoria VALUES("366","2018-11-28 15:32:31","Master","1");

INSERT INTO tb_auditoria VALUES("367","2018-11-28 17:43:14","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("368","2018-11-28 17:44:07","Gestor, Colaborador","8");




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=9389 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_itens VALUES("1","","Plano A","no_plano","1");

INSERT INTO tb_auditoria_itens VALUES("2","","1","nu_mes_ativo","1");

INSERT INTO tb_auditoria_itens VALUES("3","","2018-07-31 10:17:46","dt_cadastro","1");

INSERT INTO tb_auditoria_itens VALUES("4","","1","co_plano","3");

INSERT INTO tb_auditoria_itens VALUES("5","","2","co_modulo","3");

INSERT INTO tb_auditoria_itens VALUES("6","","texto","ds_observacao","4");

INSERT INTO tb_auditoria_itens VALUES("7","","30.00","nu_valor","4");

INSERT INTO tb_auditoria_itens VALUES("8","","2018-07-31 10:17:46","dt_cadastro","4");

INSERT INTO tb_auditoria_itens VALUES("9","1","","co_plano","5");

INSERT INTO tb_auditoria_itens VALUES("10","2018-07-31 10:17:46","","dt_cadastro","5");

INSERT INTO tb_auditoria_itens VALUES("11","Plano A","Plano A2","no_plano","5");

INSERT INTO tb_auditoria_itens VALUES("12","1","3","nu_mes_ativo","5");

INSERT INTO tb_auditoria_itens VALUES("13","A","","st_status","5");

INSERT INTO tb_auditoria_itens VALUES("14","1","","co_plano_modulo","6");

INSERT INTO tb_auditoria_itens VALUES("15","1","","co_plano","6");

INSERT INTO tb_auditoria_itens VALUES("16","2","","co_modulo","6");

INSERT INTO tb_auditoria_itens VALUES("17","","1","co_plano","7");

INSERT INTO tb_auditoria_itens VALUES("18","","1","co_modulo","7");

INSERT INTO tb_auditoria_itens VALUES("19","","1","co_plano","8");

INSERT INTO tb_auditoria_itens VALUES("20","","2","co_modulo","8");

INSERT INTO tb_auditoria_itens VALUES("21","","texto3","ds_observacao","9");

INSERT INTO tb_auditoria_itens VALUES("22","","35.00","nu_valor","9");

INSERT INTO tb_auditoria_itens VALUES("23","","2018-07-31 10:51:24","dt_cadastro","9");

INSERT INTO tb_auditoria_itens VALUES("24","","1","co_plano","9");

INSERT INTO tb_auditoria_itens VALUES("25","1","","co_plano","10");

INSERT INTO tb_auditoria_itens VALUES("26","2018-07-31 10:17:46","","dt_cadastro","10");

INSERT INTO tb_auditoria_itens VALUES("27","Plano A2","Plano A2","no_plano","10");

INSERT INTO tb_auditoria_itens VALUES("28","3","1","nu_mes_ativo","10");

INSERT INTO tb_auditoria_itens VALUES("29","A","","st_status","10");

INSERT INTO tb_auditoria_itens VALUES("30","2","","co_plano_modulo","11");

INSERT INTO tb_auditoria_itens VALUES("31","1","","co_plano","11");

INSERT INTO tb_auditoria_itens VALUES("32","1","","co_modulo","11");

INSERT INTO tb_auditoria_itens VALUES("33","3","","co_plano_modulo","11");

INSERT INTO tb_auditoria_itens VALUES("34","1","","co_plano","11");

INSERT INTO tb_auditoria_itens VALUES("35","2","","co_modulo","11");

INSERT INTO tb_auditoria_itens VALUES("36","","1","co_plano","12");

INSERT INTO tb_auditoria_itens VALUES("37","","1","co_modulo","12");

INSERT INTO tb_auditoria_itens VALUES("38","","1","co_plano","13");

INSERT INTO tb_auditoria_itens VALUES("39","","2","co_modulo","13");

INSERT INTO tb_auditoria_itens VALUES("40","","texto3","ds_observacao","14");

INSERT INTO tb_auditoria_itens VALUES("41","","35.00","nu_valor","14");

INSERT INTO tb_auditoria_itens VALUES("42","","2018-07-31 10:52:56","dt_cadastro","14");

INSERT INTO tb_auditoria_itens VALUES("43","","1","co_plano","14");

INSERT INTO tb_auditoria_itens VALUES("44","","Plano A","no_plano","15");

INSERT INTO tb_auditoria_itens VALUES("45","","1","nu_mes_ativo","15");

INSERT INTO tb_auditoria_itens VALUES("46","","2018-07-31 10:53:52","dt_cadastro","15");

INSERT INTO tb_auditoria_itens VALUES("47","","2","co_plano","17");

INSERT INTO tb_auditoria_itens VALUES("48","","2","co_modulo","17");

INSERT INTO tb_auditoria_itens VALUES("49","","","ds_observacao","18");

INSERT INTO tb_auditoria_itens VALUES("50","","30.00","nu_valor","18");

INSERT INTO tb_auditoria_itens VALUES("51","","2018-07-31 10:53:52","dt_cadastro","18");

INSERT INTO tb_auditoria_itens VALUES("52","","2","co_plano","18");

INSERT INTO tb_auditoria_itens VALUES("53","2","","co_plano","19");

INSERT INTO tb_auditoria_itens VALUES("54","2018-07-31 10:53:52","","dt_cadastro","19");

INSERT INTO tb_auditoria_itens VALUES("55","Plano A","Plano A","no_plano","19");

INSERT INTO tb_auditoria_itens VALUES("56","1","1","nu_mes_ativo","19");

INSERT INTO tb_auditoria_itens VALUES("57","A","","st_status","19");

INSERT INTO tb_auditoria_itens VALUES("58","6","","co_plano_modulo","20");

INSERT INTO tb_auditoria_itens VALUES("59","2","","co_plano","20");

INSERT INTO tb_auditoria_itens VALUES("60","2","","co_modulo","20");

INSERT INTO tb_auditoria_itens VALUES("61","","2","co_plano","21");

INSERT INTO tb_auditoria_itens VALUES("62","","2","co_modulo","21");

INSERT INTO tb_auditoria_itens VALUES("63","","","ds_observacao","22");

INSERT INTO tb_auditoria_itens VALUES("64","","35.00","nu_valor","22");

INSERT INTO tb_auditoria_itens VALUES("65","","2018-07-31 10:54:10","dt_cadastro","22");

INSERT INTO tb_auditoria_itens VALUES("66","","2","co_plano","22");

INSERT INTO tb_auditoria_itens VALUES("67","1","","co_plano","23");

INSERT INTO tb_auditoria_itens VALUES("68","2018-07-31 10:17:46","","dt_cadastro","23");

INSERT INTO tb_auditoria_itens VALUES("69","Plano A2","Plano A2","no_plano","23");

INSERT INTO tb_auditoria_itens VALUES("70","1","3","nu_mes_ativo","23");

INSERT INTO tb_auditoria_itens VALUES("71","A","","st_status","23");

INSERT INTO tb_auditoria_itens VALUES("72","4","","co_plano_modulo","24");

INSERT INTO tb_auditoria_itens VALUES("73","1","","co_plano","24");

INSERT INTO tb_auditoria_itens VALUES("74","1","","co_modulo","24");

INSERT INTO tb_auditoria_itens VALUES("75","5","","co_plano_modulo","24");

INSERT INTO tb_auditoria_itens VALUES("76","1","","co_plano","24");

INSERT INTO tb_auditoria_itens VALUES("77","2","","co_modulo","24");

INSERT INTO tb_auditoria_itens VALUES("78","","1","co_plano","25");

INSERT INTO tb_auditoria_itens VALUES("79","","2","co_modulo","25");

INSERT INTO tb_auditoria_itens VALUES("80","","texto3","ds_observacao","26");

INSERT INTO tb_auditoria_itens VALUES("81","","30.00","nu_valor","26");

INSERT INTO tb_auditoria_itens VALUES("82","","2018-07-31 10:54:28","dt_cadastro","26");

INSERT INTO tb_auditoria_itens VALUES("83","","1","co_plano","26");

INSERT INTO tb_auditoria_itens VALUES("84","2","","co_plano","27");

INSERT INTO tb_auditoria_itens VALUES("85","2018-07-31 10:53:52","","dt_cadastro","27");

INSERT INTO tb_auditoria_itens VALUES("86","Plano A","Plano A","no_plano","27");

INSERT INTO tb_auditoria_itens VALUES("87","1","1","nu_mes_ativo","27");

INSERT INTO tb_auditoria_itens VALUES("88","A","A","st_status","27");

INSERT INTO tb_auditoria_itens VALUES("89","7","","co_plano_modulo","28");

INSERT INTO tb_auditoria_itens VALUES("90","2","","co_plano","28");

INSERT INTO tb_auditoria_itens VALUES("91","2","","co_modulo","28");

INSERT INTO tb_auditoria_itens VALUES("92","","2","co_plano","29");

INSERT INTO tb_auditoria_itens VALUES("93","","2","co_modulo","29");

INSERT INTO tb_auditoria_itens VALUES("94","","","ds_observacao","30");

INSERT INTO tb_auditoria_itens VALUES("95","","35.00","nu_valor","30");

INSERT INTO tb_auditoria_itens VALUES("96","","2018-07-31 12:09:40","dt_cadastro","30");

INSERT INTO tb_auditoria_itens VALUES("97","","2","co_plano","30");

INSERT INTO tb_auditoria_itens VALUES("98","2","","co_plano","31");

INSERT INTO tb_auditoria_itens VALUES("99","2018-07-31 10:53:52","","dt_cadastro","31");

INSERT INTO tb_auditoria_itens VALUES("100","Plano A","Plano A","no_plano","31");

INSERT INTO tb_auditoria_itens VALUES("101","1","1","nu_mes_ativo","31");

INSERT INTO tb_auditoria_itens VALUES("102","A","I","st_status","31");

INSERT INTO tb_auditoria_itens VALUES("103","9","","co_plano_modulo","32");

INSERT INTO tb_auditoria_itens VALUES("104","2","","co_plano","32");

INSERT INTO tb_auditoria_itens VALUES("105","2","","co_modulo","32");

INSERT INTO tb_auditoria_itens VALUES("106","","2","co_plano","33");

INSERT INTO tb_auditoria_itens VALUES("107","","2","co_modulo","33");

INSERT INTO tb_auditoria_itens VALUES("108","","","ds_observacao","34");

INSERT INTO tb_auditoria_itens VALUES("109","","35.00","nu_valor","34");

INSERT INTO tb_auditoria_itens VALUES("110","","2018-07-31 12:09:51","dt_cadastro","34");

INSERT INTO tb_auditoria_itens VALUES("111","","2","co_plano","34");

INSERT INTO tb_auditoria_itens VALUES("112","2","","co_plano","35");

INSERT INTO tb_auditoria_itens VALUES("113","2018-07-31 10:53:52","","dt_cadastro","35");

INSERT INTO tb_auditoria_itens VALUES("114","Plano A","Plano A","no_plano","35");

INSERT INTO tb_auditoria_itens VALUES("115","1","1","nu_mes_ativo","35");

INSERT INTO tb_auditoria_itens VALUES("116","I","A","st_status","35");

INSERT INTO tb_auditoria_itens VALUES("117","10","","co_plano_modulo","36");

INSERT INTO tb_auditoria_itens VALUES("118","2","","co_plano","36");

INSERT INTO tb_auditoria_itens VALUES("119","2","","co_modulo","36");

INSERT INTO tb_auditoria_itens VALUES("120","","2","co_plano","37");

INSERT INTO tb_auditoria_itens VALUES("121","","2","co_modulo","37");

INSERT INTO tb_auditoria_itens VALUES("122","","","ds_observacao","38");

INSERT INTO tb_auditoria_itens VALUES("123","","35.00","nu_valor","38");

INSERT INTO tb_auditoria_itens VALUES("124","","2018-07-31 12:11:56","dt_cadastro","38");

INSERT INTO tb_auditoria_itens VALUES("125","","2","co_plano","38");

INSERT INTO tb_auditoria_itens VALUES("141","","leo@mail.com","ds_email","45");

INSERT INTO tb_auditoria_itens VALUES("142","","61993274991","nu_tel1","45");

INSERT INTO tb_auditoria_itens VALUES("143","","novo pedido","no_pessoa","46");

INSERT INTO tb_auditoria_itens VALUES("144","","5","co_contato","46");

INSERT INTO tb_auditoria_itens VALUES("145","","2018-07-31 20:11:38","dt_cadastro","46");

INSERT INTO tb_auditoria_itens VALUES("146","","5","co_pessoa","47");

INSERT INTO tb_auditoria_itens VALUES("147","","2018-07-31 20:11:38","dt_cadastro","47");

INSERT INTO tb_auditoria_itens VALUES("148","","2018-08-15","dt_expiracao","47");

INSERT INTO tb_auditoria_itens VALUES("149","5","","co_contato","48");

INSERT INTO tb_auditoria_itens VALUES("150","61993274991","61993274999","nu_tel1","48");

INSERT INTO tb_auditoria_itens VALUES("151","","","nu_tel2","48");

INSERT INTO tb_auditoria_itens VALUES("152","","","nu_tel3","48");

INSERT INTO tb_auditoria_itens VALUES("153","","","nu_tel_0800","48");

INSERT INTO tb_auditoria_itens VALUES("154","leo@mail.com","leo@mail7.com","ds_email","48");

INSERT INTO tb_auditoria_itens VALUES("155","","","ds_site","48");

INSERT INTO tb_auditoria_itens VALUES("156","5","","co_pessoa","49");

INSERT INTO tb_auditoria_itens VALUES("157","","","nu_cpf","49");

INSERT INTO tb_auditoria_itens VALUES("158","novo pedido","novo pedido","no_pessoa","49");

INSERT INTO tb_auditoria_itens VALUES("159","","","nu_rg","49");

INSERT INTO tb_auditoria_itens VALUES("160","2018-07-31 20:11:38","","dt_cadastro","49");

INSERT INTO tb_auditoria_itens VALUES("161","","","dt_nascimento","49");

INSERT INTO tb_auditoria_itens VALUES("162","","","st_sexo","49");

INSERT INTO tb_auditoria_itens VALUES("163","0","","co_endereco","49");

INSERT INTO tb_auditoria_itens VALUES("164","5","","co_contato","49");

INSERT INTO tb_auditoria_itens VALUES("165","0","","co_imagem","49");

INSERT INTO tb_auditoria_itens VALUES("166","5","","co_contato","50");

INSERT INTO tb_auditoria_itens VALUES("167","61993274999","61993274999","nu_tel1","50");

INSERT INTO tb_auditoria_itens VALUES("168","","","nu_tel2","50");

INSERT INTO tb_auditoria_itens VALUES("169","","","nu_tel3","50");

INSERT INTO tb_auditoria_itens VALUES("170","","","nu_tel_0800","50");

INSERT INTO tb_auditoria_itens VALUES("171","leo@mail7.com","leo@mail7.com","ds_email","50");

INSERT INTO tb_auditoria_itens VALUES("172","","","ds_site","50");

INSERT INTO tb_auditoria_itens VALUES("173","5","","co_pessoa","51");

INSERT INTO tb_auditoria_itens VALUES("174","","","nu_cpf","51");

INSERT INTO tb_auditoria_itens VALUES("175","novo pedido","novo pedido 2","no_pessoa","51");

INSERT INTO tb_auditoria_itens VALUES("176","","","nu_rg","51");

INSERT INTO tb_auditoria_itens VALUES("177","2018-07-31 20:11:38","","dt_cadastro","51");

INSERT INTO tb_auditoria_itens VALUES("178","","","dt_nascimento","51");

INSERT INTO tb_auditoria_itens VALUES("179","","","st_sexo","51");

INSERT INTO tb_auditoria_itens VALUES("180","0","","co_endereco","51");

INSERT INTO tb_auditoria_itens VALUES("181","5","","co_contato","51");

INSERT INTO tb_auditoria_itens VALUES("182","0","","co_imagem","51");

INSERT INTO tb_auditoria_itens VALUES("183","5","","co_contato","52");

INSERT INTO tb_auditoria_itens VALUES("184","61993274999","61993274999","nu_tel1","52");

INSERT INTO tb_auditoria_itens VALUES("185","","","nu_tel2","52");

INSERT INTO tb_auditoria_itens VALUES("186","","","nu_tel3","52");

INSERT INTO tb_auditoria_itens VALUES("187","","","nu_tel_0800","52");

INSERT INTO tb_auditoria_itens VALUES("188","leo@mail7.com","leo@mail7.com","ds_email","52");

INSERT INTO tb_auditoria_itens VALUES("189","","","ds_site","52");

INSERT INTO tb_auditoria_itens VALUES("190","5","","co_pessoa","53");

INSERT INTO tb_auditoria_itens VALUES("191","","","nu_cpf","53");

INSERT INTO tb_auditoria_itens VALUES("192","novo pedido 2","novo pedido 2","no_pessoa","53");

INSERT INTO tb_auditoria_itens VALUES("193","","","nu_rg","53");

INSERT INTO tb_auditoria_itens VALUES("194","2018-07-31 20:11:38","","dt_cadastro","53");

INSERT INTO tb_auditoria_itens VALUES("195","","","dt_nascimento","53");

INSERT INTO tb_auditoria_itens VALUES("196","","","st_sexo","53");

INSERT INTO tb_auditoria_itens VALUES("197","0","","co_endereco","53");

INSERT INTO tb_auditoria_itens VALUES("198","5","","co_contato","53");

INSERT INTO tb_auditoria_itens VALUES("199","0","","co_imagem","53");

INSERT INTO tb_auditoria_itens VALUES("200","","ddssado@mail.com","ds_email","54");

INSERT INTO tb_auditoria_itens VALUES("201","","61995544556","nu_tel1","54");

INSERT INTO tb_auditoria_itens VALUES("202","","Novo asinante","no_pessoa","55");

INSERT INTO tb_auditoria_itens VALUES("203","","6","co_contato","55");

INSERT INTO tb_auditoria_itens VALUES("204","","2018-07-31 22:39:48","dt_cadastro","55");

INSERT INTO tb_auditoria_itens VALUES("205","","6","co_pessoa","56");

INSERT INTO tb_auditoria_itens VALUES("206","","2018-07-31 22:39:48","dt_cadastro","56");

INSERT INTO tb_auditoria_itens VALUES("207","","2018-08-15","dt_expiracao","56");

INSERT INTO tb_auditoria_itens VALUES("208","6","","co_contato","57");

INSERT INTO tb_auditoria_itens VALUES("209","61995544556","61995544556","nu_tel1","57");

INSERT INTO tb_auditoria_itens VALUES("210","","","nu_tel2","57");

INSERT INTO tb_auditoria_itens VALUES("211","","","nu_tel3","57");

INSERT INTO tb_auditoria_itens VALUES("212","","","nu_tel_0800","57");

INSERT INTO tb_auditoria_itens VALUES("213","ddssado@mail.com","ddssado@mail.com","ds_email","57");

INSERT INTO tb_auditoria_itens VALUES("214","","","ds_site","57");

INSERT INTO tb_auditoria_itens VALUES("215","6","","co_pessoa","59");

INSERT INTO tb_auditoria_itens VALUES("216","","","nu_cpf","59");

INSERT INTO tb_auditoria_itens VALUES("217","Novo asinante","Novo asinante 355","no_pessoa","59");

INSERT INTO tb_auditoria_itens VALUES("218","","","nu_rg","59");

INSERT INTO tb_auditoria_itens VALUES("219","2018-07-31 22:39:48","","dt_cadastro","59");

INSERT INTO tb_auditoria_itens VALUES("220","","","dt_nascimento","59");

INSERT INTO tb_auditoria_itens VALUES("221","","","st_sexo","59");

INSERT INTO tb_auditoria_itens VALUES("222","0","","co_endereco","59");

INSERT INTO tb_auditoria_itens VALUES("223","6","","co_contato","59");

INSERT INTO tb_auditoria_itens VALUES("224","0","","co_imagem","59");

INSERT INTO tb_auditoria_itens VALUES("225","6","","co_contato","60");

INSERT INTO tb_auditoria_itens VALUES("226","61995544556","61995544556","nu_tel1","60");

INSERT INTO tb_auditoria_itens VALUES("227","","","nu_tel2","60");

INSERT INTO tb_auditoria_itens VALUES("228","","","nu_tel3","60");

INSERT INTO tb_auditoria_itens VALUES("229","","","nu_tel_0800","60");

INSERT INTO tb_auditoria_itens VALUES("230","ddssado@mail.com","ddssado@mail.com","ds_email","60");

INSERT INTO tb_auditoria_itens VALUES("231","","","ds_site","60");

INSERT INTO tb_auditoria_itens VALUES("232","6","","co_pessoa","62");

INSERT INTO tb_auditoria_itens VALUES("233","","","nu_cpf","62");

INSERT INTO tb_auditoria_itens VALUES("234","Novo asinante 355","Novo asinante 355","no_pessoa","62");

INSERT INTO tb_auditoria_itens VALUES("235","","","nu_rg","62");

INSERT INTO tb_auditoria_itens VALUES("236","2018-07-31 22:39:48","","dt_cadastro","62");

INSERT INTO tb_auditoria_itens VALUES("237","","","dt_nascimento","62");

INSERT INTO tb_auditoria_itens VALUES("238","","","st_sexo","62");

INSERT INTO tb_auditoria_itens VALUES("239","0","","co_endereco","62");

INSERT INTO tb_auditoria_itens VALUES("240","6","","co_contato","62");

INSERT INTO tb_auditoria_itens VALUES("241","0","","co_imagem","62");

INSERT INTO tb_auditoria_itens VALUES("242","2","","co_assinante","63");

INSERT INTO tb_auditoria_itens VALUES("243","2018-07-31 22:39:48","","dt_cadastro","63");

INSERT INTO tb_auditoria_itens VALUES("244","2018-08-15","","dt_expiracao","63");

INSERT INTO tb_auditoria_itens VALUES("245","A","","st_status","63");

INSERT INTO tb_auditoria_itens VALUES("246","M","F","tp_assinante","63");

INSERT INTO tb_auditoria_itens VALUES("247","2","","co_empresa","63");

INSERT INTO tb_auditoria_itens VALUES("248","6","","co_pessoa","63");

INSERT INTO tb_auditoria_itens VALUES("249","","Array","co_assinante","64");

INSERT INTO tb_auditoria_itens VALUES("250","","2018-08-03 17:42:13","dt_cadastro","64");

INSERT INTO tb_auditoria_itens VALUES("251","","1","co_assinante_matriz","65");

INSERT INTO tb_auditoria_itens VALUES("252","","2","co_assinante","65");

INSERT INTO tb_auditoria_itens VALUES("253","","2018-08-03 17:42:13","dt_cadastro","65");

INSERT INTO tb_auditoria_itens VALUES("307","5","","co_contato","76");

INSERT INTO tb_auditoria_itens VALUES("308","61993274999","61993274999","nu_tel1","76");

INSERT INTO tb_auditoria_itens VALUES("309","","","nu_tel2","76");

INSERT INTO tb_auditoria_itens VALUES("310","","","nu_tel3","76");

INSERT INTO tb_auditoria_itens VALUES("311","","","nu_tel_0800","76");

INSERT INTO tb_auditoria_itens VALUES("312","leo@mail7.com","leo@mail7.com","ds_email","76");

INSERT INTO tb_auditoria_itens VALUES("313","","","ds_site","76");

INSERT INTO tb_auditoria_itens VALUES("314","5","","co_pessoa","78");

INSERT INTO tb_auditoria_itens VALUES("315","","","nu_cpf","78");

INSERT INTO tb_auditoria_itens VALUES("316","novo pedido 2","novo pedido 2","no_pessoa","78");

INSERT INTO tb_auditoria_itens VALUES("317","","","nu_rg","78");

INSERT INTO tb_auditoria_itens VALUES("318","2018-07-31 20:11:38","","dt_cadastro","78");

INSERT INTO tb_auditoria_itens VALUES("319","","","dt_nascimento","78");

INSERT INTO tb_auditoria_itens VALUES("320","","","st_sexo","78");

INSERT INTO tb_auditoria_itens VALUES("321","0","","co_endereco","78");

INSERT INTO tb_auditoria_itens VALUES("322","5","","co_contato","78");

INSERT INTO tb_auditoria_itens VALUES("323","0","","co_imagem","78");

INSERT INTO tb_auditoria_itens VALUES("324","1","","co_assinante","79");

INSERT INTO tb_auditoria_itens VALUES("325","2018-07-31 20:11:38","","dt_cadastro","79");

INSERT INTO tb_auditoria_itens VALUES("326","2018-08-15","","dt_expiracao","79");

INSERT INTO tb_auditoria_itens VALUES("327","A","","st_status","79");

INSERT INTO tb_auditoria_itens VALUES("328","M","F","tp_assinante","79");

INSERT INTO tb_auditoria_itens VALUES("329","1","","co_empresa","79");

INSERT INTO tb_auditoria_itens VALUES("330","5","","co_pessoa","79");

INSERT INTO tb_auditoria_itens VALUES("331","","2","co_assinante","80");

INSERT INTO tb_auditoria_itens VALUES("332","","2018-08-03 17:46:53","dt_cadastro","80");

INSERT INTO tb_auditoria_itens VALUES("333","","3","co_assinante_matriz","81");

INSERT INTO tb_auditoria_itens VALUES("334","","1","co_assinante","81");

INSERT INTO tb_auditoria_itens VALUES("335","","2018-08-03 17:46:53","dt_cadastro","81");

INSERT INTO tb_auditoria_itens VALUES("336","","leo@mail.com","ds_email","82");

INSERT INTO tb_auditoria_itens VALUES("337","","33333333333","nu_tel1","82");

INSERT INTO tb_auditoria_itens VALUES("338","","Novo asinante 355","no_pessoa","83");

INSERT INTO tb_auditoria_itens VALUES("339","","7","co_contato","83");

INSERT INTO tb_auditoria_itens VALUES("340","","2018-08-03 18:42:23","dt_cadastro","83");

INSERT INTO tb_auditoria_itens VALUES("341","","Salão 1023","no_fantasia","84");

INSERT INTO tb_auditoria_itens VALUES("342","","2018-08-03 18:42:23","dt_cadastro","84");

INSERT INTO tb_auditoria_itens VALUES("343","","F","tp_assinante","85");

INSERT INTO tb_auditoria_itens VALUES("344","","7","co_pessoa","85");

INSERT INTO tb_auditoria_itens VALUES("345","","4","co_empresa","85");

INSERT INTO tb_auditoria_itens VALUES("346","","2018-08-03 18:42:23","dt_cadastro","85");

INSERT INTO tb_auditoria_itens VALUES("347","","2018-08-18","dt_expiracao","85");

INSERT INTO tb_auditoria_itens VALUES("348","7","","co_contato","86");

INSERT INTO tb_auditoria_itens VALUES("349","33333333333","33333333333","nu_tel1","86");

INSERT INTO tb_auditoria_itens VALUES("350","","","nu_tel2","86");

INSERT INTO tb_auditoria_itens VALUES("351","","","nu_tel3","86");

INSERT INTO tb_auditoria_itens VALUES("352","","","nu_tel_0800","86");

INSERT INTO tb_auditoria_itens VALUES("353","leo@mail.com","leo@mail.com","ds_email","86");

INSERT INTO tb_auditoria_itens VALUES("354","","","ds_site","86");

INSERT INTO tb_auditoria_itens VALUES("355","7","","co_pessoa","88");

INSERT INTO tb_auditoria_itens VALUES("356","","","nu_cpf","88");

INSERT INTO tb_auditoria_itens VALUES("357","Novo asinante 355","Novo asinante 355","no_pessoa","88");

INSERT INTO tb_auditoria_itens VALUES("358","","","nu_rg","88");

INSERT INTO tb_auditoria_itens VALUES("359","2018-08-03 18:42:23","","dt_cadastro","88");

INSERT INTO tb_auditoria_itens VALUES("360","","","dt_nascimento","88");

INSERT INTO tb_auditoria_itens VALUES("361","","","st_sexo","88");

INSERT INTO tb_auditoria_itens VALUES("362","0","","co_endereco","88");

INSERT INTO tb_auditoria_itens VALUES("363","7","","co_contato","88");

INSERT INTO tb_auditoria_itens VALUES("364","0","","co_imagem","88");

INSERT INTO tb_auditoria_itens VALUES("365","3","","co_assinante","89");

INSERT INTO tb_auditoria_itens VALUES("366","2018-08-03 18:42:23","","dt_cadastro","89");

INSERT INTO tb_auditoria_itens VALUES("367","2018-08-18","","dt_expiracao","89");

INSERT INTO tb_auditoria_itens VALUES("368","A","","st_status","89");

INSERT INTO tb_auditoria_itens VALUES("369","F","F","tp_assinante","89");

INSERT INTO tb_auditoria_itens VALUES("370","4","","co_empresa","89");

INSERT INTO tb_auditoria_itens VALUES("371","7","","co_pessoa","89");

INSERT INTO tb_auditoria_itens VALUES("372","","","co_assinante","90");

INSERT INTO tb_auditoria_itens VALUES("373","","2018-08-13 11:05:29","dt_cadastro","90");

INSERT INTO tb_auditoria_itens VALUES("374","","4","co_assinante_matriz","91");

INSERT INTO tb_auditoria_itens VALUES("375","","3","co_assinante","91");

INSERT INTO tb_auditoria_itens VALUES("376","","2018-08-13 11:05:29","dt_cadastro","91");

INSERT INTO tb_auditoria_itens VALUES("449","5","","co_contato","104");

INSERT INTO tb_auditoria_itens VALUES("450","61993274999","61993274999","nu_tel1","104");

INSERT INTO tb_auditoria_itens VALUES("451","","","nu_tel2","104");

INSERT INTO tb_auditoria_itens VALUES("452","","","nu_tel3","104");

INSERT INTO tb_auditoria_itens VALUES("453","","","nu_tel_0800","104");

INSERT INTO tb_auditoria_itens VALUES("454","leo@mail7.com","leo@mail7.com","ds_email","104");

INSERT INTO tb_auditoria_itens VALUES("455","","","ds_site","104");

INSERT INTO tb_auditoria_itens VALUES("456","5","","co_pessoa","106");

INSERT INTO tb_auditoria_itens VALUES("457","","","nu_cpf","106");

INSERT INTO tb_auditoria_itens VALUES("458","novo pedido 2","novo pedido 2","no_pessoa","106");

INSERT INTO tb_auditoria_itens VALUES("459","","","nu_rg","106");

INSERT INTO tb_auditoria_itens VALUES("460","2018-07-31 20:11:38","","dt_cadastro","106");

INSERT INTO tb_auditoria_itens VALUES("461","","","dt_nascimento","106");

INSERT INTO tb_auditoria_itens VALUES("462","","","st_sexo","106");

INSERT INTO tb_auditoria_itens VALUES("463","0","","co_endereco","106");

INSERT INTO tb_auditoria_itens VALUES("464","5","","co_contato","106");

INSERT INTO tb_auditoria_itens VALUES("465","0","","co_imagem","106");

INSERT INTO tb_auditoria_itens VALUES("466","1","","co_assinante","107");

INSERT INTO tb_auditoria_itens VALUES("467","2018-07-31 20:11:38","","dt_cadastro","107");

INSERT INTO tb_auditoria_itens VALUES("468","2018-08-15","","dt_expiracao","107");

INSERT INTO tb_auditoria_itens VALUES("469","A","","st_status","107");

INSERT INTO tb_auditoria_itens VALUES("470","F","F","tp_assinante","107");

INSERT INTO tb_auditoria_itens VALUES("471","1","","co_empresa","107");

INSERT INTO tb_auditoria_itens VALUES("472","5","","co_pessoa","107");

INSERT INTO tb_auditoria_itens VALUES("473","3","","co_assinante_filial","108");

INSERT INTO tb_auditoria_itens VALUES("474","2018-08-03 17:46:53","","dt_cadastro","108");

INSERT INTO tb_auditoria_itens VALUES("475","1","","co_assinante","108");

INSERT INTO tb_auditoria_itens VALUES("476","3","","co_assinante_matriz","108");

INSERT INTO tb_auditoria_itens VALUES("477","7","","co_contato","109");

INSERT INTO tb_auditoria_itens VALUES("478","33333333333","33333333333","nu_tel1","109");

INSERT INTO tb_auditoria_itens VALUES("479","","","nu_tel2","109");

INSERT INTO tb_auditoria_itens VALUES("480","","","nu_tel3","109");

INSERT INTO tb_auditoria_itens VALUES("481","","","nu_tel_0800","109");

INSERT INTO tb_auditoria_itens VALUES("482","leo@mail.com","leo@mail.com","ds_email","109");

INSERT INTO tb_auditoria_itens VALUES("483","","","ds_site","109");

INSERT INTO tb_auditoria_itens VALUES("484","7","","co_pessoa","111");

INSERT INTO tb_auditoria_itens VALUES("485","","","nu_cpf","111");

INSERT INTO tb_auditoria_itens VALUES("486","Novo asinante 355","Novo asinante 355","no_pessoa","111");

INSERT INTO tb_auditoria_itens VALUES("487","","","nu_rg","111");

INSERT INTO tb_auditoria_itens VALUES("488","2018-08-03 18:42:23","","dt_cadastro","111");

INSERT INTO tb_auditoria_itens VALUES("489","","","dt_nascimento","111");

INSERT INTO tb_auditoria_itens VALUES("490","","","st_sexo","111");

INSERT INTO tb_auditoria_itens VALUES("491","0","","co_endereco","111");

INSERT INTO tb_auditoria_itens VALUES("492","7","","co_contato","111");

INSERT INTO tb_auditoria_itens VALUES("493","0","","co_imagem","111");

INSERT INTO tb_auditoria_itens VALUES("494","3","","co_assinante","112");

INSERT INTO tb_auditoria_itens VALUES("495","2018-08-03 18:42:23","","dt_cadastro","112");

INSERT INTO tb_auditoria_itens VALUES("496","2018-08-18","","dt_expiracao","112");

INSERT INTO tb_auditoria_itens VALUES("497","A","","st_status","112");

INSERT INTO tb_auditoria_itens VALUES("498","F","M","tp_assinante","112");

INSERT INTO tb_auditoria_itens VALUES("499","4","","co_empresa","112");

INSERT INTO tb_auditoria_itens VALUES("500","7","","co_pessoa","112");

INSERT INTO tb_auditoria_itens VALUES("501","4","","co_assinante_filial","113");

INSERT INTO tb_auditoria_itens VALUES("502","2018-08-03 10:00:00","","dt_cadastro","113");

INSERT INTO tb_auditoria_itens VALUES("503","3","","co_assinante","113");

INSERT INTO tb_auditoria_itens VALUES("504","3","","co_assinante_matriz","113");

INSERT INTO tb_auditoria_itens VALUES("505","5","","co_contato","114");

INSERT INTO tb_auditoria_itens VALUES("506","61993274999","61993274999","nu_tel1","114");

INSERT INTO tb_auditoria_itens VALUES("507","","","nu_tel2","114");

INSERT INTO tb_auditoria_itens VALUES("508","","","nu_tel3","114");

INSERT INTO tb_auditoria_itens VALUES("509","","","nu_tel_0800","114");

INSERT INTO tb_auditoria_itens VALUES("510","leo@mail7.com","leo@mail7.com","ds_email","114");

INSERT INTO tb_auditoria_itens VALUES("511","","","ds_site","114");

INSERT INTO tb_auditoria_itens VALUES("512","5","","co_pessoa","116");

INSERT INTO tb_auditoria_itens VALUES("513","","","nu_cpf","116");

INSERT INTO tb_auditoria_itens VALUES("514","novo pedido 2","novo pedido 2","no_pessoa","116");

INSERT INTO tb_auditoria_itens VALUES("515","","","nu_rg","116");

INSERT INTO tb_auditoria_itens VALUES("516","2018-07-31 20:11:38","","dt_cadastro","116");

INSERT INTO tb_auditoria_itens VALUES("517","","","dt_nascimento","116");

INSERT INTO tb_auditoria_itens VALUES("518","","","st_sexo","116");

INSERT INTO tb_auditoria_itens VALUES("519","0","","co_endereco","116");

INSERT INTO tb_auditoria_itens VALUES("520","5","","co_contato","116");

INSERT INTO tb_auditoria_itens VALUES("521","0","","co_imagem","116");

INSERT INTO tb_auditoria_itens VALUES("522","1","","co_assinante","117");

INSERT INTO tb_auditoria_itens VALUES("523","2018-07-31 20:11:38","","dt_cadastro","117");

INSERT INTO tb_auditoria_itens VALUES("524","2018-08-15","","dt_expiracao","117");

INSERT INTO tb_auditoria_itens VALUES("525","A","","st_status","117");

INSERT INTO tb_auditoria_itens VALUES("526","M","F","tp_assinante","117");

INSERT INTO tb_auditoria_itens VALUES("527","1","","co_empresa","117");

INSERT INTO tb_auditoria_itens VALUES("528","5","","co_pessoa","117");

INSERT INTO tb_auditoria_itens VALUES("529","","2","co_assinante","118");

INSERT INTO tb_auditoria_itens VALUES("530","","2018-08-13 11:14:39","dt_cadastro","118");

INSERT INTO tb_auditoria_itens VALUES("531","","5","co_assinante_matriz","119");

INSERT INTO tb_auditoria_itens VALUES("532","","1","co_assinante","119");

INSERT INTO tb_auditoria_itens VALUES("533","","2018-08-13 11:14:39","dt_cadastro","119");

INSERT INTO tb_auditoria_itens VALUES("534","7","","co_contato","120");

INSERT INTO tb_auditoria_itens VALUES("535","33333333333","33333333333","nu_tel1","120");

INSERT INTO tb_auditoria_itens VALUES("536","","","nu_tel2","120");

INSERT INTO tb_auditoria_itens VALUES("537","","","nu_tel3","120");

INSERT INTO tb_auditoria_itens VALUES("538","","","nu_tel_0800","120");

INSERT INTO tb_auditoria_itens VALUES("539","leo@mail.com","leo@mail.com","ds_email","120");

INSERT INTO tb_auditoria_itens VALUES("540","","","ds_site","120");

INSERT INTO tb_auditoria_itens VALUES("541","7","","co_pessoa","122");

INSERT INTO tb_auditoria_itens VALUES("542","","","nu_cpf","122");

INSERT INTO tb_auditoria_itens VALUES("543","Novo asinante 355","Novo asinante 355","no_pessoa","122");

INSERT INTO tb_auditoria_itens VALUES("544","","","nu_rg","122");

INSERT INTO tb_auditoria_itens VALUES("545","2018-08-03 18:42:23","","dt_cadastro","122");

INSERT INTO tb_auditoria_itens VALUES("546","","","dt_nascimento","122");

INSERT INTO tb_auditoria_itens VALUES("547","","","st_sexo","122");

INSERT INTO tb_auditoria_itens VALUES("548","0","","co_endereco","122");

INSERT INTO tb_auditoria_itens VALUES("549","7","","co_contato","122");

INSERT INTO tb_auditoria_itens VALUES("550","0","","co_imagem","122");

INSERT INTO tb_auditoria_itens VALUES("551","3","","co_assinante","123");

INSERT INTO tb_auditoria_itens VALUES("552","2018-08-03 18:42:23","","dt_cadastro","123");

INSERT INTO tb_auditoria_itens VALUES("553","2018-08-18","","dt_expiracao","123");

INSERT INTO tb_auditoria_itens VALUES("554","A","","st_status","123");

INSERT INTO tb_auditoria_itens VALUES("555","M","F","tp_assinante","123");

INSERT INTO tb_auditoria_itens VALUES("556","4","","co_empresa","123");

INSERT INTO tb_auditoria_itens VALUES("557","7","","co_pessoa","123");

INSERT INTO tb_auditoria_itens VALUES("558","","2","co_assinante","124");

INSERT INTO tb_auditoria_itens VALUES("559","","2018-08-13 11:29:09","dt_cadastro","124");

INSERT INTO tb_auditoria_itens VALUES("560","","6","co_assinante_matriz","125");

INSERT INTO tb_auditoria_itens VALUES("561","","3","co_assinante","125");

INSERT INTO tb_auditoria_itens VALUES("562","","2018-08-13 11:29:09","dt_cadastro","125");

INSERT INTO tb_auditoria_itens VALUES("563","7","","co_contato","126");

INSERT INTO tb_auditoria_itens VALUES("564","33333333333","33333333333","nu_tel1","126");

INSERT INTO tb_auditoria_itens VALUES("565","","","nu_tel2","126");

INSERT INTO tb_auditoria_itens VALUES("566","","","nu_tel3","126");

INSERT INTO tb_auditoria_itens VALUES("567","","","nu_tel_0800","126");

INSERT INTO tb_auditoria_itens VALUES("568","leo@mail.com","leo@mail.com","ds_email","126");

INSERT INTO tb_auditoria_itens VALUES("569","","","ds_site","126");

INSERT INTO tb_auditoria_itens VALUES("570","7","","co_pessoa","128");

INSERT INTO tb_auditoria_itens VALUES("571","","","nu_cpf","128");

INSERT INTO tb_auditoria_itens VALUES("572","Novo asinante 355","Novo asinante 355","no_pessoa","128");

INSERT INTO tb_auditoria_itens VALUES("573","","","nu_rg","128");

INSERT INTO tb_auditoria_itens VALUES("574","2018-08-03 18:42:23","","dt_cadastro","128");

INSERT INTO tb_auditoria_itens VALUES("575","","","dt_nascimento","128");

INSERT INTO tb_auditoria_itens VALUES("576","","","st_sexo","128");

INSERT INTO tb_auditoria_itens VALUES("577","0","","co_endereco","128");

INSERT INTO tb_auditoria_itens VALUES("578","7","","co_contato","128");

INSERT INTO tb_auditoria_itens VALUES("579","0","","co_imagem","128");

INSERT INTO tb_auditoria_itens VALUES("580","3","","co_assinante","129");

INSERT INTO tb_auditoria_itens VALUES("581","2018-08-03 18:42:23","","dt_cadastro","129");

INSERT INTO tb_auditoria_itens VALUES("582","2018-08-18","","dt_expiracao","129");

INSERT INTO tb_auditoria_itens VALUES("583","A","","st_status","129");

INSERT INTO tb_auditoria_itens VALUES("584","F","M","tp_assinante","129");

INSERT INTO tb_auditoria_itens VALUES("585","4","","co_empresa","129");

INSERT INTO tb_auditoria_itens VALUES("586","7","","co_pessoa","129");

INSERT INTO tb_auditoria_itens VALUES("587","7","","co_assinante_filial","130");

INSERT INTO tb_auditoria_itens VALUES("588","2018-08-13 11:29:09","","dt_cadastro","130");

INSERT INTO tb_auditoria_itens VALUES("589","3","","co_assinante","130");

INSERT INTO tb_auditoria_itens VALUES("590","5","","co_assinante_matriz","130");

INSERT INTO tb_auditoria_itens VALUES("711","7","","co_contato","151");

INSERT INTO tb_auditoria_itens VALUES("712","33333333333","33333333333","nu_tel1","151");

INSERT INTO tb_auditoria_itens VALUES("713","","","nu_tel2","151");

INSERT INTO tb_auditoria_itens VALUES("714","","","nu_tel3","151");

INSERT INTO tb_auditoria_itens VALUES("715","","","nu_tel_0800","151");

INSERT INTO tb_auditoria_itens VALUES("716","leo@mail.com","leo@mail.com","ds_email","151");

INSERT INTO tb_auditoria_itens VALUES("717","","","ds_site","151");

INSERT INTO tb_auditoria_itens VALUES("718","7","","co_pessoa","153");

INSERT INTO tb_auditoria_itens VALUES("719","","","nu_cpf","153");

INSERT INTO tb_auditoria_itens VALUES("720","Novo asinante 355","Novo asinante 355","no_pessoa","153");

INSERT INTO tb_auditoria_itens VALUES("721","","","nu_rg","153");

INSERT INTO tb_auditoria_itens VALUES("722","2018-08-03 18:42:23","","dt_cadastro","153");

INSERT INTO tb_auditoria_itens VALUES("723","","","dt_nascimento","153");

INSERT INTO tb_auditoria_itens VALUES("724","","","st_sexo","153");

INSERT INTO tb_auditoria_itens VALUES("725","0","","co_endereco","153");

INSERT INTO tb_auditoria_itens VALUES("726","7","","co_contato","153");

INSERT INTO tb_auditoria_itens VALUES("727","0","","co_imagem","153");

INSERT INTO tb_auditoria_itens VALUES("728","3","","co_assinante","154");

INSERT INTO tb_auditoria_itens VALUES("729","2018-08-03 18:42:23","","dt_cadastro","154");

INSERT INTO tb_auditoria_itens VALUES("730","2018-08-18","","dt_expiracao","154");

INSERT INTO tb_auditoria_itens VALUES("731","A","","st_status","154");

INSERT INTO tb_auditoria_itens VALUES("732","M","F","tp_assinante","154");

INSERT INTO tb_auditoria_itens VALUES("733","4","","co_empresa","154");

INSERT INTO tb_auditoria_itens VALUES("734","7","","co_pessoa","154");

INSERT INTO tb_auditoria_itens VALUES("735","","3","co_assinante","155");

INSERT INTO tb_auditoria_itens VALUES("736","","2018-08-13 11:39:36","dt_cadastro","155");

INSERT INTO tb_auditoria_itens VALUES("881","7","","co_contato","180");

INSERT INTO tb_auditoria_itens VALUES("882","33333333333","33333333333","nu_tel1","180");

INSERT INTO tb_auditoria_itens VALUES("883","","","nu_tel2","180");

INSERT INTO tb_auditoria_itens VALUES("884","","","nu_tel3","180");

INSERT INTO tb_auditoria_itens VALUES("885","","","nu_tel_0800","180");

INSERT INTO tb_auditoria_itens VALUES("886","leo@mail.com","leo@mail.com","ds_email","180");

INSERT INTO tb_auditoria_itens VALUES("887","","","ds_site","180");

INSERT INTO tb_auditoria_itens VALUES("888","7","","co_pessoa","182");

INSERT INTO tb_auditoria_itens VALUES("889","","","nu_cpf","182");

INSERT INTO tb_auditoria_itens VALUES("890","Novo asinante 355","Novo asinante 355","no_pessoa","182");

INSERT INTO tb_auditoria_itens VALUES("891","","","nu_rg","182");

INSERT INTO tb_auditoria_itens VALUES("892","2018-08-03 18:42:23","","dt_cadastro","182");

INSERT INTO tb_auditoria_itens VALUES("893","","","dt_nascimento","182");

INSERT INTO tb_auditoria_itens VALUES("894","","","st_sexo","182");

INSERT INTO tb_auditoria_itens VALUES("895","0","","co_endereco","182");

INSERT INTO tb_auditoria_itens VALUES("896","7","","co_contato","182");

INSERT INTO tb_auditoria_itens VALUES("897","0","","co_imagem","182");

INSERT INTO tb_auditoria_itens VALUES("898","3","","co_assinante","183");

INSERT INTO tb_auditoria_itens VALUES("899","2018-08-03 18:42:23","","dt_cadastro","183");

INSERT INTO tb_auditoria_itens VALUES("900","2018-08-18","","dt_expiracao","183");

INSERT INTO tb_auditoria_itens VALUES("901","A","","st_status","183");

INSERT INTO tb_auditoria_itens VALUES("902","M","F","tp_assinante","183");

INSERT INTO tb_auditoria_itens VALUES("903","4","","co_empresa","183");

INSERT INTO tb_auditoria_itens VALUES("904","7","","co_pessoa","183");

INSERT INTO tb_auditoria_itens VALUES("905","","5","co_assinante_matriz","184");

INSERT INTO tb_auditoria_itens VALUES("906","","3","co_assinante","184");

INSERT INTO tb_auditoria_itens VALUES("907","","2018-08-13 11:43:17","dt_cadastro","184");

INSERT INTO tb_auditoria_itens VALUES("908","5","","co_contato","185");

INSERT INTO tb_auditoria_itens VALUES("909","61993274999","61993274999","nu_tel1","185");

INSERT INTO tb_auditoria_itens VALUES("910","","","nu_tel2","185");

INSERT INTO tb_auditoria_itens VALUES("911","","","nu_tel3","185");

INSERT INTO tb_auditoria_itens VALUES("912","","","nu_tel_0800","185");

INSERT INTO tb_auditoria_itens VALUES("913","leo@mail7.com","leo@mail7.com","ds_email","185");

INSERT INTO tb_auditoria_itens VALUES("914","","","ds_site","185");

INSERT INTO tb_auditoria_itens VALUES("915","5","","co_pessoa","187");

INSERT INTO tb_auditoria_itens VALUES("916","","","nu_cpf","187");

INSERT INTO tb_auditoria_itens VALUES("917","novo pedido 2","novo pedido 2","no_pessoa","187");

INSERT INTO tb_auditoria_itens VALUES("918","","","nu_rg","187");

INSERT INTO tb_auditoria_itens VALUES("919","2018-07-31 20:11:38","","dt_cadastro","187");

INSERT INTO tb_auditoria_itens VALUES("920","","","dt_nascimento","187");

INSERT INTO tb_auditoria_itens VALUES("921","","","st_sexo","187");

INSERT INTO tb_auditoria_itens VALUES("922","0","","co_endereco","187");

INSERT INTO tb_auditoria_itens VALUES("923","5","","co_contato","187");

INSERT INTO tb_auditoria_itens VALUES("924","0","","co_imagem","187");

INSERT INTO tb_auditoria_itens VALUES("925","1","","co_assinante","188");

INSERT INTO tb_auditoria_itens VALUES("926","2018-07-31 20:11:38","","dt_cadastro","188");

INSERT INTO tb_auditoria_itens VALUES("927","2018-08-15","","dt_expiracao","188");

INSERT INTO tb_auditoria_itens VALUES("928","A","","st_status","188");

INSERT INTO tb_auditoria_itens VALUES("929","F","M","tp_assinante","188");

INSERT INTO tb_auditoria_itens VALUES("930","1","","co_empresa","188");

INSERT INTO tb_auditoria_itens VALUES("931","5","","co_pessoa","188");

INSERT INTO tb_auditoria_itens VALUES("932","6","","co_assinante_filial","189");

INSERT INTO tb_auditoria_itens VALUES("933","2018-08-13 11:14:39","","dt_cadastro","189");

INSERT INTO tb_auditoria_itens VALUES("934","1","","co_assinante","189");

INSERT INTO tb_auditoria_itens VALUES("935","5","","co_assinante_matriz","189");

INSERT INTO tb_auditoria_itens VALUES("936","6","","co_contato","190");

INSERT INTO tb_auditoria_itens VALUES("937","61995544556","61995544556","nu_tel1","190");

INSERT INTO tb_auditoria_itens VALUES("938","","","nu_tel2","190");

INSERT INTO tb_auditoria_itens VALUES("939","","","nu_tel3","190");

INSERT INTO tb_auditoria_itens VALUES("940","","","nu_tel_0800","190");

INSERT INTO tb_auditoria_itens VALUES("941","ddssado@mail.com","ddssado@mail.com","ds_email","190");

INSERT INTO tb_auditoria_itens VALUES("942","","","ds_site","190");

INSERT INTO tb_auditoria_itens VALUES("943","6","","co_pessoa","192");

INSERT INTO tb_auditoria_itens VALUES("944","","","nu_cpf","192");

INSERT INTO tb_auditoria_itens VALUES("945","Novo asinante 355","Novo asinante 355","no_pessoa","192");

INSERT INTO tb_auditoria_itens VALUES("946","","","nu_rg","192");

INSERT INTO tb_auditoria_itens VALUES("947","2018-07-31 22:39:48","","dt_cadastro","192");

INSERT INTO tb_auditoria_itens VALUES("948","","","dt_nascimento","192");

INSERT INTO tb_auditoria_itens VALUES("949","","","st_sexo","192");

INSERT INTO tb_auditoria_itens VALUES("950","0","","co_endereco","192");

INSERT INTO tb_auditoria_itens VALUES("951","6","","co_contato","192");

INSERT INTO tb_auditoria_itens VALUES("952","0","","co_imagem","192");

INSERT INTO tb_auditoria_itens VALUES("953","2","","co_assinante","193");

INSERT INTO tb_auditoria_itens VALUES("954","2018-07-31 22:39:48","","dt_cadastro","193");

INSERT INTO tb_auditoria_itens VALUES("955","2018-08-15","","dt_expiracao","193");

INSERT INTO tb_auditoria_itens VALUES("956","A","","st_status","193");

INSERT INTO tb_auditoria_itens VALUES("957","M","M","tp_assinante","193");

INSERT INTO tb_auditoria_itens VALUES("958","2","","co_empresa","193");

INSERT INTO tb_auditoria_itens VALUES("959","6","","co_pessoa","193");

INSERT INTO tb_auditoria_itens VALUES("960","5","","co_contato","195");

INSERT INTO tb_auditoria_itens VALUES("961","61993274999","61993274999","nu_tel1","195");

INSERT INTO tb_auditoria_itens VALUES("962","","","nu_tel2","195");

INSERT INTO tb_auditoria_itens VALUES("963","","","nu_tel3","195");

INSERT INTO tb_auditoria_itens VALUES("964","","","nu_tel_0800","195");

INSERT INTO tb_auditoria_itens VALUES("965","leo@mail7.com","leo@mail7.com","ds_email","195");

INSERT INTO tb_auditoria_itens VALUES("966","","","ds_site","195");

INSERT INTO tb_auditoria_itens VALUES("967","5","","co_pessoa","197");

INSERT INTO tb_auditoria_itens VALUES("968","","","nu_cpf","197");

INSERT INTO tb_auditoria_itens VALUES("969","novo pedido 2","novo pedido 2","no_pessoa","197");

INSERT INTO tb_auditoria_itens VALUES("970","","","nu_rg","197");

INSERT INTO tb_auditoria_itens VALUES("971","2018-07-31 20:11:38","","dt_cadastro","197");

INSERT INTO tb_auditoria_itens VALUES("972","","","dt_nascimento","197");

INSERT INTO tb_auditoria_itens VALUES("973","","","st_sexo","197");

INSERT INTO tb_auditoria_itens VALUES("974","0","","co_endereco","197");

INSERT INTO tb_auditoria_itens VALUES("975","5","","co_contato","197");

INSERT INTO tb_auditoria_itens VALUES("976","0","","co_imagem","197");

INSERT INTO tb_auditoria_itens VALUES("977","1","","co_assinante","198");

INSERT INTO tb_auditoria_itens VALUES("978","2018-07-31 20:11:38","","dt_cadastro","198");

INSERT INTO tb_auditoria_itens VALUES("979","2018-08-15","","dt_expiracao","198");

INSERT INTO tb_auditoria_itens VALUES("980","A","","st_status","198");

INSERT INTO tb_auditoria_itens VALUES("981","M","F","tp_assinante","198");

INSERT INTO tb_auditoria_itens VALUES("982","1","","co_empresa","198");

INSERT INTO tb_auditoria_itens VALUES("983","5","","co_pessoa","198");

INSERT INTO tb_auditoria_itens VALUES("984","","5","co_assinante_matriz","199");

INSERT INTO tb_auditoria_itens VALUES("985","","1","co_assinante","199");

INSERT INTO tb_auditoria_itens VALUES("986","","2018-08-13 11:58:27","dt_cadastro","199");

INSERT INTO tb_auditoria_itens VALUES("987","","6","co_plano_assinante","200");

INSERT INTO tb_auditoria_itens VALUES("988","","2","co_assinante","200");

INSERT INTO tb_auditoria_itens VALUES("989","","25","nu_profissionais","200");

INSERT INTO tb_auditoria_itens VALUES("990","","2018-08-13 16:52:06","dt_cadastro","200");

INSERT INTO tb_auditoria_itens VALUES("991","","2018-11-22","dt_expiracao","200");

INSERT INTO tb_auditoria_itens VALUES("992","","205.50","nu_valor_assinatura","200");

INSERT INTO tb_auditoria_itens VALUES("1014","","6","co_plano_assinante","204");

INSERT INTO tb_auditoria_itens VALUES("1015","","2","co_assinante","204");

INSERT INTO tb_auditoria_itens VALUES("1016","","17","nu_profissionais","204");

INSERT INTO tb_auditoria_itens VALUES("1017","","1","nu_filiais","204");

INSERT INTO tb_auditoria_itens VALUES("1018","","2018-08-13 17:17:36","dt_cadastro","204");

INSERT INTO tb_auditoria_itens VALUES("1019","","2018-11-22","dt_expiracao","204");

INSERT INTO tb_auditoria_itens VALUES("1020","","219.00","nu_valor_assinatura","204");

INSERT INTO tb_auditoria_itens VALUES("1021","3","","co_assinante","205");

INSERT INTO tb_auditoria_itens VALUES("1022","2018-08-03 18:42:23","","dt_cadastro","205");

INSERT INTO tb_auditoria_itens VALUES("1023","2018-08-18","2018-11-22","dt_expiracao","205");

INSERT INTO tb_auditoria_itens VALUES("1024","A","","st_status","205");

INSERT INTO tb_auditoria_itens VALUES("1025","F","","tp_assinante","205");

INSERT INTO tb_auditoria_itens VALUES("1026","4","","co_empresa","205");

INSERT INTO tb_auditoria_itens VALUES("1027","7","","co_pessoa","205");

INSERT INTO tb_auditoria_itens VALUES("1028","1","","co_assinante","206");

INSERT INTO tb_auditoria_itens VALUES("1029","2018-07-31 20:11:38","","dt_cadastro","206");

INSERT INTO tb_auditoria_itens VALUES("1030","2018-08-15","2018-11-22","dt_expiracao","206");

INSERT INTO tb_auditoria_itens VALUES("1031","A","","st_status","206");

INSERT INTO tb_auditoria_itens VALUES("1032","F","","tp_assinante","206");

INSERT INTO tb_auditoria_itens VALUES("1033","1","","co_empresa","206");

INSERT INTO tb_auditoria_itens VALUES("1034","5","","co_pessoa","206");

INSERT INTO tb_auditoria_itens VALUES("1035","2","","co_assinante","207");

INSERT INTO tb_auditoria_itens VALUES("1036","2018-07-31 22:39:48","","dt_cadastro","207");

INSERT INTO tb_auditoria_itens VALUES("1037","2018-08-22","2018-11-22","dt_expiracao","207");

INSERT INTO tb_auditoria_itens VALUES("1038","A","","st_status","207");

INSERT INTO tb_auditoria_itens VALUES("1039","M","","tp_assinante","207");

INSERT INTO tb_auditoria_itens VALUES("1040","2","","co_empresa","207");

INSERT INTO tb_auditoria_itens VALUES("1041","6","","co_pessoa","207");

INSERT INTO tb_auditoria_itens VALUES("1042","","6","co_plano_assinante","208");

INSERT INTO tb_auditoria_itens VALUES("1043","","2","co_assinante","208");

INSERT INTO tb_auditoria_itens VALUES("1044","","25","nu_profissionais","208");

INSERT INTO tb_auditoria_itens VALUES("1045","","2","nu_filiais","208");

INSERT INTO tb_auditoria_itens VALUES("1046","","2018-08-13 17:22:06","dt_cadastro","208");

INSERT INTO tb_auditoria_itens VALUES("1047","","2018-11-19","dt_expiracao","208");

INSERT INTO tb_auditoria_itens VALUES("1048","","295.50","nu_valor_assinatura","208");

INSERT INTO tb_auditoria_itens VALUES("1049","3","","co_assinante","209");

INSERT INTO tb_auditoria_itens VALUES("1050","2018-08-03 18:42:23","","dt_cadastro","209");

INSERT INTO tb_auditoria_itens VALUES("1051","2018-11-22","2018-11-19","dt_expiracao","209");

INSERT INTO tb_auditoria_itens VALUES("1052","A","","st_status","209");

INSERT INTO tb_auditoria_itens VALUES("1053","F","","tp_assinante","209");

INSERT INTO tb_auditoria_itens VALUES("1054","4","","co_empresa","209");

INSERT INTO tb_auditoria_itens VALUES("1055","7","","co_pessoa","209");

INSERT INTO tb_auditoria_itens VALUES("1056","1","","co_assinante","210");

INSERT INTO tb_auditoria_itens VALUES("1057","2018-07-31 20:11:38","","dt_cadastro","210");

INSERT INTO tb_auditoria_itens VALUES("1058","2018-11-22","2018-11-19","dt_expiracao","210");

INSERT INTO tb_auditoria_itens VALUES("1059","A","","st_status","210");

INSERT INTO tb_auditoria_itens VALUES("1060","F","","tp_assinante","210");

INSERT INTO tb_auditoria_itens VALUES("1061","1","","co_empresa","210");

INSERT INTO tb_auditoria_itens VALUES("1062","5","","co_pessoa","210");

INSERT INTO tb_auditoria_itens VALUES("1063","2","","co_assinante","211");

INSERT INTO tb_auditoria_itens VALUES("1064","2018-07-31 22:39:48","","dt_cadastro","211");

INSERT INTO tb_auditoria_itens VALUES("1065","2018-08-19","2018-11-19","dt_expiracao","211");

INSERT INTO tb_auditoria_itens VALUES("1066","A","","st_status","211");

INSERT INTO tb_auditoria_itens VALUES("1067","M","","tp_assinante","211");

INSERT INTO tb_auditoria_itens VALUES("1068","2","","co_empresa","211");

INSERT INTO tb_auditoria_itens VALUES("1069","6","","co_pessoa","211");

INSERT INTO tb_auditoria_itens VALUES("1082","","leonardomcbessa@gmail.com","ds_email","216");

INSERT INTO tb_auditoria_itens VALUES("1083","","23543654756","nu_tel1","216");

INSERT INTO tb_auditoria_itens VALUES("1084","","Novo asinante 10","no_pessoa","217");

INSERT INTO tb_auditoria_itens VALUES("1085","","9","co_contato","217");

INSERT INTO tb_auditoria_itens VALUES("1086","","2018-08-13 22:07:54","dt_cadastro","217");

INSERT INTO tb_auditoria_itens VALUES("1087","","Novo Esmaltaria 10","no_fantasia","218");

INSERT INTO tb_auditoria_itens VALUES("1088","","2018-08-13 22:07:54","dt_cadastro","218");

INSERT INTO tb_auditoria_itens VALUES("1089","","M","tp_assinante","219");

INSERT INTO tb_auditoria_itens VALUES("1090","","9","co_pessoa","219");

INSERT INTO tb_auditoria_itens VALUES("1091","","6","co_empresa","219");

INSERT INTO tb_auditoria_itens VALUES("1092","","2018-08-13 22:07:54","dt_cadastro","219");

INSERT INTO tb_auditoria_itens VALUES("1093","","2018-08-28","dt_expiracao","219");

INSERT INTO tb_auditoria_itens VALUES("1094","","5","co_assinante","220");

INSERT INTO tb_auditoria_itens VALUES("1095","","9","co_pessoa","220");

INSERT INTO tb_auditoria_itens VALUES("1096","","YJY3DXL4","ds_senha","220");

INSERT INTO tb_auditoria_itens VALUES("1097","","V1VwWk0wUllURFE9","ds_code","220");

INSERT INTO tb_auditoria_itens VALUES("1098","","I","st_status","220");

INSERT INTO tb_auditoria_itens VALUES("1099","","2018-08-13 22:07:54","dt_cadastro","220");

INSERT INTO tb_auditoria_itens VALUES("1118","","leonardomcbessa@gmail.com","ds_email","226");

INSERT INTO tb_auditoria_itens VALUES("1119","","42345346346","nu_tel1","226");

INSERT INTO tb_auditoria_itens VALUES("1120","","Novo asinante 355GG","no_pessoa","227");

INSERT INTO tb_auditoria_itens VALUES("1121","","11","co_contato","227");

INSERT INTO tb_auditoria_itens VALUES("1122","","2018-08-13 22:41:20","dt_cadastro","227");

INSERT INTO tb_auditoria_itens VALUES("1123","","Novo Esmaltaria 10","no_fantasia","228");

INSERT INTO tb_auditoria_itens VALUES("1124","","2018-08-13 22:41:20","dt_cadastro","228");

INSERT INTO tb_auditoria_itens VALUES("1125","","M","tp_assinante","229");

INSERT INTO tb_auditoria_itens VALUES("1126","","11","co_pessoa","229");

INSERT INTO tb_auditoria_itens VALUES("1127","","8","co_empresa","229");

INSERT INTO tb_auditoria_itens VALUES("1128","","2018-08-13 22:41:20","dt_cadastro","229");

INSERT INTO tb_auditoria_itens VALUES("1129","","2018-08-28","dt_expiracao","229");

INSERT INTO tb_auditoria_itens VALUES("1130","","7","co_assinante","230");

INSERT INTO tb_auditoria_itens VALUES("1131","","11","co_pessoa","230");

INSERT INTO tb_auditoria_itens VALUES("1132","","EJM0MXJ1","ds_senha","230");

INSERT INTO tb_auditoria_itens VALUES("1133","","UlVwTk1FMVlTakU9","ds_code","230");

INSERT INTO tb_auditoria_itens VALUES("1134","","I","st_status","230");

INSERT INTO tb_auditoria_itens VALUES("1135","","2018-08-13 22:41:20","dt_cadastro","230");

INSERT INTO tb_auditoria_itens VALUES("1136","","1","co_plano_assinante","231");

INSERT INTO tb_auditoria_itens VALUES("1137","","7","co_assinante","231");

INSERT INTO tb_auditoria_itens VALUES("1138","","3","nu_profissionais","231");

INSERT INTO tb_auditoria_itens VALUES("1139","","0","nu_filiais","231");

INSERT INTO tb_auditoria_itens VALUES("1140","","2018-08-13 22:41:20","dt_cadastro","231");

INSERT INTO tb_auditoria_itens VALUES("1141","","2018-08-28","dt_expiracao","231");

INSERT INTO tb_auditoria_itens VALUES("1142","","0.00","nu_valor_assinatura","231");

INSERT INTO tb_auditoria_itens VALUES("1143","","9","co_plano_assinante","232");

INSERT INTO tb_auditoria_itens VALUES("1144","","5","co_assinante","232");

INSERT INTO tb_auditoria_itens VALUES("1145","","3","nu_profissionais","232");

INSERT INTO tb_auditoria_itens VALUES("1146","","0","nu_filiais","232");

INSERT INTO tb_auditoria_itens VALUES("1147","","2018-08-13 22:42:22","dt_cadastro","232");

INSERT INTO tb_auditoria_itens VALUES("1148","","2018-09-28","dt_expiracao","232");

INSERT INTO tb_auditoria_itens VALUES("1149","","35.00","nu_valor_assinatura","232");

INSERT INTO tb_auditoria_itens VALUES("1150","5","","co_assinante","233");

INSERT INTO tb_auditoria_itens VALUES("1151","2018-08-13 22:07:54","","dt_cadastro","233");

INSERT INTO tb_auditoria_itens VALUES("1152","2018-08-28","2018-09-28","dt_expiracao","233");

INSERT INTO tb_auditoria_itens VALUES("1153","A","","st_status","233");

INSERT INTO tb_auditoria_itens VALUES("1154","M","","tp_assinante","233");

INSERT INTO tb_auditoria_itens VALUES("1155","6","","co_empresa","233");

INSERT INTO tb_auditoria_itens VALUES("1156","9","","co_pessoa","233");

INSERT INTO tb_auditoria_itens VALUES("1157","","9","co_plano_assinante","234");

INSERT INTO tb_auditoria_itens VALUES("1158","","5","co_assinante","234");

INSERT INTO tb_auditoria_itens VALUES("1159","","3","nu_profissionais","234");

INSERT INTO tb_auditoria_itens VALUES("1160","","0","nu_filiais","234");

INSERT INTO tb_auditoria_itens VALUES("1161","","2018-08-13 22:42:50","dt_cadastro","234");

INSERT INTO tb_auditoria_itens VALUES("1162","","2018-10-28","dt_expiracao","234");

INSERT INTO tb_auditoria_itens VALUES("1163","","35.00","nu_valor_assinatura","234");

INSERT INTO tb_auditoria_itens VALUES("1164","5","","co_assinante","235");

INSERT INTO tb_auditoria_itens VALUES("1165","2018-08-13 22:07:54","","dt_cadastro","235");

INSERT INTO tb_auditoria_itens VALUES("1166","2018-09-28","2018-10-28","dt_expiracao","235");

INSERT INTO tb_auditoria_itens VALUES("1167","A","","st_status","235");

INSERT INTO tb_auditoria_itens VALUES("1168","M","","tp_assinante","235");

INSERT INTO tb_auditoria_itens VALUES("1169","6","","co_empresa","235");

INSERT INTO tb_auditoria_itens VALUES("1170","9","","co_pessoa","235");

INSERT INTO tb_auditoria_itens VALUES("1171","","9","co_plano_assinante","236");

INSERT INTO tb_auditoria_itens VALUES("1172","","5","co_assinante","236");

INSERT INTO tb_auditoria_itens VALUES("1173","","3","nu_profissionais","236");

INSERT INTO tb_auditoria_itens VALUES("1174","","0","nu_filiais","236");

INSERT INTO tb_auditoria_itens VALUES("1175","","2018-08-13 22:44:47","dt_cadastro","236");

INSERT INTO tb_auditoria_itens VALUES("1176","","2018-11-28","dt_expiracao","236");

INSERT INTO tb_auditoria_itens VALUES("1177","","35.00","nu_valor_assinatura","236");

INSERT INTO tb_auditoria_itens VALUES("1178","5","","co_assinante","237");

INSERT INTO tb_auditoria_itens VALUES("1179","2018-08-13 22:07:54","","dt_cadastro","237");

INSERT INTO tb_auditoria_itens VALUES("1180","2018-10-28","2018-11-28","dt_expiracao","237");

INSERT INTO tb_auditoria_itens VALUES("1181","A","","st_status","237");

INSERT INTO tb_auditoria_itens VALUES("1182","M","","tp_assinante","237");

INSERT INTO tb_auditoria_itens VALUES("1183","6","","co_empresa","237");

INSERT INTO tb_auditoria_itens VALUES("1184","9","","co_pessoa","237");

INSERT INTO tb_auditoria_itens VALUES("1185","","9","co_plano_assinante","238");

INSERT INTO tb_auditoria_itens VALUES("1186","","5","co_assinante","238");

INSERT INTO tb_auditoria_itens VALUES("1187","","3","nu_profissionais","238");

INSERT INTO tb_auditoria_itens VALUES("1188","","0","nu_filiais","238");

INSERT INTO tb_auditoria_itens VALUES("1189","","2018-08-13 22:48:15","dt_cadastro","238");

INSERT INTO tb_auditoria_itens VALUES("1190","","2018-12-28","dt_expiracao","238");

INSERT INTO tb_auditoria_itens VALUES("1191","","35.00","nu_valor_assinatura","238");

INSERT INTO tb_auditoria_itens VALUES("1192","","leonardomcbessa@gmail.com","ds_email","239");

INSERT INTO tb_auditoria_itens VALUES("1193","","43643643643","nu_tel1","239");

INSERT INTO tb_auditoria_itens VALUES("1194","","Novo asinante 35GR","no_pessoa","240");

INSERT INTO tb_auditoria_itens VALUES("1195","","12","co_contato","240");

INSERT INTO tb_auditoria_itens VALUES("1196","","2018-08-14 11:06:57","dt_cadastro","240");

INSERT INTO tb_auditoria_itens VALUES("1197","","Novo Esmaltaria 88","no_fantasia","241");

INSERT INTO tb_auditoria_itens VALUES("1198","","2018-08-14 11:06:57","dt_cadastro","241");

INSERT INTO tb_auditoria_itens VALUES("1199","","M","tp_assinante","242");

INSERT INTO tb_auditoria_itens VALUES("1200","","12","co_pessoa","242");

INSERT INTO tb_auditoria_itens VALUES("1201","","9","co_empresa","242");

INSERT INTO tb_auditoria_itens VALUES("1202","","2018-08-14 11:06:57","dt_cadastro","242");

INSERT INTO tb_auditoria_itens VALUES("1203","","2018-08-29","dt_expiracao","242");

INSERT INTO tb_auditoria_itens VALUES("1204","","8","co_assinante","243");

INSERT INTO tb_auditoria_itens VALUES("1205","","12","co_pessoa","243");

INSERT INTO tb_auditoria_itens VALUES("1206","","VMO2JVC4","ds_senha","243");

INSERT INTO tb_auditoria_itens VALUES("1207","","VmsxUE1rcFdRelE9","ds_code","243");

INSERT INTO tb_auditoria_itens VALUES("1208","","I","st_status","243");

INSERT INTO tb_auditoria_itens VALUES("1209","","2018-08-14 11:06:57","dt_cadastro","243");

INSERT INTO tb_auditoria_itens VALUES("1210","","1","co_plano_assinante","244");

INSERT INTO tb_auditoria_itens VALUES("1211","","8","co_assinante","244");

INSERT INTO tb_auditoria_itens VALUES("1212","","3","nu_profissionais","244");

INSERT INTO tb_auditoria_itens VALUES("1213","","0","nu_filiais","244");

INSERT INTO tb_auditoria_itens VALUES("1214","","2018-08-14 11:06:57","dt_cadastro","244");

INSERT INTO tb_auditoria_itens VALUES("1215","","2018-08-29","dt_expiracao","244");

INSERT INTO tb_auditoria_itens VALUES("1216","","0.00","nu_valor_assinatura","244");

INSERT INTO tb_auditoria_itens VALUES("1217","","leonardomcbessa@gmail.com","ds_email","245");

INSERT INTO tb_auditoria_itens VALUES("1218","","53454364363","nu_tel1","245");

INSERT INTO tb_auditoria_itens VALUES("1219","","Novo asinante 10grhhh","no_pessoa","246");

INSERT INTO tb_auditoria_itens VALUES("1220","","13","co_contato","246");

INSERT INTO tb_auditoria_itens VALUES("1221","","2018-08-14 11:11:20","dt_cadastro","246");

INSERT INTO tb_auditoria_itens VALUES("1222","","Novo Esmaltaria vdf88","no_fantasia","247");

INSERT INTO tb_auditoria_itens VALUES("1223","","2018-08-14 11:11:20","dt_cadastro","247");

INSERT INTO tb_auditoria_itens VALUES("1224","","M","tp_assinante","248");

INSERT INTO tb_auditoria_itens VALUES("1225","","13","co_pessoa","248");

INSERT INTO tb_auditoria_itens VALUES("1226","","10","co_empresa","248");

INSERT INTO tb_auditoria_itens VALUES("1227","","2018-08-14 11:11:20","dt_cadastro","248");

INSERT INTO tb_auditoria_itens VALUES("1228","","2018-08-29","dt_expiracao","248");

INSERT INTO tb_auditoria_itens VALUES("1229","","9","co_assinante","249");

INSERT INTO tb_auditoria_itens VALUES("1230","","13","co_pessoa","249");

INSERT INTO tb_auditoria_itens VALUES("1231","","VPH8MRY7","ds_senha","249");

INSERT INTO tb_auditoria_itens VALUES("1232","","VmxCSU9FMVNXVGM9","ds_code","249");

INSERT INTO tb_auditoria_itens VALUES("1233","","I","st_status","249");

INSERT INTO tb_auditoria_itens VALUES("1234","","2018-08-14 11:11:20","dt_cadastro","249");

INSERT INTO tb_auditoria_itens VALUES("1235","","1","co_plano_assinante","250");

INSERT INTO tb_auditoria_itens VALUES("1236","","9","co_assinante","250");

INSERT INTO tb_auditoria_itens VALUES("1237","","3","nu_profissionais","250");

INSERT INTO tb_auditoria_itens VALUES("1238","","0","nu_filiais","250");

INSERT INTO tb_auditoria_itens VALUES("1239","","2018-08-14 11:11:20","dt_cadastro","250");

INSERT INTO tb_auditoria_itens VALUES("1240","","2018-08-29","dt_expiracao","250");

INSERT INTO tb_auditoria_itens VALUES("1241","","0.00","nu_valor_assinatura","250");

INSERT INTO tb_auditoria_itens VALUES("1242","6","","co_usuario","251");

INSERT INTO tb_auditoria_itens VALUES("1243","VPH8MRY7","","ds_senha","251");

INSERT INTO tb_auditoria_itens VALUES("1244","VmxCSU9FMVNXVGM9","","ds_code","251");

INSERT INTO tb_auditoria_itens VALUES("1245","I","A","st_status","251");

INSERT INTO tb_auditoria_itens VALUES("1246","2018-08-14 11:11:20","","dt_cadastro","251");

INSERT INTO tb_auditoria_itens VALUES("1247","0","","co_imagem","251");

INSERT INTO tb_auditoria_itens VALUES("1248","13","","co_pessoa","251");

INSERT INTO tb_auditoria_itens VALUES("1249","9","","co_assinante","251");

INSERT INTO tb_auditoria_itens VALUES("1250","6","","co_usuario","252");

INSERT INTO tb_auditoria_itens VALUES("1251","VPH8MRY7","","ds_senha","252");

INSERT INTO tb_auditoria_itens VALUES("1252","VmxCSU9FMVNXVGM9","","ds_code","252");

INSERT INTO tb_auditoria_itens VALUES("1253","A","A","st_status","252");

INSERT INTO tb_auditoria_itens VALUES("1254","2018-08-14 11:11:20","","dt_cadastro","252");

INSERT INTO tb_auditoria_itens VALUES("1255","0","","co_imagem","252");

INSERT INTO tb_auditoria_itens VALUES("1256","13","","co_pessoa","252");

INSERT INTO tb_auditoria_itens VALUES("1257","9","","co_assinante","252");

INSERT INTO tb_auditoria_itens VALUES("1258","","leonardomcbessa@gmail.com","ds_email","253");

INSERT INTO tb_auditoria_itens VALUES("1259","","34643788688","nu_tel1","253");

INSERT INTO tb_auditoria_itens VALUES("1260","","Novo asinante 355","no_pessoa","254");

INSERT INTO tb_auditoria_itens VALUES("1261","","14","co_contato","254");

INSERT INTO tb_auditoria_itens VALUES("1262","","2018-08-14 11:40:17","dt_cadastro","254");

INSERT INTO tb_auditoria_itens VALUES("1263","","Novo Esmaltaria vdf88","no_fantasia","255");

INSERT INTO tb_auditoria_itens VALUES("1264","","2018-08-14 11:40:17","dt_cadastro","255");

INSERT INTO tb_auditoria_itens VALUES("1265","","M","tp_assinante","256");

INSERT INTO tb_auditoria_itens VALUES("1266","","14","co_pessoa","256");

INSERT INTO tb_auditoria_itens VALUES("1267","","11","co_empresa","256");

INSERT INTO tb_auditoria_itens VALUES("1268","","2018-08-14 11:40:17","dt_cadastro","256");

INSERT INTO tb_auditoria_itens VALUES("1269","","2018-08-29","dt_expiracao","256");

INSERT INTO tb_auditoria_itens VALUES("1270","","10","co_assinante","257");

INSERT INTO tb_auditoria_itens VALUES("1271","","14","co_pessoa","257");

INSERT INTO tb_auditoria_itens VALUES("1272","","TCL7YAM3","ds_senha","257");

INSERT INTO tb_auditoria_itens VALUES("1273","","VkVOTU4xbEJUVE09","ds_code","257");

INSERT INTO tb_auditoria_itens VALUES("1274","","I","st_status","257");

INSERT INTO tb_auditoria_itens VALUES("1275","","2018-08-14 11:40:17","dt_cadastro","257");

INSERT INTO tb_auditoria_itens VALUES("1276","","1","co_plano_assinante","258");

INSERT INTO tb_auditoria_itens VALUES("1277","","10","co_assinante","258");

INSERT INTO tb_auditoria_itens VALUES("1278","","3","nu_profissionais","258");

INSERT INTO tb_auditoria_itens VALUES("1279","","0","nu_filiais","258");

INSERT INTO tb_auditoria_itens VALUES("1280","","2018-08-14 11:40:17","dt_cadastro","258");

INSERT INTO tb_auditoria_itens VALUES("1281","","2018-08-29","dt_expiracao","258");

INSERT INTO tb_auditoria_itens VALUES("1282","","0.00","nu_valor_assinatura","258");

INSERT INTO tb_auditoria_itens VALUES("1283","","3","co_perfil","259");

INSERT INTO tb_auditoria_itens VALUES("1284","","7","co_usuario","259");

INSERT INTO tb_auditoria_itens VALUES("1285","7","","co_usuario","271");

INSERT INTO tb_auditoria_itens VALUES("1286","TCL7YAM3","","ds_senha","271");

INSERT INTO tb_auditoria_itens VALUES("1287","VkVOTU4xbEJUVE09","","ds_code","271");

INSERT INTO tb_auditoria_itens VALUES("1288","I","A","st_status","271");

INSERT INTO tb_auditoria_itens VALUES("1289","2018-08-14 11:40:17","","dt_cadastro","271");

INSERT INTO tb_auditoria_itens VALUES("1290","0","","co_imagem","271");

INSERT INTO tb_auditoria_itens VALUES("1291","14","","co_pessoa","271");

INSERT INTO tb_auditoria_itens VALUES("1292","10","","co_assinante","271");

INSERT INTO tb_auditoria_itens VALUES("1293","7","","co_usuario","272");

INSERT INTO tb_auditoria_itens VALUES("1294","TCL7YAM3","","ds_senha","272");

INSERT INTO tb_auditoria_itens VALUES("1295","VkVOTU4xbEJUVE09","","ds_code","272");

INSERT INTO tb_auditoria_itens VALUES("1296","A","A","st_status","272");

INSERT INTO tb_auditoria_itens VALUES("1297","2018-08-14 11:40:17","","dt_cadastro","272");

INSERT INTO tb_auditoria_itens VALUES("1298","0","","co_imagem","272");

INSERT INTO tb_auditoria_itens VALUES("1299","14","","co_pessoa","272");

INSERT INTO tb_auditoria_itens VALUES("1300","10","","co_assinante","272");

INSERT INTO tb_auditoria_itens VALUES("1301","","leonardomcbessa@gmail.com","ds_email","273");

INSERT INTO tb_auditoria_itens VALUES("1302","","43634674774","nu_tel1","273");

INSERT INTO tb_auditoria_itens VALUES("1303","","Novo dono","no_pessoa","274");

INSERT INTO tb_auditoria_itens VALUES("1304","","15","co_contato","274");

INSERT INTO tb_auditoria_itens VALUES("1305","","2018-08-14 16:45:26","dt_cadastro","274");

INSERT INTO tb_auditoria_itens VALUES("1306","","Spa 60","no_fantasia","275");

INSERT INTO tb_auditoria_itens VALUES("1307","","2018-08-14 16:45:26","dt_cadastro","275");

INSERT INTO tb_auditoria_itens VALUES("1308","","M","tp_assinante","276");

INSERT INTO tb_auditoria_itens VALUES("1309","","15","co_pessoa","276");

INSERT INTO tb_auditoria_itens VALUES("1310","","12","co_empresa","276");

INSERT INTO tb_auditoria_itens VALUES("1311","","2018-08-14 16:45:26","dt_cadastro","276");

INSERT INTO tb_auditoria_itens VALUES("1312","","2018-08-29","dt_expiracao","276");

INSERT INTO tb_auditoria_itens VALUES("1313","","11","co_assinante","277");

INSERT INTO tb_auditoria_itens VALUES("1314","","15","co_pessoa","277");

INSERT INTO tb_auditoria_itens VALUES("1315","","PKB9WED8","ds_senha","277");

INSERT INTO tb_auditoria_itens VALUES("1316","","VUV0Q09WZEZSRGc9","ds_code","277");

INSERT INTO tb_auditoria_itens VALUES("1317","","I","st_status","277");

INSERT INTO tb_auditoria_itens VALUES("1318","","2018-08-14 16:45:26","dt_cadastro","277");

INSERT INTO tb_auditoria_itens VALUES("1319","","1","co_plano_assinante","278");

INSERT INTO tb_auditoria_itens VALUES("1320","","11","co_assinante","278");

INSERT INTO tb_auditoria_itens VALUES("1321","","3","nu_profissionais","278");

INSERT INTO tb_auditoria_itens VALUES("1322","","0","nu_filiais","278");

INSERT INTO tb_auditoria_itens VALUES("1323","","2018-08-14 16:45:26","dt_cadastro","278");

INSERT INTO tb_auditoria_itens VALUES("1324","","2018-08-29","dt_expiracao","278");

INSERT INTO tb_auditoria_itens VALUES("1325","","0.00","nu_valor_assinatura","278");

INSERT INTO tb_auditoria_itens VALUES("1326","","2","co_perfil","279");

INSERT INTO tb_auditoria_itens VALUES("1327","","8","co_usuario","279");

INSERT INTO tb_auditoria_itens VALUES("1328","8","","co_usuario","282");

INSERT INTO tb_auditoria_itens VALUES("1329","PKB9WED8","","ds_senha","282");

INSERT INTO tb_auditoria_itens VALUES("1330","VUV0Q09WZEZSRGc9","","ds_code","282");

INSERT INTO tb_auditoria_itens VALUES("1331","I","A","st_status","282");

INSERT INTO tb_auditoria_itens VALUES("1332","2018-08-14 16:45:26","","dt_cadastro","282");

INSERT INTO tb_auditoria_itens VALUES("1333","0","","co_imagem","282");

INSERT INTO tb_auditoria_itens VALUES("1334","15","","co_pessoa","282");

INSERT INTO tb_auditoria_itens VALUES("1335","11","","co_assinante","282");

INSERT INTO tb_auditoria_itens VALUES("1336","8","","co_usuario","283");

INSERT INTO tb_auditoria_itens VALUES("1337","PKB9WED8","","ds_senha","283");

INSERT INTO tb_auditoria_itens VALUES("1338","VUV0Q09WZEZSRGc9","","ds_code","283");

INSERT INTO tb_auditoria_itens VALUES("1339","A","A","st_status","283");

INSERT INTO tb_auditoria_itens VALUES("1340","2018-08-14 16:45:26","","dt_cadastro","283");

INSERT INTO tb_auditoria_itens VALUES("1341","0","","co_imagem","283");

INSERT INTO tb_auditoria_itens VALUES("1342","15","","co_pessoa","283");

INSERT INTO tb_auditoria_itens VALUES("1343","11","","co_assinante","283");

INSERT INTO tb_auditoria_itens VALUES("1344","3","","co_perfil","284");

INSERT INTO tb_auditoria_itens VALUES("1345","Profissional","Colaborador","no_perfil","284");

INSERT INTO tb_auditoria_itens VALUES("1346","A","","st_status","284");

INSERT INTO tb_auditoria_itens VALUES("1347","","novo em folha","no_plano","286");

INSERT INTO tb_auditoria_itens VALUES("1348","","6","nu_mes_ativo","286");

INSERT INTO tb_auditoria_itens VALUES("1349","","A","st_status","286");

INSERT INTO tb_auditoria_itens VALUES("1350","","2018-08-15 11:09:54","dt_cadastro","286");

INSERT INTO tb_auditoria_itens VALUES("1351","","4","co_plano","288");

INSERT INTO tb_auditoria_itens VALUES("1352","","1","co_modulo","288");

INSERT INTO tb_auditoria_itens VALUES("1353","","4","co_plano","289");

INSERT INTO tb_auditoria_itens VALUES("1354","","2","co_modulo","289");

INSERT INTO tb_auditoria_itens VALUES("1355","","fef","ds_observacao","290");

INSERT INTO tb_auditoria_itens VALUES("1356","","60.00","nu_valor","290");

INSERT INTO tb_auditoria_itens VALUES("1357","","2018-08-15 11:09:54","dt_cadastro","290");

INSERT INTO tb_auditoria_itens VALUES("1358","","4","co_plano","290");

INSERT INTO tb_auditoria_itens VALUES("1359","","gdfg rg","no_plano","291");

INSERT INTO tb_auditoria_itens VALUES("1360","","1","nu_mes_ativo","291");

INSERT INTO tb_auditoria_itens VALUES("1361","","A","st_status","291");

INSERT INTO tb_auditoria_itens VALUES("1362","","2018-08-15 11:10:46","dt_cadastro","291");

INSERT INTO tb_auditoria_itens VALUES("1363","","5","co_plano","293");

INSERT INTO tb_auditoria_itens VALUES("1364","","1","co_modulo","293");

INSERT INTO tb_auditoria_itens VALUES("1365","","5","co_plano","294");

INSERT INTO tb_auditoria_itens VALUES("1366","","2","co_modulo","294");

INSERT INTO tb_auditoria_itens VALUES("1367","","","ds_observacao","295");

INSERT INTO tb_auditoria_itens VALUES("1368","","4354.35","nu_valor","295");

INSERT INTO tb_auditoria_itens VALUES("1369","","2018-08-15 11:10:46","dt_cadastro","295");

INSERT INTO tb_auditoria_itens VALUES("1370","","5","co_plano","295");

INSERT INTO tb_auditoria_itens VALUES("1371","2","","co_perfil","296");

INSERT INTO tb_auditoria_itens VALUES("1372","Gestor","Gestor","no_perfil","296");

INSERT INTO tb_auditoria_itens VALUES("1373","A","","st_status","296");

INSERT INTO tb_auditoria_itens VALUES("1374","","2","co_perfil","298");

INSERT INTO tb_auditoria_itens VALUES("1375","","8","co_funcionalidade","298");

INSERT INTO tb_auditoria_itens VALUES("1376","","2","co_perfil","299");

INSERT INTO tb_auditoria_itens VALUES("1377","","7","co_funcionalidade","299");

INSERT INTO tb_auditoria_itens VALUES("1378","","2","co_perfil","300");

INSERT INTO tb_auditoria_itens VALUES("1379","","6","co_funcionalidade","300");

INSERT INTO tb_auditoria_itens VALUES("1380","","2","co_perfil","301");

INSERT INTO tb_auditoria_itens VALUES("1381","","5","co_funcionalidade","301");

INSERT INTO tb_auditoria_itens VALUES("1382","","2","co_perfil","302");

INSERT INTO tb_auditoria_itens VALUES("1383","","4","co_funcionalidade","302");

INSERT INTO tb_auditoria_itens VALUES("1384","3","","co_perfil","303");

INSERT INTO tb_auditoria_itens VALUES("1385","Colaborador","Colaborador","no_perfil","303");

INSERT INTO tb_auditoria_itens VALUES("1386","A","","st_status","303");

INSERT INTO tb_auditoria_itens VALUES("1387","","3","co_perfil","305");

INSERT INTO tb_auditoria_itens VALUES("1388","","6","co_funcionalidade","305");

INSERT INTO tb_auditoria_itens VALUES("1389","","leonardomcbessa@gmail.com","ds_email","306");

INSERT INTO tb_auditoria_itens VALUES("1390","","23425253666","nu_tel1","306");

INSERT INTO tb_auditoria_itens VALUES("1391","","Novo asinante 355GG","no_pessoa","307");

INSERT INTO tb_auditoria_itens VALUES("1392","","16","co_contato","307");

INSERT INTO tb_auditoria_itens VALUES("1393","","2018-08-16 23:59:20","dt_cadastro","307");

INSERT INTO tb_auditoria_itens VALUES("1394","","Novo Esmaltaria 88","no_fantasia","308");

INSERT INTO tb_auditoria_itens VALUES("1395","","2018-08-16 23:59:20","dt_cadastro","308");

INSERT INTO tb_auditoria_itens VALUES("1396","","M","tp_assinante","309");

INSERT INTO tb_auditoria_itens VALUES("1397","","16","co_pessoa","309");

INSERT INTO tb_auditoria_itens VALUES("1398","","13","co_empresa","309");

INSERT INTO tb_auditoria_itens VALUES("1399","","2018-08-16 23:59:20","dt_cadastro","309");

INSERT INTO tb_auditoria_itens VALUES("1400","","2018-08-31","dt_expiracao","309");

INSERT INTO tb_auditoria_itens VALUES("1401","","12","co_assinante","310");

INSERT INTO tb_auditoria_itens VALUES("1402","","16","co_pessoa","310");

INSERT INTO tb_auditoria_itens VALUES("1403","","OMT0PLF6","ds_senha","310");

INSERT INTO tb_auditoria_itens VALUES("1404","","VDAxVU1GQk1Salk9","ds_code","310");

INSERT INTO tb_auditoria_itens VALUES("1405","","I","st_status","310");

INSERT INTO tb_auditoria_itens VALUES("1406","","2018-08-16 23:59:20","dt_cadastro","310");

INSERT INTO tb_auditoria_itens VALUES("1407","","1","co_plano_assinante","311");

INSERT INTO tb_auditoria_itens VALUES("1408","","12","co_assinante","311");

INSERT INTO tb_auditoria_itens VALUES("1409","","3","nu_profissionais","311");

INSERT INTO tb_auditoria_itens VALUES("1410","","0","nu_filiais","311");

INSERT INTO tb_auditoria_itens VALUES("1411","","2018-08-16 23:59:20","dt_cadastro","311");

INSERT INTO tb_auditoria_itens VALUES("1412","","2018-08-31","dt_expiracao","311");

INSERT INTO tb_auditoria_itens VALUES("1413","","0.00","nu_valor_assinatura","311");

INSERT INTO tb_auditoria_itens VALUES("1414","","2","co_perfil","312");

INSERT INTO tb_auditoria_itens VALUES("1415","","9","co_usuario","312");

INSERT INTO tb_auditoria_itens VALUES("1416","9","","co_usuario","313");

INSERT INTO tb_auditoria_itens VALUES("1417","OMT0PLF6","","ds_senha","313");

INSERT INTO tb_auditoria_itens VALUES("1418","VDAxVU1GQk1Salk9","","ds_code","313");

INSERT INTO tb_auditoria_itens VALUES("1419","I","A","st_status","313");

INSERT INTO tb_auditoria_itens VALUES("1420","N","","st_troca_senha","313");

INSERT INTO tb_auditoria_itens VALUES("1421","2018-08-16 23:59:20","","dt_cadastro","313");

INSERT INTO tb_auditoria_itens VALUES("1422","0","","co_imagem","313");

INSERT INTO tb_auditoria_itens VALUES("1423","16","","co_pessoa","313");

INSERT INTO tb_auditoria_itens VALUES("1424","12","","co_assinante","313");

INSERT INTO tb_auditoria_itens VALUES("1425","","Troca Senha","no_funcionalidade","314");

INSERT INTO tb_auditoria_itens VALUES("1426","","12","co_funcionalidade","315");

INSERT INTO tb_auditoria_itens VALUES("1427","","3","co_perfil","315");

INSERT INTO tb_auditoria_itens VALUES("1428","","12","co_funcionalidade","316");

INSERT INTO tb_auditoria_itens VALUES("1429","","2","co_perfil","316");

INSERT INTO tb_auditoria_itens VALUES("1430","8","","co_usuario","317");

INSERT INTO tb_auditoria_itens VALUES("1431","PKB9WED8","teste123","ds_senha","317");

INSERT INTO tb_auditoria_itens VALUES("1432","VUV0Q09WZEZSRGc9","ZEdWemRHVXhNak09","ds_code","317");

INSERT INTO tb_auditoria_itens VALUES("1433","A","","st_status","317");

INSERT INTO tb_auditoria_itens VALUES("1434","N","S","st_troca_senha","317");

INSERT INTO tb_auditoria_itens VALUES("1435","2018-08-14 16:45:26","","dt_cadastro","317");

INSERT INTO tb_auditoria_itens VALUES("1436","0","","co_imagem","317");

INSERT INTO tb_auditoria_itens VALUES("1437","15","","co_pessoa","317");

INSERT INTO tb_auditoria_itens VALUES("1438","11","","co_assinante","317");

INSERT INTO tb_auditoria_itens VALUES("1439","8","","co_usuario","318");

INSERT INTO tb_auditoria_itens VALUES("1440","teste123","teste123","ds_senha","318");

INSERT INTO tb_auditoria_itens VALUES("1441","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","318");

INSERT INTO tb_auditoria_itens VALUES("1442","A","","st_status","318");

INSERT INTO tb_auditoria_itens VALUES("1443","S","S","st_troca_senha","318");

INSERT INTO tb_auditoria_itens VALUES("1444","2018-08-14 16:45:26","","dt_cadastro","318");

INSERT INTO tb_auditoria_itens VALUES("1445","0","","co_imagem","318");

INSERT INTO tb_auditoria_itens VALUES("1446","15","","co_pessoa","318");

INSERT INTO tb_auditoria_itens VALUES("1447","11","","co_assinante","318");

INSERT INTO tb_auditoria_itens VALUES("1448","8","","co_usuario","319");

INSERT INTO tb_auditoria_itens VALUES("1449","teste123","teste123","ds_senha","319");

INSERT INTO tb_auditoria_itens VALUES("1450","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","319");

INSERT INTO tb_auditoria_itens VALUES("1451","A","","st_status","319");

INSERT INTO tb_auditoria_itens VALUES("1452","S","S","st_troca_senha","319");

INSERT INTO tb_auditoria_itens VALUES("1453","2018-08-14 16:45:26","","dt_cadastro","319");

INSERT INTO tb_auditoria_itens VALUES("1454","0","","co_imagem","319");

INSERT INTO tb_auditoria_itens VALUES("1455","15","","co_pessoa","319");

INSERT INTO tb_auditoria_itens VALUES("1456","11","","co_assinante","319");

INSERT INTO tb_auditoria_itens VALUES("1457","8","","co_usuario","320");

INSERT INTO tb_auditoria_itens VALUES("1458","teste123","teste123","ds_senha","320");

INSERT INTO tb_auditoria_itens VALUES("1459","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","320");

INSERT INTO tb_auditoria_itens VALUES("1460","A","","st_status","320");

INSERT INTO tb_auditoria_itens VALUES("1461","N","S","st_troca_senha","320");

INSERT INTO tb_auditoria_itens VALUES("1462","2018-08-14 16:45:26","","dt_cadastro","320");

INSERT INTO tb_auditoria_itens VALUES("1463","0","","co_imagem","320");

INSERT INTO tb_auditoria_itens VALUES("1464","15","","co_pessoa","320");

INSERT INTO tb_auditoria_itens VALUES("1465","11","","co_assinante","320");

INSERT INTO tb_auditoria_itens VALUES("1466","8","","co_usuario","321");

INSERT INTO tb_auditoria_itens VALUES("1467","teste123","teste123","ds_senha","321");

INSERT INTO tb_auditoria_itens VALUES("1468","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","321");

INSERT INTO tb_auditoria_itens VALUES("1469","A","","st_status","321");

INSERT INTO tb_auditoria_itens VALUES("1470","S","S","st_troca_senha","321");

INSERT INTO tb_auditoria_itens VALUES("1471","2018-08-14 16:45:26","","dt_cadastro","321");

INSERT INTO tb_auditoria_itens VALUES("1472","0","","co_imagem","321");

INSERT INTO tb_auditoria_itens VALUES("1473","15","","co_pessoa","321");

INSERT INTO tb_auditoria_itens VALUES("1474","11","","co_assinante","321");

INSERT INTO tb_auditoria_itens VALUES("1475","8","","co_usuario","322");

INSERT INTO tb_auditoria_itens VALUES("1476","teste123","teste123","ds_senha","322");

INSERT INTO tb_auditoria_itens VALUES("1477","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","322");

INSERT INTO tb_auditoria_itens VALUES("1478","A","","st_status","322");

INSERT INTO tb_auditoria_itens VALUES("1479","N","S","st_troca_senha","322");

INSERT INTO tb_auditoria_itens VALUES("1480","2018-08-14 16:45:26","","dt_cadastro","322");

INSERT INTO tb_auditoria_itens VALUES("1481","0","","co_imagem","322");

INSERT INTO tb_auditoria_itens VALUES("1482","15","","co_pessoa","322");

INSERT INTO tb_auditoria_itens VALUES("1483","11","","co_assinante","322");

INSERT INTO tb_auditoria_itens VALUES("1484","8","","co_usuario","323");

INSERT INTO tb_auditoria_itens VALUES("1485","teste123","teste123","ds_senha","323");

INSERT INTO tb_auditoria_itens VALUES("1486","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","323");

INSERT INTO tb_auditoria_itens VALUES("1487","A","","st_status","323");

INSERT INTO tb_auditoria_itens VALUES("1488","N","S","st_troca_senha","323");

INSERT INTO tb_auditoria_itens VALUES("1489","2018-08-14 16:45:26","","dt_cadastro","323");

INSERT INTO tb_auditoria_itens VALUES("1490","0","","co_imagem","323");

INSERT INTO tb_auditoria_itens VALUES("1491","15","","co_pessoa","323");

INSERT INTO tb_auditoria_itens VALUES("1492","11","","co_assinante","323");

INSERT INTO tb_auditoria_itens VALUES("1493","8","","co_usuario","324");

INSERT INTO tb_auditoria_itens VALUES("1494","teste123","teste123","ds_senha","324");

INSERT INTO tb_auditoria_itens VALUES("1495","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","324");

INSERT INTO tb_auditoria_itens VALUES("1496","A","","st_status","324");

INSERT INTO tb_auditoria_itens VALUES("1497","N","S","st_troca_senha","324");

INSERT INTO tb_auditoria_itens VALUES("1498","2018-08-14 16:45:26","","dt_cadastro","324");

INSERT INTO tb_auditoria_itens VALUES("1499","0","","co_imagem","324");

INSERT INTO tb_auditoria_itens VALUES("1500","15","","co_pessoa","324");

INSERT INTO tb_auditoria_itens VALUES("1501","11","","co_assinante","324");

INSERT INTO tb_auditoria_itens VALUES("1502","","novo em folha","no_plano","325");

INSERT INTO tb_auditoria_itens VALUES("1503","","6","nu_mes_ativo","325");

INSERT INTO tb_auditoria_itens VALUES("1504","","A","st_status","325");

INSERT INTO tb_auditoria_itens VALUES("1505","","2018-08-28 10:30:16","dt_cadastro","325");

INSERT INTO tb_auditoria_itens VALUES("1506","","6","co_plano","327");

INSERT INTO tb_auditoria_itens VALUES("1507","","1","co_modulo","327");

INSERT INTO tb_auditoria_itens VALUES("1508","","6","co_plano","328");

INSERT INTO tb_auditoria_itens VALUES("1509","","2","co_modulo","328");

INSERT INTO tb_auditoria_itens VALUES("1510","","","ds_observacao","329");

INSERT INTO tb_auditoria_itens VALUES("1511","","59.00","nu_valor","329");

INSERT INTO tb_auditoria_itens VALUES("1512","","2018-08-28 10:30:16","dt_cadastro","329");

INSERT INTO tb_auditoria_itens VALUES("1513","","6","co_plano","329");

INSERT INTO tb_auditoria_itens VALUES("1514","6","","co_plano","330");

INSERT INTO tb_auditoria_itens VALUES("1515","2018-08-28 10:30:16","","dt_cadastro","330");

INSERT INTO tb_auditoria_itens VALUES("1516","novo em folha","novo em folha","no_plano","330");

INSERT INTO tb_auditoria_itens VALUES("1517","6","6","nu_mes_ativo","330");

INSERT INTO tb_auditoria_itens VALUES("1518","A","A","st_status","330");

INSERT INTO tb_auditoria_itens VALUES("1519","16","","co_plano_modulo","331");

INSERT INTO tb_auditoria_itens VALUES("1520","6","","co_plano","331");

INSERT INTO tb_auditoria_itens VALUES("1521","1","","co_modulo","331");

INSERT INTO tb_auditoria_itens VALUES("1522","17","","co_plano_modulo","331");

INSERT INTO tb_auditoria_itens VALUES("1523","6","","co_plano","331");

INSERT INTO tb_auditoria_itens VALUES("1524","2","","co_modulo","331");

INSERT INTO tb_auditoria_itens VALUES("1525","","6","co_plano","332");

INSERT INTO tb_auditoria_itens VALUES("1526","","1","co_modulo","332");

INSERT INTO tb_auditoria_itens VALUES("1527","","6","co_plano","333");

INSERT INTO tb_auditoria_itens VALUES("1528","","2","co_modulo","333");

INSERT INTO tb_auditoria_itens VALUES("1529","","","ds_observacao","334");

INSERT INTO tb_auditoria_itens VALUES("1530","","59.00","nu_valor","334");

INSERT INTO tb_auditoria_itens VALUES("1531","","2018-08-28 10:33:03","dt_cadastro","334");

INSERT INTO tb_auditoria_itens VALUES("1532","","6","co_plano","334");

INSERT INTO tb_auditoria_itens VALUES("1533","5","","co_plano","335");

INSERT INTO tb_auditoria_itens VALUES("1534","2018-08-15 11:10:46","","dt_cadastro","335");

INSERT INTO tb_auditoria_itens VALUES("1535","gdfg rg","gdfg rg","no_plano","335");

INSERT INTO tb_auditoria_itens VALUES("1536","1","1","nu_mes_ativo","335");

INSERT INTO tb_auditoria_itens VALUES("1537","A","A","st_status","335");

INSERT INTO tb_auditoria_itens VALUES("1538","14","","co_plano_modulo","336");

INSERT INTO tb_auditoria_itens VALUES("1539","5","","co_plano","336");

INSERT INTO tb_auditoria_itens VALUES("1540","1","","co_modulo","336");

INSERT INTO tb_auditoria_itens VALUES("1541","15","","co_plano_modulo","336");

INSERT INTO tb_auditoria_itens VALUES("1542","5","","co_plano","336");

INSERT INTO tb_auditoria_itens VALUES("1543","2","","co_modulo","336");

INSERT INTO tb_auditoria_itens VALUES("1544","","5","co_plano","337");

INSERT INTO tb_auditoria_itens VALUES("1545","","1","co_modulo","337");

INSERT INTO tb_auditoria_itens VALUES("1546","","5","co_plano","338");

INSERT INTO tb_auditoria_itens VALUES("1547","","2","co_modulo","338");

INSERT INTO tb_auditoria_itens VALUES("1548","","","ds_observacao","339");

INSERT INTO tb_auditoria_itens VALUES("1549","","54.99","nu_valor","339");

INSERT INTO tb_auditoria_itens VALUES("1550","","2018-08-28 10:35:40","dt_cadastro","339");

INSERT INTO tb_auditoria_itens VALUES("1551","","5","co_plano","339");

INSERT INTO tb_auditoria_itens VALUES("1552","5","","co_plano","340");

INSERT INTO tb_auditoria_itens VALUES("1553","2018-08-15 11:10:46","","dt_cadastro","340");

INSERT INTO tb_auditoria_itens VALUES("1554","gdfg rg","gdfg rg","no_plano","340");

INSERT INTO tb_auditoria_itens VALUES("1555","1","1","nu_mes_ativo","340");

INSERT INTO tb_auditoria_itens VALUES("1556","A","A","st_status","340");

INSERT INTO tb_auditoria_itens VALUES("1557","20","","co_plano_modulo","341");

INSERT INTO tb_auditoria_itens VALUES("1558","5","","co_plano","341");

INSERT INTO tb_auditoria_itens VALUES("1559","1","","co_modulo","341");

INSERT INTO tb_auditoria_itens VALUES("1560","21","","co_plano_modulo","341");

INSERT INTO tb_auditoria_itens VALUES("1561","5","","co_plano","341");

INSERT INTO tb_auditoria_itens VALUES("1562","2","","co_modulo","341");

INSERT INTO tb_auditoria_itens VALUES("1563","","5","co_plano","342");

INSERT INTO tb_auditoria_itens VALUES("1564","","1","co_modulo","342");

INSERT INTO tb_auditoria_itens VALUES("1565","","5","co_plano","343");

INSERT INTO tb_auditoria_itens VALUES("1566","","2","co_modulo","343");

INSERT INTO tb_auditoria_itens VALUES("1567","","","ds_observacao","344");

INSERT INTO tb_auditoria_itens VALUES("1568","","54.99","nu_valor","344");

INSERT INTO tb_auditoria_itens VALUES("1569","","2018-08-28 10:37:59","dt_cadastro","344");

INSERT INTO tb_auditoria_itens VALUES("1570","","5","co_plano","344");

INSERT INTO tb_auditoria_itens VALUES("1581","5","","co_plano","347");

INSERT INTO tb_auditoria_itens VALUES("1582","2018-08-15 11:10:46","","dt_cadastro","347");

INSERT INTO tb_auditoria_itens VALUES("1583","gdfg rg","gdfg rg","no_plano","347");

INSERT INTO tb_auditoria_itens VALUES("1584","1","1","nu_mes_ativo","347");

INSERT INTO tb_auditoria_itens VALUES("1585","A","A","st_status","347");

INSERT INTO tb_auditoria_itens VALUES("1586","22","","co_plano_modulo","348");

INSERT INTO tb_auditoria_itens VALUES("1587","5","","co_plano","348");

INSERT INTO tb_auditoria_itens VALUES("1588","1","","co_modulo","348");

INSERT INTO tb_auditoria_itens VALUES("1589","23","","co_plano_modulo","348");

INSERT INTO tb_auditoria_itens VALUES("1590","5","","co_plano","348");

INSERT INTO tb_auditoria_itens VALUES("1591","2","","co_modulo","348");

INSERT INTO tb_auditoria_itens VALUES("1592","","5","co_plano","349");

INSERT INTO tb_auditoria_itens VALUES("1593","","1","co_modulo","349");

INSERT INTO tb_auditoria_itens VALUES("1594","","5","co_plano","350");

INSERT INTO tb_auditoria_itens VALUES("1595","","2","co_modulo","350");

INSERT INTO tb_auditoria_itens VALUES("1596","","","ds_observacao","351");

INSERT INTO tb_auditoria_itens VALUES("1597","","54.99","nu_valor","351");

INSERT INTO tb_auditoria_itens VALUES("1598","","2018-08-28 10:40:10","dt_cadastro","351");

INSERT INTO tb_auditoria_itens VALUES("1599","","5","co_plano","351");

INSERT INTO tb_auditoria_itens VALUES("1600","5","","co_plano","352");

INSERT INTO tb_auditoria_itens VALUES("1601","2018-08-15 11:10:46","","dt_cadastro","352");

INSERT INTO tb_auditoria_itens VALUES("1602","gdfg rg","gdfg rg","no_plano","352");

INSERT INTO tb_auditoria_itens VALUES("1603","1","1","nu_mes_ativo","352");

INSERT INTO tb_auditoria_itens VALUES("1604","A","A","st_status","352");

INSERT INTO tb_auditoria_itens VALUES("1605","24","","co_plano_modulo","353");

INSERT INTO tb_auditoria_itens VALUES("1606","5","","co_plano","353");

INSERT INTO tb_auditoria_itens VALUES("1607","1","","co_modulo","353");

INSERT INTO tb_auditoria_itens VALUES("1608","25","","co_plano_modulo","353");

INSERT INTO tb_auditoria_itens VALUES("1609","5","","co_plano","353");

INSERT INTO tb_auditoria_itens VALUES("1610","2","","co_modulo","353");

INSERT INTO tb_auditoria_itens VALUES("1611","","5","co_plano","354");

INSERT INTO tb_auditoria_itens VALUES("1612","","1","co_modulo","354");

INSERT INTO tb_auditoria_itens VALUES("1613","","5","co_plano","355");

INSERT INTO tb_auditoria_itens VALUES("1614","","2","co_modulo","355");

INSERT INTO tb_auditoria_itens VALUES("1615","","","ds_observacao","356");

INSERT INTO tb_auditoria_itens VALUES("1616","","54.99","nu_valor","356");

INSERT INTO tb_auditoria_itens VALUES("1617","","2018-08-28 10:44:09","dt_cadastro","356");

INSERT INTO tb_auditoria_itens VALUES("1618","","5","co_plano","356");

INSERT INTO tb_auditoria_itens VALUES("1619","16","","co_contato","357");

INSERT INTO tb_auditoria_itens VALUES("1620","23425253666","23425253666","nu_tel1","357");

INSERT INTO tb_auditoria_itens VALUES("1621","","","nu_tel2","357");

INSERT INTO tb_auditoria_itens VALUES("1622","","","nu_tel3","357");

INSERT INTO tb_auditoria_itens VALUES("1623","","","nu_tel_0800","357");

INSERT INTO tb_auditoria_itens VALUES("1624","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","357");

INSERT INTO tb_auditoria_itens VALUES("1625","","","ds_site","357");

INSERT INTO tb_auditoria_itens VALUES("1626","13","","co_empresa","358");

INSERT INTO tb_auditoria_itens VALUES("1627","","","no_empresa","358");

INSERT INTO tb_auditoria_itens VALUES("1628","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","358");

INSERT INTO tb_auditoria_itens VALUES("1629","2018-08-16 23:59:20","","dt_cadastro","358");

INSERT INTO tb_auditoria_itens VALUES("1630","","","nu_cnpj","358");

INSERT INTO tb_auditoria_itens VALUES("1631","","","nu_insc_estadual","358");

INSERT INTO tb_auditoria_itens VALUES("1632","","","ds_observacao","358");

INSERT INTO tb_auditoria_itens VALUES("1633","","","st_status","358");

INSERT INTO tb_auditoria_itens VALUES("1634","0","","co_pessoa","358");

INSERT INTO tb_auditoria_itens VALUES("1635","0","","co_endereco","358");

INSERT INTO tb_auditoria_itens VALUES("1636","0","","co_contato","358");

INSERT INTO tb_auditoria_itens VALUES("1637","0","","co_imagem","358");

INSERT INTO tb_auditoria_itens VALUES("1638","16","","co_pessoa","359");

INSERT INTO tb_auditoria_itens VALUES("1639","","","nu_cpf","359");

INSERT INTO tb_auditoria_itens VALUES("1640","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","359");

INSERT INTO tb_auditoria_itens VALUES("1641","","","nu_rg","359");

INSERT INTO tb_auditoria_itens VALUES("1642","2018-08-16 23:59:20","","dt_cadastro","359");

INSERT INTO tb_auditoria_itens VALUES("1643","","","dt_nascimento","359");

INSERT INTO tb_auditoria_itens VALUES("1644","","","st_sexo","359");

INSERT INTO tb_auditoria_itens VALUES("1645","0","","co_endereco","359");

INSERT INTO tb_auditoria_itens VALUES("1646","16","","co_contato","359");

INSERT INTO tb_auditoria_itens VALUES("1647","0","","co_imagem","359");

INSERT INTO tb_auditoria_itens VALUES("1648","12","","co_assinante","360");

INSERT INTO tb_auditoria_itens VALUES("1649","2018-08-16 23:59:20","","dt_cadastro","360");

INSERT INTO tb_auditoria_itens VALUES("1650","2018-08-31","","dt_expiracao","360");

INSERT INTO tb_auditoria_itens VALUES("1651","A","","st_status","360");

INSERT INTO tb_auditoria_itens VALUES("1652","M","M","tp_assinante","360");

INSERT INTO tb_auditoria_itens VALUES("1653","13","","co_empresa","360");

INSERT INTO tb_auditoria_itens VALUES("1654","16","","co_pessoa","360");

INSERT INTO tb_auditoria_itens VALUES("1655","16","","co_contato","362");

INSERT INTO tb_auditoria_itens VALUES("1656","23425253666","23425253666","nu_tel1","362");

INSERT INTO tb_auditoria_itens VALUES("1657","","","nu_tel2","362");

INSERT INTO tb_auditoria_itens VALUES("1658","","","nu_tel3","362");

INSERT INTO tb_auditoria_itens VALUES("1659","","","nu_tel_0800","362");

INSERT INTO tb_auditoria_itens VALUES("1660","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","362");

INSERT INTO tb_auditoria_itens VALUES("1661","","","ds_site","362");

INSERT INTO tb_auditoria_itens VALUES("1662","13","","co_empresa","363");

INSERT INTO tb_auditoria_itens VALUES("1663","","","no_empresa","363");

INSERT INTO tb_auditoria_itens VALUES("1664","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","363");

INSERT INTO tb_auditoria_itens VALUES("1665","2018-08-16 23:59:20","","dt_cadastro","363");

INSERT INTO tb_auditoria_itens VALUES("1666","","","nu_cnpj","363");

INSERT INTO tb_auditoria_itens VALUES("1667","","","nu_insc_estadual","363");

INSERT INTO tb_auditoria_itens VALUES("1668","","","ds_observacao","363");

INSERT INTO tb_auditoria_itens VALUES("1669","","","st_status","363");

INSERT INTO tb_auditoria_itens VALUES("1670","0","","co_pessoa","363");

INSERT INTO tb_auditoria_itens VALUES("1671","0","","co_endereco","363");

INSERT INTO tb_auditoria_itens VALUES("1672","0","","co_contato","363");

INSERT INTO tb_auditoria_itens VALUES("1673","0","","co_imagem","363");

INSERT INTO tb_auditoria_itens VALUES("1674","16","","co_pessoa","364");

INSERT INTO tb_auditoria_itens VALUES("1675","","","nu_cpf","364");

INSERT INTO tb_auditoria_itens VALUES("1676","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","364");

INSERT INTO tb_auditoria_itens VALUES("1677","","","nu_rg","364");

INSERT INTO tb_auditoria_itens VALUES("1678","2018-08-16 23:59:20","","dt_cadastro","364");

INSERT INTO tb_auditoria_itens VALUES("1679","","","dt_nascimento","364");

INSERT INTO tb_auditoria_itens VALUES("1680","","","st_sexo","364");

INSERT INTO tb_auditoria_itens VALUES("1681","0","","co_endereco","364");

INSERT INTO tb_auditoria_itens VALUES("1682","16","","co_contato","364");

INSERT INTO tb_auditoria_itens VALUES("1683","0","","co_imagem","364");

INSERT INTO tb_auditoria_itens VALUES("1684","12","","co_assinante","365");

INSERT INTO tb_auditoria_itens VALUES("1685","2018-08-16 23:59:20","","dt_cadastro","365");

INSERT INTO tb_auditoria_itens VALUES("1686","2018-08-31","","dt_expiracao","365");

INSERT INTO tb_auditoria_itens VALUES("1687","A","","st_status","365");

INSERT INTO tb_auditoria_itens VALUES("1688","M","M","tp_assinante","365");

INSERT INTO tb_auditoria_itens VALUES("1689","13","","co_empresa","365");

INSERT INTO tb_auditoria_itens VALUES("1690","16","","co_pessoa","365");

INSERT INTO tb_auditoria_itens VALUES("1691","16","","co_contato","367");

INSERT INTO tb_auditoria_itens VALUES("1692","23425253666","23425253666","nu_tel1","367");

INSERT INTO tb_auditoria_itens VALUES("1693","","","nu_tel2","367");

INSERT INTO tb_auditoria_itens VALUES("1694","","","nu_tel3","367");

INSERT INTO tb_auditoria_itens VALUES("1695","","","nu_tel_0800","367");

INSERT INTO tb_auditoria_itens VALUES("1696","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","367");

INSERT INTO tb_auditoria_itens VALUES("1697","","","ds_site","367");

INSERT INTO tb_auditoria_itens VALUES("1698","13","","co_empresa","368");

INSERT INTO tb_auditoria_itens VALUES("1699","","","no_empresa","368");

INSERT INTO tb_auditoria_itens VALUES("1700","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","368");

INSERT INTO tb_auditoria_itens VALUES("1701","2018-08-16 23:59:20","","dt_cadastro","368");

INSERT INTO tb_auditoria_itens VALUES("1702","","","nu_cnpj","368");

INSERT INTO tb_auditoria_itens VALUES("1703","","","nu_insc_estadual","368");

INSERT INTO tb_auditoria_itens VALUES("1704","","","ds_observacao","368");

INSERT INTO tb_auditoria_itens VALUES("1705","","","st_status","368");

INSERT INTO tb_auditoria_itens VALUES("1706","0","","co_pessoa","368");

INSERT INTO tb_auditoria_itens VALUES("1707","0","","co_endereco","368");

INSERT INTO tb_auditoria_itens VALUES("1708","0","","co_contato","368");

INSERT INTO tb_auditoria_itens VALUES("1709","0","","co_imagem","368");

INSERT INTO tb_auditoria_itens VALUES("1710","16","","co_pessoa","369");

INSERT INTO tb_auditoria_itens VALUES("1711","","","nu_cpf","369");

INSERT INTO tb_auditoria_itens VALUES("1712","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","369");

INSERT INTO tb_auditoria_itens VALUES("1713","","","nu_rg","369");

INSERT INTO tb_auditoria_itens VALUES("1714","2018-08-16 23:59:20","","dt_cadastro","369");

INSERT INTO tb_auditoria_itens VALUES("1715","","","dt_nascimento","369");

INSERT INTO tb_auditoria_itens VALUES("1716","","","st_sexo","369");

INSERT INTO tb_auditoria_itens VALUES("1717","0","","co_endereco","369");

INSERT INTO tb_auditoria_itens VALUES("1718","16","","co_contato","369");

INSERT INTO tb_auditoria_itens VALUES("1719","0","","co_imagem","369");

INSERT INTO tb_auditoria_itens VALUES("1720","12","","co_assinante","370");

INSERT INTO tb_auditoria_itens VALUES("1721","2018-08-16 23:59:20","","dt_cadastro","370");

INSERT INTO tb_auditoria_itens VALUES("1722","2018-08-31","","dt_expiracao","370");

INSERT INTO tb_auditoria_itens VALUES("1723","A","","st_status","370");

INSERT INTO tb_auditoria_itens VALUES("1724","M","M","tp_assinante","370");

INSERT INTO tb_auditoria_itens VALUES("1725","13","","co_empresa","370");

INSERT INTO tb_auditoria_itens VALUES("1726","16","","co_pessoa","370");

INSERT INTO tb_auditoria_itens VALUES("1727","16","","co_contato","372");

INSERT INTO tb_auditoria_itens VALUES("1728","23425253666","23425253666","nu_tel1","372");

INSERT INTO tb_auditoria_itens VALUES("1729","","","nu_tel2","372");

INSERT INTO tb_auditoria_itens VALUES("1730","","","nu_tel3","372");

INSERT INTO tb_auditoria_itens VALUES("1731","","","nu_tel_0800","372");

INSERT INTO tb_auditoria_itens VALUES("1732","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","372");

INSERT INTO tb_auditoria_itens VALUES("1733","","","ds_site","372");

INSERT INTO tb_auditoria_itens VALUES("1734","13","","co_empresa","373");

INSERT INTO tb_auditoria_itens VALUES("1735","","","no_empresa","373");

INSERT INTO tb_auditoria_itens VALUES("1736","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","373");

INSERT INTO tb_auditoria_itens VALUES("1737","2018-08-16 23:59:20","","dt_cadastro","373");

INSERT INTO tb_auditoria_itens VALUES("1738","","","nu_cnpj","373");

INSERT INTO tb_auditoria_itens VALUES("1739","","","nu_insc_estadual","373");

INSERT INTO tb_auditoria_itens VALUES("1740","","","ds_observacao","373");

INSERT INTO tb_auditoria_itens VALUES("1741","","","st_status","373");

INSERT INTO tb_auditoria_itens VALUES("1742","0","","co_pessoa","373");

INSERT INTO tb_auditoria_itens VALUES("1743","0","","co_endereco","373");

INSERT INTO tb_auditoria_itens VALUES("1744","0","","co_contato","373");

INSERT INTO tb_auditoria_itens VALUES("1745","0","","co_imagem","373");

INSERT INTO tb_auditoria_itens VALUES("1746","16","","co_pessoa","374");

INSERT INTO tb_auditoria_itens VALUES("1747","","","nu_cpf","374");

INSERT INTO tb_auditoria_itens VALUES("1748","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","374");

INSERT INTO tb_auditoria_itens VALUES("1749","","","nu_rg","374");

INSERT INTO tb_auditoria_itens VALUES("1750","2018-08-16 23:59:20","","dt_cadastro","374");

INSERT INTO tb_auditoria_itens VALUES("1751","","","dt_nascimento","374");

INSERT INTO tb_auditoria_itens VALUES("1752","","","st_sexo","374");

INSERT INTO tb_auditoria_itens VALUES("1753","0","","co_endereco","374");

INSERT INTO tb_auditoria_itens VALUES("1754","16","","co_contato","374");

INSERT INTO tb_auditoria_itens VALUES("1755","0","","co_imagem","374");

INSERT INTO tb_auditoria_itens VALUES("1756","12","","co_assinante","375");

INSERT INTO tb_auditoria_itens VALUES("1757","2018-08-16 23:59:20","","dt_cadastro","375");

INSERT INTO tb_auditoria_itens VALUES("1758","2018-08-31","","dt_expiracao","375");

INSERT INTO tb_auditoria_itens VALUES("1759","A","","st_status","375");

INSERT INTO tb_auditoria_itens VALUES("1760","M","M","tp_assinante","375");

INSERT INTO tb_auditoria_itens VALUES("1761","13","","co_empresa","375");

INSERT INTO tb_auditoria_itens VALUES("1762","16","","co_pessoa","375");

INSERT INTO tb_auditoria_itens VALUES("1799","16","","co_contato","382");

INSERT INTO tb_auditoria_itens VALUES("1800","23425253666","23425253666","nu_tel1","382");

INSERT INTO tb_auditoria_itens VALUES("1801","","","nu_tel2","382");

INSERT INTO tb_auditoria_itens VALUES("1802","","","nu_tel3","382");

INSERT INTO tb_auditoria_itens VALUES("1803","","","nu_tel_0800","382");

INSERT INTO tb_auditoria_itens VALUES("1804","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","382");

INSERT INTO tb_auditoria_itens VALUES("1805","","","ds_site","382");

INSERT INTO tb_auditoria_itens VALUES("1806","13","","co_empresa","383");

INSERT INTO tb_auditoria_itens VALUES("1807","","","no_empresa","383");

INSERT INTO tb_auditoria_itens VALUES("1808","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","383");

INSERT INTO tb_auditoria_itens VALUES("1809","2018-08-16 23:59:20","","dt_cadastro","383");

INSERT INTO tb_auditoria_itens VALUES("1810","","","nu_cnpj","383");

INSERT INTO tb_auditoria_itens VALUES("1811","","","nu_insc_estadual","383");

INSERT INTO tb_auditoria_itens VALUES("1812","","","ds_observacao","383");

INSERT INTO tb_auditoria_itens VALUES("1813","","","st_status","383");

INSERT INTO tb_auditoria_itens VALUES("1814","0","","co_pessoa","383");

INSERT INTO tb_auditoria_itens VALUES("1815","0","","co_endereco","383");

INSERT INTO tb_auditoria_itens VALUES("1816","0","","co_contato","383");

INSERT INTO tb_auditoria_itens VALUES("1817","0","","co_imagem","383");

INSERT INTO tb_auditoria_itens VALUES("1818","16","","co_pessoa","384");

INSERT INTO tb_auditoria_itens VALUES("1819","","","nu_cpf","384");

INSERT INTO tb_auditoria_itens VALUES("1820","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","384");

INSERT INTO tb_auditoria_itens VALUES("1821","","","nu_rg","384");

INSERT INTO tb_auditoria_itens VALUES("1822","2018-08-16 23:59:20","","dt_cadastro","384");

INSERT INTO tb_auditoria_itens VALUES("1823","","","dt_nascimento","384");

INSERT INTO tb_auditoria_itens VALUES("1824","","","st_sexo","384");

INSERT INTO tb_auditoria_itens VALUES("1825","0","","co_endereco","384");

INSERT INTO tb_auditoria_itens VALUES("1826","16","","co_contato","384");

INSERT INTO tb_auditoria_itens VALUES("1827","0","","co_imagem","384");

INSERT INTO tb_auditoria_itens VALUES("1828","12","","co_assinante","385");

INSERT INTO tb_auditoria_itens VALUES("1829","2018-08-16 23:59:20","","dt_cadastro","385");

INSERT INTO tb_auditoria_itens VALUES("1830","2018-08-31","","dt_expiracao","385");

INSERT INTO tb_auditoria_itens VALUES("1831","A","","st_status","385");

INSERT INTO tb_auditoria_itens VALUES("1832","M","M","tp_assinante","385");

INSERT INTO tb_auditoria_itens VALUES("1833","13","","co_empresa","385");

INSERT INTO tb_auditoria_itens VALUES("1834","16","","co_pessoa","385");

INSERT INTO tb_auditoria_itens VALUES("1835","16","","co_contato","387");

INSERT INTO tb_auditoria_itens VALUES("1836","23425253666","23425253666","nu_tel1","387");

INSERT INTO tb_auditoria_itens VALUES("1837","","","nu_tel2","387");

INSERT INTO tb_auditoria_itens VALUES("1838","","","nu_tel3","387");

INSERT INTO tb_auditoria_itens VALUES("1839","","","nu_tel_0800","387");

INSERT INTO tb_auditoria_itens VALUES("1840","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","387");

INSERT INTO tb_auditoria_itens VALUES("1841","","","ds_site","387");

INSERT INTO tb_auditoria_itens VALUES("1842","13","","co_empresa","388");

INSERT INTO tb_auditoria_itens VALUES("1843","","","no_empresa","388");

INSERT INTO tb_auditoria_itens VALUES("1844","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","388");

INSERT INTO tb_auditoria_itens VALUES("1845","2018-08-16 23:59:20","","dt_cadastro","388");

INSERT INTO tb_auditoria_itens VALUES("1846","","","nu_cnpj","388");

INSERT INTO tb_auditoria_itens VALUES("1847","","","nu_insc_estadual","388");

INSERT INTO tb_auditoria_itens VALUES("1848","","","ds_observacao","388");

INSERT INTO tb_auditoria_itens VALUES("1849","","","st_status","388");

INSERT INTO tb_auditoria_itens VALUES("1850","0","","co_pessoa","388");

INSERT INTO tb_auditoria_itens VALUES("1851","0","","co_endereco","388");

INSERT INTO tb_auditoria_itens VALUES("1852","0","","co_contato","388");

INSERT INTO tb_auditoria_itens VALUES("1853","0","","co_imagem","388");

INSERT INTO tb_auditoria_itens VALUES("1854","16","","co_pessoa","389");

INSERT INTO tb_auditoria_itens VALUES("1855","","","nu_cpf","389");

INSERT INTO tb_auditoria_itens VALUES("1856","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","389");

INSERT INTO tb_auditoria_itens VALUES("1857","","","nu_rg","389");

INSERT INTO tb_auditoria_itens VALUES("1858","2018-08-16 23:59:20","","dt_cadastro","389");

INSERT INTO tb_auditoria_itens VALUES("1859","","","dt_nascimento","389");

INSERT INTO tb_auditoria_itens VALUES("1860","","","st_sexo","389");

INSERT INTO tb_auditoria_itens VALUES("1861","0","","co_endereco","389");

INSERT INTO tb_auditoria_itens VALUES("1862","16","","co_contato","389");

INSERT INTO tb_auditoria_itens VALUES("1863","0","","co_imagem","389");

INSERT INTO tb_auditoria_itens VALUES("1864","12","","co_assinante","390");

INSERT INTO tb_auditoria_itens VALUES("1865","2018-08-16 23:59:20","","dt_cadastro","390");

INSERT INTO tb_auditoria_itens VALUES("1866","2018-08-31","","dt_expiracao","390");

INSERT INTO tb_auditoria_itens VALUES("1867","A","","st_status","390");

INSERT INTO tb_auditoria_itens VALUES("1868","M","M","tp_assinante","390");

INSERT INTO tb_auditoria_itens VALUES("1869","13","","co_empresa","390");

INSERT INTO tb_auditoria_itens VALUES("1870","16","","co_pessoa","390");

INSERT INTO tb_auditoria_itens VALUES("1871","16","","co_contato","392");

INSERT INTO tb_auditoria_itens VALUES("1872","23425253666","23425253666","nu_tel1","392");

INSERT INTO tb_auditoria_itens VALUES("1873","","","nu_tel2","392");

INSERT INTO tb_auditoria_itens VALUES("1874","","","nu_tel3","392");

INSERT INTO tb_auditoria_itens VALUES("1875","","","nu_tel_0800","392");

INSERT INTO tb_auditoria_itens VALUES("1876","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","392");

INSERT INTO tb_auditoria_itens VALUES("1877","","","ds_site","392");

INSERT INTO tb_auditoria_itens VALUES("1878","13","","co_empresa","393");

INSERT INTO tb_auditoria_itens VALUES("1879","","","no_empresa","393");

INSERT INTO tb_auditoria_itens VALUES("1880","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","393");

INSERT INTO tb_auditoria_itens VALUES("1881","2018-08-16 23:59:20","","dt_cadastro","393");

INSERT INTO tb_auditoria_itens VALUES("1882","","","nu_cnpj","393");

INSERT INTO tb_auditoria_itens VALUES("1883","","","nu_insc_estadual","393");

INSERT INTO tb_auditoria_itens VALUES("1884","","","ds_observacao","393");

INSERT INTO tb_auditoria_itens VALUES("1885","","","st_status","393");

INSERT INTO tb_auditoria_itens VALUES("1886","0","","co_pessoa","393");

INSERT INTO tb_auditoria_itens VALUES("1887","0","","co_endereco","393");

INSERT INTO tb_auditoria_itens VALUES("1888","0","","co_contato","393");

INSERT INTO tb_auditoria_itens VALUES("1889","0","","co_imagem","393");

INSERT INTO tb_auditoria_itens VALUES("1890","16","","co_pessoa","394");

INSERT INTO tb_auditoria_itens VALUES("1891","","","nu_cpf","394");

INSERT INTO tb_auditoria_itens VALUES("1892","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","394");

INSERT INTO tb_auditoria_itens VALUES("1893","","","nu_rg","394");

INSERT INTO tb_auditoria_itens VALUES("1894","2018-08-16 23:59:20","","dt_cadastro","394");

INSERT INTO tb_auditoria_itens VALUES("1895","","","dt_nascimento","394");

INSERT INTO tb_auditoria_itens VALUES("1896","","","st_sexo","394");

INSERT INTO tb_auditoria_itens VALUES("1897","0","","co_endereco","394");

INSERT INTO tb_auditoria_itens VALUES("1898","16","","co_contato","394");

INSERT INTO tb_auditoria_itens VALUES("1899","0","","co_imagem","394");

INSERT INTO tb_auditoria_itens VALUES("1900","12","","co_assinante","395");

INSERT INTO tb_auditoria_itens VALUES("1901","2018-08-16 23:59:20","","dt_cadastro","395");

INSERT INTO tb_auditoria_itens VALUES("1902","2018-08-31","","dt_expiracao","395");

INSERT INTO tb_auditoria_itens VALUES("1903","A","","st_status","395");

INSERT INTO tb_auditoria_itens VALUES("1904","M","M","tp_assinante","395");

INSERT INTO tb_auditoria_itens VALUES("1905","13","","co_empresa","395");

INSERT INTO tb_auditoria_itens VALUES("1906","16","","co_pessoa","395");

INSERT INTO tb_auditoria_itens VALUES("1907","16","","co_contato","397");

INSERT INTO tb_auditoria_itens VALUES("1908","23425253666","23425253666","nu_tel1","397");

INSERT INTO tb_auditoria_itens VALUES("1909","","","nu_tel2","397");

INSERT INTO tb_auditoria_itens VALUES("1910","","","nu_tel3","397");

INSERT INTO tb_auditoria_itens VALUES("1911","","","nu_tel_0800","397");

INSERT INTO tb_auditoria_itens VALUES("1912","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","397");

INSERT INTO tb_auditoria_itens VALUES("1913","","","ds_site","397");

INSERT INTO tb_auditoria_itens VALUES("1914","13","","co_empresa","398");

INSERT INTO tb_auditoria_itens VALUES("1915","","","no_empresa","398");

INSERT INTO tb_auditoria_itens VALUES("1916","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","398");

INSERT INTO tb_auditoria_itens VALUES("1917","2018-08-16 23:59:20","","dt_cadastro","398");

INSERT INTO tb_auditoria_itens VALUES("1918","","","nu_cnpj","398");

INSERT INTO tb_auditoria_itens VALUES("1919","","","nu_insc_estadual","398");

INSERT INTO tb_auditoria_itens VALUES("1920","","","ds_observacao","398");

INSERT INTO tb_auditoria_itens VALUES("1921","","","st_status","398");

INSERT INTO tb_auditoria_itens VALUES("1922","0","","co_pessoa","398");

INSERT INTO tb_auditoria_itens VALUES("1923","0","","co_endereco","398");

INSERT INTO tb_auditoria_itens VALUES("1924","0","","co_contato","398");

INSERT INTO tb_auditoria_itens VALUES("1925","0","","co_imagem","398");

INSERT INTO tb_auditoria_itens VALUES("1926","16","","co_pessoa","399");

INSERT INTO tb_auditoria_itens VALUES("1927","","","nu_cpf","399");

INSERT INTO tb_auditoria_itens VALUES("1928","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","399");

INSERT INTO tb_auditoria_itens VALUES("1929","","","nu_rg","399");

INSERT INTO tb_auditoria_itens VALUES("1930","2018-08-16 23:59:20","","dt_cadastro","399");

INSERT INTO tb_auditoria_itens VALUES("1931","","","dt_nascimento","399");

INSERT INTO tb_auditoria_itens VALUES("1932","","","st_sexo","399");

INSERT INTO tb_auditoria_itens VALUES("1933","0","","co_endereco","399");

INSERT INTO tb_auditoria_itens VALUES("1934","16","","co_contato","399");

INSERT INTO tb_auditoria_itens VALUES("1935","0","","co_imagem","399");

INSERT INTO tb_auditoria_itens VALUES("1936","12","","co_assinante","400");

INSERT INTO tb_auditoria_itens VALUES("1937","2018-08-16 23:59:20","","dt_cadastro","400");

INSERT INTO tb_auditoria_itens VALUES("1938","2018-08-31","","dt_expiracao","400");

INSERT INTO tb_auditoria_itens VALUES("1939","A","","st_status","400");

INSERT INTO tb_auditoria_itens VALUES("1940","M","M","tp_assinante","400");

INSERT INTO tb_auditoria_itens VALUES("1941","13","","co_empresa","400");

INSERT INTO tb_auditoria_itens VALUES("1942","16","","co_pessoa","400");

INSERT INTO tb_auditoria_itens VALUES("1943","16","","co_contato","402");

INSERT INTO tb_auditoria_itens VALUES("1944","23425253666","23425253666","nu_tel1","402");

INSERT INTO tb_auditoria_itens VALUES("1945","","","nu_tel2","402");

INSERT INTO tb_auditoria_itens VALUES("1946","","","nu_tel3","402");

INSERT INTO tb_auditoria_itens VALUES("1947","","","nu_tel_0800","402");

INSERT INTO tb_auditoria_itens VALUES("1948","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","402");

INSERT INTO tb_auditoria_itens VALUES("1949","","","ds_site","402");

INSERT INTO tb_auditoria_itens VALUES("1950","13","","co_empresa","403");

INSERT INTO tb_auditoria_itens VALUES("1951","","","no_empresa","403");

INSERT INTO tb_auditoria_itens VALUES("1952","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","403");

INSERT INTO tb_auditoria_itens VALUES("1953","2018-08-16 23:59:20","","dt_cadastro","403");

INSERT INTO tb_auditoria_itens VALUES("1954","","","nu_cnpj","403");

INSERT INTO tb_auditoria_itens VALUES("1955","","","nu_insc_estadual","403");

INSERT INTO tb_auditoria_itens VALUES("1956","","","ds_observacao","403");

INSERT INTO tb_auditoria_itens VALUES("1957","","","st_status","403");

INSERT INTO tb_auditoria_itens VALUES("1958","0","","co_pessoa","403");

INSERT INTO tb_auditoria_itens VALUES("1959","0","","co_endereco","403");

INSERT INTO tb_auditoria_itens VALUES("1960","0","","co_contato","403");

INSERT INTO tb_auditoria_itens VALUES("1961","0","","co_imagem","403");

INSERT INTO tb_auditoria_itens VALUES("1962","16","","co_pessoa","404");

INSERT INTO tb_auditoria_itens VALUES("1963","","","nu_cpf","404");

INSERT INTO tb_auditoria_itens VALUES("1964","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","404");

INSERT INTO tb_auditoria_itens VALUES("1965","","","nu_rg","404");

INSERT INTO tb_auditoria_itens VALUES("1966","2018-08-16 23:59:20","","dt_cadastro","404");

INSERT INTO tb_auditoria_itens VALUES("1967","","","dt_nascimento","404");

INSERT INTO tb_auditoria_itens VALUES("1968","","","st_sexo","404");

INSERT INTO tb_auditoria_itens VALUES("1969","0","","co_endereco","404");

INSERT INTO tb_auditoria_itens VALUES("1970","16","","co_contato","404");

INSERT INTO tb_auditoria_itens VALUES("1971","0","","co_imagem","404");

INSERT INTO tb_auditoria_itens VALUES("1972","12","","co_assinante","405");

INSERT INTO tb_auditoria_itens VALUES("1973","2018-08-16 23:59:20","","dt_cadastro","405");

INSERT INTO tb_auditoria_itens VALUES("1974","2018-08-31","","dt_expiracao","405");

INSERT INTO tb_auditoria_itens VALUES("1975","A","","st_status","405");

INSERT INTO tb_auditoria_itens VALUES("1976","M","M","tp_assinante","405");

INSERT INTO tb_auditoria_itens VALUES("1977","13","","co_empresa","405");

INSERT INTO tb_auditoria_itens VALUES("1978","16","","co_pessoa","405");

INSERT INTO tb_auditoria_itens VALUES("1979","16","","co_contato","407");

INSERT INTO tb_auditoria_itens VALUES("1980","23425253666","23425253666","nu_tel1","407");

INSERT INTO tb_auditoria_itens VALUES("1981","","","nu_tel2","407");

INSERT INTO tb_auditoria_itens VALUES("1982","","","nu_tel3","407");

INSERT INTO tb_auditoria_itens VALUES("1983","","","nu_tel_0800","407");

INSERT INTO tb_auditoria_itens VALUES("1984","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","407");

INSERT INTO tb_auditoria_itens VALUES("1985","","","ds_site","407");

INSERT INTO tb_auditoria_itens VALUES("1986","13","","co_empresa","408");

INSERT INTO tb_auditoria_itens VALUES("1987","","","no_empresa","408");

INSERT INTO tb_auditoria_itens VALUES("1988","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","408");

INSERT INTO tb_auditoria_itens VALUES("1989","2018-08-16 23:59:20","","dt_cadastro","408");

INSERT INTO tb_auditoria_itens VALUES("1990","","","nu_cnpj","408");

INSERT INTO tb_auditoria_itens VALUES("1991","","","nu_insc_estadual","408");

INSERT INTO tb_auditoria_itens VALUES("1992","","","ds_observacao","408");

INSERT INTO tb_auditoria_itens VALUES("1993","","","st_status","408");

INSERT INTO tb_auditoria_itens VALUES("1994","0","","co_pessoa","408");

INSERT INTO tb_auditoria_itens VALUES("1995","0","","co_endereco","408");

INSERT INTO tb_auditoria_itens VALUES("1996","0","","co_contato","408");

INSERT INTO tb_auditoria_itens VALUES("1997","0","","co_imagem","408");

INSERT INTO tb_auditoria_itens VALUES("1998","16","","co_pessoa","409");

INSERT INTO tb_auditoria_itens VALUES("1999","","","nu_cpf","409");

INSERT INTO tb_auditoria_itens VALUES("2000","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","409");

INSERT INTO tb_auditoria_itens VALUES("2001","","","nu_rg","409");

INSERT INTO tb_auditoria_itens VALUES("2002","2018-08-16 23:59:20","","dt_cadastro","409");

INSERT INTO tb_auditoria_itens VALUES("2003","","","dt_nascimento","409");

INSERT INTO tb_auditoria_itens VALUES("2004","","","st_sexo","409");

INSERT INTO tb_auditoria_itens VALUES("2005","0","","co_endereco","409");

INSERT INTO tb_auditoria_itens VALUES("2006","16","","co_contato","409");

INSERT INTO tb_auditoria_itens VALUES("2007","0","","co_imagem","409");

INSERT INTO tb_auditoria_itens VALUES("2008","12","","co_assinante","410");

INSERT INTO tb_auditoria_itens VALUES("2009","2018-08-16 23:59:20","","dt_cadastro","410");

INSERT INTO tb_auditoria_itens VALUES("2010","2018-08-31","","dt_expiracao","410");

INSERT INTO tb_auditoria_itens VALUES("2011","A","","st_status","410");

INSERT INTO tb_auditoria_itens VALUES("2012","M","M","tp_assinante","410");

INSERT INTO tb_auditoria_itens VALUES("2013","13","","co_empresa","410");

INSERT INTO tb_auditoria_itens VALUES("2014","16","","co_pessoa","410");

INSERT INTO tb_auditoria_itens VALUES("2015","","ddssado@mail.com","ds_email","412");

INSERT INTO tb_auditoria_itens VALUES("2016","","54353643643","nu_tel1","412");

INSERT INTO tb_auditoria_itens VALUES("2017","","novo pedido","no_pessoa","413");

INSERT INTO tb_auditoria_itens VALUES("2018","","17","co_contato","413");

INSERT INTO tb_auditoria_itens VALUES("2019","","2018-08-28 10:59:39","dt_cadastro","413");

INSERT INTO tb_auditoria_itens VALUES("2020","","Novo Esmaltaria 10ggg","no_fantasia","414");

INSERT INTO tb_auditoria_itens VALUES("2021","","2018-08-28 10:59:39","dt_cadastro","414");

INSERT INTO tb_auditoria_itens VALUES("2022","","M","tp_assinante","415");

INSERT INTO tb_auditoria_itens VALUES("2023","","17","co_pessoa","415");

INSERT INTO tb_auditoria_itens VALUES("2024","","14","co_empresa","415");

INSERT INTO tb_auditoria_itens VALUES("2025","","2018-08-28 10:59:39","dt_cadastro","415");

INSERT INTO tb_auditoria_itens VALUES("2026","","2018-09-12","dt_expiracao","415");

INSERT INTO tb_auditoria_itens VALUES("2027","","13","co_assinante","416");

INSERT INTO tb_auditoria_itens VALUES("2028","","17","co_pessoa","416");

INSERT INTO tb_auditoria_itens VALUES("2029","","TEW3NAL6","ds_senha","416");

INSERT INTO tb_auditoria_itens VALUES("2030","","VkVWWE0wNUJURFk9","ds_code","416");

INSERT INTO tb_auditoria_itens VALUES("2031","","I","st_status","416");

INSERT INTO tb_auditoria_itens VALUES("2032","","2018-08-28 10:59:39","dt_cadastro","416");

INSERT INTO tb_auditoria_itens VALUES("2033","","1","co_plano_assinante","417");

INSERT INTO tb_auditoria_itens VALUES("2034","","13","co_assinante","417");

INSERT INTO tb_auditoria_itens VALUES("2035","","3","nu_profissionais","417");

INSERT INTO tb_auditoria_itens VALUES("2036","","0","nu_filiais","417");

INSERT INTO tb_auditoria_itens VALUES("2037","","2018-08-28 10:59:39","dt_cadastro","417");

INSERT INTO tb_auditoria_itens VALUES("2038","","2018-09-12","dt_expiracao","417");

INSERT INTO tb_auditoria_itens VALUES("2039","","0.00","nu_valor_assinatura","417");

INSERT INTO tb_auditoria_itens VALUES("2040","","2","co_perfil","418");

INSERT INTO tb_auditoria_itens VALUES("2041","","10","co_usuario","418");

INSERT INTO tb_auditoria_itens VALUES("2042","17","","co_contato","419");

INSERT INTO tb_auditoria_itens VALUES("2043","54353643643","54353643643","nu_tel1","419");

INSERT INTO tb_auditoria_itens VALUES("2044","","","nu_tel2","419");

INSERT INTO tb_auditoria_itens VALUES("2045","","","nu_tel3","419");

INSERT INTO tb_auditoria_itens VALUES("2046","","","nu_tel_0800","419");

INSERT INTO tb_auditoria_itens VALUES("2047","ddssado@mail.com","ddssado@mail.com","ds_email","419");

INSERT INTO tb_auditoria_itens VALUES("2048","","","ds_site","419");

INSERT INTO tb_auditoria_itens VALUES("2049","14","","co_empresa","420");

INSERT INTO tb_auditoria_itens VALUES("2050","","","no_empresa","420");

INSERT INTO tb_auditoria_itens VALUES("2051","Novo Esmaltaria 10ggg","Novo Esmaltaria 10ggg","no_fantasia","420");

INSERT INTO tb_auditoria_itens VALUES("2052","2018-08-28 10:59:39","","dt_cadastro","420");

INSERT INTO tb_auditoria_itens VALUES("2053","","","nu_cnpj","420");

INSERT INTO tb_auditoria_itens VALUES("2054","","","nu_insc_estadual","420");

INSERT INTO tb_auditoria_itens VALUES("2055","","","ds_observacao","420");

INSERT INTO tb_auditoria_itens VALUES("2056","","","st_status","420");

INSERT INTO tb_auditoria_itens VALUES("2057","0","","co_pessoa","420");

INSERT INTO tb_auditoria_itens VALUES("2058","0","","co_endereco","420");

INSERT INTO tb_auditoria_itens VALUES("2059","0","","co_contato","420");

INSERT INTO tb_auditoria_itens VALUES("2060","0","","co_imagem","420");

INSERT INTO tb_auditoria_itens VALUES("2061","17","","co_pessoa","421");

INSERT INTO tb_auditoria_itens VALUES("2062","","","nu_cpf","421");

INSERT INTO tb_auditoria_itens VALUES("2063","novo pedido","novo pedido","no_pessoa","421");

INSERT INTO tb_auditoria_itens VALUES("2064","","","nu_rg","421");

INSERT INTO tb_auditoria_itens VALUES("2065","2018-08-28 10:59:39","","dt_cadastro","421");

INSERT INTO tb_auditoria_itens VALUES("2066","","","dt_nascimento","421");

INSERT INTO tb_auditoria_itens VALUES("2067","","","st_sexo","421");

INSERT INTO tb_auditoria_itens VALUES("2068","0","","co_endereco","421");

INSERT INTO tb_auditoria_itens VALUES("2069","17","","co_contato","421");

INSERT INTO tb_auditoria_itens VALUES("2070","0","","co_imagem","421");

INSERT INTO tb_auditoria_itens VALUES("2071","13","","co_assinante","422");

INSERT INTO tb_auditoria_itens VALUES("2072","2018-08-28 10:59:39","","dt_cadastro","422");

INSERT INTO tb_auditoria_itens VALUES("2073","2018-09-12","","dt_expiracao","422");

INSERT INTO tb_auditoria_itens VALUES("2074","A","","st_status","422");

INSERT INTO tb_auditoria_itens VALUES("2075","M","M","tp_assinante","422");

INSERT INTO tb_auditoria_itens VALUES("2076","14","","co_empresa","422");

INSERT INTO tb_auditoria_itens VALUES("2077","17","","co_pessoa","422");

INSERT INTO tb_auditoria_itens VALUES("2078","16","","co_contato","424");

INSERT INTO tb_auditoria_itens VALUES("2079","23425253666","23425253666","nu_tel1","424");

INSERT INTO tb_auditoria_itens VALUES("2080","","","nu_tel2","424");

INSERT INTO tb_auditoria_itens VALUES("2081","","","nu_tel3","424");

INSERT INTO tb_auditoria_itens VALUES("2082","","","nu_tel_0800","424");

INSERT INTO tb_auditoria_itens VALUES("2083","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","424");

INSERT INTO tb_auditoria_itens VALUES("2084","","","ds_site","424");

INSERT INTO tb_auditoria_itens VALUES("2085","13","","co_empresa","425");

INSERT INTO tb_auditoria_itens VALUES("2086","","","no_empresa","425");

INSERT INTO tb_auditoria_itens VALUES("2087","Novo Esmaltaria 88","Novo Esmaltaria 88","no_fantasia","425");

INSERT INTO tb_auditoria_itens VALUES("2088","2018-08-16 23:59:20","","dt_cadastro","425");

INSERT INTO tb_auditoria_itens VALUES("2089","","","nu_cnpj","425");

INSERT INTO tb_auditoria_itens VALUES("2090","","","nu_insc_estadual","425");

INSERT INTO tb_auditoria_itens VALUES("2091","","","ds_observacao","425");

INSERT INTO tb_auditoria_itens VALUES("2092","","","st_status","425");

INSERT INTO tb_auditoria_itens VALUES("2093","0","","co_pessoa","425");

INSERT INTO tb_auditoria_itens VALUES("2094","0","","co_endereco","425");

INSERT INTO tb_auditoria_itens VALUES("2095","0","","co_contato","425");

INSERT INTO tb_auditoria_itens VALUES("2096","0","","co_imagem","425");

INSERT INTO tb_auditoria_itens VALUES("2097","16","","co_pessoa","426");

INSERT INTO tb_auditoria_itens VALUES("2098","","","nu_cpf","426");

INSERT INTO tb_auditoria_itens VALUES("2099","Novo asinante 355GG","Novo asinante 355GG","no_pessoa","426");

INSERT INTO tb_auditoria_itens VALUES("2100","","","nu_rg","426");

INSERT INTO tb_auditoria_itens VALUES("2101","2018-08-16 23:59:20","","dt_cadastro","426");

INSERT INTO tb_auditoria_itens VALUES("2102","","","dt_nascimento","426");

INSERT INTO tb_auditoria_itens VALUES("2103","","","st_sexo","426");

INSERT INTO tb_auditoria_itens VALUES("2104","0","","co_endereco","426");

INSERT INTO tb_auditoria_itens VALUES("2105","16","","co_contato","426");

INSERT INTO tb_auditoria_itens VALUES("2106","0","","co_imagem","426");

INSERT INTO tb_auditoria_itens VALUES("2107","12","","co_assinante","427");

INSERT INTO tb_auditoria_itens VALUES("2108","2018-08-16 23:59:20","","dt_cadastro","427");

INSERT INTO tb_auditoria_itens VALUES("2109","2018-08-31","","dt_expiracao","427");

INSERT INTO tb_auditoria_itens VALUES("2110","A","","st_status","427");

INSERT INTO tb_auditoria_itens VALUES("2111","M","M","tp_assinante","427");

INSERT INTO tb_auditoria_itens VALUES("2112","13","","co_empresa","427");

INSERT INTO tb_auditoria_itens VALUES("2113","16","","co_pessoa","427");

INSERT INTO tb_auditoria_itens VALUES("2114","5","","co_plano","429");

INSERT INTO tb_auditoria_itens VALUES("2115","2018-08-15 11:10:46","","dt_cadastro","429");

INSERT INTO tb_auditoria_itens VALUES("2116","gdfg rg","gdfg rg","no_plano","429");

INSERT INTO tb_auditoria_itens VALUES("2117","1","1","nu_mes_ativo","429");

INSERT INTO tb_auditoria_itens VALUES("2118","A","A","st_status","429");

INSERT INTO tb_auditoria_itens VALUES("2119","26","","co_plano_modulo","430");

INSERT INTO tb_auditoria_itens VALUES("2120","5","","co_plano","430");

INSERT INTO tb_auditoria_itens VALUES("2121","1","","co_modulo","430");

INSERT INTO tb_auditoria_itens VALUES("2122","27","","co_plano_modulo","430");

INSERT INTO tb_auditoria_itens VALUES("2123","5","","co_plano","430");

INSERT INTO tb_auditoria_itens VALUES("2124","2","","co_modulo","430");

INSERT INTO tb_auditoria_itens VALUES("2125","","5","co_plano","431");

INSERT INTO tb_auditoria_itens VALUES("2126","","1","co_modulo","431");

INSERT INTO tb_auditoria_itens VALUES("2127","","5","co_plano","432");

INSERT INTO tb_auditoria_itens VALUES("2128","","2","co_modulo","432");

INSERT INTO tb_auditoria_itens VALUES("2129","","","ds_observacao","433");

INSERT INTO tb_auditoria_itens VALUES("2130","","54.99","nu_valor","433");

INSERT INTO tb_auditoria_itens VALUES("2131","","2018-08-28 11:17:22","dt_cadastro","433");

INSERT INTO tb_auditoria_itens VALUES("2132","","5","co_plano","433");

INSERT INTO tb_auditoria_itens VALUES("2133","","hhrt","no_plano","434");

INSERT INTO tb_auditoria_itens VALUES("2134","","24","nu_mes_ativo","434");

INSERT INTO tb_auditoria_itens VALUES("2135","","A","st_status","434");

INSERT INTO tb_auditoria_itens VALUES("2136","","2018-08-28 11:17:47","dt_cadastro","434");

INSERT INTO tb_auditoria_itens VALUES("2137","","7","co_plano","436");

INSERT INTO tb_auditoria_itens VALUES("2138","","1","co_modulo","436");

INSERT INTO tb_auditoria_itens VALUES("2139","","7","co_plano","437");

INSERT INTO tb_auditoria_itens VALUES("2140","","2","co_modulo","437");

INSERT INTO tb_auditoria_itens VALUES("2141","","","ds_observacao","438");

INSERT INTO tb_auditoria_itens VALUES("2142","","119.90","nu_valor","438");

INSERT INTO tb_auditoria_itens VALUES("2143","","2018-08-28 11:17:47","dt_cadastro","438");

INSERT INTO tb_auditoria_itens VALUES("2144","","7","co_plano","438");

INSERT INTO tb_auditoria_itens VALUES("2145","8","","co_usuario","439");

INSERT INTO tb_auditoria_itens VALUES("2146","teste123","teste123","ds_senha","439");

INSERT INTO tb_auditoria_itens VALUES("2147","ZEdWemRHVXhNak09","ZEdWemRHVXhNak09","ds_code","439");

INSERT INTO tb_auditoria_itens VALUES("2148","A","","st_status","439");

INSERT INTO tb_auditoria_itens VALUES("2149","N","S","st_troca_senha","439");

INSERT INTO tb_auditoria_itens VALUES("2150","2018-08-14 16:45:26","","dt_cadastro","439");

INSERT INTO tb_auditoria_itens VALUES("2151","0","","co_imagem","439");

INSERT INTO tb_auditoria_itens VALUES("2152","15","","co_pessoa","439");

INSERT INTO tb_auditoria_itens VALUES("2153","11","","co_assinante","439");

INSERT INTO tb_auditoria_itens VALUES("2154","","Dados Complementares Assinante","no_funcionalidade","440");

INSERT INTO tb_auditoria_itens VALUES("2155","","13","co_funcionalidade","441");

INSERT INTO tb_auditoria_itens VALUES("2156","","2","co_perfil","441");

INSERT INTO tb_auditoria_itens VALUES("2157","","mail@email.com","ds_email","442");

INSERT INTO tb_auditoria_itens VALUES("2158","","61336699663","nu_tel1","442");

INSERT INTO tb_auditoria_itens VALUES("2159","","Leo bessa","no_pessoa","443");

INSERT INTO tb_auditoria_itens VALUES("2160","","18","co_contato","443");

INSERT INTO tb_auditoria_itens VALUES("2161","","2018-09-17 16:45:33","dt_cadastro","443");

INSERT INTO tb_auditoria_itens VALUES("2162","","Salão novo visual","no_fantasia","444");

INSERT INTO tb_auditoria_itens VALUES("2163","","2018-09-17 16:45:33","dt_cadastro","444");

INSERT INTO tb_auditoria_itens VALUES("2164","","M","tp_assinante","445");

INSERT INTO tb_auditoria_itens VALUES("2165","","18","co_pessoa","445");

INSERT INTO tb_auditoria_itens VALUES("2166","","15","co_empresa","445");

INSERT INTO tb_auditoria_itens VALUES("2167","","2018-09-17 16:45:33","dt_cadastro","445");

INSERT INTO tb_auditoria_itens VALUES("2168","","2018-10-02","dt_expiracao","445");

INSERT INTO tb_auditoria_itens VALUES("2169","","14","co_assinante","446");

INSERT INTO tb_auditoria_itens VALUES("2170","","18","co_pessoa","446");

INSERT INTO tb_auditoria_itens VALUES("2171","","QQT8ZPA3","ds_senha","446");

INSERT INTO tb_auditoria_itens VALUES("2172","","VVZGVU9GcFFRVE09","ds_code","446");

INSERT INTO tb_auditoria_itens VALUES("2173","","I","st_status","446");

INSERT INTO tb_auditoria_itens VALUES("2174","","2018-09-17 16:45:33","dt_cadastro","446");

INSERT INTO tb_auditoria_itens VALUES("2175","","1","co_plano_assinante","447");

INSERT INTO tb_auditoria_itens VALUES("2176","","14","co_assinante","447");

INSERT INTO tb_auditoria_itens VALUES("2177","","3","nu_profissionais","447");

INSERT INTO tb_auditoria_itens VALUES("2178","","0","nu_filiais","447");

INSERT INTO tb_auditoria_itens VALUES("2179","","2018-09-17 16:45:33","dt_cadastro","447");

INSERT INTO tb_auditoria_itens VALUES("2180","","2018-10-02","dt_expiracao","447");

INSERT INTO tb_auditoria_itens VALUES("2181","","0.00","nu_valor_assinatura","447");

INSERT INTO tb_auditoria_itens VALUES("2182","","2","co_perfil","448");

INSERT INTO tb_auditoria_itens VALUES("2183","","11","co_usuario","448");

INSERT INTO tb_auditoria_itens VALUES("3033","15","","co_pessoa","534");

INSERT INTO tb_auditoria_itens VALUES("3034","","","nu_cpf","534");

INSERT INTO tb_auditoria_itens VALUES("3035","Novo dono","LEO BESSA","no_pessoa","534");

INSERT INTO tb_auditoria_itens VALUES("3036","","","nu_rg","534");

INSERT INTO tb_auditoria_itens VALUES("3037","2018-08-14 16:45:26","","dt_cadastro","534");

INSERT INTO tb_auditoria_itens VALUES("3038","","","dt_nascimento","534");

INSERT INTO tb_auditoria_itens VALUES("3039","","","st_sexo","534");

INSERT INTO tb_auditoria_itens VALUES("3040","0","","co_endereco","534");

INSERT INTO tb_auditoria_itens VALUES("3041","15","","co_contato","534");

INSERT INTO tb_auditoria_itens VALUES("3042","0","","co_imagem","534");

INSERT INTO tb_auditoria_itens VALUES("3043","12","","co_empresa","535");

INSERT INTO tb_auditoria_itens VALUES("3044","","","no_empresa","535");

INSERT INTO tb_auditoria_itens VALUES("3045","Spa 60","NOVO ESMALTARIA 10","no_fantasia","535");

INSERT INTO tb_auditoria_itens VALUES("3046","2018-08-14 16:45:26","","dt_cadastro","535");

INSERT INTO tb_auditoria_itens VALUES("3047","","","nu_cnpj","535");

INSERT INTO tb_auditoria_itens VALUES("3048","","","nu_insc_estadual","535");

INSERT INTO tb_auditoria_itens VALUES("3049","","","ds_observacao","535");

INSERT INTO tb_auditoria_itens VALUES("3050","","","st_status","535");

INSERT INTO tb_auditoria_itens VALUES("3051","0","","co_pessoa","535");

INSERT INTO tb_auditoria_itens VALUES("3052","0","","co_endereco","535");

INSERT INTO tb_auditoria_itens VALUES("3053","0","","co_contato","535");

INSERT INTO tb_auditoria_itens VALUES("3054","0","","co_imagem","535");

INSERT INTO tb_auditoria_itens VALUES("3055","","","ds_endereco","536");

INSERT INTO tb_auditoria_itens VALUES("3056","","","ds_complemento","536");

INSERT INTO tb_auditoria_itens VALUES("3057","","","ds_bairro","536");

INSERT INTO tb_auditoria_itens VALUES("3058","","","nu_cep","536");

INSERT INTO tb_auditoria_itens VALUES("3059","","","no_cidade","536");

INSERT INTO tb_auditoria_itens VALUES("3060","","","sg_uf","536");

INSERT INTO tb_auditoria_itens VALUES("3061","12","","co_empresa","537");

INSERT INTO tb_auditoria_itens VALUES("3062","","","no_empresa","537");

INSERT INTO tb_auditoria_itens VALUES("3063","NOVO ESMALTARIA 10","","no_fantasia","537");

INSERT INTO tb_auditoria_itens VALUES("3064","2018-08-14 16:45:26","","dt_cadastro","537");

INSERT INTO tb_auditoria_itens VALUES("3065","","","nu_cnpj","537");

INSERT INTO tb_auditoria_itens VALUES("3066","","","nu_insc_estadual","537");

INSERT INTO tb_auditoria_itens VALUES("3067","","","ds_observacao","537");

INSERT INTO tb_auditoria_itens VALUES("3068","","","st_status","537");

INSERT INTO tb_auditoria_itens VALUES("3069","0","","co_pessoa","537");

INSERT INTO tb_auditoria_itens VALUES("3070","0","16","co_endereco","537");

INSERT INTO tb_auditoria_itens VALUES("3071","0","","co_contato","537");

INSERT INTO tb_auditoria_itens VALUES("3072","0","","co_imagem","537");

INSERT INTO tb_auditoria_itens VALUES("3073","15","","co_contato","538");

INSERT INTO tb_auditoria_itens VALUES("3074","43634674774","61993226465","nu_tel1","538");

INSERT INTO tb_auditoria_itens VALUES("3075","","","nu_tel2","538");

INSERT INTO tb_auditoria_itens VALUES("3076","","","nu_tel3","538");

INSERT INTO tb_auditoria_itens VALUES("3077","","","nu_tel_0800","538");

INSERT INTO tb_auditoria_itens VALUES("3078","leo@mail.com","","ds_email","538");

INSERT INTO tb_auditoria_itens VALUES("3079","","","ds_site","538");

INSERT INTO tb_auditoria_itens VALUES("3080","","11","co_assinante","539");

INSERT INTO tb_auditoria_itens VALUES("3081","","2","tp_estabelecimento","539");

INSERT INTO tb_auditoria_itens VALUES("3082","","2","tp_atendimento","539");

INSERT INTO tb_auditoria_itens VALUES("3083","","3","tp_genero_especializado","539");

INSERT INTO tb_auditoria_itens VALUES("3084","","2","tp_estacionamento","539");

INSERT INTO tb_auditoria_itens VALUES("3085","","S","st_lanchonete","539");

INSERT INTO tb_auditoria_itens VALUES("3086","","S","st_televisao","539");

INSERT INTO tb_auditoria_itens VALUES("3087","","S","st_wifi","539");

INSERT INTO tb_auditoria_itens VALUES("3088","","N","st_acesso_deficiente","539");

INSERT INTO tb_auditoria_itens VALUES("3089","","N","st_jogos","539");

INSERT INTO tb_auditoria_itens VALUES("3090","15","","co_pessoa","540");

INSERT INTO tb_auditoria_itens VALUES("3091","","","nu_cpf","540");

INSERT INTO tb_auditoria_itens VALUES("3092","LEO BESSA","LEO BESSA","no_pessoa","540");

INSERT INTO tb_auditoria_itens VALUES("3093","","","nu_rg","540");

INSERT INTO tb_auditoria_itens VALUES("3094","2018-08-14 16:45:26","","dt_cadastro","540");

INSERT INTO tb_auditoria_itens VALUES("3095","","","dt_nascimento","540");

INSERT INTO tb_auditoria_itens VALUES("3096","","","st_sexo","540");

INSERT INTO tb_auditoria_itens VALUES("3097","0","","co_endereco","540");

INSERT INTO tb_auditoria_itens VALUES("3098","15","","co_contato","540");

INSERT INTO tb_auditoria_itens VALUES("3099","0","","co_imagem","540");

INSERT INTO tb_auditoria_itens VALUES("3100","12","","co_empresa","541");

INSERT INTO tb_auditoria_itens VALUES("3101","","","no_empresa","541");

INSERT INTO tb_auditoria_itens VALUES("3102","NOVO ESMALTARIA 10","NOVO ESMALTARIA 10","no_fantasia","541");

INSERT INTO tb_auditoria_itens VALUES("3103","2018-08-14 16:45:26","","dt_cadastro","541");

INSERT INTO tb_auditoria_itens VALUES("3104","","","nu_cnpj","541");

INSERT INTO tb_auditoria_itens VALUES("3105","","","nu_insc_estadual","541");

INSERT INTO tb_auditoria_itens VALUES("3106","","","ds_observacao","541");

INSERT INTO tb_auditoria_itens VALUES("3107","","","st_status","541");

INSERT INTO tb_auditoria_itens VALUES("3108","0","","co_pessoa","541");

INSERT INTO tb_auditoria_itens VALUES("3109","16","","co_endereco","541");

INSERT INTO tb_auditoria_itens VALUES("3110","0","","co_contato","541");

INSERT INTO tb_auditoria_itens VALUES("3111","0","","co_imagem","541");

INSERT INTO tb_auditoria_itens VALUES("3112","","","ds_endereco","542");

INSERT INTO tb_auditoria_itens VALUES("3113","","","ds_complemento","542");

INSERT INTO tb_auditoria_itens VALUES("3114","","","ds_bairro","542");

INSERT INTO tb_auditoria_itens VALUES("3115","","","nu_cep","542");

INSERT INTO tb_auditoria_itens VALUES("3116","","","no_cidade","542");

INSERT INTO tb_auditoria_itens VALUES("3117","","","sg_uf","542");

INSERT INTO tb_auditoria_itens VALUES("3118","12","","co_empresa","543");

INSERT INTO tb_auditoria_itens VALUES("3119","","","no_empresa","543");

INSERT INTO tb_auditoria_itens VALUES("3120","NOVO ESMALTARIA 10","","no_fantasia","543");

INSERT INTO tb_auditoria_itens VALUES("3121","2018-08-14 16:45:26","","dt_cadastro","543");

INSERT INTO tb_auditoria_itens VALUES("3122","","","nu_cnpj","543");

INSERT INTO tb_auditoria_itens VALUES("3123","","","nu_insc_estadual","543");

INSERT INTO tb_auditoria_itens VALUES("3124","","","ds_observacao","543");

INSERT INTO tb_auditoria_itens VALUES("3125","","","st_status","543");

INSERT INTO tb_auditoria_itens VALUES("3126","0","","co_pessoa","543");

INSERT INTO tb_auditoria_itens VALUES("3127","16","17","co_endereco","543");

INSERT INTO tb_auditoria_itens VALUES("3128","0","","co_contato","543");

INSERT INTO tb_auditoria_itens VALUES("3129","0","","co_imagem","543");

INSERT INTO tb_auditoria_itens VALUES("3130","15","","co_contato","544");

INSERT INTO tb_auditoria_itens VALUES("3131","61993226465","36234625754","nu_tel1","544");

INSERT INTO tb_auditoria_itens VALUES("3132","","","nu_tel2","544");

INSERT INTO tb_auditoria_itens VALUES("3133","","","nu_tel3","544");

INSERT INTO tb_auditoria_itens VALUES("3134","","","nu_tel_0800","544");

INSERT INTO tb_auditoria_itens VALUES("3135","","","ds_email","544");

INSERT INTO tb_auditoria_itens VALUES("3136","","","ds_site","544");

INSERT INTO tb_auditoria_itens VALUES("3137","","11","co_assinante","545");

INSERT INTO tb_auditoria_itens VALUES("3138","","1","tp_estabelecimento","545");

INSERT INTO tb_auditoria_itens VALUES("3139","","","tp_atendimento","545");

INSERT INTO tb_auditoria_itens VALUES("3140","","","tp_genero_especializado","545");

INSERT INTO tb_auditoria_itens VALUES("3141","","","tp_estacionamento","545");

INSERT INTO tb_auditoria_itens VALUES("3142","","N","st_lanchonete","545");

INSERT INTO tb_auditoria_itens VALUES("3143","","N","st_televisao","545");

INSERT INTO tb_auditoria_itens VALUES("3144","","N","st_wifi","545");

INSERT INTO tb_auditoria_itens VALUES("3145","","N","st_acesso_deficiente","545");

INSERT INTO tb_auditoria_itens VALUES("3146","","N","st_jogos","545");

INSERT INTO tb_auditoria_itens VALUES("3422","15","","co_pessoa","575");

INSERT INTO tb_auditoria_itens VALUES("3423","","","nu_cpf","575");

INSERT INTO tb_auditoria_itens VALUES("3424","LEO BESSA","LEO BESSA","no_pessoa","575");

INSERT INTO tb_auditoria_itens VALUES("3425","","","nu_rg","575");

INSERT INTO tb_auditoria_itens VALUES("3426","2018-08-14 16:45:26","","dt_cadastro","575");

INSERT INTO tb_auditoria_itens VALUES("3427","","","dt_nascimento","575");

INSERT INTO tb_auditoria_itens VALUES("3428","","","st_sexo","575");

INSERT INTO tb_auditoria_itens VALUES("3429","0","","co_endereco","575");

INSERT INTO tb_auditoria_itens VALUES("3430","15","","co_contato","575");

INSERT INTO tb_auditoria_itens VALUES("3431","0","","co_imagem","575");

INSERT INTO tb_auditoria_itens VALUES("3432","12","","co_empresa","576");

INSERT INTO tb_auditoria_itens VALUES("3433","","","no_empresa","576");

INSERT INTO tb_auditoria_itens VALUES("3434","NOVO ESMALTARIA 10","SALãO NOVO VISUAL","no_fantasia","576");

INSERT INTO tb_auditoria_itens VALUES("3435","2018-08-14 16:45:26","","dt_cadastro","576");

INSERT INTO tb_auditoria_itens VALUES("3436","","","nu_cnpj","576");

INSERT INTO tb_auditoria_itens VALUES("3437","","","nu_insc_estadual","576");

INSERT INTO tb_auditoria_itens VALUES("3438","","","ds_observacao","576");

INSERT INTO tb_auditoria_itens VALUES("3439","","","st_status","576");

INSERT INTO tb_auditoria_itens VALUES("3440","0","","co_pessoa","576");

INSERT INTO tb_auditoria_itens VALUES("3441","17","","co_endereco","576");

INSERT INTO tb_auditoria_itens VALUES("3442","0","","co_contato","576");

INSERT INTO tb_auditoria_itens VALUES("3443","0","","co_imagem","576");

INSERT INTO tb_auditoria_itens VALUES("3444","","","ds_endereco","577");

INSERT INTO tb_auditoria_itens VALUES("3445","","","ds_complemento","577");

INSERT INTO tb_auditoria_itens VALUES("3446","","","ds_bairro","577");

INSERT INTO tb_auditoria_itens VALUES("3447","","","nu_cep","577");

INSERT INTO tb_auditoria_itens VALUES("3448","","","no_cidade","577");

INSERT INTO tb_auditoria_itens VALUES("3449","","","sg_uf","577");

INSERT INTO tb_auditoria_itens VALUES("3450","12","","co_empresa","578");

INSERT INTO tb_auditoria_itens VALUES("3451","","","no_empresa","578");

INSERT INTO tb_auditoria_itens VALUES("3452","SALãO NOVO VISUAL","","no_fantasia","578");

INSERT INTO tb_auditoria_itens VALUES("3453","2018-08-14 16:45:26","","dt_cadastro","578");

INSERT INTO tb_auditoria_itens VALUES("3454","","","nu_cnpj","578");

INSERT INTO tb_auditoria_itens VALUES("3455","","","nu_insc_estadual","578");

INSERT INTO tb_auditoria_itens VALUES("3456","","","ds_observacao","578");

INSERT INTO tb_auditoria_itens VALUES("3457","","","st_status","578");

INSERT INTO tb_auditoria_itens VALUES("3458","0","","co_pessoa","578");

INSERT INTO tb_auditoria_itens VALUES("3459","17","23","co_endereco","578");

INSERT INTO tb_auditoria_itens VALUES("3460","0","","co_contato","578");

INSERT INTO tb_auditoria_itens VALUES("3461","0","","co_imagem","578");

INSERT INTO tb_auditoria_itens VALUES("3462","15","","co_contato","579");

INSERT INTO tb_auditoria_itens VALUES("3463","36234625754","42352326632","nu_tel1","579");

INSERT INTO tb_auditoria_itens VALUES("3464","","","nu_tel2","579");

INSERT INTO tb_auditoria_itens VALUES("3465","","","nu_tel3","579");

INSERT INTO tb_auditoria_itens VALUES("3466","","","nu_tel_0800","579");

INSERT INTO tb_auditoria_itens VALUES("3467","leo@mail.com","","ds_email","579");

INSERT INTO tb_auditoria_itens VALUES("3468","","","ds_site","579");

INSERT INTO tb_auditoria_itens VALUES("3469","","11","co_assinante","580");

INSERT INTO tb_auditoria_itens VALUES("3470","","3","tp_estabelecimento","580");

INSERT INTO tb_auditoria_itens VALUES("3471","","","tp_atendimento","580");

INSERT INTO tb_auditoria_itens VALUES("3472","","","tp_genero_especializado","580");

INSERT INTO tb_auditoria_itens VALUES("3473","","","tp_estacionamento","580");

INSERT INTO tb_auditoria_itens VALUES("3474","","N","st_lanchonete","580");

INSERT INTO tb_auditoria_itens VALUES("3475","","N","st_televisao","580");

INSERT INTO tb_auditoria_itens VALUES("3476","","N","st_wifi","580");

INSERT INTO tb_auditoria_itens VALUES("3477","","N","st_acesso_deficiente","580");

INSERT INTO tb_auditoria_itens VALUES("3478","","N","st_jogos","580");

INSERT INTO tb_auditoria_itens VALUES("3479","","11","co_assinante","581");

INSERT INTO tb_auditoria_itens VALUES("3480","","1","nu_dia_semana","581");

INSERT INTO tb_auditoria_itens VALUES("3481","","08:00","nu_hora_abertura","581");

INSERT INTO tb_auditoria_itens VALUES("3482","","18:00","nu_hora_fechamento","581");

INSERT INTO tb_auditoria_itens VALUES("3483","","11","co_assinante","582");

INSERT INTO tb_auditoria_itens VALUES("3484","","2","nu_dia_semana","582");

INSERT INTO tb_auditoria_itens VALUES("3485","","08:00","nu_hora_abertura","582");

INSERT INTO tb_auditoria_itens VALUES("3486","","18:00","nu_hora_fechamento","582");

INSERT INTO tb_auditoria_itens VALUES("3487","","11","co_assinante","583");

INSERT INTO tb_auditoria_itens VALUES("3488","","3","nu_dia_semana","583");

INSERT INTO tb_auditoria_itens VALUES("3489","","08:00","nu_hora_abertura","583");

INSERT INTO tb_auditoria_itens VALUES("3490","","18:00","nu_hora_fechamento","583");

INSERT INTO tb_auditoria_itens VALUES("3491","","11","co_assinante","584");

INSERT INTO tb_auditoria_itens VALUES("3492","","4","nu_dia_semana","584");

INSERT INTO tb_auditoria_itens VALUES("3493","","08:00","nu_hora_abertura","584");

INSERT INTO tb_auditoria_itens VALUES("3494","","18:00","nu_hora_fechamento","584");

INSERT INTO tb_auditoria_itens VALUES("3495","","11","co_assinante","585");

INSERT INTO tb_auditoria_itens VALUES("3496","","5","nu_dia_semana","585");

INSERT INTO tb_auditoria_itens VALUES("3497","","08:00","nu_hora_abertura","585");

INSERT INTO tb_auditoria_itens VALUES("3498","","18:00","nu_hora_fechamento","585");

INSERT INTO tb_auditoria_itens VALUES("3731","15","","co_pessoa","620");

INSERT INTO tb_auditoria_itens VALUES("3732","","","nu_cpf","620");

INSERT INTO tb_auditoria_itens VALUES("3733","LEO BESSA","LEO BESSA","no_pessoa","620");

INSERT INTO tb_auditoria_itens VALUES("3734","","","nu_rg","620");

INSERT INTO tb_auditoria_itens VALUES("3735","2018-08-14 16:45:26","","dt_cadastro","620");

INSERT INTO tb_auditoria_itens VALUES("3736","","","dt_nascimento","620");

INSERT INTO tb_auditoria_itens VALUES("3737","","","st_sexo","620");

INSERT INTO tb_auditoria_itens VALUES("3738","0","","co_endereco","620");

INSERT INTO tb_auditoria_itens VALUES("3739","15","","co_contato","620");

INSERT INTO tb_auditoria_itens VALUES("3740","0","","co_imagem","620");

INSERT INTO tb_auditoria_itens VALUES("3741","12","","co_empresa","621");

INSERT INTO tb_auditoria_itens VALUES("3742","","","no_empresa","621");

INSERT INTO tb_auditoria_itens VALUES("3743","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","621");

INSERT INTO tb_auditoria_itens VALUES("3744","2018-08-14 16:45:26","","dt_cadastro","621");

INSERT INTO tb_auditoria_itens VALUES("3745","","","nu_cnpj","621");

INSERT INTO tb_auditoria_itens VALUES("3746","","","nu_insc_estadual","621");

INSERT INTO tb_auditoria_itens VALUES("3747","","","ds_observacao","621");

INSERT INTO tb_auditoria_itens VALUES("3748","","","st_status","621");

INSERT INTO tb_auditoria_itens VALUES("3749","0","","co_pessoa","621");

INSERT INTO tb_auditoria_itens VALUES("3750","23","","co_endereco","621");

INSERT INTO tb_auditoria_itens VALUES("3751","0","","co_contato","621");

INSERT INTO tb_auditoria_itens VALUES("3752","0","","co_imagem","621");

INSERT INTO tb_auditoria_itens VALUES("3753","","","ds_endereco","622");

INSERT INTO tb_auditoria_itens VALUES("3754","","","ds_complemento","622");

INSERT INTO tb_auditoria_itens VALUES("3755","","","ds_bairro","622");

INSERT INTO tb_auditoria_itens VALUES("3756","","","nu_cep","622");

INSERT INTO tb_auditoria_itens VALUES("3757","","","no_cidade","622");

INSERT INTO tb_auditoria_itens VALUES("3758","","","sg_uf","622");

INSERT INTO tb_auditoria_itens VALUES("3759","12","","co_empresa","623");

INSERT INTO tb_auditoria_itens VALUES("3760","","","no_empresa","623");

INSERT INTO tb_auditoria_itens VALUES("3761","SALãO NOVO VISUAL","","no_fantasia","623");

INSERT INTO tb_auditoria_itens VALUES("3762","2018-08-14 16:45:26","","dt_cadastro","623");

INSERT INTO tb_auditoria_itens VALUES("3763","","","nu_cnpj","623");

INSERT INTO tb_auditoria_itens VALUES("3764","","","nu_insc_estadual","623");

INSERT INTO tb_auditoria_itens VALUES("3765","","","ds_observacao","623");

INSERT INTO tb_auditoria_itens VALUES("3766","","","st_status","623");

INSERT INTO tb_auditoria_itens VALUES("3767","0","","co_pessoa","623");

INSERT INTO tb_auditoria_itens VALUES("3768","23","27","co_endereco","623");

INSERT INTO tb_auditoria_itens VALUES("3769","0","","co_contato","623");

INSERT INTO tb_auditoria_itens VALUES("3770","0","","co_imagem","623");

INSERT INTO tb_auditoria_itens VALUES("3771","15","","co_contato","624");

INSERT INTO tb_auditoria_itens VALUES("3772","42352326632","55432643643","nu_tel1","624");

INSERT INTO tb_auditoria_itens VALUES("3773","","","nu_tel2","624");

INSERT INTO tb_auditoria_itens VALUES("3774","","","nu_tel3","624");

INSERT INTO tb_auditoria_itens VALUES("3775","","","nu_tel_0800","624");

INSERT INTO tb_auditoria_itens VALUES("3776","leo@mail.com","leo@mail.com","ds_email","624");

INSERT INTO tb_auditoria_itens VALUES("3777","","","ds_site","624");

INSERT INTO tb_auditoria_itens VALUES("3778","","11","co_assinante","625");

INSERT INTO tb_auditoria_itens VALUES("3779","","2","tp_estabelecimento","625");

INSERT INTO tb_auditoria_itens VALUES("3780","","","tp_atendimento","625");

INSERT INTO tb_auditoria_itens VALUES("3781","","","tp_genero_especializado","625");

INSERT INTO tb_auditoria_itens VALUES("3782","","","tp_estacionamento","625");

INSERT INTO tb_auditoria_itens VALUES("3783","","N","st_lanchonete","625");

INSERT INTO tb_auditoria_itens VALUES("3784","","N","st_televisao","625");

INSERT INTO tb_auditoria_itens VALUES("3785","","N","st_wifi","625");

INSERT INTO tb_auditoria_itens VALUES("3786","","N","st_acesso_deficiente","625");

INSERT INTO tb_auditoria_itens VALUES("3787","","N","st_jogos","625");

INSERT INTO tb_auditoria_itens VALUES("3788","","11","co_assinante","626");

INSERT INTO tb_auditoria_itens VALUES("3789","","1","nu_dia_semana","626");

INSERT INTO tb_auditoria_itens VALUES("3790","","08:00","nu_hora_abertura","626");

INSERT INTO tb_auditoria_itens VALUES("3791","","18:00","nu_hora_fechamento","626");

INSERT INTO tb_auditoria_itens VALUES("3792","","11","co_assinante","627");

INSERT INTO tb_auditoria_itens VALUES("3793","","2","nu_dia_semana","627");

INSERT INTO tb_auditoria_itens VALUES("3794","","08:00","nu_hora_abertura","627");

INSERT INTO tb_auditoria_itens VALUES("3795","","18:00","nu_hora_fechamento","627");

INSERT INTO tb_auditoria_itens VALUES("3796","","11","co_assinante","628");

INSERT INTO tb_auditoria_itens VALUES("3797","","3","nu_dia_semana","628");

INSERT INTO tb_auditoria_itens VALUES("3798","","08:00","nu_hora_abertura","628");

INSERT INTO tb_auditoria_itens VALUES("3799","","18:00","nu_hora_fechamento","628");

INSERT INTO tb_auditoria_itens VALUES("3800","","11","co_assinante","629");

INSERT INTO tb_auditoria_itens VALUES("3801","","4","nu_dia_semana","629");

INSERT INTO tb_auditoria_itens VALUES("3802","","08:00","nu_hora_abertura","629");

INSERT INTO tb_auditoria_itens VALUES("3803","","18:00","nu_hora_fechamento","629");

INSERT INTO tb_auditoria_itens VALUES("3804","","11","co_assinante","630");

INSERT INTO tb_auditoria_itens VALUES("3805","","5","nu_dia_semana","630");

INSERT INTO tb_auditoria_itens VALUES("3806","","08:00","nu_hora_abertura","630");

INSERT INTO tb_auditoria_itens VALUES("3807","","18:00","nu_hora_fechamento","630");

INSERT INTO tb_auditoria_itens VALUES("3808","","fp-salao-novo-visual-11-5ba509a565cb0.JPG","ds_caminho","631");

INSERT INTO tb_auditoria_itens VALUES("3809","","11","co_assinante","632");

INSERT INTO tb_auditoria_itens VALUES("3810","","3","co_imagem","632");

INSERT INTO tb_auditoria_itens VALUES("3811","","Assinante/Assinante-11/salao-novo-visual-11-5ba509a57c770.JPG","ds_caminho","633");

INSERT INTO tb_auditoria_itens VALUES("3812","","11","co_assinante","634");

INSERT INTO tb_auditoria_itens VALUES("3813","","4","co_imagem","634");

INSERT INTO tb_auditoria_itens VALUES("3814","","Assinante/Assinante-11/salao-novo-visual-11-5ba509a592fa6.JPG","ds_caminho","635");

INSERT INTO tb_auditoria_itens VALUES("3815","","11","co_assinante","636");

INSERT INTO tb_auditoria_itens VALUES("3816","","5","co_imagem","636");

INSERT INTO tb_auditoria_itens VALUES("3817","","Assinante/Assinante-11/salao-novo-visual-11-5ba509a5aa251.JPG","ds_caminho","637");

INSERT INTO tb_auditoria_itens VALUES("3818","","11","co_assinante","638");

INSERT INTO tb_auditoria_itens VALUES("3819","","6","co_imagem","638");

INSERT INTO tb_auditoria_itens VALUES("3820","15","","co_pessoa","639");

INSERT INTO tb_auditoria_itens VALUES("3821","","","nu_cpf","639");

INSERT INTO tb_auditoria_itens VALUES("3822","LEO BESSA","LEO BESSA","no_pessoa","639");

INSERT INTO tb_auditoria_itens VALUES("3823","","","nu_rg","639");

INSERT INTO tb_auditoria_itens VALUES("3824","2018-08-14 16:45:26","","dt_cadastro","639");

INSERT INTO tb_auditoria_itens VALUES("3825","","","dt_nascimento","639");

INSERT INTO tb_auditoria_itens VALUES("3826","","","st_sexo","639");

INSERT INTO tb_auditoria_itens VALUES("3827","0","","co_endereco","639");

INSERT INTO tb_auditoria_itens VALUES("3828","15","","co_contato","639");

INSERT INTO tb_auditoria_itens VALUES("3829","0","","co_imagem","639");

INSERT INTO tb_auditoria_itens VALUES("3830","12","","co_empresa","640");

INSERT INTO tb_auditoria_itens VALUES("3831","","","no_empresa","640");

INSERT INTO tb_auditoria_itens VALUES("3832","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","640");

INSERT INTO tb_auditoria_itens VALUES("3833","2018-08-14 16:45:26","","dt_cadastro","640");

INSERT INTO tb_auditoria_itens VALUES("3834","","","nu_cnpj","640");

INSERT INTO tb_auditoria_itens VALUES("3835","","","nu_insc_estadual","640");

INSERT INTO tb_auditoria_itens VALUES("3836","","","ds_observacao","640");

INSERT INTO tb_auditoria_itens VALUES("3837","","","st_status","640");

INSERT INTO tb_auditoria_itens VALUES("3838","0","","co_pessoa","640");

INSERT INTO tb_auditoria_itens VALUES("3839","27","","co_endereco","640");

INSERT INTO tb_auditoria_itens VALUES("3840","0","","co_contato","640");

INSERT INTO tb_auditoria_itens VALUES("3841","0","","co_imagem","640");

INSERT INTO tb_auditoria_itens VALUES("3842","","QR 403 Conjunto 10","ds_endereco","641");

INSERT INTO tb_auditoria_itens VALUES("3843","","Casa 28","ds_complemento","641");

INSERT INTO tb_auditoria_itens VALUES("3844","","Samambaia Norte (Samambaia)","ds_bairro","641");

INSERT INTO tb_auditoria_itens VALUES("3845","","72319111","nu_cep","641");

INSERT INTO tb_auditoria_itens VALUES("3846","","Brasília","no_cidade","641");

INSERT INTO tb_auditoria_itens VALUES("3847","","DF","sg_uf","641");

INSERT INTO tb_auditoria_itens VALUES("3848","12","","co_empresa","642");

INSERT INTO tb_auditoria_itens VALUES("3849","","","no_empresa","642");

INSERT INTO tb_auditoria_itens VALUES("3850","SALãO NOVO VISUAL","","no_fantasia","642");

INSERT INTO tb_auditoria_itens VALUES("3851","2018-08-14 16:45:26","","dt_cadastro","642");

INSERT INTO tb_auditoria_itens VALUES("3852","","","nu_cnpj","642");

INSERT INTO tb_auditoria_itens VALUES("3853","","","nu_insc_estadual","642");

INSERT INTO tb_auditoria_itens VALUES("3854","","","ds_observacao","642");

INSERT INTO tb_auditoria_itens VALUES("3855","","","st_status","642");

INSERT INTO tb_auditoria_itens VALUES("3856","0","","co_pessoa","642");

INSERT INTO tb_auditoria_itens VALUES("3857","27","28","co_endereco","642");

INSERT INTO tb_auditoria_itens VALUES("3858","0","","co_contato","642");

INSERT INTO tb_auditoria_itens VALUES("3859","0","","co_imagem","642");

INSERT INTO tb_auditoria_itens VALUES("3860","15","","co_contato","643");

INSERT INTO tb_auditoria_itens VALUES("3861","55432643643","32523563666","nu_tel1","643");

INSERT INTO tb_auditoria_itens VALUES("3862","","","nu_tel2","643");

INSERT INTO tb_auditoria_itens VALUES("3863","","","nu_tel3","643");

INSERT INTO tb_auditoria_itens VALUES("3864","","","nu_tel_0800","643");

INSERT INTO tb_auditoria_itens VALUES("3865","leo@mail.com","leo@mail.com","ds_email","643");

INSERT INTO tb_auditoria_itens VALUES("3866","","","ds_site","643");

INSERT INTO tb_auditoria_itens VALUES("3867","","11","co_assinante","644");

INSERT INTO tb_auditoria_itens VALUES("3868","","2","tp_estabelecimento","644");

INSERT INTO tb_auditoria_itens VALUES("3869","","","tp_atendimento","644");

INSERT INTO tb_auditoria_itens VALUES("3870","","","tp_genero_especializado","644");

INSERT INTO tb_auditoria_itens VALUES("3871","","","tp_estacionamento","644");

INSERT INTO tb_auditoria_itens VALUES("3872","","N","st_lanchonete","644");

INSERT INTO tb_auditoria_itens VALUES("3873","","N","st_televisao","644");

INSERT INTO tb_auditoria_itens VALUES("3874","","N","st_wifi","644");

INSERT INTO tb_auditoria_itens VALUES("3875","","N","st_acesso_deficiente","644");

INSERT INTO tb_auditoria_itens VALUES("3876","","N","st_jogos","644");

INSERT INTO tb_auditoria_itens VALUES("3877","","11","co_assinante","645");

INSERT INTO tb_auditoria_itens VALUES("3878","","1","nu_dia_semana","645");

INSERT INTO tb_auditoria_itens VALUES("3879","","08:00","nu_hora_abertura","645");

INSERT INTO tb_auditoria_itens VALUES("3880","","18:00","nu_hora_fechamento","645");

INSERT INTO tb_auditoria_itens VALUES("3881","","11","co_assinante","646");

INSERT INTO tb_auditoria_itens VALUES("3882","","2","nu_dia_semana","646");

INSERT INTO tb_auditoria_itens VALUES("3883","","08:00","nu_hora_abertura","646");

INSERT INTO tb_auditoria_itens VALUES("3884","","18:00","nu_hora_fechamento","646");

INSERT INTO tb_auditoria_itens VALUES("3885","","11","co_assinante","647");

INSERT INTO tb_auditoria_itens VALUES("3886","","3","nu_dia_semana","647");

INSERT INTO tb_auditoria_itens VALUES("3887","","08:00","nu_hora_abertura","647");

INSERT INTO tb_auditoria_itens VALUES("3888","","18:00","nu_hora_fechamento","647");

INSERT INTO tb_auditoria_itens VALUES("3889","","11","co_assinante","648");

INSERT INTO tb_auditoria_itens VALUES("3890","","4","nu_dia_semana","648");

INSERT INTO tb_auditoria_itens VALUES("3891","","08:00","nu_hora_abertura","648");

INSERT INTO tb_auditoria_itens VALUES("3892","","18:00","nu_hora_fechamento","648");

INSERT INTO tb_auditoria_itens VALUES("3893","","11","co_assinante","649");

INSERT INTO tb_auditoria_itens VALUES("3894","","5","nu_dia_semana","649");

INSERT INTO tb_auditoria_itens VALUES("3895","","08:00","nu_hora_abertura","649");

INSERT INTO tb_auditoria_itens VALUES("3896","","18:00","nu_hora_fechamento","649");

INSERT INTO tb_auditoria_itens VALUES("3897","","fp-salao-novo-visual-11-5ba54ab0076e1.JPG","ds_caminho","650");

INSERT INTO tb_auditoria_itens VALUES("3898","","11","co_assinante","651");

INSERT INTO tb_auditoria_itens VALUES("3899","","7","co_imagem","651");

INSERT INTO tb_auditoria_itens VALUES("3988","15","","co_pessoa","660");

INSERT INTO tb_auditoria_itens VALUES("3989","","","nu_cpf","660");

INSERT INTO tb_auditoria_itens VALUES("3990","LEO BESSA","LEO BESSA","no_pessoa","660");

INSERT INTO tb_auditoria_itens VALUES("3991","","","nu_rg","660");

INSERT INTO tb_auditoria_itens VALUES("3992","2018-08-14 16:45:26","","dt_cadastro","660");

INSERT INTO tb_auditoria_itens VALUES("3993","","","dt_nascimento","660");

INSERT INTO tb_auditoria_itens VALUES("3994","","","st_sexo","660");

INSERT INTO tb_auditoria_itens VALUES("3995","0","","co_endereco","660");

INSERT INTO tb_auditoria_itens VALUES("3996","15","","co_contato","660");

INSERT INTO tb_auditoria_itens VALUES("3997","0","","co_imagem","660");

INSERT INTO tb_auditoria_itens VALUES("3998","12","","co_empresa","661");

INSERT INTO tb_auditoria_itens VALUES("3999","","","no_empresa","661");

INSERT INTO tb_auditoria_itens VALUES("4000","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","661");

INSERT INTO tb_auditoria_itens VALUES("4001","2018-08-14 16:45:26","","dt_cadastro","661");

INSERT INTO tb_auditoria_itens VALUES("4002","","","nu_cnpj","661");

INSERT INTO tb_auditoria_itens VALUES("4003","","","nu_insc_estadual","661");

INSERT INTO tb_auditoria_itens VALUES("4004","","","ds_observacao","661");

INSERT INTO tb_auditoria_itens VALUES("4005","","","st_status","661");

INSERT INTO tb_auditoria_itens VALUES("4006","0","","co_pessoa","661");

INSERT INTO tb_auditoria_itens VALUES("4007","0","","co_endereco","661");

INSERT INTO tb_auditoria_itens VALUES("4008","0","","co_contato","661");

INSERT INTO tb_auditoria_itens VALUES("4009","0","","co_imagem","661");

INSERT INTO tb_auditoria_itens VALUES("4010","","QR 403 Conjunto 10","ds_endereco","662");

INSERT INTO tb_auditoria_itens VALUES("4011","","Casa 28","ds_complemento","662");

INSERT INTO tb_auditoria_itens VALUES("4012","","Samambaia Norte (Samambaia)","ds_bairro","662");

INSERT INTO tb_auditoria_itens VALUES("4013","","72319111","nu_cep","662");

INSERT INTO tb_auditoria_itens VALUES("4014","","Brasília","no_cidade","662");

INSERT INTO tb_auditoria_itens VALUES("4015","","DF","sg_uf","662");

INSERT INTO tb_auditoria_itens VALUES("4016","12","","co_empresa","663");

INSERT INTO tb_auditoria_itens VALUES("4017","","","no_empresa","663");

INSERT INTO tb_auditoria_itens VALUES("4018","SALãO NOVO VISUAL","","no_fantasia","663");

INSERT INTO tb_auditoria_itens VALUES("4019","2018-08-14 16:45:26","","dt_cadastro","663");

INSERT INTO tb_auditoria_itens VALUES("4020","","","nu_cnpj","663");

INSERT INTO tb_auditoria_itens VALUES("4021","","","nu_insc_estadual","663");

INSERT INTO tb_auditoria_itens VALUES("4022","","","ds_observacao","663");

INSERT INTO tb_auditoria_itens VALUES("4023","","","st_status","663");

INSERT INTO tb_auditoria_itens VALUES("4024","0","","co_pessoa","663");

INSERT INTO tb_auditoria_itens VALUES("4025","0","29","co_endereco","663");

INSERT INTO tb_auditoria_itens VALUES("4026","0","","co_contato","663");

INSERT INTO tb_auditoria_itens VALUES("4027","0","","co_imagem","663");

INSERT INTO tb_auditoria_itens VALUES("4028","15","","co_contato","664");

INSERT INTO tb_auditoria_itens VALUES("4029","32523563666","32523563666","nu_tel1","664");

INSERT INTO tb_auditoria_itens VALUES("4030","","","nu_tel2","664");

INSERT INTO tb_auditoria_itens VALUES("4031","","","nu_tel3","664");

INSERT INTO tb_auditoria_itens VALUES("4032","","","nu_tel_0800","664");

INSERT INTO tb_auditoria_itens VALUES("4033","leo@mail.com","leo@mail.com","ds_email","664");

INSERT INTO tb_auditoria_itens VALUES("4034","","","ds_site","664");

INSERT INTO tb_auditoria_itens VALUES("4035","2","","co_facilidade_beneficio","665");

INSERT INTO tb_auditoria_itens VALUES("4036","2","","tp_estabelecimento","665");

INSERT INTO tb_auditoria_itens VALUES("4037","2","","tp_atendimento","665");

INSERT INTO tb_auditoria_itens VALUES("4038","3","","tp_genero_especializado","665");

INSERT INTO tb_auditoria_itens VALUES("4039","2","","tp_estacionamento","665");

INSERT INTO tb_auditoria_itens VALUES("4040","S","","st_lanchonete","665");

INSERT INTO tb_auditoria_itens VALUES("4041","S","","st_televisao","665");

INSERT INTO tb_auditoria_itens VALUES("4042","S","","st_wifi","665");

INSERT INTO tb_auditoria_itens VALUES("4043","N","","st_acesso_deficiente","665");

INSERT INTO tb_auditoria_itens VALUES("4044","N","","st_jogos","665");

INSERT INTO tb_auditoria_itens VALUES("4045","11","","co_assinante","665");

INSERT INTO tb_auditoria_itens VALUES("4046","3","","co_facilidade_beneficio","665");

INSERT INTO tb_auditoria_itens VALUES("4047","1","","tp_estabelecimento","665");

INSERT INTO tb_auditoria_itens VALUES("4048","0","","tp_atendimento","665");

INSERT INTO tb_auditoria_itens VALUES("4049","0","","tp_genero_especializado","665");

INSERT INTO tb_auditoria_itens VALUES("4050","0","","tp_estacionamento","665");

INSERT INTO tb_auditoria_itens VALUES("4051","N","","st_lanchonete","665");

INSERT INTO tb_auditoria_itens VALUES("4052","N","","st_televisao","665");

INSERT INTO tb_auditoria_itens VALUES("4053","N","","st_wifi","665");

INSERT INTO tb_auditoria_itens VALUES("4054","N","","st_acesso_deficiente","665");

INSERT INTO tb_auditoria_itens VALUES("4055","N","","st_jogos","665");

INSERT INTO tb_auditoria_itens VALUES("4056","11","","co_assinante","665");

INSERT INTO tb_auditoria_itens VALUES("4057","8","","co_facilidade_beneficio","665");

INSERT INTO tb_auditoria_itens VALUES("4058","3","","tp_estabelecimento","665");

INSERT INTO tb_auditoria_itens VALUES("4059","0","","tp_atendimento","665");

INSERT INTO tb_auditoria_itens VALUES("4060","0","","tp_genero_especializado","665");

INSERT INTO tb_auditoria_itens VALUES("4061","0","","tp_estacionamento","665");

INSERT INTO tb_auditoria_itens VALUES("4062","N","","st_lanchonete","665");

INSERT INTO tb_auditoria_itens VALUES("4063","N","","st_televisao","665");

INSERT INTO tb_auditoria_itens VALUES("4064","N","","st_wifi","665");

INSERT INTO tb_auditoria_itens VALUES("4065","N","","st_acesso_deficiente","665");

INSERT INTO tb_auditoria_itens VALUES("4066","N","","st_jogos","665");

INSERT INTO tb_auditoria_itens VALUES("4067","11","","co_assinante","665");

INSERT INTO tb_auditoria_itens VALUES("4068","12","","co_facilidade_beneficio","665");

INSERT INTO tb_auditoria_itens VALUES("4069","2","","tp_estabelecimento","665");

INSERT INTO tb_auditoria_itens VALUES("4070","0","","tp_atendimento","665");

INSERT INTO tb_auditoria_itens VALUES("4071","0","","tp_genero_especializado","665");

INSERT INTO tb_auditoria_itens VALUES("4072","0","","tp_estacionamento","665");

INSERT INTO tb_auditoria_itens VALUES("4073","N","","st_lanchonete","665");

INSERT INTO tb_auditoria_itens VALUES("4074","N","","st_televisao","665");

INSERT INTO tb_auditoria_itens VALUES("4075","N","","st_wifi","665");

INSERT INTO tb_auditoria_itens VALUES("4076","N","","st_acesso_deficiente","665");

INSERT INTO tb_auditoria_itens VALUES("4077","N","","st_jogos","665");

INSERT INTO tb_auditoria_itens VALUES("4078","11","","co_assinante","665");

INSERT INTO tb_auditoria_itens VALUES("4079","13","","co_facilidade_beneficio","665");

INSERT INTO tb_auditoria_itens VALUES("4080","2","","tp_estabelecimento","665");

INSERT INTO tb_auditoria_itens VALUES("4081","0","","tp_atendimento","665");

INSERT INTO tb_auditoria_itens VALUES("4082","0","","tp_genero_especializado","665");

INSERT INTO tb_auditoria_itens VALUES("4083","0","","tp_estacionamento","665");

INSERT INTO tb_auditoria_itens VALUES("4084","N","","st_lanchonete","665");

INSERT INTO tb_auditoria_itens VALUES("4085","N","","st_televisao","665");

INSERT INTO tb_auditoria_itens VALUES("4086","N","","st_wifi","665");

INSERT INTO tb_auditoria_itens VALUES("4087","N","","st_acesso_deficiente","665");

INSERT INTO tb_auditoria_itens VALUES("4088","N","","st_jogos","665");

INSERT INTO tb_auditoria_itens VALUES("4089","11","","co_assinante","665");

INSERT INTO tb_auditoria_itens VALUES("4090","","11","co_assinante","666");

INSERT INTO tb_auditoria_itens VALUES("4091","","2","tp_estabelecimento","666");

INSERT INTO tb_auditoria_itens VALUES("4092","","","tp_atendimento","666");

INSERT INTO tb_auditoria_itens VALUES("4093","","","tp_genero_especializado","666");

INSERT INTO tb_auditoria_itens VALUES("4094","","","tp_estacionamento","666");

INSERT INTO tb_auditoria_itens VALUES("4095","","N","st_lanchonete","666");

INSERT INTO tb_auditoria_itens VALUES("4096","","N","st_televisao","666");

INSERT INTO tb_auditoria_itens VALUES("4097","","N","st_wifi","666");

INSERT INTO tb_auditoria_itens VALUES("4098","","N","st_acesso_deficiente","666");

INSERT INTO tb_auditoria_itens VALUES("4099","","N","st_jogos","666");

INSERT INTO tb_auditoria_itens VALUES("4100","1","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4101","1","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4102","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4103","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4104","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4105","2","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4106","2","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4107","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4108","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4109","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4110","3","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4111","3","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4112","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4113","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4114","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4115","4","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4116","4","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4117","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4118","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4119","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4120","5","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4121","5","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4122","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4123","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4124","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4125","21","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4126","1","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4127","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4128","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4129","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4130","22","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4131","2","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4132","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4133","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4134","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4135","23","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4136","3","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4137","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4138","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4139","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4140","24","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4141","4","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4142","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4143","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4144","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4145","25","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4146","5","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4147","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4148","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4149","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4150","26","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4151","1","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4152","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4153","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4154","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4155","27","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4156","2","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4157","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4158","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4159","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4160","28","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4161","3","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4162","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4163","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4164","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4165","29","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4166","4","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4167","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4168","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4169","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4170","30","","co_funcionamento","667");

INSERT INTO tb_auditoria_itens VALUES("4171","5","","nu_dia_semana","667");

INSERT INTO tb_auditoria_itens VALUES("4172","08:00","","nu_hora_abertura","667");

INSERT INTO tb_auditoria_itens VALUES("4173","18:00","","nu_hora_fechamento","667");

INSERT INTO tb_auditoria_itens VALUES("4174","11","","co_assinante","667");

INSERT INTO tb_auditoria_itens VALUES("4175","","11","co_assinante","668");

INSERT INTO tb_auditoria_itens VALUES("4176","","1","nu_dia_semana","668");

INSERT INTO tb_auditoria_itens VALUES("4177","","08:00","nu_hora_abertura","668");

INSERT INTO tb_auditoria_itens VALUES("4178","","18:00","nu_hora_fechamento","668");

INSERT INTO tb_auditoria_itens VALUES("4179","","11","co_assinante","669");

INSERT INTO tb_auditoria_itens VALUES("4180","","2","nu_dia_semana","669");

INSERT INTO tb_auditoria_itens VALUES("4181","","08:00","nu_hora_abertura","669");

INSERT INTO tb_auditoria_itens VALUES("4182","","18:00","nu_hora_fechamento","669");

INSERT INTO tb_auditoria_itens VALUES("4183","","11","co_assinante","670");

INSERT INTO tb_auditoria_itens VALUES("4184","","3","nu_dia_semana","670");

INSERT INTO tb_auditoria_itens VALUES("4185","","08:00","nu_hora_abertura","670");

INSERT INTO tb_auditoria_itens VALUES("4186","","18:00","nu_hora_fechamento","670");

INSERT INTO tb_auditoria_itens VALUES("4187","","11","co_assinante","671");

INSERT INTO tb_auditoria_itens VALUES("4188","","4","nu_dia_semana","671");

INSERT INTO tb_auditoria_itens VALUES("4189","","08:00","nu_hora_abertura","671");

INSERT INTO tb_auditoria_itens VALUES("4190","","18:00","nu_hora_fechamento","671");

INSERT INTO tb_auditoria_itens VALUES("4191","","11","co_assinante","672");

INSERT INTO tb_auditoria_itens VALUES("4192","","5","nu_dia_semana","672");

INSERT INTO tb_auditoria_itens VALUES("4193","","08:00","nu_hora_abertura","672");

INSERT INTO tb_auditoria_itens VALUES("4194","","18:00","nu_hora_fechamento","672");

INSERT INTO tb_auditoria_itens VALUES("4195","","fp-salao-novo-visual-11-5ba54cc1a4520.JPG","ds_caminho","673");

INSERT INTO tb_auditoria_itens VALUES("4196","","11","co_assinante","674");

INSERT INTO tb_auditoria_itens VALUES("4197","","8","co_imagem","674");

INSERT INTO tb_auditoria_itens VALUES("4198","","","nu_tel1","675");

INSERT INTO tb_auditoria_itens VALUES("4199","","","nu_tel1","676");

INSERT INTO tb_auditoria_itens VALUES("4200","12","","co_empresa","677");

INSERT INTO tb_auditoria_itens VALUES("4201","","","no_empresa","677");

INSERT INTO tb_auditoria_itens VALUES("4202","SALãO NOVO VISUAL","","no_fantasia","677");

INSERT INTO tb_auditoria_itens VALUES("4203","2018-08-14 16:45:26","","dt_cadastro","677");

INSERT INTO tb_auditoria_itens VALUES("4204","","","nu_cnpj","677");

INSERT INTO tb_auditoria_itens VALUES("4205","","","nu_insc_estadual","677");

INSERT INTO tb_auditoria_itens VALUES("4206","","","ds_observacao","677");

INSERT INTO tb_auditoria_itens VALUES("4207","","","st_status","677");

INSERT INTO tb_auditoria_itens VALUES("4208","0","","co_pessoa","677");

INSERT INTO tb_auditoria_itens VALUES("4209","29","","co_endereco","677");

INSERT INTO tb_auditoria_itens VALUES("4210","0","20","co_contato","677");

INSERT INTO tb_auditoria_itens VALUES("4211","0","","co_imagem","677");

INSERT INTO tb_auditoria_itens VALUES("4212","","0","tp_estabelecimento","678");

INSERT INTO tb_auditoria_itens VALUES("4213","","11","co_assinante","679");

INSERT INTO tb_auditoria_itens VALUES("4214","","08:00","nu_hora_abertura","679");

INSERT INTO tb_auditoria_itens VALUES("4215","","18:00","nu_hora_fechamento","679");

INSERT INTO tb_auditoria_itens VALUES("4216","","1","nu_dia_semana","679");

INSERT INTO tb_auditoria_itens VALUES("4217","","11","co_assinante","680");

INSERT INTO tb_auditoria_itens VALUES("4218","","08:00","nu_hora_abertura","680");

INSERT INTO tb_auditoria_itens VALUES("4219","","18:00","nu_hora_fechamento","680");

INSERT INTO tb_auditoria_itens VALUES("4220","","2","nu_dia_semana","680");

INSERT INTO tb_auditoria_itens VALUES("4221","","11","co_assinante","681");

INSERT INTO tb_auditoria_itens VALUES("4222","","08:00","nu_hora_abertura","681");

INSERT INTO tb_auditoria_itens VALUES("4223","","18:00","nu_hora_fechamento","681");

INSERT INTO tb_auditoria_itens VALUES("4224","","3","nu_dia_semana","681");

INSERT INTO tb_auditoria_itens VALUES("4225","","11","co_assinante","682");

INSERT INTO tb_auditoria_itens VALUES("4226","","08:00","nu_hora_abertura","682");

INSERT INTO tb_auditoria_itens VALUES("4227","","18:00","nu_hora_fechamento","682");

INSERT INTO tb_auditoria_itens VALUES("4228","","4","nu_dia_semana","682");

INSERT INTO tb_auditoria_itens VALUES("4229","","11","co_assinante","683");

INSERT INTO tb_auditoria_itens VALUES("4230","","08:00","nu_hora_abertura","683");

INSERT INTO tb_auditoria_itens VALUES("4231","","18:00","nu_hora_fechamento","683");

INSERT INTO tb_auditoria_itens VALUES("4232","","5","nu_dia_semana","683");

INSERT INTO tb_auditoria_itens VALUES("4233","15","","co_pessoa","684");

INSERT INTO tb_auditoria_itens VALUES("4234","","","nu_cpf","684");

INSERT INTO tb_auditoria_itens VALUES("4235","LEO BESSA","LEO BESSA","no_pessoa","684");

INSERT INTO tb_auditoria_itens VALUES("4236","","","nu_rg","684");

INSERT INTO tb_auditoria_itens VALUES("4237","2018-08-14 16:45:26","","dt_cadastro","684");

INSERT INTO tb_auditoria_itens VALUES("4238","","","dt_nascimento","684");

INSERT INTO tb_auditoria_itens VALUES("4239","","","st_sexo","684");

INSERT INTO tb_auditoria_itens VALUES("4240","0","","co_endereco","684");

INSERT INTO tb_auditoria_itens VALUES("4241","15","","co_contato","684");

INSERT INTO tb_auditoria_itens VALUES("4242","0","","co_imagem","684");

INSERT INTO tb_auditoria_itens VALUES("4243","12","","co_empresa","685");

INSERT INTO tb_auditoria_itens VALUES("4244","","","no_empresa","685");

INSERT INTO tb_auditoria_itens VALUES("4245","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","685");

INSERT INTO tb_auditoria_itens VALUES("4246","2018-08-14 16:45:26","","dt_cadastro","685");

INSERT INTO tb_auditoria_itens VALUES("4247","","","nu_cnpj","685");

INSERT INTO tb_auditoria_itens VALUES("4248","","","nu_insc_estadual","685");

INSERT INTO tb_auditoria_itens VALUES("4249","","","ds_observacao","685");

INSERT INTO tb_auditoria_itens VALUES("4250","","","st_status","685");

INSERT INTO tb_auditoria_itens VALUES("4251","0","","co_pessoa","685");

INSERT INTO tb_auditoria_itens VALUES("4252","29","","co_endereco","685");

INSERT INTO tb_auditoria_itens VALUES("4253","20","","co_contato","685");

INSERT INTO tb_auditoria_itens VALUES("4254","0","","co_imagem","685");

INSERT INTO tb_auditoria_itens VALUES("4255","29","","co_endereco","686");

INSERT INTO tb_auditoria_itens VALUES("4256","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","686");

INSERT INTO tb_auditoria_itens VALUES("4257","Casa 28","Casa 28","ds_complemento","686");

INSERT INTO tb_auditoria_itens VALUES("4258","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","686");

INSERT INTO tb_auditoria_itens VALUES("4259","72319111","72319111","nu_cep","686");

INSERT INTO tb_auditoria_itens VALUES("4260","Brasília","Brasília","no_cidade","686");

INSERT INTO tb_auditoria_itens VALUES("4261","DF","DF","sg_uf","686");

INSERT INTO tb_auditoria_itens VALUES("4262","12","","co_empresa","687");

INSERT INTO tb_auditoria_itens VALUES("4263","","","no_empresa","687");

INSERT INTO tb_auditoria_itens VALUES("4264","SALãO NOVO VISUAL","","no_fantasia","687");

INSERT INTO tb_auditoria_itens VALUES("4265","2018-08-14 16:45:26","","dt_cadastro","687");

INSERT INTO tb_auditoria_itens VALUES("4266","","","nu_cnpj","687");

INSERT INTO tb_auditoria_itens VALUES("4267","","","nu_insc_estadual","687");

INSERT INTO tb_auditoria_itens VALUES("4268","","","ds_observacao","687");

INSERT INTO tb_auditoria_itens VALUES("4269","","","st_status","687");

INSERT INTO tb_auditoria_itens VALUES("4270","0","","co_pessoa","687");

INSERT INTO tb_auditoria_itens VALUES("4271","29","29","co_endereco","687");

INSERT INTO tb_auditoria_itens VALUES("4272","20","","co_contato","687");

INSERT INTO tb_auditoria_itens VALUES("4273","0","","co_imagem","687");

INSERT INTO tb_auditoria_itens VALUES("4274","15","","co_contato","688");

INSERT INTO tb_auditoria_itens VALUES("4275","32523563666","23523462347","nu_tel1","688");

INSERT INTO tb_auditoria_itens VALUES("4276","","","nu_tel2","688");

INSERT INTO tb_auditoria_itens VALUES("4277","","","nu_tel3","688");

INSERT INTO tb_auditoria_itens VALUES("4278","","","nu_tel_0800","688");

INSERT INTO tb_auditoria_itens VALUES("4279","leo@mail.com","leo@mail.com","ds_email","688");

INSERT INTO tb_auditoria_itens VALUES("4280","","","ds_site","688");

INSERT INTO tb_auditoria_itens VALUES("4281","15","","co_facilidade_beneficio","689");

INSERT INTO tb_auditoria_itens VALUES("4282","2","","tp_estabelecimento","689");

INSERT INTO tb_auditoria_itens VALUES("4283","1","","tp_atendimento","689");

INSERT INTO tb_auditoria_itens VALUES("4284","2","","tp_genero_especializado","689");

INSERT INTO tb_auditoria_itens VALUES("4285","3","","tp_estacionamento","689");

INSERT INTO tb_auditoria_itens VALUES("4286","S","","st_lanchonete","689");

INSERT INTO tb_auditoria_itens VALUES("4287","N","","st_televisao","689");

INSERT INTO tb_auditoria_itens VALUES("4288","N","","st_wifi","689");

INSERT INTO tb_auditoria_itens VALUES("4289","S","","st_acesso_deficiente","689");

INSERT INTO tb_auditoria_itens VALUES("4290","N","","st_jogos","689");

INSERT INTO tb_auditoria_itens VALUES("4291","11","","co_assinante","689");

INSERT INTO tb_auditoria_itens VALUES("4292","","11","co_assinante","690");

INSERT INTO tb_auditoria_itens VALUES("4293","","2","tp_estabelecimento","690");

INSERT INTO tb_auditoria_itens VALUES("4294","","1","tp_atendimento","690");

INSERT INTO tb_auditoria_itens VALUES("4295","","2","tp_genero_especializado","690");

INSERT INTO tb_auditoria_itens VALUES("4296","","3","tp_estacionamento","690");

INSERT INTO tb_auditoria_itens VALUES("4297","","S","st_lanchonete","690");

INSERT INTO tb_auditoria_itens VALUES("4298","","N","st_televisao","690");

INSERT INTO tb_auditoria_itens VALUES("4299","","N","st_wifi","690");

INSERT INTO tb_auditoria_itens VALUES("4300","","S","st_acesso_deficiente","690");

INSERT INTO tb_auditoria_itens VALUES("4301","","N","st_jogos","690");

INSERT INTO tb_auditoria_itens VALUES("4302","36","","co_funcionamento","691");

INSERT INTO tb_auditoria_itens VALUES("4303","1","","nu_dia_semana","691");

INSERT INTO tb_auditoria_itens VALUES("4304","08:00","","nu_hora_abertura","691");

INSERT INTO tb_auditoria_itens VALUES("4305","18:00","","nu_hora_fechamento","691");

INSERT INTO tb_auditoria_itens VALUES("4306","11","","co_assinante","691");

INSERT INTO tb_auditoria_itens VALUES("4307","37","","co_funcionamento","691");

INSERT INTO tb_auditoria_itens VALUES("4308","2","","nu_dia_semana","691");

INSERT INTO tb_auditoria_itens VALUES("4309","08:00","","nu_hora_abertura","691");

INSERT INTO tb_auditoria_itens VALUES("4310","18:00","","nu_hora_fechamento","691");

INSERT INTO tb_auditoria_itens VALUES("4311","11","","co_assinante","691");

INSERT INTO tb_auditoria_itens VALUES("4312","38","","co_funcionamento","691");

INSERT INTO tb_auditoria_itens VALUES("4313","3","","nu_dia_semana","691");

INSERT INTO tb_auditoria_itens VALUES("4314","08:00","","nu_hora_abertura","691");

INSERT INTO tb_auditoria_itens VALUES("4315","18:00","","nu_hora_fechamento","691");

INSERT INTO tb_auditoria_itens VALUES("4316","11","","co_assinante","691");

INSERT INTO tb_auditoria_itens VALUES("4317","39","","co_funcionamento","691");

INSERT INTO tb_auditoria_itens VALUES("4318","4","","nu_dia_semana","691");

INSERT INTO tb_auditoria_itens VALUES("4319","08:00","","nu_hora_abertura","691");

INSERT INTO tb_auditoria_itens VALUES("4320","18:00","","nu_hora_fechamento","691");

INSERT INTO tb_auditoria_itens VALUES("4321","11","","co_assinante","691");

INSERT INTO tb_auditoria_itens VALUES("4322","40","","co_funcionamento","691");

INSERT INTO tb_auditoria_itens VALUES("4323","5","","nu_dia_semana","691");

INSERT INTO tb_auditoria_itens VALUES("4324","08:00","","nu_hora_abertura","691");

INSERT INTO tb_auditoria_itens VALUES("4325","18:00","","nu_hora_fechamento","691");

INSERT INTO tb_auditoria_itens VALUES("4326","11","","co_assinante","691");

INSERT INTO tb_auditoria_itens VALUES("4327","41","","co_funcionamento","691");

INSERT INTO tb_auditoria_itens VALUES("4328","6","","nu_dia_semana","691");

INSERT INTO tb_auditoria_itens VALUES("4329","07:00","","nu_hora_abertura","691");

INSERT INTO tb_auditoria_itens VALUES("4330","19:00","","nu_hora_fechamento","691");

INSERT INTO tb_auditoria_itens VALUES("4331","11","","co_assinante","691");

INSERT INTO tb_auditoria_itens VALUES("4332","","11","co_assinante","692");

INSERT INTO tb_auditoria_itens VALUES("4333","","1","nu_dia_semana","692");

INSERT INTO tb_auditoria_itens VALUES("4334","","08:00","nu_hora_abertura","692");

INSERT INTO tb_auditoria_itens VALUES("4335","","18:00","nu_hora_fechamento","692");

INSERT INTO tb_auditoria_itens VALUES("4336","","11","co_assinante","693");

INSERT INTO tb_auditoria_itens VALUES("4337","","2","nu_dia_semana","693");

INSERT INTO tb_auditoria_itens VALUES("4338","","08:00","nu_hora_abertura","693");

INSERT INTO tb_auditoria_itens VALUES("4339","","18:00","nu_hora_fechamento","693");

INSERT INTO tb_auditoria_itens VALUES("4340","","11","co_assinante","694");

INSERT INTO tb_auditoria_itens VALUES("4341","","3","nu_dia_semana","694");

INSERT INTO tb_auditoria_itens VALUES("4342","","08:00","nu_hora_abertura","694");

INSERT INTO tb_auditoria_itens VALUES("4343","","18:00","nu_hora_fechamento","694");

INSERT INTO tb_auditoria_itens VALUES("4344","","11","co_assinante","695");

INSERT INTO tb_auditoria_itens VALUES("4345","","4","nu_dia_semana","695");

INSERT INTO tb_auditoria_itens VALUES("4346","","08:00","nu_hora_abertura","695");

INSERT INTO tb_auditoria_itens VALUES("4347","","18:00","nu_hora_fechamento","695");

INSERT INTO tb_auditoria_itens VALUES("4348","","11","co_assinante","696");

INSERT INTO tb_auditoria_itens VALUES("4349","","5","nu_dia_semana","696");

INSERT INTO tb_auditoria_itens VALUES("4350","","08:00","nu_hora_abertura","696");

INSERT INTO tb_auditoria_itens VALUES("4351","","18:00","nu_hora_fechamento","696");

INSERT INTO tb_auditoria_itens VALUES("4352","","11","co_assinante","697");

INSERT INTO tb_auditoria_itens VALUES("4353","","6","nu_dia_semana","697");

INSERT INTO tb_auditoria_itens VALUES("4354","","07:00","nu_hora_abertura","697");

INSERT INTO tb_auditoria_itens VALUES("4355","","19:00","nu_hora_fechamento","697");

INSERT INTO tb_auditoria_itens VALUES("4356","","fp-salao-novo-visual-11-5ba5817f0704a.JPG","ds_caminho","698");

INSERT INTO tb_auditoria_itens VALUES("4357","","11","co_assinante","699");

INSERT INTO tb_auditoria_itens VALUES("4358","","9","co_imagem","699");

INSERT INTO tb_auditoria_itens VALUES("4359","15","","co_pessoa","700");

INSERT INTO tb_auditoria_itens VALUES("4360","","","nu_cpf","700");

INSERT INTO tb_auditoria_itens VALUES("4361","LEO BESSA","LEO BESSA","no_pessoa","700");

INSERT INTO tb_auditoria_itens VALUES("4362","","","nu_rg","700");

INSERT INTO tb_auditoria_itens VALUES("4363","2018-08-14 16:45:26","","dt_cadastro","700");

INSERT INTO tb_auditoria_itens VALUES("4364","","","dt_nascimento","700");

INSERT INTO tb_auditoria_itens VALUES("4365","","","st_sexo","700");

INSERT INTO tb_auditoria_itens VALUES("4366","0","","co_endereco","700");

INSERT INTO tb_auditoria_itens VALUES("4367","15","","co_contato","700");

INSERT INTO tb_auditoria_itens VALUES("4368","0","","co_imagem","700");

INSERT INTO tb_auditoria_itens VALUES("4369","12","","co_empresa","701");

INSERT INTO tb_auditoria_itens VALUES("4370","","","no_empresa","701");

INSERT INTO tb_auditoria_itens VALUES("4371","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","701");

INSERT INTO tb_auditoria_itens VALUES("4372","2018-08-14 16:45:26","","dt_cadastro","701");

INSERT INTO tb_auditoria_itens VALUES("4373","","","nu_cnpj","701");

INSERT INTO tb_auditoria_itens VALUES("4374","","","nu_insc_estadual","701");

INSERT INTO tb_auditoria_itens VALUES("4375","","","ds_observacao","701");

INSERT INTO tb_auditoria_itens VALUES("4376","","","st_status","701");

INSERT INTO tb_auditoria_itens VALUES("4377","0","","co_pessoa","701");

INSERT INTO tb_auditoria_itens VALUES("4378","29","","co_endereco","701");

INSERT INTO tb_auditoria_itens VALUES("4379","20","","co_contato","701");

INSERT INTO tb_auditoria_itens VALUES("4380","0","","co_imagem","701");

INSERT INTO tb_auditoria_itens VALUES("4381","29","","co_endereco","702");

INSERT INTO tb_auditoria_itens VALUES("4382","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","702");

INSERT INTO tb_auditoria_itens VALUES("4383","Casa 28","Casa 28","ds_complemento","702");

INSERT INTO tb_auditoria_itens VALUES("4384","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","702");

INSERT INTO tb_auditoria_itens VALUES("4385","72319111","72319111","nu_cep","702");

INSERT INTO tb_auditoria_itens VALUES("4386","Brasília","Brasília","no_cidade","702");

INSERT INTO tb_auditoria_itens VALUES("4387","DF","DF","sg_uf","702");

INSERT INTO tb_auditoria_itens VALUES("4388","12","","co_empresa","703");

INSERT INTO tb_auditoria_itens VALUES("4389","","","no_empresa","703");

INSERT INTO tb_auditoria_itens VALUES("4390","SALãO NOVO VISUAL","","no_fantasia","703");

INSERT INTO tb_auditoria_itens VALUES("4391","2018-08-14 16:45:26","","dt_cadastro","703");

INSERT INTO tb_auditoria_itens VALUES("4392","","","nu_cnpj","703");

INSERT INTO tb_auditoria_itens VALUES("4393","","","nu_insc_estadual","703");

INSERT INTO tb_auditoria_itens VALUES("4394","","","ds_observacao","703");

INSERT INTO tb_auditoria_itens VALUES("4395","","","st_status","703");

INSERT INTO tb_auditoria_itens VALUES("4396","0","","co_pessoa","703");

INSERT INTO tb_auditoria_itens VALUES("4397","29","29","co_endereco","703");

INSERT INTO tb_auditoria_itens VALUES("4398","20","","co_contato","703");

INSERT INTO tb_auditoria_itens VALUES("4399","0","","co_imagem","703");

INSERT INTO tb_auditoria_itens VALUES("4400","15","","co_contato","704");

INSERT INTO tb_auditoria_itens VALUES("4401","23523462347","23523462347","nu_tel1","704");

INSERT INTO tb_auditoria_itens VALUES("4402","","","nu_tel2","704");

INSERT INTO tb_auditoria_itens VALUES("4403","","","nu_tel3","704");

INSERT INTO tb_auditoria_itens VALUES("4404","","","nu_tel_0800","704");

INSERT INTO tb_auditoria_itens VALUES("4405","leo@mail.com","leo@mail.com","ds_email","704");

INSERT INTO tb_auditoria_itens VALUES("4406","","","ds_site","704");

INSERT INTO tb_auditoria_itens VALUES("4407","16","","co_facilidade_beneficio","705");

INSERT INTO tb_auditoria_itens VALUES("4408","2","","tp_estabelecimento","705");

INSERT INTO tb_auditoria_itens VALUES("4409","1","","tp_atendimento","705");

INSERT INTO tb_auditoria_itens VALUES("4410","2","","tp_genero_especializado","705");

INSERT INTO tb_auditoria_itens VALUES("4411","3","","tp_estacionamento","705");

INSERT INTO tb_auditoria_itens VALUES("4412","S","","st_lanchonete","705");

INSERT INTO tb_auditoria_itens VALUES("4413","N","","st_televisao","705");

INSERT INTO tb_auditoria_itens VALUES("4414","N","","st_wifi","705");

INSERT INTO tb_auditoria_itens VALUES("4415","S","","st_acesso_deficiente","705");

INSERT INTO tb_auditoria_itens VALUES("4416","N","","st_jogos","705");

INSERT INTO tb_auditoria_itens VALUES("4417","11","","co_assinante","705");

INSERT INTO tb_auditoria_itens VALUES("4418","","11","co_assinante","706");

INSERT INTO tb_auditoria_itens VALUES("4419","","2","tp_estabelecimento","706");

INSERT INTO tb_auditoria_itens VALUES("4420","","1","tp_atendimento","706");

INSERT INTO tb_auditoria_itens VALUES("4421","","2","tp_genero_especializado","706");

INSERT INTO tb_auditoria_itens VALUES("4422","","3","tp_estacionamento","706");

INSERT INTO tb_auditoria_itens VALUES("4423","","S","st_lanchonete","706");

INSERT INTO tb_auditoria_itens VALUES("4424","","N","st_televisao","706");

INSERT INTO tb_auditoria_itens VALUES("4425","","N","st_wifi","706");

INSERT INTO tb_auditoria_itens VALUES("4426","","S","st_acesso_deficiente","706");

INSERT INTO tb_auditoria_itens VALUES("4427","","N","st_jogos","706");

INSERT INTO tb_auditoria_itens VALUES("4428","42","","co_funcionamento","707");

INSERT INTO tb_auditoria_itens VALUES("4429","1","","nu_dia_semana","707");

INSERT INTO tb_auditoria_itens VALUES("4430","08:00","","nu_hora_abertura","707");

INSERT INTO tb_auditoria_itens VALUES("4431","18:00","","nu_hora_fechamento","707");

INSERT INTO tb_auditoria_itens VALUES("4432","11","","co_assinante","707");

INSERT INTO tb_auditoria_itens VALUES("4433","43","","co_funcionamento","707");

INSERT INTO tb_auditoria_itens VALUES("4434","2","","nu_dia_semana","707");

INSERT INTO tb_auditoria_itens VALUES("4435","08:00","","nu_hora_abertura","707");

INSERT INTO tb_auditoria_itens VALUES("4436","18:00","","nu_hora_fechamento","707");

INSERT INTO tb_auditoria_itens VALUES("4437","11","","co_assinante","707");

INSERT INTO tb_auditoria_itens VALUES("4438","44","","co_funcionamento","707");

INSERT INTO tb_auditoria_itens VALUES("4439","3","","nu_dia_semana","707");

INSERT INTO tb_auditoria_itens VALUES("4440","08:00","","nu_hora_abertura","707");

INSERT INTO tb_auditoria_itens VALUES("4441","18:00","","nu_hora_fechamento","707");

INSERT INTO tb_auditoria_itens VALUES("4442","11","","co_assinante","707");

INSERT INTO tb_auditoria_itens VALUES("4443","45","","co_funcionamento","707");

INSERT INTO tb_auditoria_itens VALUES("4444","4","","nu_dia_semana","707");

INSERT INTO tb_auditoria_itens VALUES("4445","08:00","","nu_hora_abertura","707");

INSERT INTO tb_auditoria_itens VALUES("4446","18:00","","nu_hora_fechamento","707");

INSERT INTO tb_auditoria_itens VALUES("4447","11","","co_assinante","707");

INSERT INTO tb_auditoria_itens VALUES("4448","46","","co_funcionamento","707");

INSERT INTO tb_auditoria_itens VALUES("4449","5","","nu_dia_semana","707");

INSERT INTO tb_auditoria_itens VALUES("4450","08:00","","nu_hora_abertura","707");

INSERT INTO tb_auditoria_itens VALUES("4451","18:00","","nu_hora_fechamento","707");

INSERT INTO tb_auditoria_itens VALUES("4452","11","","co_assinante","707");

INSERT INTO tb_auditoria_itens VALUES("4453","47","","co_funcionamento","707");

INSERT INTO tb_auditoria_itens VALUES("4454","6","","nu_dia_semana","707");

INSERT INTO tb_auditoria_itens VALUES("4455","07:00","","nu_hora_abertura","707");

INSERT INTO tb_auditoria_itens VALUES("4456","19:00","","nu_hora_fechamento","707");

INSERT INTO tb_auditoria_itens VALUES("4457","11","","co_assinante","707");

INSERT INTO tb_auditoria_itens VALUES("4458","","11","co_assinante","708");

INSERT INTO tb_auditoria_itens VALUES("4459","","1","nu_dia_semana","708");

INSERT INTO tb_auditoria_itens VALUES("4460","","08:00","nu_hora_abertura","708");

INSERT INTO tb_auditoria_itens VALUES("4461","","18:00","nu_hora_fechamento","708");

INSERT INTO tb_auditoria_itens VALUES("4462","","11","co_assinante","709");

INSERT INTO tb_auditoria_itens VALUES("4463","","2","nu_dia_semana","709");

INSERT INTO tb_auditoria_itens VALUES("4464","","08:00","nu_hora_abertura","709");

INSERT INTO tb_auditoria_itens VALUES("4465","","18:00","nu_hora_fechamento","709");

INSERT INTO tb_auditoria_itens VALUES("4466","","11","co_assinante","710");

INSERT INTO tb_auditoria_itens VALUES("4467","","3","nu_dia_semana","710");

INSERT INTO tb_auditoria_itens VALUES("4468","","08:00","nu_hora_abertura","710");

INSERT INTO tb_auditoria_itens VALUES("4469","","18:00","nu_hora_fechamento","710");

INSERT INTO tb_auditoria_itens VALUES("4470","","11","co_assinante","711");

INSERT INTO tb_auditoria_itens VALUES("4471","","4","nu_dia_semana","711");

INSERT INTO tb_auditoria_itens VALUES("4472","","08:00","nu_hora_abertura","711");

INSERT INTO tb_auditoria_itens VALUES("4473","","18:00","nu_hora_fechamento","711");

INSERT INTO tb_auditoria_itens VALUES("4474","","11","co_assinante","712");

INSERT INTO tb_auditoria_itens VALUES("4475","","5","nu_dia_semana","712");

INSERT INTO tb_auditoria_itens VALUES("4476","","08:00","nu_hora_abertura","712");

INSERT INTO tb_auditoria_itens VALUES("4477","","18:00","nu_hora_fechamento","712");

INSERT INTO tb_auditoria_itens VALUES("4478","","11","co_assinante","713");

INSERT INTO tb_auditoria_itens VALUES("4479","","6","nu_dia_semana","713");

INSERT INTO tb_auditoria_itens VALUES("4480","","07:00","nu_hora_abertura","713");

INSERT INTO tb_auditoria_itens VALUES("4481","","19:00","nu_hora_fechamento","713");

INSERT INTO tb_auditoria_itens VALUES("4482","","fp-salao-novo-visual-11-5ba581a706f02.JPG","ds_caminho","714");

INSERT INTO tb_auditoria_itens VALUES("4483","","11","co_assinante","715");

INSERT INTO tb_auditoria_itens VALUES("4484","","10","co_imagem","715");

INSERT INTO tb_auditoria_itens VALUES("4485","15","","co_pessoa","716");

INSERT INTO tb_auditoria_itens VALUES("4486","","","nu_cpf","716");

INSERT INTO tb_auditoria_itens VALUES("4487","LEO BESSA","LEO BESSA","no_pessoa","716");

INSERT INTO tb_auditoria_itens VALUES("4488","","","nu_rg","716");

INSERT INTO tb_auditoria_itens VALUES("4489","2018-08-14 16:45:26","","dt_cadastro","716");

INSERT INTO tb_auditoria_itens VALUES("4490","","","dt_nascimento","716");

INSERT INTO tb_auditoria_itens VALUES("4491","","","st_sexo","716");

INSERT INTO tb_auditoria_itens VALUES("4492","0","","co_endereco","716");

INSERT INTO tb_auditoria_itens VALUES("4493","15","","co_contato","716");

INSERT INTO tb_auditoria_itens VALUES("4494","0","","co_imagem","716");

INSERT INTO tb_auditoria_itens VALUES("4495","12","","co_empresa","717");

INSERT INTO tb_auditoria_itens VALUES("4496","","","no_empresa","717");

INSERT INTO tb_auditoria_itens VALUES("4497","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","717");

INSERT INTO tb_auditoria_itens VALUES("4498","2018-08-14 16:45:26","","dt_cadastro","717");

INSERT INTO tb_auditoria_itens VALUES("4499","","","nu_cnpj","717");

INSERT INTO tb_auditoria_itens VALUES("4500","","","nu_insc_estadual","717");

INSERT INTO tb_auditoria_itens VALUES("4501","","","ds_observacao","717");

INSERT INTO tb_auditoria_itens VALUES("4502","","","st_status","717");

INSERT INTO tb_auditoria_itens VALUES("4503","0","","co_pessoa","717");

INSERT INTO tb_auditoria_itens VALUES("4504","29","","co_endereco","717");

INSERT INTO tb_auditoria_itens VALUES("4505","15","","co_contato","717");

INSERT INTO tb_auditoria_itens VALUES("4506","0","","co_imagem","717");

INSERT INTO tb_auditoria_itens VALUES("4507","29","","co_endereco","718");

INSERT INTO tb_auditoria_itens VALUES("4508","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","718");

INSERT INTO tb_auditoria_itens VALUES("4509","Casa 28","Casa 28","ds_complemento","718");

INSERT INTO tb_auditoria_itens VALUES("4510","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","718");

INSERT INTO tb_auditoria_itens VALUES("4511","72319111","72319111","nu_cep","718");

INSERT INTO tb_auditoria_itens VALUES("4512","Brasília","Brasília","no_cidade","718");

INSERT INTO tb_auditoria_itens VALUES("4513","DF","DF","sg_uf","718");

INSERT INTO tb_auditoria_itens VALUES("4514","12","","co_empresa","719");

INSERT INTO tb_auditoria_itens VALUES("4515","","","no_empresa","719");

INSERT INTO tb_auditoria_itens VALUES("4516","SALãO NOVO VISUAL","","no_fantasia","719");

INSERT INTO tb_auditoria_itens VALUES("4517","2018-08-14 16:45:26","","dt_cadastro","719");

INSERT INTO tb_auditoria_itens VALUES("4518","","","nu_cnpj","719");

INSERT INTO tb_auditoria_itens VALUES("4519","","","nu_insc_estadual","719");

INSERT INTO tb_auditoria_itens VALUES("4520","","","ds_observacao","719");

INSERT INTO tb_auditoria_itens VALUES("4521","","","st_status","719");

INSERT INTO tb_auditoria_itens VALUES("4522","0","","co_pessoa","719");

INSERT INTO tb_auditoria_itens VALUES("4523","29","29","co_endereco","719");

INSERT INTO tb_auditoria_itens VALUES("4524","15","","co_contato","719");

INSERT INTO tb_auditoria_itens VALUES("4525","0","","co_imagem","719");

INSERT INTO tb_auditoria_itens VALUES("4526","15","","co_contato","720");

INSERT INTO tb_auditoria_itens VALUES("4527","23523462347","23523462347","nu_tel1","720");

INSERT INTO tb_auditoria_itens VALUES("4528","","","nu_tel2","720");

INSERT INTO tb_auditoria_itens VALUES("4529","","","nu_tel3","720");

INSERT INTO tb_auditoria_itens VALUES("4530","","","nu_tel_0800","720");

INSERT INTO tb_auditoria_itens VALUES("4531","leo@mail.com","leo@mail.com","ds_email","720");

INSERT INTO tb_auditoria_itens VALUES("4532","","","ds_site","720");

INSERT INTO tb_auditoria_itens VALUES("4533","17","","co_facilidade_beneficio","721");

INSERT INTO tb_auditoria_itens VALUES("4534","2","","tp_estabelecimento","721");

INSERT INTO tb_auditoria_itens VALUES("4535","1","","tp_atendimento","721");

INSERT INTO tb_auditoria_itens VALUES("4536","2","","tp_genero_especializado","721");

INSERT INTO tb_auditoria_itens VALUES("4537","3","","tp_estacionamento","721");

INSERT INTO tb_auditoria_itens VALUES("4538","S","","st_lanchonete","721");

INSERT INTO tb_auditoria_itens VALUES("4539","N","","st_televisao","721");

INSERT INTO tb_auditoria_itens VALUES("4540","N","","st_wifi","721");

INSERT INTO tb_auditoria_itens VALUES("4541","S","","st_acesso_deficiente","721");

INSERT INTO tb_auditoria_itens VALUES("4542","N","","st_jogos","721");

INSERT INTO tb_auditoria_itens VALUES("4543","11","","co_assinante","721");

INSERT INTO tb_auditoria_itens VALUES("4544","","11","co_assinante","722");

INSERT INTO tb_auditoria_itens VALUES("4545","","2","tp_estabelecimento","722");

INSERT INTO tb_auditoria_itens VALUES("4546","","1","tp_atendimento","722");

INSERT INTO tb_auditoria_itens VALUES("4547","","2","tp_genero_especializado","722");

INSERT INTO tb_auditoria_itens VALUES("4548","","3","tp_estacionamento","722");

INSERT INTO tb_auditoria_itens VALUES("4549","","S","st_lanchonete","722");

INSERT INTO tb_auditoria_itens VALUES("4550","","N","st_televisao","722");

INSERT INTO tb_auditoria_itens VALUES("4551","","N","st_wifi","722");

INSERT INTO tb_auditoria_itens VALUES("4552","","S","st_acesso_deficiente","722");

INSERT INTO tb_auditoria_itens VALUES("4553","","N","st_jogos","722");

INSERT INTO tb_auditoria_itens VALUES("4554","48","","co_funcionamento","723");

INSERT INTO tb_auditoria_itens VALUES("4555","1","","nu_dia_semana","723");

INSERT INTO tb_auditoria_itens VALUES("4556","08:00","","nu_hora_abertura","723");

INSERT INTO tb_auditoria_itens VALUES("4557","18:00","","nu_hora_fechamento","723");

INSERT INTO tb_auditoria_itens VALUES("4558","11","","co_assinante","723");

INSERT INTO tb_auditoria_itens VALUES("4559","49","","co_funcionamento","723");

INSERT INTO tb_auditoria_itens VALUES("4560","2","","nu_dia_semana","723");

INSERT INTO tb_auditoria_itens VALUES("4561","08:00","","nu_hora_abertura","723");

INSERT INTO tb_auditoria_itens VALUES("4562","18:00","","nu_hora_fechamento","723");

INSERT INTO tb_auditoria_itens VALUES("4563","11","","co_assinante","723");

INSERT INTO tb_auditoria_itens VALUES("4564","50","","co_funcionamento","723");

INSERT INTO tb_auditoria_itens VALUES("4565","3","","nu_dia_semana","723");

INSERT INTO tb_auditoria_itens VALUES("4566","08:00","","nu_hora_abertura","723");

INSERT INTO tb_auditoria_itens VALUES("4567","18:00","","nu_hora_fechamento","723");

INSERT INTO tb_auditoria_itens VALUES("4568","11","","co_assinante","723");

INSERT INTO tb_auditoria_itens VALUES("4569","51","","co_funcionamento","723");

INSERT INTO tb_auditoria_itens VALUES("4570","4","","nu_dia_semana","723");

INSERT INTO tb_auditoria_itens VALUES("4571","08:00","","nu_hora_abertura","723");

INSERT INTO tb_auditoria_itens VALUES("4572","18:00","","nu_hora_fechamento","723");

INSERT INTO tb_auditoria_itens VALUES("4573","11","","co_assinante","723");

INSERT INTO tb_auditoria_itens VALUES("4574","52","","co_funcionamento","723");

INSERT INTO tb_auditoria_itens VALUES("4575","5","","nu_dia_semana","723");

INSERT INTO tb_auditoria_itens VALUES("4576","08:00","","nu_hora_abertura","723");

INSERT INTO tb_auditoria_itens VALUES("4577","18:00","","nu_hora_fechamento","723");

INSERT INTO tb_auditoria_itens VALUES("4578","11","","co_assinante","723");

INSERT INTO tb_auditoria_itens VALUES("4579","53","","co_funcionamento","723");

INSERT INTO tb_auditoria_itens VALUES("4580","6","","nu_dia_semana","723");

INSERT INTO tb_auditoria_itens VALUES("4581","07:00","","nu_hora_abertura","723");

INSERT INTO tb_auditoria_itens VALUES("4582","19:00","","nu_hora_fechamento","723");

INSERT INTO tb_auditoria_itens VALUES("4583","11","","co_assinante","723");

INSERT INTO tb_auditoria_itens VALUES("4584","","11","co_assinante","724");

INSERT INTO tb_auditoria_itens VALUES("4585","","1","nu_dia_semana","724");

INSERT INTO tb_auditoria_itens VALUES("4586","","08:00","nu_hora_abertura","724");

INSERT INTO tb_auditoria_itens VALUES("4587","","18:00","nu_hora_fechamento","724");

INSERT INTO tb_auditoria_itens VALUES("4588","","11","co_assinante","725");

INSERT INTO tb_auditoria_itens VALUES("4589","","2","nu_dia_semana","725");

INSERT INTO tb_auditoria_itens VALUES("4590","","08:00","nu_hora_abertura","725");

INSERT INTO tb_auditoria_itens VALUES("4591","","18:00","nu_hora_fechamento","725");

INSERT INTO tb_auditoria_itens VALUES("4592","","11","co_assinante","726");

INSERT INTO tb_auditoria_itens VALUES("4593","","3","nu_dia_semana","726");

INSERT INTO tb_auditoria_itens VALUES("4594","","08:00","nu_hora_abertura","726");

INSERT INTO tb_auditoria_itens VALUES("4595","","18:00","nu_hora_fechamento","726");

INSERT INTO tb_auditoria_itens VALUES("4596","","11","co_assinante","727");

INSERT INTO tb_auditoria_itens VALUES("4597","","4","nu_dia_semana","727");

INSERT INTO tb_auditoria_itens VALUES("4598","","08:00","nu_hora_abertura","727");

INSERT INTO tb_auditoria_itens VALUES("4599","","18:00","nu_hora_fechamento","727");

INSERT INTO tb_auditoria_itens VALUES("4600","","11","co_assinante","728");

INSERT INTO tb_auditoria_itens VALUES("4601","","5","nu_dia_semana","728");

INSERT INTO tb_auditoria_itens VALUES("4602","","08:00","nu_hora_abertura","728");

INSERT INTO tb_auditoria_itens VALUES("4603","","18:00","nu_hora_fechamento","728");

INSERT INTO tb_auditoria_itens VALUES("4604","","11","co_assinante","729");

INSERT INTO tb_auditoria_itens VALUES("4605","","6","nu_dia_semana","729");

INSERT INTO tb_auditoria_itens VALUES("4606","","07:00","nu_hora_abertura","729");

INSERT INTO tb_auditoria_itens VALUES("4607","","19:00","nu_hora_fechamento","729");

INSERT INTO tb_auditoria_itens VALUES("4608","","fp-salao-novo-visual-11-5ba58729763ba.JPG","ds_caminho","730");

INSERT INTO tb_auditoria_itens VALUES("4609","","11","co_assinante","731");

INSERT INTO tb_auditoria_itens VALUES("4610","","11","co_imagem","731");

INSERT INTO tb_auditoria_itens VALUES("4611","15","","co_pessoa","732");

INSERT INTO tb_auditoria_itens VALUES("4612","","","nu_cpf","732");

INSERT INTO tb_auditoria_itens VALUES("4613","LEO BESSA","LEO BESSA","no_pessoa","732");

INSERT INTO tb_auditoria_itens VALUES("4614","","","nu_rg","732");

INSERT INTO tb_auditoria_itens VALUES("4615","2018-08-14 16:45:26","","dt_cadastro","732");

INSERT INTO tb_auditoria_itens VALUES("4616","","","dt_nascimento","732");

INSERT INTO tb_auditoria_itens VALUES("4617","","","st_sexo","732");

INSERT INTO tb_auditoria_itens VALUES("4618","0","","co_endereco","732");

INSERT INTO tb_auditoria_itens VALUES("4619","15","","co_contato","732");

INSERT INTO tb_auditoria_itens VALUES("4620","0","","co_imagem","732");

INSERT INTO tb_auditoria_itens VALUES("4621","12","","co_empresa","733");

INSERT INTO tb_auditoria_itens VALUES("4622","","","no_empresa","733");

INSERT INTO tb_auditoria_itens VALUES("4623","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","733");

INSERT INTO tb_auditoria_itens VALUES("4624","2018-08-14 16:45:26","","dt_cadastro","733");

INSERT INTO tb_auditoria_itens VALUES("4625","","","nu_cnpj","733");

INSERT INTO tb_auditoria_itens VALUES("4626","","","nu_insc_estadual","733");

INSERT INTO tb_auditoria_itens VALUES("4627","","","ds_observacao","733");

INSERT INTO tb_auditoria_itens VALUES("4628","","","st_status","733");

INSERT INTO tb_auditoria_itens VALUES("4629","0","","co_pessoa","733");

INSERT INTO tb_auditoria_itens VALUES("4630","29","","co_endereco","733");

INSERT INTO tb_auditoria_itens VALUES("4631","15","","co_contato","733");

INSERT INTO tb_auditoria_itens VALUES("4632","0","","co_imagem","733");

INSERT INTO tb_auditoria_itens VALUES("4633","29","","co_endereco","734");

INSERT INTO tb_auditoria_itens VALUES("4634","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","734");

INSERT INTO tb_auditoria_itens VALUES("4635","Casa 28","Casa 28","ds_complemento","734");

INSERT INTO tb_auditoria_itens VALUES("4636","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","734");

INSERT INTO tb_auditoria_itens VALUES("4637","72319111","72319111","nu_cep","734");

INSERT INTO tb_auditoria_itens VALUES("4638","Brasília","Brasília","no_cidade","734");

INSERT INTO tb_auditoria_itens VALUES("4639","DF","DF","sg_uf","734");

INSERT INTO tb_auditoria_itens VALUES("4640","12","","co_empresa","735");

INSERT INTO tb_auditoria_itens VALUES("4641","","","no_empresa","735");

INSERT INTO tb_auditoria_itens VALUES("4642","SALãO NOVO VISUAL","","no_fantasia","735");

INSERT INTO tb_auditoria_itens VALUES("4643","2018-08-14 16:45:26","","dt_cadastro","735");

INSERT INTO tb_auditoria_itens VALUES("4644","","","nu_cnpj","735");

INSERT INTO tb_auditoria_itens VALUES("4645","","","nu_insc_estadual","735");

INSERT INTO tb_auditoria_itens VALUES("4646","","","ds_observacao","735");

INSERT INTO tb_auditoria_itens VALUES("4647","","","st_status","735");

INSERT INTO tb_auditoria_itens VALUES("4648","0","","co_pessoa","735");

INSERT INTO tb_auditoria_itens VALUES("4649","29","29","co_endereco","735");

INSERT INTO tb_auditoria_itens VALUES("4650","15","","co_contato","735");

INSERT INTO tb_auditoria_itens VALUES("4651","0","","co_imagem","735");

INSERT INTO tb_auditoria_itens VALUES("4652","15","","co_contato","736");

INSERT INTO tb_auditoria_itens VALUES("4653","23523462347","23523462347","nu_tel1","736");

INSERT INTO tb_auditoria_itens VALUES("4654","","","nu_tel2","736");

INSERT INTO tb_auditoria_itens VALUES("4655","","","nu_tel3","736");

INSERT INTO tb_auditoria_itens VALUES("4656","","","nu_tel_0800","736");

INSERT INTO tb_auditoria_itens VALUES("4657","leo@mail.com","leo@mail.com","ds_email","736");

INSERT INTO tb_auditoria_itens VALUES("4658","","","ds_site","736");

INSERT INTO tb_auditoria_itens VALUES("4659","18","","co_facilidade_beneficio","737");

INSERT INTO tb_auditoria_itens VALUES("4660","2","","tp_estabelecimento","737");

INSERT INTO tb_auditoria_itens VALUES("4661","1","","tp_atendimento","737");

INSERT INTO tb_auditoria_itens VALUES("4662","2","","tp_genero_especializado","737");

INSERT INTO tb_auditoria_itens VALUES("4663","3","","tp_estacionamento","737");

INSERT INTO tb_auditoria_itens VALUES("4664","S","","st_lanchonete","737");

INSERT INTO tb_auditoria_itens VALUES("4665","N","","st_televisao","737");

INSERT INTO tb_auditoria_itens VALUES("4666","N","","st_wifi","737");

INSERT INTO tb_auditoria_itens VALUES("4667","S","","st_acesso_deficiente","737");

INSERT INTO tb_auditoria_itens VALUES("4668","N","","st_jogos","737");

INSERT INTO tb_auditoria_itens VALUES("4669","11","","co_assinante","737");

INSERT INTO tb_auditoria_itens VALUES("4670","","11","co_assinante","738");

INSERT INTO tb_auditoria_itens VALUES("4671","","2","tp_estabelecimento","738");

INSERT INTO tb_auditoria_itens VALUES("4672","","1","tp_atendimento","738");

INSERT INTO tb_auditoria_itens VALUES("4673","","2","tp_genero_especializado","738");

INSERT INTO tb_auditoria_itens VALUES("4674","","3","tp_estacionamento","738");

INSERT INTO tb_auditoria_itens VALUES("4675","","S","st_lanchonete","738");

INSERT INTO tb_auditoria_itens VALUES("4676","","N","st_televisao","738");

INSERT INTO tb_auditoria_itens VALUES("4677","","N","st_wifi","738");

INSERT INTO tb_auditoria_itens VALUES("4678","","S","st_acesso_deficiente","738");

INSERT INTO tb_auditoria_itens VALUES("4679","","N","st_jogos","738");

INSERT INTO tb_auditoria_itens VALUES("4680","54","","co_funcionamento","739");

INSERT INTO tb_auditoria_itens VALUES("4681","1","","nu_dia_semana","739");

INSERT INTO tb_auditoria_itens VALUES("4682","08:00","","nu_hora_abertura","739");

INSERT INTO tb_auditoria_itens VALUES("4683","18:00","","nu_hora_fechamento","739");

INSERT INTO tb_auditoria_itens VALUES("4684","11","","co_assinante","739");

INSERT INTO tb_auditoria_itens VALUES("4685","55","","co_funcionamento","739");

INSERT INTO tb_auditoria_itens VALUES("4686","2","","nu_dia_semana","739");

INSERT INTO tb_auditoria_itens VALUES("4687","08:00","","nu_hora_abertura","739");

INSERT INTO tb_auditoria_itens VALUES("4688","18:00","","nu_hora_fechamento","739");

INSERT INTO tb_auditoria_itens VALUES("4689","11","","co_assinante","739");

INSERT INTO tb_auditoria_itens VALUES("4690","56","","co_funcionamento","739");

INSERT INTO tb_auditoria_itens VALUES("4691","3","","nu_dia_semana","739");

INSERT INTO tb_auditoria_itens VALUES("4692","08:00","","nu_hora_abertura","739");

INSERT INTO tb_auditoria_itens VALUES("4693","18:00","","nu_hora_fechamento","739");

INSERT INTO tb_auditoria_itens VALUES("4694","11","","co_assinante","739");

INSERT INTO tb_auditoria_itens VALUES("4695","57","","co_funcionamento","739");

INSERT INTO tb_auditoria_itens VALUES("4696","4","","nu_dia_semana","739");

INSERT INTO tb_auditoria_itens VALUES("4697","08:00","","nu_hora_abertura","739");

INSERT INTO tb_auditoria_itens VALUES("4698","18:00","","nu_hora_fechamento","739");

INSERT INTO tb_auditoria_itens VALUES("4699","11","","co_assinante","739");

INSERT INTO tb_auditoria_itens VALUES("4700","58","","co_funcionamento","739");

INSERT INTO tb_auditoria_itens VALUES("4701","5","","nu_dia_semana","739");

INSERT INTO tb_auditoria_itens VALUES("4702","08:00","","nu_hora_abertura","739");

INSERT INTO tb_auditoria_itens VALUES("4703","18:00","","nu_hora_fechamento","739");

INSERT INTO tb_auditoria_itens VALUES("4704","11","","co_assinante","739");

INSERT INTO tb_auditoria_itens VALUES("4705","59","","co_funcionamento","739");

INSERT INTO tb_auditoria_itens VALUES("4706","6","","nu_dia_semana","739");

INSERT INTO tb_auditoria_itens VALUES("4707","07:00","","nu_hora_abertura","739");

INSERT INTO tb_auditoria_itens VALUES("4708","19:00","","nu_hora_fechamento","739");

INSERT INTO tb_auditoria_itens VALUES("4709","11","","co_assinante","739");

INSERT INTO tb_auditoria_itens VALUES("4710","","11","co_assinante","740");

INSERT INTO tb_auditoria_itens VALUES("4711","","1","nu_dia_semana","740");

INSERT INTO tb_auditoria_itens VALUES("4712","","09:00","nu_hora_abertura","740");

INSERT INTO tb_auditoria_itens VALUES("4713","","18:00","nu_hora_fechamento","740");

INSERT INTO tb_auditoria_itens VALUES("4714","","11","co_assinante","741");

INSERT INTO tb_auditoria_itens VALUES("4715","","2","nu_dia_semana","741");

INSERT INTO tb_auditoria_itens VALUES("4716","","08:00","nu_hora_abertura","741");

INSERT INTO tb_auditoria_itens VALUES("4717","","18:00","nu_hora_fechamento","741");

INSERT INTO tb_auditoria_itens VALUES("4718","","11","co_assinante","742");

INSERT INTO tb_auditoria_itens VALUES("4719","","3","nu_dia_semana","742");

INSERT INTO tb_auditoria_itens VALUES("4720","","08:00","nu_hora_abertura","742");

INSERT INTO tb_auditoria_itens VALUES("4721","","18:30","nu_hora_fechamento","742");

INSERT INTO tb_auditoria_itens VALUES("4722","","11","co_assinante","743");

INSERT INTO tb_auditoria_itens VALUES("4723","","4","nu_dia_semana","743");

INSERT INTO tb_auditoria_itens VALUES("4724","","08:00","nu_hora_abertura","743");

INSERT INTO tb_auditoria_itens VALUES("4725","","18:00","nu_hora_fechamento","743");

INSERT INTO tb_auditoria_itens VALUES("4726","","11","co_assinante","744");

INSERT INTO tb_auditoria_itens VALUES("4727","","5","nu_dia_semana","744");

INSERT INTO tb_auditoria_itens VALUES("4728","","08:00","nu_hora_abertura","744");

INSERT INTO tb_auditoria_itens VALUES("4729","","18:00","nu_hora_fechamento","744");

INSERT INTO tb_auditoria_itens VALUES("4730","","11","co_assinante","745");

INSERT INTO tb_auditoria_itens VALUES("4731","","6","nu_dia_semana","745");

INSERT INTO tb_auditoria_itens VALUES("4732","","07:00","nu_hora_abertura","745");

INSERT INTO tb_auditoria_itens VALUES("4733","","19:00","nu_hora_fechamento","745");

INSERT INTO tb_auditoria_itens VALUES("4734","","fp-salao-novo-visual-11-5ba5893e4e767.JPG","ds_caminho","746");

INSERT INTO tb_auditoria_itens VALUES("4735","","11","co_assinante","747");

INSERT INTO tb_auditoria_itens VALUES("4736","","12","co_imagem","747");

INSERT INTO tb_auditoria_itens VALUES("4737","15","","co_pessoa","748");

INSERT INTO tb_auditoria_itens VALUES("4738","","","nu_cpf","748");

INSERT INTO tb_auditoria_itens VALUES("4739","LEO BESSA","LEO BESSA","no_pessoa","748");

INSERT INTO tb_auditoria_itens VALUES("4740","","","nu_rg","748");

INSERT INTO tb_auditoria_itens VALUES("4741","2018-08-14 16:45:26","","dt_cadastro","748");

INSERT INTO tb_auditoria_itens VALUES("4742","","","dt_nascimento","748");

INSERT INTO tb_auditoria_itens VALUES("4743","","","st_sexo","748");

INSERT INTO tb_auditoria_itens VALUES("4744","0","","co_endereco","748");

INSERT INTO tb_auditoria_itens VALUES("4745","15","","co_contato","748");

INSERT INTO tb_auditoria_itens VALUES("4746","0","","co_imagem","748");

INSERT INTO tb_auditoria_itens VALUES("4747","12","","co_empresa","749");

INSERT INTO tb_auditoria_itens VALUES("4748","","","no_empresa","749");

INSERT INTO tb_auditoria_itens VALUES("4749","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","749");

INSERT INTO tb_auditoria_itens VALUES("4750","2018-08-14 16:45:26","","dt_cadastro","749");

INSERT INTO tb_auditoria_itens VALUES("4751","","","nu_cnpj","749");

INSERT INTO tb_auditoria_itens VALUES("4752","","","nu_insc_estadual","749");

INSERT INTO tb_auditoria_itens VALUES("4753","","","ds_observacao","749");

INSERT INTO tb_auditoria_itens VALUES("4754","","","st_status","749");

INSERT INTO tb_auditoria_itens VALUES("4755","0","","co_pessoa","749");

INSERT INTO tb_auditoria_itens VALUES("4756","29","","co_endereco","749");

INSERT INTO tb_auditoria_itens VALUES("4757","15","","co_contato","749");

INSERT INTO tb_auditoria_itens VALUES("4758","0","","co_imagem","749");

INSERT INTO tb_auditoria_itens VALUES("4759","29","","co_endereco","750");

INSERT INTO tb_auditoria_itens VALUES("4760","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","750");

INSERT INTO tb_auditoria_itens VALUES("4761","Casa 28","Casa 28","ds_complemento","750");

INSERT INTO tb_auditoria_itens VALUES("4762","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","750");

INSERT INTO tb_auditoria_itens VALUES("4763","72319111","72319111","nu_cep","750");

INSERT INTO tb_auditoria_itens VALUES("4764","Brasília","Brasília","no_cidade","750");

INSERT INTO tb_auditoria_itens VALUES("4765","DF","DF","sg_uf","750");

INSERT INTO tb_auditoria_itens VALUES("4766","12","","co_empresa","751");

INSERT INTO tb_auditoria_itens VALUES("4767","","","no_empresa","751");

INSERT INTO tb_auditoria_itens VALUES("4768","SALãO NOVO VISUAL","","no_fantasia","751");

INSERT INTO tb_auditoria_itens VALUES("4769","2018-08-14 16:45:26","","dt_cadastro","751");

INSERT INTO tb_auditoria_itens VALUES("4770","","","nu_cnpj","751");

INSERT INTO tb_auditoria_itens VALUES("4771","","","nu_insc_estadual","751");

INSERT INTO tb_auditoria_itens VALUES("4772","","","ds_observacao","751");

INSERT INTO tb_auditoria_itens VALUES("4773","","","st_status","751");

INSERT INTO tb_auditoria_itens VALUES("4774","0","","co_pessoa","751");

INSERT INTO tb_auditoria_itens VALUES("4775","29","29","co_endereco","751");

INSERT INTO tb_auditoria_itens VALUES("4776","15","","co_contato","751");

INSERT INTO tb_auditoria_itens VALUES("4777","0","","co_imagem","751");

INSERT INTO tb_auditoria_itens VALUES("4778","15","","co_contato","752");

INSERT INTO tb_auditoria_itens VALUES("4779","23523462347","23523462347","nu_tel1","752");

INSERT INTO tb_auditoria_itens VALUES("4780","","","nu_tel2","752");

INSERT INTO tb_auditoria_itens VALUES("4781","","","nu_tel3","752");

INSERT INTO tb_auditoria_itens VALUES("4782","","","nu_tel_0800","752");

INSERT INTO tb_auditoria_itens VALUES("4783","leo@mail.com","leo@mail.com","ds_email","752");

INSERT INTO tb_auditoria_itens VALUES("4784","","","ds_site","752");

INSERT INTO tb_auditoria_itens VALUES("4785","19","","co_facilidade_beneficio","753");

INSERT INTO tb_auditoria_itens VALUES("4786","2","","tp_estabelecimento","753");

INSERT INTO tb_auditoria_itens VALUES("4787","1","","tp_atendimento","753");

INSERT INTO tb_auditoria_itens VALUES("4788","2","","tp_genero_especializado","753");

INSERT INTO tb_auditoria_itens VALUES("4789","3","","tp_estacionamento","753");

INSERT INTO tb_auditoria_itens VALUES("4790","S","","st_lanchonete","753");

INSERT INTO tb_auditoria_itens VALUES("4791","N","","st_televisao","753");

INSERT INTO tb_auditoria_itens VALUES("4792","N","","st_wifi","753");

INSERT INTO tb_auditoria_itens VALUES("4793","S","","st_acesso_deficiente","753");

INSERT INTO tb_auditoria_itens VALUES("4794","N","","st_jogos","753");

INSERT INTO tb_auditoria_itens VALUES("4795","11","","co_assinante","753");

INSERT INTO tb_auditoria_itens VALUES("4796","","11","co_assinante","754");

INSERT INTO tb_auditoria_itens VALUES("4797","","2","tp_estabelecimento","754");

INSERT INTO tb_auditoria_itens VALUES("4798","","1","tp_atendimento","754");

INSERT INTO tb_auditoria_itens VALUES("4799","","2","tp_genero_especializado","754");

INSERT INTO tb_auditoria_itens VALUES("4800","","3","tp_estacionamento","754");

INSERT INTO tb_auditoria_itens VALUES("4801","","S","st_lanchonete","754");

INSERT INTO tb_auditoria_itens VALUES("4802","","N","st_televisao","754");

INSERT INTO tb_auditoria_itens VALUES("4803","","N","st_wifi","754");

INSERT INTO tb_auditoria_itens VALUES("4804","","S","st_acesso_deficiente","754");

INSERT INTO tb_auditoria_itens VALUES("4805","","N","st_jogos","754");

INSERT INTO tb_auditoria_itens VALUES("4806","60","","co_funcionamento","755");

INSERT INTO tb_auditoria_itens VALUES("4807","1","","nu_dia_semana","755");

INSERT INTO tb_auditoria_itens VALUES("4808","09:00","","nu_hora_abertura","755");

INSERT INTO tb_auditoria_itens VALUES("4809","18:00","","nu_hora_fechamento","755");

INSERT INTO tb_auditoria_itens VALUES("4810","11","","co_assinante","755");

INSERT INTO tb_auditoria_itens VALUES("4811","61","","co_funcionamento","755");

INSERT INTO tb_auditoria_itens VALUES("4812","2","","nu_dia_semana","755");

INSERT INTO tb_auditoria_itens VALUES("4813","08:00","","nu_hora_abertura","755");

INSERT INTO tb_auditoria_itens VALUES("4814","18:00","","nu_hora_fechamento","755");

INSERT INTO tb_auditoria_itens VALUES("4815","11","","co_assinante","755");

INSERT INTO tb_auditoria_itens VALUES("4816","62","","co_funcionamento","755");

INSERT INTO tb_auditoria_itens VALUES("4817","3","","nu_dia_semana","755");

INSERT INTO tb_auditoria_itens VALUES("4818","08:00","","nu_hora_abertura","755");

INSERT INTO tb_auditoria_itens VALUES("4819","18:30","","nu_hora_fechamento","755");

INSERT INTO tb_auditoria_itens VALUES("4820","11","","co_assinante","755");

INSERT INTO tb_auditoria_itens VALUES("4821","63","","co_funcionamento","755");

INSERT INTO tb_auditoria_itens VALUES("4822","4","","nu_dia_semana","755");

INSERT INTO tb_auditoria_itens VALUES("4823","08:00","","nu_hora_abertura","755");

INSERT INTO tb_auditoria_itens VALUES("4824","18:00","","nu_hora_fechamento","755");

INSERT INTO tb_auditoria_itens VALUES("4825","11","","co_assinante","755");

INSERT INTO tb_auditoria_itens VALUES("4826","64","","co_funcionamento","755");

INSERT INTO tb_auditoria_itens VALUES("4827","5","","nu_dia_semana","755");

INSERT INTO tb_auditoria_itens VALUES("4828","08:00","","nu_hora_abertura","755");

INSERT INTO tb_auditoria_itens VALUES("4829","18:00","","nu_hora_fechamento","755");

INSERT INTO tb_auditoria_itens VALUES("4830","11","","co_assinante","755");

INSERT INTO tb_auditoria_itens VALUES("4831","65","","co_funcionamento","755");

INSERT INTO tb_auditoria_itens VALUES("4832","6","","nu_dia_semana","755");

INSERT INTO tb_auditoria_itens VALUES("4833","07:00","","nu_hora_abertura","755");

INSERT INTO tb_auditoria_itens VALUES("4834","19:00","","nu_hora_fechamento","755");

INSERT INTO tb_auditoria_itens VALUES("4835","11","","co_assinante","755");

INSERT INTO tb_auditoria_itens VALUES("4836","","11","co_assinante","756");

INSERT INTO tb_auditoria_itens VALUES("4837","","1","nu_dia_semana","756");

INSERT INTO tb_auditoria_itens VALUES("4838","","09:00","nu_hora_abertura","756");

INSERT INTO tb_auditoria_itens VALUES("4839","","18:00","nu_hora_fechamento","756");

INSERT INTO tb_auditoria_itens VALUES("4840","","11","co_assinante","757");

INSERT INTO tb_auditoria_itens VALUES("4841","","2","nu_dia_semana","757");

INSERT INTO tb_auditoria_itens VALUES("4842","","08:00","nu_hora_abertura","757");

INSERT INTO tb_auditoria_itens VALUES("4843","","18:00","nu_hora_fechamento","757");

INSERT INTO tb_auditoria_itens VALUES("4844","","11","co_assinante","758");

INSERT INTO tb_auditoria_itens VALUES("4845","","3","nu_dia_semana","758");

INSERT INTO tb_auditoria_itens VALUES("4846","","08:00","nu_hora_abertura","758");

INSERT INTO tb_auditoria_itens VALUES("4847","","18:30","nu_hora_fechamento","758");

INSERT INTO tb_auditoria_itens VALUES("4848","","11","co_assinante","759");

INSERT INTO tb_auditoria_itens VALUES("4849","","4","nu_dia_semana","759");

INSERT INTO tb_auditoria_itens VALUES("4850","","08:00","nu_hora_abertura","759");

INSERT INTO tb_auditoria_itens VALUES("4851","","18:00","nu_hora_fechamento","759");

INSERT INTO tb_auditoria_itens VALUES("4852","","11","co_assinante","760");

INSERT INTO tb_auditoria_itens VALUES("4853","","5","nu_dia_semana","760");

INSERT INTO tb_auditoria_itens VALUES("4854","","08:00","nu_hora_abertura","760");

INSERT INTO tb_auditoria_itens VALUES("4855","","18:00","nu_hora_fechamento","760");

INSERT INTO tb_auditoria_itens VALUES("4856","","11","co_assinante","761");

INSERT INTO tb_auditoria_itens VALUES("4857","","6","nu_dia_semana","761");

INSERT INTO tb_auditoria_itens VALUES("4858","","07:00","nu_hora_abertura","761");

INSERT INTO tb_auditoria_itens VALUES("4859","","19:00","nu_hora_fechamento","761");

INSERT INTO tb_auditoria_itens VALUES("4860","","fp-salao-novo-visual-11-5ba58d64a195e.jpg","ds_caminho","762");

INSERT INTO tb_auditoria_itens VALUES("4861","","11","co_assinante","763");

INSERT INTO tb_auditoria_itens VALUES("4862","","13","co_imagem","763");

INSERT INTO tb_auditoria_itens VALUES("5478","15","","co_pessoa","834");

INSERT INTO tb_auditoria_itens VALUES("5479","","","nu_cpf","834");

INSERT INTO tb_auditoria_itens VALUES("5480","LEO BESSA","LEO BESSA","no_pessoa","834");

INSERT INTO tb_auditoria_itens VALUES("5481","","","nu_rg","834");

INSERT INTO tb_auditoria_itens VALUES("5482","2018-08-14 16:45:26","","dt_cadastro","834");

INSERT INTO tb_auditoria_itens VALUES("5483","","","dt_nascimento","834");

INSERT INTO tb_auditoria_itens VALUES("5484","","","st_sexo","834");

INSERT INTO tb_auditoria_itens VALUES("5485","0","","co_endereco","834");

INSERT INTO tb_auditoria_itens VALUES("5486","15","","co_contato","834");

INSERT INTO tb_auditoria_itens VALUES("5487","0","","co_imagem","834");

INSERT INTO tb_auditoria_itens VALUES("5488","12","","co_empresa","835");

INSERT INTO tb_auditoria_itens VALUES("5489","","","no_empresa","835");

INSERT INTO tb_auditoria_itens VALUES("5490","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","835");

INSERT INTO tb_auditoria_itens VALUES("5491","2018-08-14 16:45:26","","dt_cadastro","835");

INSERT INTO tb_auditoria_itens VALUES("5492","","","nu_cnpj","835");

INSERT INTO tb_auditoria_itens VALUES("5493","","","nu_insc_estadual","835");

INSERT INTO tb_auditoria_itens VALUES("5494","","","ds_observacao","835");

INSERT INTO tb_auditoria_itens VALUES("5495","","","st_status","835");

INSERT INTO tb_auditoria_itens VALUES("5496","0","","co_pessoa","835");

INSERT INTO tb_auditoria_itens VALUES("5497","29","","co_endereco","835");

INSERT INTO tb_auditoria_itens VALUES("5498","15","","co_contato","835");

INSERT INTO tb_auditoria_itens VALUES("5499","0","","co_imagem","835");

INSERT INTO tb_auditoria_itens VALUES("5500","29","","co_endereco","836");

INSERT INTO tb_auditoria_itens VALUES("5501","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","836");

INSERT INTO tb_auditoria_itens VALUES("5502","Casa 28","Casa 28","ds_complemento","836");

INSERT INTO tb_auditoria_itens VALUES("5503","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","836");

INSERT INTO tb_auditoria_itens VALUES("5504","72319111","72319111","nu_cep","836");

INSERT INTO tb_auditoria_itens VALUES("5505","Brasília","Brasília","no_cidade","836");

INSERT INTO tb_auditoria_itens VALUES("5506","DF","DF","sg_uf","836");

INSERT INTO tb_auditoria_itens VALUES("5507","12","","co_empresa","837");

INSERT INTO tb_auditoria_itens VALUES("5508","","","no_empresa","837");

INSERT INTO tb_auditoria_itens VALUES("5509","SALãO NOVO VISUAL","","no_fantasia","837");

INSERT INTO tb_auditoria_itens VALUES("5510","2018-08-14 16:45:26","","dt_cadastro","837");

INSERT INTO tb_auditoria_itens VALUES("5511","","","nu_cnpj","837");

INSERT INTO tb_auditoria_itens VALUES("5512","","","nu_insc_estadual","837");

INSERT INTO tb_auditoria_itens VALUES("5513","","","ds_observacao","837");

INSERT INTO tb_auditoria_itens VALUES("5514","","","st_status","837");

INSERT INTO tb_auditoria_itens VALUES("5515","0","","co_pessoa","837");

INSERT INTO tb_auditoria_itens VALUES("5516","29","29","co_endereco","837");

INSERT INTO tb_auditoria_itens VALUES("5517","15","","co_contato","837");

INSERT INTO tb_auditoria_itens VALUES("5518","0","","co_imagem","837");

INSERT INTO tb_auditoria_itens VALUES("5519","15","","co_contato","838");

INSERT INTO tb_auditoria_itens VALUES("5520","23523462347","23523462347","nu_tel1","838");

INSERT INTO tb_auditoria_itens VALUES("5521","","","nu_tel2","838");

INSERT INTO tb_auditoria_itens VALUES("5522","","","nu_tel3","838");

INSERT INTO tb_auditoria_itens VALUES("5523","","","nu_tel_0800","838");

INSERT INTO tb_auditoria_itens VALUES("5524","leo@mail.com","leo@mail.com","ds_email","838");

INSERT INTO tb_auditoria_itens VALUES("5525","","","ds_site","838");

INSERT INTO tb_auditoria_itens VALUES("5526","20","","co_facilidade_beneficio","839");

INSERT INTO tb_auditoria_itens VALUES("5527","2","","tp_estabelecimento","839");

INSERT INTO tb_auditoria_itens VALUES("5528","1","","tp_atendimento","839");

INSERT INTO tb_auditoria_itens VALUES("5529","2","","tp_genero_especializado","839");

INSERT INTO tb_auditoria_itens VALUES("5530","3","","tp_estacionamento","839");

INSERT INTO tb_auditoria_itens VALUES("5531","S","","st_lanchonete","839");

INSERT INTO tb_auditoria_itens VALUES("5532","N","","st_televisao","839");

INSERT INTO tb_auditoria_itens VALUES("5533","N","","st_wifi","839");

INSERT INTO tb_auditoria_itens VALUES("5534","S","","st_acesso_deficiente","839");

INSERT INTO tb_auditoria_itens VALUES("5535","N","","st_jogos","839");

INSERT INTO tb_auditoria_itens VALUES("5536","11","","co_assinante","839");

INSERT INTO tb_auditoria_itens VALUES("5537","","11","co_assinante","840");

INSERT INTO tb_auditoria_itens VALUES("5538","","2","tp_estabelecimento","840");

INSERT INTO tb_auditoria_itens VALUES("5539","","1","tp_atendimento","840");

INSERT INTO tb_auditoria_itens VALUES("5540","","2","tp_genero_especializado","840");

INSERT INTO tb_auditoria_itens VALUES("5541","","3","tp_estacionamento","840");

INSERT INTO tb_auditoria_itens VALUES("5542","","S","st_lanchonete","840");

INSERT INTO tb_auditoria_itens VALUES("5543","","N","st_televisao","840");

INSERT INTO tb_auditoria_itens VALUES("5544","","N","st_wifi","840");

INSERT INTO tb_auditoria_itens VALUES("5545","","S","st_acesso_deficiente","840");

INSERT INTO tb_auditoria_itens VALUES("5546","","N","st_jogos","840");

INSERT INTO tb_auditoria_itens VALUES("5547","66","","co_funcionamento","841");

INSERT INTO tb_auditoria_itens VALUES("5548","1","","nu_dia_semana","841");

INSERT INTO tb_auditoria_itens VALUES("5549","09:00","","nu_hora_abertura","841");

INSERT INTO tb_auditoria_itens VALUES("5550","18:00","","nu_hora_fechamento","841");

INSERT INTO tb_auditoria_itens VALUES("5551","11","","co_assinante","841");

INSERT INTO tb_auditoria_itens VALUES("5552","67","","co_funcionamento","841");

INSERT INTO tb_auditoria_itens VALUES("5553","2","","nu_dia_semana","841");

INSERT INTO tb_auditoria_itens VALUES("5554","08:00","","nu_hora_abertura","841");

INSERT INTO tb_auditoria_itens VALUES("5555","18:00","","nu_hora_fechamento","841");

INSERT INTO tb_auditoria_itens VALUES("5556","11","","co_assinante","841");

INSERT INTO tb_auditoria_itens VALUES("5557","68","","co_funcionamento","841");

INSERT INTO tb_auditoria_itens VALUES("5558","3","","nu_dia_semana","841");

INSERT INTO tb_auditoria_itens VALUES("5559","08:00","","nu_hora_abertura","841");

INSERT INTO tb_auditoria_itens VALUES("5560","18:30","","nu_hora_fechamento","841");

INSERT INTO tb_auditoria_itens VALUES("5561","11","","co_assinante","841");

INSERT INTO tb_auditoria_itens VALUES("5562","69","","co_funcionamento","841");

INSERT INTO tb_auditoria_itens VALUES("5563","4","","nu_dia_semana","841");

INSERT INTO tb_auditoria_itens VALUES("5564","08:00","","nu_hora_abertura","841");

INSERT INTO tb_auditoria_itens VALUES("5565","18:00","","nu_hora_fechamento","841");

INSERT INTO tb_auditoria_itens VALUES("5566","11","","co_assinante","841");

INSERT INTO tb_auditoria_itens VALUES("5567","70","","co_funcionamento","841");

INSERT INTO tb_auditoria_itens VALUES("5568","5","","nu_dia_semana","841");

INSERT INTO tb_auditoria_itens VALUES("5569","08:00","","nu_hora_abertura","841");

INSERT INTO tb_auditoria_itens VALUES("5570","18:00","","nu_hora_fechamento","841");

INSERT INTO tb_auditoria_itens VALUES("5571","11","","co_assinante","841");

INSERT INTO tb_auditoria_itens VALUES("5572","71","","co_funcionamento","841");

INSERT INTO tb_auditoria_itens VALUES("5573","6","","nu_dia_semana","841");

INSERT INTO tb_auditoria_itens VALUES("5574","07:00","","nu_hora_abertura","841");

INSERT INTO tb_auditoria_itens VALUES("5575","19:00","","nu_hora_fechamento","841");

INSERT INTO tb_auditoria_itens VALUES("5576","11","","co_assinante","841");

INSERT INTO tb_auditoria_itens VALUES("5577","","11","co_assinante","842");

INSERT INTO tb_auditoria_itens VALUES("5578","","1","nu_dia_semana","842");

INSERT INTO tb_auditoria_itens VALUES("5579","","09:00","nu_hora_abertura","842");

INSERT INTO tb_auditoria_itens VALUES("5580","","18:00","nu_hora_fechamento","842");

INSERT INTO tb_auditoria_itens VALUES("5581","","11","co_assinante","843");

INSERT INTO tb_auditoria_itens VALUES("5582","","2","nu_dia_semana","843");

INSERT INTO tb_auditoria_itens VALUES("5583","","08:00","nu_hora_abertura","843");

INSERT INTO tb_auditoria_itens VALUES("5584","","18:00","nu_hora_fechamento","843");

INSERT INTO tb_auditoria_itens VALUES("5585","","11","co_assinante","844");

INSERT INTO tb_auditoria_itens VALUES("5586","","3","nu_dia_semana","844");

INSERT INTO tb_auditoria_itens VALUES("5587","","08:00","nu_hora_abertura","844");

INSERT INTO tb_auditoria_itens VALUES("5588","","18:30","nu_hora_fechamento","844");

INSERT INTO tb_auditoria_itens VALUES("5589","","11","co_assinante","845");

INSERT INTO tb_auditoria_itens VALUES("5590","","4","nu_dia_semana","845");

INSERT INTO tb_auditoria_itens VALUES("5591","","08:00","nu_hora_abertura","845");

INSERT INTO tb_auditoria_itens VALUES("5592","","18:00","nu_hora_fechamento","845");

INSERT INTO tb_auditoria_itens VALUES("5593","","11","co_assinante","846");

INSERT INTO tb_auditoria_itens VALUES("5594","","5","nu_dia_semana","846");

INSERT INTO tb_auditoria_itens VALUES("5595","","08:00","nu_hora_abertura","846");

INSERT INTO tb_auditoria_itens VALUES("5596","","18:00","nu_hora_fechamento","846");

INSERT INTO tb_auditoria_itens VALUES("5597","","11","co_assinante","847");

INSERT INTO tb_auditoria_itens VALUES("5598","","6","nu_dia_semana","847");

INSERT INTO tb_auditoria_itens VALUES("5599","","07:00","nu_hora_abertura","847");

INSERT INTO tb_auditoria_itens VALUES("5600","","19:00","nu_hora_fechamento","847");

INSERT INTO tb_auditoria_itens VALUES("5601","12","","co_imagem","848");

INSERT INTO tb_auditoria_itens VALUES("5602","fp-salao-novo-visual-11-5ba5893e4e767.JPG","fp-salao-novo-visual-11-5ba592e450725.jpg","ds_caminho","848");

INSERT INTO tb_auditoria_itens VALUES("6531","15","","co_pessoa","953");

INSERT INTO tb_auditoria_itens VALUES("6532","","","nu_cpf","953");

INSERT INTO tb_auditoria_itens VALUES("6533","LEO BESSA","LEO BESSA","no_pessoa","953");

INSERT INTO tb_auditoria_itens VALUES("6534","","","nu_rg","953");

INSERT INTO tb_auditoria_itens VALUES("6535","2018-08-14 16:45:26","","dt_cadastro","953");

INSERT INTO tb_auditoria_itens VALUES("6536","","","dt_nascimento","953");

INSERT INTO tb_auditoria_itens VALUES("6537","","","st_sexo","953");

INSERT INTO tb_auditoria_itens VALUES("6538","0","","co_endereco","953");

INSERT INTO tb_auditoria_itens VALUES("6539","15","","co_contato","953");

INSERT INTO tb_auditoria_itens VALUES("6540","0","","co_imagem","953");

INSERT INTO tb_auditoria_itens VALUES("6541","12","","co_empresa","954");

INSERT INTO tb_auditoria_itens VALUES("6542","","","no_empresa","954");

INSERT INTO tb_auditoria_itens VALUES("6543","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","954");

INSERT INTO tb_auditoria_itens VALUES("6544","2018-08-14 16:45:26","","dt_cadastro","954");

INSERT INTO tb_auditoria_itens VALUES("6545","","","nu_cnpj","954");

INSERT INTO tb_auditoria_itens VALUES("6546","","","nu_insc_estadual","954");

INSERT INTO tb_auditoria_itens VALUES("6547","","","ds_observacao","954");

INSERT INTO tb_auditoria_itens VALUES("6548","","","st_status","954");

INSERT INTO tb_auditoria_itens VALUES("6549","0","","co_pessoa","954");

INSERT INTO tb_auditoria_itens VALUES("6550","29","","co_endereco","954");

INSERT INTO tb_auditoria_itens VALUES("6551","15","","co_contato","954");

INSERT INTO tb_auditoria_itens VALUES("6552","0","","co_imagem","954");

INSERT INTO tb_auditoria_itens VALUES("6553","29","","co_endereco","955");

INSERT INTO tb_auditoria_itens VALUES("6554","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","955");

INSERT INTO tb_auditoria_itens VALUES("6555","Casa 28","Casa 28","ds_complemento","955");

INSERT INTO tb_auditoria_itens VALUES("6556","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","955");

INSERT INTO tb_auditoria_itens VALUES("6557","72319111","72319111","nu_cep","955");

INSERT INTO tb_auditoria_itens VALUES("6558","Brasília","Brasília","no_cidade","955");

INSERT INTO tb_auditoria_itens VALUES("6559","DF","DF","sg_uf","955");

INSERT INTO tb_auditoria_itens VALUES("6560","12","","co_empresa","956");

INSERT INTO tb_auditoria_itens VALUES("6561","","","no_empresa","956");

INSERT INTO tb_auditoria_itens VALUES("6562","SALãO NOVO VISUAL","","no_fantasia","956");

INSERT INTO tb_auditoria_itens VALUES("6563","2018-08-14 16:45:26","","dt_cadastro","956");

INSERT INTO tb_auditoria_itens VALUES("6564","","","nu_cnpj","956");

INSERT INTO tb_auditoria_itens VALUES("6565","","","nu_insc_estadual","956");

INSERT INTO tb_auditoria_itens VALUES("6566","","","ds_observacao","956");

INSERT INTO tb_auditoria_itens VALUES("6567","","","st_status","956");

INSERT INTO tb_auditoria_itens VALUES("6568","0","","co_pessoa","956");

INSERT INTO tb_auditoria_itens VALUES("6569","29","29","co_endereco","956");

INSERT INTO tb_auditoria_itens VALUES("6570","15","","co_contato","956");

INSERT INTO tb_auditoria_itens VALUES("6571","0","","co_imagem","956");

INSERT INTO tb_auditoria_itens VALUES("6572","15","","co_contato","957");

INSERT INTO tb_auditoria_itens VALUES("6573","23523462347","23523462347","nu_tel1","957");

INSERT INTO tb_auditoria_itens VALUES("6574","","","nu_tel2","957");

INSERT INTO tb_auditoria_itens VALUES("6575","","","nu_tel3","957");

INSERT INTO tb_auditoria_itens VALUES("6576","","","nu_tel_0800","957");

INSERT INTO tb_auditoria_itens VALUES("6577","leo@mail.com","leo@mail.com","ds_email","957");

INSERT INTO tb_auditoria_itens VALUES("6578","","","ds_site","957");

INSERT INTO tb_auditoria_itens VALUES("6579","26","","co_facilidade_beneficio","958");

INSERT INTO tb_auditoria_itens VALUES("6580","2","","tp_estabelecimento","958");

INSERT INTO tb_auditoria_itens VALUES("6581","1","","tp_atendimento","958");

INSERT INTO tb_auditoria_itens VALUES("6582","2","","tp_genero_especializado","958");

INSERT INTO tb_auditoria_itens VALUES("6583","3","","tp_estacionamento","958");

INSERT INTO tb_auditoria_itens VALUES("6584","S","","st_lanchonete","958");

INSERT INTO tb_auditoria_itens VALUES("6585","N","","st_televisao","958");

INSERT INTO tb_auditoria_itens VALUES("6586","N","","st_wifi","958");

INSERT INTO tb_auditoria_itens VALUES("6587","S","","st_acesso_deficiente","958");

INSERT INTO tb_auditoria_itens VALUES("6588","N","","st_jogos","958");

INSERT INTO tb_auditoria_itens VALUES("6589","11","","co_assinante","958");

INSERT INTO tb_auditoria_itens VALUES("6590","","11","co_assinante","959");

INSERT INTO tb_auditoria_itens VALUES("6591","","2","tp_estabelecimento","959");

INSERT INTO tb_auditoria_itens VALUES("6592","","1","tp_atendimento","959");

INSERT INTO tb_auditoria_itens VALUES("6593","","2","tp_genero_especializado","959");

INSERT INTO tb_auditoria_itens VALUES("6594","","3","tp_estacionamento","959");

INSERT INTO tb_auditoria_itens VALUES("6595","","S","st_lanchonete","959");

INSERT INTO tb_auditoria_itens VALUES("6596","","N","st_televisao","959");

INSERT INTO tb_auditoria_itens VALUES("6597","","N","st_wifi","959");

INSERT INTO tb_auditoria_itens VALUES("6598","","S","st_acesso_deficiente","959");

INSERT INTO tb_auditoria_itens VALUES("6599","","N","st_jogos","959");

INSERT INTO tb_auditoria_itens VALUES("6600","102","","co_funcionamento","960");

INSERT INTO tb_auditoria_itens VALUES("6601","1","","nu_dia_semana","960");

INSERT INTO tb_auditoria_itens VALUES("6602","09:00","","nu_hora_abertura","960");

INSERT INTO tb_auditoria_itens VALUES("6603","18:00","","nu_hora_fechamento","960");

INSERT INTO tb_auditoria_itens VALUES("6604","11","","co_assinante","960");

INSERT INTO tb_auditoria_itens VALUES("6605","103","","co_funcionamento","960");

INSERT INTO tb_auditoria_itens VALUES("6606","2","","nu_dia_semana","960");

INSERT INTO tb_auditoria_itens VALUES("6607","08:00","","nu_hora_abertura","960");

INSERT INTO tb_auditoria_itens VALUES("6608","18:00","","nu_hora_fechamento","960");

INSERT INTO tb_auditoria_itens VALUES("6609","11","","co_assinante","960");

INSERT INTO tb_auditoria_itens VALUES("6610","104","","co_funcionamento","960");

INSERT INTO tb_auditoria_itens VALUES("6611","3","","nu_dia_semana","960");

INSERT INTO tb_auditoria_itens VALUES("6612","08:00","","nu_hora_abertura","960");

INSERT INTO tb_auditoria_itens VALUES("6613","18:30","","nu_hora_fechamento","960");

INSERT INTO tb_auditoria_itens VALUES("6614","11","","co_assinante","960");

INSERT INTO tb_auditoria_itens VALUES("6615","105","","co_funcionamento","960");

INSERT INTO tb_auditoria_itens VALUES("6616","4","","nu_dia_semana","960");

INSERT INTO tb_auditoria_itens VALUES("6617","08:00","","nu_hora_abertura","960");

INSERT INTO tb_auditoria_itens VALUES("6618","18:00","","nu_hora_fechamento","960");

INSERT INTO tb_auditoria_itens VALUES("6619","11","","co_assinante","960");

INSERT INTO tb_auditoria_itens VALUES("6620","106","","co_funcionamento","960");

INSERT INTO tb_auditoria_itens VALUES("6621","5","","nu_dia_semana","960");

INSERT INTO tb_auditoria_itens VALUES("6622","08:00","","nu_hora_abertura","960");

INSERT INTO tb_auditoria_itens VALUES("6623","18:00","","nu_hora_fechamento","960");

INSERT INTO tb_auditoria_itens VALUES("6624","11","","co_assinante","960");

INSERT INTO tb_auditoria_itens VALUES("6625","107","","co_funcionamento","960");

INSERT INTO tb_auditoria_itens VALUES("6626","6","","nu_dia_semana","960");

INSERT INTO tb_auditoria_itens VALUES("6627","07:00","","nu_hora_abertura","960");

INSERT INTO tb_auditoria_itens VALUES("6628","19:00","","nu_hora_fechamento","960");

INSERT INTO tb_auditoria_itens VALUES("6629","11","","co_assinante","960");

INSERT INTO tb_auditoria_itens VALUES("6630","","11","co_assinante","961");

INSERT INTO tb_auditoria_itens VALUES("6631","","1","nu_dia_semana","961");

INSERT INTO tb_auditoria_itens VALUES("6632","","09:00","nu_hora_abertura","961");

INSERT INTO tb_auditoria_itens VALUES("6633","","18:00","nu_hora_fechamento","961");

INSERT INTO tb_auditoria_itens VALUES("6634","","11","co_assinante","962");

INSERT INTO tb_auditoria_itens VALUES("6635","","2","nu_dia_semana","962");

INSERT INTO tb_auditoria_itens VALUES("6636","","08:00","nu_hora_abertura","962");

INSERT INTO tb_auditoria_itens VALUES("6637","","18:00","nu_hora_fechamento","962");

INSERT INTO tb_auditoria_itens VALUES("6638","","11","co_assinante","963");

INSERT INTO tb_auditoria_itens VALUES("6639","","3","nu_dia_semana","963");

INSERT INTO tb_auditoria_itens VALUES("6640","","08:00","nu_hora_abertura","963");

INSERT INTO tb_auditoria_itens VALUES("6641","","18:30","nu_hora_fechamento","963");

INSERT INTO tb_auditoria_itens VALUES("6642","","11","co_assinante","964");

INSERT INTO tb_auditoria_itens VALUES("6643","","4","nu_dia_semana","964");

INSERT INTO tb_auditoria_itens VALUES("6644","","08:00","nu_hora_abertura","964");

INSERT INTO tb_auditoria_itens VALUES("6645","","18:00","nu_hora_fechamento","964");

INSERT INTO tb_auditoria_itens VALUES("6646","","11","co_assinante","965");

INSERT INTO tb_auditoria_itens VALUES("6647","","5","nu_dia_semana","965");

INSERT INTO tb_auditoria_itens VALUES("6648","","08:00","nu_hora_abertura","965");

INSERT INTO tb_auditoria_itens VALUES("6649","","18:00","nu_hora_fechamento","965");

INSERT INTO tb_auditoria_itens VALUES("6650","","11","co_assinante","966");

INSERT INTO tb_auditoria_itens VALUES("6651","","6","nu_dia_semana","966");

INSERT INTO tb_auditoria_itens VALUES("6652","","07:00","nu_hora_abertura","966");

INSERT INTO tb_auditoria_itens VALUES("6653","","19:00","nu_hora_fechamento","966");

INSERT INTO tb_auditoria_itens VALUES("6654","15","","co_pessoa","967");

INSERT INTO tb_auditoria_itens VALUES("6655","","","nu_cpf","967");

INSERT INTO tb_auditoria_itens VALUES("6656","LEO BESSA","LEO BESSA","no_pessoa","967");

INSERT INTO tb_auditoria_itens VALUES("6657","","","nu_rg","967");

INSERT INTO tb_auditoria_itens VALUES("6658","2018-08-14 16:45:26","","dt_cadastro","967");

INSERT INTO tb_auditoria_itens VALUES("6659","","","dt_nascimento","967");

INSERT INTO tb_auditoria_itens VALUES("6660","","","st_sexo","967");

INSERT INTO tb_auditoria_itens VALUES("6661","0","","co_endereco","967");

INSERT INTO tb_auditoria_itens VALUES("6662","15","","co_contato","967");

INSERT INTO tb_auditoria_itens VALUES("6663","0","","co_imagem","967");

INSERT INTO tb_auditoria_itens VALUES("6664","12","","co_empresa","968");

INSERT INTO tb_auditoria_itens VALUES("6665","","","no_empresa","968");

INSERT INTO tb_auditoria_itens VALUES("6666","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","968");

INSERT INTO tb_auditoria_itens VALUES("6667","2018-08-14 16:45:26","","dt_cadastro","968");

INSERT INTO tb_auditoria_itens VALUES("6668","","","nu_cnpj","968");

INSERT INTO tb_auditoria_itens VALUES("6669","","","nu_insc_estadual","968");

INSERT INTO tb_auditoria_itens VALUES("6670","","","ds_observacao","968");

INSERT INTO tb_auditoria_itens VALUES("6671","","","st_status","968");

INSERT INTO tb_auditoria_itens VALUES("6672","0","","co_pessoa","968");

INSERT INTO tb_auditoria_itens VALUES("6673","29","","co_endereco","968");

INSERT INTO tb_auditoria_itens VALUES("6674","15","","co_contato","968");

INSERT INTO tb_auditoria_itens VALUES("6675","0","","co_imagem","968");

INSERT INTO tb_auditoria_itens VALUES("6676","29","","co_endereco","969");

INSERT INTO tb_auditoria_itens VALUES("6677","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","969");

INSERT INTO tb_auditoria_itens VALUES("6678","Casa 28","Casa 28","ds_complemento","969");

INSERT INTO tb_auditoria_itens VALUES("6679","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","969");

INSERT INTO tb_auditoria_itens VALUES("6680","72319111","72319111","nu_cep","969");

INSERT INTO tb_auditoria_itens VALUES("6681","Brasília","Brasília","no_cidade","969");

INSERT INTO tb_auditoria_itens VALUES("6682","DF","DF","sg_uf","969");

INSERT INTO tb_auditoria_itens VALUES("6683","12","","co_empresa","970");

INSERT INTO tb_auditoria_itens VALUES("6684","","","no_empresa","970");

INSERT INTO tb_auditoria_itens VALUES("6685","SALãO NOVO VISUAL","","no_fantasia","970");

INSERT INTO tb_auditoria_itens VALUES("6686","2018-08-14 16:45:26","","dt_cadastro","970");

INSERT INTO tb_auditoria_itens VALUES("6687","","","nu_cnpj","970");

INSERT INTO tb_auditoria_itens VALUES("6688","","","nu_insc_estadual","970");

INSERT INTO tb_auditoria_itens VALUES("6689","","","ds_observacao","970");

INSERT INTO tb_auditoria_itens VALUES("6690","","","st_status","970");

INSERT INTO tb_auditoria_itens VALUES("6691","0","","co_pessoa","970");

INSERT INTO tb_auditoria_itens VALUES("6692","29","29","co_endereco","970");

INSERT INTO tb_auditoria_itens VALUES("6693","15","","co_contato","970");

INSERT INTO tb_auditoria_itens VALUES("6694","0","","co_imagem","970");

INSERT INTO tb_auditoria_itens VALUES("6695","15","","co_contato","971");

INSERT INTO tb_auditoria_itens VALUES("6696","23523462347","23523462347","nu_tel1","971");

INSERT INTO tb_auditoria_itens VALUES("6697","","","nu_tel2","971");

INSERT INTO tb_auditoria_itens VALUES("6698","","","nu_tel3","971");

INSERT INTO tb_auditoria_itens VALUES("6699","","","nu_tel_0800","971");

INSERT INTO tb_auditoria_itens VALUES("6700","leo@mail.com","leo@mail.com","ds_email","971");

INSERT INTO tb_auditoria_itens VALUES("6701","","","ds_site","971");

INSERT INTO tb_auditoria_itens VALUES("6702","34","","co_facilidade_beneficio","972");

INSERT INTO tb_auditoria_itens VALUES("6703","2","","tp_estabelecimento","972");

INSERT INTO tb_auditoria_itens VALUES("6704","1","","tp_atendimento","972");

INSERT INTO tb_auditoria_itens VALUES("6705","2","","tp_genero_especializado","972");

INSERT INTO tb_auditoria_itens VALUES("6706","3","","tp_estacionamento","972");

INSERT INTO tb_auditoria_itens VALUES("6707","S","","st_lanchonete","972");

INSERT INTO tb_auditoria_itens VALUES("6708","N","","st_televisao","972");

INSERT INTO tb_auditoria_itens VALUES("6709","N","","st_wifi","972");

INSERT INTO tb_auditoria_itens VALUES("6710","S","","st_acesso_deficiente","972");

INSERT INTO tb_auditoria_itens VALUES("6711","N","","st_jogos","972");

INSERT INTO tb_auditoria_itens VALUES("6712","11","","co_assinante","972");

INSERT INTO tb_auditoria_itens VALUES("6713","","11","co_assinante","973");

INSERT INTO tb_auditoria_itens VALUES("6714","","2","tp_estabelecimento","973");

INSERT INTO tb_auditoria_itens VALUES("6715","","1","tp_atendimento","973");

INSERT INTO tb_auditoria_itens VALUES("6716","","2","tp_genero_especializado","973");

INSERT INTO tb_auditoria_itens VALUES("6717","","3","tp_estacionamento","973");

INSERT INTO tb_auditoria_itens VALUES("6718","","S","st_lanchonete","973");

INSERT INTO tb_auditoria_itens VALUES("6719","","N","st_televisao","973");

INSERT INTO tb_auditoria_itens VALUES("6720","","N","st_wifi","973");

INSERT INTO tb_auditoria_itens VALUES("6721","","S","st_acesso_deficiente","973");

INSERT INTO tb_auditoria_itens VALUES("6722","","N","st_jogos","973");

INSERT INTO tb_auditoria_itens VALUES("6723","144","","co_funcionamento","974");

INSERT INTO tb_auditoria_itens VALUES("6724","1","","nu_dia_semana","974");

INSERT INTO tb_auditoria_itens VALUES("6725","09:00","","nu_hora_abertura","974");

INSERT INTO tb_auditoria_itens VALUES("6726","18:00","","nu_hora_fechamento","974");

INSERT INTO tb_auditoria_itens VALUES("6727","11","","co_assinante","974");

INSERT INTO tb_auditoria_itens VALUES("6728","145","","co_funcionamento","974");

INSERT INTO tb_auditoria_itens VALUES("6729","2","","nu_dia_semana","974");

INSERT INTO tb_auditoria_itens VALUES("6730","08:00","","nu_hora_abertura","974");

INSERT INTO tb_auditoria_itens VALUES("6731","18:00","","nu_hora_fechamento","974");

INSERT INTO tb_auditoria_itens VALUES("6732","11","","co_assinante","974");

INSERT INTO tb_auditoria_itens VALUES("6733","146","","co_funcionamento","974");

INSERT INTO tb_auditoria_itens VALUES("6734","3","","nu_dia_semana","974");

INSERT INTO tb_auditoria_itens VALUES("6735","08:00","","nu_hora_abertura","974");

INSERT INTO tb_auditoria_itens VALUES("6736","18:30","","nu_hora_fechamento","974");

INSERT INTO tb_auditoria_itens VALUES("6737","11","","co_assinante","974");

INSERT INTO tb_auditoria_itens VALUES("6738","147","","co_funcionamento","974");

INSERT INTO tb_auditoria_itens VALUES("6739","4","","nu_dia_semana","974");

INSERT INTO tb_auditoria_itens VALUES("6740","08:00","","nu_hora_abertura","974");

INSERT INTO tb_auditoria_itens VALUES("6741","18:00","","nu_hora_fechamento","974");

INSERT INTO tb_auditoria_itens VALUES("6742","11","","co_assinante","974");

INSERT INTO tb_auditoria_itens VALUES("6743","148","","co_funcionamento","974");

INSERT INTO tb_auditoria_itens VALUES("6744","5","","nu_dia_semana","974");

INSERT INTO tb_auditoria_itens VALUES("6745","08:00","","nu_hora_abertura","974");

INSERT INTO tb_auditoria_itens VALUES("6746","18:00","","nu_hora_fechamento","974");

INSERT INTO tb_auditoria_itens VALUES("6747","11","","co_assinante","974");

INSERT INTO tb_auditoria_itens VALUES("6748","149","","co_funcionamento","974");

INSERT INTO tb_auditoria_itens VALUES("6749","6","","nu_dia_semana","974");

INSERT INTO tb_auditoria_itens VALUES("6750","07:00","","nu_hora_abertura","974");

INSERT INTO tb_auditoria_itens VALUES("6751","19:00","","nu_hora_fechamento","974");

INSERT INTO tb_auditoria_itens VALUES("6752","11","","co_assinante","974");

INSERT INTO tb_auditoria_itens VALUES("6753","","11","co_assinante","975");

INSERT INTO tb_auditoria_itens VALUES("6754","","1","nu_dia_semana","975");

INSERT INTO tb_auditoria_itens VALUES("6755","","09:00","nu_hora_abertura","975");

INSERT INTO tb_auditoria_itens VALUES("6756","","18:00","nu_hora_fechamento","975");

INSERT INTO tb_auditoria_itens VALUES("6757","","11","co_assinante","976");

INSERT INTO tb_auditoria_itens VALUES("6758","","2","nu_dia_semana","976");

INSERT INTO tb_auditoria_itens VALUES("6759","","08:00","nu_hora_abertura","976");

INSERT INTO tb_auditoria_itens VALUES("6760","","18:00","nu_hora_fechamento","976");

INSERT INTO tb_auditoria_itens VALUES("6761","","11","co_assinante","977");

INSERT INTO tb_auditoria_itens VALUES("6762","","3","nu_dia_semana","977");

INSERT INTO tb_auditoria_itens VALUES("6763","","08:00","nu_hora_abertura","977");

INSERT INTO tb_auditoria_itens VALUES("6764","","18:30","nu_hora_fechamento","977");

INSERT INTO tb_auditoria_itens VALUES("6765","","11","co_assinante","978");

INSERT INTO tb_auditoria_itens VALUES("6766","","4","nu_dia_semana","978");

INSERT INTO tb_auditoria_itens VALUES("6767","","08:00","nu_hora_abertura","978");

INSERT INTO tb_auditoria_itens VALUES("6768","","18:00","nu_hora_fechamento","978");

INSERT INTO tb_auditoria_itens VALUES("6769","","11","co_assinante","979");

INSERT INTO tb_auditoria_itens VALUES("6770","","5","nu_dia_semana","979");

INSERT INTO tb_auditoria_itens VALUES("6771","","08:00","nu_hora_abertura","979");

INSERT INTO tb_auditoria_itens VALUES("6772","","18:00","nu_hora_fechamento","979");

INSERT INTO tb_auditoria_itens VALUES("6773","","11","co_assinante","980");

INSERT INTO tb_auditoria_itens VALUES("6774","","6","nu_dia_semana","980");

INSERT INTO tb_auditoria_itens VALUES("6775","","07:00","nu_hora_abertura","980");

INSERT INTO tb_auditoria_itens VALUES("6776","","19:00","nu_hora_fechamento","980");

INSERT INTO tb_auditoria_itens VALUES("6777","12","","co_imagem","981");

INSERT INTO tb_auditoria_itens VALUES("6778","fp-salao-novo-visual-11-5ba592e450725.jpg","fp-salao-novo-visual-11-5ba594c2bff2a.jpg","ds_caminho","981");

INSERT INTO tb_auditoria_itens VALUES("6779","15","","co_pessoa","983");

INSERT INTO tb_auditoria_itens VALUES("6780","","","nu_cpf","983");

INSERT INTO tb_auditoria_itens VALUES("6781","LEO BESSA","LEO BESSA","no_pessoa","983");

INSERT INTO tb_auditoria_itens VALUES("6782","","","nu_rg","983");

INSERT INTO tb_auditoria_itens VALUES("6783","2018-08-14 16:45:26","","dt_cadastro","983");

INSERT INTO tb_auditoria_itens VALUES("6784","","","dt_nascimento","983");

INSERT INTO tb_auditoria_itens VALUES("6785","","","st_sexo","983");

INSERT INTO tb_auditoria_itens VALUES("6786","0","","co_endereco","983");

INSERT INTO tb_auditoria_itens VALUES("6787","15","","co_contato","983");

INSERT INTO tb_auditoria_itens VALUES("6788","0","","co_imagem","983");

INSERT INTO tb_auditoria_itens VALUES("6789","12","","co_empresa","984");

INSERT INTO tb_auditoria_itens VALUES("6790","","","no_empresa","984");

INSERT INTO tb_auditoria_itens VALUES("6791","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","984");

INSERT INTO tb_auditoria_itens VALUES("6792","2018-08-14 16:45:26","","dt_cadastro","984");

INSERT INTO tb_auditoria_itens VALUES("6793","","","nu_cnpj","984");

INSERT INTO tb_auditoria_itens VALUES("6794","","","nu_insc_estadual","984");

INSERT INTO tb_auditoria_itens VALUES("6795","","","ds_observacao","984");

INSERT INTO tb_auditoria_itens VALUES("6796","","","st_status","984");

INSERT INTO tb_auditoria_itens VALUES("6797","0","","co_pessoa","984");

INSERT INTO tb_auditoria_itens VALUES("6798","29","","co_endereco","984");

INSERT INTO tb_auditoria_itens VALUES("6799","15","","co_contato","984");

INSERT INTO tb_auditoria_itens VALUES("6800","0","","co_imagem","984");

INSERT INTO tb_auditoria_itens VALUES("6801","29","","co_endereco","985");

INSERT INTO tb_auditoria_itens VALUES("6802","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","985");

INSERT INTO tb_auditoria_itens VALUES("6803","Casa 28","Casa 28","ds_complemento","985");

INSERT INTO tb_auditoria_itens VALUES("6804","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","985");

INSERT INTO tb_auditoria_itens VALUES("6805","72319111","72319111","nu_cep","985");

INSERT INTO tb_auditoria_itens VALUES("6806","Brasília","Brasília","no_cidade","985");

INSERT INTO tb_auditoria_itens VALUES("6807","DF","DF","sg_uf","985");

INSERT INTO tb_auditoria_itens VALUES("6808","12","","co_empresa","986");

INSERT INTO tb_auditoria_itens VALUES("6809","","","no_empresa","986");

INSERT INTO tb_auditoria_itens VALUES("6810","SALãO NOVO VISUAL","","no_fantasia","986");

INSERT INTO tb_auditoria_itens VALUES("6811","2018-08-14 16:45:26","","dt_cadastro","986");

INSERT INTO tb_auditoria_itens VALUES("6812","","","nu_cnpj","986");

INSERT INTO tb_auditoria_itens VALUES("6813","","","nu_insc_estadual","986");

INSERT INTO tb_auditoria_itens VALUES("6814","","","ds_observacao","986");

INSERT INTO tb_auditoria_itens VALUES("6815","","","st_status","986");

INSERT INTO tb_auditoria_itens VALUES("6816","0","","co_pessoa","986");

INSERT INTO tb_auditoria_itens VALUES("6817","29","29","co_endereco","986");

INSERT INTO tb_auditoria_itens VALUES("6818","15","","co_contato","986");

INSERT INTO tb_auditoria_itens VALUES("6819","0","","co_imagem","986");

INSERT INTO tb_auditoria_itens VALUES("6820","15","","co_contato","987");

INSERT INTO tb_auditoria_itens VALUES("6821","23523462347","23523462347","nu_tel1","987");

INSERT INTO tb_auditoria_itens VALUES("6822","","","nu_tel2","987");

INSERT INTO tb_auditoria_itens VALUES("6823","","","nu_tel3","987");

INSERT INTO tb_auditoria_itens VALUES("6824","","","nu_tel_0800","987");

INSERT INTO tb_auditoria_itens VALUES("6825","leo@mail.com","leo@mail.com","ds_email","987");

INSERT INTO tb_auditoria_itens VALUES("6826","","","ds_site","987");

INSERT INTO tb_auditoria_itens VALUES("6827","35","","co_facilidade_beneficio","988");

INSERT INTO tb_auditoria_itens VALUES("6828","2","","tp_estabelecimento","988");

INSERT INTO tb_auditoria_itens VALUES("6829","1","","tp_atendimento","988");

INSERT INTO tb_auditoria_itens VALUES("6830","2","","tp_genero_especializado","988");

INSERT INTO tb_auditoria_itens VALUES("6831","3","","tp_estacionamento","988");

INSERT INTO tb_auditoria_itens VALUES("6832","S","","st_lanchonete","988");

INSERT INTO tb_auditoria_itens VALUES("6833","N","","st_televisao","988");

INSERT INTO tb_auditoria_itens VALUES("6834","N","","st_wifi","988");

INSERT INTO tb_auditoria_itens VALUES("6835","S","","st_acesso_deficiente","988");

INSERT INTO tb_auditoria_itens VALUES("6836","N","","st_jogos","988");

INSERT INTO tb_auditoria_itens VALUES("6837","11","","co_assinante","988");

INSERT INTO tb_auditoria_itens VALUES("6838","","11","co_assinante","989");

INSERT INTO tb_auditoria_itens VALUES("6839","","2","tp_estabelecimento","989");

INSERT INTO tb_auditoria_itens VALUES("6840","","1","tp_atendimento","989");

INSERT INTO tb_auditoria_itens VALUES("6841","","2","tp_genero_especializado","989");

INSERT INTO tb_auditoria_itens VALUES("6842","","3","tp_estacionamento","989");

INSERT INTO tb_auditoria_itens VALUES("6843","","S","st_lanchonete","989");

INSERT INTO tb_auditoria_itens VALUES("6844","","N","st_televisao","989");

INSERT INTO tb_auditoria_itens VALUES("6845","","N","st_wifi","989");

INSERT INTO tb_auditoria_itens VALUES("6846","","S","st_acesso_deficiente","989");

INSERT INTO tb_auditoria_itens VALUES("6847","","N","st_jogos","989");

INSERT INTO tb_auditoria_itens VALUES("6848","150","","co_funcionamento","990");

INSERT INTO tb_auditoria_itens VALUES("6849","1","","nu_dia_semana","990");

INSERT INTO tb_auditoria_itens VALUES("6850","09:00","","nu_hora_abertura","990");

INSERT INTO tb_auditoria_itens VALUES("6851","18:00","","nu_hora_fechamento","990");

INSERT INTO tb_auditoria_itens VALUES("6852","11","","co_assinante","990");

INSERT INTO tb_auditoria_itens VALUES("6853","151","","co_funcionamento","990");

INSERT INTO tb_auditoria_itens VALUES("6854","2","","nu_dia_semana","990");

INSERT INTO tb_auditoria_itens VALUES("6855","08:00","","nu_hora_abertura","990");

INSERT INTO tb_auditoria_itens VALUES("6856","18:00","","nu_hora_fechamento","990");

INSERT INTO tb_auditoria_itens VALUES("6857","11","","co_assinante","990");

INSERT INTO tb_auditoria_itens VALUES("6858","152","","co_funcionamento","990");

INSERT INTO tb_auditoria_itens VALUES("6859","3","","nu_dia_semana","990");

INSERT INTO tb_auditoria_itens VALUES("6860","08:00","","nu_hora_abertura","990");

INSERT INTO tb_auditoria_itens VALUES("6861","18:30","","nu_hora_fechamento","990");

INSERT INTO tb_auditoria_itens VALUES("6862","11","","co_assinante","990");

INSERT INTO tb_auditoria_itens VALUES("6863","153","","co_funcionamento","990");

INSERT INTO tb_auditoria_itens VALUES("6864","4","","nu_dia_semana","990");

INSERT INTO tb_auditoria_itens VALUES("6865","08:00","","nu_hora_abertura","990");

INSERT INTO tb_auditoria_itens VALUES("6866","18:00","","nu_hora_fechamento","990");

INSERT INTO tb_auditoria_itens VALUES("6867","11","","co_assinante","990");

INSERT INTO tb_auditoria_itens VALUES("6868","154","","co_funcionamento","990");

INSERT INTO tb_auditoria_itens VALUES("6869","5","","nu_dia_semana","990");

INSERT INTO tb_auditoria_itens VALUES("6870","08:00","","nu_hora_abertura","990");

INSERT INTO tb_auditoria_itens VALUES("6871","18:00","","nu_hora_fechamento","990");

INSERT INTO tb_auditoria_itens VALUES("6872","11","","co_assinante","990");

INSERT INTO tb_auditoria_itens VALUES("6873","155","","co_funcionamento","990");

INSERT INTO tb_auditoria_itens VALUES("6874","6","","nu_dia_semana","990");

INSERT INTO tb_auditoria_itens VALUES("6875","07:00","","nu_hora_abertura","990");

INSERT INTO tb_auditoria_itens VALUES("6876","19:00","","nu_hora_fechamento","990");

INSERT INTO tb_auditoria_itens VALUES("6877","11","","co_assinante","990");

INSERT INTO tb_auditoria_itens VALUES("6878","","11","co_assinante","991");

INSERT INTO tb_auditoria_itens VALUES("6879","","1","nu_dia_semana","991");

INSERT INTO tb_auditoria_itens VALUES("6880","","09:00","nu_hora_abertura","991");

INSERT INTO tb_auditoria_itens VALUES("6881","","18:00","nu_hora_fechamento","991");

INSERT INTO tb_auditoria_itens VALUES("6882","","11","co_assinante","992");

INSERT INTO tb_auditoria_itens VALUES("6883","","2","nu_dia_semana","992");

INSERT INTO tb_auditoria_itens VALUES("6884","","08:00","nu_hora_abertura","992");

INSERT INTO tb_auditoria_itens VALUES("6885","","18:00","nu_hora_fechamento","992");

INSERT INTO tb_auditoria_itens VALUES("6886","","11","co_assinante","993");

INSERT INTO tb_auditoria_itens VALUES("6887","","3","nu_dia_semana","993");

INSERT INTO tb_auditoria_itens VALUES("6888","","08:00","nu_hora_abertura","993");

INSERT INTO tb_auditoria_itens VALUES("6889","","18:30","nu_hora_fechamento","993");

INSERT INTO tb_auditoria_itens VALUES("6890","","11","co_assinante","994");

INSERT INTO tb_auditoria_itens VALUES("6891","","4","nu_dia_semana","994");

INSERT INTO tb_auditoria_itens VALUES("6892","","08:00","nu_hora_abertura","994");

INSERT INTO tb_auditoria_itens VALUES("6893","","18:00","nu_hora_fechamento","994");

INSERT INTO tb_auditoria_itens VALUES("6894","","11","co_assinante","995");

INSERT INTO tb_auditoria_itens VALUES("6895","","5","nu_dia_semana","995");

INSERT INTO tb_auditoria_itens VALUES("6896","","08:00","nu_hora_abertura","995");

INSERT INTO tb_auditoria_itens VALUES("6897","","18:00","nu_hora_fechamento","995");

INSERT INTO tb_auditoria_itens VALUES("6898","","11","co_assinante","996");

INSERT INTO tb_auditoria_itens VALUES("6899","","6","nu_dia_semana","996");

INSERT INTO tb_auditoria_itens VALUES("6900","","07:00","nu_hora_abertura","996");

INSERT INTO tb_auditoria_itens VALUES("6901","","19:00","nu_hora_fechamento","996");

INSERT INTO tb_auditoria_itens VALUES("6902","15","","co_pessoa","997");

INSERT INTO tb_auditoria_itens VALUES("6903","","","nu_cpf","997");

INSERT INTO tb_auditoria_itens VALUES("6904","LEO BESSA","LEO BESSA","no_pessoa","997");

INSERT INTO tb_auditoria_itens VALUES("6905","","","nu_rg","997");

INSERT INTO tb_auditoria_itens VALUES("6906","2018-08-14 16:45:26","","dt_cadastro","997");

INSERT INTO tb_auditoria_itens VALUES("6907","","","dt_nascimento","997");

INSERT INTO tb_auditoria_itens VALUES("6908","","","st_sexo","997");

INSERT INTO tb_auditoria_itens VALUES("6909","0","","co_endereco","997");

INSERT INTO tb_auditoria_itens VALUES("6910","15","","co_contato","997");

INSERT INTO tb_auditoria_itens VALUES("6911","0","","co_imagem","997");

INSERT INTO tb_auditoria_itens VALUES("6912","12","","co_empresa","998");

INSERT INTO tb_auditoria_itens VALUES("6913","","","no_empresa","998");

INSERT INTO tb_auditoria_itens VALUES("6914","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","998");

INSERT INTO tb_auditoria_itens VALUES("6915","2018-08-14 16:45:26","","dt_cadastro","998");

INSERT INTO tb_auditoria_itens VALUES("6916","","","nu_cnpj","998");

INSERT INTO tb_auditoria_itens VALUES("6917","","","nu_insc_estadual","998");

INSERT INTO tb_auditoria_itens VALUES("6918","","","ds_observacao","998");

INSERT INTO tb_auditoria_itens VALUES("6919","","","st_status","998");

INSERT INTO tb_auditoria_itens VALUES("6920","0","","co_pessoa","998");

INSERT INTO tb_auditoria_itens VALUES("6921","29","","co_endereco","998");

INSERT INTO tb_auditoria_itens VALUES("6922","15","","co_contato","998");

INSERT INTO tb_auditoria_itens VALUES("6923","0","","co_imagem","998");

INSERT INTO tb_auditoria_itens VALUES("6924","29","","co_endereco","999");

INSERT INTO tb_auditoria_itens VALUES("6925","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","999");

INSERT INTO tb_auditoria_itens VALUES("6926","Casa 28","Casa 28","ds_complemento","999");

INSERT INTO tb_auditoria_itens VALUES("6927","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","999");

INSERT INTO tb_auditoria_itens VALUES("6928","72319111","72319111","nu_cep","999");

INSERT INTO tb_auditoria_itens VALUES("6929","Brasília","Brasília","no_cidade","999");

INSERT INTO tb_auditoria_itens VALUES("6930","DF","DF","sg_uf","999");

INSERT INTO tb_auditoria_itens VALUES("6931","12","","co_empresa","1000");

INSERT INTO tb_auditoria_itens VALUES("6932","","","no_empresa","1000");

INSERT INTO tb_auditoria_itens VALUES("6933","SALãO NOVO VISUAL","","no_fantasia","1000");

INSERT INTO tb_auditoria_itens VALUES("6934","2018-08-14 16:45:26","","dt_cadastro","1000");

INSERT INTO tb_auditoria_itens VALUES("6935","","","nu_cnpj","1000");

INSERT INTO tb_auditoria_itens VALUES("6936","","","nu_insc_estadual","1000");

INSERT INTO tb_auditoria_itens VALUES("6937","","","ds_observacao","1000");

INSERT INTO tb_auditoria_itens VALUES("6938","","","st_status","1000");

INSERT INTO tb_auditoria_itens VALUES("6939","0","","co_pessoa","1000");

INSERT INTO tb_auditoria_itens VALUES("6940","29","29","co_endereco","1000");

INSERT INTO tb_auditoria_itens VALUES("6941","15","","co_contato","1000");

INSERT INTO tb_auditoria_itens VALUES("6942","0","","co_imagem","1000");

INSERT INTO tb_auditoria_itens VALUES("6943","15","","co_contato","1001");

INSERT INTO tb_auditoria_itens VALUES("6944","23523462347","23523462347","nu_tel1","1001");

INSERT INTO tb_auditoria_itens VALUES("6945","","","nu_tel2","1001");

INSERT INTO tb_auditoria_itens VALUES("6946","","","nu_tel3","1001");

INSERT INTO tb_auditoria_itens VALUES("6947","","","nu_tel_0800","1001");

INSERT INTO tb_auditoria_itens VALUES("6948","leo@mail.com","leo@mail.com","ds_email","1001");

INSERT INTO tb_auditoria_itens VALUES("6949","","","ds_site","1001");

INSERT INTO tb_auditoria_itens VALUES("6950","36","","co_facilidade_beneficio","1002");

INSERT INTO tb_auditoria_itens VALUES("6951","2","","tp_estabelecimento","1002");

INSERT INTO tb_auditoria_itens VALUES("6952","1","","tp_atendimento","1002");

INSERT INTO tb_auditoria_itens VALUES("6953","2","","tp_genero_especializado","1002");

INSERT INTO tb_auditoria_itens VALUES("6954","3","","tp_estacionamento","1002");

INSERT INTO tb_auditoria_itens VALUES("6955","S","","st_lanchonete","1002");

INSERT INTO tb_auditoria_itens VALUES("6956","N","","st_televisao","1002");

INSERT INTO tb_auditoria_itens VALUES("6957","N","","st_wifi","1002");

INSERT INTO tb_auditoria_itens VALUES("6958","S","","st_acesso_deficiente","1002");

INSERT INTO tb_auditoria_itens VALUES("6959","N","","st_jogos","1002");

INSERT INTO tb_auditoria_itens VALUES("6960","11","","co_assinante","1002");

INSERT INTO tb_auditoria_itens VALUES("6961","","11","co_assinante","1003");

INSERT INTO tb_auditoria_itens VALUES("6962","","2","tp_estabelecimento","1003");

INSERT INTO tb_auditoria_itens VALUES("6963","","1","tp_atendimento","1003");

INSERT INTO tb_auditoria_itens VALUES("6964","","2","tp_genero_especializado","1003");

INSERT INTO tb_auditoria_itens VALUES("6965","","3","tp_estacionamento","1003");

INSERT INTO tb_auditoria_itens VALUES("6966","","S","st_lanchonete","1003");

INSERT INTO tb_auditoria_itens VALUES("6967","","N","st_televisao","1003");

INSERT INTO tb_auditoria_itens VALUES("6968","","N","st_wifi","1003");

INSERT INTO tb_auditoria_itens VALUES("6969","","S","st_acesso_deficiente","1003");

INSERT INTO tb_auditoria_itens VALUES("6970","","N","st_jogos","1003");

INSERT INTO tb_auditoria_itens VALUES("6971","156","","co_funcionamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6972","1","","nu_dia_semana","1004");

INSERT INTO tb_auditoria_itens VALUES("6973","09:00","","nu_hora_abertura","1004");

INSERT INTO tb_auditoria_itens VALUES("6974","18:00","","nu_hora_fechamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6975","11","","co_assinante","1004");

INSERT INTO tb_auditoria_itens VALUES("6976","157","","co_funcionamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6977","2","","nu_dia_semana","1004");

INSERT INTO tb_auditoria_itens VALUES("6978","08:00","","nu_hora_abertura","1004");

INSERT INTO tb_auditoria_itens VALUES("6979","18:00","","nu_hora_fechamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6980","11","","co_assinante","1004");

INSERT INTO tb_auditoria_itens VALUES("6981","158","","co_funcionamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6982","3","","nu_dia_semana","1004");

INSERT INTO tb_auditoria_itens VALUES("6983","08:00","","nu_hora_abertura","1004");

INSERT INTO tb_auditoria_itens VALUES("6984","18:30","","nu_hora_fechamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6985","11","","co_assinante","1004");

INSERT INTO tb_auditoria_itens VALUES("6986","159","","co_funcionamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6987","4","","nu_dia_semana","1004");

INSERT INTO tb_auditoria_itens VALUES("6988","08:00","","nu_hora_abertura","1004");

INSERT INTO tb_auditoria_itens VALUES("6989","18:00","","nu_hora_fechamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6990","11","","co_assinante","1004");

INSERT INTO tb_auditoria_itens VALUES("6991","160","","co_funcionamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6992","5","","nu_dia_semana","1004");

INSERT INTO tb_auditoria_itens VALUES("6993","08:00","","nu_hora_abertura","1004");

INSERT INTO tb_auditoria_itens VALUES("6994","18:00","","nu_hora_fechamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6995","11","","co_assinante","1004");

INSERT INTO tb_auditoria_itens VALUES("6996","161","","co_funcionamento","1004");

INSERT INTO tb_auditoria_itens VALUES("6997","6","","nu_dia_semana","1004");

INSERT INTO tb_auditoria_itens VALUES("6998","07:00","","nu_hora_abertura","1004");

INSERT INTO tb_auditoria_itens VALUES("6999","19:00","","nu_hora_fechamento","1004");

INSERT INTO tb_auditoria_itens VALUES("7000","11","","co_assinante","1004");

INSERT INTO tb_auditoria_itens VALUES("7001","","11","co_assinante","1005");

INSERT INTO tb_auditoria_itens VALUES("7002","","1","nu_dia_semana","1005");

INSERT INTO tb_auditoria_itens VALUES("7003","","09:00","nu_hora_abertura","1005");

INSERT INTO tb_auditoria_itens VALUES("7004","","18:00","nu_hora_fechamento","1005");

INSERT INTO tb_auditoria_itens VALUES("7005","","11","co_assinante","1006");

INSERT INTO tb_auditoria_itens VALUES("7006","","2","nu_dia_semana","1006");

INSERT INTO tb_auditoria_itens VALUES("7007","","08:00","nu_hora_abertura","1006");

INSERT INTO tb_auditoria_itens VALUES("7008","","18:00","nu_hora_fechamento","1006");

INSERT INTO tb_auditoria_itens VALUES("7009","","11","co_assinante","1007");

INSERT INTO tb_auditoria_itens VALUES("7010","","3","nu_dia_semana","1007");

INSERT INTO tb_auditoria_itens VALUES("7011","","08:00","nu_hora_abertura","1007");

INSERT INTO tb_auditoria_itens VALUES("7012","","18:30","nu_hora_fechamento","1007");

INSERT INTO tb_auditoria_itens VALUES("7013","","11","co_assinante","1008");

INSERT INTO tb_auditoria_itens VALUES("7014","","4","nu_dia_semana","1008");

INSERT INTO tb_auditoria_itens VALUES("7015","","08:00","nu_hora_abertura","1008");

INSERT INTO tb_auditoria_itens VALUES("7016","","18:00","nu_hora_fechamento","1008");

INSERT INTO tb_auditoria_itens VALUES("7017","","11","co_assinante","1009");

INSERT INTO tb_auditoria_itens VALUES("7018","","5","nu_dia_semana","1009");

INSERT INTO tb_auditoria_itens VALUES("7019","","08:00","nu_hora_abertura","1009");

INSERT INTO tb_auditoria_itens VALUES("7020","","18:00","nu_hora_fechamento","1009");

INSERT INTO tb_auditoria_itens VALUES("7021","","11","co_assinante","1010");

INSERT INTO tb_auditoria_itens VALUES("7022","","6","nu_dia_semana","1010");

INSERT INTO tb_auditoria_itens VALUES("7023","","07:00","nu_hora_abertura","1010");

INSERT INTO tb_auditoria_itens VALUES("7024","","19:00","nu_hora_fechamento","1010");

INSERT INTO tb_auditoria_itens VALUES("7025","","fp-salao-novo-visual-11-5ba5957862e8d.jpg","ds_caminho","1011");

INSERT INTO tb_auditoria_itens VALUES("7026","","11","co_assinante","1012");

INSERT INTO tb_auditoria_itens VALUES("7027","","14","co_imagem","1012");

INSERT INTO tb_auditoria_itens VALUES("7028","15","","co_pessoa","1013");

INSERT INTO tb_auditoria_itens VALUES("7029","","","nu_cpf","1013");

INSERT INTO tb_auditoria_itens VALUES("7030","LEO BESSA","LEO BESSA","no_pessoa","1013");

INSERT INTO tb_auditoria_itens VALUES("7031","","","nu_rg","1013");

INSERT INTO tb_auditoria_itens VALUES("7032","2018-08-14 16:45:26","","dt_cadastro","1013");

INSERT INTO tb_auditoria_itens VALUES("7033","","","dt_nascimento","1013");

INSERT INTO tb_auditoria_itens VALUES("7034","","","st_sexo","1013");

INSERT INTO tb_auditoria_itens VALUES("7035","0","","co_endereco","1013");

INSERT INTO tb_auditoria_itens VALUES("7036","15","","co_contato","1013");

INSERT INTO tb_auditoria_itens VALUES("7037","0","","co_imagem","1013");

INSERT INTO tb_auditoria_itens VALUES("7038","12","","co_empresa","1014");

INSERT INTO tb_auditoria_itens VALUES("7039","","TESTE 01 RAZãO","no_empresa","1014");

INSERT INTO tb_auditoria_itens VALUES("7040","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","1014");

INSERT INTO tb_auditoria_itens VALUES("7041","2018-08-14 16:45:26","","dt_cadastro","1014");

INSERT INTO tb_auditoria_itens VALUES("7042","","07844665000120","nu_cnpj","1014");

INSERT INTO tb_auditoria_itens VALUES("7043","","43543664","nu_insc_estadual","1014");

INSERT INTO tb_auditoria_itens VALUES("7044","","","ds_observacao","1014");

INSERT INTO tb_auditoria_itens VALUES("7045","","","st_status","1014");

INSERT INTO tb_auditoria_itens VALUES("7046","0","","co_pessoa","1014");

INSERT INTO tb_auditoria_itens VALUES("7047","29","","co_endereco","1014");

INSERT INTO tb_auditoria_itens VALUES("7048","15","","co_contato","1014");

INSERT INTO tb_auditoria_itens VALUES("7049","0","","co_imagem","1014");

INSERT INTO tb_auditoria_itens VALUES("7050","29","","co_endereco","1015");

INSERT INTO tb_auditoria_itens VALUES("7051","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","1015");

INSERT INTO tb_auditoria_itens VALUES("7052","Casa 28","Casa 28","ds_complemento","1015");

INSERT INTO tb_auditoria_itens VALUES("7053","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","1015");

INSERT INTO tb_auditoria_itens VALUES("7054","72319111","72319111","nu_cep","1015");

INSERT INTO tb_auditoria_itens VALUES("7055","Brasília","Brasília","no_cidade","1015");

INSERT INTO tb_auditoria_itens VALUES("7056","DF","DF","sg_uf","1015");

INSERT INTO tb_auditoria_itens VALUES("7057","12","","co_empresa","1016");

INSERT INTO tb_auditoria_itens VALUES("7058","TESTE 01 RAZãO","","no_empresa","1016");

INSERT INTO tb_auditoria_itens VALUES("7059","SALãO NOVO VISUAL","","no_fantasia","1016");

INSERT INTO tb_auditoria_itens VALUES("7060","2018-08-14 16:45:26","","dt_cadastro","1016");

INSERT INTO tb_auditoria_itens VALUES("7061","07844665000120","","nu_cnpj","1016");

INSERT INTO tb_auditoria_itens VALUES("7062","43543664","","nu_insc_estadual","1016");

INSERT INTO tb_auditoria_itens VALUES("7063","","","ds_observacao","1016");

INSERT INTO tb_auditoria_itens VALUES("7064","","","st_status","1016");

INSERT INTO tb_auditoria_itens VALUES("7065","0","","co_pessoa","1016");

INSERT INTO tb_auditoria_itens VALUES("7066","29","29","co_endereco","1016");

INSERT INTO tb_auditoria_itens VALUES("7067","15","","co_contato","1016");

INSERT INTO tb_auditoria_itens VALUES("7068","0","","co_imagem","1016");

INSERT INTO tb_auditoria_itens VALUES("7069","15","","co_contato","1017");

INSERT INTO tb_auditoria_itens VALUES("7070","23523462347","23523462347","nu_tel1","1017");

INSERT INTO tb_auditoria_itens VALUES("7071","","54364364364","nu_tel2","1017");

INSERT INTO tb_auditoria_itens VALUES("7072","","","nu_tel3","1017");

INSERT INTO tb_auditoria_itens VALUES("7073","","","nu_tel_0800","1017");

INSERT INTO tb_auditoria_itens VALUES("7074","leo@mail.com","leo@mail.com","ds_email","1017");

INSERT INTO tb_auditoria_itens VALUES("7075","","www.site.com.br","ds_site","1017");

INSERT INTO tb_auditoria_itens VALUES("7076","37","","co_facilidade_beneficio","1018");

INSERT INTO tb_auditoria_itens VALUES("7077","2","","tp_estabelecimento","1018");

INSERT INTO tb_auditoria_itens VALUES("7078","1","","tp_atendimento","1018");

INSERT INTO tb_auditoria_itens VALUES("7079","2","","tp_genero_especializado","1018");

INSERT INTO tb_auditoria_itens VALUES("7080","3","","tp_estacionamento","1018");

INSERT INTO tb_auditoria_itens VALUES("7081","S","","st_lanchonete","1018");

INSERT INTO tb_auditoria_itens VALUES("7082","N","","st_televisao","1018");

INSERT INTO tb_auditoria_itens VALUES("7083","N","","st_wifi","1018");

INSERT INTO tb_auditoria_itens VALUES("7084","S","","st_acesso_deficiente","1018");

INSERT INTO tb_auditoria_itens VALUES("7085","N","","st_jogos","1018");

INSERT INTO tb_auditoria_itens VALUES("7086","11","","co_assinante","1018");

INSERT INTO tb_auditoria_itens VALUES("7087","","11","co_assinante","1019");

INSERT INTO tb_auditoria_itens VALUES("7088","","1","tp_estabelecimento","1019");

INSERT INTO tb_auditoria_itens VALUES("7089","","1","tp_atendimento","1019");

INSERT INTO tb_auditoria_itens VALUES("7090","","1","tp_genero_especializado","1019");

INSERT INTO tb_auditoria_itens VALUES("7091","","1","tp_estacionamento","1019");

INSERT INTO tb_auditoria_itens VALUES("7092","","N","st_lanchonete","1019");

INSERT INTO tb_auditoria_itens VALUES("7093","","S","st_televisao","1019");

INSERT INTO tb_auditoria_itens VALUES("7094","","S","st_wifi","1019");

INSERT INTO tb_auditoria_itens VALUES("7095","","N","st_acesso_deficiente","1019");

INSERT INTO tb_auditoria_itens VALUES("7096","","S","st_jogos","1019");

INSERT INTO tb_auditoria_itens VALUES("7097","162","","co_funcionamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7098","1","","nu_dia_semana","1020");

INSERT INTO tb_auditoria_itens VALUES("7099","09:00","","nu_hora_abertura","1020");

INSERT INTO tb_auditoria_itens VALUES("7100","18:00","","nu_hora_fechamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7101","11","","co_assinante","1020");

INSERT INTO tb_auditoria_itens VALUES("7102","163","","co_funcionamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7103","2","","nu_dia_semana","1020");

INSERT INTO tb_auditoria_itens VALUES("7104","08:00","","nu_hora_abertura","1020");

INSERT INTO tb_auditoria_itens VALUES("7105","18:00","","nu_hora_fechamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7106","11","","co_assinante","1020");

INSERT INTO tb_auditoria_itens VALUES("7107","164","","co_funcionamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7108","3","","nu_dia_semana","1020");

INSERT INTO tb_auditoria_itens VALUES("7109","08:00","","nu_hora_abertura","1020");

INSERT INTO tb_auditoria_itens VALUES("7110","18:30","","nu_hora_fechamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7111","11","","co_assinante","1020");

INSERT INTO tb_auditoria_itens VALUES("7112","165","","co_funcionamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7113","4","","nu_dia_semana","1020");

INSERT INTO tb_auditoria_itens VALUES("7114","08:00","","nu_hora_abertura","1020");

INSERT INTO tb_auditoria_itens VALUES("7115","18:00","","nu_hora_fechamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7116","11","","co_assinante","1020");

INSERT INTO tb_auditoria_itens VALUES("7117","166","","co_funcionamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7118","5","","nu_dia_semana","1020");

INSERT INTO tb_auditoria_itens VALUES("7119","08:00","","nu_hora_abertura","1020");

INSERT INTO tb_auditoria_itens VALUES("7120","18:00","","nu_hora_fechamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7121","11","","co_assinante","1020");

INSERT INTO tb_auditoria_itens VALUES("7122","167","","co_funcionamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7123","6","","nu_dia_semana","1020");

INSERT INTO tb_auditoria_itens VALUES("7124","07:00","","nu_hora_abertura","1020");

INSERT INTO tb_auditoria_itens VALUES("7125","19:00","","nu_hora_fechamento","1020");

INSERT INTO tb_auditoria_itens VALUES("7126","11","","co_assinante","1020");

INSERT INTO tb_auditoria_itens VALUES("7127","","11","co_assinante","1021");

INSERT INTO tb_auditoria_itens VALUES("7128","","1","nu_dia_semana","1021");

INSERT INTO tb_auditoria_itens VALUES("7129","","09:00","nu_hora_abertura","1021");

INSERT INTO tb_auditoria_itens VALUES("7130","","18:00","nu_hora_fechamento","1021");

INSERT INTO tb_auditoria_itens VALUES("7131","","11","co_assinante","1022");

INSERT INTO tb_auditoria_itens VALUES("7132","","2","nu_dia_semana","1022");

INSERT INTO tb_auditoria_itens VALUES("7133","","08:00","nu_hora_abertura","1022");

INSERT INTO tb_auditoria_itens VALUES("7134","","18:00","nu_hora_fechamento","1022");

INSERT INTO tb_auditoria_itens VALUES("7135","","11","co_assinante","1023");

INSERT INTO tb_auditoria_itens VALUES("7136","","3","nu_dia_semana","1023");

INSERT INTO tb_auditoria_itens VALUES("7137","","08:00","nu_hora_abertura","1023");

INSERT INTO tb_auditoria_itens VALUES("7138","","18:30","nu_hora_fechamento","1023");

INSERT INTO tb_auditoria_itens VALUES("7139","","11","co_assinante","1024");

INSERT INTO tb_auditoria_itens VALUES("7140","","4","nu_dia_semana","1024");

INSERT INTO tb_auditoria_itens VALUES("7141","","08:00","nu_hora_abertura","1024");

INSERT INTO tb_auditoria_itens VALUES("7142","","18:00","nu_hora_fechamento","1024");

INSERT INTO tb_auditoria_itens VALUES("7143","","11","co_assinante","1025");

INSERT INTO tb_auditoria_itens VALUES("7144","","5","nu_dia_semana","1025");

INSERT INTO tb_auditoria_itens VALUES("7145","","08:00","nu_hora_abertura","1025");

INSERT INTO tb_auditoria_itens VALUES("7146","","18:00","nu_hora_fechamento","1025");

INSERT INTO tb_auditoria_itens VALUES("7147","","11","co_assinante","1026");

INSERT INTO tb_auditoria_itens VALUES("7148","","6","nu_dia_semana","1026");

INSERT INTO tb_auditoria_itens VALUES("7149","","07:00","nu_hora_abertura","1026");

INSERT INTO tb_auditoria_itens VALUES("7150","","19:00","nu_hora_fechamento","1026");

INSERT INTO tb_auditoria_itens VALUES("7151","","11","co_assinante","1027");

INSERT INTO tb_auditoria_itens VALUES("7152","","8","nu_dia_semana","1027");

INSERT INTO tb_auditoria_itens VALUES("7153","","07:00","nu_hora_abertura","1027");

INSERT INTO tb_auditoria_itens VALUES("7154","","14:20","nu_hora_fechamento","1027");

INSERT INTO tb_auditoria_itens VALUES("7155","15","","co_pessoa","1028");

INSERT INTO tb_auditoria_itens VALUES("7156","","","nu_cpf","1028");

INSERT INTO tb_auditoria_itens VALUES("7157","LEO BESSA","LEO BESSA","no_pessoa","1028");

INSERT INTO tb_auditoria_itens VALUES("7158","","","nu_rg","1028");

INSERT INTO tb_auditoria_itens VALUES("7159","2018-08-14 16:45:26","","dt_cadastro","1028");

INSERT INTO tb_auditoria_itens VALUES("7160","","","dt_nascimento","1028");

INSERT INTO tb_auditoria_itens VALUES("7161","","","st_sexo","1028");

INSERT INTO tb_auditoria_itens VALUES("7162","0","","co_endereco","1028");

INSERT INTO tb_auditoria_itens VALUES("7163","15","","co_contato","1028");

INSERT INTO tb_auditoria_itens VALUES("7164","0","","co_imagem","1028");

INSERT INTO tb_auditoria_itens VALUES("7165","12","","co_empresa","1029");

INSERT INTO tb_auditoria_itens VALUES("7166","TESTE 01 RAZãO","TESTE 01 RAZãO","no_empresa","1029");

INSERT INTO tb_auditoria_itens VALUES("7167","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","1029");

INSERT INTO tb_auditoria_itens VALUES("7168","2018-08-14 16:45:26","","dt_cadastro","1029");

INSERT INTO tb_auditoria_itens VALUES("7169","07844665000120","07844665000120","nu_cnpj","1029");

INSERT INTO tb_auditoria_itens VALUES("7170","43543664","43543664","nu_insc_estadual","1029");

INSERT INTO tb_auditoria_itens VALUES("7171","","vvev v","ds_observacao","1029");

INSERT INTO tb_auditoria_itens VALUES("7172","","","st_status","1029");

INSERT INTO tb_auditoria_itens VALUES("7173","0","","co_pessoa","1029");

INSERT INTO tb_auditoria_itens VALUES("7174","29","","co_endereco","1029");

INSERT INTO tb_auditoria_itens VALUES("7175","15","","co_contato","1029");

INSERT INTO tb_auditoria_itens VALUES("7176","0","","co_imagem","1029");

INSERT INTO tb_auditoria_itens VALUES("7177","29","","co_endereco","1030");

INSERT INTO tb_auditoria_itens VALUES("7178","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","1030");

INSERT INTO tb_auditoria_itens VALUES("7179","Casa 28","Casa 28","ds_complemento","1030");

INSERT INTO tb_auditoria_itens VALUES("7180","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","1030");

INSERT INTO tb_auditoria_itens VALUES("7181","72319111","72319111","nu_cep","1030");

INSERT INTO tb_auditoria_itens VALUES("7182","Brasília","Brasília","no_cidade","1030");

INSERT INTO tb_auditoria_itens VALUES("7183","DF","DF","sg_uf","1030");

INSERT INTO tb_auditoria_itens VALUES("7184","12","","co_empresa","1031");

INSERT INTO tb_auditoria_itens VALUES("7185","TESTE 01 RAZãO","","no_empresa","1031");

INSERT INTO tb_auditoria_itens VALUES("7186","SALãO NOVO VISUAL","","no_fantasia","1031");

INSERT INTO tb_auditoria_itens VALUES("7187","2018-08-14 16:45:26","","dt_cadastro","1031");

INSERT INTO tb_auditoria_itens VALUES("7188","07844665000120","","nu_cnpj","1031");

INSERT INTO tb_auditoria_itens VALUES("7189","43543664","","nu_insc_estadual","1031");

INSERT INTO tb_auditoria_itens VALUES("7190","vvev v","","ds_observacao","1031");

INSERT INTO tb_auditoria_itens VALUES("7191","","","st_status","1031");

INSERT INTO tb_auditoria_itens VALUES("7192","0","","co_pessoa","1031");

INSERT INTO tb_auditoria_itens VALUES("7193","29","29","co_endereco","1031");

INSERT INTO tb_auditoria_itens VALUES("7194","15","","co_contato","1031");

INSERT INTO tb_auditoria_itens VALUES("7195","0","","co_imagem","1031");

INSERT INTO tb_auditoria_itens VALUES("7196","15","","co_contato","1032");

INSERT INTO tb_auditoria_itens VALUES("7197","23523462347","23523462347","nu_tel1","1032");

INSERT INTO tb_auditoria_itens VALUES("7198","54364364364","54364364364","nu_tel2","1032");

INSERT INTO tb_auditoria_itens VALUES("7199","","","nu_tel3","1032");

INSERT INTO tb_auditoria_itens VALUES("7200","","","nu_tel_0800","1032");

INSERT INTO tb_auditoria_itens VALUES("7201","leo@mail.com","leo@mail.com","ds_email","1032");

INSERT INTO tb_auditoria_itens VALUES("7202","www.site.com.br","www.site.com.br","ds_site","1032");

INSERT INTO tb_auditoria_itens VALUES("7203","38","","co_facilidade_beneficio","1033");

INSERT INTO tb_auditoria_itens VALUES("7204","1","","tp_estabelecimento","1033");

INSERT INTO tb_auditoria_itens VALUES("7205","1","","tp_atendimento","1033");

INSERT INTO tb_auditoria_itens VALUES("7206","1","","tp_genero_especializado","1033");

INSERT INTO tb_auditoria_itens VALUES("7207","1","","tp_estacionamento","1033");

INSERT INTO tb_auditoria_itens VALUES("7208","N","","st_lanchonete","1033");

INSERT INTO tb_auditoria_itens VALUES("7209","S","","st_televisao","1033");

INSERT INTO tb_auditoria_itens VALUES("7210","S","","st_wifi","1033");

INSERT INTO tb_auditoria_itens VALUES("7211","N","","st_acesso_deficiente","1033");

INSERT INTO tb_auditoria_itens VALUES("7212","S","","st_jogos","1033");

INSERT INTO tb_auditoria_itens VALUES("7213","11","","co_assinante","1033");

INSERT INTO tb_auditoria_itens VALUES("7214","","11","co_assinante","1034");

INSERT INTO tb_auditoria_itens VALUES("7215","","1","tp_estabelecimento","1034");

INSERT INTO tb_auditoria_itens VALUES("7216","","1","tp_atendimento","1034");

INSERT INTO tb_auditoria_itens VALUES("7217","","1","tp_genero_especializado","1034");

INSERT INTO tb_auditoria_itens VALUES("7218","","1","tp_estacionamento","1034");

INSERT INTO tb_auditoria_itens VALUES("7219","","N","st_lanchonete","1034");

INSERT INTO tb_auditoria_itens VALUES("7220","","S","st_televisao","1034");

INSERT INTO tb_auditoria_itens VALUES("7221","","S","st_wifi","1034");

INSERT INTO tb_auditoria_itens VALUES("7222","","N","st_acesso_deficiente","1034");

INSERT INTO tb_auditoria_itens VALUES("7223","","S","st_jogos","1034");

INSERT INTO tb_auditoria_itens VALUES("7224","168","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7225","1","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7226","09:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7227","18:00","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7228","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7229","169","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7230","2","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7231","08:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7232","18:00","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7233","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7234","170","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7235","3","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7236","08:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7237","18:30","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7238","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7239","171","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7240","4","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7241","08:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7242","18:00","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7243","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7244","172","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7245","5","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7246","08:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7247","18:00","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7248","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7249","173","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7250","6","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7251","07:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7252","19:00","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7253","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7254","174","","co_funcionamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7255","8","","nu_dia_semana","1035");

INSERT INTO tb_auditoria_itens VALUES("7256","07:00","","nu_hora_abertura","1035");

INSERT INTO tb_auditoria_itens VALUES("7257","14:20","","nu_hora_fechamento","1035");

INSERT INTO tb_auditoria_itens VALUES("7258","11","","co_assinante","1035");

INSERT INTO tb_auditoria_itens VALUES("7259","","11","co_assinante","1036");

INSERT INTO tb_auditoria_itens VALUES("7260","","1","nu_dia_semana","1036");

INSERT INTO tb_auditoria_itens VALUES("7261","","09:00","nu_hora_abertura","1036");

INSERT INTO tb_auditoria_itens VALUES("7262","","18:00","nu_hora_fechamento","1036");

INSERT INTO tb_auditoria_itens VALUES("7263","","11","co_assinante","1037");

INSERT INTO tb_auditoria_itens VALUES("7264","","2","nu_dia_semana","1037");

INSERT INTO tb_auditoria_itens VALUES("7265","","08:00","nu_hora_abertura","1037");

INSERT INTO tb_auditoria_itens VALUES("7266","","18:00","nu_hora_fechamento","1037");

INSERT INTO tb_auditoria_itens VALUES("7267","","11","co_assinante","1038");

INSERT INTO tb_auditoria_itens VALUES("7268","","3","nu_dia_semana","1038");

INSERT INTO tb_auditoria_itens VALUES("7269","","08:00","nu_hora_abertura","1038");

INSERT INTO tb_auditoria_itens VALUES("7270","","18:30","nu_hora_fechamento","1038");

INSERT INTO tb_auditoria_itens VALUES("7271","","11","co_assinante","1039");

INSERT INTO tb_auditoria_itens VALUES("7272","","4","nu_dia_semana","1039");

INSERT INTO tb_auditoria_itens VALUES("7273","","08:00","nu_hora_abertura","1039");

INSERT INTO tb_auditoria_itens VALUES("7274","","18:00","nu_hora_fechamento","1039");

INSERT INTO tb_auditoria_itens VALUES("7275","","11","co_assinante","1040");

INSERT INTO tb_auditoria_itens VALUES("7276","","5","nu_dia_semana","1040");

INSERT INTO tb_auditoria_itens VALUES("7277","","08:00","nu_hora_abertura","1040");

INSERT INTO tb_auditoria_itens VALUES("7278","","18:00","nu_hora_fechamento","1040");

INSERT INTO tb_auditoria_itens VALUES("7279","","11","co_assinante","1041");

INSERT INTO tb_auditoria_itens VALUES("7280","","6","nu_dia_semana","1041");

INSERT INTO tb_auditoria_itens VALUES("7281","","07:00","nu_hora_abertura","1041");

INSERT INTO tb_auditoria_itens VALUES("7282","","19:00","nu_hora_fechamento","1041");

INSERT INTO tb_auditoria_itens VALUES("7283","","11","co_assinante","1042");

INSERT INTO tb_auditoria_itens VALUES("7284","","7","nu_dia_semana","1042");

INSERT INTO tb_auditoria_itens VALUES("7285","","07:00","nu_hora_abertura","1042");

INSERT INTO tb_auditoria_itens VALUES("7286","","14:20","nu_hora_fechamento","1042");

INSERT INTO tb_auditoria_itens VALUES("7287","15","","co_pessoa","1043");

INSERT INTO tb_auditoria_itens VALUES("7288","","","nu_cpf","1043");

INSERT INTO tb_auditoria_itens VALUES("7289","LEO BESSA","LEO BESSA","no_pessoa","1043");

INSERT INTO tb_auditoria_itens VALUES("7290","","","nu_rg","1043");

INSERT INTO tb_auditoria_itens VALUES("7291","2018-08-14 16:45:26","","dt_cadastro","1043");

INSERT INTO tb_auditoria_itens VALUES("7292","","","dt_nascimento","1043");

INSERT INTO tb_auditoria_itens VALUES("7293","","","st_sexo","1043");

INSERT INTO tb_auditoria_itens VALUES("7294","0","","co_endereco","1043");

INSERT INTO tb_auditoria_itens VALUES("7295","15","","co_contato","1043");

INSERT INTO tb_auditoria_itens VALUES("7296","0","","co_imagem","1043");

INSERT INTO tb_auditoria_itens VALUES("7297","12","","co_empresa","1044");

INSERT INTO tb_auditoria_itens VALUES("7298","TESTE 01 RAZãO","TESTE 01 RAZãO","no_empresa","1044");

INSERT INTO tb_auditoria_itens VALUES("7299","SALãO NOVO VISUAL","SALãO NOVO VISUAL","no_fantasia","1044");

INSERT INTO tb_auditoria_itens VALUES("7300","2018-08-14 16:45:26","","dt_cadastro","1044");

INSERT INTO tb_auditoria_itens VALUES("7301","07844665000120","07844665000120","nu_cnpj","1044");

INSERT INTO tb_auditoria_itens VALUES("7302","43543664","43543664","nu_insc_estadual","1044");

INSERT INTO tb_auditoria_itens VALUES("7303","vvev v","vev v","ds_observacao","1044");

INSERT INTO tb_auditoria_itens VALUES("7304","","","st_status","1044");

INSERT INTO tb_auditoria_itens VALUES("7305","0","","co_pessoa","1044");

INSERT INTO tb_auditoria_itens VALUES("7306","29","","co_endereco","1044");

INSERT INTO tb_auditoria_itens VALUES("7307","15","","co_contato","1044");

INSERT INTO tb_auditoria_itens VALUES("7308","0","","co_imagem","1044");

INSERT INTO tb_auditoria_itens VALUES("7309","29","","co_endereco","1045");

INSERT INTO tb_auditoria_itens VALUES("7310","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","1045");

INSERT INTO tb_auditoria_itens VALUES("7311","Casa 28","Casa 28","ds_complemento","1045");

INSERT INTO tb_auditoria_itens VALUES("7312","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","1045");

INSERT INTO tb_auditoria_itens VALUES("7313","72319111","72319111","nu_cep","1045");

INSERT INTO tb_auditoria_itens VALUES("7314","Brasília","Brasília","no_cidade","1045");

INSERT INTO tb_auditoria_itens VALUES("7315","DF","DF","sg_uf","1045");

INSERT INTO tb_auditoria_itens VALUES("7316","12","","co_empresa","1046");

INSERT INTO tb_auditoria_itens VALUES("7317","TESTE 01 RAZãO","","no_empresa","1046");

INSERT INTO tb_auditoria_itens VALUES("7318","SALãO NOVO VISUAL","","no_fantasia","1046");

INSERT INTO tb_auditoria_itens VALUES("7319","2018-08-14 16:45:26","","dt_cadastro","1046");

INSERT INTO tb_auditoria_itens VALUES("7320","07844665000120","","nu_cnpj","1046");

INSERT INTO tb_auditoria_itens VALUES("7321","43543664","","nu_insc_estadual","1046");

INSERT INTO tb_auditoria_itens VALUES("7322","vev v","","ds_observacao","1046");

INSERT INTO tb_auditoria_itens VALUES("7323","","","st_status","1046");

INSERT INTO tb_auditoria_itens VALUES("7324","0","","co_pessoa","1046");

INSERT INTO tb_auditoria_itens VALUES("7325","29","29","co_endereco","1046");

INSERT INTO tb_auditoria_itens VALUES("7326","15","","co_contato","1046");

INSERT INTO tb_auditoria_itens VALUES("7327","0","","co_imagem","1046");

INSERT INTO tb_auditoria_itens VALUES("7328","15","","co_contato","1047");

INSERT INTO tb_auditoria_itens VALUES("7329","23523462347","23523462347","nu_tel1","1047");

INSERT INTO tb_auditoria_itens VALUES("7330","54364364364","54364364364","nu_tel2","1047");

INSERT INTO tb_auditoria_itens VALUES("7331","","","nu_tel3","1047");

INSERT INTO tb_auditoria_itens VALUES("7332","","","nu_tel_0800","1047");

INSERT INTO tb_auditoria_itens VALUES("7333","leo@mail.com","leo@mail.com","ds_email","1047");

INSERT INTO tb_auditoria_itens VALUES("7334","www.site.com.br","www.site.com.br","ds_site","1047");

INSERT INTO tb_auditoria_itens VALUES("7335","39","","co_facilidade_beneficio","1048");

INSERT INTO tb_auditoria_itens VALUES("7336","1","","tp_estabelecimento","1048");

INSERT INTO tb_auditoria_itens VALUES("7337","1","","tp_atendimento","1048");

INSERT INTO tb_auditoria_itens VALUES("7338","1","","tp_genero_especializado","1048");

INSERT INTO tb_auditoria_itens VALUES("7339","1","","tp_estacionamento","1048");

INSERT INTO tb_auditoria_itens VALUES("7340","N","","st_lanchonete","1048");

INSERT INTO tb_auditoria_itens VALUES("7341","S","","st_televisao","1048");

INSERT INTO tb_auditoria_itens VALUES("7342","S","","st_wifi","1048");

INSERT INTO tb_auditoria_itens VALUES("7343","N","","st_acesso_deficiente","1048");

INSERT INTO tb_auditoria_itens VALUES("7344","S","","st_jogos","1048");

INSERT INTO tb_auditoria_itens VALUES("7345","11","","co_assinante","1048");

INSERT INTO tb_auditoria_itens VALUES("7346","","11","co_assinante","1049");

INSERT INTO tb_auditoria_itens VALUES("7347","","1","tp_estabelecimento","1049");

INSERT INTO tb_auditoria_itens VALUES("7348","","1","tp_atendimento","1049");

INSERT INTO tb_auditoria_itens VALUES("7349","","1","tp_genero_especializado","1049");

INSERT INTO tb_auditoria_itens VALUES("7350","","1","tp_estacionamento","1049");

INSERT INTO tb_auditoria_itens VALUES("7351","","N","st_lanchonete","1049");

INSERT INTO tb_auditoria_itens VALUES("7352","","S","st_televisao","1049");

INSERT INTO tb_auditoria_itens VALUES("7353","","S","st_wifi","1049");

INSERT INTO tb_auditoria_itens VALUES("7354","","N","st_acesso_deficiente","1049");

INSERT INTO tb_auditoria_itens VALUES("7355","","S","st_jogos","1049");

INSERT INTO tb_auditoria_itens VALUES("7356","175","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7357","1","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7358","09:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7359","18:00","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7360","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7361","176","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7362","2","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7363","08:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7364","18:00","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7365","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7366","177","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7367","3","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7368","08:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7369","18:30","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7370","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7371","178","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7372","4","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7373","08:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7374","18:00","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7375","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7376","179","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7377","5","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7378","08:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7379","18:00","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7380","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7381","180","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7382","6","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7383","07:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7384","19:00","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7385","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7386","181","","co_funcionamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7387","7","","nu_dia_semana","1050");

INSERT INTO tb_auditoria_itens VALUES("7388","07:00","","nu_hora_abertura","1050");

INSERT INTO tb_auditoria_itens VALUES("7389","14:20","","nu_hora_fechamento","1050");

INSERT INTO tb_auditoria_itens VALUES("7390","11","","co_assinante","1050");

INSERT INTO tb_auditoria_itens VALUES("7391","","11","co_assinante","1051");

INSERT INTO tb_auditoria_itens VALUES("7392","","1","nu_dia_semana","1051");

INSERT INTO tb_auditoria_itens VALUES("7393","","09:00","nu_hora_abertura","1051");

INSERT INTO tb_auditoria_itens VALUES("7394","","18:00","nu_hora_fechamento","1051");

INSERT INTO tb_auditoria_itens VALUES("7395","","11","co_assinante","1052");

INSERT INTO tb_auditoria_itens VALUES("7396","","2","nu_dia_semana","1052");

INSERT INTO tb_auditoria_itens VALUES("7397","","08:00","nu_hora_abertura","1052");

INSERT INTO tb_auditoria_itens VALUES("7398","","18:00","nu_hora_fechamento","1052");

INSERT INTO tb_auditoria_itens VALUES("7399","","11","co_assinante","1053");

INSERT INTO tb_auditoria_itens VALUES("7400","","3","nu_dia_semana","1053");

INSERT INTO tb_auditoria_itens VALUES("7401","","08:00","nu_hora_abertura","1053");

INSERT INTO tb_auditoria_itens VALUES("7402","","18:30","nu_hora_fechamento","1053");

INSERT INTO tb_auditoria_itens VALUES("7403","","11","co_assinante","1054");

INSERT INTO tb_auditoria_itens VALUES("7404","","4","nu_dia_semana","1054");

INSERT INTO tb_auditoria_itens VALUES("7405","","08:00","nu_hora_abertura","1054");

INSERT INTO tb_auditoria_itens VALUES("7406","","18:00","nu_hora_fechamento","1054");

INSERT INTO tb_auditoria_itens VALUES("7407","","11","co_assinante","1055");

INSERT INTO tb_auditoria_itens VALUES("7408","","5","nu_dia_semana","1055");

INSERT INTO tb_auditoria_itens VALUES("7409","","08:00","nu_hora_abertura","1055");

INSERT INTO tb_auditoria_itens VALUES("7410","","18:00","nu_hora_fechamento","1055");

INSERT INTO tb_auditoria_itens VALUES("7411","","11","co_assinante","1056");

INSERT INTO tb_auditoria_itens VALUES("7412","","6","nu_dia_semana","1056");

INSERT INTO tb_auditoria_itens VALUES("7413","","07:00","nu_hora_abertura","1056");

INSERT INTO tb_auditoria_itens VALUES("7414","","19:00","nu_hora_fechamento","1056");

INSERT INTO tb_auditoria_itens VALUES("7415","","11","co_assinante","1057");

INSERT INTO tb_auditoria_itens VALUES("7416","","7","nu_dia_semana","1057");

INSERT INTO tb_auditoria_itens VALUES("7417","","07:00","nu_hora_abertura","1057");

INSERT INTO tb_auditoria_itens VALUES("7418","","14:20","nu_hora_fechamento","1057");

INSERT INTO tb_auditoria_itens VALUES("7419","","Listar Dia Especial","no_funcionalidade","1058");

INSERT INTO tb_auditoria_itens VALUES("7420","","14","co_funcionalidade","1059");

INSERT INTO tb_auditoria_itens VALUES("7421","","2","co_perfil","1059");

INSERT INTO tb_auditoria_itens VALUES("7422","","Cadastro Dia Especial","no_funcionalidade","1060");

INSERT INTO tb_auditoria_itens VALUES("7423","","15","co_funcionalidade","1061");

INSERT INTO tb_auditoria_itens VALUES("7424","","2","co_perfil","1061");

INSERT INTO tb_auditoria_itens VALUES("7425","","04/09/2018","dt_dia","1062");

INSERT INTO tb_auditoria_itens VALUES("7426","","22:22","nu_hora_abertura","1062");

INSERT INTO tb_auditoria_itens VALUES("7427","","11:22","nu_hora_fechamento","1062");

INSERT INTO tb_auditoria_itens VALUES("7428","","vvd","ds_motivo","1062");

INSERT INTO tb_auditoria_itens VALUES("7429","","2018-09-20","dt_dia","1063");

INSERT INTO tb_auditoria_itens VALUES("7430","","4","nu_dia_semana","1063");

INSERT INTO tb_auditoria_itens VALUES("7431","","11:11","nu_hora_abertura","1063");

INSERT INTO tb_auditoria_itens VALUES("7432","","22:22","nu_hora_fechamento","1063");

INSERT INTO tb_auditoria_itens VALUES("7433","","veve","ds_motivo","1063");

INSERT INTO tb_auditoria_itens VALUES("7434","","11","co_assinante","1063");

INSERT INTO tb_auditoria_itens VALUES("7435","2","","co_dia_especial","1064");

INSERT INTO tb_auditoria_itens VALUES("7436","2018-09-20","2018-09-28","dt_dia","1064");

INSERT INTO tb_auditoria_itens VALUES("7437","4","5","nu_dia_semana","1064");

INSERT INTO tb_auditoria_itens VALUES("7438","11:11","11:00","nu_hora_abertura","1064");

INSERT INTO tb_auditoria_itens VALUES("7439","22:22","22:00","nu_hora_fechamento","1064");

INSERT INTO tb_auditoria_itens VALUES("7440","veve","veve00","ds_motivo","1064");

INSERT INTO tb_auditoria_itens VALUES("7441","11","11","co_assinante","1064");

INSERT INTO tb_auditoria_itens VALUES("7442","","2018-10-04","dt_dia","1065");

INSERT INTO tb_auditoria_itens VALUES("7443","","4","nu_dia_semana","1065");

INSERT INTO tb_auditoria_itens VALUES("7444","","08:00","nu_hora_abertura","1065");

INSERT INTO tb_auditoria_itens VALUES("7445","","14:00","nu_hora_fechamento","1065");

INSERT INTO tb_auditoria_itens VALUES("7446","","Dia de são francisco","ds_motivo","1065");

INSERT INTO tb_auditoria_itens VALUES("7447","","11","co_assinante","1065");

INSERT INTO tb_auditoria_itens VALUES("7448","2","","co_dia_especial","1066");

INSERT INTO tb_auditoria_itens VALUES("7449","2018-09-28","","dt_dia","1066");

INSERT INTO tb_auditoria_itens VALUES("7450","5","","nu_dia_semana","1066");

INSERT INTO tb_auditoria_itens VALUES("7451","11:00","","nu_hora_abertura","1066");

INSERT INTO tb_auditoria_itens VALUES("7452","22:00","","nu_hora_fechamento","1066");

INSERT INTO tb_auditoria_itens VALUES("7453","veve00","","ds_motivo","1066");

INSERT INTO tb_auditoria_itens VALUES("7454","11","","co_assinante","1066");

INSERT INTO tb_auditoria_itens VALUES("7455","3","","co_dia_especial","1067");

INSERT INTO tb_auditoria_itens VALUES("7456","2018-10-04","","dt_dia","1067");

INSERT INTO tb_auditoria_itens VALUES("7457","4","","nu_dia_semana","1067");

INSERT INTO tb_auditoria_itens VALUES("7458","08:00","","nu_hora_abertura","1067");

INSERT INTO tb_auditoria_itens VALUES("7459","14:00","","nu_hora_fechamento","1067");

INSERT INTO tb_auditoria_itens VALUES("7460","Dia de são francisco","","ds_motivo","1067");

INSERT INTO tb_auditoria_itens VALUES("7461","11","","co_assinante","1067");

INSERT INTO tb_auditoria_itens VALUES("7462","","2018-09-04","dt_dia","1068");

INSERT INTO tb_auditoria_itens VALUES("7463","","2","nu_dia_semana","1068");

INSERT INTO tb_auditoria_itens VALUES("7464","","11:11","nu_hora_abertura","1068");

INSERT INTO tb_auditoria_itens VALUES("7465","","12:21","nu_hora_fechamento","1068");

INSERT INTO tb_auditoria_itens VALUES("7466","","EQWDW","ds_motivo","1068");

INSERT INTO tb_auditoria_itens VALUES("7467","","11","co_assinante","1068");

INSERT INTO tb_auditoria_itens VALUES("7468","4","","co_dia_especial","1069");

INSERT INTO tb_auditoria_itens VALUES("7469","2018-09-04","","dt_dia","1069");

INSERT INTO tb_auditoria_itens VALUES("7470","2","","nu_dia_semana","1069");

INSERT INTO tb_auditoria_itens VALUES("7471","11:11","","nu_hora_abertura","1069");

INSERT INTO tb_auditoria_itens VALUES("7472","12:21","","nu_hora_fechamento","1069");

INSERT INTO tb_auditoria_itens VALUES("7473","EQWDW","","ds_motivo","1069");

INSERT INTO tb_auditoria_itens VALUES("7474","11","","co_assinante","1069");

INSERT INTO tb_auditoria_itens VALUES("7475","","Formas de Pagamento","no_funcionalidade","1070");

INSERT INTO tb_auditoria_itens VALUES("7476","","16","co_funcionalidade","1071");

INSERT INTO tb_auditoria_itens VALUES("7477","","2","co_perfil","1071");

INSERT INTO tb_auditoria_itens VALUES("7478","","40","co_facilidade_beneficio","1073");

INSERT INTO tb_auditoria_itens VALUES("7479","","2","co_tipo_pagamento","1073");

INSERT INTO tb_auditoria_itens VALUES("7480","","40","co_facilidade_beneficio","1074");

INSERT INTO tb_auditoria_itens VALUES("7481","","5","co_tipo_pagamento","1074");

INSERT INTO tb_auditoria_itens VALUES("7482","","40","co_facilidade_beneficio","1075");

INSERT INTO tb_auditoria_itens VALUES("7483","","7","co_tipo_pagamento","1075");

INSERT INTO tb_auditoria_itens VALUES("7484","1","","co_facilidade_pagamento","1076");

INSERT INTO tb_auditoria_itens VALUES("7485","2","","co_tipo_pagamento","1076");

INSERT INTO tb_auditoria_itens VALUES("7486","40","","co_facilidade_beneficio","1076");

INSERT INTO tb_auditoria_itens VALUES("7487","2","","co_facilidade_pagamento","1076");

INSERT INTO tb_auditoria_itens VALUES("7488","5","","co_tipo_pagamento","1076");

INSERT INTO tb_auditoria_itens VALUES("7489","40","","co_facilidade_beneficio","1076");

INSERT INTO tb_auditoria_itens VALUES("7490","3","","co_facilidade_pagamento","1076");

INSERT INTO tb_auditoria_itens VALUES("7491","7","","co_tipo_pagamento","1076");

INSERT INTO tb_auditoria_itens VALUES("7492","40","","co_facilidade_beneficio","1076");

INSERT INTO tb_auditoria_itens VALUES("7493","","40","co_facilidade_beneficio","1077");

INSERT INTO tb_auditoria_itens VALUES("7494","","2","co_tipo_pagamento","1077");

INSERT INTO tb_auditoria_itens VALUES("7495","","40","co_facilidade_beneficio","1078");

INSERT INTO tb_auditoria_itens VALUES("7496","","5","co_tipo_pagamento","1078");

INSERT INTO tb_auditoria_itens VALUES("7497","","2018-10-10","dt_dia","1079");

INSERT INTO tb_auditoria_itens VALUES("7498","","3","nu_dia_semana","1079");

INSERT INTO tb_auditoria_itens VALUES("7499","","08:00","nu_hora_abertura","1079");

INSERT INTO tb_auditoria_itens VALUES("7500","","19:00","nu_hora_fechamento","1079");

INSERT INTO tb_auditoria_itens VALUES("7501","","Dia novo","ds_motivo","1079");

INSERT INTO tb_auditoria_itens VALUES("7502","","11","co_assinante","1079");

INSERT INTO tb_auditoria_itens VALUES("7503","4","","co_facilidade_pagamento","1080");

INSERT INTO tb_auditoria_itens VALUES("7504","2","","co_tipo_pagamento","1080");

INSERT INTO tb_auditoria_itens VALUES("7505","40","","co_facilidade_beneficio","1080");

INSERT INTO tb_auditoria_itens VALUES("7506","5","","co_facilidade_pagamento","1080");

INSERT INTO tb_auditoria_itens VALUES("7507","5","","co_tipo_pagamento","1080");

INSERT INTO tb_auditoria_itens VALUES("7508","40","","co_facilidade_beneficio","1080");

INSERT INTO tb_auditoria_itens VALUES("7509","","40","co_facilidade_beneficio","1081");

INSERT INTO tb_auditoria_itens VALUES("7510","","2","co_tipo_pagamento","1081");

INSERT INTO tb_auditoria_itens VALUES("7511","","40","co_facilidade_beneficio","1082");

INSERT INTO tb_auditoria_itens VALUES("7512","","5","co_tipo_pagamento","1082");

INSERT INTO tb_auditoria_itens VALUES("7513","","40","co_facilidade_beneficio","1083");

INSERT INTO tb_auditoria_itens VALUES("7514","","6","co_tipo_pagamento","1083");

INSERT INTO tb_auditoria_itens VALUES("7515","6","","co_facilidade_pagamento","1084");

INSERT INTO tb_auditoria_itens VALUES("7516","2","","co_tipo_pagamento","1084");

INSERT INTO tb_auditoria_itens VALUES("7517","40","","co_facilidade_beneficio","1084");

INSERT INTO tb_auditoria_itens VALUES("7518","7","","co_facilidade_pagamento","1084");

INSERT INTO tb_auditoria_itens VALUES("7519","5","","co_tipo_pagamento","1084");

INSERT INTO tb_auditoria_itens VALUES("7520","40","","co_facilidade_beneficio","1084");

INSERT INTO tb_auditoria_itens VALUES("7521","8","","co_facilidade_pagamento","1084");

INSERT INTO tb_auditoria_itens VALUES("7522","6","","co_tipo_pagamento","1084");

INSERT INTO tb_auditoria_itens VALUES("7523","40","","co_facilidade_beneficio","1084");

INSERT INTO tb_auditoria_itens VALUES("7524","","40","co_facilidade_beneficio","1085");

INSERT INTO tb_auditoria_itens VALUES("7525","","3","co_tipo_pagamento","1085");

INSERT INTO tb_auditoria_itens VALUES("7526","9","","co_facilidade_pagamento","1086");

INSERT INTO tb_auditoria_itens VALUES("7527","3","","co_tipo_pagamento","1086");

INSERT INTO tb_auditoria_itens VALUES("7528","40","","co_facilidade_beneficio","1086");

INSERT INTO tb_auditoria_itens VALUES("7529","","40","co_facilidade_beneficio","1087");

INSERT INTO tb_auditoria_itens VALUES("7530","","3","co_tipo_pagamento","1087");

INSERT INTO tb_auditoria_itens VALUES("7531","10","","co_facilidade_pagamento","1088");

INSERT INTO tb_auditoria_itens VALUES("7532","3","","co_tipo_pagamento","1088");

INSERT INTO tb_auditoria_itens VALUES("7533","40","","co_facilidade_beneficio","1088");

INSERT INTO tb_auditoria_itens VALUES("7534","","40","co_facilidade_beneficio","1089");

INSERT INTO tb_auditoria_itens VALUES("7535","","3","co_tipo_pagamento","1089");

INSERT INTO tb_auditoria_itens VALUES("7536","","Bandeiras e Taxas","no_funcionalidade","1090");

INSERT INTO tb_auditoria_itens VALUES("7537","","17","co_funcionalidade","1091");

INSERT INTO tb_auditoria_itens VALUES("7538","","2","co_perfil","1091");

INSERT INTO tb_auditoria_itens VALUES("7539","11","","co_facilidade_pagamento","1092");

INSERT INTO tb_auditoria_itens VALUES("7540","3","","co_tipo_pagamento","1092");

INSERT INTO tb_auditoria_itens VALUES("7541","40","","co_facilidade_beneficio","1092");

INSERT INTO tb_auditoria_itens VALUES("7542","","40","co_facilidade_beneficio","1093");

INSERT INTO tb_auditoria_itens VALUES("7543","","3","co_tipo_pagamento","1093");

INSERT INTO tb_auditoria_itens VALUES("7544","12","","co_facilidade_pagamento","1094");

INSERT INTO tb_auditoria_itens VALUES("7545","3","","co_tipo_pagamento","1094");

INSERT INTO tb_auditoria_itens VALUES("7546","40","","co_facilidade_beneficio","1094");

INSERT INTO tb_auditoria_itens VALUES("7547","","40","co_facilidade_beneficio","1095");

INSERT INTO tb_auditoria_itens VALUES("7548","","3","co_tipo_pagamento","1095");

INSERT INTO tb_auditoria_itens VALUES("7549","13","","co_facilidade_pagamento","1096");

INSERT INTO tb_auditoria_itens VALUES("7550","3","","co_tipo_pagamento","1096");

INSERT INTO tb_auditoria_itens VALUES("7551","40","","co_facilidade_beneficio","1096");

INSERT INTO tb_auditoria_itens VALUES("7552","","40","co_facilidade_beneficio","1097");

INSERT INTO tb_auditoria_itens VALUES("7553","","1","co_tipo_pagamento","1097");

INSERT INTO tb_auditoria_itens VALUES("7554","","40","co_facilidade_beneficio","1098");

INSERT INTO tb_auditoria_itens VALUES("7555","","4","co_tipo_pagamento","1098");

INSERT INTO tb_auditoria_itens VALUES("7556","14","","co_facilidade_pagamento","1099");

INSERT INTO tb_auditoria_itens VALUES("7557","1","","co_tipo_pagamento","1099");

INSERT INTO tb_auditoria_itens VALUES("7558","40","","co_facilidade_beneficio","1099");

INSERT INTO tb_auditoria_itens VALUES("7559","15","","co_facilidade_pagamento","1099");

INSERT INTO tb_auditoria_itens VALUES("7560","4","","co_tipo_pagamento","1099");

INSERT INTO tb_auditoria_itens VALUES("7561","40","","co_facilidade_beneficio","1099");

INSERT INTO tb_auditoria_itens VALUES("7562","","40","co_facilidade_beneficio","1100");

INSERT INTO tb_auditoria_itens VALUES("7563","","1","co_tipo_pagamento","1100");

INSERT INTO tb_auditoria_itens VALUES("7564","","40","co_facilidade_beneficio","1101");

INSERT INTO tb_auditoria_itens VALUES("7565","","2","co_tipo_pagamento","1101");

INSERT INTO tb_auditoria_itens VALUES("7566","","40","co_facilidade_beneficio","1102");

INSERT INTO tb_auditoria_itens VALUES("7567","","4","co_tipo_pagamento","1102");

INSERT INTO tb_auditoria_itens VALUES("7568","16","","co_facilidade_pagamento","1103");

INSERT INTO tb_auditoria_itens VALUES("7569","1","","co_tipo_pagamento","1103");

INSERT INTO tb_auditoria_itens VALUES("7570","40","","co_facilidade_beneficio","1103");

INSERT INTO tb_auditoria_itens VALUES("7571","17","","co_facilidade_pagamento","1103");

INSERT INTO tb_auditoria_itens VALUES("7572","2","","co_tipo_pagamento","1103");

INSERT INTO tb_auditoria_itens VALUES("7573","40","","co_facilidade_beneficio","1103");

INSERT INTO tb_auditoria_itens VALUES("7574","18","","co_facilidade_pagamento","1103");

INSERT INTO tb_auditoria_itens VALUES("7575","4","","co_tipo_pagamento","1103");

INSERT INTO tb_auditoria_itens VALUES("7576","40","","co_facilidade_beneficio","1103");

INSERT INTO tb_auditoria_itens VALUES("7577","","40","co_facilidade_beneficio","1104");

INSERT INTO tb_auditoria_itens VALUES("7578","","1","co_tipo_pagamento","1104");

INSERT INTO tb_auditoria_itens VALUES("7579","","40","co_facilidade_beneficio","1105");

INSERT INTO tb_auditoria_itens VALUES("7580","","2","co_tipo_pagamento","1105");

INSERT INTO tb_auditoria_itens VALUES("7581","","40","co_facilidade_beneficio","1106");

INSERT INTO tb_auditoria_itens VALUES("7582","","3","co_tipo_pagamento","1106");

INSERT INTO tb_auditoria_itens VALUES("7583","","40","co_facilidade_beneficio","1107");

INSERT INTO tb_auditoria_itens VALUES("7584","","4","co_tipo_pagamento","1107");

INSERT INTO tb_auditoria_itens VALUES("7587","","20","co_facilidade_pagamento","1109");

INSERT INTO tb_auditoria_itens VALUES("7588","","5","co_bandeira_cartao","1109");

INSERT INTO tb_auditoria_itens VALUES("7589","","2","co_pagamento_bandeira_cartao","1110");

INSERT INTO tb_auditoria_itens VALUES("7590","","0,77","nu_taxa_cartao","1110");

INSERT INTO tb_auditoria_itens VALUES("7591","","2018-10-23 18:55:22","dt_cadastro","1110");

INSERT INTO tb_auditoria_itens VALUES("7592","","20","co_facilidade_pagamento","1111");

INSERT INTO tb_auditoria_itens VALUES("7593","","6","co_bandeira_cartao","1111");

INSERT INTO tb_auditoria_itens VALUES("7594","","3","co_pagamento_bandeira_cartao","1112");

INSERT INTO tb_auditoria_itens VALUES("7595","","6,66","nu_taxa_cartao","1112");

INSERT INTO tb_auditoria_itens VALUES("7596","","2018-10-23 18:55:22","dt_cadastro","1112");

INSERT INTO tb_auditoria_itens VALUES("7597","","20","co_facilidade_pagamento","1113");

INSERT INTO tb_auditoria_itens VALUES("7598","","7","co_bandeira_cartao","1113");

INSERT INTO tb_auditoria_itens VALUES("7599","","4","co_pagamento_bandeira_cartao","1114");

INSERT INTO tb_auditoria_itens VALUES("7600","","44,44","nu_taxa_cartao","1114");

INSERT INTO tb_auditoria_itens VALUES("7601","","2018-10-23 18:55:22","dt_cadastro","1114");

INSERT INTO tb_auditoria_itens VALUES("7636","","20","co_facilidade_pagamento","1129");

INSERT INTO tb_auditoria_itens VALUES("7637","","2","co_bandeira_cartao","1129");

INSERT INTO tb_auditoria_itens VALUES("7638","","2018-10-23 18:59:14","dt_cadastro","1130");

INSERT INTO tb_auditoria_itens VALUES("7639","","13","co_pagamento_bandeira_cartao","1130");

INSERT INTO tb_auditoria_itens VALUES("7640","","0.77","nu_taxa_cartao","1130");

INSERT INTO tb_auditoria_itens VALUES("7641","","20","co_facilidade_pagamento","1131");

INSERT INTO tb_auditoria_itens VALUES("7642","","3","co_bandeira_cartao","1131");

INSERT INTO tb_auditoria_itens VALUES("7643","","2018-10-23 18:59:14","dt_cadastro","1132");

INSERT INTO tb_auditoria_itens VALUES("7644","","14","co_pagamento_bandeira_cartao","1132");

INSERT INTO tb_auditoria_itens VALUES("7645","","6.66","nu_taxa_cartao","1132");

INSERT INTO tb_auditoria_itens VALUES("7646","","20","co_facilidade_pagamento","1133");

INSERT INTO tb_auditoria_itens VALUES("7647","","4","co_bandeira_cartao","1133");

INSERT INTO tb_auditoria_itens VALUES("7648","","2018-10-23 18:59:14","dt_cadastro","1134");

INSERT INTO tb_auditoria_itens VALUES("7649","","15","co_pagamento_bandeira_cartao","1134");

INSERT INTO tb_auditoria_itens VALUES("7650","","55.55","nu_taxa_cartao","1134");

INSERT INTO tb_auditoria_itens VALUES("7651","","20","co_facilidade_pagamento","1135");

INSERT INTO tb_auditoria_itens VALUES("7652","","2","co_bandeira_cartao","1135");

INSERT INTO tb_auditoria_itens VALUES("7653","","2018-10-23 19:01:04","dt_cadastro","1136");

INSERT INTO tb_auditoria_itens VALUES("7654","","16","co_pagamento_bandeira_cartao","1136");

INSERT INTO tb_auditoria_itens VALUES("7655","","0.24","nu_taxa_cartao","1136");

INSERT INTO tb_auditoria_itens VALUES("7656","","20","co_facilidade_pagamento","1137");

INSERT INTO tb_auditoria_itens VALUES("7657","","3","co_bandeira_cartao","1137");

INSERT INTO tb_auditoria_itens VALUES("7658","","2018-10-23 19:01:04","dt_cadastro","1138");

INSERT INTO tb_auditoria_itens VALUES("7659","","17","co_pagamento_bandeira_cartao","1138");

INSERT INTO tb_auditoria_itens VALUES("7660","","1.34","nu_taxa_cartao","1138");

INSERT INTO tb_auditoria_itens VALUES("7661","","21","co_facilidade_pagamento","1139");

INSERT INTO tb_auditoria_itens VALUES("7662","","2","co_bandeira_cartao","1139");

INSERT INTO tb_auditoria_itens VALUES("7663","","18","co_pagamento_bandeira_cartao","1140");

INSERT INTO tb_auditoria_itens VALUES("7664","","52.35","nu_taxa_cartao","1140");

INSERT INTO tb_auditoria_itens VALUES("7665","","52.35","nu_taxa_antecipacao","1140");

INSERT INTO tb_auditoria_itens VALUES("7666","","21","co_facilidade_pagamento","1141");

INSERT INTO tb_auditoria_itens VALUES("7667","","3","co_bandeira_cartao","1141");

INSERT INTO tb_auditoria_itens VALUES("7668","","19","co_pagamento_bandeira_cartao","1142");

INSERT INTO tb_auditoria_itens VALUES("7669","","52.35","nu_taxa_cartao","1142");

INSERT INTO tb_auditoria_itens VALUES("7670","","52.35","nu_taxa_antecipacao","1142");

INSERT INTO tb_auditoria_itens VALUES("7671","","21","co_facilidade_pagamento","1143");

INSERT INTO tb_auditoria_itens VALUES("7672","","4","co_bandeira_cartao","1143");

INSERT INTO tb_auditoria_itens VALUES("7673","","20","co_pagamento_bandeira_cartao","1144");

INSERT INTO tb_auditoria_itens VALUES("7674","","0.52","nu_taxa_cartao","1144");

INSERT INTO tb_auditoria_itens VALUES("7675","","0.52","nu_taxa_antecipacao","1144");

INSERT INTO tb_auditoria_itens VALUES("7676","","20","co_facilidade_pagamento","1145");

INSERT INTO tb_auditoria_itens VALUES("7677","","2","co_bandeira_cartao","1145");

INSERT INTO tb_auditoria_itens VALUES("7678","","2018-10-23 19:06:27","dt_cadastro","1146");

INSERT INTO tb_auditoria_itens VALUES("7679","","21","co_pagamento_bandeira_cartao","1146");

INSERT INTO tb_auditoria_itens VALUES("7680","","0.55","nu_taxa_cartao","1146");

INSERT INTO tb_auditoria_itens VALUES("7681","","20","co_facilidade_pagamento","1147");

INSERT INTO tb_auditoria_itens VALUES("7682","","3","co_bandeira_cartao","1147");

INSERT INTO tb_auditoria_itens VALUES("7683","","2018-10-23 19:06:27","dt_cadastro","1148");

INSERT INTO tb_auditoria_itens VALUES("7684","","22","co_pagamento_bandeira_cartao","1148");

INSERT INTO tb_auditoria_itens VALUES("7685","","4.44","nu_taxa_cartao","1148");

INSERT INTO tb_auditoria_itens VALUES("7686","","20","co_facilidade_pagamento","1149");

INSERT INTO tb_auditoria_itens VALUES("7687","","6","co_bandeira_cartao","1149");

INSERT INTO tb_auditoria_itens VALUES("7688","","2018-10-23 19:06:27","dt_cadastro","1150");

INSERT INTO tb_auditoria_itens VALUES("7689","","23","co_pagamento_bandeira_cartao","1150");

INSERT INTO tb_auditoria_itens VALUES("7690","","21.24","nu_taxa_cartao","1150");

INSERT INTO tb_auditoria_itens VALUES("7691","","21","co_facilidade_pagamento","1151");

INSERT INTO tb_auditoria_itens VALUES("7692","","1","co_bandeira_cartao","1151");

INSERT INTO tb_auditoria_itens VALUES("7693","","24","co_pagamento_bandeira_cartao","1152");

INSERT INTO tb_auditoria_itens VALUES("7694","","7.45","nu_taxa_cartao","1152");

INSERT INTO tb_auditoria_itens VALUES("7695","","7.45","nu_taxa_antecipacao","1152");

INSERT INTO tb_auditoria_itens VALUES("7696","","21","co_facilidade_pagamento","1153");

INSERT INTO tb_auditoria_itens VALUES("7697","","2","co_bandeira_cartao","1153");

INSERT INTO tb_auditoria_itens VALUES("7698","","25","co_pagamento_bandeira_cartao","1154");

INSERT INTO tb_auditoria_itens VALUES("7699","","56.43","nu_taxa_cartao","1154");

INSERT INTO tb_auditoria_itens VALUES("7700","","56.43","nu_taxa_antecipacao","1154");

INSERT INTO tb_auditoria_itens VALUES("7701","","21","co_facilidade_pagamento","1155");

INSERT INTO tb_auditoria_itens VALUES("7702","","1","co_bandeira_cartao","1155");

INSERT INTO tb_auditoria_itens VALUES("7703","","2018-10-23 20:56:26","dt_cadastro","1156");

INSERT INTO tb_auditoria_itens VALUES("7704","","26","co_pagamento_bandeira_cartao","1156");

INSERT INTO tb_auditoria_itens VALUES("7705","","659.00","nu_taxa_cartao","1156");

INSERT INTO tb_auditoria_itens VALUES("7706","","745.00","nu_taxa_antecipacao","1156");

INSERT INTO tb_auditoria_itens VALUES("7707","","21","co_facilidade_pagamento","1157");

INSERT INTO tb_auditoria_itens VALUES("7708","","2","co_bandeira_cartao","1157");

INSERT INTO tb_auditoria_itens VALUES("7709","","2018-10-23 20:56:26","dt_cadastro","1158");

INSERT INTO tb_auditoria_itens VALUES("7710","","27","co_pagamento_bandeira_cartao","1158");

INSERT INTO tb_auditoria_itens VALUES("7711","","460.00","nu_taxa_cartao","1158");

INSERT INTO tb_auditoria_itens VALUES("7712","","999.00","nu_taxa_antecipacao","1158");

INSERT INTO tb_auditoria_itens VALUES("7713","","2018-10-23 23:24:46","dt_cadastro","1159");

INSERT INTO tb_auditoria_itens VALUES("7714","","20","co_pagamento_bandeira_cartao","1159");

INSERT INTO tb_auditoria_itens VALUES("7715","","55.00","nu_taxa_cartao","1159");

INSERT INTO tb_auditoria_itens VALUES("7716","","2018-10-23 23:24:46","dt_cadastro","1160");

INSERT INTO tb_auditoria_itens VALUES("7717","","20","co_pagamento_bandeira_cartao","1160");

INSERT INTO tb_auditoria_itens VALUES("7718","","444.00","nu_taxa_cartao","1160");

INSERT INTO tb_auditoria_itens VALUES("7719","","2018-10-23 23:24:46","dt_cadastro","1161");

INSERT INTO tb_auditoria_itens VALUES("7720","","20","co_pagamento_bandeira_cartao","1161");

INSERT INTO tb_auditoria_itens VALUES("7721","","999.00","nu_taxa_cartao","1161");

INSERT INTO tb_auditoria_itens VALUES("7722","","2018-10-23 23:28:13","dt_cadastro","1162");

INSERT INTO tb_auditoria_itens VALUES("7723","","20","co_pagamento_bandeira_cartao","1162");

INSERT INTO tb_auditoria_itens VALUES("7724","","6.87","nu_taxa_cartao","1162");

INSERT INTO tb_auditoria_itens VALUES("7725","","2018-10-23 23:28:13","dt_cadastro","1163");

INSERT INTO tb_auditoria_itens VALUES("7726","","20","co_pagamento_bandeira_cartao","1163");

INSERT INTO tb_auditoria_itens VALUES("7727","","444.00","nu_taxa_cartao","1163");

INSERT INTO tb_auditoria_itens VALUES("7728","","2018-10-23 23:28:13","dt_cadastro","1164");

INSERT INTO tb_auditoria_itens VALUES("7729","","20","co_pagamento_bandeira_cartao","1164");

INSERT INTO tb_auditoria_itens VALUES("7730","","999.00","nu_taxa_cartao","1164");

INSERT INTO tb_auditoria_itens VALUES("7731","","20","co_facilidade_pagamento","1165");

INSERT INTO tb_auditoria_itens VALUES("7732","","2","co_bandeira_cartao","1165");

INSERT INTO tb_auditoria_itens VALUES("7733","","2018-10-24 15:27:53","dt_cadastro","1166");

INSERT INTO tb_auditoria_itens VALUES("7734","","1","co_pagamento_bandeira_cartao","1166");

INSERT INTO tb_auditoria_itens VALUES("7735","","0.11","nu_taxa_cartao","1166");

INSERT INTO tb_auditoria_itens VALUES("7736","","20","co_facilidade_pagamento","1167");

INSERT INTO tb_auditoria_itens VALUES("7737","","3","co_bandeira_cartao","1167");

INSERT INTO tb_auditoria_itens VALUES("7738","","2018-10-24 15:27:53","dt_cadastro","1168");

INSERT INTO tb_auditoria_itens VALUES("7739","","2","co_pagamento_bandeira_cartao","1168");

INSERT INTO tb_auditoria_itens VALUES("7740","","2.22","nu_taxa_cartao","1168");

INSERT INTO tb_auditoria_itens VALUES("7741","","20","co_facilidade_pagamento","1169");

INSERT INTO tb_auditoria_itens VALUES("7742","","4","co_bandeira_cartao","1169");

INSERT INTO tb_auditoria_itens VALUES("7743","","2018-10-24 15:27:53","dt_cadastro","1170");

INSERT INTO tb_auditoria_itens VALUES("7744","","3","co_pagamento_bandeira_cartao","1170");

INSERT INTO tb_auditoria_itens VALUES("7745","","3.33","nu_taxa_cartao","1170");

INSERT INTO tb_auditoria_itens VALUES("7746","","2018-10-24 15:33:14","dt_cadastro","1171");

INSERT INTO tb_auditoria_itens VALUES("7747","","20","co_pagamento_bandeira_cartao","1171");

INSERT INTO tb_auditoria_itens VALUES("7748","","11.00","nu_taxa_cartao","1171");

INSERT INTO tb_auditoria_itens VALUES("7749","","2018-10-24 15:33:14","dt_cadastro","1172");

INSERT INTO tb_auditoria_itens VALUES("7750","","20","co_pagamento_bandeira_cartao","1172");

INSERT INTO tb_auditoria_itens VALUES("7751","","222.00","nu_taxa_cartao","1172");

INSERT INTO tb_auditoria_itens VALUES("7752","","2018-10-24 15:33:14","dt_cadastro","1173");

INSERT INTO tb_auditoria_itens VALUES("7753","","20","co_pagamento_bandeira_cartao","1173");

INSERT INTO tb_auditoria_itens VALUES("7754","","333.00","nu_taxa_cartao","1173");

INSERT INTO tb_auditoria_itens VALUES("7757","","20","co_facilidade_pagamento","1175");

INSERT INTO tb_auditoria_itens VALUES("7758","","1","co_bandeira_cartao","1175");

INSERT INTO tb_auditoria_itens VALUES("7759","","2018-10-24 15:38:06","dt_cadastro","1176");

INSERT INTO tb_auditoria_itens VALUES("7760","","5","co_pagamento_bandeira_cartao","1176");

INSERT INTO tb_auditoria_itens VALUES("7761","","0.11","nu_taxa_cartao","1176");

INSERT INTO tb_auditoria_itens VALUES("7762","","20","co_facilidade_pagamento","1177");

INSERT INTO tb_auditoria_itens VALUES("7763","","2","co_bandeira_cartao","1177");

INSERT INTO tb_auditoria_itens VALUES("7764","","2018-10-24 15:38:06","dt_cadastro","1178");

INSERT INTO tb_auditoria_itens VALUES("7765","","6","co_pagamento_bandeira_cartao","1178");

INSERT INTO tb_auditoria_itens VALUES("7766","","2.22","nu_taxa_cartao","1178");

INSERT INTO tb_auditoria_itens VALUES("7767","","20","co_facilidade_pagamento","1179");

INSERT INTO tb_auditoria_itens VALUES("7768","","3","co_bandeira_cartao","1179");

INSERT INTO tb_auditoria_itens VALUES("7769","","2018-10-24 15:38:06","dt_cadastro","1180");

INSERT INTO tb_auditoria_itens VALUES("7770","","7","co_pagamento_bandeira_cartao","1180");

INSERT INTO tb_auditoria_itens VALUES("7771","","33.33","nu_taxa_cartao","1180");

INSERT INTO tb_auditoria_itens VALUES("7772","","2018-10-24 16:10:47","dt_cadastro","1181");

INSERT INTO tb_auditoria_itens VALUES("7773","","5","co_pagamento_bandeira_cartao","1181");

INSERT INTO tb_auditoria_itens VALUES("7774","","0.89","nu_taxa_cartao","1181");

INSERT INTO tb_auditoria_itens VALUES("7775","","2018-10-24 16:10:47","dt_cadastro","1182");

INSERT INTO tb_auditoria_itens VALUES("7776","","6","co_pagamento_bandeira_cartao","1182");

INSERT INTO tb_auditoria_itens VALUES("7777","","222.00","nu_taxa_cartao","1182");

INSERT INTO tb_auditoria_itens VALUES("7778","","2018-10-24 16:10:47","dt_cadastro","1183");

INSERT INTO tb_auditoria_itens VALUES("7779","","7","co_pagamento_bandeira_cartao","1183");

INSERT INTO tb_auditoria_itens VALUES("7780","","999.00","nu_taxa_cartao","1183");

INSERT INTO tb_auditoria_itens VALUES("7817","","2018-10-24 16:15:16","dt_cadastro","1196");

INSERT INTO tb_auditoria_itens VALUES("7818","","5","co_pagamento_bandeira_cartao","1196");

INSERT INTO tb_auditoria_itens VALUES("7819","","0.89","nu_taxa_cartao","1196");

INSERT INTO tb_auditoria_itens VALUES("7820","","2018-10-24 16:15:16","dt_cadastro","1197");

INSERT INTO tb_auditoria_itens VALUES("7821","","6","co_pagamento_bandeira_cartao","1197");

INSERT INTO tb_auditoria_itens VALUES("7822","","4.78","nu_taxa_cartao","1197");

INSERT INTO tb_auditoria_itens VALUES("7823","","2018-10-24 16:15:16","dt_cadastro","1198");

INSERT INTO tb_auditoria_itens VALUES("7824","","7","co_pagamento_bandeira_cartao","1198");

INSERT INTO tb_auditoria_itens VALUES("7825","","9.99","nu_taxa_cartao","1198");

INSERT INTO tb_auditoria_itens VALUES("7826","","2018-10-24 16:18:46","dt_cadastro","1199");

INSERT INTO tb_auditoria_itens VALUES("7827","","5","co_pagamento_bandeira_cartao","1199");

INSERT INTO tb_auditoria_itens VALUES("7828","","0.01","nu_taxa_cartao","1199");

INSERT INTO tb_auditoria_itens VALUES("7829","","0.02","nu_taxa_antecipacao","1199");

INSERT INTO tb_auditoria_itens VALUES("7830","","2018-10-24 16:18:46","dt_cadastro","1200");

INSERT INTO tb_auditoria_itens VALUES("7831","","6","co_pagamento_bandeira_cartao","1200");

INSERT INTO tb_auditoria_itens VALUES("7832","","0.33","nu_taxa_cartao","1200");

INSERT INTO tb_auditoria_itens VALUES("7833","","4.45","nu_taxa_antecipacao","1200");

INSERT INTO tb_auditoria_itens VALUES("7834","","21","co_facilidade_pagamento","1201");

INSERT INTO tb_auditoria_itens VALUES("7835","","1","co_bandeira_cartao","1201");

INSERT INTO tb_auditoria_itens VALUES("7836","","2018-10-24 16:22:07","dt_cadastro","1202");

INSERT INTO tb_auditoria_itens VALUES("7837","","8","co_pagamento_bandeira_cartao","1202");

INSERT INTO tb_auditoria_itens VALUES("7838","","0.01","nu_taxa_cartao","1202");

INSERT INTO tb_auditoria_itens VALUES("7839","","0.02","nu_taxa_antecipacao","1202");

INSERT INTO tb_auditoria_itens VALUES("7840","","21","co_facilidade_pagamento","1203");

INSERT INTO tb_auditoria_itens VALUES("7841","","2","co_bandeira_cartao","1203");

INSERT INTO tb_auditoria_itens VALUES("7842","","2018-10-24 16:22:07","dt_cadastro","1204");

INSERT INTO tb_auditoria_itens VALUES("7843","","9","co_pagamento_bandeira_cartao","1204");

INSERT INTO tb_auditoria_itens VALUES("7844","","0.33","nu_taxa_cartao","1204");

INSERT INTO tb_auditoria_itens VALUES("7845","","4.58","nu_taxa_antecipacao","1204");

INSERT INTO tb_auditoria_itens VALUES("7846","","2018-10-24 16:22:44","dt_cadastro","1205");

INSERT INTO tb_auditoria_itens VALUES("7847","","8","co_pagamento_bandeira_cartao","1205");

INSERT INTO tb_auditoria_itens VALUES("7848","","7.89","nu_taxa_cartao","1205");

INSERT INTO tb_auditoria_itens VALUES("7849","","98.88","nu_taxa_antecipacao","1205");

INSERT INTO tb_auditoria_itens VALUES("7850","","2018-10-24 16:22:44","dt_cadastro","1206");

INSERT INTO tb_auditoria_itens VALUES("7851","","9","co_pagamento_bandeira_cartao","1206");

INSERT INTO tb_auditoria_itens VALUES("7852","","0.87","nu_taxa_cartao","1206");

INSERT INTO tb_auditoria_itens VALUES("7853","","0.95","nu_taxa_antecipacao","1206");

INSERT INTO tb_auditoria_itens VALUES("7854","","21","co_facilidade_pagamento","1207");

INSERT INTO tb_auditoria_itens VALUES("7855","","4","co_bandeira_cartao","1207");

INSERT INTO tb_auditoria_itens VALUES("7856","","2018-10-24 16:22:44","dt_cadastro","1208");

INSERT INTO tb_auditoria_itens VALUES("7857","","10","co_pagamento_bandeira_cartao","1208");

INSERT INTO tb_auditoria_itens VALUES("7858","","0.04","nu_taxa_cartao","1208");

INSERT INTO tb_auditoria_itens VALUES("7859","","5.69","nu_taxa_antecipacao","1208");

INSERT INTO tb_auditoria_itens VALUES("7860","","Historico Taxa Cartao Debito","no_funcionalidade","1209");

INSERT INTO tb_auditoria_itens VALUES("7861","","18","co_funcionalidade","1210");

INSERT INTO tb_auditoria_itens VALUES("7862","","2","co_perfil","1210");

INSERT INTO tb_auditoria_itens VALUES("7863","","Historico Taxa Cartao Crédito","no_funcionalidade","1211");

INSERT INTO tb_auditoria_itens VALUES("7864","","19","co_funcionalidade","1212");

INSERT INTO tb_auditoria_itens VALUES("7865","","2","co_perfil","1212");

INSERT INTO tb_auditoria_itens VALUES("7866","","Configuração de Cliente","no_funcionalidade","1213");

INSERT INTO tb_auditoria_itens VALUES("7867","","20","co_funcionalidade","1214");

INSERT INTO tb_auditoria_itens VALUES("7868","","2","co_perfil","1214");

INSERT INTO tb_auditoria_itens VALUES("7869","","0","nu_ausencia","1215");

INSERT INTO tb_auditoria_itens VALUES("7870","","S","st_marca_servico","1215");

INSERT INTO tb_auditoria_itens VALUES("7871","","11","co_assinante","1215");

INSERT INTO tb_auditoria_itens VALUES("7872","1","","co_config_cliente","1216");

INSERT INTO tb_auditoria_itens VALUES("7873","S","N","st_marca_servico","1216");

INSERT INTO tb_auditoria_itens VALUES("7874","0","3","nu_ausencia","1216");

INSERT INTO tb_auditoria_itens VALUES("7875","11","11","co_assinante","1216");

INSERT INTO tb_auditoria_itens VALUES("7876","1","","co_config_cliente","1217");

INSERT INTO tb_auditoria_itens VALUES("7877","N","S","st_marca_servico","1217");

INSERT INTO tb_auditoria_itens VALUES("7878","3","3","nu_ausencia","1217");

INSERT INTO tb_auditoria_itens VALUES("7879","11","11","co_assinante","1217");

INSERT INTO tb_auditoria_itens VALUES("7880","1","","co_config_cliente","1218");

INSERT INTO tb_auditoria_itens VALUES("7881","S","S","st_marca_servico","1218");

INSERT INTO tb_auditoria_itens VALUES("7882","3","3","nu_ausencia","1218");

INSERT INTO tb_auditoria_itens VALUES("7883","11","11","co_assinante","1218");

INSERT INTO tb_auditoria_itens VALUES("7884","","Configuração de Agendamento","no_funcionalidade","1219");

INSERT INTO tb_auditoria_itens VALUES("7885","","21","co_funcionalidade","1220");

INSERT INTO tb_auditoria_itens VALUES("7886","","2","co_perfil","1220");

INSERT INTO tb_auditoria_itens VALUES("7887","","4","nu_intervalo","1221");

INSERT INTO tb_auditoria_itens VALUES("7888","","15","nu_antecedencia_agendamento","1221");

INSERT INTO tb_auditoria_itens VALUES("7889","","2","st_status_agendamento_site","1221");

INSERT INTO tb_auditoria_itens VALUES("7890","","11","co_assinante","1221");

INSERT INTO tb_auditoria_itens VALUES("7891","","S","st_agendamento_site","1221");

INSERT INTO tb_auditoria_itens VALUES("7892","","N","st_receber_email_agendamento","1221");

INSERT INTO tb_auditoria_itens VALUES("7893","","N","st_enviar_email_confirmacao","1221");

INSERT INTO tb_auditoria_itens VALUES("7894","1","","co_config_agendamento","1222");

INSERT INTO tb_auditoria_itens VALUES("7895","4","6","nu_intervalo","1222");

INSERT INTO tb_auditoria_itens VALUES("7896","2","1","st_status_agendamento_site","1222");

INSERT INTO tb_auditoria_itens VALUES("7897","15","25","nu_antecedencia_agendamento","1222");

INSERT INTO tb_auditoria_itens VALUES("7898","N","S","st_receber_email_agendamento","1222");

INSERT INTO tb_auditoria_itens VALUES("7899","N","S","st_enviar_email_confirmacao","1222");

INSERT INTO tb_auditoria_itens VALUES("7900","11","11","co_assinante","1222");

INSERT INTO tb_auditoria_itens VALUES("7901","","2","nu_intervalo","1223");

INSERT INTO tb_auditoria_itens VALUES("7902","","7","nu_antecedencia_agendamento","1223");

INSERT INTO tb_auditoria_itens VALUES("7903","","2","st_status_agendamento_site","1223");

INSERT INTO tb_auditoria_itens VALUES("7904","","11","co_assinante","1223");

INSERT INTO tb_auditoria_itens VALUES("7905","","S","st_receber_email_agendamento","1223");

INSERT INTO tb_auditoria_itens VALUES("7906","","N","st_enviar_email_confirmacao","1223");

INSERT INTO tb_auditoria_itens VALUES("7907","","Manter Motivo Desconto","no_funcionalidade","1224");

INSERT INTO tb_auditoria_itens VALUES("7908","","22","co_funcionalidade","1225");

INSERT INTO tb_auditoria_itens VALUES("7909","","2","co_perfil","1225");

INSERT INTO tb_auditoria_itens VALUES("7910","","11","co_assinante","1226");

INSERT INTO tb_auditoria_itens VALUES("7911","","co_motivo_desconto","co_motivo_desconto","1226");

INSERT INTO tb_auditoria_itens VALUES("7912","","N","st_status_desconto","1226");

INSERT INTO tb_auditoria_itens VALUES("7913","","N","st_reflete_desconto_comissao","1226");

INSERT INTO tb_auditoria_itens VALUES("7914","","2018-11-26 11:50:36","dt_cadastro","1226");

INSERT INTO tb_auditoria_itens VALUES("7915","","11","co_assinante","1227");

INSERT INTO tb_auditoria_itens VALUES("7916","","8","co_motivo_desconto","1227");

INSERT INTO tb_auditoria_itens VALUES("7917","","N","st_status_desconto","1227");

INSERT INTO tb_auditoria_itens VALUES("7918","","N","st_reflete_desconto_comissao","1227");

INSERT INTO tb_auditoria_itens VALUES("7919","","2018-11-26 11:58:10","dt_cadastro","1227");

INSERT INTO tb_auditoria_itens VALUES("7920","","11","co_assinante","1228");

INSERT INTO tb_auditoria_itens VALUES("7921","","7","co_motivo_desconto","1228");

INSERT INTO tb_auditoria_itens VALUES("7922","","N","st_status_desconto","1228");

INSERT INTO tb_auditoria_itens VALUES("7923","","N","st_reflete_desconto_comissao","1228");

INSERT INTO tb_auditoria_itens VALUES("7924","","2018-11-26 11:58:10","dt_cadastro","1228");

INSERT INTO tb_auditoria_itens VALUES("7925","","11","co_assinante","1229");

INSERT INTO tb_auditoria_itens VALUES("7926","","6","co_motivo_desconto","1229");

INSERT INTO tb_auditoria_itens VALUES("7927","","N","st_status_desconto","1229");

INSERT INTO tb_auditoria_itens VALUES("7928","","N","st_reflete_desconto_comissao","1229");

INSERT INTO tb_auditoria_itens VALUES("7929","","2018-11-26 11:58:11","dt_cadastro","1229");

INSERT INTO tb_auditoria_itens VALUES("7930","","11","co_assinante","1230");

INSERT INTO tb_auditoria_itens VALUES("7931","","5","co_motivo_desconto","1230");

INSERT INTO tb_auditoria_itens VALUES("7932","","N","st_status_desconto","1230");

INSERT INTO tb_auditoria_itens VALUES("7933","","N","st_reflete_desconto_comissao","1230");

INSERT INTO tb_auditoria_itens VALUES("7934","","2018-11-26 11:58:11","dt_cadastro","1230");

INSERT INTO tb_auditoria_itens VALUES("7935","","11","co_assinante","1231");

INSERT INTO tb_auditoria_itens VALUES("7936","","4","co_motivo_desconto","1231");

INSERT INTO tb_auditoria_itens VALUES("7937","","N","st_status_desconto","1231");

INSERT INTO tb_auditoria_itens VALUES("7938","","N","st_reflete_desconto_comissao","1231");

INSERT INTO tb_auditoria_itens VALUES("7939","","2018-11-26 11:58:11","dt_cadastro","1231");

INSERT INTO tb_auditoria_itens VALUES("7940","","11","co_assinante","1232");

INSERT INTO tb_auditoria_itens VALUES("7941","","3","co_motivo_desconto","1232");

INSERT INTO tb_auditoria_itens VALUES("7942","","N","st_status_desconto","1232");

INSERT INTO tb_auditoria_itens VALUES("7943","","N","st_reflete_desconto_comissao","1232");

INSERT INTO tb_auditoria_itens VALUES("7944","","2018-11-26 11:58:12","dt_cadastro","1232");

INSERT INTO tb_auditoria_itens VALUES("7945","","11","co_assinante","1233");

INSERT INTO tb_auditoria_itens VALUES("7946","","2","co_motivo_desconto","1233");

INSERT INTO tb_auditoria_itens VALUES("7947","","N","st_status_desconto","1233");

INSERT INTO tb_auditoria_itens VALUES("7948","","N","st_reflete_desconto_comissao","1233");

INSERT INTO tb_auditoria_itens VALUES("7949","","2018-11-26 11:58:12","dt_cadastro","1233");

INSERT INTO tb_auditoria_itens VALUES("7950","","11","co_assinante","1234");

INSERT INTO tb_auditoria_itens VALUES("7951","","1","co_motivo_desconto","1234");

INSERT INTO tb_auditoria_itens VALUES("7952","","N","st_status_desconto","1234");

INSERT INTO tb_auditoria_itens VALUES("7953","","N","st_reflete_desconto_comissao","1234");

INSERT INTO tb_auditoria_itens VALUES("7954","","2018-11-26 11:58:13","dt_cadastro","1234");

INSERT INTO tb_auditoria_itens VALUES("7955","","11","co_assinante","1235");

INSERT INTO tb_auditoria_itens VALUES("7956","","0","co_motivo_desconto","1235");

INSERT INTO tb_auditoria_itens VALUES("7957","","N","st_status_desconto","1235");

INSERT INTO tb_auditoria_itens VALUES("7958","","N","st_reflete_desconto_comissao","1235");

INSERT INTO tb_auditoria_itens VALUES("7959","","2018-11-26 12:09:26","dt_cadastro","1235");

INSERT INTO tb_auditoria_itens VALUES("7960","","11","co_assinante","1236");

INSERT INTO tb_auditoria_itens VALUES("7961","","1","co_motivo_desconto","1236");

INSERT INTO tb_auditoria_itens VALUES("7962","","N","st_status_desconto","1236");

INSERT INTO tb_auditoria_itens VALUES("7963","","N","st_reflete_desconto_comissao","1236");

INSERT INTO tb_auditoria_itens VALUES("7964","","2018-11-26 12:09:26","dt_cadastro","1236");

INSERT INTO tb_auditoria_itens VALUES("7965","","11","co_assinante","1237");

INSERT INTO tb_auditoria_itens VALUES("7966","","2","co_motivo_desconto","1237");

INSERT INTO tb_auditoria_itens VALUES("7967","","N","st_status_desconto","1237");

INSERT INTO tb_auditoria_itens VALUES("7968","","N","st_reflete_desconto_comissao","1237");

INSERT INTO tb_auditoria_itens VALUES("7969","","2018-11-26 12:09:27","dt_cadastro","1237");

INSERT INTO tb_auditoria_itens VALUES("7970","","11","co_assinante","1238");

INSERT INTO tb_auditoria_itens VALUES("7971","","3","co_motivo_desconto","1238");

INSERT INTO tb_auditoria_itens VALUES("7972","","N","st_status_desconto","1238");

INSERT INTO tb_auditoria_itens VALUES("7973","","N","st_reflete_desconto_comissao","1238");

INSERT INTO tb_auditoria_itens VALUES("7974","","2018-11-26 12:09:27","dt_cadastro","1238");

INSERT INTO tb_auditoria_itens VALUES("7975","","11","co_assinante","1239");

INSERT INTO tb_auditoria_itens VALUES("7976","","4","co_motivo_desconto","1239");

INSERT INTO tb_auditoria_itens VALUES("7977","","N","st_status_desconto","1239");

INSERT INTO tb_auditoria_itens VALUES("7978","","N","st_reflete_desconto_comissao","1239");

INSERT INTO tb_auditoria_itens VALUES("7979","","2018-11-26 12:09:27","dt_cadastro","1239");

INSERT INTO tb_auditoria_itens VALUES("7980","","11","co_assinante","1240");

INSERT INTO tb_auditoria_itens VALUES("7981","","5","co_motivo_desconto","1240");

INSERT INTO tb_auditoria_itens VALUES("7982","","N","st_status_desconto","1240");

INSERT INTO tb_auditoria_itens VALUES("7983","","N","st_reflete_desconto_comissao","1240");

INSERT INTO tb_auditoria_itens VALUES("7984","","2018-11-26 12:09:27","dt_cadastro","1240");

INSERT INTO tb_auditoria_itens VALUES("7985","","11","co_assinante","1241");

INSERT INTO tb_auditoria_itens VALUES("7986","","6","co_motivo_desconto","1241");

INSERT INTO tb_auditoria_itens VALUES("7987","","N","st_status_desconto","1241");

INSERT INTO tb_auditoria_itens VALUES("7988","","N","st_reflete_desconto_comissao","1241");

INSERT INTO tb_auditoria_itens VALUES("7989","","2018-11-26 12:09:28","dt_cadastro","1241");

INSERT INTO tb_auditoria_itens VALUES("7990","","11","co_assinante","1242");

INSERT INTO tb_auditoria_itens VALUES("7991","","7","co_motivo_desconto","1242");

INSERT INTO tb_auditoria_itens VALUES("7992","","N","st_status_desconto","1242");

INSERT INTO tb_auditoria_itens VALUES("7993","","N","st_reflete_desconto_comissao","1242");

INSERT INTO tb_auditoria_itens VALUES("7994","","2018-11-26 12:09:28","dt_cadastro","1242");

INSERT INTO tb_auditoria_itens VALUES("7995","","11","co_assinante","1243");

INSERT INTO tb_auditoria_itens VALUES("7996","","8","co_motivo_desconto","1243");

INSERT INTO tb_auditoria_itens VALUES("7997","","N","st_status_desconto","1243");

INSERT INTO tb_auditoria_itens VALUES("7998","","N","st_reflete_desconto_comissao","1243");

INSERT INTO tb_auditoria_itens VALUES("7999","","2018-11-26 14:55:03","dt_cadastro","1243");

INSERT INTO tb_auditoria_itens VALUES("8000","","11","co_assinante","1244");

INSERT INTO tb_auditoria_itens VALUES("8001","","7","co_motivo_desconto","1244");

INSERT INTO tb_auditoria_itens VALUES("8002","","N","st_status_desconto","1244");

INSERT INTO tb_auditoria_itens VALUES("8003","","N","st_reflete_desconto_comissao","1244");

INSERT INTO tb_auditoria_itens VALUES("8004","","2018-11-26 14:55:03","dt_cadastro","1244");

INSERT INTO tb_auditoria_itens VALUES("8005","","11","co_assinante","1245");

INSERT INTO tb_auditoria_itens VALUES("8006","","6","co_motivo_desconto","1245");

INSERT INTO tb_auditoria_itens VALUES("8007","","N","st_status_desconto","1245");

INSERT INTO tb_auditoria_itens VALUES("8008","","N","st_reflete_desconto_comissao","1245");

INSERT INTO tb_auditoria_itens VALUES("8009","","2018-11-26 14:55:04","dt_cadastro","1245");

INSERT INTO tb_auditoria_itens VALUES("8010","","11","co_assinante","1246");

INSERT INTO tb_auditoria_itens VALUES("8011","","5","co_motivo_desconto","1246");

INSERT INTO tb_auditoria_itens VALUES("8012","","N","st_status_desconto","1246");

INSERT INTO tb_auditoria_itens VALUES("8013","","N","st_reflete_desconto_comissao","1246");

INSERT INTO tb_auditoria_itens VALUES("8014","","2018-11-26 14:55:04","dt_cadastro","1246");

INSERT INTO tb_auditoria_itens VALUES("8015","","11","co_assinante","1247");

INSERT INTO tb_auditoria_itens VALUES("8016","","4","co_motivo_desconto","1247");

INSERT INTO tb_auditoria_itens VALUES("8017","","N","st_status_desconto","1247");

INSERT INTO tb_auditoria_itens VALUES("8018","","N","st_reflete_desconto_comissao","1247");

INSERT INTO tb_auditoria_itens VALUES("8019","","2018-11-26 14:55:04","dt_cadastro","1247");

INSERT INTO tb_auditoria_itens VALUES("8020","","11","co_assinante","1248");

INSERT INTO tb_auditoria_itens VALUES("8021","","3","co_motivo_desconto","1248");

INSERT INTO tb_auditoria_itens VALUES("8022","","N","st_status_desconto","1248");

INSERT INTO tb_auditoria_itens VALUES("8023","","N","st_reflete_desconto_comissao","1248");

INSERT INTO tb_auditoria_itens VALUES("8024","","2018-11-26 14:55:05","dt_cadastro","1248");

INSERT INTO tb_auditoria_itens VALUES("8025","","11","co_assinante","1249");

INSERT INTO tb_auditoria_itens VALUES("8026","","2","co_motivo_desconto","1249");

INSERT INTO tb_auditoria_itens VALUES("8027","","N","st_status_desconto","1249");

INSERT INTO tb_auditoria_itens VALUES("8028","","N","st_reflete_desconto_comissao","1249");

INSERT INTO tb_auditoria_itens VALUES("8029","","2018-11-26 14:55:05","dt_cadastro","1249");

INSERT INTO tb_auditoria_itens VALUES("8030","","11","co_assinante","1250");

INSERT INTO tb_auditoria_itens VALUES("8031","","1","co_motivo_desconto","1250");

INSERT INTO tb_auditoria_itens VALUES("8032","","N","st_status_desconto","1250");

INSERT INTO tb_auditoria_itens VALUES("8033","","N","st_reflete_desconto_comissao","1250");

INSERT INTO tb_auditoria_itens VALUES("8034","","2018-11-26 14:55:05","dt_cadastro","1250");

INSERT INTO tb_auditoria_itens VALUES("8035","","11","co_assinante","1251");

INSERT INTO tb_auditoria_itens VALUES("8036","","8","co_motivo_desconto","1251");

INSERT INTO tb_auditoria_itens VALUES("8037","","N","st_status_desconto","1251");

INSERT INTO tb_auditoria_itens VALUES("8038","","N","st_reflete_desconto_comissao","1251");

INSERT INTO tb_auditoria_itens VALUES("8039","","2018-11-26 14:56:57","dt_cadastro","1251");

INSERT INTO tb_auditoria_itens VALUES("8040","","11","co_assinante","1252");

INSERT INTO tb_auditoria_itens VALUES("8041","","7","co_motivo_desconto","1252");

INSERT INTO tb_auditoria_itens VALUES("8042","","N","st_status_desconto","1252");

INSERT INTO tb_auditoria_itens VALUES("8043","","N","st_reflete_desconto_comissao","1252");

INSERT INTO tb_auditoria_itens VALUES("8044","","2018-11-26 14:56:58","dt_cadastro","1252");

INSERT INTO tb_auditoria_itens VALUES("8045","","11","co_assinante","1253");

INSERT INTO tb_auditoria_itens VALUES("8046","","6","co_motivo_desconto","1253");

INSERT INTO tb_auditoria_itens VALUES("8047","","N","st_status_desconto","1253");

INSERT INTO tb_auditoria_itens VALUES("8048","","N","st_reflete_desconto_comissao","1253");

INSERT INTO tb_auditoria_itens VALUES("8049","","2018-11-26 14:56:58","dt_cadastro","1253");

INSERT INTO tb_auditoria_itens VALUES("8050","","11","co_assinante","1254");

INSERT INTO tb_auditoria_itens VALUES("8051","","5","co_motivo_desconto","1254");

INSERT INTO tb_auditoria_itens VALUES("8052","","N","st_status_desconto","1254");

INSERT INTO tb_auditoria_itens VALUES("8053","","N","st_reflete_desconto_comissao","1254");

INSERT INTO tb_auditoria_itens VALUES("8054","","2018-11-26 14:56:58","dt_cadastro","1254");

INSERT INTO tb_auditoria_itens VALUES("8055","","11","co_assinante","1255");

INSERT INTO tb_auditoria_itens VALUES("8056","","4","co_motivo_desconto","1255");

INSERT INTO tb_auditoria_itens VALUES("8057","","N","st_status_desconto","1255");

INSERT INTO tb_auditoria_itens VALUES("8058","","N","st_reflete_desconto_comissao","1255");

INSERT INTO tb_auditoria_itens VALUES("8059","","2018-11-26 14:56:59","dt_cadastro","1255");

INSERT INTO tb_auditoria_itens VALUES("8060","","11","co_assinante","1256");

INSERT INTO tb_auditoria_itens VALUES("8061","","3","co_motivo_desconto","1256");

INSERT INTO tb_auditoria_itens VALUES("8062","","N","st_status_desconto","1256");

INSERT INTO tb_auditoria_itens VALUES("8063","","N","st_reflete_desconto_comissao","1256");

INSERT INTO tb_auditoria_itens VALUES("8064","","2018-11-26 14:56:59","dt_cadastro","1256");

INSERT INTO tb_auditoria_itens VALUES("8065","","11","co_assinante","1257");

INSERT INTO tb_auditoria_itens VALUES("8066","","2","co_motivo_desconto","1257");

INSERT INTO tb_auditoria_itens VALUES("8067","","N","st_status_desconto","1257");

INSERT INTO tb_auditoria_itens VALUES("8068","","N","st_reflete_desconto_comissao","1257");

INSERT INTO tb_auditoria_itens VALUES("8069","","2018-11-26 14:56:59","dt_cadastro","1257");

INSERT INTO tb_auditoria_itens VALUES("8070","","11","co_assinante","1258");

INSERT INTO tb_auditoria_itens VALUES("8071","","1","co_motivo_desconto","1258");

INSERT INTO tb_auditoria_itens VALUES("8072","","N","st_status_desconto","1258");

INSERT INTO tb_auditoria_itens VALUES("8073","","N","st_reflete_desconto_comissao","1258");

INSERT INTO tb_auditoria_itens VALUES("8074","","2018-11-26 14:56:59","dt_cadastro","1258");

INSERT INTO tb_auditoria_itens VALUES("8171","9","","co_motivo_desconto_assinante","1275");

INSERT INTO tb_auditoria_itens VALUES("8172","N","N","st_status_desconto","1275");

INSERT INTO tb_auditoria_itens VALUES("8173","N","N","st_reflete_desconto_comissao","1275");

INSERT INTO tb_auditoria_itens VALUES("8174","2018-11-26 14:56:57","","dt_cadastro","1275");

INSERT INTO tb_auditoria_itens VALUES("8175","11","","co_assinante","1275");

INSERT INTO tb_auditoria_itens VALUES("8176","8","","co_motivo_desconto","1275");

INSERT INTO tb_auditoria_itens VALUES("8177","10","","co_motivo_desconto_assinante","1276");

INSERT INTO tb_auditoria_itens VALUES("8178","N","N","st_status_desconto","1276");

INSERT INTO tb_auditoria_itens VALUES("8179","N","N","st_reflete_desconto_comissao","1276");

INSERT INTO tb_auditoria_itens VALUES("8180","2018-11-26 14:56:58","","dt_cadastro","1276");

INSERT INTO tb_auditoria_itens VALUES("8181","11","","co_assinante","1276");

INSERT INTO tb_auditoria_itens VALUES("8182","7","","co_motivo_desconto","1276");

INSERT INTO tb_auditoria_itens VALUES("8183","11","","co_motivo_desconto_assinante","1277");

INSERT INTO tb_auditoria_itens VALUES("8184","N","N","st_status_desconto","1277");

INSERT INTO tb_auditoria_itens VALUES("8185","N","N","st_reflete_desconto_comissao","1277");

INSERT INTO tb_auditoria_itens VALUES("8186","2018-11-26 14:56:58","","dt_cadastro","1277");

INSERT INTO tb_auditoria_itens VALUES("8187","11","","co_assinante","1277");

INSERT INTO tb_auditoria_itens VALUES("8188","6","","co_motivo_desconto","1277");

INSERT INTO tb_auditoria_itens VALUES("8189","12","","co_motivo_desconto_assinante","1278");

INSERT INTO tb_auditoria_itens VALUES("8190","N","N","st_status_desconto","1278");

INSERT INTO tb_auditoria_itens VALUES("8191","N","N","st_reflete_desconto_comissao","1278");

INSERT INTO tb_auditoria_itens VALUES("8192","2018-11-26 14:56:58","","dt_cadastro","1278");

INSERT INTO tb_auditoria_itens VALUES("8193","11","","co_assinante","1278");

INSERT INTO tb_auditoria_itens VALUES("8194","5","","co_motivo_desconto","1278");

INSERT INTO tb_auditoria_itens VALUES("8195","13","","co_motivo_desconto_assinante","1279");

INSERT INTO tb_auditoria_itens VALUES("8196","N","N","st_status_desconto","1279");

INSERT INTO tb_auditoria_itens VALUES("8197","N","N","st_reflete_desconto_comissao","1279");

INSERT INTO tb_auditoria_itens VALUES("8198","2018-11-26 14:56:59","","dt_cadastro","1279");

INSERT INTO tb_auditoria_itens VALUES("8199","11","","co_assinante","1279");

INSERT INTO tb_auditoria_itens VALUES("8200","4","","co_motivo_desconto","1279");

INSERT INTO tb_auditoria_itens VALUES("8201","14","","co_motivo_desconto_assinante","1280");

INSERT INTO tb_auditoria_itens VALUES("8202","N","N","st_status_desconto","1280");

INSERT INTO tb_auditoria_itens VALUES("8203","N","N","st_reflete_desconto_comissao","1280");

INSERT INTO tb_auditoria_itens VALUES("8204","2018-11-26 14:56:59","","dt_cadastro","1280");

INSERT INTO tb_auditoria_itens VALUES("8205","11","","co_assinante","1280");

INSERT INTO tb_auditoria_itens VALUES("8206","3","","co_motivo_desconto","1280");

INSERT INTO tb_auditoria_itens VALUES("8207","15","","co_motivo_desconto_assinante","1281");

INSERT INTO tb_auditoria_itens VALUES("8208","N","N","st_status_desconto","1281");

INSERT INTO tb_auditoria_itens VALUES("8209","N","N","st_reflete_desconto_comissao","1281");

INSERT INTO tb_auditoria_itens VALUES("8210","2018-11-26 14:56:59","","dt_cadastro","1281");

INSERT INTO tb_auditoria_itens VALUES("8211","11","","co_assinante","1281");

INSERT INTO tb_auditoria_itens VALUES("8212","2","","co_motivo_desconto","1281");

INSERT INTO tb_auditoria_itens VALUES("8213","16","","co_motivo_desconto_assinante","1282");

INSERT INTO tb_auditoria_itens VALUES("8214","N","N","st_status_desconto","1282");

INSERT INTO tb_auditoria_itens VALUES("8215","N","N","st_reflete_desconto_comissao","1282");

INSERT INTO tb_auditoria_itens VALUES("8216","2018-11-26 14:56:59","","dt_cadastro","1282");

INSERT INTO tb_auditoria_itens VALUES("8217","11","","co_assinante","1282");

INSERT INTO tb_auditoria_itens VALUES("8218","1","","co_motivo_desconto","1282");

INSERT INTO tb_auditoria_itens VALUES("8219","11","","co_motivo_desconto_assinante","1283");

INSERT INTO tb_auditoria_itens VALUES("8220","N","S","st_status_desconto","1283");

INSERT INTO tb_auditoria_itens VALUES("8221","N","","st_reflete_desconto_comissao","1283");

INSERT INTO tb_auditoria_itens VALUES("8222","2018-11-26 14:56:58","","dt_cadastro","1283");

INSERT INTO tb_auditoria_itens VALUES("8223","11","","co_assinante","1283");

INSERT INTO tb_auditoria_itens VALUES("8224","6","","co_motivo_desconto","1283");

INSERT INTO tb_auditoria_itens VALUES("8225","13","","co_motivo_desconto_assinante","1284");

INSERT INTO tb_auditoria_itens VALUES("8226","N","S","st_status_desconto","1284");

INSERT INTO tb_auditoria_itens VALUES("8227","N","","st_reflete_desconto_comissao","1284");

INSERT INTO tb_auditoria_itens VALUES("8228","2018-11-26 14:56:59","","dt_cadastro","1284");

INSERT INTO tb_auditoria_itens VALUES("8229","11","","co_assinante","1284");

INSERT INTO tb_auditoria_itens VALUES("8230","4","","co_motivo_desconto","1284");

INSERT INTO tb_auditoria_itens VALUES("8231","16","","co_motivo_desconto_assinante","1285");

INSERT INTO tb_auditoria_itens VALUES("8232","N","","st_status_desconto","1285");

INSERT INTO tb_auditoria_itens VALUES("8233","N","S","st_reflete_desconto_comissao","1285");

INSERT INTO tb_auditoria_itens VALUES("8234","2018-11-26 14:56:59","","dt_cadastro","1285");

INSERT INTO tb_auditoria_itens VALUES("8235","11","","co_assinante","1285");

INSERT INTO tb_auditoria_itens VALUES("8236","1","","co_motivo_desconto","1285");

INSERT INTO tb_auditoria_itens VALUES("8237","9","","co_motivo_desconto_assinante","1286");

INSERT INTO tb_auditoria_itens VALUES("8238","N","N","st_status_desconto","1286");

INSERT INTO tb_auditoria_itens VALUES("8239","N","N","st_reflete_desconto_comissao","1286");

INSERT INTO tb_auditoria_itens VALUES("8240","2018-11-26 14:56:57","","dt_cadastro","1286");

INSERT INTO tb_auditoria_itens VALUES("8241","11","","co_assinante","1286");

INSERT INTO tb_auditoria_itens VALUES("8242","8","","co_motivo_desconto","1286");

INSERT INTO tb_auditoria_itens VALUES("8243","10","","co_motivo_desconto_assinante","1287");

INSERT INTO tb_auditoria_itens VALUES("8244","N","N","st_status_desconto","1287");

INSERT INTO tb_auditoria_itens VALUES("8245","N","N","st_reflete_desconto_comissao","1287");

INSERT INTO tb_auditoria_itens VALUES("8246","2018-11-26 14:56:58","","dt_cadastro","1287");

INSERT INTO tb_auditoria_itens VALUES("8247","11","","co_assinante","1287");

INSERT INTO tb_auditoria_itens VALUES("8248","7","","co_motivo_desconto","1287");

INSERT INTO tb_auditoria_itens VALUES("8249","11","","co_motivo_desconto_assinante","1288");

INSERT INTO tb_auditoria_itens VALUES("8250","S","N","st_status_desconto","1288");

INSERT INTO tb_auditoria_itens VALUES("8251","N","N","st_reflete_desconto_comissao","1288");

INSERT INTO tb_auditoria_itens VALUES("8252","2018-11-26 14:56:58","","dt_cadastro","1288");

INSERT INTO tb_auditoria_itens VALUES("8253","11","","co_assinante","1288");

INSERT INTO tb_auditoria_itens VALUES("8254","6","","co_motivo_desconto","1288");

INSERT INTO tb_auditoria_itens VALUES("8255","12","","co_motivo_desconto_assinante","1289");

INSERT INTO tb_auditoria_itens VALUES("8256","N","N","st_status_desconto","1289");

INSERT INTO tb_auditoria_itens VALUES("8257","N","N","st_reflete_desconto_comissao","1289");

INSERT INTO tb_auditoria_itens VALUES("8258","2018-11-26 14:56:58","","dt_cadastro","1289");

INSERT INTO tb_auditoria_itens VALUES("8259","11","","co_assinante","1289");

INSERT INTO tb_auditoria_itens VALUES("8260","5","","co_motivo_desconto","1289");

INSERT INTO tb_auditoria_itens VALUES("8261","13","","co_motivo_desconto_assinante","1290");

INSERT INTO tb_auditoria_itens VALUES("8262","S","N","st_status_desconto","1290");

INSERT INTO tb_auditoria_itens VALUES("8263","N","N","st_reflete_desconto_comissao","1290");

INSERT INTO tb_auditoria_itens VALUES("8264","2018-11-26 14:56:59","","dt_cadastro","1290");

INSERT INTO tb_auditoria_itens VALUES("8265","11","","co_assinante","1290");

INSERT INTO tb_auditoria_itens VALUES("8266","4","","co_motivo_desconto","1290");

INSERT INTO tb_auditoria_itens VALUES("8267","14","","co_motivo_desconto_assinante","1291");

INSERT INTO tb_auditoria_itens VALUES("8268","N","N","st_status_desconto","1291");

INSERT INTO tb_auditoria_itens VALUES("8269","N","N","st_reflete_desconto_comissao","1291");

INSERT INTO tb_auditoria_itens VALUES("8270","2018-11-26 14:56:59","","dt_cadastro","1291");

INSERT INTO tb_auditoria_itens VALUES("8271","11","","co_assinante","1291");

INSERT INTO tb_auditoria_itens VALUES("8272","3","","co_motivo_desconto","1291");

INSERT INTO tb_auditoria_itens VALUES("8273","15","","co_motivo_desconto_assinante","1292");

INSERT INTO tb_auditoria_itens VALUES("8274","N","N","st_status_desconto","1292");

INSERT INTO tb_auditoria_itens VALUES("8275","N","N","st_reflete_desconto_comissao","1292");

INSERT INTO tb_auditoria_itens VALUES("8276","2018-11-26 14:56:59","","dt_cadastro","1292");

INSERT INTO tb_auditoria_itens VALUES("8277","11","","co_assinante","1292");

INSERT INTO tb_auditoria_itens VALUES("8278","2","","co_motivo_desconto","1292");

INSERT INTO tb_auditoria_itens VALUES("8279","16","","co_motivo_desconto_assinante","1293");

INSERT INTO tb_auditoria_itens VALUES("8280","N","N","st_status_desconto","1293");

INSERT INTO tb_auditoria_itens VALUES("8281","S","N","st_reflete_desconto_comissao","1293");

INSERT INTO tb_auditoria_itens VALUES("8282","2018-11-26 14:56:59","","dt_cadastro","1293");

INSERT INTO tb_auditoria_itens VALUES("8283","11","","co_assinante","1293");

INSERT INTO tb_auditoria_itens VALUES("8284","1","","co_motivo_desconto","1293");

INSERT INTO tb_auditoria_itens VALUES("8285","11","","co_motivo_desconto_assinante","1294");

INSERT INTO tb_auditoria_itens VALUES("8286","N","S","st_status_desconto","1294");

INSERT INTO tb_auditoria_itens VALUES("8287","N","","st_reflete_desconto_comissao","1294");

INSERT INTO tb_auditoria_itens VALUES("8288","2018-11-26 14:56:58","","dt_cadastro","1294");

INSERT INTO tb_auditoria_itens VALUES("8289","11","","co_assinante","1294");

INSERT INTO tb_auditoria_itens VALUES("8290","6","","co_motivo_desconto","1294");

INSERT INTO tb_auditoria_itens VALUES("8291","13","","co_motivo_desconto_assinante","1295");

INSERT INTO tb_auditoria_itens VALUES("8292","N","S","st_status_desconto","1295");

INSERT INTO tb_auditoria_itens VALUES("8293","N","","st_reflete_desconto_comissao","1295");

INSERT INTO tb_auditoria_itens VALUES("8294","2018-11-26 14:56:59","","dt_cadastro","1295");

INSERT INTO tb_auditoria_itens VALUES("8295","11","","co_assinante","1295");

INSERT INTO tb_auditoria_itens VALUES("8296","4","","co_motivo_desconto","1295");

INSERT INTO tb_auditoria_itens VALUES("8297","9","","co_motivo_desconto_assinante","1296");

INSERT INTO tb_auditoria_itens VALUES("8298","N","N","st_status_desconto","1296");

INSERT INTO tb_auditoria_itens VALUES("8299","N","N","st_reflete_desconto_comissao","1296");

INSERT INTO tb_auditoria_itens VALUES("8300","2018-11-26 14:56:57","","dt_cadastro","1296");

INSERT INTO tb_auditoria_itens VALUES("8301","11","","co_assinante","1296");

INSERT INTO tb_auditoria_itens VALUES("8302","8","","co_motivo_desconto","1296");

INSERT INTO tb_auditoria_itens VALUES("8303","10","","co_motivo_desconto_assinante","1297");

INSERT INTO tb_auditoria_itens VALUES("8304","N","N","st_status_desconto","1297");

INSERT INTO tb_auditoria_itens VALUES("8305","N","N","st_reflete_desconto_comissao","1297");

INSERT INTO tb_auditoria_itens VALUES("8306","2018-11-26 14:56:58","","dt_cadastro","1297");

INSERT INTO tb_auditoria_itens VALUES("8307","11","","co_assinante","1297");

INSERT INTO tb_auditoria_itens VALUES("8308","7","","co_motivo_desconto","1297");

INSERT INTO tb_auditoria_itens VALUES("8309","11","","co_motivo_desconto_assinante","1298");

INSERT INTO tb_auditoria_itens VALUES("8310","S","N","st_status_desconto","1298");

INSERT INTO tb_auditoria_itens VALUES("8311","N","N","st_reflete_desconto_comissao","1298");

INSERT INTO tb_auditoria_itens VALUES("8312","2018-11-26 14:56:58","","dt_cadastro","1298");

INSERT INTO tb_auditoria_itens VALUES("8313","11","","co_assinante","1298");

INSERT INTO tb_auditoria_itens VALUES("8314","6","","co_motivo_desconto","1298");

INSERT INTO tb_auditoria_itens VALUES("8315","12","","co_motivo_desconto_assinante","1299");

INSERT INTO tb_auditoria_itens VALUES("8316","N","N","st_status_desconto","1299");

INSERT INTO tb_auditoria_itens VALUES("8317","N","N","st_reflete_desconto_comissao","1299");

INSERT INTO tb_auditoria_itens VALUES("8318","2018-11-26 14:56:58","","dt_cadastro","1299");

INSERT INTO tb_auditoria_itens VALUES("8319","11","","co_assinante","1299");

INSERT INTO tb_auditoria_itens VALUES("8320","5","","co_motivo_desconto","1299");

INSERT INTO tb_auditoria_itens VALUES("8321","13","","co_motivo_desconto_assinante","1300");

INSERT INTO tb_auditoria_itens VALUES("8322","S","N","st_status_desconto","1300");

INSERT INTO tb_auditoria_itens VALUES("8323","N","N","st_reflete_desconto_comissao","1300");

INSERT INTO tb_auditoria_itens VALUES("8324","2018-11-26 14:56:59","","dt_cadastro","1300");

INSERT INTO tb_auditoria_itens VALUES("8325","11","","co_assinante","1300");

INSERT INTO tb_auditoria_itens VALUES("8326","4","","co_motivo_desconto","1300");

INSERT INTO tb_auditoria_itens VALUES("8327","14","","co_motivo_desconto_assinante","1301");

INSERT INTO tb_auditoria_itens VALUES("8328","N","N","st_status_desconto","1301");

INSERT INTO tb_auditoria_itens VALUES("8329","N","N","st_reflete_desconto_comissao","1301");

INSERT INTO tb_auditoria_itens VALUES("8330","2018-11-26 14:56:59","","dt_cadastro","1301");

INSERT INTO tb_auditoria_itens VALUES("8331","11","","co_assinante","1301");

INSERT INTO tb_auditoria_itens VALUES("8332","3","","co_motivo_desconto","1301");

INSERT INTO tb_auditoria_itens VALUES("8333","15","","co_motivo_desconto_assinante","1302");

INSERT INTO tb_auditoria_itens VALUES("8334","N","N","st_status_desconto","1302");

INSERT INTO tb_auditoria_itens VALUES("8335","N","N","st_reflete_desconto_comissao","1302");

INSERT INTO tb_auditoria_itens VALUES("8336","2018-11-26 14:56:59","","dt_cadastro","1302");

INSERT INTO tb_auditoria_itens VALUES("8337","11","","co_assinante","1302");

INSERT INTO tb_auditoria_itens VALUES("8338","2","","co_motivo_desconto","1302");

INSERT INTO tb_auditoria_itens VALUES("8339","16","","co_motivo_desconto_assinante","1303");

INSERT INTO tb_auditoria_itens VALUES("8340","N","N","st_status_desconto","1303");

INSERT INTO tb_auditoria_itens VALUES("8341","N","N","st_reflete_desconto_comissao","1303");

INSERT INTO tb_auditoria_itens VALUES("8342","2018-11-26 14:56:59","","dt_cadastro","1303");

INSERT INTO tb_auditoria_itens VALUES("8343","11","","co_assinante","1303");

INSERT INTO tb_auditoria_itens VALUES("8344","1","","co_motivo_desconto","1303");

INSERT INTO tb_auditoria_itens VALUES("8345","11","","co_motivo_desconto_assinante","1304");

INSERT INTO tb_auditoria_itens VALUES("8346","N","S","st_status_desconto","1304");

INSERT INTO tb_auditoria_itens VALUES("8347","N","","st_reflete_desconto_comissao","1304");

INSERT INTO tb_auditoria_itens VALUES("8348","2018-11-26 14:56:58","","dt_cadastro","1304");

INSERT INTO tb_auditoria_itens VALUES("8349","11","","co_assinante","1304");

INSERT INTO tb_auditoria_itens VALUES("8350","6","","co_motivo_desconto","1304");

INSERT INTO tb_auditoria_itens VALUES("8351","13","","co_motivo_desconto_assinante","1305");

INSERT INTO tb_auditoria_itens VALUES("8352","N","S","st_status_desconto","1305");

INSERT INTO tb_auditoria_itens VALUES("8353","N","","st_reflete_desconto_comissao","1305");

INSERT INTO tb_auditoria_itens VALUES("8354","2018-11-26 14:56:59","","dt_cadastro","1305");

INSERT INTO tb_auditoria_itens VALUES("8355","11","","co_assinante","1305");

INSERT INTO tb_auditoria_itens VALUES("8356","4","","co_motivo_desconto","1305");

INSERT INTO tb_auditoria_itens VALUES("8357","9","","co_motivo_desconto_assinante","1306");

INSERT INTO tb_auditoria_itens VALUES("8358","N","N","st_status_desconto","1306");

INSERT INTO tb_auditoria_itens VALUES("8359","N","N","st_reflete_desconto_comissao","1306");

INSERT INTO tb_auditoria_itens VALUES("8360","2018-11-26 14:56:57","","dt_cadastro","1306");

INSERT INTO tb_auditoria_itens VALUES("8361","11","","co_assinante","1306");

INSERT INTO tb_auditoria_itens VALUES("8362","8","","co_motivo_desconto","1306");

INSERT INTO tb_auditoria_itens VALUES("8363","10","","co_motivo_desconto_assinante","1307");

INSERT INTO tb_auditoria_itens VALUES("8364","N","N","st_status_desconto","1307");

INSERT INTO tb_auditoria_itens VALUES("8365","N","N","st_reflete_desconto_comissao","1307");

INSERT INTO tb_auditoria_itens VALUES("8366","2018-11-26 14:56:58","","dt_cadastro","1307");

INSERT INTO tb_auditoria_itens VALUES("8367","11","","co_assinante","1307");

INSERT INTO tb_auditoria_itens VALUES("8368","7","","co_motivo_desconto","1307");

INSERT INTO tb_auditoria_itens VALUES("8369","11","","co_motivo_desconto_assinante","1308");

INSERT INTO tb_auditoria_itens VALUES("8370","S","N","st_status_desconto","1308");

INSERT INTO tb_auditoria_itens VALUES("8371","N","N","st_reflete_desconto_comissao","1308");

INSERT INTO tb_auditoria_itens VALUES("8372","2018-11-26 14:56:58","","dt_cadastro","1308");

INSERT INTO tb_auditoria_itens VALUES("8373","11","","co_assinante","1308");

INSERT INTO tb_auditoria_itens VALUES("8374","6","","co_motivo_desconto","1308");

INSERT INTO tb_auditoria_itens VALUES("8375","12","","co_motivo_desconto_assinante","1309");

INSERT INTO tb_auditoria_itens VALUES("8376","N","N","st_status_desconto","1309");

INSERT INTO tb_auditoria_itens VALUES("8377","N","N","st_reflete_desconto_comissao","1309");

INSERT INTO tb_auditoria_itens VALUES("8378","2018-11-26 14:56:58","","dt_cadastro","1309");

INSERT INTO tb_auditoria_itens VALUES("8379","11","","co_assinante","1309");

INSERT INTO tb_auditoria_itens VALUES("8380","5","","co_motivo_desconto","1309");

INSERT INTO tb_auditoria_itens VALUES("8381","13","","co_motivo_desconto_assinante","1310");

INSERT INTO tb_auditoria_itens VALUES("8382","S","N","st_status_desconto","1310");

INSERT INTO tb_auditoria_itens VALUES("8383","N","N","st_reflete_desconto_comissao","1310");

INSERT INTO tb_auditoria_itens VALUES("8384","2018-11-26 14:56:59","","dt_cadastro","1310");

INSERT INTO tb_auditoria_itens VALUES("8385","11","","co_assinante","1310");

INSERT INTO tb_auditoria_itens VALUES("8386","4","","co_motivo_desconto","1310");

INSERT INTO tb_auditoria_itens VALUES("8387","14","","co_motivo_desconto_assinante","1311");

INSERT INTO tb_auditoria_itens VALUES("8388","N","N","st_status_desconto","1311");

INSERT INTO tb_auditoria_itens VALUES("8389","N","N","st_reflete_desconto_comissao","1311");

INSERT INTO tb_auditoria_itens VALUES("8390","2018-11-26 14:56:59","","dt_cadastro","1311");

INSERT INTO tb_auditoria_itens VALUES("8391","11","","co_assinante","1311");

INSERT INTO tb_auditoria_itens VALUES("8392","3","","co_motivo_desconto","1311");

INSERT INTO tb_auditoria_itens VALUES("8393","15","","co_motivo_desconto_assinante","1312");

INSERT INTO tb_auditoria_itens VALUES("8394","N","N","st_status_desconto","1312");

INSERT INTO tb_auditoria_itens VALUES("8395","N","N","st_reflete_desconto_comissao","1312");

INSERT INTO tb_auditoria_itens VALUES("8396","2018-11-26 14:56:59","","dt_cadastro","1312");

INSERT INTO tb_auditoria_itens VALUES("8397","11","","co_assinante","1312");

INSERT INTO tb_auditoria_itens VALUES("8398","2","","co_motivo_desconto","1312");

INSERT INTO tb_auditoria_itens VALUES("8399","16","","co_motivo_desconto_assinante","1313");

INSERT INTO tb_auditoria_itens VALUES("8400","N","N","st_status_desconto","1313");

INSERT INTO tb_auditoria_itens VALUES("8401","N","N","st_reflete_desconto_comissao","1313");

INSERT INTO tb_auditoria_itens VALUES("8402","2018-11-26 14:56:59","","dt_cadastro","1313");

INSERT INTO tb_auditoria_itens VALUES("8403","11","","co_assinante","1313");

INSERT INTO tb_auditoria_itens VALUES("8404","1","","co_motivo_desconto","1313");

INSERT INTO tb_auditoria_itens VALUES("8405","11","","co_motivo_desconto_assinante","1314");

INSERT INTO tb_auditoria_itens VALUES("8406","N","S","st_status_desconto","1314");

INSERT INTO tb_auditoria_itens VALUES("8407","N","","st_reflete_desconto_comissao","1314");

INSERT INTO tb_auditoria_itens VALUES("8408","2018-11-26 14:56:58","","dt_cadastro","1314");

INSERT INTO tb_auditoria_itens VALUES("8409","11","","co_assinante","1314");

INSERT INTO tb_auditoria_itens VALUES("8410","6","","co_motivo_desconto","1314");

INSERT INTO tb_auditoria_itens VALUES("8411","13","","co_motivo_desconto_assinante","1315");

INSERT INTO tb_auditoria_itens VALUES("8412","N","S","st_status_desconto","1315");

INSERT INTO tb_auditoria_itens VALUES("8413","N","","st_reflete_desconto_comissao","1315");

INSERT INTO tb_auditoria_itens VALUES("8414","2018-11-26 14:56:59","","dt_cadastro","1315");

INSERT INTO tb_auditoria_itens VALUES("8415","11","","co_assinante","1315");

INSERT INTO tb_auditoria_itens VALUES("8416","4","","co_motivo_desconto","1315");

INSERT INTO tb_auditoria_itens VALUES("8417","9","","co_motivo_desconto_assinante","1316");

INSERT INTO tb_auditoria_itens VALUES("8418","N","N","st_status_desconto","1316");

INSERT INTO tb_auditoria_itens VALUES("8419","N","N","st_reflete_desconto_comissao","1316");

INSERT INTO tb_auditoria_itens VALUES("8420","2018-11-26 14:56:57","","dt_cadastro","1316");

INSERT INTO tb_auditoria_itens VALUES("8421","11","","co_assinante","1316");

INSERT INTO tb_auditoria_itens VALUES("8422","8","","co_motivo_desconto","1316");

INSERT INTO tb_auditoria_itens VALUES("8423","10","","co_motivo_desconto_assinante","1317");

INSERT INTO tb_auditoria_itens VALUES("8424","N","N","st_status_desconto","1317");

INSERT INTO tb_auditoria_itens VALUES("8425","N","N","st_reflete_desconto_comissao","1317");

INSERT INTO tb_auditoria_itens VALUES("8426","2018-11-26 14:56:58","","dt_cadastro","1317");

INSERT INTO tb_auditoria_itens VALUES("8427","11","","co_assinante","1317");

INSERT INTO tb_auditoria_itens VALUES("8428","7","","co_motivo_desconto","1317");

INSERT INTO tb_auditoria_itens VALUES("8429","11","","co_motivo_desconto_assinante","1318");

INSERT INTO tb_auditoria_itens VALUES("8430","S","N","st_status_desconto","1318");

INSERT INTO tb_auditoria_itens VALUES("8431","N","N","st_reflete_desconto_comissao","1318");

INSERT INTO tb_auditoria_itens VALUES("8432","2018-11-26 14:56:58","","dt_cadastro","1318");

INSERT INTO tb_auditoria_itens VALUES("8433","11","","co_assinante","1318");

INSERT INTO tb_auditoria_itens VALUES("8434","6","","co_motivo_desconto","1318");

INSERT INTO tb_auditoria_itens VALUES("8435","12","","co_motivo_desconto_assinante","1319");

INSERT INTO tb_auditoria_itens VALUES("8436","N","N","st_status_desconto","1319");

INSERT INTO tb_auditoria_itens VALUES("8437","N","N","st_reflete_desconto_comissao","1319");

INSERT INTO tb_auditoria_itens VALUES("8438","2018-11-26 14:56:58","","dt_cadastro","1319");

INSERT INTO tb_auditoria_itens VALUES("8439","11","","co_assinante","1319");

INSERT INTO tb_auditoria_itens VALUES("8440","5","","co_motivo_desconto","1319");

INSERT INTO tb_auditoria_itens VALUES("8441","13","","co_motivo_desconto_assinante","1320");

INSERT INTO tb_auditoria_itens VALUES("8442","S","N","st_status_desconto","1320");

INSERT INTO tb_auditoria_itens VALUES("8443","N","N","st_reflete_desconto_comissao","1320");

INSERT INTO tb_auditoria_itens VALUES("8444","2018-11-26 14:56:59","","dt_cadastro","1320");

INSERT INTO tb_auditoria_itens VALUES("8445","11","","co_assinante","1320");

INSERT INTO tb_auditoria_itens VALUES("8446","4","","co_motivo_desconto","1320");

INSERT INTO tb_auditoria_itens VALUES("8447","14","","co_motivo_desconto_assinante","1321");

INSERT INTO tb_auditoria_itens VALUES("8448","N","N","st_status_desconto","1321");

INSERT INTO tb_auditoria_itens VALUES("8449","N","N","st_reflete_desconto_comissao","1321");

INSERT INTO tb_auditoria_itens VALUES("8450","2018-11-26 14:56:59","","dt_cadastro","1321");

INSERT INTO tb_auditoria_itens VALUES("8451","11","","co_assinante","1321");

INSERT INTO tb_auditoria_itens VALUES("8452","3","","co_motivo_desconto","1321");

INSERT INTO tb_auditoria_itens VALUES("8453","15","","co_motivo_desconto_assinante","1322");

INSERT INTO tb_auditoria_itens VALUES("8454","N","N","st_status_desconto","1322");

INSERT INTO tb_auditoria_itens VALUES("8455","N","N","st_reflete_desconto_comissao","1322");

INSERT INTO tb_auditoria_itens VALUES("8456","2018-11-26 14:56:59","","dt_cadastro","1322");

INSERT INTO tb_auditoria_itens VALUES("8457","11","","co_assinante","1322");

INSERT INTO tb_auditoria_itens VALUES("8458","2","","co_motivo_desconto","1322");

INSERT INTO tb_auditoria_itens VALUES("8459","16","","co_motivo_desconto_assinante","1323");

INSERT INTO tb_auditoria_itens VALUES("8460","N","N","st_status_desconto","1323");

INSERT INTO tb_auditoria_itens VALUES("8461","N","N","st_reflete_desconto_comissao","1323");

INSERT INTO tb_auditoria_itens VALUES("8462","2018-11-26 14:56:59","","dt_cadastro","1323");

INSERT INTO tb_auditoria_itens VALUES("8463","11","","co_assinante","1323");

INSERT INTO tb_auditoria_itens VALUES("8464","1","","co_motivo_desconto","1323");

INSERT INTO tb_auditoria_itens VALUES("8465","11","","co_motivo_desconto_assinante","1324");

INSERT INTO tb_auditoria_itens VALUES("8466","N","S","st_status_desconto","1324");

INSERT INTO tb_auditoria_itens VALUES("8467","N","","st_reflete_desconto_comissao","1324");

INSERT INTO tb_auditoria_itens VALUES("8468","2018-11-26 14:56:58","","dt_cadastro","1324");

INSERT INTO tb_auditoria_itens VALUES("8469","11","","co_assinante","1324");

INSERT INTO tb_auditoria_itens VALUES("8470","6","","co_motivo_desconto","1324");

INSERT INTO tb_auditoria_itens VALUES("8471","13","","co_motivo_desconto_assinante","1325");

INSERT INTO tb_auditoria_itens VALUES("8472","N","S","st_status_desconto","1325");

INSERT INTO tb_auditoria_itens VALUES("8473","N","","st_reflete_desconto_comissao","1325");

INSERT INTO tb_auditoria_itens VALUES("8474","2018-11-26 14:56:59","","dt_cadastro","1325");

INSERT INTO tb_auditoria_itens VALUES("8475","11","","co_assinante","1325");

INSERT INTO tb_auditoria_itens VALUES("8476","4","","co_motivo_desconto","1325");

INSERT INTO tb_auditoria_itens VALUES("8477","9","","co_motivo_desconto_assinante","1326");

INSERT INTO tb_auditoria_itens VALUES("8478","N","","st_status_desconto","1326");

INSERT INTO tb_auditoria_itens VALUES("8479","N","S","st_reflete_desconto_comissao","1326");

INSERT INTO tb_auditoria_itens VALUES("8480","2018-11-26 14:56:57","","dt_cadastro","1326");

INSERT INTO tb_auditoria_itens VALUES("8481","11","","co_assinante","1326");

INSERT INTO tb_auditoria_itens VALUES("8482","8","","co_motivo_desconto","1326");

INSERT INTO tb_auditoria_itens VALUES("8483","10","","co_motivo_desconto_assinante","1327");

INSERT INTO tb_auditoria_itens VALUES("8484","N","","st_status_desconto","1327");

INSERT INTO tb_auditoria_itens VALUES("8485","N","S","st_reflete_desconto_comissao","1327");

INSERT INTO tb_auditoria_itens VALUES("8486","2018-11-26 14:56:58","","dt_cadastro","1327");

INSERT INTO tb_auditoria_itens VALUES("8487","11","","co_assinante","1327");

INSERT INTO tb_auditoria_itens VALUES("8488","7","","co_motivo_desconto","1327");

INSERT INTO tb_auditoria_itens VALUES("8489","11","","co_motivo_desconto_assinante","1328");

INSERT INTO tb_auditoria_itens VALUES("8490","S","","st_status_desconto","1328");

INSERT INTO tb_auditoria_itens VALUES("8491","N","S","st_reflete_desconto_comissao","1328");

INSERT INTO tb_auditoria_itens VALUES("8492","2018-11-26 14:56:58","","dt_cadastro","1328");

INSERT INTO tb_auditoria_itens VALUES("8493","11","","co_assinante","1328");

INSERT INTO tb_auditoria_itens VALUES("8494","6","","co_motivo_desconto","1328");

INSERT INTO tb_auditoria_itens VALUES("8495","12","","co_motivo_desconto_assinante","1329");

INSERT INTO tb_auditoria_itens VALUES("8496","N","","st_status_desconto","1329");

INSERT INTO tb_auditoria_itens VALUES("8497","N","S","st_reflete_desconto_comissao","1329");

INSERT INTO tb_auditoria_itens VALUES("8498","2018-11-26 14:56:58","","dt_cadastro","1329");

INSERT INTO tb_auditoria_itens VALUES("8499","11","","co_assinante","1329");

INSERT INTO tb_auditoria_itens VALUES("8500","5","","co_motivo_desconto","1329");

INSERT INTO tb_auditoria_itens VALUES("8501","13","","co_motivo_desconto_assinante","1330");

INSERT INTO tb_auditoria_itens VALUES("8502","S","","st_status_desconto","1330");

INSERT INTO tb_auditoria_itens VALUES("8503","N","S","st_reflete_desconto_comissao","1330");

INSERT INTO tb_auditoria_itens VALUES("8504","2018-11-26 14:56:59","","dt_cadastro","1330");

INSERT INTO tb_auditoria_itens VALUES("8505","11","","co_assinante","1330");

INSERT INTO tb_auditoria_itens VALUES("8506","4","","co_motivo_desconto","1330");

INSERT INTO tb_auditoria_itens VALUES("8507","14","","co_motivo_desconto_assinante","1331");

INSERT INTO tb_auditoria_itens VALUES("8508","N","","st_status_desconto","1331");

INSERT INTO tb_auditoria_itens VALUES("8509","N","S","st_reflete_desconto_comissao","1331");

INSERT INTO tb_auditoria_itens VALUES("8510","2018-11-26 14:56:59","","dt_cadastro","1331");

INSERT INTO tb_auditoria_itens VALUES("8511","11","","co_assinante","1331");

INSERT INTO tb_auditoria_itens VALUES("8512","3","","co_motivo_desconto","1331");

INSERT INTO tb_auditoria_itens VALUES("8513","15","","co_motivo_desconto_assinante","1332");

INSERT INTO tb_auditoria_itens VALUES("8514","N","","st_status_desconto","1332");

INSERT INTO tb_auditoria_itens VALUES("8515","N","S","st_reflete_desconto_comissao","1332");

INSERT INTO tb_auditoria_itens VALUES("8516","2018-11-26 14:56:59","","dt_cadastro","1332");

INSERT INTO tb_auditoria_itens VALUES("8517","11","","co_assinante","1332");

INSERT INTO tb_auditoria_itens VALUES("8518","2","","co_motivo_desconto","1332");

INSERT INTO tb_auditoria_itens VALUES("8519","16","","co_motivo_desconto_assinante","1333");

INSERT INTO tb_auditoria_itens VALUES("8520","N","","st_status_desconto","1333");

INSERT INTO tb_auditoria_itens VALUES("8521","N","S","st_reflete_desconto_comissao","1333");

INSERT INTO tb_auditoria_itens VALUES("8522","2018-11-26 14:56:59","","dt_cadastro","1333");

INSERT INTO tb_auditoria_itens VALUES("8523","11","","co_assinante","1333");

INSERT INTO tb_auditoria_itens VALUES("8524","1","","co_motivo_desconto","1333");

INSERT INTO tb_auditoria_itens VALUES("8525","9","","co_motivo_desconto_assinante","1334");

INSERT INTO tb_auditoria_itens VALUES("8526","N","N","st_status_desconto","1334");

INSERT INTO tb_auditoria_itens VALUES("8527","S","N","st_reflete_desconto_comissao","1334");

INSERT INTO tb_auditoria_itens VALUES("8528","2018-11-26 14:56:57","","dt_cadastro","1334");

INSERT INTO tb_auditoria_itens VALUES("8529","11","","co_assinante","1334");

INSERT INTO tb_auditoria_itens VALUES("8530","8","","co_motivo_desconto","1334");

INSERT INTO tb_auditoria_itens VALUES("8531","10","","co_motivo_desconto_assinante","1335");

INSERT INTO tb_auditoria_itens VALUES("8532","N","N","st_status_desconto","1335");

INSERT INTO tb_auditoria_itens VALUES("8533","S","N","st_reflete_desconto_comissao","1335");

INSERT INTO tb_auditoria_itens VALUES("8534","2018-11-26 14:56:58","","dt_cadastro","1335");

INSERT INTO tb_auditoria_itens VALUES("8535","11","","co_assinante","1335");

INSERT INTO tb_auditoria_itens VALUES("8536","7","","co_motivo_desconto","1335");

INSERT INTO tb_auditoria_itens VALUES("8537","11","","co_motivo_desconto_assinante","1336");

INSERT INTO tb_auditoria_itens VALUES("8538","S","N","st_status_desconto","1336");

INSERT INTO tb_auditoria_itens VALUES("8539","S","N","st_reflete_desconto_comissao","1336");

INSERT INTO tb_auditoria_itens VALUES("8540","2018-11-26 14:56:58","","dt_cadastro","1336");

INSERT INTO tb_auditoria_itens VALUES("8541","11","","co_assinante","1336");

INSERT INTO tb_auditoria_itens VALUES("8542","6","","co_motivo_desconto","1336");

INSERT INTO tb_auditoria_itens VALUES("8543","12","","co_motivo_desconto_assinante","1337");

INSERT INTO tb_auditoria_itens VALUES("8544","N","N","st_status_desconto","1337");

INSERT INTO tb_auditoria_itens VALUES("8545","S","N","st_reflete_desconto_comissao","1337");

INSERT INTO tb_auditoria_itens VALUES("8546","2018-11-26 14:56:58","","dt_cadastro","1337");

INSERT INTO tb_auditoria_itens VALUES("8547","11","","co_assinante","1337");

INSERT INTO tb_auditoria_itens VALUES("8548","5","","co_motivo_desconto","1337");

INSERT INTO tb_auditoria_itens VALUES("8549","13","","co_motivo_desconto_assinante","1338");

INSERT INTO tb_auditoria_itens VALUES("8550","S","N","st_status_desconto","1338");

INSERT INTO tb_auditoria_itens VALUES("8551","S","N","st_reflete_desconto_comissao","1338");

INSERT INTO tb_auditoria_itens VALUES("8552","2018-11-26 14:56:59","","dt_cadastro","1338");

INSERT INTO tb_auditoria_itens VALUES("8553","11","","co_assinante","1338");

INSERT INTO tb_auditoria_itens VALUES("8554","4","","co_motivo_desconto","1338");

INSERT INTO tb_auditoria_itens VALUES("8555","14","","co_motivo_desconto_assinante","1339");

INSERT INTO tb_auditoria_itens VALUES("8556","N","N","st_status_desconto","1339");

INSERT INTO tb_auditoria_itens VALUES("8557","S","N","st_reflete_desconto_comissao","1339");

INSERT INTO tb_auditoria_itens VALUES("8558","2018-11-26 14:56:59","","dt_cadastro","1339");

INSERT INTO tb_auditoria_itens VALUES("8559","11","","co_assinante","1339");

INSERT INTO tb_auditoria_itens VALUES("8560","3","","co_motivo_desconto","1339");

INSERT INTO tb_auditoria_itens VALUES("8561","15","","co_motivo_desconto_assinante","1340");

INSERT INTO tb_auditoria_itens VALUES("8562","N","N","st_status_desconto","1340");

INSERT INTO tb_auditoria_itens VALUES("8563","S","N","st_reflete_desconto_comissao","1340");

INSERT INTO tb_auditoria_itens VALUES("8564","2018-11-26 14:56:59","","dt_cadastro","1340");

INSERT INTO tb_auditoria_itens VALUES("8565","11","","co_assinante","1340");

INSERT INTO tb_auditoria_itens VALUES("8566","2","","co_motivo_desconto","1340");

INSERT INTO tb_auditoria_itens VALUES("8567","16","","co_motivo_desconto_assinante","1341");

INSERT INTO tb_auditoria_itens VALUES("8568","N","N","st_status_desconto","1341");

INSERT INTO tb_auditoria_itens VALUES("8569","S","N","st_reflete_desconto_comissao","1341");

INSERT INTO tb_auditoria_itens VALUES("8570","2018-11-26 14:56:59","","dt_cadastro","1341");

INSERT INTO tb_auditoria_itens VALUES("8571","11","","co_assinante","1341");

INSERT INTO tb_auditoria_itens VALUES("8572","1","","co_motivo_desconto","1341");

INSERT INTO tb_auditoria_itens VALUES("8573","9","","co_motivo_desconto_assinante","1342");

INSERT INTO tb_auditoria_itens VALUES("8574","N","S","st_status_desconto","1342");

INSERT INTO tb_auditoria_itens VALUES("8575","N","","st_reflete_desconto_comissao","1342");

INSERT INTO tb_auditoria_itens VALUES("8576","2018-11-26 14:56:57","","dt_cadastro","1342");

INSERT INTO tb_auditoria_itens VALUES("8577","11","","co_assinante","1342");

INSERT INTO tb_auditoria_itens VALUES("8578","8","","co_motivo_desconto","1342");

INSERT INTO tb_auditoria_itens VALUES("8579","10","","co_motivo_desconto_assinante","1343");

INSERT INTO tb_auditoria_itens VALUES("8580","N","S","st_status_desconto","1343");

INSERT INTO tb_auditoria_itens VALUES("8581","N","","st_reflete_desconto_comissao","1343");

INSERT INTO tb_auditoria_itens VALUES("8582","2018-11-26 14:56:58","","dt_cadastro","1343");

INSERT INTO tb_auditoria_itens VALUES("8583","11","","co_assinante","1343");

INSERT INTO tb_auditoria_itens VALUES("8584","7","","co_motivo_desconto","1343");

INSERT INTO tb_auditoria_itens VALUES("8585","11","","co_motivo_desconto_assinante","1344");

INSERT INTO tb_auditoria_itens VALUES("8586","N","S","st_status_desconto","1344");

INSERT INTO tb_auditoria_itens VALUES("8587","N","","st_reflete_desconto_comissao","1344");

INSERT INTO tb_auditoria_itens VALUES("8588","2018-11-26 14:56:58","","dt_cadastro","1344");

INSERT INTO tb_auditoria_itens VALUES("8589","11","","co_assinante","1344");

INSERT INTO tb_auditoria_itens VALUES("8590","6","","co_motivo_desconto","1344");

INSERT INTO tb_auditoria_itens VALUES("8591","12","","co_motivo_desconto_assinante","1345");

INSERT INTO tb_auditoria_itens VALUES("8592","N","S","st_status_desconto","1345");

INSERT INTO tb_auditoria_itens VALUES("8593","N","","st_reflete_desconto_comissao","1345");

INSERT INTO tb_auditoria_itens VALUES("8594","2018-11-26 14:56:58","","dt_cadastro","1345");

INSERT INTO tb_auditoria_itens VALUES("8595","11","","co_assinante","1345");

INSERT INTO tb_auditoria_itens VALUES("8596","5","","co_motivo_desconto","1345");

INSERT INTO tb_auditoria_itens VALUES("8597","13","","co_motivo_desconto_assinante","1346");

INSERT INTO tb_auditoria_itens VALUES("8598","N","S","st_status_desconto","1346");

INSERT INTO tb_auditoria_itens VALUES("8599","N","","st_reflete_desconto_comissao","1346");

INSERT INTO tb_auditoria_itens VALUES("8600","2018-11-26 14:56:59","","dt_cadastro","1346");

INSERT INTO tb_auditoria_itens VALUES("8601","11","","co_assinante","1346");

INSERT INTO tb_auditoria_itens VALUES("8602","4","","co_motivo_desconto","1346");

INSERT INTO tb_auditoria_itens VALUES("8603","14","","co_motivo_desconto_assinante","1347");

INSERT INTO tb_auditoria_itens VALUES("8604","N","S","st_status_desconto","1347");

INSERT INTO tb_auditoria_itens VALUES("8605","N","","st_reflete_desconto_comissao","1347");

INSERT INTO tb_auditoria_itens VALUES("8606","2018-11-26 14:56:59","","dt_cadastro","1347");

INSERT INTO tb_auditoria_itens VALUES("8607","11","","co_assinante","1347");

INSERT INTO tb_auditoria_itens VALUES("8608","3","","co_motivo_desconto","1347");

INSERT INTO tb_auditoria_itens VALUES("8609","15","","co_motivo_desconto_assinante","1348");

INSERT INTO tb_auditoria_itens VALUES("8610","N","S","st_status_desconto","1348");

INSERT INTO tb_auditoria_itens VALUES("8611","N","","st_reflete_desconto_comissao","1348");

INSERT INTO tb_auditoria_itens VALUES("8612","2018-11-26 14:56:59","","dt_cadastro","1348");

INSERT INTO tb_auditoria_itens VALUES("8613","11","","co_assinante","1348");

INSERT INTO tb_auditoria_itens VALUES("8614","2","","co_motivo_desconto","1348");

INSERT INTO tb_auditoria_itens VALUES("8615","16","","co_motivo_desconto_assinante","1349");

INSERT INTO tb_auditoria_itens VALUES("8616","N","S","st_status_desconto","1349");

INSERT INTO tb_auditoria_itens VALUES("8617","N","","st_reflete_desconto_comissao","1349");

INSERT INTO tb_auditoria_itens VALUES("8618","2018-11-26 14:56:59","","dt_cadastro","1349");

INSERT INTO tb_auditoria_itens VALUES("8619","11","","co_assinante","1349");

INSERT INTO tb_auditoria_itens VALUES("8620","1","","co_motivo_desconto","1349");

INSERT INTO tb_auditoria_itens VALUES("8621","9","","co_motivo_desconto_assinante","1350");

INSERT INTO tb_auditoria_itens VALUES("8622","S","","st_status_desconto","1350");

INSERT INTO tb_auditoria_itens VALUES("8623","N","S","st_reflete_desconto_comissao","1350");

INSERT INTO tb_auditoria_itens VALUES("8624","2018-11-26 14:56:57","","dt_cadastro","1350");

INSERT INTO tb_auditoria_itens VALUES("8625","11","","co_assinante","1350");

INSERT INTO tb_auditoria_itens VALUES("8626","8","","co_motivo_desconto","1350");

INSERT INTO tb_auditoria_itens VALUES("8627","10","","co_motivo_desconto_assinante","1351");

INSERT INTO tb_auditoria_itens VALUES("8628","S","","st_status_desconto","1351");

INSERT INTO tb_auditoria_itens VALUES("8629","N","S","st_reflete_desconto_comissao","1351");

INSERT INTO tb_auditoria_itens VALUES("8630","2018-11-26 14:56:58","","dt_cadastro","1351");

INSERT INTO tb_auditoria_itens VALUES("8631","11","","co_assinante","1351");

INSERT INTO tb_auditoria_itens VALUES("8632","7","","co_motivo_desconto","1351");

INSERT INTO tb_auditoria_itens VALUES("8633","11","","co_motivo_desconto_assinante","1352");

INSERT INTO tb_auditoria_itens VALUES("8634","S","","st_status_desconto","1352");

INSERT INTO tb_auditoria_itens VALUES("8635","N","S","st_reflete_desconto_comissao","1352");

INSERT INTO tb_auditoria_itens VALUES("8636","2018-11-26 14:56:58","","dt_cadastro","1352");

INSERT INTO tb_auditoria_itens VALUES("8637","11","","co_assinante","1352");

INSERT INTO tb_auditoria_itens VALUES("8638","6","","co_motivo_desconto","1352");

INSERT INTO tb_auditoria_itens VALUES("8639","13","","co_motivo_desconto_assinante","1353");

INSERT INTO tb_auditoria_itens VALUES("8640","S","","st_status_desconto","1353");

INSERT INTO tb_auditoria_itens VALUES("8641","N","S","st_reflete_desconto_comissao","1353");

INSERT INTO tb_auditoria_itens VALUES("8642","2018-11-26 14:56:59","","dt_cadastro","1353");

INSERT INTO tb_auditoria_itens VALUES("8643","11","","co_assinante","1353");

INSERT INTO tb_auditoria_itens VALUES("8644","4","","co_motivo_desconto","1353");

INSERT INTO tb_auditoria_itens VALUES("8645","14","","co_motivo_desconto_assinante","1354");

INSERT INTO tb_auditoria_itens VALUES("8646","S","","st_status_desconto","1354");

INSERT INTO tb_auditoria_itens VALUES("8647","N","S","st_reflete_desconto_comissao","1354");

INSERT INTO tb_auditoria_itens VALUES("8648","2018-11-26 14:56:59","","dt_cadastro","1354");

INSERT INTO tb_auditoria_itens VALUES("8649","11","","co_assinante","1354");

INSERT INTO tb_auditoria_itens VALUES("8650","3","","co_motivo_desconto","1354");

INSERT INTO tb_auditoria_itens VALUES("8651","15","","co_motivo_desconto_assinante","1355");

INSERT INTO tb_auditoria_itens VALUES("8652","S","","st_status_desconto","1355");

INSERT INTO tb_auditoria_itens VALUES("8653","N","S","st_reflete_desconto_comissao","1355");

INSERT INTO tb_auditoria_itens VALUES("8654","2018-11-26 14:56:59","","dt_cadastro","1355");

INSERT INTO tb_auditoria_itens VALUES("8655","11","","co_assinante","1355");

INSERT INTO tb_auditoria_itens VALUES("8656","2","","co_motivo_desconto","1355");

INSERT INTO tb_auditoria_itens VALUES("8657","16","","co_motivo_desconto_assinante","1356");

INSERT INTO tb_auditoria_itens VALUES("8658","S","","st_status_desconto","1356");

INSERT INTO tb_auditoria_itens VALUES("8659","N","S","st_reflete_desconto_comissao","1356");

INSERT INTO tb_auditoria_itens VALUES("8660","2018-11-26 14:56:59","","dt_cadastro","1356");

INSERT INTO tb_auditoria_itens VALUES("8661","11","","co_assinante","1356");

INSERT INTO tb_auditoria_itens VALUES("8662","1","","co_motivo_desconto","1356");

INSERT INTO tb_auditoria_itens VALUES("8663","9","","co_motivo_desconto_assinante","1357");

INSERT INTO tb_auditoria_itens VALUES("8664","S","N","st_status_desconto","1357");

INSERT INTO tb_auditoria_itens VALUES("8665","S","N","st_reflete_desconto_comissao","1357");

INSERT INTO tb_auditoria_itens VALUES("8666","2018-11-26 14:56:57","","dt_cadastro","1357");

INSERT INTO tb_auditoria_itens VALUES("8667","11","","co_assinante","1357");

INSERT INTO tb_auditoria_itens VALUES("8668","8","","co_motivo_desconto","1357");

INSERT INTO tb_auditoria_itens VALUES("8669","10","","co_motivo_desconto_assinante","1358");

INSERT INTO tb_auditoria_itens VALUES("8670","S","N","st_status_desconto","1358");

INSERT INTO tb_auditoria_itens VALUES("8671","S","N","st_reflete_desconto_comissao","1358");

INSERT INTO tb_auditoria_itens VALUES("8672","2018-11-26 14:56:58","","dt_cadastro","1358");

INSERT INTO tb_auditoria_itens VALUES("8673","11","","co_assinante","1358");

INSERT INTO tb_auditoria_itens VALUES("8674","7","","co_motivo_desconto","1358");

INSERT INTO tb_auditoria_itens VALUES("8675","11","","co_motivo_desconto_assinante","1359");

INSERT INTO tb_auditoria_itens VALUES("8676","S","N","st_status_desconto","1359");

INSERT INTO tb_auditoria_itens VALUES("8677","S","N","st_reflete_desconto_comissao","1359");

INSERT INTO tb_auditoria_itens VALUES("8678","2018-11-26 14:56:58","","dt_cadastro","1359");

INSERT INTO tb_auditoria_itens VALUES("8679","11","","co_assinante","1359");

INSERT INTO tb_auditoria_itens VALUES("8680","6","","co_motivo_desconto","1359");

INSERT INTO tb_auditoria_itens VALUES("8681","12","","co_motivo_desconto_assinante","1360");

INSERT INTO tb_auditoria_itens VALUES("8682","S","N","st_status_desconto","1360");

INSERT INTO tb_auditoria_itens VALUES("8683","N","N","st_reflete_desconto_comissao","1360");

INSERT INTO tb_auditoria_itens VALUES("8684","2018-11-26 14:56:58","","dt_cadastro","1360");

INSERT INTO tb_auditoria_itens VALUES("8685","11","","co_assinante","1360");

INSERT INTO tb_auditoria_itens VALUES("8686","5","","co_motivo_desconto","1360");

INSERT INTO tb_auditoria_itens VALUES("8687","13","","co_motivo_desconto_assinante","1361");

INSERT INTO tb_auditoria_itens VALUES("8688","S","N","st_status_desconto","1361");

INSERT INTO tb_auditoria_itens VALUES("8689","S","N","st_reflete_desconto_comissao","1361");

INSERT INTO tb_auditoria_itens VALUES("8690","2018-11-26 14:56:59","","dt_cadastro","1361");

INSERT INTO tb_auditoria_itens VALUES("8691","11","","co_assinante","1361");

INSERT INTO tb_auditoria_itens VALUES("8692","4","","co_motivo_desconto","1361");

INSERT INTO tb_auditoria_itens VALUES("8693","14","","co_motivo_desconto_assinante","1362");

INSERT INTO tb_auditoria_itens VALUES("8694","S","N","st_status_desconto","1362");

INSERT INTO tb_auditoria_itens VALUES("8695","S","N","st_reflete_desconto_comissao","1362");

INSERT INTO tb_auditoria_itens VALUES("8696","2018-11-26 14:56:59","","dt_cadastro","1362");

INSERT INTO tb_auditoria_itens VALUES("8697","11","","co_assinante","1362");

INSERT INTO tb_auditoria_itens VALUES("8698","3","","co_motivo_desconto","1362");

INSERT INTO tb_auditoria_itens VALUES("8699","15","","co_motivo_desconto_assinante","1363");

INSERT INTO tb_auditoria_itens VALUES("8700","S","N","st_status_desconto","1363");

INSERT INTO tb_auditoria_itens VALUES("8701","S","N","st_reflete_desconto_comissao","1363");

INSERT INTO tb_auditoria_itens VALUES("8702","2018-11-26 14:56:59","","dt_cadastro","1363");

INSERT INTO tb_auditoria_itens VALUES("8703","11","","co_assinante","1363");

INSERT INTO tb_auditoria_itens VALUES("8704","2","","co_motivo_desconto","1363");

INSERT INTO tb_auditoria_itens VALUES("8705","16","","co_motivo_desconto_assinante","1364");

INSERT INTO tb_auditoria_itens VALUES("8706","S","N","st_status_desconto","1364");

INSERT INTO tb_auditoria_itens VALUES("8707","S","N","st_reflete_desconto_comissao","1364");

INSERT INTO tb_auditoria_itens VALUES("8708","2018-11-26 14:56:59","","dt_cadastro","1364");

INSERT INTO tb_auditoria_itens VALUES("8709","11","","co_assinante","1364");

INSERT INTO tb_auditoria_itens VALUES("8710","1","","co_motivo_desconto","1364");

INSERT INTO tb_auditoria_itens VALUES("8711","9","","co_motivo_desconto_assinante","1365");

INSERT INTO tb_auditoria_itens VALUES("8712","N","S","st_status_desconto","1365");

INSERT INTO tb_auditoria_itens VALUES("8713","N","","st_reflete_desconto_comissao","1365");

INSERT INTO tb_auditoria_itens VALUES("8714","2018-11-26 14:56:57","","dt_cadastro","1365");

INSERT INTO tb_auditoria_itens VALUES("8715","11","","co_assinante","1365");

INSERT INTO tb_auditoria_itens VALUES("8716","8","","co_motivo_desconto","1365");

INSERT INTO tb_auditoria_itens VALUES("8717","10","","co_motivo_desconto_assinante","1366");

INSERT INTO tb_auditoria_itens VALUES("8718","N","S","st_status_desconto","1366");

INSERT INTO tb_auditoria_itens VALUES("8719","N","","st_reflete_desconto_comissao","1366");

INSERT INTO tb_auditoria_itens VALUES("8720","2018-11-26 14:56:58","","dt_cadastro","1366");

INSERT INTO tb_auditoria_itens VALUES("8721","11","","co_assinante","1366");

INSERT INTO tb_auditoria_itens VALUES("8722","7","","co_motivo_desconto","1366");

INSERT INTO tb_auditoria_itens VALUES("8723","11","","co_motivo_desconto_assinante","1367");

INSERT INTO tb_auditoria_itens VALUES("8724","N","S","st_status_desconto","1367");

INSERT INTO tb_auditoria_itens VALUES("8725","N","","st_reflete_desconto_comissao","1367");

INSERT INTO tb_auditoria_itens VALUES("8726","2018-11-26 14:56:58","","dt_cadastro","1367");

INSERT INTO tb_auditoria_itens VALUES("8727","11","","co_assinante","1367");

INSERT INTO tb_auditoria_itens VALUES("8728","6","","co_motivo_desconto","1367");

INSERT INTO tb_auditoria_itens VALUES("8729","12","","co_motivo_desconto_assinante","1368");

INSERT INTO tb_auditoria_itens VALUES("8730","N","S","st_status_desconto","1368");

INSERT INTO tb_auditoria_itens VALUES("8731","N","","st_reflete_desconto_comissao","1368");

INSERT INTO tb_auditoria_itens VALUES("8732","2018-11-26 14:56:58","","dt_cadastro","1368");

INSERT INTO tb_auditoria_itens VALUES("8733","11","","co_assinante","1368");

INSERT INTO tb_auditoria_itens VALUES("8734","5","","co_motivo_desconto","1368");

INSERT INTO tb_auditoria_itens VALUES("8735","13","","co_motivo_desconto_assinante","1369");

INSERT INTO tb_auditoria_itens VALUES("8736","N","S","st_status_desconto","1369");

INSERT INTO tb_auditoria_itens VALUES("8737","N","","st_reflete_desconto_comissao","1369");

INSERT INTO tb_auditoria_itens VALUES("8738","2018-11-26 14:56:59","","dt_cadastro","1369");

INSERT INTO tb_auditoria_itens VALUES("8739","11","","co_assinante","1369");

INSERT INTO tb_auditoria_itens VALUES("8740","4","","co_motivo_desconto","1369");

INSERT INTO tb_auditoria_itens VALUES("8741","14","","co_motivo_desconto_assinante","1370");

INSERT INTO tb_auditoria_itens VALUES("8742","N","S","st_status_desconto","1370");

INSERT INTO tb_auditoria_itens VALUES("8743","N","","st_reflete_desconto_comissao","1370");

INSERT INTO tb_auditoria_itens VALUES("8744","2018-11-26 14:56:59","","dt_cadastro","1370");

INSERT INTO tb_auditoria_itens VALUES("8745","11","","co_assinante","1370");

INSERT INTO tb_auditoria_itens VALUES("8746","3","","co_motivo_desconto","1370");

INSERT INTO tb_auditoria_itens VALUES("8747","15","","co_motivo_desconto_assinante","1371");

INSERT INTO tb_auditoria_itens VALUES("8748","N","S","st_status_desconto","1371");

INSERT INTO tb_auditoria_itens VALUES("8749","N","","st_reflete_desconto_comissao","1371");

INSERT INTO tb_auditoria_itens VALUES("8750","2018-11-26 14:56:59","","dt_cadastro","1371");

INSERT INTO tb_auditoria_itens VALUES("8751","11","","co_assinante","1371");

INSERT INTO tb_auditoria_itens VALUES("8752","2","","co_motivo_desconto","1371");

INSERT INTO tb_auditoria_itens VALUES("8753","16","","co_motivo_desconto_assinante","1372");

INSERT INTO tb_auditoria_itens VALUES("8754","N","S","st_status_desconto","1372");

INSERT INTO tb_auditoria_itens VALUES("8755","N","","st_reflete_desconto_comissao","1372");

INSERT INTO tb_auditoria_itens VALUES("8756","2018-11-26 14:56:59","","dt_cadastro","1372");

INSERT INTO tb_auditoria_itens VALUES("8757","11","","co_assinante","1372");

INSERT INTO tb_auditoria_itens VALUES("8758","1","","co_motivo_desconto","1372");

INSERT INTO tb_auditoria_itens VALUES("8759","9","","co_motivo_desconto_assinante","1373");

INSERT INTO tb_auditoria_itens VALUES("8760","S","","st_status_desconto","1373");

INSERT INTO tb_auditoria_itens VALUES("8761","N","S","st_reflete_desconto_comissao","1373");

INSERT INTO tb_auditoria_itens VALUES("8762","2018-11-26 14:56:57","","dt_cadastro","1373");

INSERT INTO tb_auditoria_itens VALUES("8763","11","","co_assinante","1373");

INSERT INTO tb_auditoria_itens VALUES("8764","8","","co_motivo_desconto","1373");

INSERT INTO tb_auditoria_itens VALUES("8765","10","","co_motivo_desconto_assinante","1374");

INSERT INTO tb_auditoria_itens VALUES("8766","S","","st_status_desconto","1374");

INSERT INTO tb_auditoria_itens VALUES("8767","N","S","st_reflete_desconto_comissao","1374");

INSERT INTO tb_auditoria_itens VALUES("8768","2018-11-26 14:56:58","","dt_cadastro","1374");

INSERT INTO tb_auditoria_itens VALUES("8769","11","","co_assinante","1374");

INSERT INTO tb_auditoria_itens VALUES("8770","7","","co_motivo_desconto","1374");

INSERT INTO tb_auditoria_itens VALUES("8771","11","","co_motivo_desconto_assinante","1375");

INSERT INTO tb_auditoria_itens VALUES("8772","S","","st_status_desconto","1375");

INSERT INTO tb_auditoria_itens VALUES("8773","N","S","st_reflete_desconto_comissao","1375");

INSERT INTO tb_auditoria_itens VALUES("8774","2018-11-26 14:56:58","","dt_cadastro","1375");

INSERT INTO tb_auditoria_itens VALUES("8775","11","","co_assinante","1375");

INSERT INTO tb_auditoria_itens VALUES("8776","6","","co_motivo_desconto","1375");

INSERT INTO tb_auditoria_itens VALUES("8777","12","","co_motivo_desconto_assinante","1376");

INSERT INTO tb_auditoria_itens VALUES("8778","S","","st_status_desconto","1376");

INSERT INTO tb_auditoria_itens VALUES("8779","N","S","st_reflete_desconto_comissao","1376");

INSERT INTO tb_auditoria_itens VALUES("8780","2018-11-26 14:56:58","","dt_cadastro","1376");

INSERT INTO tb_auditoria_itens VALUES("8781","11","","co_assinante","1376");

INSERT INTO tb_auditoria_itens VALUES("8782","5","","co_motivo_desconto","1376");

INSERT INTO tb_auditoria_itens VALUES("8783","13","","co_motivo_desconto_assinante","1377");

INSERT INTO tb_auditoria_itens VALUES("8784","S","","st_status_desconto","1377");

INSERT INTO tb_auditoria_itens VALUES("8785","N","S","st_reflete_desconto_comissao","1377");

INSERT INTO tb_auditoria_itens VALUES("8786","2018-11-26 14:56:59","","dt_cadastro","1377");

INSERT INTO tb_auditoria_itens VALUES("8787","11","","co_assinante","1377");

INSERT INTO tb_auditoria_itens VALUES("8788","4","","co_motivo_desconto","1377");

INSERT INTO tb_auditoria_itens VALUES("8789","14","","co_motivo_desconto_assinante","1378");

INSERT INTO tb_auditoria_itens VALUES("8790","S","","st_status_desconto","1378");

INSERT INTO tb_auditoria_itens VALUES("8791","N","S","st_reflete_desconto_comissao","1378");

INSERT INTO tb_auditoria_itens VALUES("8792","2018-11-26 14:56:59","","dt_cadastro","1378");

INSERT INTO tb_auditoria_itens VALUES("8793","11","","co_assinante","1378");

INSERT INTO tb_auditoria_itens VALUES("8794","3","","co_motivo_desconto","1378");

INSERT INTO tb_auditoria_itens VALUES("8795","15","","co_motivo_desconto_assinante","1379");

INSERT INTO tb_auditoria_itens VALUES("8796","S","","st_status_desconto","1379");

INSERT INTO tb_auditoria_itens VALUES("8797","N","S","st_reflete_desconto_comissao","1379");

INSERT INTO tb_auditoria_itens VALUES("8798","2018-11-26 14:56:59","","dt_cadastro","1379");

INSERT INTO tb_auditoria_itens VALUES("8799","11","","co_assinante","1379");

INSERT INTO tb_auditoria_itens VALUES("8800","2","","co_motivo_desconto","1379");

INSERT INTO tb_auditoria_itens VALUES("8801","16","","co_motivo_desconto_assinante","1380");

INSERT INTO tb_auditoria_itens VALUES("8802","S","","st_status_desconto","1380");

INSERT INTO tb_auditoria_itens VALUES("8803","N","S","st_reflete_desconto_comissao","1380");

INSERT INTO tb_auditoria_itens VALUES("8804","2018-11-26 14:56:59","","dt_cadastro","1380");

INSERT INTO tb_auditoria_itens VALUES("8805","11","","co_assinante","1380");

INSERT INTO tb_auditoria_itens VALUES("8806","1","","co_motivo_desconto","1380");

INSERT INTO tb_auditoria_itens VALUES("8807","9","","co_motivo_desconto_assinante","1381");

INSERT INTO tb_auditoria_itens VALUES("8808","S","N","st_status_desconto","1381");

INSERT INTO tb_auditoria_itens VALUES("8809","S","N","st_reflete_desconto_comissao","1381");

INSERT INTO tb_auditoria_itens VALUES("8810","2018-11-26 14:56:57","","dt_cadastro","1381");

INSERT INTO tb_auditoria_itens VALUES("8811","11","","co_assinante","1381");

INSERT INTO tb_auditoria_itens VALUES("8812","8","","co_motivo_desconto","1381");

INSERT INTO tb_auditoria_itens VALUES("8813","10","","co_motivo_desconto_assinante","1382");

INSERT INTO tb_auditoria_itens VALUES("8814","S","N","st_status_desconto","1382");

INSERT INTO tb_auditoria_itens VALUES("8815","S","N","st_reflete_desconto_comissao","1382");

INSERT INTO tb_auditoria_itens VALUES("8816","2018-11-26 14:56:58","","dt_cadastro","1382");

INSERT INTO tb_auditoria_itens VALUES("8817","11","","co_assinante","1382");

INSERT INTO tb_auditoria_itens VALUES("8818","7","","co_motivo_desconto","1382");

INSERT INTO tb_auditoria_itens VALUES("8819","11","","co_motivo_desconto_assinante","1383");

INSERT INTO tb_auditoria_itens VALUES("8820","S","N","st_status_desconto","1383");

INSERT INTO tb_auditoria_itens VALUES("8821","S","N","st_reflete_desconto_comissao","1383");

INSERT INTO tb_auditoria_itens VALUES("8822","2018-11-26 14:56:58","","dt_cadastro","1383");

INSERT INTO tb_auditoria_itens VALUES("8823","11","","co_assinante","1383");

INSERT INTO tb_auditoria_itens VALUES("8824","6","","co_motivo_desconto","1383");

INSERT INTO tb_auditoria_itens VALUES("8825","12","","co_motivo_desconto_assinante","1384");

INSERT INTO tb_auditoria_itens VALUES("8826","S","N","st_status_desconto","1384");

INSERT INTO tb_auditoria_itens VALUES("8827","S","N","st_reflete_desconto_comissao","1384");

INSERT INTO tb_auditoria_itens VALUES("8828","2018-11-26 14:56:58","","dt_cadastro","1384");

INSERT INTO tb_auditoria_itens VALUES("8829","11","","co_assinante","1384");

INSERT INTO tb_auditoria_itens VALUES("8830","5","","co_motivo_desconto","1384");

INSERT INTO tb_auditoria_itens VALUES("8831","13","","co_motivo_desconto_assinante","1385");

INSERT INTO tb_auditoria_itens VALUES("8832","S","N","st_status_desconto","1385");

INSERT INTO tb_auditoria_itens VALUES("8833","S","N","st_reflete_desconto_comissao","1385");

INSERT INTO tb_auditoria_itens VALUES("8834","2018-11-26 14:56:59","","dt_cadastro","1385");

INSERT INTO tb_auditoria_itens VALUES("8835","11","","co_assinante","1385");

INSERT INTO tb_auditoria_itens VALUES("8836","4","","co_motivo_desconto","1385");

INSERT INTO tb_auditoria_itens VALUES("8837","14","","co_motivo_desconto_assinante","1386");

INSERT INTO tb_auditoria_itens VALUES("8838","S","N","st_status_desconto","1386");

INSERT INTO tb_auditoria_itens VALUES("8839","S","N","st_reflete_desconto_comissao","1386");

INSERT INTO tb_auditoria_itens VALUES("8840","2018-11-26 14:56:59","","dt_cadastro","1386");

INSERT INTO tb_auditoria_itens VALUES("8841","11","","co_assinante","1386");

INSERT INTO tb_auditoria_itens VALUES("8842","3","","co_motivo_desconto","1386");

INSERT INTO tb_auditoria_itens VALUES("8843","15","","co_motivo_desconto_assinante","1387");

INSERT INTO tb_auditoria_itens VALUES("8844","S","N","st_status_desconto","1387");

INSERT INTO tb_auditoria_itens VALUES("8845","S","N","st_reflete_desconto_comissao","1387");

INSERT INTO tb_auditoria_itens VALUES("8846","2018-11-26 14:56:59","","dt_cadastro","1387");

INSERT INTO tb_auditoria_itens VALUES("8847","11","","co_assinante","1387");

INSERT INTO tb_auditoria_itens VALUES("8848","2","","co_motivo_desconto","1387");

INSERT INTO tb_auditoria_itens VALUES("8849","16","","co_motivo_desconto_assinante","1388");

INSERT INTO tb_auditoria_itens VALUES("8850","S","N","st_status_desconto","1388");

INSERT INTO tb_auditoria_itens VALUES("8851","S","N","st_reflete_desconto_comissao","1388");

INSERT INTO tb_auditoria_itens VALUES("8852","2018-11-26 14:56:59","","dt_cadastro","1388");

INSERT INTO tb_auditoria_itens VALUES("8853","11","","co_assinante","1388");

INSERT INTO tb_auditoria_itens VALUES("8854","1","","co_motivo_desconto","1388");

INSERT INTO tb_auditoria_itens VALUES("8855","9","","co_motivo_desconto_assinante","1389");

INSERT INTO tb_auditoria_itens VALUES("8856","N","S","st_status_desconto","1389");

INSERT INTO tb_auditoria_itens VALUES("8857","N","","st_reflete_desconto_comissao","1389");

INSERT INTO tb_auditoria_itens VALUES("8858","2018-11-26 14:56:57","","dt_cadastro","1389");

INSERT INTO tb_auditoria_itens VALUES("8859","11","","co_assinante","1389");

INSERT INTO tb_auditoria_itens VALUES("8860","8","","co_motivo_desconto","1389");

INSERT INTO tb_auditoria_itens VALUES("8861","10","","co_motivo_desconto_assinante","1390");

INSERT INTO tb_auditoria_itens VALUES("8862","N","S","st_status_desconto","1390");

INSERT INTO tb_auditoria_itens VALUES("8863","N","","st_reflete_desconto_comissao","1390");

INSERT INTO tb_auditoria_itens VALUES("8864","2018-11-26 14:56:58","","dt_cadastro","1390");

INSERT INTO tb_auditoria_itens VALUES("8865","11","","co_assinante","1390");

INSERT INTO tb_auditoria_itens VALUES("8866","7","","co_motivo_desconto","1390");

INSERT INTO tb_auditoria_itens VALUES("8867","11","","co_motivo_desconto_assinante","1391");

INSERT INTO tb_auditoria_itens VALUES("8868","N","S","st_status_desconto","1391");

INSERT INTO tb_auditoria_itens VALUES("8869","N","","st_reflete_desconto_comissao","1391");

INSERT INTO tb_auditoria_itens VALUES("8870","2018-11-26 14:56:58","","dt_cadastro","1391");

INSERT INTO tb_auditoria_itens VALUES("8871","11","","co_assinante","1391");

INSERT INTO tb_auditoria_itens VALUES("8872","6","","co_motivo_desconto","1391");

INSERT INTO tb_auditoria_itens VALUES("8873","12","","co_motivo_desconto_assinante","1392");

INSERT INTO tb_auditoria_itens VALUES("8874","N","S","st_status_desconto","1392");

INSERT INTO tb_auditoria_itens VALUES("8875","N","","st_reflete_desconto_comissao","1392");

INSERT INTO tb_auditoria_itens VALUES("8876","2018-11-26 14:56:58","","dt_cadastro","1392");

INSERT INTO tb_auditoria_itens VALUES("8877","11","","co_assinante","1392");

INSERT INTO tb_auditoria_itens VALUES("8878","5","","co_motivo_desconto","1392");

INSERT INTO tb_auditoria_itens VALUES("8879","13","","co_motivo_desconto_assinante","1393");

INSERT INTO tb_auditoria_itens VALUES("8880","N","S","st_status_desconto","1393");

INSERT INTO tb_auditoria_itens VALUES("8881","N","","st_reflete_desconto_comissao","1393");

INSERT INTO tb_auditoria_itens VALUES("8882","2018-11-26 14:56:59","","dt_cadastro","1393");

INSERT INTO tb_auditoria_itens VALUES("8883","11","","co_assinante","1393");

INSERT INTO tb_auditoria_itens VALUES("8884","4","","co_motivo_desconto","1393");

INSERT INTO tb_auditoria_itens VALUES("8885","14","","co_motivo_desconto_assinante","1394");

INSERT INTO tb_auditoria_itens VALUES("8886","N","S","st_status_desconto","1394");

INSERT INTO tb_auditoria_itens VALUES("8887","N","","st_reflete_desconto_comissao","1394");

INSERT INTO tb_auditoria_itens VALUES("8888","2018-11-26 14:56:59","","dt_cadastro","1394");

INSERT INTO tb_auditoria_itens VALUES("8889","11","","co_assinante","1394");

INSERT INTO tb_auditoria_itens VALUES("8890","3","","co_motivo_desconto","1394");

INSERT INTO tb_auditoria_itens VALUES("8891","15","","co_motivo_desconto_assinante","1395");

INSERT INTO tb_auditoria_itens VALUES("8892","N","S","st_status_desconto","1395");

INSERT INTO tb_auditoria_itens VALUES("8893","N","","st_reflete_desconto_comissao","1395");

INSERT INTO tb_auditoria_itens VALUES("8894","2018-11-26 14:56:59","","dt_cadastro","1395");

INSERT INTO tb_auditoria_itens VALUES("8895","11","","co_assinante","1395");

INSERT INTO tb_auditoria_itens VALUES("8896","2","","co_motivo_desconto","1395");

INSERT INTO tb_auditoria_itens VALUES("8897","16","","co_motivo_desconto_assinante","1396");

INSERT INTO tb_auditoria_itens VALUES("8898","N","S","st_status_desconto","1396");

INSERT INTO tb_auditoria_itens VALUES("8899","N","","st_reflete_desconto_comissao","1396");

INSERT INTO tb_auditoria_itens VALUES("8900","2018-11-26 14:56:59","","dt_cadastro","1396");

INSERT INTO tb_auditoria_itens VALUES("8901","11","","co_assinante","1396");

INSERT INTO tb_auditoria_itens VALUES("8902","1","","co_motivo_desconto","1396");

INSERT INTO tb_auditoria_itens VALUES("8903","9","","co_motivo_desconto_assinante","1397");

INSERT INTO tb_auditoria_itens VALUES("8904","S","N","st_status_desconto","1397");

INSERT INTO tb_auditoria_itens VALUES("8905","N","N","st_reflete_desconto_comissao","1397");

INSERT INTO tb_auditoria_itens VALUES("8906","2018-11-26 14:56:57","","dt_cadastro","1397");

INSERT INTO tb_auditoria_itens VALUES("8907","11","","co_assinante","1397");

INSERT INTO tb_auditoria_itens VALUES("8908","8","","co_motivo_desconto","1397");

INSERT INTO tb_auditoria_itens VALUES("8909","10","","co_motivo_desconto_assinante","1398");

INSERT INTO tb_auditoria_itens VALUES("8910","S","N","st_status_desconto","1398");

INSERT INTO tb_auditoria_itens VALUES("8911","N","N","st_reflete_desconto_comissao","1398");

INSERT INTO tb_auditoria_itens VALUES("8912","2018-11-26 14:56:58","","dt_cadastro","1398");

INSERT INTO tb_auditoria_itens VALUES("8913","11","","co_assinante","1398");

INSERT INTO tb_auditoria_itens VALUES("8914","7","","co_motivo_desconto","1398");

INSERT INTO tb_auditoria_itens VALUES("8915","11","","co_motivo_desconto_assinante","1399");

INSERT INTO tb_auditoria_itens VALUES("8916","S","N","st_status_desconto","1399");

INSERT INTO tb_auditoria_itens VALUES("8917","N","N","st_reflete_desconto_comissao","1399");

INSERT INTO tb_auditoria_itens VALUES("8918","2018-11-26 14:56:58","","dt_cadastro","1399");

INSERT INTO tb_auditoria_itens VALUES("8919","11","","co_assinante","1399");

INSERT INTO tb_auditoria_itens VALUES("8920","6","","co_motivo_desconto","1399");

INSERT INTO tb_auditoria_itens VALUES("8921","12","","co_motivo_desconto_assinante","1400");

INSERT INTO tb_auditoria_itens VALUES("8922","S","N","st_status_desconto","1400");

INSERT INTO tb_auditoria_itens VALUES("8923","N","N","st_reflete_desconto_comissao","1400");

INSERT INTO tb_auditoria_itens VALUES("8924","2018-11-26 14:56:58","","dt_cadastro","1400");

INSERT INTO tb_auditoria_itens VALUES("8925","11","","co_assinante","1400");

INSERT INTO tb_auditoria_itens VALUES("8926","5","","co_motivo_desconto","1400");

INSERT INTO tb_auditoria_itens VALUES("8927","13","","co_motivo_desconto_assinante","1401");

INSERT INTO tb_auditoria_itens VALUES("8928","S","N","st_status_desconto","1401");

INSERT INTO tb_auditoria_itens VALUES("8929","N","N","st_reflete_desconto_comissao","1401");

INSERT INTO tb_auditoria_itens VALUES("8930","2018-11-26 14:56:59","","dt_cadastro","1401");

INSERT INTO tb_auditoria_itens VALUES("8931","11","","co_assinante","1401");

INSERT INTO tb_auditoria_itens VALUES("8932","4","","co_motivo_desconto","1401");

INSERT INTO tb_auditoria_itens VALUES("8933","14","","co_motivo_desconto_assinante","1402");

INSERT INTO tb_auditoria_itens VALUES("8934","S","N","st_status_desconto","1402");

INSERT INTO tb_auditoria_itens VALUES("8935","N","N","st_reflete_desconto_comissao","1402");

INSERT INTO tb_auditoria_itens VALUES("8936","2018-11-26 14:56:59","","dt_cadastro","1402");

INSERT INTO tb_auditoria_itens VALUES("8937","11","","co_assinante","1402");

INSERT INTO tb_auditoria_itens VALUES("8938","3","","co_motivo_desconto","1402");

INSERT INTO tb_auditoria_itens VALUES("8939","15","","co_motivo_desconto_assinante","1403");

INSERT INTO tb_auditoria_itens VALUES("8940","S","N","st_status_desconto","1403");

INSERT INTO tb_auditoria_itens VALUES("8941","N","N","st_reflete_desconto_comissao","1403");

INSERT INTO tb_auditoria_itens VALUES("8942","2018-11-26 14:56:59","","dt_cadastro","1403");

INSERT INTO tb_auditoria_itens VALUES("8943","11","","co_assinante","1403");

INSERT INTO tb_auditoria_itens VALUES("8944","2","","co_motivo_desconto","1403");

INSERT INTO tb_auditoria_itens VALUES("8945","16","","co_motivo_desconto_assinante","1404");

INSERT INTO tb_auditoria_itens VALUES("8946","S","N","st_status_desconto","1404");

INSERT INTO tb_auditoria_itens VALUES("8947","N","N","st_reflete_desconto_comissao","1404");

INSERT INTO tb_auditoria_itens VALUES("8948","2018-11-26 14:56:59","","dt_cadastro","1404");

INSERT INTO tb_auditoria_itens VALUES("8949","11","","co_assinante","1404");

INSERT INTO tb_auditoria_itens VALUES("8950","1","","co_motivo_desconto","1404");

INSERT INTO tb_auditoria_itens VALUES("8951","9","","co_motivo_desconto_assinante","1405");

INSERT INTO tb_auditoria_itens VALUES("8952","N","N","st_status_desconto","1405");

INSERT INTO tb_auditoria_itens VALUES("8953","N","N","st_reflete_desconto_comissao","1405");

INSERT INTO tb_auditoria_itens VALUES("8954","2018-11-26 14:56:57","","dt_cadastro","1405");

INSERT INTO tb_auditoria_itens VALUES("8955","11","","co_assinante","1405");

INSERT INTO tb_auditoria_itens VALUES("8956","8","","co_motivo_desconto","1405");

INSERT INTO tb_auditoria_itens VALUES("8957","10","","co_motivo_desconto_assinante","1406");

INSERT INTO tb_auditoria_itens VALUES("8958","N","N","st_status_desconto","1406");

INSERT INTO tb_auditoria_itens VALUES("8959","N","N","st_reflete_desconto_comissao","1406");

INSERT INTO tb_auditoria_itens VALUES("8960","2018-11-26 14:56:58","","dt_cadastro","1406");

INSERT INTO tb_auditoria_itens VALUES("8961","11","","co_assinante","1406");

INSERT INTO tb_auditoria_itens VALUES("8962","7","","co_motivo_desconto","1406");

INSERT INTO tb_auditoria_itens VALUES("8963","11","","co_motivo_desconto_assinante","1407");

INSERT INTO tb_auditoria_itens VALUES("8964","N","N","st_status_desconto","1407");

INSERT INTO tb_auditoria_itens VALUES("8965","N","N","st_reflete_desconto_comissao","1407");

INSERT INTO tb_auditoria_itens VALUES("8966","2018-11-26 14:56:58","","dt_cadastro","1407");

INSERT INTO tb_auditoria_itens VALUES("8967","11","","co_assinante","1407");

INSERT INTO tb_auditoria_itens VALUES("8968","6","","co_motivo_desconto","1407");

INSERT INTO tb_auditoria_itens VALUES("8969","12","","co_motivo_desconto_assinante","1408");

INSERT INTO tb_auditoria_itens VALUES("8970","N","N","st_status_desconto","1408");

INSERT INTO tb_auditoria_itens VALUES("8971","N","N","st_reflete_desconto_comissao","1408");

INSERT INTO tb_auditoria_itens VALUES("8972","2018-11-26 14:56:58","","dt_cadastro","1408");

INSERT INTO tb_auditoria_itens VALUES("8973","11","","co_assinante","1408");

INSERT INTO tb_auditoria_itens VALUES("8974","5","","co_motivo_desconto","1408");

INSERT INTO tb_auditoria_itens VALUES("8975","13","","co_motivo_desconto_assinante","1409");

INSERT INTO tb_auditoria_itens VALUES("8976","N","N","st_status_desconto","1409");

INSERT INTO tb_auditoria_itens VALUES("8977","N","N","st_reflete_desconto_comissao","1409");

INSERT INTO tb_auditoria_itens VALUES("8978","2018-11-26 14:56:59","","dt_cadastro","1409");

INSERT INTO tb_auditoria_itens VALUES("8979","11","","co_assinante","1409");

INSERT INTO tb_auditoria_itens VALUES("8980","4","","co_motivo_desconto","1409");

INSERT INTO tb_auditoria_itens VALUES("8981","14","","co_motivo_desconto_assinante","1410");

INSERT INTO tb_auditoria_itens VALUES("8982","N","N","st_status_desconto","1410");

INSERT INTO tb_auditoria_itens VALUES("8983","N","N","st_reflete_desconto_comissao","1410");

INSERT INTO tb_auditoria_itens VALUES("8984","2018-11-26 14:56:59","","dt_cadastro","1410");

INSERT INTO tb_auditoria_itens VALUES("8985","11","","co_assinante","1410");

INSERT INTO tb_auditoria_itens VALUES("8986","3","","co_motivo_desconto","1410");

INSERT INTO tb_auditoria_itens VALUES("8987","15","","co_motivo_desconto_assinante","1411");

INSERT INTO tb_auditoria_itens VALUES("8988","N","N","st_status_desconto","1411");

INSERT INTO tb_auditoria_itens VALUES("8989","N","N","st_reflete_desconto_comissao","1411");

INSERT INTO tb_auditoria_itens VALUES("8990","2018-11-26 14:56:59","","dt_cadastro","1411");

INSERT INTO tb_auditoria_itens VALUES("8991","11","","co_assinante","1411");

INSERT INTO tb_auditoria_itens VALUES("8992","2","","co_motivo_desconto","1411");

INSERT INTO tb_auditoria_itens VALUES("8993","16","","co_motivo_desconto_assinante","1412");

INSERT INTO tb_auditoria_itens VALUES("8994","N","N","st_status_desconto","1412");

INSERT INTO tb_auditoria_itens VALUES("8995","N","N","st_reflete_desconto_comissao","1412");

INSERT INTO tb_auditoria_itens VALUES("8996","2018-11-26 14:56:59","","dt_cadastro","1412");

INSERT INTO tb_auditoria_itens VALUES("8997","11","","co_assinante","1412");

INSERT INTO tb_auditoria_itens VALUES("8998","1","","co_motivo_desconto","1412");

INSERT INTO tb_auditoria_itens VALUES("8999","9","","co_motivo_desconto_assinante","1413");

INSERT INTO tb_auditoria_itens VALUES("9000","N","N","st_status_desconto","1413");

INSERT INTO tb_auditoria_itens VALUES("9001","N","N","st_reflete_desconto_comissao","1413");

INSERT INTO tb_auditoria_itens VALUES("9002","2018-11-26 14:56:57","","dt_cadastro","1413");

INSERT INTO tb_auditoria_itens VALUES("9003","11","","co_assinante","1413");

INSERT INTO tb_auditoria_itens VALUES("9004","8","","co_motivo_desconto","1413");

INSERT INTO tb_auditoria_itens VALUES("9005","10","","co_motivo_desconto_assinante","1414");

INSERT INTO tb_auditoria_itens VALUES("9006","N","N","st_status_desconto","1414");

INSERT INTO tb_auditoria_itens VALUES("9007","N","N","st_reflete_desconto_comissao","1414");

INSERT INTO tb_auditoria_itens VALUES("9008","2018-11-26 14:56:58","","dt_cadastro","1414");

INSERT INTO tb_auditoria_itens VALUES("9009","11","","co_assinante","1414");

INSERT INTO tb_auditoria_itens VALUES("9010","7","","co_motivo_desconto","1414");

INSERT INTO tb_auditoria_itens VALUES("9011","11","","co_motivo_desconto_assinante","1415");

INSERT INTO tb_auditoria_itens VALUES("9012","N","N","st_status_desconto","1415");

INSERT INTO tb_auditoria_itens VALUES("9013","N","N","st_reflete_desconto_comissao","1415");

INSERT INTO tb_auditoria_itens VALUES("9014","2018-11-26 14:56:58","","dt_cadastro","1415");

INSERT INTO tb_auditoria_itens VALUES("9015","11","","co_assinante","1415");

INSERT INTO tb_auditoria_itens VALUES("9016","6","","co_motivo_desconto","1415");

INSERT INTO tb_auditoria_itens VALUES("9017","12","","co_motivo_desconto_assinante","1416");

INSERT INTO tb_auditoria_itens VALUES("9018","N","N","st_status_desconto","1416");

INSERT INTO tb_auditoria_itens VALUES("9019","N","N","st_reflete_desconto_comissao","1416");

INSERT INTO tb_auditoria_itens VALUES("9020","2018-11-26 14:56:58","","dt_cadastro","1416");

INSERT INTO tb_auditoria_itens VALUES("9021","11","","co_assinante","1416");

INSERT INTO tb_auditoria_itens VALUES("9022","5","","co_motivo_desconto","1416");

INSERT INTO tb_auditoria_itens VALUES("9023","13","","co_motivo_desconto_assinante","1417");

INSERT INTO tb_auditoria_itens VALUES("9024","N","N","st_status_desconto","1417");

INSERT INTO tb_auditoria_itens VALUES("9025","N","N","st_reflete_desconto_comissao","1417");

INSERT INTO tb_auditoria_itens VALUES("9026","2018-11-26 14:56:59","","dt_cadastro","1417");

INSERT INTO tb_auditoria_itens VALUES("9027","11","","co_assinante","1417");

INSERT INTO tb_auditoria_itens VALUES("9028","4","","co_motivo_desconto","1417");

INSERT INTO tb_auditoria_itens VALUES("9029","14","","co_motivo_desconto_assinante","1418");

INSERT INTO tb_auditoria_itens VALUES("9030","N","N","st_status_desconto","1418");

INSERT INTO tb_auditoria_itens VALUES("9031","N","N","st_reflete_desconto_comissao","1418");

INSERT INTO tb_auditoria_itens VALUES("9032","2018-11-26 14:56:59","","dt_cadastro","1418");

INSERT INTO tb_auditoria_itens VALUES("9033","11","","co_assinante","1418");

INSERT INTO tb_auditoria_itens VALUES("9034","3","","co_motivo_desconto","1418");

INSERT INTO tb_auditoria_itens VALUES("9035","15","","co_motivo_desconto_assinante","1419");

INSERT INTO tb_auditoria_itens VALUES("9036","N","N","st_status_desconto","1419");

INSERT INTO tb_auditoria_itens VALUES("9037","N","N","st_reflete_desconto_comissao","1419");

INSERT INTO tb_auditoria_itens VALUES("9038","2018-11-26 14:56:59","","dt_cadastro","1419");

INSERT INTO tb_auditoria_itens VALUES("9039","11","","co_assinante","1419");

INSERT INTO tb_auditoria_itens VALUES("9040","2","","co_motivo_desconto","1419");

INSERT INTO tb_auditoria_itens VALUES("9041","16","","co_motivo_desconto_assinante","1420");

INSERT INTO tb_auditoria_itens VALUES("9042","N","N","st_status_desconto","1420");

INSERT INTO tb_auditoria_itens VALUES("9043","N","N","st_reflete_desconto_comissao","1420");

INSERT INTO tb_auditoria_itens VALUES("9044","2018-11-26 14:56:59","","dt_cadastro","1420");

INSERT INTO tb_auditoria_itens VALUES("9045","11","","co_assinante","1420");

INSERT INTO tb_auditoria_itens VALUES("9046","1","","co_motivo_desconto","1420");

INSERT INTO tb_auditoria_itens VALUES("9047","9","","co_motivo_desconto_assinante","1421");

INSERT INTO tb_auditoria_itens VALUES("9048","N","S","st_status_desconto","1421");

INSERT INTO tb_auditoria_itens VALUES("9049","N","","st_reflete_desconto_comissao","1421");

INSERT INTO tb_auditoria_itens VALUES("9050","2018-11-26 14:56:57","","dt_cadastro","1421");

INSERT INTO tb_auditoria_itens VALUES("9051","11","","co_assinante","1421");

INSERT INTO tb_auditoria_itens VALUES("9052","8","","co_motivo_desconto","1421");

INSERT INTO tb_auditoria_itens VALUES("9053","10","","co_motivo_desconto_assinante","1422");

INSERT INTO tb_auditoria_itens VALUES("9054","N","S","st_status_desconto","1422");

INSERT INTO tb_auditoria_itens VALUES("9055","N","","st_reflete_desconto_comissao","1422");

INSERT INTO tb_auditoria_itens VALUES("9056","2018-11-26 14:56:58","","dt_cadastro","1422");

INSERT INTO tb_auditoria_itens VALUES("9057","11","","co_assinante","1422");

INSERT INTO tb_auditoria_itens VALUES("9058","7","","co_motivo_desconto","1422");

INSERT INTO tb_auditoria_itens VALUES("9059","11","","co_motivo_desconto_assinante","1423");

INSERT INTO tb_auditoria_itens VALUES("9060","N","S","st_status_desconto","1423");

INSERT INTO tb_auditoria_itens VALUES("9061","N","","st_reflete_desconto_comissao","1423");

INSERT INTO tb_auditoria_itens VALUES("9062","2018-11-26 14:56:58","","dt_cadastro","1423");

INSERT INTO tb_auditoria_itens VALUES("9063","11","","co_assinante","1423");

INSERT INTO tb_auditoria_itens VALUES("9064","6","","co_motivo_desconto","1423");

INSERT INTO tb_auditoria_itens VALUES("9065","12","","co_motivo_desconto_assinante","1424");

INSERT INTO tb_auditoria_itens VALUES("9066","N","S","st_status_desconto","1424");

INSERT INTO tb_auditoria_itens VALUES("9067","N","","st_reflete_desconto_comissao","1424");

INSERT INTO tb_auditoria_itens VALUES("9068","2018-11-26 14:56:58","","dt_cadastro","1424");

INSERT INTO tb_auditoria_itens VALUES("9069","11","","co_assinante","1424");

INSERT INTO tb_auditoria_itens VALUES("9070","5","","co_motivo_desconto","1424");

INSERT INTO tb_auditoria_itens VALUES("9071","13","","co_motivo_desconto_assinante","1425");

INSERT INTO tb_auditoria_itens VALUES("9072","N","S","st_status_desconto","1425");

INSERT INTO tb_auditoria_itens VALUES("9073","N","","st_reflete_desconto_comissao","1425");

INSERT INTO tb_auditoria_itens VALUES("9074","2018-11-26 14:56:59","","dt_cadastro","1425");

INSERT INTO tb_auditoria_itens VALUES("9075","11","","co_assinante","1425");

INSERT INTO tb_auditoria_itens VALUES("9076","4","","co_motivo_desconto","1425");

INSERT INTO tb_auditoria_itens VALUES("9077","14","","co_motivo_desconto_assinante","1426");

INSERT INTO tb_auditoria_itens VALUES("9078","N","S","st_status_desconto","1426");

INSERT INTO tb_auditoria_itens VALUES("9079","N","","st_reflete_desconto_comissao","1426");

INSERT INTO tb_auditoria_itens VALUES("9080","2018-11-26 14:56:59","","dt_cadastro","1426");

INSERT INTO tb_auditoria_itens VALUES("9081","11","","co_assinante","1426");

INSERT INTO tb_auditoria_itens VALUES("9082","3","","co_motivo_desconto","1426");

INSERT INTO tb_auditoria_itens VALUES("9083","15","","co_motivo_desconto_assinante","1427");

INSERT INTO tb_auditoria_itens VALUES("9084","N","S","st_status_desconto","1427");

INSERT INTO tb_auditoria_itens VALUES("9085","N","","st_reflete_desconto_comissao","1427");

INSERT INTO tb_auditoria_itens VALUES("9086","2018-11-26 14:56:59","","dt_cadastro","1427");

INSERT INTO tb_auditoria_itens VALUES("9087","11","","co_assinante","1427");

INSERT INTO tb_auditoria_itens VALUES("9088","2","","co_motivo_desconto","1427");

INSERT INTO tb_auditoria_itens VALUES("9089","9","","co_motivo_desconto_assinante","1428");

INSERT INTO tb_auditoria_itens VALUES("9090","S","","st_status_desconto","1428");

INSERT INTO tb_auditoria_itens VALUES("9091","N","S","st_reflete_desconto_comissao","1428");

INSERT INTO tb_auditoria_itens VALUES("9092","2018-11-26 14:56:57","","dt_cadastro","1428");

INSERT INTO tb_auditoria_itens VALUES("9093","11","","co_assinante","1428");

INSERT INTO tb_auditoria_itens VALUES("9094","8","","co_motivo_desconto","1428");

INSERT INTO tb_auditoria_itens VALUES("9095","13","","co_motivo_desconto_assinante","1429");

INSERT INTO tb_auditoria_itens VALUES("9096","S","","st_status_desconto","1429");

INSERT INTO tb_auditoria_itens VALUES("9097","N","S","st_reflete_desconto_comissao","1429");

INSERT INTO tb_auditoria_itens VALUES("9098","2018-11-26 14:56:59","","dt_cadastro","1429");

INSERT INTO tb_auditoria_itens VALUES("9099","11","","co_assinante","1429");

INSERT INTO tb_auditoria_itens VALUES("9100","4","","co_motivo_desconto","1429");

INSERT INTO tb_auditoria_itens VALUES("9101","14","","co_motivo_desconto_assinante","1430");

INSERT INTO tb_auditoria_itens VALUES("9102","S","","st_status_desconto","1430");

INSERT INTO tb_auditoria_itens VALUES("9103","N","S","st_reflete_desconto_comissao","1430");

INSERT INTO tb_auditoria_itens VALUES("9104","2018-11-26 14:56:59","","dt_cadastro","1430");

INSERT INTO tb_auditoria_itens VALUES("9105","11","","co_assinante","1430");

INSERT INTO tb_auditoria_itens VALUES("9106","3","","co_motivo_desconto","1430");

INSERT INTO tb_auditoria_itens VALUES("9107","15","","co_motivo_desconto_assinante","1431");

INSERT INTO tb_auditoria_itens VALUES("9108","S","","st_status_desconto","1431");

INSERT INTO tb_auditoria_itens VALUES("9109","N","S","st_reflete_desconto_comissao","1431");

INSERT INTO tb_auditoria_itens VALUES("9110","2018-11-26 14:56:59","","dt_cadastro","1431");

INSERT INTO tb_auditoria_itens VALUES("9111","11","","co_assinante","1431");

INSERT INTO tb_auditoria_itens VALUES("9112","2","","co_motivo_desconto","1431");

INSERT INTO tb_auditoria_itens VALUES("9113","","Cadastro Profissional","no_funcionalidade","1432");

INSERT INTO tb_auditoria_itens VALUES("9114","","23","co_funcionalidade","1433");

INSERT INTO tb_auditoria_itens VALUES("9115","","2","co_perfil","1433");

INSERT INTO tb_auditoria_itens VALUES("9116","","Listar Profissional","no_funcionalidade","1434");

INSERT INTO tb_auditoria_itens VALUES("9117","","24","co_funcionalidade","1435");

INSERT INTO tb_auditoria_itens VALUES("9118","","2","co_perfil","1435");

INSERT INTO tb_auditoria_itens VALUES("9119","15","","co_pessoa","1436");

INSERT INTO tb_auditoria_itens VALUES("9120","","","nu_cpf","1436");

INSERT INTO tb_auditoria_itens VALUES("9121","LEO BESSA","LEO BESSA","no_pessoa","1436");

INSERT INTO tb_auditoria_itens VALUES("9122","","","nu_rg","1436");

INSERT INTO tb_auditoria_itens VALUES("9123","2018-08-14 16:45:26","","dt_cadastro","1436");

INSERT INTO tb_auditoria_itens VALUES("9124","0000-00-00","","dt_nascimento","1436");

INSERT INTO tb_auditoria_itens VALUES("9125","","","st_sexo","1436");

INSERT INTO tb_auditoria_itens VALUES("9126","0","","co_endereco","1436");

INSERT INTO tb_auditoria_itens VALUES("9127","15","","co_contato","1436");

INSERT INTO tb_auditoria_itens VALUES("9128","0","","co_imagem","1436");

INSERT INTO tb_auditoria_itens VALUES("9129","12","","co_empresa","1437");

INSERT INTO tb_auditoria_itens VALUES("9130","TESTE 01 RAZãO","TESTE 01 RAZãO","no_empresa","1437");

INSERT INTO tb_auditoria_itens VALUES("9131","SALãO NOVO VISUAL","","no_fantasia","1437");

INSERT INTO tb_auditoria_itens VALUES("9132","2018-08-14 16:45:26","","dt_cadastro","1437");

INSERT INTO tb_auditoria_itens VALUES("9133","07844665000120","07844665000120","nu_cnpj","1437");

INSERT INTO tb_auditoria_itens VALUES("9134","43543664","43543664","nu_insc_estadual","1437");

INSERT INTO tb_auditoria_itens VALUES("9135","vev v","vev v","ds_observacao","1437");

INSERT INTO tb_auditoria_itens VALUES("9136","","","st_status","1437");

INSERT INTO tb_auditoria_itens VALUES("9137","0","","co_pessoa","1437");

INSERT INTO tb_auditoria_itens VALUES("9138","29","","co_endereco","1437");

INSERT INTO tb_auditoria_itens VALUES("9139","15","","co_contato","1437");

INSERT INTO tb_auditoria_itens VALUES("9140","0","","co_imagem","1437");

INSERT INTO tb_auditoria_itens VALUES("9141","29","","co_endereco","1438");

INSERT INTO tb_auditoria_itens VALUES("9142","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","1438");

INSERT INTO tb_auditoria_itens VALUES("9143","Casa 28","Casa 28","ds_complemento","1438");

INSERT INTO tb_auditoria_itens VALUES("9144","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","1438");

INSERT INTO tb_auditoria_itens VALUES("9145","72319111","72319111","nu_cep","1438");

INSERT INTO tb_auditoria_itens VALUES("9146","Brasília","Brasília","no_cidade","1438");

INSERT INTO tb_auditoria_itens VALUES("9147","DF","DF","sg_uf","1438");

INSERT INTO tb_auditoria_itens VALUES("9148","12","","co_empresa","1439");

INSERT INTO tb_auditoria_itens VALUES("9149","TESTE 01 RAZãO","","no_empresa","1439");

INSERT INTO tb_auditoria_itens VALUES("9150","","","no_fantasia","1439");

INSERT INTO tb_auditoria_itens VALUES("9151","2018-08-14 16:45:26","","dt_cadastro","1439");

INSERT INTO tb_auditoria_itens VALUES("9152","07844665000120","","nu_cnpj","1439");

INSERT INTO tb_auditoria_itens VALUES("9153","43543664","","nu_insc_estadual","1439");

INSERT INTO tb_auditoria_itens VALUES("9154","vev v","","ds_observacao","1439");

INSERT INTO tb_auditoria_itens VALUES("9155","","","st_status","1439");

INSERT INTO tb_auditoria_itens VALUES("9156","0","","co_pessoa","1439");

INSERT INTO tb_auditoria_itens VALUES("9157","29","29","co_endereco","1439");

INSERT INTO tb_auditoria_itens VALUES("9158","15","","co_contato","1439");

INSERT INTO tb_auditoria_itens VALUES("9159","0","","co_imagem","1439");

INSERT INTO tb_auditoria_itens VALUES("9160","15","","co_contato","1440");

INSERT INTO tb_auditoria_itens VALUES("9161","23523462347","23523462347","nu_tel1","1440");

INSERT INTO tb_auditoria_itens VALUES("9162","54364364364","54364364364","nu_tel2","1440");

INSERT INTO tb_auditoria_itens VALUES("9163","","","nu_tel3","1440");

INSERT INTO tb_auditoria_itens VALUES("9164","","","nu_tel_0800","1440");

INSERT INTO tb_auditoria_itens VALUES("9165","leo@mail.com","leo@mail.com","ds_email","1440");

INSERT INTO tb_auditoria_itens VALUES("9166","www.site.com.br","www.site.com.br","ds_site","1440");

INSERT INTO tb_auditoria_itens VALUES("9167","","","ds_facebook","1440");

INSERT INTO tb_auditoria_itens VALUES("9168","","","ds_twitter","1440");

INSERT INTO tb_auditoria_itens VALUES("9169","","","ds_instagram","1440");

INSERT INTO tb_auditoria_itens VALUES("9170","40","","co_facilidade_beneficio","1441");

INSERT INTO tb_auditoria_itens VALUES("9171","1","","tp_estabelecimento","1441");

INSERT INTO tb_auditoria_itens VALUES("9172","1","","tp_atendimento","1441");

INSERT INTO tb_auditoria_itens VALUES("9173","1","","tp_genero_especializado","1441");

INSERT INTO tb_auditoria_itens VALUES("9174","1","","tp_estacionamento","1441");

INSERT INTO tb_auditoria_itens VALUES("9175","N","","st_lanchonete","1441");

INSERT INTO tb_auditoria_itens VALUES("9176","S","","st_televisao","1441");

INSERT INTO tb_auditoria_itens VALUES("9177","S","","st_wifi","1441");

INSERT INTO tb_auditoria_itens VALUES("9178","N","","st_acesso_deficiente","1441");

INSERT INTO tb_auditoria_itens VALUES("9179","S","","st_jogos","1441");

INSERT INTO tb_auditoria_itens VALUES("9180","11","","co_assinante","1441");

INSERT INTO tb_auditoria_itens VALUES("9181","","11","co_assinante","1442");

INSERT INTO tb_auditoria_itens VALUES("9182","","1","tp_estabelecimento","1442");

INSERT INTO tb_auditoria_itens VALUES("9183","","1","tp_atendimento","1442");

INSERT INTO tb_auditoria_itens VALUES("9184","","1","tp_genero_especializado","1442");

INSERT INTO tb_auditoria_itens VALUES("9185","","1","tp_estacionamento","1442");

INSERT INTO tb_auditoria_itens VALUES("9186","","N","st_lanchonete","1442");

INSERT INTO tb_auditoria_itens VALUES("9187","","S","st_televisao","1442");

INSERT INTO tb_auditoria_itens VALUES("9188","","S","st_wifi","1442");

INSERT INTO tb_auditoria_itens VALUES("9189","","N","st_acesso_deficiente","1442");

INSERT INTO tb_auditoria_itens VALUES("9190","","S","st_jogos","1442");

INSERT INTO tb_auditoria_itens VALUES("9191","182","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9192","1","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9193","09:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9194","18:00","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9195","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9196","183","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9197","2","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9198","08:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9199","18:00","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9200","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9201","184","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9202","3","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9203","08:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9204","18:30","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9205","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9206","185","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9207","4","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9208","08:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9209","18:00","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9210","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9211","186","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9212","5","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9213","08:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9214","18:00","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9215","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9216","187","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9217","6","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9218","07:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9219","19:00","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9220","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9221","188","","co_funcionamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9222","7","","nu_dia_semana","1443");

INSERT INTO tb_auditoria_itens VALUES("9223","07:00","","nu_hora_abertura","1443");

INSERT INTO tb_auditoria_itens VALUES("9224","14:20","","nu_hora_fechamento","1443");

INSERT INTO tb_auditoria_itens VALUES("9225","11","","co_assinante","1443");

INSERT INTO tb_auditoria_itens VALUES("9226","","11","co_assinante","1444");

INSERT INTO tb_auditoria_itens VALUES("9227","","1","nu_dia_semana","1444");

INSERT INTO tb_auditoria_itens VALUES("9228","","09:00","nu_hora_abertura","1444");

INSERT INTO tb_auditoria_itens VALUES("9229","","18:00","nu_hora_fechamento","1444");

INSERT INTO tb_auditoria_itens VALUES("9230","","11","co_assinante","1445");

INSERT INTO tb_auditoria_itens VALUES("9231","","2","nu_dia_semana","1445");

INSERT INTO tb_auditoria_itens VALUES("9232","","08:00","nu_hora_abertura","1445");

INSERT INTO tb_auditoria_itens VALUES("9233","","18:00","nu_hora_fechamento","1445");

INSERT INTO tb_auditoria_itens VALUES("9234","","11","co_assinante","1446");

INSERT INTO tb_auditoria_itens VALUES("9235","","3","nu_dia_semana","1446");

INSERT INTO tb_auditoria_itens VALUES("9236","","08:00","nu_hora_abertura","1446");

INSERT INTO tb_auditoria_itens VALUES("9237","","18:30","nu_hora_fechamento","1446");

INSERT INTO tb_auditoria_itens VALUES("9238","","11","co_assinante","1447");

INSERT INTO tb_auditoria_itens VALUES("9239","","4","nu_dia_semana","1447");

INSERT INTO tb_auditoria_itens VALUES("9240","","08:00","nu_hora_abertura","1447");

INSERT INTO tb_auditoria_itens VALUES("9241","","18:00","nu_hora_fechamento","1447");

INSERT INTO tb_auditoria_itens VALUES("9242","","11","co_assinante","1448");

INSERT INTO tb_auditoria_itens VALUES("9243","","5","nu_dia_semana","1448");

INSERT INTO tb_auditoria_itens VALUES("9244","","08:00","nu_hora_abertura","1448");

INSERT INTO tb_auditoria_itens VALUES("9245","","18:00","nu_hora_fechamento","1448");

INSERT INTO tb_auditoria_itens VALUES("9246","","11","co_assinante","1449");

INSERT INTO tb_auditoria_itens VALUES("9247","","6","nu_dia_semana","1449");

INSERT INTO tb_auditoria_itens VALUES("9248","","07:00","nu_hora_abertura","1449");

INSERT INTO tb_auditoria_itens VALUES("9249","","19:00","nu_hora_fechamento","1449");

INSERT INTO tb_auditoria_itens VALUES("9250","","11","co_assinante","1450");

INSERT INTO tb_auditoria_itens VALUES("9251","","7","nu_dia_semana","1450");

INSERT INTO tb_auditoria_itens VALUES("9252","","07:00","nu_hora_abertura","1450");

INSERT INTO tb_auditoria_itens VALUES("9253","","14:20","nu_hora_fechamento","1450");

INSERT INTO tb_auditoria_itens VALUES("9254","15","","co_pessoa","1451");

INSERT INTO tb_auditoria_itens VALUES("9255","","","nu_cpf","1451");

INSERT INTO tb_auditoria_itens VALUES("9256","LEO BESSA","LEO BESSA","no_pessoa","1451");

INSERT INTO tb_auditoria_itens VALUES("9257","","","nu_rg","1451");

INSERT INTO tb_auditoria_itens VALUES("9258","2018-08-14 16:45:26","","dt_cadastro","1451");

INSERT INTO tb_auditoria_itens VALUES("9259","0000-00-00","","dt_nascimento","1451");

INSERT INTO tb_auditoria_itens VALUES("9260","","","st_sexo","1451");

INSERT INTO tb_auditoria_itens VALUES("9261","0","","co_endereco","1451");

INSERT INTO tb_auditoria_itens VALUES("9262","15","","co_contato","1451");

INSERT INTO tb_auditoria_itens VALUES("9263","0","","co_imagem","1451");

INSERT INTO tb_auditoria_itens VALUES("9264","12","","co_empresa","1452");

INSERT INTO tb_auditoria_itens VALUES("9265","TESTE 01 RAZãO","TESTE 01 RAZãO","no_empresa","1452");

INSERT INTO tb_auditoria_itens VALUES("9266","","MEU SALãO","no_fantasia","1452");

INSERT INTO tb_auditoria_itens VALUES("9267","2018-08-14 16:45:26","","dt_cadastro","1452");

INSERT INTO tb_auditoria_itens VALUES("9268","07844665000120","07844665000120","nu_cnpj","1452");

INSERT INTO tb_auditoria_itens VALUES("9269","43543664","43543664","nu_insc_estadual","1452");

INSERT INTO tb_auditoria_itens VALUES("9270","vev v","vev v","ds_observacao","1452");

INSERT INTO tb_auditoria_itens VALUES("9271","","","st_status","1452");

INSERT INTO tb_auditoria_itens VALUES("9272","0","","co_pessoa","1452");

INSERT INTO tb_auditoria_itens VALUES("9273","29","","co_endereco","1452");

INSERT INTO tb_auditoria_itens VALUES("9274","15","","co_contato","1452");

INSERT INTO tb_auditoria_itens VALUES("9275","0","","co_imagem","1452");

INSERT INTO tb_auditoria_itens VALUES("9276","29","","co_endereco","1453");

INSERT INTO tb_auditoria_itens VALUES("9277","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","1453");

INSERT INTO tb_auditoria_itens VALUES("9278","Casa 28","Casa 28","ds_complemento","1453");

INSERT INTO tb_auditoria_itens VALUES("9279","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","1453");

INSERT INTO tb_auditoria_itens VALUES("9280","72319111","72319111","nu_cep","1453");

INSERT INTO tb_auditoria_itens VALUES("9281","Brasília","Brasília","no_cidade","1453");

INSERT INTO tb_auditoria_itens VALUES("9282","DF","DF","sg_uf","1453");

INSERT INTO tb_auditoria_itens VALUES("9283","12","","co_empresa","1454");

INSERT INTO tb_auditoria_itens VALUES("9284","TESTE 01 RAZãO","","no_empresa","1454");

INSERT INTO tb_auditoria_itens VALUES("9285","MEU SALãO","","no_fantasia","1454");

INSERT INTO tb_auditoria_itens VALUES("9286","2018-08-14 16:45:26","","dt_cadastro","1454");

INSERT INTO tb_auditoria_itens VALUES("9287","07844665000120","","nu_cnpj","1454");

INSERT INTO tb_auditoria_itens VALUES("9288","43543664","","nu_insc_estadual","1454");

INSERT INTO tb_auditoria_itens VALUES("9289","vev v","","ds_observacao","1454");

INSERT INTO tb_auditoria_itens VALUES("9290","","","st_status","1454");

INSERT INTO tb_auditoria_itens VALUES("9291","0","","co_pessoa","1454");

INSERT INTO tb_auditoria_itens VALUES("9292","29","29","co_endereco","1454");

INSERT INTO tb_auditoria_itens VALUES("9293","15","","co_contato","1454");

INSERT INTO tb_auditoria_itens VALUES("9294","0","","co_imagem","1454");

INSERT INTO tb_auditoria_itens VALUES("9295","15","","co_contato","1455");

INSERT INTO tb_auditoria_itens VALUES("9296","23523462347","23523462347","nu_tel1","1455");

INSERT INTO tb_auditoria_itens VALUES("9297","54364364364","54364364364","nu_tel2","1455");

INSERT INTO tb_auditoria_itens VALUES("9298","","","nu_tel3","1455");

INSERT INTO tb_auditoria_itens VALUES("9299","","","nu_tel_0800","1455");

INSERT INTO tb_auditoria_itens VALUES("9300","leo@mail.com","leo@mail.com","ds_email","1455");

INSERT INTO tb_auditoria_itens VALUES("9301","www.site.com.br","www.site.com.br","ds_site","1455");

INSERT INTO tb_auditoria_itens VALUES("9302","","","ds_facebook","1455");

INSERT INTO tb_auditoria_itens VALUES("9303","","","ds_twitter","1455");

INSERT INTO tb_auditoria_itens VALUES("9304","","","ds_instagram","1455");

INSERT INTO tb_auditoria_itens VALUES("9305","41","","co_facilidade_beneficio","1456");

INSERT INTO tb_auditoria_itens VALUES("9306","1","","tp_estabelecimento","1456");

INSERT INTO tb_auditoria_itens VALUES("9307","1","","tp_atendimento","1456");

INSERT INTO tb_auditoria_itens VALUES("9308","1","","tp_genero_especializado","1456");

INSERT INTO tb_auditoria_itens VALUES("9309","1","","tp_estacionamento","1456");

INSERT INTO tb_auditoria_itens VALUES("9310","N","","st_lanchonete","1456");

INSERT INTO tb_auditoria_itens VALUES("9311","S","","st_televisao","1456");

INSERT INTO tb_auditoria_itens VALUES("9312","S","","st_wifi","1456");

INSERT INTO tb_auditoria_itens VALUES("9313","N","","st_acesso_deficiente","1456");

INSERT INTO tb_auditoria_itens VALUES("9314","S","","st_jogos","1456");

INSERT INTO tb_auditoria_itens VALUES("9315","11","","co_assinante","1456");

INSERT INTO tb_auditoria_itens VALUES("9316","","11","co_assinante","1457");

INSERT INTO tb_auditoria_itens VALUES("9317","","1","tp_estabelecimento","1457");

INSERT INTO tb_auditoria_itens VALUES("9318","","1","tp_atendimento","1457");

INSERT INTO tb_auditoria_itens VALUES("9319","","1","tp_genero_especializado","1457");

INSERT INTO tb_auditoria_itens VALUES("9320","","1","tp_estacionamento","1457");

INSERT INTO tb_auditoria_itens VALUES("9321","","N","st_lanchonete","1457");

INSERT INTO tb_auditoria_itens VALUES("9322","","S","st_televisao","1457");

INSERT INTO tb_auditoria_itens VALUES("9323","","S","st_wifi","1457");

INSERT INTO tb_auditoria_itens VALUES("9324","","N","st_acesso_deficiente","1457");

INSERT INTO tb_auditoria_itens VALUES("9325","","S","st_jogos","1457");

INSERT INTO tb_auditoria_itens VALUES("9326","189","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9327","1","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9328","09:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9329","18:00","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9330","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9331","190","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9332","2","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9333","08:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9334","18:00","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9335","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9336","191","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9337","3","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9338","08:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9339","18:30","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9340","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9341","192","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9342","4","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9343","08:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9344","18:00","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9345","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9346","193","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9347","5","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9348","08:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9349","18:00","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9350","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9351","194","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9352","6","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9353","07:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9354","19:00","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9355","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9356","195","","co_funcionamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9357","7","","nu_dia_semana","1458");

INSERT INTO tb_auditoria_itens VALUES("9358","07:00","","nu_hora_abertura","1458");

INSERT INTO tb_auditoria_itens VALUES("9359","14:20","","nu_hora_fechamento","1458");

INSERT INTO tb_auditoria_itens VALUES("9360","11","","co_assinante","1458");

INSERT INTO tb_auditoria_itens VALUES("9361","","11","co_assinante","1459");

INSERT INTO tb_auditoria_itens VALUES("9362","","1","nu_dia_semana","1459");

INSERT INTO tb_auditoria_itens VALUES("9363","","09:00","nu_hora_abertura","1459");

INSERT INTO tb_auditoria_itens VALUES("9364","","18:00","nu_hora_fechamento","1459");

INSERT INTO tb_auditoria_itens VALUES("9365","","11","co_assinante","1460");

INSERT INTO tb_auditoria_itens VALUES("9366","","2","nu_dia_semana","1460");

INSERT INTO tb_auditoria_itens VALUES("9367","","08:00","nu_hora_abertura","1460");

INSERT INTO tb_auditoria_itens VALUES("9368","","18:00","nu_hora_fechamento","1460");

INSERT INTO tb_auditoria_itens VALUES("9369","","11","co_assinante","1461");

INSERT INTO tb_auditoria_itens VALUES("9370","","3","nu_dia_semana","1461");

INSERT INTO tb_auditoria_itens VALUES("9371","","08:00","nu_hora_abertura","1461");

INSERT INTO tb_auditoria_itens VALUES("9372","","18:30","nu_hora_fechamento","1461");

INSERT INTO tb_auditoria_itens VALUES("9373","","11","co_assinante","1462");

INSERT INTO tb_auditoria_itens VALUES("9374","","4","nu_dia_semana","1462");

INSERT INTO tb_auditoria_itens VALUES("9375","","08:00","nu_hora_abertura","1462");

INSERT INTO tb_auditoria_itens VALUES("9376","","18:00","nu_hora_fechamento","1462");

INSERT INTO tb_auditoria_itens VALUES("9377","","11","co_assinante","1463");

INSERT INTO tb_auditoria_itens VALUES("9378","","5","nu_dia_semana","1463");

INSERT INTO tb_auditoria_itens VALUES("9379","","08:00","nu_hora_abertura","1463");

INSERT INTO tb_auditoria_itens VALUES("9380","","18:00","nu_hora_fechamento","1463");

INSERT INTO tb_auditoria_itens VALUES("9381","","11","co_assinante","1464");

INSERT INTO tb_auditoria_itens VALUES("9382","","6","nu_dia_semana","1464");

INSERT INTO tb_auditoria_itens VALUES("9383","","07:00","nu_hora_abertura","1464");

INSERT INTO tb_auditoria_itens VALUES("9384","","19:00","nu_hora_fechamento","1464");

INSERT INTO tb_auditoria_itens VALUES("9385","","11","co_assinante","1465");

INSERT INTO tb_auditoria_itens VALUES("9386","","7","nu_dia_semana","1465");

INSERT INTO tb_auditoria_itens VALUES("9387","","07:00","nu_hora_abertura","1465");

INSERT INTO tb_auditoria_itens VALUES("9388","","14:20","nu_hora_fechamento","1465");




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=1466 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_tabela VALUES("1","TB_PLANO","I","1","1");

INSERT INTO tb_auditoria_tabela VALUES("2","TB_PLANO_MODULO","D","0","1");

INSERT INTO tb_auditoria_tabela VALUES("3","TB_PLANO_MODULO","I","1","2");

INSERT INTO tb_auditoria_tabela VALUES("4","TB_PLANO_ASSINANTE","I","1","3");

INSERT INTO tb_auditoria_tabela VALUES("5","TB_PLANO","U","1","4");

INSERT INTO tb_auditoria_tabela VALUES("6","TB_PLANO_MODULO","D","0","5");

INSERT INTO tb_auditoria_tabela VALUES("7","TB_PLANO_MODULO","I","2","6");

INSERT INTO tb_auditoria_tabela VALUES("8","TB_PLANO_MODULO","I","3","7");

INSERT INTO tb_auditoria_tabela VALUES("9","TB_PLANO_ASSINANTE","I","2","8");

INSERT INTO tb_auditoria_tabela VALUES("10","TB_PLANO","U","1","9");

INSERT INTO tb_auditoria_tabela VALUES("11","TB_PLANO_MODULO","D","0","10");

INSERT INTO tb_auditoria_tabela VALUES("12","TB_PLANO_MODULO","I","4","11");

INSERT INTO tb_auditoria_tabela VALUES("13","TB_PLANO_MODULO","I","5","12");

INSERT INTO tb_auditoria_tabela VALUES("14","TB_PLANO_ASSINANTE","I","3","13");

INSERT INTO tb_auditoria_tabela VALUES("15","TB_PLANO","I","2","14");

INSERT INTO tb_auditoria_tabela VALUES("16","TB_PLANO_MODULO","D","0","14");

INSERT INTO tb_auditoria_tabela VALUES("17","TB_PLANO_MODULO","I","6","15");

INSERT INTO tb_auditoria_tabela VALUES("18","TB_PLANO_ASSINANTE","I","4","16");

INSERT INTO tb_auditoria_tabela VALUES("19","TB_PLANO","U","2","17");

INSERT INTO tb_auditoria_tabela VALUES("20","TB_PLANO_MODULO","D","0","18");

INSERT INTO tb_auditoria_tabela VALUES("21","TB_PLANO_MODULO","I","7","19");

INSERT INTO tb_auditoria_tabela VALUES("22","TB_PLANO_ASSINANTE","I","5","20");

INSERT INTO tb_auditoria_tabela VALUES("23","TB_PLANO","U","1","21");

INSERT INTO tb_auditoria_tabela VALUES("24","TB_PLANO_MODULO","D","0","22");

INSERT INTO tb_auditoria_tabela VALUES("25","TB_PLANO_MODULO","I","8","23");

INSERT INTO tb_auditoria_tabela VALUES("26","TB_PLANO_ASSINANTE","I","6","24");

INSERT INTO tb_auditoria_tabela VALUES("27","TB_PLANO","U","2","25");

INSERT INTO tb_auditoria_tabela VALUES("28","TB_PLANO_MODULO","D","0","26");

INSERT INTO tb_auditoria_tabela VALUES("29","TB_PLANO_MODULO","I","9","27");

INSERT INTO tb_auditoria_tabela VALUES("30","TB_PLANO_ASSINANTE","I","7","28");

INSERT INTO tb_auditoria_tabela VALUES("31","TB_PLANO","U","2","29");

INSERT INTO tb_auditoria_tabela VALUES("32","TB_PLANO_MODULO","D","0","30");

INSERT INTO tb_auditoria_tabela VALUES("33","TB_PLANO_MODULO","I","10","31");

INSERT INTO tb_auditoria_tabela VALUES("34","TB_PLANO_ASSINANTE","I","8","32");

INSERT INTO tb_auditoria_tabela VALUES("35","TB_PLANO","U","2","33");

INSERT INTO tb_auditoria_tabela VALUES("36","TB_PLANO_MODULO","D","0","34");

INSERT INTO tb_auditoria_tabela VALUES("37","TB_PLANO_MODULO","I","11","35");

INSERT INTO tb_auditoria_tabela VALUES("38","TB_PLANO_ASSINANTE","I","9","36");

INSERT INTO tb_auditoria_tabela VALUES("45","TB_CONTATO","I","5","40");

INSERT INTO tb_auditoria_tabela VALUES("46","TB_PESSOA","I","5","40");

INSERT INTO tb_auditoria_tabela VALUES("47","TB_ASSINANTE","I","1","40");

INSERT INTO tb_auditoria_tabela VALUES("48","TB_CONTATO","U","5","41");

INSERT INTO tb_auditoria_tabela VALUES("49","TB_PESSOA","U","5","41");

INSERT INTO tb_auditoria_tabela VALUES("50","TB_CONTATO","U","5","42");

INSERT INTO tb_auditoria_tabela VALUES("51","TB_PESSOA","U","5","42");

INSERT INTO tb_auditoria_tabela VALUES("52","TB_CONTATO","U","5","43");

INSERT INTO tb_auditoria_tabela VALUES("53","TB_PESSOA","U","5","43");

INSERT INTO tb_auditoria_tabela VALUES("54","TB_CONTATO","I","6","44");

INSERT INTO tb_auditoria_tabela VALUES("55","TB_PESSOA","I","6","44");

INSERT INTO tb_auditoria_tabela VALUES("56","TB_ASSINANTE","I","2","44");

INSERT INTO tb_auditoria_tabela VALUES("57","TB_CONTATO","U","6","45");

INSERT INTO tb_auditoria_tabela VALUES("58","TB_EMPRESA","U","0","45");

INSERT INTO tb_auditoria_tabela VALUES("59","TB_PESSOA","U","6","45");

INSERT INTO tb_auditoria_tabela VALUES("60","TB_CONTATO","U","6","46");

INSERT INTO tb_auditoria_tabela VALUES("61","TB_EMPRESA","U","0","46");

INSERT INTO tb_auditoria_tabela VALUES("62","TB_PESSOA","U","6","46");

INSERT INTO tb_auditoria_tabela VALUES("63","TB_ASSINANTE","U","2","46");

INSERT INTO tb_auditoria_tabela VALUES("64","TB_ASSINANTE_MATRIZ","I","1","46");

INSERT INTO tb_auditoria_tabela VALUES("65","TB_ASSINANTE_FILIAL","I","1","46");

INSERT INTO tb_auditoria_tabela VALUES("76","TB_CONTATO","U","5","49");

INSERT INTO tb_auditoria_tabela VALUES("77","TB_EMPRESA","U","0","49");

INSERT INTO tb_auditoria_tabela VALUES("78","TB_PESSOA","U","5","49");

INSERT INTO tb_auditoria_tabela VALUES("79","TB_ASSINANTE","U","1","49");

INSERT INTO tb_auditoria_tabela VALUES("80","TB_ASSINANTE_MATRIZ","I","3","49");

INSERT INTO tb_auditoria_tabela VALUES("81","TB_ASSINANTE_FILIAL","I","3","49");

INSERT INTO tb_auditoria_tabela VALUES("82","TB_CONTATO","I","7","50");

INSERT INTO tb_auditoria_tabela VALUES("83","TB_PESSOA","I","7","50");

INSERT INTO tb_auditoria_tabela VALUES("84","TB_EMPRESA","I","4","50");

INSERT INTO tb_auditoria_tabela VALUES("85","TB_ASSINANTE","I","3","50");

INSERT INTO tb_auditoria_tabela VALUES("86","TB_CONTATO","U","7","51");

INSERT INTO tb_auditoria_tabela VALUES("87","TB_EMPRESA","U","0","51");

INSERT INTO tb_auditoria_tabela VALUES("88","TB_PESSOA","U","7","51");

INSERT INTO tb_auditoria_tabela VALUES("89","TB_ASSINANTE","U","3","51");

INSERT INTO tb_auditoria_tabela VALUES("90","TB_ASSINANTE_MATRIZ","I","4","51");

INSERT INTO tb_auditoria_tabela VALUES("91","TB_ASSINANTE_FILIAL","I","5","51");

INSERT INTO tb_auditoria_tabela VALUES("104","TB_CONTATO","U","5","55");

INSERT INTO tb_auditoria_tabela VALUES("105","TB_EMPRESA","U","0","55");

INSERT INTO tb_auditoria_tabela VALUES("106","TB_PESSOA","U","5","55");

INSERT INTO tb_auditoria_tabela VALUES("107","TB_ASSINANTE","U","1","55");

INSERT INTO tb_auditoria_tabela VALUES("108","TB_ASSINANTE_FILIAL","D","0","55");

INSERT INTO tb_auditoria_tabela VALUES("109","TB_CONTATO","U","7","56");

INSERT INTO tb_auditoria_tabela VALUES("110","TB_EMPRESA","U","0","56");

INSERT INTO tb_auditoria_tabela VALUES("111","TB_PESSOA","U","7","56");

INSERT INTO tb_auditoria_tabela VALUES("112","TB_ASSINANTE","U","3","56");

INSERT INTO tb_auditoria_tabela VALUES("113","TB_ASSINANTE_FILIAL","D","0","56");

INSERT INTO tb_auditoria_tabela VALUES("114","TB_CONTATO","U","5","57");

INSERT INTO tb_auditoria_tabela VALUES("115","TB_EMPRESA","U","0","57");

INSERT INTO tb_auditoria_tabela VALUES("116","TB_PESSOA","U","5","57");

INSERT INTO tb_auditoria_tabela VALUES("117","TB_ASSINANTE","U","1","57");

INSERT INTO tb_auditoria_tabela VALUES("118","TB_ASSINANTE_MATRIZ","I","5","57");

INSERT INTO tb_auditoria_tabela VALUES("119","TB_ASSINANTE_FILIAL","I","6","57");

INSERT INTO tb_auditoria_tabela VALUES("120","TB_CONTATO","U","7","58");

INSERT INTO tb_auditoria_tabela VALUES("121","TB_EMPRESA","U","0","58");

INSERT INTO tb_auditoria_tabela VALUES("122","TB_PESSOA","U","7","58");

INSERT INTO tb_auditoria_tabela VALUES("123","TB_ASSINANTE","U","3","58");

INSERT INTO tb_auditoria_tabela VALUES("124","TB_ASSINANTE_MATRIZ","I","6","58");

INSERT INTO tb_auditoria_tabela VALUES("125","TB_ASSINANTE_FILIAL","I","7","58");

INSERT INTO tb_auditoria_tabela VALUES("126","TB_CONTATO","U","7","59");

INSERT INTO tb_auditoria_tabela VALUES("127","TB_EMPRESA","U","0","59");

INSERT INTO tb_auditoria_tabela VALUES("128","TB_PESSOA","U","7","59");

INSERT INTO tb_auditoria_tabela VALUES("129","TB_ASSINANTE","U","3","59");

INSERT INTO tb_auditoria_tabela VALUES("130","TB_ASSINANTE_FILIAL","D","0","59");

INSERT INTO tb_auditoria_tabela VALUES("151","TB_CONTATO","U","7","65");

INSERT INTO tb_auditoria_tabela VALUES("152","TB_EMPRESA","U","0","65");

INSERT INTO tb_auditoria_tabela VALUES("153","TB_PESSOA","U","7","65");

INSERT INTO tb_auditoria_tabela VALUES("154","TB_ASSINANTE","U","3","65");

INSERT INTO tb_auditoria_tabela VALUES("155","TB_ASSINANTE_FILIAL","I","8","65");

INSERT INTO tb_auditoria_tabela VALUES("180","TB_CONTATO","U","7","72");

INSERT INTO tb_auditoria_tabela VALUES("181","TB_EMPRESA","U","0","72");

INSERT INTO tb_auditoria_tabela VALUES("182","TB_PESSOA","U","7","72");

INSERT INTO tb_auditoria_tabela VALUES("183","TB_ASSINANTE","U","3","72");

INSERT INTO tb_auditoria_tabela VALUES("184","TB_ASSINANTE_FILIAL","I","9","72");

INSERT INTO tb_auditoria_tabela VALUES("185","TB_CONTATO","U","5","73");

INSERT INTO tb_auditoria_tabela VALUES("186","TB_EMPRESA","U","0","73");

INSERT INTO tb_auditoria_tabela VALUES("187","TB_PESSOA","U","5","73");

INSERT INTO tb_auditoria_tabela VALUES("188","TB_ASSINANTE","U","1","73");

INSERT INTO tb_auditoria_tabela VALUES("189","TB_ASSINANTE_FILIAL","D","0","73");

INSERT INTO tb_auditoria_tabela VALUES("190","TB_CONTATO","U","6","74");

INSERT INTO tb_auditoria_tabela VALUES("191","TB_EMPRESA","U","0","74");

INSERT INTO tb_auditoria_tabela VALUES("192","TB_PESSOA","U","6","74");

INSERT INTO tb_auditoria_tabela VALUES("193","TB_ASSINANTE","U","2","74");

INSERT INTO tb_auditoria_tabela VALUES("194","TB_ASSINANTE_FILIAL","D","0","74");

INSERT INTO tb_auditoria_tabela VALUES("195","TB_CONTATO","U","5","75");

INSERT INTO tb_auditoria_tabela VALUES("196","TB_EMPRESA","U","0","75");

INSERT INTO tb_auditoria_tabela VALUES("197","TB_PESSOA","U","5","75");

INSERT INTO tb_auditoria_tabela VALUES("198","TB_ASSINANTE","U","1","75");

INSERT INTO tb_auditoria_tabela VALUES("199","TB_ASSINANTE_FILIAL","I","10","75");

INSERT INTO tb_auditoria_tabela VALUES("200","TB_PLANO_ASSINANTE_ASSINATURA","I","3","76");

INSERT INTO tb_auditoria_tabela VALUES("204","TB_PLANO_ASSINANTE_ASSINATURA","I","7","80");

INSERT INTO tb_auditoria_tabela VALUES("205","TB_ASSINANTE","U","3","80");

INSERT INTO tb_auditoria_tabela VALUES("206","TB_ASSINANTE","U","1","80");

INSERT INTO tb_auditoria_tabela VALUES("207","TB_ASSINANTE","U","2","80");

INSERT INTO tb_auditoria_tabela VALUES("208","TB_PLANO_ASSINANTE_ASSINATURA","I","8","81");

INSERT INTO tb_auditoria_tabela VALUES("209","TB_ASSINANTE","U","3","81");

INSERT INTO tb_auditoria_tabela VALUES("210","TB_ASSINANTE","U","1","81");

INSERT INTO tb_auditoria_tabela VALUES("211","TB_ASSINANTE","U","2","81");

INSERT INTO tb_auditoria_tabela VALUES("216","TB_CONTATO","I","9","83");

INSERT INTO tb_auditoria_tabela VALUES("217","TB_PESSOA","I","9","83");

INSERT INTO tb_auditoria_tabela VALUES("218","TB_EMPRESA","I","6","83");

INSERT INTO tb_auditoria_tabela VALUES("219","TB_ASSINANTE","I","5","83");

INSERT INTO tb_auditoria_tabela VALUES("220","TB_USUARIO","I","2","83");

INSERT INTO tb_auditoria_tabela VALUES("226","TB_CONTATO","I","11","85");

INSERT INTO tb_auditoria_tabela VALUES("227","TB_PESSOA","I","11","85");

INSERT INTO tb_auditoria_tabela VALUES("228","TB_EMPRESA","I","8","85");

INSERT INTO tb_auditoria_tabela VALUES("229","TB_ASSINANTE","I","7","85");

INSERT INTO tb_auditoria_tabela VALUES("230","TB_USUARIO","I","4","85");

INSERT INTO tb_auditoria_tabela VALUES("231","TB_PLANO_ASSINANTE_ASSINATURA","I","9","85");

INSERT INTO tb_auditoria_tabela VALUES("232","TB_PLANO_ASSINANTE_ASSINATURA","I","10","86");

INSERT INTO tb_auditoria_tabela VALUES("233","TB_ASSINANTE","U","5","86");

INSERT INTO tb_auditoria_tabela VALUES("234","TB_PLANO_ASSINANTE_ASSINATURA","I","11","87");

INSERT INTO tb_auditoria_tabela VALUES("235","TB_ASSINANTE","U","5","87");

INSERT INTO tb_auditoria_tabela VALUES("236","TB_PLANO_ASSINANTE_ASSINATURA","I","12","88");

INSERT INTO tb_auditoria_tabela VALUES("237","TB_ASSINANTE","U","5","88");

INSERT INTO tb_auditoria_tabela VALUES("238","TB_PLANO_ASSINANTE_ASSINATURA","I","13","89");

INSERT INTO tb_auditoria_tabela VALUES("239","TB_CONTATO","I","12","90");

INSERT INTO tb_auditoria_tabela VALUES("240","TB_PESSOA","I","12","90");

INSERT INTO tb_auditoria_tabela VALUES("241","TB_EMPRESA","I","9","90");

INSERT INTO tb_auditoria_tabela VALUES("242","TB_ASSINANTE","I","8","90");

INSERT INTO tb_auditoria_tabela VALUES("243","TB_USUARIO","I","5","90");

INSERT INTO tb_auditoria_tabela VALUES("244","TB_PLANO_ASSINANTE_ASSINATURA","I","14","90");

INSERT INTO tb_auditoria_tabela VALUES("245","TB_CONTATO","I","13","91");

INSERT INTO tb_auditoria_tabela VALUES("246","TB_PESSOA","I","13","91");

INSERT INTO tb_auditoria_tabela VALUES("247","TB_EMPRESA","I","10","91");

INSERT INTO tb_auditoria_tabela VALUES("248","TB_ASSINANTE","I","9","91");

INSERT INTO tb_auditoria_tabela VALUES("249","TB_USUARIO","I","6","91");

INSERT INTO tb_auditoria_tabela VALUES("250","TB_PLANO_ASSINANTE_ASSINATURA","I","15","91");

INSERT INTO tb_auditoria_tabela VALUES("251","TB_USUARIO","U","6","92");

INSERT INTO tb_auditoria_tabela VALUES("252","TB_USUARIO","U","6","93");

INSERT INTO tb_auditoria_tabela VALUES("253","TB_CONTATO","I","14","94");

INSERT INTO tb_auditoria_tabela VALUES("254","TB_PESSOA","I","14","94");

INSERT INTO tb_auditoria_tabela VALUES("255","TB_EMPRESA","I","11","94");

INSERT INTO tb_auditoria_tabela VALUES("256","TB_ASSINANTE","I","10","94");

INSERT INTO tb_auditoria_tabela VALUES("257","TB_USUARIO","I","7","94");

INSERT INTO tb_auditoria_tabela VALUES("258","TB_PLANO_ASSINANTE_ASSINATURA","I","16","94");

INSERT INTO tb_auditoria_tabela VALUES("259","TB_USUARIO_PERFIL","I","3","94");

INSERT INTO tb_auditoria_tabela VALUES("260","TB_USUARIO","U","3","95");

INSERT INTO tb_auditoria_tabela VALUES("261","TB_USUARIO","U","3","96");

INSERT INTO tb_auditoria_tabela VALUES("262","TB_USUARIO","U","3","97");

INSERT INTO tb_auditoria_tabela VALUES("263","TB_USUARIO","U","3","98");

INSERT INTO tb_auditoria_tabela VALUES("264","TB_USUARIO","U","3","99");

INSERT INTO tb_auditoria_tabela VALUES("265","TB_USUARIO","U","3","100");

INSERT INTO tb_auditoria_tabela VALUES("266","TB_USUARIO","U","3","101");

INSERT INTO tb_auditoria_tabela VALUES("267","TB_USUARIO","U","3","102");

INSERT INTO tb_auditoria_tabela VALUES("268","TB_USUARIO","U","3","103");

INSERT INTO tb_auditoria_tabela VALUES("269","TB_USUARIO","U","3","104");

INSERT INTO tb_auditoria_tabela VALUES("270","TB_USUARIO","U","3","105");

INSERT INTO tb_auditoria_tabela VALUES("271","TB_USUARIO","U","7","106");

INSERT INTO tb_auditoria_tabela VALUES("272","TB_USUARIO","U","7","107");

INSERT INTO tb_auditoria_tabela VALUES("273","TB_CONTATO","I","15","108");

INSERT INTO tb_auditoria_tabela VALUES("274","TB_PESSOA","I","15","108");

INSERT INTO tb_auditoria_tabela VALUES("275","TB_EMPRESA","I","12","108");

INSERT INTO tb_auditoria_tabela VALUES("276","TB_ASSINANTE","I","11","108");

INSERT INTO tb_auditoria_tabela VALUES("277","TB_USUARIO","I","8","108");

INSERT INTO tb_auditoria_tabela VALUES("278","TB_PLANO_ASSINANTE_ASSINATURA","I","17","108");

INSERT INTO tb_auditoria_tabela VALUES("279","TB_USUARIO_PERFIL","I","4","108");

INSERT INTO tb_auditoria_tabela VALUES("280","TB_USUARIO","U","7","109");

INSERT INTO tb_auditoria_tabela VALUES("281","TB_USUARIO","U","7","110");

INSERT INTO tb_auditoria_tabela VALUES("282","TB_USUARIO","U","8","111");

INSERT INTO tb_auditoria_tabela VALUES("283","TB_USUARIO","U","8","112");

INSERT INTO tb_auditoria_tabela VALUES("284","TB_PERFIL","U","3","113");

INSERT INTO tb_auditoria_tabela VALUES("285","TB_PERFIL_FUNCIONALIDADE","D","0","113");

INSERT INTO tb_auditoria_tabela VALUES("286","TB_PLANO","I","4","114");

INSERT INTO tb_auditoria_tabela VALUES("287","TB_PLANO_MODULO","D","0","114");

INSERT INTO tb_auditoria_tabela VALUES("288","TB_PLANO_MODULO","I","12","114");

INSERT INTO tb_auditoria_tabela VALUES("289","TB_PLANO_MODULO","I","13","114");

INSERT INTO tb_auditoria_tabela VALUES("290","TB_PLANO_ASSINANTE","I","10","114");

INSERT INTO tb_auditoria_tabela VALUES("291","TB_PLANO","I","5","115");

INSERT INTO tb_auditoria_tabela VALUES("292","TB_PLANO_MODULO","D","0","115");

INSERT INTO tb_auditoria_tabela VALUES("293","TB_PLANO_MODULO","I","14","115");

INSERT INTO tb_auditoria_tabela VALUES("294","TB_PLANO_MODULO","I","15","115");

INSERT INTO tb_auditoria_tabela VALUES("295","TB_PLANO_ASSINANTE","I","11","115");

INSERT INTO tb_auditoria_tabela VALUES("296","TB_PERFIL","U","2","116");

INSERT INTO tb_auditoria_tabela VALUES("297","TB_PERFIL_FUNCIONALIDADE","D","0","116");

INSERT INTO tb_auditoria_tabela VALUES("298","TB_PERFIL_FUNCIONALIDADE","I","2","116");

INSERT INTO tb_auditoria_tabela VALUES("299","TB_PERFIL_FUNCIONALIDADE","I","3","116");

INSERT INTO tb_auditoria_tabela VALUES("300","TB_PERFIL_FUNCIONALIDADE","I","4","116");

INSERT INTO tb_auditoria_tabela VALUES("301","TB_PERFIL_FUNCIONALIDADE","I","5","116");

INSERT INTO tb_auditoria_tabela VALUES("302","TB_PERFIL_FUNCIONALIDADE","I","6","116");

INSERT INTO tb_auditoria_tabela VALUES("303","TB_PERFIL","U","3","117");

INSERT INTO tb_auditoria_tabela VALUES("304","TB_PERFIL_FUNCIONALIDADE","D","0","117");

INSERT INTO tb_auditoria_tabela VALUES("305","TB_PERFIL_FUNCIONALIDADE","I","7","117");

INSERT INTO tb_auditoria_tabela VALUES("306","TB_CONTATO","I","16","118");

INSERT INTO tb_auditoria_tabela VALUES("307","TB_PESSOA","I","16","118");

INSERT INTO tb_auditoria_tabela VALUES("308","TB_EMPRESA","I","13","118");

INSERT INTO tb_auditoria_tabela VALUES("309","TB_ASSINANTE","I","12","118");

INSERT INTO tb_auditoria_tabela VALUES("310","TB_USUARIO","I","9","118");

INSERT INTO tb_auditoria_tabela VALUES("311","TB_PLANO_ASSINANTE_ASSINATURA","I","18","118");

INSERT INTO tb_auditoria_tabela VALUES("312","TB_USUARIO_PERFIL","I","5","118");

INSERT INTO tb_auditoria_tabela VALUES("313","TB_USUARIO","U","9","119");

INSERT INTO tb_auditoria_tabela VALUES("314","TB_FUNCIONALIDADE","I","12","120");

INSERT INTO tb_auditoria_tabela VALUES("315","TB_PERFIL_FUNCIONALIDADE","I","8","120");

INSERT INTO tb_auditoria_tabela VALUES("316","TB_PERFIL_FUNCIONALIDADE","I","9","120");

INSERT INTO tb_auditoria_tabela VALUES("317","TB_USUARIO","U","8","121");

INSERT INTO tb_auditoria_tabela VALUES("318","TB_USUARIO","U","8","122");

INSERT INTO tb_auditoria_tabela VALUES("319","TB_USUARIO","U","8","123");

INSERT INTO tb_auditoria_tabela VALUES("320","TB_USUARIO","U","8","124");

INSERT INTO tb_auditoria_tabela VALUES("321","TB_USUARIO","U","8","125");

INSERT INTO tb_auditoria_tabela VALUES("322","TB_USUARIO","U","8","126");

INSERT INTO tb_auditoria_tabela VALUES("323","TB_USUARIO","U","8","127");

INSERT INTO tb_auditoria_tabela VALUES("324","TB_USUARIO","U","8","128");

INSERT INTO tb_auditoria_tabela VALUES("325","TB_PLANO","I","6","129");

INSERT INTO tb_auditoria_tabela VALUES("326","TB_PLANO_MODULO","D","0","129");

INSERT INTO tb_auditoria_tabela VALUES("327","TB_PLANO_MODULO","I","16","129");

INSERT INTO tb_auditoria_tabela VALUES("328","TB_PLANO_MODULO","I","17","129");

INSERT INTO tb_auditoria_tabela VALUES("329","TB_PLANO_ASSINANTE","I","12","129");

INSERT INTO tb_auditoria_tabela VALUES("330","TB_PLANO","U","6","130");

INSERT INTO tb_auditoria_tabela VALUES("331","TB_PLANO_MODULO","D","0","130");

INSERT INTO tb_auditoria_tabela VALUES("332","TB_PLANO_MODULO","I","18","130");

INSERT INTO tb_auditoria_tabela VALUES("333","TB_PLANO_MODULO","I","19","130");

INSERT INTO tb_auditoria_tabela VALUES("334","TB_PLANO_ASSINANTE","I","13","130");

INSERT INTO tb_auditoria_tabela VALUES("335","TB_PLANO","U","5","131");

INSERT INTO tb_auditoria_tabela VALUES("336","TB_PLANO_MODULO","D","0","131");

INSERT INTO tb_auditoria_tabela VALUES("337","TB_PLANO_MODULO","I","20","131");

INSERT INTO tb_auditoria_tabela VALUES("338","TB_PLANO_MODULO","I","21","131");

INSERT INTO tb_auditoria_tabela VALUES("339","TB_PLANO_ASSINANTE","I","14","131");

INSERT INTO tb_auditoria_tabela VALUES("340","TB_PLANO","U","5","132");

INSERT INTO tb_auditoria_tabela VALUES("341","TB_PLANO_MODULO","D","0","132");

INSERT INTO tb_auditoria_tabela VALUES("342","TB_PLANO_MODULO","I","22","132");

INSERT INTO tb_auditoria_tabela VALUES("343","TB_PLANO_MODULO","I","23","132");

INSERT INTO tb_auditoria_tabela VALUES("344","TB_PLANO_ASSINANTE","I","15","132");

INSERT INTO tb_auditoria_tabela VALUES("347","TB_PLANO","U","5","135");

INSERT INTO tb_auditoria_tabela VALUES("348","TB_PLANO_MODULO","D","0","135");

INSERT INTO tb_auditoria_tabela VALUES("349","TB_PLANO_MODULO","I","24","135");

INSERT INTO tb_auditoria_tabela VALUES("350","TB_PLANO_MODULO","I","25","135");

INSERT INTO tb_auditoria_tabela VALUES("351","TB_PLANO_ASSINANTE","I","16","135");

INSERT INTO tb_auditoria_tabela VALUES("352","TB_PLANO","U","5","136");

INSERT INTO tb_auditoria_tabela VALUES("353","TB_PLANO_MODULO","D","0","136");

INSERT INTO tb_auditoria_tabela VALUES("354","TB_PLANO_MODULO","I","26","136");

INSERT INTO tb_auditoria_tabela VALUES("355","TB_PLANO_MODULO","I","27","136");

INSERT INTO tb_auditoria_tabela VALUES("356","TB_PLANO_ASSINANTE","I","17","136");

INSERT INTO tb_auditoria_tabela VALUES("357","TB_CONTATO","U","16","137");

INSERT INTO tb_auditoria_tabela VALUES("358","TB_EMPRESA","U","13","137");

INSERT INTO tb_auditoria_tabela VALUES("359","TB_PESSOA","U","16","137");

INSERT INTO tb_auditoria_tabela VALUES("360","TB_ASSINANTE","U","12","137");

INSERT INTO tb_auditoria_tabela VALUES("361","TB_ASSINANTE_FILIAL","D","0","137");

INSERT INTO tb_auditoria_tabela VALUES("362","TB_CONTATO","U","16","138");

INSERT INTO tb_auditoria_tabela VALUES("363","TB_EMPRESA","U","13","138");

INSERT INTO tb_auditoria_tabela VALUES("364","TB_PESSOA","U","16","138");

INSERT INTO tb_auditoria_tabela VALUES("365","TB_ASSINANTE","U","12","138");

INSERT INTO tb_auditoria_tabela VALUES("366","TB_ASSINANTE_FILIAL","D","0","138");

INSERT INTO tb_auditoria_tabela VALUES("367","TB_CONTATO","U","16","139");

INSERT INTO tb_auditoria_tabela VALUES("368","TB_EMPRESA","U","13","139");

INSERT INTO tb_auditoria_tabela VALUES("369","TB_PESSOA","U","16","139");

INSERT INTO tb_auditoria_tabela VALUES("370","TB_ASSINANTE","U","12","139");

INSERT INTO tb_auditoria_tabela VALUES("371","TB_ASSINANTE_FILIAL","D","0","139");

INSERT INTO tb_auditoria_tabela VALUES("372","TB_CONTATO","U","16","140");

INSERT INTO tb_auditoria_tabela VALUES("373","TB_EMPRESA","U","13","140");

INSERT INTO tb_auditoria_tabela VALUES("374","TB_PESSOA","U","16","140");

INSERT INTO tb_auditoria_tabela VALUES("375","TB_ASSINANTE","U","12","140");

INSERT INTO tb_auditoria_tabela VALUES("376","TB_ASSINANTE_FILIAL","D","0","140");

INSERT INTO tb_auditoria_tabela VALUES("382","TB_CONTATO","U","16","142");

INSERT INTO tb_auditoria_tabela VALUES("383","TB_EMPRESA","U","13","142");

INSERT INTO tb_auditoria_tabela VALUES("384","TB_PESSOA","U","16","142");

INSERT INTO tb_auditoria_tabela VALUES("385","TB_ASSINANTE","U","12","142");

INSERT INTO tb_auditoria_tabela VALUES("386","TB_ASSINANTE_FILIAL","D","0","142");

INSERT INTO tb_auditoria_tabela VALUES("387","TB_CONTATO","U","16","143");

INSERT INTO tb_auditoria_tabela VALUES("388","TB_EMPRESA","U","13","143");

INSERT INTO tb_auditoria_tabela VALUES("389","TB_PESSOA","U","16","143");

INSERT INTO tb_auditoria_tabela VALUES("390","TB_ASSINANTE","U","12","143");

INSERT INTO tb_auditoria_tabela VALUES("391","TB_ASSINANTE_FILIAL","D","0","143");

INSERT INTO tb_auditoria_tabela VALUES("392","TB_CONTATO","U","16","144");

INSERT INTO tb_auditoria_tabela VALUES("393","TB_EMPRESA","U","13","144");

INSERT INTO tb_auditoria_tabela VALUES("394","TB_PESSOA","U","16","144");

INSERT INTO tb_auditoria_tabela VALUES("395","TB_ASSINANTE","U","12","144");

INSERT INTO tb_auditoria_tabela VALUES("396","TB_ASSINANTE_FILIAL","D","0","144");

INSERT INTO tb_auditoria_tabela VALUES("397","TB_CONTATO","U","16","145");

INSERT INTO tb_auditoria_tabela VALUES("398","TB_EMPRESA","U","13","145");

INSERT INTO tb_auditoria_tabela VALUES("399","TB_PESSOA","U","16","145");

INSERT INTO tb_auditoria_tabela VALUES("400","TB_ASSINANTE","U","12","145");

INSERT INTO tb_auditoria_tabela VALUES("401","TB_ASSINANTE_FILIAL","D","0","145");

INSERT INTO tb_auditoria_tabela VALUES("402","TB_CONTATO","U","16","146");

INSERT INTO tb_auditoria_tabela VALUES("403","TB_EMPRESA","U","13","146");

INSERT INTO tb_auditoria_tabela VALUES("404","TB_PESSOA","U","16","146");

INSERT INTO tb_auditoria_tabela VALUES("405","TB_ASSINANTE","U","12","146");

INSERT INTO tb_auditoria_tabela VALUES("406","TB_ASSINANTE_FILIAL","D","0","146");

INSERT INTO tb_auditoria_tabela VALUES("407","TB_CONTATO","U","16","147");

INSERT INTO tb_auditoria_tabela VALUES("408","TB_EMPRESA","U","13","147");

INSERT INTO tb_auditoria_tabela VALUES("409","TB_PESSOA","U","16","147");

INSERT INTO tb_auditoria_tabela VALUES("410","TB_ASSINANTE","U","12","147");

INSERT INTO tb_auditoria_tabela VALUES("411","TB_ASSINANTE_FILIAL","D","0","147");

INSERT INTO tb_auditoria_tabela VALUES("412","TB_CONTATO","I","17","148");

INSERT INTO tb_auditoria_tabela VALUES("413","TB_PESSOA","I","17","148");

INSERT INTO tb_auditoria_tabela VALUES("414","TB_EMPRESA","I","14","148");

INSERT INTO tb_auditoria_tabela VALUES("415","TB_ASSINANTE","I","13","148");

INSERT INTO tb_auditoria_tabela VALUES("416","TB_USUARIO","I","10","148");

INSERT INTO tb_auditoria_tabela VALUES("417","TB_PLANO_ASSINANTE_ASSINATURA","I","19","148");

INSERT INTO tb_auditoria_tabela VALUES("418","TB_USUARIO_PERFIL","I","6","148");

INSERT INTO tb_auditoria_tabela VALUES("419","TB_CONTATO","U","17","149");

INSERT INTO tb_auditoria_tabela VALUES("420","TB_EMPRESA","U","14","149");

INSERT INTO tb_auditoria_tabela VALUES("421","TB_PESSOA","U","17","149");

INSERT INTO tb_auditoria_tabela VALUES("422","TB_ASSINANTE","U","13","149");

INSERT INTO tb_auditoria_tabela VALUES("423","TB_ASSINANTE_FILIAL","D","0","149");

INSERT INTO tb_auditoria_tabela VALUES("424","TB_CONTATO","U","16","150");

INSERT INTO tb_auditoria_tabela VALUES("425","TB_EMPRESA","U","13","150");

INSERT INTO tb_auditoria_tabela VALUES("426","TB_PESSOA","U","16","150");

INSERT INTO tb_auditoria_tabela VALUES("427","TB_ASSINANTE","U","12","150");

INSERT INTO tb_auditoria_tabela VALUES("428","TB_ASSINANTE_FILIAL","D","0","150");

INSERT INTO tb_auditoria_tabela VALUES("429","TB_PLANO","U","5","151");

INSERT INTO tb_auditoria_tabela VALUES("430","TB_PLANO_MODULO","D","0","151");

INSERT INTO tb_auditoria_tabela VALUES("431","TB_PLANO_MODULO","I","28","151");

INSERT INTO tb_auditoria_tabela VALUES("432","TB_PLANO_MODULO","I","29","151");

INSERT INTO tb_auditoria_tabela VALUES("433","TB_PLANO_ASSINANTE","I","18","151");

INSERT INTO tb_auditoria_tabela VALUES("434","TB_PLANO","I","7","152");

INSERT INTO tb_auditoria_tabela VALUES("435","TB_PLANO_MODULO","D","0","152");

INSERT INTO tb_auditoria_tabela VALUES("436","TB_PLANO_MODULO","I","30","152");

INSERT INTO tb_auditoria_tabela VALUES("437","TB_PLANO_MODULO","I","31","152");

INSERT INTO tb_auditoria_tabela VALUES("438","TB_PLANO_ASSINANTE","I","19","152");

INSERT INTO tb_auditoria_tabela VALUES("439","TB_USUARIO","U","8","153");

INSERT INTO tb_auditoria_tabela VALUES("440","TB_FUNCIONALIDADE","I","13","154");

INSERT INTO tb_auditoria_tabela VALUES("441","TB_PERFIL_FUNCIONALIDADE","I","10","154");

INSERT INTO tb_auditoria_tabela VALUES("442","TB_CONTATO","I","18","155");

INSERT INTO tb_auditoria_tabela VALUES("443","TB_PESSOA","I","18","155");

INSERT INTO tb_auditoria_tabela VALUES("444","TB_EMPRESA","I","15","155");

INSERT INTO tb_auditoria_tabela VALUES("445","TB_ASSINANTE","I","14","155");

INSERT INTO tb_auditoria_tabela VALUES("446","TB_USUARIO","I","11","155");

INSERT INTO tb_auditoria_tabela VALUES("447","TB_PLANO_ASSINANTE_ASSINATURA","I","20","155");

INSERT INTO tb_auditoria_tabela VALUES("448","TB_USUARIO_PERFIL","I","7","155");

INSERT INTO tb_auditoria_tabela VALUES("534","TB_PESSOA","U","15","181");

INSERT INTO tb_auditoria_tabela VALUES("535","TB_EMPRESA","U","12","181");

INSERT INTO tb_auditoria_tabela VALUES("536","TB_ENDERECO","I","16","181");

INSERT INTO tb_auditoria_tabela VALUES("537","TB_EMPRESA","U","12","181");

INSERT INTO tb_auditoria_tabela VALUES("538","TB_CONTATO","U","15","181");

INSERT INTO tb_auditoria_tabela VALUES("539","TB_FACILIDADE_BENEFICIO","I","2","181");

INSERT INTO tb_auditoria_tabela VALUES("540","TB_PESSOA","U","15","182");

INSERT INTO tb_auditoria_tabela VALUES("541","TB_EMPRESA","U","12","182");

INSERT INTO tb_auditoria_tabela VALUES("542","TB_ENDERECO","I","17","182");

INSERT INTO tb_auditoria_tabela VALUES("543","TB_EMPRESA","U","12","182");

INSERT INTO tb_auditoria_tabela VALUES("544","TB_CONTATO","U","15","182");

INSERT INTO tb_auditoria_tabela VALUES("545","TB_FACILIDADE_BENEFICIO","I","3","182");

INSERT INTO tb_auditoria_tabela VALUES("575","TB_PESSOA","U","15","188");

INSERT INTO tb_auditoria_tabela VALUES("576","TB_EMPRESA","U","12","188");

INSERT INTO tb_auditoria_tabela VALUES("577","TB_ENDERECO","I","23","188");

INSERT INTO tb_auditoria_tabela VALUES("578","TB_EMPRESA","U","12","188");

INSERT INTO tb_auditoria_tabela VALUES("579","TB_CONTATO","U","15","188");

INSERT INTO tb_auditoria_tabela VALUES("580","TB_FACILIDADE_BENEFICIO","I","8","188");

INSERT INTO tb_auditoria_tabela VALUES("581","TB_FUNCIONAMENTO","I","1","188");

INSERT INTO tb_auditoria_tabela VALUES("582","TB_FUNCIONAMENTO","I","2","188");

INSERT INTO tb_auditoria_tabela VALUES("583","TB_FUNCIONAMENTO","I","3","188");

INSERT INTO tb_auditoria_tabela VALUES("584","TB_FUNCIONAMENTO","I","4","188");

INSERT INTO tb_auditoria_tabela VALUES("585","TB_FUNCIONAMENTO","I","5","188");

INSERT INTO tb_auditoria_tabela VALUES("620","TB_PESSOA","U","15","192");

INSERT INTO tb_auditoria_tabela VALUES("621","TB_EMPRESA","U","12","192");

INSERT INTO tb_auditoria_tabela VALUES("622","TB_ENDERECO","I","27","192");

INSERT INTO tb_auditoria_tabela VALUES("623","TB_EMPRESA","U","12","192");

INSERT INTO tb_auditoria_tabela VALUES("624","TB_CONTATO","U","15","192");

INSERT INTO tb_auditoria_tabela VALUES("625","TB_FACILIDADE_BENEFICIO","I","12","192");

INSERT INTO tb_auditoria_tabela VALUES("626","TB_FUNCIONAMENTO","I","21","192");

INSERT INTO tb_auditoria_tabela VALUES("627","TB_FUNCIONAMENTO","I","22","192");

INSERT INTO tb_auditoria_tabela VALUES("628","TB_FUNCIONAMENTO","I","23","192");

INSERT INTO tb_auditoria_tabela VALUES("629","TB_FUNCIONAMENTO","I","24","192");

INSERT INTO tb_auditoria_tabela VALUES("630","TB_FUNCIONAMENTO","I","25","192");

INSERT INTO tb_auditoria_tabela VALUES("631","TB_IMAGEM","I","3","192");

INSERT INTO tb_auditoria_tabela VALUES("632","TB_IMAGEM_ASSINANTE","I","1","192");

INSERT INTO tb_auditoria_tabela VALUES("633","TB_IMAGEM","I","4","192");

INSERT INTO tb_auditoria_tabela VALUES("634","TB_IMAGEM_ASSINANTE","I","2","192");

INSERT INTO tb_auditoria_tabela VALUES("635","TB_IMAGEM","I","5","192");

INSERT INTO tb_auditoria_tabela VALUES("636","TB_IMAGEM_ASSINANTE","I","3","192");

INSERT INTO tb_auditoria_tabela VALUES("637","TB_IMAGEM","I","6","192");

INSERT INTO tb_auditoria_tabela VALUES("638","TB_IMAGEM_ASSINANTE","I","4","192");

INSERT INTO tb_auditoria_tabela VALUES("639","TB_PESSOA","U","15","193");

INSERT INTO tb_auditoria_tabela VALUES("640","TB_EMPRESA","U","12","193");

INSERT INTO tb_auditoria_tabela VALUES("641","TB_ENDERECO","I","28","193");

INSERT INTO tb_auditoria_tabela VALUES("642","TB_EMPRESA","U","12","193");

INSERT INTO tb_auditoria_tabela VALUES("643","TB_CONTATO","U","15","193");

INSERT INTO tb_auditoria_tabela VALUES("644","TB_FACILIDADE_BENEFICIO","I","13","193");

INSERT INTO tb_auditoria_tabela VALUES("645","TB_FUNCIONAMENTO","I","26","193");

INSERT INTO tb_auditoria_tabela VALUES("646","TB_FUNCIONAMENTO","I","27","193");

INSERT INTO tb_auditoria_tabela VALUES("647","TB_FUNCIONAMENTO","I","28","193");

INSERT INTO tb_auditoria_tabela VALUES("648","TB_FUNCIONAMENTO","I","29","193");

INSERT INTO tb_auditoria_tabela VALUES("649","TB_FUNCIONAMENTO","I","30","193");

INSERT INTO tb_auditoria_tabela VALUES("650","TB_IMAGEM","I","7","193");

INSERT INTO tb_auditoria_tabela VALUES("651","TB_IMAGEM_ASSINANTE","I","5","193");

INSERT INTO tb_auditoria_tabela VALUES("660","TB_PESSOA","U","15","198");

INSERT INTO tb_auditoria_tabela VALUES("661","TB_EMPRESA","U","12","198");

INSERT INTO tb_auditoria_tabela VALUES("662","TB_ENDERECO","I","29","198");

INSERT INTO tb_auditoria_tabela VALUES("663","TB_EMPRESA","U","12","198");

INSERT INTO tb_auditoria_tabela VALUES("664","TB_CONTATO","U","15","198");

INSERT INTO tb_auditoria_tabela VALUES("665","TB_FACILIDADE_BENEFICIO","D","0","198");

INSERT INTO tb_auditoria_tabela VALUES("666","TB_FACILIDADE_BENEFICIO","I","14","198");

INSERT INTO tb_auditoria_tabela VALUES("667","TB_FUNCIONAMENTO","D","0","198");

INSERT INTO tb_auditoria_tabela VALUES("668","TB_FUNCIONAMENTO","I","31","198");

INSERT INTO tb_auditoria_tabela VALUES("669","TB_FUNCIONAMENTO","I","32","198");

INSERT INTO tb_auditoria_tabela VALUES("670","TB_FUNCIONAMENTO","I","33","198");

INSERT INTO tb_auditoria_tabela VALUES("671","TB_FUNCIONAMENTO","I","34","198");

INSERT INTO tb_auditoria_tabela VALUES("672","TB_FUNCIONAMENTO","I","35","198");

INSERT INTO tb_auditoria_tabela VALUES("673","TB_IMAGEM","I","8","198");

INSERT INTO tb_auditoria_tabela VALUES("674","TB_IMAGEM_ASSINANTE","I","6","198");

INSERT INTO tb_auditoria_tabela VALUES("675","TB_CONTATO","I","19","199");

INSERT INTO tb_auditoria_tabela VALUES("676","TB_CONTATO","I","20","200");

INSERT INTO tb_auditoria_tabela VALUES("677","TB_EMPRESA","U","12","200");

INSERT INTO tb_auditoria_tabela VALUES("678","TB_FACILIDADE_BENEFICIO","I","15","201");

INSERT INTO tb_auditoria_tabela VALUES("679","TB_FUNCIONAMENTO","I","36","202");

INSERT INTO tb_auditoria_tabela VALUES("680","TB_FUNCIONAMENTO","I","37","203");

INSERT INTO tb_auditoria_tabela VALUES("681","TB_FUNCIONAMENTO","I","38","204");

INSERT INTO tb_auditoria_tabela VALUES("682","TB_FUNCIONAMENTO","I","39","205");

INSERT INTO tb_auditoria_tabela VALUES("683","TB_FUNCIONAMENTO","I","40","206");

INSERT INTO tb_auditoria_tabela VALUES("684","TB_PESSOA","U","15","207");

INSERT INTO tb_auditoria_tabela VALUES("685","TB_EMPRESA","U","12","207");

INSERT INTO tb_auditoria_tabela VALUES("686","TB_ENDERECO","U","29","207");

INSERT INTO tb_auditoria_tabela VALUES("687","TB_EMPRESA","U","12","207");

INSERT INTO tb_auditoria_tabela VALUES("688","TB_CONTATO","U","15","207");

INSERT INTO tb_auditoria_tabela VALUES("689","TB_FACILIDADE_BENEFICIO","D","0","207");

INSERT INTO tb_auditoria_tabela VALUES("690","TB_FACILIDADE_BENEFICIO","I","16","207");

INSERT INTO tb_auditoria_tabela VALUES("691","TB_FUNCIONAMENTO","D","0","207");

INSERT INTO tb_auditoria_tabela VALUES("692","TB_FUNCIONAMENTO","I","42","207");

INSERT INTO tb_auditoria_tabela VALUES("693","TB_FUNCIONAMENTO","I","43","207");

INSERT INTO tb_auditoria_tabela VALUES("694","TB_FUNCIONAMENTO","I","44","207");

INSERT INTO tb_auditoria_tabela VALUES("695","TB_FUNCIONAMENTO","I","45","207");

INSERT INTO tb_auditoria_tabela VALUES("696","TB_FUNCIONAMENTO","I","46","207");

INSERT INTO tb_auditoria_tabela VALUES("697","TB_FUNCIONAMENTO","I","47","207");

INSERT INTO tb_auditoria_tabela VALUES("698","TB_IMAGEM","I","9","207");

INSERT INTO tb_auditoria_tabela VALUES("699","TB_IMAGEM_ASSINANTE","I","7","207");

INSERT INTO tb_auditoria_tabela VALUES("700","TB_PESSOA","U","15","208");

INSERT INTO tb_auditoria_tabela VALUES("701","TB_EMPRESA","U","12","208");

INSERT INTO tb_auditoria_tabela VALUES("702","TB_ENDERECO","U","29","208");

INSERT INTO tb_auditoria_tabela VALUES("703","TB_EMPRESA","U","12","208");

INSERT INTO tb_auditoria_tabela VALUES("704","TB_CONTATO","U","15","208");

INSERT INTO tb_auditoria_tabela VALUES("705","TB_FACILIDADE_BENEFICIO","D","0","208");

INSERT INTO tb_auditoria_tabela VALUES("706","TB_FACILIDADE_BENEFICIO","I","17","208");

INSERT INTO tb_auditoria_tabela VALUES("707","TB_FUNCIONAMENTO","D","0","208");

INSERT INTO tb_auditoria_tabela VALUES("708","TB_FUNCIONAMENTO","I","48","208");

INSERT INTO tb_auditoria_tabela VALUES("709","TB_FUNCIONAMENTO","I","49","208");

INSERT INTO tb_auditoria_tabela VALUES("710","TB_FUNCIONAMENTO","I","50","208");

INSERT INTO tb_auditoria_tabela VALUES("711","TB_FUNCIONAMENTO","I","51","208");

INSERT INTO tb_auditoria_tabela VALUES("712","TB_FUNCIONAMENTO","I","52","208");

INSERT INTO tb_auditoria_tabela VALUES("713","TB_FUNCIONAMENTO","I","53","208");

INSERT INTO tb_auditoria_tabela VALUES("714","TB_IMAGEM","I","10","208");

INSERT INTO tb_auditoria_tabela VALUES("715","TB_IMAGEM_ASSINANTE","I","8","208");

INSERT INTO tb_auditoria_tabela VALUES("716","TB_PESSOA","U","15","209");

INSERT INTO tb_auditoria_tabela VALUES("717","TB_EMPRESA","U","12","209");

INSERT INTO tb_auditoria_tabela VALUES("718","TB_ENDERECO","U","29","209");

INSERT INTO tb_auditoria_tabela VALUES("719","TB_EMPRESA","U","12","209");

INSERT INTO tb_auditoria_tabela VALUES("720","TB_CONTATO","U","15","209");

INSERT INTO tb_auditoria_tabela VALUES("721","TB_FACILIDADE_BENEFICIO","D","0","209");

INSERT INTO tb_auditoria_tabela VALUES("722","TB_FACILIDADE_BENEFICIO","I","18","209");

INSERT INTO tb_auditoria_tabela VALUES("723","TB_FUNCIONAMENTO","D","0","209");

INSERT INTO tb_auditoria_tabela VALUES("724","TB_FUNCIONAMENTO","I","54","209");

INSERT INTO tb_auditoria_tabela VALUES("725","TB_FUNCIONAMENTO","I","55","209");

INSERT INTO tb_auditoria_tabela VALUES("726","TB_FUNCIONAMENTO","I","56","209");

INSERT INTO tb_auditoria_tabela VALUES("727","TB_FUNCIONAMENTO","I","57","209");

INSERT INTO tb_auditoria_tabela VALUES("728","TB_FUNCIONAMENTO","I","58","209");

INSERT INTO tb_auditoria_tabela VALUES("729","TB_FUNCIONAMENTO","I","59","209");

INSERT INTO tb_auditoria_tabela VALUES("730","TB_IMAGEM","I","11","209");

INSERT INTO tb_auditoria_tabela VALUES("731","TB_IMAGEM_ASSINANTE","I","9","209");

INSERT INTO tb_auditoria_tabela VALUES("732","TB_PESSOA","U","15","210");

INSERT INTO tb_auditoria_tabela VALUES("733","TB_EMPRESA","U","12","210");

INSERT INTO tb_auditoria_tabela VALUES("734","TB_ENDERECO","U","29","210");

INSERT INTO tb_auditoria_tabela VALUES("735","TB_EMPRESA","U","12","210");

INSERT INTO tb_auditoria_tabela VALUES("736","TB_CONTATO","U","15","210");

INSERT INTO tb_auditoria_tabela VALUES("737","TB_FACILIDADE_BENEFICIO","D","0","210");

INSERT INTO tb_auditoria_tabela VALUES("738","TB_FACILIDADE_BENEFICIO","I","19","210");

INSERT INTO tb_auditoria_tabela VALUES("739","TB_FUNCIONAMENTO","D","0","210");

INSERT INTO tb_auditoria_tabela VALUES("740","TB_FUNCIONAMENTO","I","60","210");

INSERT INTO tb_auditoria_tabela VALUES("741","TB_FUNCIONAMENTO","I","61","210");

INSERT INTO tb_auditoria_tabela VALUES("742","TB_FUNCIONAMENTO","I","62","210");

INSERT INTO tb_auditoria_tabela VALUES("743","TB_FUNCIONAMENTO","I","63","210");

INSERT INTO tb_auditoria_tabela VALUES("744","TB_FUNCIONAMENTO","I","64","210");

INSERT INTO tb_auditoria_tabela VALUES("745","TB_FUNCIONAMENTO","I","65","210");

INSERT INTO tb_auditoria_tabela VALUES("746","TB_IMAGEM","I","12","210");

INSERT INTO tb_auditoria_tabela VALUES("747","TB_IMAGEM_ASSINANTE","I","10","210");

INSERT INTO tb_auditoria_tabela VALUES("748","TB_PESSOA","U","15","211");

INSERT INTO tb_auditoria_tabela VALUES("749","TB_EMPRESA","U","12","211");

INSERT INTO tb_auditoria_tabela VALUES("750","TB_ENDERECO","U","29","211");

INSERT INTO tb_auditoria_tabela VALUES("751","TB_EMPRESA","U","12","211");

INSERT INTO tb_auditoria_tabela VALUES("752","TB_CONTATO","U","15","211");

INSERT INTO tb_auditoria_tabela VALUES("753","TB_FACILIDADE_BENEFICIO","D","0","211");

INSERT INTO tb_auditoria_tabela VALUES("754","TB_FACILIDADE_BENEFICIO","I","20","211");

INSERT INTO tb_auditoria_tabela VALUES("755","TB_FUNCIONAMENTO","D","0","211");

INSERT INTO tb_auditoria_tabela VALUES("756","TB_FUNCIONAMENTO","I","66","211");

INSERT INTO tb_auditoria_tabela VALUES("757","TB_FUNCIONAMENTO","I","67","211");

INSERT INTO tb_auditoria_tabela VALUES("758","TB_FUNCIONAMENTO","I","68","211");

INSERT INTO tb_auditoria_tabela VALUES("759","TB_FUNCIONAMENTO","I","69","211");

INSERT INTO tb_auditoria_tabela VALUES("760","TB_FUNCIONAMENTO","I","70","211");

INSERT INTO tb_auditoria_tabela VALUES("761","TB_FUNCIONAMENTO","I","71","211");

INSERT INTO tb_auditoria_tabela VALUES("762","TB_IMAGEM","I","13","211");

INSERT INTO tb_auditoria_tabela VALUES("763","TB_IMAGEM_ASSINANTE","I","11","211");

INSERT INTO tb_auditoria_tabela VALUES("834","TB_PESSOA","U","15","217");

INSERT INTO tb_auditoria_tabela VALUES("835","TB_EMPRESA","U","12","217");

INSERT INTO tb_auditoria_tabela VALUES("836","TB_ENDERECO","U","29","217");

INSERT INTO tb_auditoria_tabela VALUES("837","TB_EMPRESA","U","12","217");

INSERT INTO tb_auditoria_tabela VALUES("838","TB_CONTATO","U","15","217");

INSERT INTO tb_auditoria_tabela VALUES("839","TB_FACILIDADE_BENEFICIO","D","0","217");

INSERT INTO tb_auditoria_tabela VALUES("840","TB_FACILIDADE_BENEFICIO","I","26","217");

INSERT INTO tb_auditoria_tabela VALUES("841","TB_FUNCIONAMENTO","D","0","217");

INSERT INTO tb_auditoria_tabela VALUES("842","TB_FUNCIONAMENTO","I","102","217");

INSERT INTO tb_auditoria_tabela VALUES("843","TB_FUNCIONAMENTO","I","103","217");

INSERT INTO tb_auditoria_tabela VALUES("844","TB_FUNCIONAMENTO","I","104","217");

INSERT INTO tb_auditoria_tabela VALUES("845","TB_FUNCIONAMENTO","I","105","217");

INSERT INTO tb_auditoria_tabela VALUES("846","TB_FUNCIONAMENTO","I","106","217");

INSERT INTO tb_auditoria_tabela VALUES("847","TB_FUNCIONAMENTO","I","107","217");

INSERT INTO tb_auditoria_tabela VALUES("848","TB_IMAGEM","U","12","217");

INSERT INTO tb_auditoria_tabela VALUES("849","TB_IMAGEM_ASSINANTE","U","12","217");

INSERT INTO tb_auditoria_tabela VALUES("953","TB_PESSOA","U","15","229");

INSERT INTO tb_auditoria_tabela VALUES("954","TB_EMPRESA","U","12","229");

INSERT INTO tb_auditoria_tabela VALUES("955","TB_ENDERECO","U","29","229");

INSERT INTO tb_auditoria_tabela VALUES("956","TB_EMPRESA","U","12","229");

INSERT INTO tb_auditoria_tabela VALUES("957","TB_CONTATO","U","15","229");

INSERT INTO tb_auditoria_tabela VALUES("958","TB_FACILIDADE_BENEFICIO","D","0","229");

INSERT INTO tb_auditoria_tabela VALUES("959","TB_FACILIDADE_BENEFICIO","I","34","229");

INSERT INTO tb_auditoria_tabela VALUES("960","TB_FUNCIONAMENTO","D","0","229");

INSERT INTO tb_auditoria_tabela VALUES("961","TB_FUNCIONAMENTO","I","144","229");

INSERT INTO tb_auditoria_tabela VALUES("962","TB_FUNCIONAMENTO","I","145","229");

INSERT INTO tb_auditoria_tabela VALUES("963","TB_FUNCIONAMENTO","I","146","229");

INSERT INTO tb_auditoria_tabela VALUES("964","TB_FUNCIONAMENTO","I","147","229");

INSERT INTO tb_auditoria_tabela VALUES("965","TB_FUNCIONAMENTO","I","148","229");

INSERT INTO tb_auditoria_tabela VALUES("966","TB_FUNCIONAMENTO","I","149","229");

INSERT INTO tb_auditoria_tabela VALUES("967","TB_PESSOA","U","15","230");

INSERT INTO tb_auditoria_tabela VALUES("968","TB_EMPRESA","U","12","230");

INSERT INTO tb_auditoria_tabela VALUES("969","TB_ENDERECO","U","29","230");

INSERT INTO tb_auditoria_tabela VALUES("970","TB_EMPRESA","U","12","230");

INSERT INTO tb_auditoria_tabela VALUES("971","TB_CONTATO","U","15","230");

INSERT INTO tb_auditoria_tabela VALUES("972","TB_FACILIDADE_BENEFICIO","D","0","230");

INSERT INTO tb_auditoria_tabela VALUES("973","TB_FACILIDADE_BENEFICIO","I","35","230");

INSERT INTO tb_auditoria_tabela VALUES("974","TB_FUNCIONAMENTO","D","0","230");

INSERT INTO tb_auditoria_tabela VALUES("975","TB_FUNCIONAMENTO","I","150","230");

INSERT INTO tb_auditoria_tabela VALUES("976","TB_FUNCIONAMENTO","I","151","230");

INSERT INTO tb_auditoria_tabela VALUES("977","TB_FUNCIONAMENTO","I","152","230");

INSERT INTO tb_auditoria_tabela VALUES("978","TB_FUNCIONAMENTO","I","153","230");

INSERT INTO tb_auditoria_tabela VALUES("979","TB_FUNCIONAMENTO","I","154","230");

INSERT INTO tb_auditoria_tabela VALUES("980","TB_FUNCIONAMENTO","I","155","230");

INSERT INTO tb_auditoria_tabela VALUES("981","TB_IMAGEM","U","12","230");

INSERT INTO tb_auditoria_tabela VALUES("982","TB_IMAGEM_ASSINANTE","U","12","230");

INSERT INTO tb_auditoria_tabela VALUES("983","TB_PESSOA","U","15","231");

INSERT INTO tb_auditoria_tabela VALUES("984","TB_EMPRESA","U","12","231");

INSERT INTO tb_auditoria_tabela VALUES("985","TB_ENDERECO","U","29","231");

INSERT INTO tb_auditoria_tabela VALUES("986","TB_EMPRESA","U","12","231");

INSERT INTO tb_auditoria_tabela VALUES("987","TB_CONTATO","U","15","231");

INSERT INTO tb_auditoria_tabela VALUES("988","TB_FACILIDADE_BENEFICIO","D","0","231");

INSERT INTO tb_auditoria_tabela VALUES("989","TB_FACILIDADE_BENEFICIO","I","36","231");

INSERT INTO tb_auditoria_tabela VALUES("990","TB_FUNCIONAMENTO","D","0","231");

INSERT INTO tb_auditoria_tabela VALUES("991","TB_FUNCIONAMENTO","I","156","231");

INSERT INTO tb_auditoria_tabela VALUES("992","TB_FUNCIONAMENTO","I","157","231");

INSERT INTO tb_auditoria_tabela VALUES("993","TB_FUNCIONAMENTO","I","158","231");

INSERT INTO tb_auditoria_tabela VALUES("994","TB_FUNCIONAMENTO","I","159","231");

INSERT INTO tb_auditoria_tabela VALUES("995","TB_FUNCIONAMENTO","I","160","231");

INSERT INTO tb_auditoria_tabela VALUES("996","TB_FUNCIONAMENTO","I","161","231");

INSERT INTO tb_auditoria_tabela VALUES("997","TB_PESSOA","U","15","232");

INSERT INTO tb_auditoria_tabela VALUES("998","TB_EMPRESA","U","12","232");

INSERT INTO tb_auditoria_tabela VALUES("999","TB_ENDERECO","U","29","232");

INSERT INTO tb_auditoria_tabela VALUES("1000","TB_EMPRESA","U","12","232");

INSERT INTO tb_auditoria_tabela VALUES("1001","TB_CONTATO","U","15","232");

INSERT INTO tb_auditoria_tabela VALUES("1002","TB_FACILIDADE_BENEFICIO","D","0","232");

INSERT INTO tb_auditoria_tabela VALUES("1003","TB_FACILIDADE_BENEFICIO","I","37","232");

INSERT INTO tb_auditoria_tabela VALUES("1004","TB_FUNCIONAMENTO","D","0","232");

INSERT INTO tb_auditoria_tabela VALUES("1005","TB_FUNCIONAMENTO","I","162","232");

INSERT INTO tb_auditoria_tabela VALUES("1006","TB_FUNCIONAMENTO","I","163","232");

INSERT INTO tb_auditoria_tabela VALUES("1007","TB_FUNCIONAMENTO","I","164","232");

INSERT INTO tb_auditoria_tabela VALUES("1008","TB_FUNCIONAMENTO","I","165","232");

INSERT INTO tb_auditoria_tabela VALUES("1009","TB_FUNCIONAMENTO","I","166","232");

INSERT INTO tb_auditoria_tabela VALUES("1010","TB_FUNCIONAMENTO","I","167","232");

INSERT INTO tb_auditoria_tabela VALUES("1011","TB_IMAGEM","I","14","232");

INSERT INTO tb_auditoria_tabela VALUES("1012","TB_IMAGEM_ASSINANTE","I","12","232");

INSERT INTO tb_auditoria_tabela VALUES("1013","TB_PESSOA","U","15","233");

INSERT INTO tb_auditoria_tabela VALUES("1014","TB_EMPRESA","U","12","233");

INSERT INTO tb_auditoria_tabela VALUES("1015","TB_ENDERECO","U","29","233");

INSERT INTO tb_auditoria_tabela VALUES("1016","TB_EMPRESA","U","12","233");

INSERT INTO tb_auditoria_tabela VALUES("1017","TB_CONTATO","U","15","233");

INSERT INTO tb_auditoria_tabela VALUES("1018","TB_FACILIDADE_BENEFICIO","D","0","233");

INSERT INTO tb_auditoria_tabela VALUES("1019","TB_FACILIDADE_BENEFICIO","I","38","233");

INSERT INTO tb_auditoria_tabela VALUES("1020","TB_FUNCIONAMENTO","D","0","233");

INSERT INTO tb_auditoria_tabela VALUES("1021","TB_FUNCIONAMENTO","I","168","233");

INSERT INTO tb_auditoria_tabela VALUES("1022","TB_FUNCIONAMENTO","I","169","233");

INSERT INTO tb_auditoria_tabela VALUES("1023","TB_FUNCIONAMENTO","I","170","233");

INSERT INTO tb_auditoria_tabela VALUES("1024","TB_FUNCIONAMENTO","I","171","233");

INSERT INTO tb_auditoria_tabela VALUES("1025","TB_FUNCIONAMENTO","I","172","233");

INSERT INTO tb_auditoria_tabela VALUES("1026","TB_FUNCIONAMENTO","I","173","233");

INSERT INTO tb_auditoria_tabela VALUES("1027","TB_FUNCIONAMENTO","I","174","233");

INSERT INTO tb_auditoria_tabela VALUES("1028","TB_PESSOA","U","15","234");

INSERT INTO tb_auditoria_tabela VALUES("1029","TB_EMPRESA","U","12","234");

INSERT INTO tb_auditoria_tabela VALUES("1030","TB_ENDERECO","U","29","234");

INSERT INTO tb_auditoria_tabela VALUES("1031","TB_EMPRESA","U","12","234");

INSERT INTO tb_auditoria_tabela VALUES("1032","TB_CONTATO","U","15","234");

INSERT INTO tb_auditoria_tabela VALUES("1033","TB_FACILIDADE_BENEFICIO","D","0","234");

INSERT INTO tb_auditoria_tabela VALUES("1034","TB_FACILIDADE_BENEFICIO","I","39","234");

INSERT INTO tb_auditoria_tabela VALUES("1035","TB_FUNCIONAMENTO","D","0","234");

INSERT INTO tb_auditoria_tabela VALUES("1036","TB_FUNCIONAMENTO","I","175","234");

INSERT INTO tb_auditoria_tabela VALUES("1037","TB_FUNCIONAMENTO","I","176","234");

INSERT INTO tb_auditoria_tabela VALUES("1038","TB_FUNCIONAMENTO","I","177","234");

INSERT INTO tb_auditoria_tabela VALUES("1039","TB_FUNCIONAMENTO","I","178","234");

INSERT INTO tb_auditoria_tabela VALUES("1040","TB_FUNCIONAMENTO","I","179","234");

INSERT INTO tb_auditoria_tabela VALUES("1041","TB_FUNCIONAMENTO","I","180","234");

INSERT INTO tb_auditoria_tabela VALUES("1042","TB_FUNCIONAMENTO","I","181","234");

INSERT INTO tb_auditoria_tabela VALUES("1043","TB_PESSOA","U","15","235");

INSERT INTO tb_auditoria_tabela VALUES("1044","TB_EMPRESA","U","12","235");

INSERT INTO tb_auditoria_tabela VALUES("1045","TB_ENDERECO","U","29","235");

INSERT INTO tb_auditoria_tabela VALUES("1046","TB_EMPRESA","U","12","235");

INSERT INTO tb_auditoria_tabela VALUES("1047","TB_CONTATO","U","15","235");

INSERT INTO tb_auditoria_tabela VALUES("1048","TB_FACILIDADE_BENEFICIO","D","0","235");

INSERT INTO tb_auditoria_tabela VALUES("1049","TB_FACILIDADE_BENEFICIO","I","40","235");

INSERT INTO tb_auditoria_tabela VALUES("1050","TB_FUNCIONAMENTO","D","0","235");

INSERT INTO tb_auditoria_tabela VALUES("1051","TB_FUNCIONAMENTO","I","182","235");

INSERT INTO tb_auditoria_tabela VALUES("1052","TB_FUNCIONAMENTO","I","183","235");

INSERT INTO tb_auditoria_tabela VALUES("1053","TB_FUNCIONAMENTO","I","184","235");

INSERT INTO tb_auditoria_tabela VALUES("1054","TB_FUNCIONAMENTO","I","185","235");

INSERT INTO tb_auditoria_tabela VALUES("1055","TB_FUNCIONAMENTO","I","186","235");

INSERT INTO tb_auditoria_tabela VALUES("1056","TB_FUNCIONAMENTO","I","187","235");

INSERT INTO tb_auditoria_tabela VALUES("1057","TB_FUNCIONAMENTO","I","188","235");

INSERT INTO tb_auditoria_tabela VALUES("1058","TB_FUNCIONALIDADE","I","14","236");

INSERT INTO tb_auditoria_tabela VALUES("1059","TB_PERFIL_FUNCIONALIDADE","I","11","236");

INSERT INTO tb_auditoria_tabela VALUES("1060","TB_FUNCIONALIDADE","I","15","237");

INSERT INTO tb_auditoria_tabela VALUES("1061","TB_PERFIL_FUNCIONALIDADE","I","12","237");

INSERT INTO tb_auditoria_tabela VALUES("1062","TB_DIA_ESPECIAL","I","1","238");

INSERT INTO tb_auditoria_tabela VALUES("1063","TB_DIA_ESPECIAL","I","2","239");

INSERT INTO tb_auditoria_tabela VALUES("1064","TB_DIA_ESPECIAL","U","2","240");

INSERT INTO tb_auditoria_tabela VALUES("1065","TB_DIA_ESPECIAL","I","3","241");

INSERT INTO tb_auditoria_tabela VALUES("1066","TB_DIA_ESPECIAL","D","2","242");

INSERT INTO tb_auditoria_tabela VALUES("1067","TB_DIA_ESPECIAL","D","3","243");

INSERT INTO tb_auditoria_tabela VALUES("1068","TB_DIA_ESPECIAL","I","4","244");

INSERT INTO tb_auditoria_tabela VALUES("1069","TB_DIA_ESPECIAL","D","4","245");

INSERT INTO tb_auditoria_tabela VALUES("1070","TB_FUNCIONALIDADE","I","16","246");

INSERT INTO tb_auditoria_tabela VALUES("1071","TB_PERFIL_FUNCIONALIDADE","I","13","246");

INSERT INTO tb_auditoria_tabela VALUES("1072","TB_FACILIDADE_PAGAMENTO","D","0","247");

INSERT INTO tb_auditoria_tabela VALUES("1073","TB_FACILIDADE_PAGAMENTO","I","1","248");

INSERT INTO tb_auditoria_tabela VALUES("1074","TB_FACILIDADE_PAGAMENTO","I","2","249");

INSERT INTO tb_auditoria_tabela VALUES("1075","TB_FACILIDADE_PAGAMENTO","I","3","250");

INSERT INTO tb_auditoria_tabela VALUES("1076","TB_FACILIDADE_PAGAMENTO","D","0","251");

INSERT INTO tb_auditoria_tabela VALUES("1077","TB_FACILIDADE_PAGAMENTO","I","4","252");

INSERT INTO tb_auditoria_tabela VALUES("1078","TB_FACILIDADE_PAGAMENTO","I","5","253");

INSERT INTO tb_auditoria_tabela VALUES("1079","TB_DIA_ESPECIAL","I","1","254");

INSERT INTO tb_auditoria_tabela VALUES("1080","TB_FACILIDADE_PAGAMENTO","D","0","255");

INSERT INTO tb_auditoria_tabela VALUES("1081","TB_FACILIDADE_PAGAMENTO","I","6","256");

INSERT INTO tb_auditoria_tabela VALUES("1082","TB_FACILIDADE_PAGAMENTO","I","7","257");

INSERT INTO tb_auditoria_tabela VALUES("1083","TB_FACILIDADE_PAGAMENTO","I","8","258");

INSERT INTO tb_auditoria_tabela VALUES("1084","TB_FACILIDADE_PAGAMENTO","D","0","259");

INSERT INTO tb_auditoria_tabela VALUES("1085","TB_FACILIDADE_PAGAMENTO","I","9","260");

INSERT INTO tb_auditoria_tabela VALUES("1086","TB_FACILIDADE_PAGAMENTO","D","0","261");

INSERT INTO tb_auditoria_tabela VALUES("1087","TB_FACILIDADE_PAGAMENTO","I","10","262");

INSERT INTO tb_auditoria_tabela VALUES("1088","TB_FACILIDADE_PAGAMENTO","D","0","263");

INSERT INTO tb_auditoria_tabela VALUES("1089","TB_FACILIDADE_PAGAMENTO","I","11","264");

INSERT INTO tb_auditoria_tabela VALUES("1090","TB_FUNCIONALIDADE","I","17","265");

INSERT INTO tb_auditoria_tabela VALUES("1091","TB_PERFIL_FUNCIONALIDADE","I","14","265");

INSERT INTO tb_auditoria_tabela VALUES("1092","TB_FACILIDADE_PAGAMENTO","D","0","266");

INSERT INTO tb_auditoria_tabela VALUES("1093","TB_FACILIDADE_PAGAMENTO","I","12","267");

INSERT INTO tb_auditoria_tabela VALUES("1094","TB_FACILIDADE_PAGAMENTO","D","0","268");

INSERT INTO tb_auditoria_tabela VALUES("1095","TB_FACILIDADE_PAGAMENTO","I","13","269");

INSERT INTO tb_auditoria_tabela VALUES("1096","TB_FACILIDADE_PAGAMENTO","D","0","270");

INSERT INTO tb_auditoria_tabela VALUES("1097","TB_FACILIDADE_PAGAMENTO","I","14","271");

INSERT INTO tb_auditoria_tabela VALUES("1098","TB_FACILIDADE_PAGAMENTO","I","15","272");

INSERT INTO tb_auditoria_tabela VALUES("1099","TB_FACILIDADE_PAGAMENTO","D","0","273");

INSERT INTO tb_auditoria_tabela VALUES("1100","TB_FACILIDADE_PAGAMENTO","I","16","274");

INSERT INTO tb_auditoria_tabela VALUES("1101","TB_FACILIDADE_PAGAMENTO","I","17","275");

INSERT INTO tb_auditoria_tabela VALUES("1102","TB_FACILIDADE_PAGAMENTO","I","18","276");

INSERT INTO tb_auditoria_tabela VALUES("1103","TB_FACILIDADE_PAGAMENTO","D","0","277");

INSERT INTO tb_auditoria_tabela VALUES("1104","TB_FACILIDADE_PAGAMENTO","I","19","278");

INSERT INTO tb_auditoria_tabela VALUES("1105","TB_FACILIDADE_PAGAMENTO","I","20","279");

INSERT INTO tb_auditoria_tabela VALUES("1106","TB_FACILIDADE_PAGAMENTO","I","21","280");

INSERT INTO tb_auditoria_tabela VALUES("1107","TB_FACILIDADE_PAGAMENTO","I","22","281");

INSERT INTO tb_auditoria_tabela VALUES("1109","TB_PAGAMENTO_BANDEIRA_CARTAO","I","2","283");

INSERT INTO tb_auditoria_tabela VALUES("1110","TB_TAXA_CARTAO","I","1","283");

INSERT INTO tb_auditoria_tabela VALUES("1111","TB_PAGAMENTO_BANDEIRA_CARTAO","I","3","283");

INSERT INTO tb_auditoria_tabela VALUES("1112","TB_TAXA_CARTAO","I","2","283");

INSERT INTO tb_auditoria_tabela VALUES("1113","TB_PAGAMENTO_BANDEIRA_CARTAO","I","4","283");

INSERT INTO tb_auditoria_tabela VALUES("1114","TB_TAXA_CARTAO","I","3","283");

INSERT INTO tb_auditoria_tabela VALUES("1129","TB_PAGAMENTO_BANDEIRA_CARTAO","I","13","286");

INSERT INTO tb_auditoria_tabela VALUES("1130","TB_TAXA_CARTAO","I","10","286");

INSERT INTO tb_auditoria_tabela VALUES("1131","TB_PAGAMENTO_BANDEIRA_CARTAO","I","14","286");

INSERT INTO tb_auditoria_tabela VALUES("1132","TB_TAXA_CARTAO","I","11","286");

INSERT INTO tb_auditoria_tabela VALUES("1133","TB_PAGAMENTO_BANDEIRA_CARTAO","I","15","286");

INSERT INTO tb_auditoria_tabela VALUES("1134","TB_TAXA_CARTAO","I","12","286");

INSERT INTO tb_auditoria_tabela VALUES("1135","TB_PAGAMENTO_BANDEIRA_CARTAO","I","16","287");

INSERT INTO tb_auditoria_tabela VALUES("1136","TB_TAXA_CARTAO","I","13","287");

INSERT INTO tb_auditoria_tabela VALUES("1137","TB_PAGAMENTO_BANDEIRA_CARTAO","I","17","287");

INSERT INTO tb_auditoria_tabela VALUES("1138","TB_TAXA_CARTAO","I","14","287");

INSERT INTO tb_auditoria_tabela VALUES("1139","TB_PAGAMENTO_BANDEIRA_CARTAO","I","18","288");

INSERT INTO tb_auditoria_tabela VALUES("1140","TB_TAXA_CARTAO","I","15","288");

INSERT INTO tb_auditoria_tabela VALUES("1141","TB_PAGAMENTO_BANDEIRA_CARTAO","I","19","288");

INSERT INTO tb_auditoria_tabela VALUES("1142","TB_TAXA_CARTAO","I","16","288");

INSERT INTO tb_auditoria_tabela VALUES("1143","TB_PAGAMENTO_BANDEIRA_CARTAO","I","20","288");

INSERT INTO tb_auditoria_tabela VALUES("1144","TB_TAXA_CARTAO","I","17","288");

INSERT INTO tb_auditoria_tabela VALUES("1145","TB_PAGAMENTO_BANDEIRA_CARTAO","I","21","289");

INSERT INTO tb_auditoria_tabela VALUES("1146","TB_TAXA_CARTAO","I","18","289");

INSERT INTO tb_auditoria_tabela VALUES("1147","TB_PAGAMENTO_BANDEIRA_CARTAO","I","22","289");

INSERT INTO tb_auditoria_tabela VALUES("1148","TB_TAXA_CARTAO","I","19","289");

INSERT INTO tb_auditoria_tabela VALUES("1149","TB_PAGAMENTO_BANDEIRA_CARTAO","I","23","289");

INSERT INTO tb_auditoria_tabela VALUES("1150","TB_TAXA_CARTAO","I","20","289");

INSERT INTO tb_auditoria_tabela VALUES("1151","TB_PAGAMENTO_BANDEIRA_CARTAO","I","24","290");

INSERT INTO tb_auditoria_tabela VALUES("1152","TB_TAXA_CARTAO","I","21","290");

INSERT INTO tb_auditoria_tabela VALUES("1153","TB_PAGAMENTO_BANDEIRA_CARTAO","I","25","290");

INSERT INTO tb_auditoria_tabela VALUES("1154","TB_TAXA_CARTAO","I","22","290");

INSERT INTO tb_auditoria_tabela VALUES("1155","TB_PAGAMENTO_BANDEIRA_CARTAO","I","26","291");

INSERT INTO tb_auditoria_tabela VALUES("1156","TB_TAXA_CARTAO","I","23","291");

INSERT INTO tb_auditoria_tabela VALUES("1157","TB_PAGAMENTO_BANDEIRA_CARTAO","I","27","291");

INSERT INTO tb_auditoria_tabela VALUES("1158","TB_TAXA_CARTAO","I","24","291");

INSERT INTO tb_auditoria_tabela VALUES("1159","TB_TAXA_CARTAO","I","25","292");

INSERT INTO tb_auditoria_tabela VALUES("1160","TB_TAXA_CARTAO","I","26","292");

INSERT INTO tb_auditoria_tabela VALUES("1161","TB_TAXA_CARTAO","I","27","292");

INSERT INTO tb_auditoria_tabela VALUES("1162","TB_TAXA_CARTAO","I","28","293");

INSERT INTO tb_auditoria_tabela VALUES("1163","TB_TAXA_CARTAO","I","29","293");

INSERT INTO tb_auditoria_tabela VALUES("1164","TB_TAXA_CARTAO","I","30","293");

INSERT INTO tb_auditoria_tabela VALUES("1165","TB_PAGAMENTO_BANDEIRA_CARTAO","I","1","294");

INSERT INTO tb_auditoria_tabela VALUES("1166","TB_TAXA_CARTAO","I","1","294");

INSERT INTO tb_auditoria_tabela VALUES("1167","TB_PAGAMENTO_BANDEIRA_CARTAO","I","2","294");

INSERT INTO tb_auditoria_tabela VALUES("1168","TB_TAXA_CARTAO","I","2","294");

INSERT INTO tb_auditoria_tabela VALUES("1169","TB_PAGAMENTO_BANDEIRA_CARTAO","I","3","294");

INSERT INTO tb_auditoria_tabela VALUES("1170","TB_TAXA_CARTAO","I","3","294");

INSERT INTO tb_auditoria_tabela VALUES("1171","TB_TAXA_CARTAO","I","4","295");

INSERT INTO tb_auditoria_tabela VALUES("1172","TB_TAXA_CARTAO","I","5","295");

INSERT INTO tb_auditoria_tabela VALUES("1173","TB_TAXA_CARTAO","I","6","295");

INSERT INTO tb_auditoria_tabela VALUES("1175","TB_PAGAMENTO_BANDEIRA_CARTAO","I","5","297");

INSERT INTO tb_auditoria_tabela VALUES("1176","TB_TAXA_CARTAO","I","7","297");

INSERT INTO tb_auditoria_tabela VALUES("1177","TB_PAGAMENTO_BANDEIRA_CARTAO","I","6","297");

INSERT INTO tb_auditoria_tabela VALUES("1178","TB_TAXA_CARTAO","I","8","297");

INSERT INTO tb_auditoria_tabela VALUES("1179","TB_PAGAMENTO_BANDEIRA_CARTAO","I","7","297");

INSERT INTO tb_auditoria_tabela VALUES("1180","TB_TAXA_CARTAO","I","9","297");

INSERT INTO tb_auditoria_tabela VALUES("1181","TB_TAXA_CARTAO","I","10","298");

INSERT INTO tb_auditoria_tabela VALUES("1182","TB_TAXA_CARTAO","I","11","298");

INSERT INTO tb_auditoria_tabela VALUES("1183","TB_TAXA_CARTAO","I","12","298");

INSERT INTO tb_auditoria_tabela VALUES("1196","TB_TAXA_CARTAO","I","25","303");

INSERT INTO tb_auditoria_tabela VALUES("1197","TB_TAXA_CARTAO","I","26","303");

INSERT INTO tb_auditoria_tabela VALUES("1198","TB_TAXA_CARTAO","I","27","303");

INSERT INTO tb_auditoria_tabela VALUES("1199","TB_TAXA_CARTAO","I","28","304");

INSERT INTO tb_auditoria_tabela VALUES("1200","TB_TAXA_CARTAO","I","29","304");

INSERT INTO tb_auditoria_tabela VALUES("1201","TB_PAGAMENTO_BANDEIRA_CARTAO","I","8","305");

INSERT INTO tb_auditoria_tabela VALUES("1202","TB_TAXA_CARTAO","I","30","305");

INSERT INTO tb_auditoria_tabela VALUES("1203","TB_PAGAMENTO_BANDEIRA_CARTAO","I","9","305");

INSERT INTO tb_auditoria_tabela VALUES("1204","TB_TAXA_CARTAO","I","31","305");

INSERT INTO tb_auditoria_tabela VALUES("1205","TB_TAXA_CARTAO","I","32","306");

INSERT INTO tb_auditoria_tabela VALUES("1206","TB_TAXA_CARTAO","I","33","306");

INSERT INTO tb_auditoria_tabela VALUES("1207","TB_PAGAMENTO_BANDEIRA_CARTAO","I","10","306");

INSERT INTO tb_auditoria_tabela VALUES("1208","TB_TAXA_CARTAO","I","34","306");

INSERT INTO tb_auditoria_tabela VALUES("1209","TB_FUNCIONALIDADE","I","18","307");

INSERT INTO tb_auditoria_tabela VALUES("1210","TB_PERFIL_FUNCIONALIDADE","I","15","307");

INSERT INTO tb_auditoria_tabela VALUES("1211","TB_FUNCIONALIDADE","I","19","308");

INSERT INTO tb_auditoria_tabela VALUES("1212","TB_PERFIL_FUNCIONALIDADE","I","16","308");

INSERT INTO tb_auditoria_tabela VALUES("1213","TB_FUNCIONALIDADE","I","20","309");

INSERT INTO tb_auditoria_tabela VALUES("1214","TB_PERFIL_FUNCIONALIDADE","I","17","309");

INSERT INTO tb_auditoria_tabela VALUES("1215","TB_CONFIG_CLIENTE","I","1","310");

INSERT INTO tb_auditoria_tabela VALUES("1216","TB_CONFIG_CLIENTE","U","1","311");

INSERT INTO tb_auditoria_tabela VALUES("1217","TB_CONFIG_CLIENTE","U","1","312");

INSERT INTO tb_auditoria_tabela VALUES("1218","TB_CONFIG_CLIENTE","U","1","313");

INSERT INTO tb_auditoria_tabela VALUES("1219","TB_FUNCIONALIDADE","I","21","314");

INSERT INTO tb_auditoria_tabela VALUES("1220","TB_PERFIL_FUNCIONALIDADE","I","18","314");

INSERT INTO tb_auditoria_tabela VALUES("1221","TB_CONFIG_AGENDAMENTO","I","1","315");

INSERT INTO tb_auditoria_tabela VALUES("1222","TB_CONFIG_AGENDAMENTO","U","1","316");

INSERT INTO tb_auditoria_tabela VALUES("1223","TB_CONFIG_AGENDAMENTO","I","2","317");

INSERT INTO tb_auditoria_tabela VALUES("1224","TB_FUNCIONALIDADE","I","22","318");

INSERT INTO tb_auditoria_tabela VALUES("1225","TB_PERFIL_FUNCIONALIDADE","I","19","318");

INSERT INTO tb_auditoria_tabela VALUES("1226","TB_MOTIVO_DESCONTO_ASSINANTE","I","1","319");

INSERT INTO tb_auditoria_tabela VALUES("1227","TB_MOTIVO_DESCONTO_ASSINANTE","I","2","320");

INSERT INTO tb_auditoria_tabela VALUES("1228","TB_MOTIVO_DESCONTO_ASSINANTE","I","3","321");

INSERT INTO tb_auditoria_tabela VALUES("1229","TB_MOTIVO_DESCONTO_ASSINANTE","I","4","322");

INSERT INTO tb_auditoria_tabela VALUES("1230","TB_MOTIVO_DESCONTO_ASSINANTE","I","5","323");

INSERT INTO tb_auditoria_tabela VALUES("1231","TB_MOTIVO_DESCONTO_ASSINANTE","I","6","324");

INSERT INTO tb_auditoria_tabela VALUES("1232","TB_MOTIVO_DESCONTO_ASSINANTE","I","7","325");

INSERT INTO tb_auditoria_tabela VALUES("1233","TB_MOTIVO_DESCONTO_ASSINANTE","I","8","326");

INSERT INTO tb_auditoria_tabela VALUES("1234","TB_MOTIVO_DESCONTO_ASSINANTE","I","9","327");

INSERT INTO tb_auditoria_tabela VALUES("1235","TB_MOTIVO_DESCONTO_ASSINANTE","I","10","328");

INSERT INTO tb_auditoria_tabela VALUES("1236","TB_MOTIVO_DESCONTO_ASSINANTE","I","11","329");

INSERT INTO tb_auditoria_tabela VALUES("1237","TB_MOTIVO_DESCONTO_ASSINANTE","I","12","330");

INSERT INTO tb_auditoria_tabela VALUES("1238","TB_MOTIVO_DESCONTO_ASSINANTE","I","13","331");

INSERT INTO tb_auditoria_tabela VALUES("1239","TB_MOTIVO_DESCONTO_ASSINANTE","I","14","332");

INSERT INTO tb_auditoria_tabela VALUES("1240","TB_MOTIVO_DESCONTO_ASSINANTE","I","15","333");

INSERT INTO tb_auditoria_tabela VALUES("1241","TB_MOTIVO_DESCONTO_ASSINANTE","I","16","334");

INSERT INTO tb_auditoria_tabela VALUES("1242","TB_MOTIVO_DESCONTO_ASSINANTE","I","17","335");

INSERT INTO tb_auditoria_tabela VALUES("1243","TB_MOTIVO_DESCONTO_ASSINANTE","I","1","336");

INSERT INTO tb_auditoria_tabela VALUES("1244","TB_MOTIVO_DESCONTO_ASSINANTE","I","2","337");

INSERT INTO tb_auditoria_tabela VALUES("1245","TB_MOTIVO_DESCONTO_ASSINANTE","I","3","338");

INSERT INTO tb_auditoria_tabela VALUES("1246","TB_MOTIVO_DESCONTO_ASSINANTE","I","4","339");

INSERT INTO tb_auditoria_tabela VALUES("1247","TB_MOTIVO_DESCONTO_ASSINANTE","I","5","340");

INSERT INTO tb_auditoria_tabela VALUES("1248","TB_MOTIVO_DESCONTO_ASSINANTE","I","6","341");

INSERT INTO tb_auditoria_tabela VALUES("1249","TB_MOTIVO_DESCONTO_ASSINANTE","I","7","342");

INSERT INTO tb_auditoria_tabela VALUES("1250","TB_MOTIVO_DESCONTO_ASSINANTE","I","8","343");

INSERT INTO tb_auditoria_tabela VALUES("1251","TB_MOTIVO_DESCONTO_ASSINANTE","I","9","344");

INSERT INTO tb_auditoria_tabela VALUES("1252","TB_MOTIVO_DESCONTO_ASSINANTE","I","10","345");

INSERT INTO tb_auditoria_tabela VALUES("1253","TB_MOTIVO_DESCONTO_ASSINANTE","I","11","346");

INSERT INTO tb_auditoria_tabela VALUES("1254","TB_MOTIVO_DESCONTO_ASSINANTE","I","12","347");

INSERT INTO tb_auditoria_tabela VALUES("1255","TB_MOTIVO_DESCONTO_ASSINANTE","I","13","348");

INSERT INTO tb_auditoria_tabela VALUES("1256","TB_MOTIVO_DESCONTO_ASSINANTE","I","14","349");

INSERT INTO tb_auditoria_tabela VALUES("1257","TB_MOTIVO_DESCONTO_ASSINANTE","I","15","350");

INSERT INTO tb_auditoria_tabela VALUES("1258","TB_MOTIVO_DESCONTO_ASSINANTE","I","16","351");

INSERT INTO tb_auditoria_tabela VALUES("1275","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","354");

INSERT INTO tb_auditoria_tabela VALUES("1276","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","354");

INSERT INTO tb_auditoria_tabela VALUES("1277","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","354");

INSERT INTO tb_auditoria_tabela VALUES("1278","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","354");

INSERT INTO tb_auditoria_tabela VALUES("1279","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","354");

INSERT INTO tb_auditoria_tabela VALUES("1280","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","354");

INSERT INTO tb_auditoria_tabela VALUES("1281","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","354");

INSERT INTO tb_auditoria_tabela VALUES("1282","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","354");

INSERT INTO tb_auditoria_tabela VALUES("1283","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","354");

INSERT INTO tb_auditoria_tabela VALUES("1284","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","354");

INSERT INTO tb_auditoria_tabela VALUES("1285","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","354");

INSERT INTO tb_auditoria_tabela VALUES("1286","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","355");

INSERT INTO tb_auditoria_tabela VALUES("1287","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","355");

INSERT INTO tb_auditoria_tabela VALUES("1288","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","355");

INSERT INTO tb_auditoria_tabela VALUES("1289","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","355");

INSERT INTO tb_auditoria_tabela VALUES("1290","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","355");

INSERT INTO tb_auditoria_tabela VALUES("1291","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","355");

INSERT INTO tb_auditoria_tabela VALUES("1292","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","355");

INSERT INTO tb_auditoria_tabela VALUES("1293","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","355");

INSERT INTO tb_auditoria_tabela VALUES("1294","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","355");

INSERT INTO tb_auditoria_tabela VALUES("1295","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","355");

INSERT INTO tb_auditoria_tabela VALUES("1296","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","356");

INSERT INTO tb_auditoria_tabela VALUES("1297","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","356");

INSERT INTO tb_auditoria_tabela VALUES("1298","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","356");

INSERT INTO tb_auditoria_tabela VALUES("1299","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","356");

INSERT INTO tb_auditoria_tabela VALUES("1300","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","356");

INSERT INTO tb_auditoria_tabela VALUES("1301","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","356");

INSERT INTO tb_auditoria_tabela VALUES("1302","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","356");

INSERT INTO tb_auditoria_tabela VALUES("1303","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","356");

INSERT INTO tb_auditoria_tabela VALUES("1304","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","356");

INSERT INTO tb_auditoria_tabela VALUES("1305","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","356");

INSERT INTO tb_auditoria_tabela VALUES("1306","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","357");

INSERT INTO tb_auditoria_tabela VALUES("1307","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","357");

INSERT INTO tb_auditoria_tabela VALUES("1308","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","357");

INSERT INTO tb_auditoria_tabela VALUES("1309","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","357");

INSERT INTO tb_auditoria_tabela VALUES("1310","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","357");

INSERT INTO tb_auditoria_tabela VALUES("1311","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","357");

INSERT INTO tb_auditoria_tabela VALUES("1312","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","357");

INSERT INTO tb_auditoria_tabela VALUES("1313","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","357");

INSERT INTO tb_auditoria_tabela VALUES("1314","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","357");

INSERT INTO tb_auditoria_tabela VALUES("1315","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","357");

INSERT INTO tb_auditoria_tabela VALUES("1316","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","358");

INSERT INTO tb_auditoria_tabela VALUES("1317","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","358");

INSERT INTO tb_auditoria_tabela VALUES("1318","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","358");

INSERT INTO tb_auditoria_tabela VALUES("1319","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","358");

INSERT INTO tb_auditoria_tabela VALUES("1320","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","358");

INSERT INTO tb_auditoria_tabela VALUES("1321","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","358");

INSERT INTO tb_auditoria_tabela VALUES("1322","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","358");

INSERT INTO tb_auditoria_tabela VALUES("1323","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","358");

INSERT INTO tb_auditoria_tabela VALUES("1324","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","358");

INSERT INTO tb_auditoria_tabela VALUES("1325","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","358");

INSERT INTO tb_auditoria_tabela VALUES("1326","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","358");

INSERT INTO tb_auditoria_tabela VALUES("1327","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","358");

INSERT INTO tb_auditoria_tabela VALUES("1328","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","358");

INSERT INTO tb_auditoria_tabela VALUES("1329","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","358");

INSERT INTO tb_auditoria_tabela VALUES("1330","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","358");

INSERT INTO tb_auditoria_tabela VALUES("1331","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","358");

INSERT INTO tb_auditoria_tabela VALUES("1332","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","358");

INSERT INTO tb_auditoria_tabela VALUES("1333","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","358");

INSERT INTO tb_auditoria_tabela VALUES("1334","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","359");

INSERT INTO tb_auditoria_tabela VALUES("1335","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","359");

INSERT INTO tb_auditoria_tabela VALUES("1336","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","359");

INSERT INTO tb_auditoria_tabela VALUES("1337","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","359");

INSERT INTO tb_auditoria_tabela VALUES("1338","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","359");

INSERT INTO tb_auditoria_tabela VALUES("1339","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","359");

INSERT INTO tb_auditoria_tabela VALUES("1340","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","359");

INSERT INTO tb_auditoria_tabela VALUES("1341","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","359");

INSERT INTO tb_auditoria_tabela VALUES("1342","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","359");

INSERT INTO tb_auditoria_tabela VALUES("1343","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","359");

INSERT INTO tb_auditoria_tabela VALUES("1344","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","359");

INSERT INTO tb_auditoria_tabela VALUES("1345","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","359");

INSERT INTO tb_auditoria_tabela VALUES("1346","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","359");

INSERT INTO tb_auditoria_tabela VALUES("1347","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","359");

INSERT INTO tb_auditoria_tabela VALUES("1348","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","359");

INSERT INTO tb_auditoria_tabela VALUES("1349","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","359");

INSERT INTO tb_auditoria_tabela VALUES("1350","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","359");

INSERT INTO tb_auditoria_tabela VALUES("1351","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","359");

INSERT INTO tb_auditoria_tabela VALUES("1352","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","359");

INSERT INTO tb_auditoria_tabela VALUES("1353","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","359");

INSERT INTO tb_auditoria_tabela VALUES("1354","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","359");

INSERT INTO tb_auditoria_tabela VALUES("1355","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","359");

INSERT INTO tb_auditoria_tabela VALUES("1356","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","359");

INSERT INTO tb_auditoria_tabela VALUES("1357","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","360");

INSERT INTO tb_auditoria_tabela VALUES("1358","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","360");

INSERT INTO tb_auditoria_tabela VALUES("1359","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","360");

INSERT INTO tb_auditoria_tabela VALUES("1360","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","360");

INSERT INTO tb_auditoria_tabela VALUES("1361","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","360");

INSERT INTO tb_auditoria_tabela VALUES("1362","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","360");

INSERT INTO tb_auditoria_tabela VALUES("1363","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","360");

INSERT INTO tb_auditoria_tabela VALUES("1364","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","360");

INSERT INTO tb_auditoria_tabela VALUES("1365","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","360");

INSERT INTO tb_auditoria_tabela VALUES("1366","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","360");

INSERT INTO tb_auditoria_tabela VALUES("1367","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","360");

INSERT INTO tb_auditoria_tabela VALUES("1368","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","360");

INSERT INTO tb_auditoria_tabela VALUES("1369","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","360");

INSERT INTO tb_auditoria_tabela VALUES("1370","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","360");

INSERT INTO tb_auditoria_tabela VALUES("1371","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","360");

INSERT INTO tb_auditoria_tabela VALUES("1372","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","360");

INSERT INTO tb_auditoria_tabela VALUES("1373","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","360");

INSERT INTO tb_auditoria_tabela VALUES("1374","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","360");

INSERT INTO tb_auditoria_tabela VALUES("1375","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","360");

INSERT INTO tb_auditoria_tabela VALUES("1376","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","360");

INSERT INTO tb_auditoria_tabela VALUES("1377","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","360");

INSERT INTO tb_auditoria_tabela VALUES("1378","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","360");

INSERT INTO tb_auditoria_tabela VALUES("1379","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","360");

INSERT INTO tb_auditoria_tabela VALUES("1380","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","360");

INSERT INTO tb_auditoria_tabela VALUES("1381","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","361");

INSERT INTO tb_auditoria_tabela VALUES("1382","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","361");

INSERT INTO tb_auditoria_tabela VALUES("1383","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","361");

INSERT INTO tb_auditoria_tabela VALUES("1384","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","361");

INSERT INTO tb_auditoria_tabela VALUES("1385","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","361");

INSERT INTO tb_auditoria_tabela VALUES("1386","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","361");

INSERT INTO tb_auditoria_tabela VALUES("1387","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","361");

INSERT INTO tb_auditoria_tabela VALUES("1388","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","361");

INSERT INTO tb_auditoria_tabela VALUES("1389","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","361");

INSERT INTO tb_auditoria_tabela VALUES("1390","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","361");

INSERT INTO tb_auditoria_tabela VALUES("1391","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","361");

INSERT INTO tb_auditoria_tabela VALUES("1392","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","361");

INSERT INTO tb_auditoria_tabela VALUES("1393","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","361");

INSERT INTO tb_auditoria_tabela VALUES("1394","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","361");

INSERT INTO tb_auditoria_tabela VALUES("1395","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","361");

INSERT INTO tb_auditoria_tabela VALUES("1396","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","361");

INSERT INTO tb_auditoria_tabela VALUES("1397","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","362");

INSERT INTO tb_auditoria_tabela VALUES("1398","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","362");

INSERT INTO tb_auditoria_tabela VALUES("1399","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","362");

INSERT INTO tb_auditoria_tabela VALUES("1400","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","362");

INSERT INTO tb_auditoria_tabela VALUES("1401","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","362");

INSERT INTO tb_auditoria_tabela VALUES("1402","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","362");

INSERT INTO tb_auditoria_tabela VALUES("1403","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","362");

INSERT INTO tb_auditoria_tabela VALUES("1404","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","362");

INSERT INTO tb_auditoria_tabela VALUES("1405","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","363");

INSERT INTO tb_auditoria_tabela VALUES("1406","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","363");

INSERT INTO tb_auditoria_tabela VALUES("1407","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","363");

INSERT INTO tb_auditoria_tabela VALUES("1408","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","363");

INSERT INTO tb_auditoria_tabela VALUES("1409","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","363");

INSERT INTO tb_auditoria_tabela VALUES("1410","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","363");

INSERT INTO tb_auditoria_tabela VALUES("1411","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","363");

INSERT INTO tb_auditoria_tabela VALUES("1412","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","363");

INSERT INTO tb_auditoria_tabela VALUES("1413","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","364");

INSERT INTO tb_auditoria_tabela VALUES("1414","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","364");

INSERT INTO tb_auditoria_tabela VALUES("1415","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","364");

INSERT INTO tb_auditoria_tabela VALUES("1416","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","364");

INSERT INTO tb_auditoria_tabela VALUES("1417","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","364");

INSERT INTO tb_auditoria_tabela VALUES("1418","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","364");

INSERT INTO tb_auditoria_tabela VALUES("1419","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","364");

INSERT INTO tb_auditoria_tabela VALUES("1420","TB_MOTIVO_DESCONTO_ASSINANTE","U","16","364");

INSERT INTO tb_auditoria_tabela VALUES("1421","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","364");

INSERT INTO tb_auditoria_tabela VALUES("1422","TB_MOTIVO_DESCONTO_ASSINANTE","U","10","364");

INSERT INTO tb_auditoria_tabela VALUES("1423","TB_MOTIVO_DESCONTO_ASSINANTE","U","11","364");

INSERT INTO tb_auditoria_tabela VALUES("1424","TB_MOTIVO_DESCONTO_ASSINANTE","U","12","364");

INSERT INTO tb_auditoria_tabela VALUES("1425","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","364");

INSERT INTO tb_auditoria_tabela VALUES("1426","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","364");

INSERT INTO tb_auditoria_tabela VALUES("1427","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","364");

INSERT INTO tb_auditoria_tabela VALUES("1428","TB_MOTIVO_DESCONTO_ASSINANTE","U","9","364");

INSERT INTO tb_auditoria_tabela VALUES("1429","TB_MOTIVO_DESCONTO_ASSINANTE","U","13","364");

INSERT INTO tb_auditoria_tabela VALUES("1430","TB_MOTIVO_DESCONTO_ASSINANTE","U","14","364");

INSERT INTO tb_auditoria_tabela VALUES("1431","TB_MOTIVO_DESCONTO_ASSINANTE","U","15","364");

INSERT INTO tb_auditoria_tabela VALUES("1432","TB_FUNCIONALIDADE","I","23","365");

INSERT INTO tb_auditoria_tabela VALUES("1433","TB_PERFIL_FUNCIONALIDADE","I","20","365");

INSERT INTO tb_auditoria_tabela VALUES("1434","TB_FUNCIONALIDADE","I","24","366");

INSERT INTO tb_auditoria_tabela VALUES("1435","TB_PERFIL_FUNCIONALIDADE","I","21","366");

INSERT INTO tb_auditoria_tabela VALUES("1436","TB_PESSOA","U","15","367");

INSERT INTO tb_auditoria_tabela VALUES("1437","TB_EMPRESA","U","12","367");

INSERT INTO tb_auditoria_tabela VALUES("1438","TB_ENDERECO","U","29","367");

INSERT INTO tb_auditoria_tabela VALUES("1439","TB_EMPRESA","U","12","367");

INSERT INTO tb_auditoria_tabela VALUES("1440","TB_CONTATO","U","15","367");

INSERT INTO tb_auditoria_tabela VALUES("1441","TB_FACILIDADE_BENEFICIO","D","","367");

INSERT INTO tb_auditoria_tabela VALUES("1442","TB_FACILIDADE_BENEFICIO","I","41","367");

INSERT INTO tb_auditoria_tabela VALUES("1443","TB_FUNCIONAMENTO","D","","367");

INSERT INTO tb_auditoria_tabela VALUES("1444","TB_FUNCIONAMENTO","I","189","367");

INSERT INTO tb_auditoria_tabela VALUES("1445","TB_FUNCIONAMENTO","I","190","367");

INSERT INTO tb_auditoria_tabela VALUES("1446","TB_FUNCIONAMENTO","I","191","367");

INSERT INTO tb_auditoria_tabela VALUES("1447","TB_FUNCIONAMENTO","I","192","367");

INSERT INTO tb_auditoria_tabela VALUES("1448","TB_FUNCIONAMENTO","I","193","367");

INSERT INTO tb_auditoria_tabela VALUES("1449","TB_FUNCIONAMENTO","I","194","367");

INSERT INTO tb_auditoria_tabela VALUES("1450","TB_FUNCIONAMENTO","I","195","367");

INSERT INTO tb_auditoria_tabela VALUES("1451","TB_PESSOA","U","15","368");

INSERT INTO tb_auditoria_tabela VALUES("1452","TB_EMPRESA","U","12","368");

INSERT INTO tb_auditoria_tabela VALUES("1453","TB_ENDERECO","U","29","368");

INSERT INTO tb_auditoria_tabela VALUES("1454","TB_EMPRESA","U","12","368");

INSERT INTO tb_auditoria_tabela VALUES("1455","TB_CONTATO","U","15","368");

INSERT INTO tb_auditoria_tabela VALUES("1456","TB_FACILIDADE_BENEFICIO","D","","368");

INSERT INTO tb_auditoria_tabela VALUES("1457","TB_FACILIDADE_BENEFICIO","I","42","368");

INSERT INTO tb_auditoria_tabela VALUES("1458","TB_FUNCIONAMENTO","D","","368");

INSERT INTO tb_auditoria_tabela VALUES("1459","TB_FUNCIONAMENTO","I","196","368");

INSERT INTO tb_auditoria_tabela VALUES("1460","TB_FUNCIONAMENTO","I","197","368");

INSERT INTO tb_auditoria_tabela VALUES("1461","TB_FUNCIONAMENTO","I","198","368");

INSERT INTO tb_auditoria_tabela VALUES("1462","TB_FUNCIONAMENTO","I","199","368");

INSERT INTO tb_auditoria_tabela VALUES("1463","TB_FUNCIONAMENTO","I","200","368");

INSERT INTO tb_auditoria_tabela VALUES("1464","TB_FUNCIONAMENTO","I","201","368");

INSERT INTO tb_auditoria_tabela VALUES("1465","TB_FUNCIONAMENTO","I","202","368");




DROP TABLE IF EXISTS tb_bandeira_cartao;


CREATE TABLE `tb_bandeira_cartao` (
  `co_bandeira_cartao` int(11) NOT NULL AUTO_INCREMENT,
  `no_bandeira_cartao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`co_bandeira_cartao`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_bandeira_cartao VALUES("1","Visa");

INSERT INTO tb_bandeira_cartao VALUES("2","MasterCard");

INSERT INTO tb_bandeira_cartao VALUES("3","American Express");

INSERT INTO tb_bandeira_cartao VALUES("4","Elo");

INSERT INTO tb_bandeira_cartao VALUES("5","HiperCard");

INSERT INTO tb_bandeira_cartao VALUES("6","PagSeguro");

INSERT INTO tb_bandeira_cartao VALUES("7","Maestro/RedeShop");

INSERT INTO tb_bandeira_cartao VALUES("8","Aura");




DROP TABLE IF EXISTS tb_cargo;


CREATE TABLE `tb_cargo` (
  `co_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `no_cargo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`co_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_config_agendamento;


CREATE TABLE `tb_config_agendamento` (
  `co_config_agendamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_intervalo` int(2) DEFAULT '0' COMMENT 'Em Minutos',
  `st_status_agendamento_site` varchar(1) DEFAULT 'C' COMMENT 'A - Aguardando confirmação do estabelecimento / C - Confirmado',
  `nu_antecedencia_agendamento` int(1) DEFAULT '1' COMMENT '1 - Sem Restrições / 2 - 1 Dia / 3 - 3 Dias / 4 - 7 Dias / 5 - 15 dias / 6 - 1 mês',
  `st_receber_email_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_enviar_email_confirmacao` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_config_agendamento`,`co_assinante`),
  KEY `fk_TB_CONFIG_AGENDAMENTO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO tb_config_agendamento VALUES("2","2","2","7","S","N","11");




DROP TABLE IF EXISTS tb_config_cliente;


CREATE TABLE `tb_config_cliente` (
  `co_config_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `st_marca_servico` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `nu_ausencia` int(2) DEFAULT '0' COMMENT 'Número que o cliente se ausentou e não poderar mias marcar serviços pelo site',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_config_cliente`,`co_assinante`),
  KEY `fk_TB_CONFIG_CLIENTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_config_cliente VALUES("1","S","3","11");




DROP TABLE IF EXISTS tb_conta_bancaria;


CREATE TABLE `tb_conta_bancaria` (
  `co_conta_bancaria` int(11) NOT NULL AUTO_INCREMENT,
  `nu_agencia` varchar(10) DEFAULT NULL,
  `nu_conta` varchar(20) DEFAULT NULL,
  `nu_banco` int(3) DEFAULT NULL,
  `tp_conta` varchar(2) DEFAULT 'CC' COMMENT 'CC - Conta corrente / CP - Conta Poupança / CS - Conta Salário',
  PRIMARY KEY (`co_conta_bancaria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_contato;


CREATE TABLE `tb_contato` (
  `co_contato` int(11) NOT NULL AUTO_INCREMENT,
  `nu_tel1` varchar(15) DEFAULT NULL,
  `nu_tel2` varchar(15) DEFAULT NULL,
  `nu_tel3` varchar(15) DEFAULT NULL,
  `nu_tel_0800` varchar(30) DEFAULT NULL,
  `ds_email` varchar(150) DEFAULT NULL,
  `ds_site` varchar(100) DEFAULT NULL,
  `ds_facebook` varchar(90) DEFAULT NULL,
  `ds_twitter` varchar(90) DEFAULT NULL,
  `ds_instagram` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`co_contato`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;


INSERT INTO tb_contato VALUES("1","61993274991","6130826060","0","","leonardomcbessa@gmail.com","","","","");

INSERT INTO tb_contato VALUES("15","23523462347","54364364364","","","leo@mail.com","www.site.com.br","","","");

INSERT INTO tb_contato VALUES("16","23425253666","","","","leonardomcbessa@gmail.com","","","","");

INSERT INTO tb_contato VALUES("17","54353643643","","","","ddssado@mail.com","","","","");

INSERT INTO tb_contato VALUES("18","61336699663","","","","mail@email.com","","","","");

INSERT INTO tb_contato VALUES("19","","","","","","","","","");

INSERT INTO tb_contato VALUES("20","","","","","","","","","");




DROP TABLE IF EXISTS tb_dia_especial;


CREATE TABLE `tb_dia_especial` (
  `co_dia_especial` int(11) NOT NULL AUTO_INCREMENT,
  `dt_dia` date DEFAULT NULL,
  `nu_dia_semana` int(1) DEFAULT NULL,
  `nu_hora_abertura` varchar(5) DEFAULT NULL,
  `nu_hora_fechamento` varchar(5) DEFAULT NULL,
  `ds_motivo` varchar(120) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_dia_especial`,`co_assinante`),
  KEY `fk_TB_DIA_ESPECIAL_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_dia_especial VALUES("1","2018-10-10","3","08:00","19:00","Dia novo","11");




DROP TABLE IF EXISTS tb_empresa;


CREATE TABLE `tb_empresa` (
  `co_empresa` int(11) NOT NULL AUTO_INCREMENT,
  `no_empresa` varchar(250) DEFAULT NULL COMMENT 'Razão Social\n',
  `no_fantasia` varchar(150) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `nu_cnpj` varchar(20) DEFAULT NULL,
  `nu_insc_estadual` varchar(20) DEFAULT NULL,
  `ds_observacao` text,
  `st_status` varchar(1) DEFAULT NULL,
  `co_pessoa` int(11) NOT NULL COMMENT 'Pessoa responsável pela empresa\n',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(11) NOT NULL,
  PRIMARY KEY (`co_empresa`,`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_EMPRESA_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_EMPRESA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_EMPRESA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_EMPRESA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


INSERT INTO tb_empresa VALUES("1","","Salão 1","2018-07-31 09:00:00","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("2","","Salão 10","2018-07-31 09:00:00","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("3","","Salão 1001","2018-07-31 09:00:00","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("4","","Salão 1023","2018-08-03 18:42:23","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("12","TESTE 01 RAZãO","MEU SALãO","2018-08-14 16:45:26","07844665000120","43543664","vev v","","0","29","15","0");

INSERT INTO tb_empresa VALUES("13","","Novo Esmaltaria 88","2018-08-16 23:59:20","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("14","","Novo Esmaltaria 10ggg","2018-08-28 10:59:39","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("15","","Salão novo visual","2018-09-17 16:45:33","","","","","0","0","0","0");




DROP TABLE IF EXISTS tb_endereco;


CREATE TABLE `tb_endereco` (
  `co_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `ds_endereco` varchar(150) DEFAULT NULL,
  `ds_complemento` varchar(100) DEFAULT NULL,
  `ds_bairro` varchar(80) DEFAULT NULL,
  `nu_cep` varchar(12) DEFAULT NULL,
  `no_cidade` varchar(80) DEFAULT NULL,
  `sg_uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`co_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;


INSERT INTO tb_endereco VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("16","","","","","","");

INSERT INTO tb_endereco VALUES("17","","","","","","");

INSERT INTO tb_endereco VALUES("23","","","","","","");

INSERT INTO tb_endereco VALUES("27","","","","","","");

INSERT INTO tb_endereco VALUES("28","QR 403 Conjunto 10","Casa 28","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("29","QR 403 Conjunto 10","Casa 28","Samambaia Norte (Samambaia)","72319111","Brasília","DF");




DROP TABLE IF EXISTS tb_facilidade_beneficio;


CREATE TABLE `tb_facilidade_beneficio` (
  `co_facilidade_beneficio` int(11) NOT NULL AUTO_INCREMENT,
  `tp_estabelecimento` int(1) DEFAULT '0' COMMENT '1 - Salão de Beleza / 2 - Barbearia / 3 - Clínica de Estética / 4 - SPA / 5 - Esmaltaria / 6 - Outro',
  `tp_atendimento` int(1) DEFAULT '0' COMMENT '1 - Somente no nosso estabelecimento / 2 - Somente em domicílio / 3 - No nosso estabelecimento e em domicílio',
  `tp_genero_especializado` int(1) DEFAULT '0' COMMENT '1 - Adultos e Crianças / 2 - Somente Adultos / 3 - Somente Crianças',
  `tp_estacionamento` int(1) DEFAULT '0' COMMENT '1 - Estacionamento - Grátis / 2 - Estacionamento - Pago / 3 - Não Possui Estacionamento',
  `st_lanchonete` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_televisao` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_wifi` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_acesso_deficiente` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_jogos` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_facilidade_beneficio`,`co_assinante`),
  KEY `fk_TB_FACILIDADE_BENEFICIO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;


INSERT INTO tb_facilidade_beneficio VALUES("42","1","1","1","1","N","S","S","N","S","11");




DROP TABLE IF EXISTS tb_facilidade_pagamento;


CREATE TABLE `tb_facilidade_pagamento` (
  `co_facilidade_pagamento` int(10) NOT NULL AUTO_INCREMENT,
  `co_tipo_pagamento` int(11) NOT NULL,
  `co_facilidade_beneficio` int(11) NOT NULL,
  PRIMARY KEY (`co_facilidade_pagamento`,`co_tipo_pagamento`,`co_facilidade_beneficio`),
  KEY `fk_TB_FACILIDADE_BENEFICIO_has_TB_TIPO_PAGAMENTO_TB_TIPO_PA_idx` (`co_tipo_pagamento`),
  KEY `fk_TB_FACILIDADE_BENEFICIO_has_TB_TIPO_PAGAMENTO_TB_FACILID_idx` (`co_facilidade_beneficio`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


INSERT INTO tb_facilidade_pagamento VALUES("19","1","40");

INSERT INTO tb_facilidade_pagamento VALUES("20","2","40");

INSERT INTO tb_facilidade_pagamento VALUES("21","3","40");

INSERT INTO tb_facilidade_pagamento VALUES("22","4","40");




DROP TABLE IF EXISTS tb_feriado;


CREATE TABLE `tb_feriado` (
  `co_feriado` int(11) NOT NULL AUTO_INCREMENT,
  `dt_feriado` date DEFAULT NULL,
  `nu_dia_semana` int(1) DEFAULT NULL COMMENT '1 - Segunda / 2 - Terça / 3 - Terça / 4 - Quarta / 5 - Sexta / 6 - Sábado / 7 - Domingo ',
  `ds_descricao` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`co_feriado`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


INSERT INTO tb_feriado VALUES("1","2018-01-01","1","Confraternização Universal");

INSERT INTO tb_feriado VALUES("2","2018-02-13","2","Carnaval");

INSERT INTO tb_feriado VALUES("3","2018-03-30","5","Paixão de Cristo");

INSERT INTO tb_feriado VALUES("4","2018-04-21","6","Tiradentes");

INSERT INTO tb_feriado VALUES("5","2018-05-01","2","Dia do Trabalho");

INSERT INTO tb_feriado VALUES("6","2018-05-31","4","Corpus Christi");

INSERT INTO tb_feriado VALUES("7","2018-09-07","5","Independência do Brasil");

INSERT INTO tb_feriado VALUES("8","2018-10-12","5","Nossa Sr.a Aparecida - Padroeira do Brasil");

INSERT INTO tb_feriado VALUES("9","2018-11-02","5","Finados");

INSERT INTO tb_feriado VALUES("10","2018-11-15","4","Proclamação da República");

INSERT INTO tb_feriado VALUES("11","2018-12-25","2","Natal");

INSERT INTO tb_feriado VALUES("12","2019-01-01","2","Confraternização Universal");

INSERT INTO tb_feriado VALUES("13","2019-03-05","2","Carnaval");

INSERT INTO tb_feriado VALUES("14","2019-04-19","5","Paixão de Cristo");

INSERT INTO tb_feriado VALUES("15","2019-04-21","7","Tiradentes");

INSERT INTO tb_feriado VALUES("16","2019-05-01","3","Dia do Trabalho");

INSERT INTO tb_feriado VALUES("17","2019-06-20","4","Corpus Christi");

INSERT INTO tb_feriado VALUES("18","2019-09-07","6","Independência do Brasil");

INSERT INTO tb_feriado VALUES("19","2019-10-12","6","Nossa Sr.a Aparecida - Padroeira do Brasil");

INSERT INTO tb_feriado VALUES("20","2019-11-02","6","Finados");

INSERT INTO tb_feriado VALUES("21","2019-11-15","5","Proclamação da República");

INSERT INTO tb_feriado VALUES("22","2019-12-25","3","Natal");




DROP TABLE IF EXISTS tb_funcionalidade;


CREATE TABLE `tb_funcionalidade` (
  `co_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `no_funcionalidade` varchar(150) NOT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_funcionalidade`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;


INSERT INTO tb_funcionalidade VALUES("1","Perfil Master","A");

INSERT INTO tb_funcionalidade VALUES("2","Auditoria Listar","A");

INSERT INTO tb_funcionalidade VALUES("3","Auditoria Detalhar","A");

INSERT INTO tb_funcionalidade VALUES("4","Usuario Cadastrar","A");

INSERT INTO tb_funcionalidade VALUES("5","Usuario Listar","A");

INSERT INTO tb_funcionalidade VALUES("6","Meu Usuario","A");

INSERT INTO tb_funcionalidade VALUES("7","Perfil Listar","A");

INSERT INTO tb_funcionalidade VALUES("8","Perfil Cadastrar","A");

INSERT INTO tb_funcionalidade VALUES("9","Funcionalidade Listar","A");

INSERT INTO tb_funcionalidade VALUES("10","Funcionalidade Cadastrar","A");

INSERT INTO tb_funcionalidade VALUES("11","Funcionalidades Perfil","A");

INSERT INTO tb_funcionalidade VALUES("12","Troca Senha Usuario","A");

INSERT INTO tb_funcionalidade VALUES("13","Dados Complementares Assinante","A");

INSERT INTO tb_funcionalidade VALUES("14","Listar Dia Especial","A");

INSERT INTO tb_funcionalidade VALUES("15","Cadastro Dia Especial","A");

INSERT INTO tb_funcionalidade VALUES("16","Formas De Pagamento","A");

INSERT INTO tb_funcionalidade VALUES("17","Bandeiras e Taxas","A");

INSERT INTO tb_funcionalidade VALUES("18","Historico Taxa Cartao Debito","A");

INSERT INTO tb_funcionalidade VALUES("19","Historico Taxa Cartao Crédito","A");

INSERT INTO tb_funcionalidade VALUES("20","Configuração de Cliente","A");

INSERT INTO tb_funcionalidade VALUES("21","Configuração de Agendamento","A");

INSERT INTO tb_funcionalidade VALUES("22","Manter Motivo Desconto","A");

INSERT INTO tb_funcionalidade VALUES("23","Cadastro Profissional","A");

INSERT INTO tb_funcionalidade VALUES("24","Listar Profissional","A");




DROP TABLE IF EXISTS tb_funcionamento;


CREATE TABLE `tb_funcionamento` (
  `co_funcionamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_dia_semana` int(1) DEFAULT NULL COMMENT '1 - Segunda / 2 - Terça / 3 - Terça / 4 - Quarta / 5 - Sexta / 6 - Sábado / 7 - Domingo / 8 - Feriado',
  `nu_hora_abertura` varchar(5) DEFAULT NULL,
  `nu_hora_fechamento` varchar(5) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionamento`,`co_assinante`),
  KEY `fk_TB_FUNCIONAMENTO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;


INSERT INTO tb_funcionamento VALUES("196","1","09:00","18:00","11");

INSERT INTO tb_funcionamento VALUES("197","2","08:00","18:00","11");

INSERT INTO tb_funcionamento VALUES("198","3","08:00","18:30","11");

INSERT INTO tb_funcionamento VALUES("199","4","08:00","18:00","11");

INSERT INTO tb_funcionamento VALUES("200","5","08:00","18:00","11");

INSERT INTO tb_funcionamento VALUES("201","6","07:00","19:00","11");

INSERT INTO tb_funcionamento VALUES("202","7","07:00","14:20","11");




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


INSERT INTO tb_imagem VALUES("1","leonardo-m-c-bessa-56e8920c23ab6.jpg");

INSERT INTO tb_imagem VALUES("2","salao-novo-visual-11-5ba5062aa132f.JPG");

INSERT INTO tb_imagem VALUES("14","fp-salao-novo-visual-11-5ba5957862e8d.jpg");




DROP TABLE IF EXISTS tb_imagem_assinante;


CREATE TABLE `tb_imagem_assinante` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;


INSERT INTO tb_imagem_assinante VALUES("12","11","14");




DROP TABLE IF EXISTS tb_jornada_trabalho;


CREATE TABLE `tb_jornada_trabalho` (
  `co_jornada_trabalho` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`co_jornada_trabalho`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_modulo;


CREATE TABLE `tb_modulo` (
  `co_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `no_modulo` varchar(50) DEFAULT NULL,
  `ds_descricao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO tb_modulo VALUES("1","Assinante","Gestão do assinante no sistema da beleza","2018-07-30 14:00:00","2018-11-02");

INSERT INTO tb_modulo VALUES("2","Principal","Onde consta todas as funcionalidades padrões e básicas do sistema","2018-07-30 14:00:00","2018-11-02");




DROP TABLE IF EXISTS tb_motivo_desconto;


CREATE TABLE `tb_motivo_desconto` (
  `co_motivo_desconto` int(11) NOT NULL AUTO_INCREMENT,
  `ds_motivo_desconto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`co_motivo_desconto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_motivo_desconto VALUES("1","Aniversário");

INSERT INTO tb_motivo_desconto VALUES("2","Programa Fidelidade");

INSERT INTO tb_motivo_desconto VALUES("3","Convênio");

INSERT INTO tb_motivo_desconto VALUES("4","Cortesia");

INSERT INTO tb_motivo_desconto VALUES("5","Pacote Promocional");

INSERT INTO tb_motivo_desconto VALUES("6","Dia Promocional");

INSERT INTO tb_motivo_desconto VALUES("7","Pagamento à Vista");

INSERT INTO tb_motivo_desconto VALUES("8","Motivo Desconhecido");




DROP TABLE IF EXISTS tb_motivo_desconto_assinante;


CREATE TABLE `tb_motivo_desconto_assinante` (
  `co_motivo_desconto_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `st_status_desconto` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `st_reflete_desconto_comissao` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `dt_cadastro` datetime DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  `co_motivo_desconto` int(11) NOT NULL,
  PRIMARY KEY (`co_motivo_desconto_assinante`,`co_assinante`,`co_motivo_desconto`),
  KEY `fk_TB_MOTIVO_DESCONTO_has_TB_ASSINANTE_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_MOTIVO_DESCONTO_has_TB_ASSINANTE_TB_MOTIVO_DESCONTO1_idx` (`co_motivo_desconto`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


INSERT INTO tb_motivo_desconto_assinante VALUES("9","S","S","2018-11-26 14:56:57","11","8");

INSERT INTO tb_motivo_desconto_assinante VALUES("10","S","N","2018-11-26 14:56:58","11","7");

INSERT INTO tb_motivo_desconto_assinante VALUES("11","S","N","2018-11-26 14:56:58","11","6");

INSERT INTO tb_motivo_desconto_assinante VALUES("12","S","N","2018-11-26 14:56:58","11","5");

INSERT INTO tb_motivo_desconto_assinante VALUES("13","S","S","2018-11-26 14:56:59","11","4");

INSERT INTO tb_motivo_desconto_assinante VALUES("14","S","S","2018-11-26 14:56:59","11","3");

INSERT INTO tb_motivo_desconto_assinante VALUES("15","S","S","2018-11-26 14:56:59","11","2");

INSERT INTO tb_motivo_desconto_assinante VALUES("16","N","N","2018-11-26 14:56:59","11","1");




DROP TABLE IF EXISTS tb_pagamento_bandeira_cartao;


CREATE TABLE `tb_pagamento_bandeira_cartao` (
  `co_pagamento_bandeira_cartao` int(10) NOT NULL AUTO_INCREMENT,
  `co_facilidade_pagamento` int(10) NOT NULL,
  `co_bandeira_cartao` int(10) NOT NULL,
  PRIMARY KEY (`co_pagamento_bandeira_cartao`,`co_facilidade_pagamento`,`co_bandeira_cartao`),
  KEY `fk_TB_FACILIDADE_PAGAMENTO_has_TB_BANDEIRA_CARTAO_TB_BANDEI_idx` (`co_bandeira_cartao`),
  KEY `fk_TB_FACILIDADE_PAGAMENTO_has_TB_BANDEIRA_CARTAO_TB_FACILI_idx` (`co_facilidade_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO tb_pagamento_bandeira_cartao VALUES("5","20","1");

INSERT INTO tb_pagamento_bandeira_cartao VALUES("6","20","2");

INSERT INTO tb_pagamento_bandeira_cartao VALUES("7","20","3");

INSERT INTO tb_pagamento_bandeira_cartao VALUES("8","21","1");

INSERT INTO tb_pagamento_bandeira_cartao VALUES("9","21","2");

INSERT INTO tb_pagamento_bandeira_cartao VALUES("10","21","4");




DROP TABLE IF EXISTS tb_pagina;


CREATE TABLE `tb_pagina` (
  `co_pagina` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_titulo_url_amigavel` varchar(255) DEFAULT NULL COMMENT 'Url amigável da página',
  `nu_visualizacao` int(11) DEFAULT NULL,
  `nu_usuario` int(11) DEFAULT NULL COMMENT 'Número de usuário que visitou a página',
  PRIMARY KEY (`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_pagina_visita;


CREATE TABLE `tb_pagina_visita` (
  `co_pagina_visita` int(11) NOT NULL AUTO_INCREMENT,
  `co_visita` int(11) NOT NULL,
  `co_pagina` int(11) NOT NULL,
  PRIMARY KEY (`co_pagina_visita`,`co_visita`,`co_pagina`),
  KEY `fk_TB_PAGINA_has_TB_VISITA_TB_VISITA1_idx` (`co_visita`),
  KEY `fk_TB_PAGINA_has_TB_VISITA_TB_PAGINA1_idx` (`co_pagina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_perfil;


CREATE TABLE `tb_perfil` (
  `co_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) NOT NULL COMMENT 'Nome do Perfil',
  `st_status` varchar(1) NOT NULL DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  PRIMARY KEY (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil VALUES("1","Master","A");

INSERT INTO tb_perfil VALUES("2","Gestor","A");

INSERT INTO tb_perfil VALUES("3","Colaborador","A");




DROP TABLE IF EXISTS tb_perfil_funcionalidade;


CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_perfil`,`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("2","2","8");

INSERT INTO tb_perfil_funcionalidade VALUES("3","2","7");

INSERT INTO tb_perfil_funcionalidade VALUES("4","2","6");

INSERT INTO tb_perfil_funcionalidade VALUES("5","2","5");

INSERT INTO tb_perfil_funcionalidade VALUES("6","2","4");

INSERT INTO tb_perfil_funcionalidade VALUES("7","3","6");

INSERT INTO tb_perfil_funcionalidade VALUES("8","3","12");

INSERT INTO tb_perfil_funcionalidade VALUES("9","2","12");

INSERT INTO tb_perfil_funcionalidade VALUES("10","2","13");

INSERT INTO tb_perfil_funcionalidade VALUES("11","2","14");

INSERT INTO tb_perfil_funcionalidade VALUES("12","2","15");

INSERT INTO tb_perfil_funcionalidade VALUES("13","2","16");

INSERT INTO tb_perfil_funcionalidade VALUES("14","2","17");

INSERT INTO tb_perfil_funcionalidade VALUES("15","2","18");

INSERT INTO tb_perfil_funcionalidade VALUES("16","2","19");

INSERT INTO tb_perfil_funcionalidade VALUES("17","2","20");

INSERT INTO tb_perfil_funcionalidade VALUES("18","2","21");

INSERT INTO tb_perfil_funcionalidade VALUES("19","2","22");

INSERT INTO tb_perfil_funcionalidade VALUES("20","2","23");

INSERT INTO tb_perfil_funcionalidade VALUES("21","2","24");




DROP TABLE IF EXISTS tb_pessoa;


CREATE TABLE `tb_pessoa` (
  `co_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nu_cpf` varchar(15) DEFAULT NULL,
  `no_pessoa` varchar(100) DEFAULT NULL,
  `nu_rg` varchar(45) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `st_sexo` varchar(1) DEFAULT NULL COMMENT 'M - Masculino ou F - Feminino',
  `co_endereco` int(11) NOT NULL,
  `co_contato` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_pessoa`,`co_endereco`,`co_contato`,`co_imagem`),
  KEY `fk_TB_PESSOA_TB_ENDERECO1_idx` (`co_endereco`),
  KEY `fk_TB_PESSOA_TB_CONTATO1_idx` (`co_contato`),
  KEY `fk_TB_PESSOA_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


INSERT INTO tb_pessoa VALUES("1","72681438187","LEONARDO MACHADO CARVALHO BESSA","2077811","2016-10-31 00:00:00","1984-07-06","M","1","1","1");

INSERT INTO tb_pessoa VALUES("5","","novo pedido 2","","2018-07-31 20:11:38","0000-00-00","","0","5","0");

INSERT INTO tb_pessoa VALUES("6","","Novo asinante 355","","2018-07-31 22:39:48","0000-00-00","","0","6","0");

INSERT INTO tb_pessoa VALUES("7","","Novo asinante 355","","2018-08-03 18:42:23","0000-00-00","","0","7","0");

INSERT INTO tb_pessoa VALUES("15","","LEO BESSA","","2018-08-14 16:45:26","0000-00-00","","0","15","0");

INSERT INTO tb_pessoa VALUES("16","","Novo asinante 355GG","","2018-08-16 23:59:20","0000-00-00","","0","16","0");

INSERT INTO tb_pessoa VALUES("17","","novo pedido","","2018-08-28 10:59:39","0000-00-00","","0","17","0");

INSERT INTO tb_pessoa VALUES("18","","Leo bessa","","2018-09-17 16:45:33","0000-00-00","","0","18","0");




DROP TABLE IF EXISTS tb_plano;


CREATE TABLE `tb_plano` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


INSERT INTO tb_plano VALUES("1","2018-07-31 10:17:46","Plano Padrão","1","A");

INSERT INTO tb_plano VALUES("2","2018-07-31 10:53:52","Plano A","1","A");

INSERT INTO tb_plano VALUES("3","2018-07-30 14:00:00","Plano A2d","3","A");

INSERT INTO tb_plano VALUES("4","2018-08-15 11:09:54","novo em folha","6","A");

INSERT INTO tb_plano VALUES("5","2018-08-15 11:10:46","gdfg rg","1","A");

INSERT INTO tb_plano VALUES("6","2018-08-28 10:30:16","novo em folha","6","A");

INSERT INTO tb_plano VALUES("7","2018-08-28 11:17:47","hhrt","24","A");




DROP TABLE IF EXISTS tb_plano_assinante;


CREATE TABLE `tb_plano_assinante` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(10,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`),
  KEY `fk_TB_PLANO_ASSINANTE_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


INSERT INTO tb_plano_assinante VALUES("1","0.00","2018-07-31 10:17:46","texto","1");

INSERT INTO tb_plano_assinante VALUES("2","35.00","2018-07-31 10:51:24","texto3","3");

INSERT INTO tb_plano_assinante VALUES("3","35.00","2018-07-31 10:52:56","texto3","3");

INSERT INTO tb_plano_assinante VALUES("4","30.00","2018-07-31 10:53:52","","2");

INSERT INTO tb_plano_assinante VALUES("5","35.00","2018-07-31 10:54:10","","2");

INSERT INTO tb_plano_assinante VALUES("6","30.00","2018-07-31 10:54:28","texto3","3");

INSERT INTO tb_plano_assinante VALUES("7","35.00","2018-07-31 12:09:40","","2");

INSERT INTO tb_plano_assinante VALUES("8","35.00","2018-07-31 12:09:51","","2");

INSERT INTO tb_plano_assinante VALUES("9","35.00","2018-07-31 12:11:56","","2");

INSERT INTO tb_plano_assinante VALUES("10","60.00","2018-08-15 11:09:54","fef","4");

INSERT INTO tb_plano_assinante VALUES("11","4354.35","2018-08-15 11:10:46","","5");

INSERT INTO tb_plano_assinante VALUES("12","59.00","2018-08-28 10:30:16","","6");

INSERT INTO tb_plano_assinante VALUES("13","59.00","2018-08-28 10:33:03","","6");

INSERT INTO tb_plano_assinante VALUES("14","54.99","2018-08-28 10:35:40","","5");

INSERT INTO tb_plano_assinante VALUES("15","54.99","2018-08-28 10:37:59","","5");

INSERT INTO tb_plano_assinante VALUES("16","54.99","2018-08-28 10:40:10","","5");

INSERT INTO tb_plano_assinante VALUES("17","54.99","2018-08-28 10:44:09","","5");

INSERT INTO tb_plano_assinante VALUES("18","54.99","2018-08-28 11:17:22","","5");

INSERT INTO tb_plano_assinante VALUES("19","119.90","2018-08-28 11:17:47","","7");




DROP TABLE IF EXISTS tb_plano_assinante_assinatura;


CREATE TABLE `tb_plano_assinante_assinatura` (
  `co_plano_assinante_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_expiracao` date DEFAULT NULL COMMENT 'data de expiriração da assinatura',
  `nu_filiais` int(11) DEFAULT '0' COMMENT 'Número de filiais para a assinatura',
  `nu_valor_assinatura` decimal(6,2) DEFAULT NULL COMMENT 'Valor final da assinatura',
  `nu_profissionais` int(3) DEFAULT NULL COMMENT 'Número de profissionais que o sistema ira gerenciar',
  `co_assinante` int(11) NOT NULL,
  `co_plano_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante_assinatura`,`co_assinante`,`co_plano_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_PLANO_ASSINANTE_ASSINATURA_TB_PLANO_ASSINANTE1_idx` (`co_plano_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;


INSERT INTO tb_plano_assinante_assinatura VALUES("1","2018-03-03 00:00:00","2018-08-16","0","25.00","8","2","1");

INSERT INTO tb_plano_assinante_assinatura VALUES("2","2018-03-03 00:00:00","2018-08-16","1","35.00","10","2","1");

INSERT INTO tb_plano_assinante_assinatura VALUES("3","2018-05-13 16:52:06","2018-11-22","2","205.50","25","2","6");

INSERT INTO tb_plano_assinante_assinatura VALUES("7","2018-07-13 17:17:36","2018-11-22","1","219.00","17","2","6");

INSERT INTO tb_plano_assinante_assinatura VALUES("8","2018-08-13 17:22:06","2018-11-19","2","295.50","25","2","6");

INSERT INTO tb_plano_assinante_assinatura VALUES("10","2018-08-13 22:42:22","2018-09-28","0","35.00","3","5","9");

INSERT INTO tb_plano_assinante_assinatura VALUES("11","2018-08-13 22:42:50","2018-10-28","0","35.00","3","5","9");

INSERT INTO tb_plano_assinante_assinatura VALUES("12","2018-08-13 22:44:47","2018-11-28","0","35.00","3","5","9");

INSERT INTO tb_plano_assinante_assinatura VALUES("13","2018-08-13 22:48:15","2018-12-28","0","35.00","3","5","9");

INSERT INTO tb_plano_assinante_assinatura VALUES("17","2018-08-14 16:45:26","2018-08-29","0","0.00","3","11","1");

INSERT INTO tb_plano_assinante_assinatura VALUES("18","2018-08-16 23:59:20","2018-08-31","0","0.00","3","12","1");

INSERT INTO tb_plano_assinante_assinatura VALUES("19","2018-08-28 10:59:39","2018-09-12","0","0.00","3","13","1");

INSERT INTO tb_plano_assinante_assinatura VALUES("20","2018-09-17 16:45:33","2018-10-02","0","0.00","3","14","1");




DROP TABLE IF EXISTS tb_plano_modulo;


CREATE TABLE `tb_plano_modulo` (
  `co_plano_modulo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_modulo`,`co_plano`,`co_modulo`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_modulo`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;


INSERT INTO tb_plano_modulo VALUES("8","3","2");

INSERT INTO tb_plano_modulo VALUES("11","2","2");

INSERT INTO tb_plano_modulo VALUES("12","4","1");

INSERT INTO tb_plano_modulo VALUES("13","4","2");

INSERT INTO tb_plano_modulo VALUES("18","6","1");

INSERT INTO tb_plano_modulo VALUES("19","6","2");

INSERT INTO tb_plano_modulo VALUES("28","5","1");

INSERT INTO tb_plano_modulo VALUES("29","5","2");

INSERT INTO tb_plano_modulo VALUES("30","7","1");

INSERT INTO tb_plano_modulo VALUES("31","7","2");




DROP TABLE IF EXISTS tb_profissional;


CREATE TABLE `tb_profissional` (
  `co_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_cor_agenda` varchar(6) DEFAULT NULL COMMENT 'Valor Hexadecimal',
  `st_assistente` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser assitente de outro profissional',
  `ds_sobre` text,
  `no_apelido` varchar(45) DEFAULT NULL,
  `st_agenda` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se possui agenda',
  `st_agenda_online` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser ter agendamento on line',
  `nu_ordem_agenda` int(1) DEFAULT NULL COMMENT 'Ordem da apresentação na agenda',
  `tp_contratacao` int(1) DEFAULT NULL COMMENT '1 - Contrato de trabalho CLT / 2 - Contrato de trabalho por prazo determinado / 3 - Sem vínculo empregatício / 4 - Contrato de Locação de espaço / 5 - Outros',
  `dt_admissao` date DEFAULT NULL,
  `dt_demissao` date DEFAULT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  `co_pessoa` int(10) unsigned NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  `co_conta_bancaria` int(11) NOT NULL,
  PRIMARY KEY (`co_profissional`,`co_imagem`,`co_pessoa`,`co_usuario`,`co_assinante`,`co_conta_bancaria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_profissional_cargo;


CREATE TABLE `tb_profissional_cargo` (
  `co_profissional_cargo` int(10) NOT NULL AUTO_INCREMENT,
  `co_cargo` int(11) NOT NULL,
  `co_profissional` int(11) NOT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / I - Inativo',
  PRIMARY KEY (`co_profissional_cargo`,`co_cargo`,`co_profissional`),
  KEY `fk_TB_PROFISSIONAL_has_TB_CARGO_TB_CARGO1_idx` (`co_cargo`),
  KEY `fk_TB_PROFISSIONAL_has_TB_CARGO_TB_PROFISSIONAL1_idx` (`co_profissional`),
  CONSTRAINT `fk_TB_PROFISSIONAL_has_TB_CARGO_TB_CARGO1` FOREIGN KEY (`co_cargo`) REFERENCES `tb_cargo` (`co_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_PROFISSIONAL_has_TB_CARGO_TB_PROFISSIONAL1` FOREIGN KEY (`co_profissional`) REFERENCES `tb_profissional` (`co_profissional`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_taxa_cartao;


CREATE TABLE `tb_taxa_cartao` (
  `co_taxa_cartao` int(10) NOT NULL AUTO_INCREMENT,
  `nu_taxa_cartao` decimal(3,2) NOT NULL COMMENT 'Taxa Cobrada pelo Cartão (DÉBITO / CRÉDITO)',
  `nu_taxa_antecipacao` decimal(3,2) DEFAULT NULL COMMENT 'Taxa Mensal de antecipação dos pagamento',
  `dt_cadastro` datetime NOT NULL,
  `co_pagamento_bandeira_cartao` int(10) NOT NULL,
  PRIMARY KEY (`co_taxa_cartao`,`co_pagamento_bandeira_cartao`),
  KEY `fk_TB_TAXA_CARTAO_TB_PAGAMENTO_BANDEIRA_CARTAO1_idx` (`co_pagamento_bandeira_cartao`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;


INSERT INTO tb_taxa_cartao VALUES("7","0.11","0.00","2018-10-24 15:38:06","5");

INSERT INTO tb_taxa_cartao VALUES("8","2.22","0.00","2018-10-24 15:38:06","6");

INSERT INTO tb_taxa_cartao VALUES("9","9.99","0.00","2018-10-24 15:38:06","7");

INSERT INTO tb_taxa_cartao VALUES("10","0.89","0.00","2018-10-24 16:10:47","5");

INSERT INTO tb_taxa_cartao VALUES("11","9.99","0.00","2018-10-24 16:10:47","6");

INSERT INTO tb_taxa_cartao VALUES("12","9.99","0.00","2018-10-24 16:10:47","7");

INSERT INTO tb_taxa_cartao VALUES("25","0.89","0.00","2018-10-24 16:15:16","5");

INSERT INTO tb_taxa_cartao VALUES("26","4.78","0.00","2018-10-24 16:15:16","6");

INSERT INTO tb_taxa_cartao VALUES("27","3.13","0.00","2018-10-24 16:15:16","7");

INSERT INTO tb_taxa_cartao VALUES("30","0.01","0.02","2018-10-24 16:22:07","8");

INSERT INTO tb_taxa_cartao VALUES("31","0.33","4.58","2018-10-24 16:22:07","9");

INSERT INTO tb_taxa_cartao VALUES("32","7.89","9.99","2018-10-24 16:22:44","8");

INSERT INTO tb_taxa_cartao VALUES("33","0.87","0.95","2018-10-24 16:22:44","9");

INSERT INTO tb_taxa_cartao VALUES("34","0.04","5.69","2018-10-24 16:22:44","10");




DROP TABLE IF EXISTS tb_tipo_pagamento;


CREATE TABLE `tb_tipo_pagamento` (
  `co_tipo_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `no_tipo_pagamento` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`co_tipo_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO tb_tipo_pagamento VALUES("1","Dinheiro");

INSERT INTO tb_tipo_pagamento VALUES("2","Cartão de Débito");

INSERT INTO tb_tipo_pagamento VALUES("3","Cartão de Crédito");

INSERT INTO tb_tipo_pagamento VALUES("4","Depósito/Transferência Bancária");

INSERT INTO tb_tipo_pagamento VALUES("5","Boleto Bancário");

INSERT INTO tb_tipo_pagamento VALUES("6","Promissória");

INSERT INTO tb_tipo_pagamento VALUES("7","Cheque");

INSERT INTO tb_tipo_pagamento VALUES("8","Parcelamento Próprio");

INSERT INTO tb_tipo_pagamento VALUES("9","Outros");




DROP TABLE IF EXISTS tb_trafego;


CREATE TABLE `tb_trafego` (
  `co_trafego` int(11) NOT NULL AUTO_INCREMENT,
  `nu_ip` varchar(20) DEFAULT NULL,
  `ds_pais` varchar(100) DEFAULT NULL,
  `ds_code_pais` varchar(100) DEFAULT NULL,
  `ds_uf` varchar(45) DEFAULT NULL,
  `ds_estado` varchar(100) DEFAULT NULL,
  `ds_cidade` varchar(120) DEFAULT NULL,
  `ds_navegador` varchar(45) DEFAULT NULL,
  `ds_sistema_operacional` varchar(45) DEFAULT NULL,
  `ds_dispositivo` varchar(45) DEFAULT NULL,
  `ds_agente` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`co_trafego`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;


INSERT INTO tb_trafego VALUES("1","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("2","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("3","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("4","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("5","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("6","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("7","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("8","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("9","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("10","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("11","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("12","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("13","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("14","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("15","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36");

INSERT INTO tb_trafego VALUES("16","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36");

INSERT INTO tb_trafego VALUES("17","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36");

INSERT INTO tb_trafego VALUES("18","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("19","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("20","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("21","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("22","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("23","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("24","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("25","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36");

INSERT INTO tb_trafego VALUES("26","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36");

INSERT INTO tb_trafego VALUES("27","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("28","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("29","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("30","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("31","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("32","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("33","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("34","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("35","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("36","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("37","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("38","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("39","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("40","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("41","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("42","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("43","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("44","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("45","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("46","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("47","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36");

INSERT INTO tb_trafego VALUES("48","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("49","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("50","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("51","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("52","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("53","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("54","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("55","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("56","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("57","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("58","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("59","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("60","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("61","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("62","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("63","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("64","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("65","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("66","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("67","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("68","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("69","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("70","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("71","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("72","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("73","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("74","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("75","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("76","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("77","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("78","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("79","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("80","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("81","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("82","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("83","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("84","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("85","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("86","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("87","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("88","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("89","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("90","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("91","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("92","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("93","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("94","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("95","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("96","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("97","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("98","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("99","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("100","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("101","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("102","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("103","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("104","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0");

INSERT INTO tb_trafego VALUES("105","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("106","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("107","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("108","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("109","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("110","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("111","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("112","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("113","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("114","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("115","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("116","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("117","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("118","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("119","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("120","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("121","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("122","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("123","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("124","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("125","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("126","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("127","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("128","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("129","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("130","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("131","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("132","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("133","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("134","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("135","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("136","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("137","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("138","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("139","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0");

INSERT INTO tb_trafego VALUES("140","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("141","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("142","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("143","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("144","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("145","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("146","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("147","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("148","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("149","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("150","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("151","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("152","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 8.1","Desktop","Mozilla/5.0 (Windows NT 6.3; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("153","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("154","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("155","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("156","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("157","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("158","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("159","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("160","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("161","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("162","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("163","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("164","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("165","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("166","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("167","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("168","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("169","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("170","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("171","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("172","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("173","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("174","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("175","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("176","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("177","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("178","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("179","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("180","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("181","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("182","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("183","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("184","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("185","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("186","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("187","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("188","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("189","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("190","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("191","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("192","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("193","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");




DROP TABLE IF EXISTS tb_usuario;


CREATE TABLE `tb_usuario` (
  `co_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `ds_senha` varchar(100) NOT NULL,
  `ds_code` varchar(50) NOT NULL COMMENT 'Senha criptografada',
  `st_status` varchar(1) NOT NULL DEFAULT 'I' COMMENT '''A - Ativo / I - Inativo''',
  `st_troca_senha` varchar(1) DEFAULT 'N',
  `dt_cadastro` datetime NOT NULL,
  `co_imagem` int(10) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario`,`co_imagem`,`co_pessoa`,`co_assinante`),
  KEY `fk_TB_USUARIO_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_USUARIO_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_USUARIO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario VALUES("1","123456**","TVRJek5EVTJLaW89","A","S","2016-10-31 00:00:00","1","1","0");

INSERT INTO tb_usuario VALUES("8","teste123","ZEdWemRHVXhNak09","A","S","2018-08-14 16:45:26","0","15","11");

INSERT INTO tb_usuario VALUES("9","OMT0PLF6","VDAxVU1GQk1Salk9","A","N","2018-08-16 23:59:20","0","16","12");

INSERT INTO tb_usuario VALUES("10","TEW3NAL6","VkVWWE0wNUJURFk9","I","N","2018-08-28 10:59:39","0","17","13");

INSERT INTO tb_usuario VALUES("11","QQT8ZPA3","VVZGVU9GcFFRVE09","I","N","2018-09-17 16:45:33","0","18","14");




DROP TABLE IF EXISTS tb_usuario_perfil;


CREATE TABLE `tb_usuario_perfil` (
  `co_usuario_perfil` int(11) NOT NULL AUTO_INCREMENT,
  `co_usuario` int(10) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`),
  KEY `fk_tb_usuario_tb_perfil_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_tb_usuario_tb_perfil_tb_usuario_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario_perfil VALUES("1","1","1");

INSERT INTO tb_usuario_perfil VALUES("4","8","2");

INSERT INTO tb_usuario_perfil VALUES("5","9","2");

INSERT INTO tb_usuario_perfil VALUES("6","10","2");

INSERT INTO tb_usuario_perfil VALUES("7","11","2");

INSERT INTO tb_usuario_perfil VALUES("8","8","3");




DROP TABLE IF EXISTS tb_visita;


CREATE TABLE `tb_visita` (
  `co_visita` int(11) NOT NULL AUTO_INCREMENT,
  `dt_realizado` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `nu_visitas` int(11) DEFAULT NULL,
  `co_trafego` int(11) NOT NULL,
  PRIMARY KEY (`co_visita`,`co_trafego`),
  KEY `fk_TB_VISITA_TB_TRAFEGO1_idx` (`co_trafego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





