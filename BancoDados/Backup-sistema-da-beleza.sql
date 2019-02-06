-- Atualizado em: 05/02/2019 18:14:38
-- AMBIENTE: http://localhost/sistemadabeleza/
-- BANCO: sistem25_dabelez

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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;


INSERT INTO tb_acesso VALUES("1","au886dq4kojafm6uua4vtlccc5","2018-12-20 16:58:38","2018-12-20 17:22:29","F","8","1");

INSERT INTO tb_acesso VALUES("2","au886dq4kojafm6uua4vtlccc5","2018-12-20 17:22:36","2018-12-20 17:38:40","F","1","2");

INSERT INTO tb_acesso VALUES("3","au886dq4kojafm6uua4vtlccc5","2018-12-20 17:38:47","2018-12-20 18:26:14","F","8","3");

INSERT INTO tb_acesso VALUES("4","au886dq4kojafm6uua4vtlccc5","2018-12-21 12:00:18","2018-12-21 12:31:18","F","8","4");

INSERT INTO tb_acesso VALUES("5","h062pgepun9rplcatp5kp3l804","2018-12-26 17:06:07","2018-12-26 17:37:52","F","8","5");

INSERT INTO tb_acesso VALUES("6","h062pgepun9rplcatp5kp3l804","2018-12-27 12:13:59","2018-12-27 12:20:32","F","8","6");

INSERT INTO tb_acesso VALUES("7","qc3ln4doacb0v64ifvfjuuhc85","2019-01-04 10:31:41","2019-01-04 11:01:54","F","8","7");

INSERT INTO tb_acesso VALUES("8","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 10:15:40","2019-01-10 10:15:52","F","8","8");

INSERT INTO tb_acesso VALUES("9","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 10:33:06","2019-01-10 10:33:15","F","8","9");

INSERT INTO tb_acesso VALUES("10","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 10:39:15","2019-01-10 10:44:00","F","1","10");

INSERT INTO tb_acesso VALUES("11","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 11:00:26","2019-01-10 11:00:37","F","8","11");

INSERT INTO tb_acesso VALUES("12","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 11:06:30","2019-01-10 11:46:03","F","1","12");

INSERT INTO tb_acesso VALUES("13","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 12:11:23","2019-01-10 12:11:47","F","1","13");

INSERT INTO tb_acesso VALUES("14","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 12:20:53","2019-01-10 12:23:31","F","1","14");

INSERT INTO tb_acesso VALUES("15","lvt7ecbn9bqg4u6q3mh38djne1","2019-01-10 12:53:55","2019-01-10 12:54:01","F","1","15");

INSERT INTO tb_acesso VALUES("16","eq7iu344l6pht078svt9t4g7o7","2019-01-14 11:59:46","2019-01-14 12:33:41","F","1","16");

INSERT INTO tb_acesso VALUES("17","eq7iu344l6pht078svt9t4g7o7","2019-01-14 14:14:31","2019-01-14 14:15:19","F","1","17");

INSERT INTO tb_acesso VALUES("18","eq7iu344l6pht078svt9t4g7o7","2019-01-14 14:15:26","2019-01-14 14:17:11","F","8","18");

INSERT INTO tb_acesso VALUES("19","eq7iu344l6pht078svt9t4g7o7","2019-01-14 14:17:18","2019-01-14 14:30:21","F","1","19");

INSERT INTO tb_acesso VALUES("20","eq7iu344l6pht078svt9t4g7o7","2019-01-14 14:30:28","2019-01-14 14:31:03","F","1","20");

INSERT INTO tb_acesso VALUES("21","eq7iu344l6pht078svt9t4g7o7","2019-01-14 14:31:10","2019-01-14 14:53:32","F","1","21");

INSERT INTO tb_acesso VALUES("22","eq7iu344l6pht078svt9t4g7o7","2019-01-14 14:55:21","2019-01-14 15:09:10","F","8","22");

INSERT INTO tb_acesso VALUES("23","eq7iu344l6pht078svt9t4g7o7","2019-01-14 15:09:19","2019-01-14 15:26:06","F","1","23");

INSERT INTO tb_acesso VALUES("24","eq7iu344l6pht078svt9t4g7o7","2019-01-14 15:28:33","2019-01-14 15:48:11","F","8","24");

INSERT INTO tb_acesso VALUES("25","eq7iu344l6pht078svt9t4g7o7","2019-01-14 15:48:21","2019-01-14 15:49:31","F","8","25");

INSERT INTO tb_acesso VALUES("26","eq7iu344l6pht078svt9t4g7o7","2019-01-14 15:49:44","2019-01-14 15:50:54","F","1","26");

INSERT INTO tb_acesso VALUES("27","eq7iu344l6pht078svt9t4g7o7","2019-01-14 15:51:01","2019-01-14 16:21:01","F","11","27");

INSERT INTO tb_acesso VALUES("28","eq7iu344l6pht078svt9t4g7o7","2019-01-14 16:48:05","2019-01-14 16:50:50","F","1","44");

INSERT INTO tb_acesso VALUES("29","eq7iu344l6pht078svt9t4g7o7","2019-01-14 16:51:00","2019-01-14 16:58:03","F","8","45");

INSERT INTO tb_acesso VALUES("30","eq7iu344l6pht078svt9t4g7o7","2019-01-14 16:51:00","2019-01-14 18:02:51","F","8","45");

INSERT INTO tb_acesso VALUES("31","eq7iu344l6pht078svt9t4g7o7","2019-01-14 16:51:00","2019-01-14 17:21:00","F","8","45");

INSERT INTO tb_acesso VALUES("32","eq7iu344l6pht078svt9t4g7o7","2019-01-14 16:58:09","2019-01-14 17:04:46","F","1","47");

INSERT INTO tb_acesso VALUES("33","eq7iu344l6pht078svt9t4g7o7","2019-01-17 16:07:17","2019-01-17 16:07:33","F","1","48");

INSERT INTO tb_acesso VALUES("34","eq7iu344l6pht078svt9t4g7o7","2019-01-17 16:07:39","2019-01-17 18:12:57","F","8","49");

INSERT INTO tb_acesso VALUES("35","eq7iu344l6pht078svt9t4g7o7","2019-01-18 10:53:26","2019-01-18 12:36:28","F","1","50");

INSERT INTO tb_acesso VALUES("36","eq7iu344l6pht078svt9t4g7o7","2019-01-18 13:01:13","2019-01-18 15:49:17","F","1","51");

INSERT INTO tb_acesso VALUES("37","eq7iu344l6pht078svt9t4g7o7","2019-01-18 15:49:35","2019-01-18 16:55:48","F","1","52");

INSERT INTO tb_acesso VALUES("38","21kubq6khf4fjne7tv68refih0","2019-01-22 11:52:15","2019-01-22 13:00:24","F","1","53");

INSERT INTO tb_acesso VALUES("39","21kubq6khf4fjne7tv68refih0","2019-01-22 13:10:13","2019-01-22 13:10:20","F","1","54");

INSERT INTO tb_acesso VALUES("40","21kubq6khf4fjne7tv68refih0","2019-01-22 13:12:34","2019-01-22 14:48:46","F","1","55");

INSERT INTO tb_acesso VALUES("41","21kubq6khf4fjne7tv68refih0","2019-01-22 14:55:40","2019-01-22 14:56:07","F","8","56");

INSERT INTO tb_acesso VALUES("42","21kubq6khf4fjne7tv68refih0","2019-01-22 14:56:18","2019-01-22 15:05:23","F","1","57");

INSERT INTO tb_acesso VALUES("43","21kubq6khf4fjne7tv68refih0","2019-01-22 15:05:30","2019-01-22 15:35:53","F","8","58");

INSERT INTO tb_acesso VALUES("44","21kubq6khf4fjne7tv68refih0","2019-01-23 17:29:17","2019-01-23 18:16:14","F","1","59");

INSERT INTO tb_acesso VALUES("45","21kubq6khf4fjne7tv68refih0","2019-01-24 09:20:56","2019-01-24 09:53:15","F","1","60");

INSERT INTO tb_acesso VALUES("46","21kubq6khf4fjne7tv68refih0","2019-01-24 10:23:17","2019-01-24 10:53:46","F","1","61");

INSERT INTO tb_acesso VALUES("47","21kubq6khf4fjne7tv68refih0","2019-01-24 11:00:43","2019-01-24 11:51:29","F","1","62");

INSERT INTO tb_acesso VALUES("48","21kubq6khf4fjne7tv68refih0","2019-01-24 16:16:31","2019-01-24 16:34:44","F","8","63");

INSERT INTO tb_acesso VALUES("49","21kubq6khf4fjne7tv68refih0","2019-01-24 16:34:51","2019-01-24 16:36:37","F","8","64");

INSERT INTO tb_acesso VALUES("50","21kubq6khf4fjne7tv68refih0","2019-01-24 16:36:44","2019-01-24 16:37:11","F","8","65");

INSERT INTO tb_acesso VALUES("51","21kubq6khf4fjne7tv68refih0","2019-01-24 16:37:18","2019-01-24 16:37:33","F","8","66");

INSERT INTO tb_acesso VALUES("52","21kubq6khf4fjne7tv68refih0","2019-01-24 16:38:27","2019-01-24 16:57:23","F","1","67");

INSERT INTO tb_acesso VALUES("53","21kubq6khf4fjne7tv68refih0","2019-01-24 16:57:27","2019-01-24 16:57:39","F","8","68");

INSERT INTO tb_acesso VALUES("54","21kubq6khf4fjne7tv68refih0","2019-01-24 16:57:46","2019-01-24 17:00:01","F","1","69");

INSERT INTO tb_acesso VALUES("55","21kubq6khf4fjne7tv68refih0","2019-01-24 17:00:11","2019-01-24 17:06:02","F","8","70");

INSERT INTO tb_acesso VALUES("56","21kubq6khf4fjne7tv68refih0","2019-01-24 17:06:09","2019-01-24 18:01:28","F","8","71");

INSERT INTO tb_acesso VALUES("57","21kubq6khf4fjne7tv68refih0","2019-01-25 09:10:05","2019-01-25 09:12:33","F","8","72");

INSERT INTO tb_acesso VALUES("58","21kubq6khf4fjne7tv68refih0","2019-01-25 09:12:40","2019-01-25 09:16:27","F","8","73");

INSERT INTO tb_acesso VALUES("59","21kubq6khf4fjne7tv68refih0","2019-01-25 09:16:33","2019-01-25 09:17:31","F","8","74");

INSERT INTO tb_acesso VALUES("60","21kubq6khf4fjne7tv68refih0","2019-01-25 09:17:37","2019-01-25 09:25:50","F","1","75");

INSERT INTO tb_acesso VALUES("61","21kubq6khf4fjne7tv68refih0","2019-01-25 09:25:57","2019-01-25 09:27:35","F","8","76");

INSERT INTO tb_acesso VALUES("62","21kubq6khf4fjne7tv68refih0","2019-01-25 09:27:43","2019-01-25 11:54:52","F","1","77");

INSERT INTO tb_acesso VALUES("63","21kubq6khf4fjne7tv68refih0","2019-01-25 11:57:03","2019-01-25 12:11:45","F","8","78");

INSERT INTO tb_acesso VALUES("64","21kubq6khf4fjne7tv68refih0","2019-01-25 12:11:51","2019-01-25 12:12:49","F","8","79");

INSERT INTO tb_acesso VALUES("65","21kubq6khf4fjne7tv68refih0","2019-01-25 12:12:55","2019-01-25 12:15:29","F","1","80");

INSERT INTO tb_acesso VALUES("66","21kubq6khf4fjne7tv68refih0","2019-01-25 12:15:36","2019-01-25 14:31:02","F","8","81");

INSERT INTO tb_acesso VALUES("67","5m2jck287v566utlo77c655460","2019-01-28 11:36:45","2019-01-28 11:37:56","F","8","82");

INSERT INTO tb_acesso VALUES("68","5m2jck287v566utlo77c655460","2019-01-28 11:38:02","2019-01-28 12:48:21","F","1","83");

INSERT INTO tb_acesso VALUES("69","5m2jck287v566utlo77c655460","2019-01-28 12:48:28","2019-01-28 12:48:46","F","8","84");

INSERT INTO tb_acesso VALUES("70","5m2jck287v566utlo77c655460","2019-01-28 12:48:52","2019-01-28 12:49:56","F","1","85");

INSERT INTO tb_acesso VALUES("71","5m2jck287v566utlo77c655460","2019-01-28 12:50:04","2019-01-28 12:54:06","F","1","86");

INSERT INTO tb_acesso VALUES("72","5m2jck287v566utlo77c655460","2019-01-28 12:58:27","2019-01-28 12:59:34","F","8","87");

INSERT INTO tb_acesso VALUES("73","5m2jck287v566utlo77c655460","2019-01-28 12:59:41","2019-01-28 13:13:09","F","8","88");

INSERT INTO tb_acesso VALUES("74","5m2jck287v566utlo77c655460","2019-01-28 13:13:17","2019-01-28 13:14:04","F","1","89");

INSERT INTO tb_acesso VALUES("75","5m2jck287v566utlo77c655460","2019-01-28 13:14:10","2019-01-28 13:45:04","F","8","90");

INSERT INTO tb_acesso VALUES("76","5m2jck287v566utlo77c655460","2019-01-28 14:24:52","2019-01-28 14:25:07","F","8","91");

INSERT INTO tb_acesso VALUES("77","5m2jck287v566utlo77c655460","2019-01-29 17:17:45","2019-01-29 17:38:42","F","1","92");

INSERT INTO tb_acesso VALUES("78","5m2jck287v566utlo77c655460","2019-01-29 17:38:46","2019-01-30 08:56:06","F","1","93");

INSERT INTO tb_acesso VALUES("79","5m2jck287v566utlo77c655460","2019-01-30 08:56:24","2019-01-30 09:13:32","F","1","94");

INSERT INTO tb_acesso VALUES("80","5m2jck287v566utlo77c655460","2019-01-30 09:13:36","2019-01-30 09:13:58","F","1","95");

INSERT INTO tb_acesso VALUES("81","5m2jck287v566utlo77c655460","2019-01-30 09:14:02","2019-01-30 09:14:20","F","8","96");

INSERT INTO tb_acesso VALUES("82","5m2jck287v566utlo77c655460","2019-01-30 09:14:24","2019-01-30 09:22:24","F","1","97");

INSERT INTO tb_acesso VALUES("83","5m2jck287v566utlo77c655460","2019-01-30 09:22:27","2019-01-30 09:42:49","F","1","98");

INSERT INTO tb_acesso VALUES("84","5m2jck287v566utlo77c655460","2019-01-30 09:42:53","2019-01-30 09:46:43","F","8","99");

INSERT INTO tb_acesso VALUES("85","5m2jck287v566utlo77c655460","2019-01-30 09:46:46","2019-01-30 12:12:05","F","1","100");

INSERT INTO tb_acesso VALUES("86","5m2jck287v566utlo77c655460","2019-01-30 12:12:14","2019-01-30 13:07:03","F","1","105");

INSERT INTO tb_acesso VALUES("87","5m2jck287v566utlo77c655460","2019-01-30 14:23:21","2019-01-31 10:31:33","F","1","106");

INSERT INTO tb_acesso VALUES("88","5m2jck287v566utlo77c655460","2019-01-31 11:49:15","2019-01-31 11:55:46","F","1","107");

INSERT INTO tb_acesso VALUES("89","5m2jck287v566utlo77c655460","2019-01-31 11:55:50","2019-01-31 11:56:20","F","8","108");

INSERT INTO tb_acesso VALUES("90","5m2jck287v566utlo77c655460","2019-01-31 11:56:23","2019-01-31 11:56:59","F","1","109");

INSERT INTO tb_acesso VALUES("91","5m2jck287v566utlo77c655460","2019-01-31 11:57:04","2019-01-31 11:57:24","F","8","110");

INSERT INTO tb_acesso VALUES("92","5m2jck287v566utlo77c655460","2019-01-31 11:57:28","2019-01-31 12:53:00","F","1","111");

INSERT INTO tb_acesso VALUES("93","5m2jck287v566utlo77c655460","2019-01-31 13:33:57","2019-01-31 16:48:11","F","1","112");

INSERT INTO tb_acesso VALUES("94","g37vj5fi2cd712n6271m4bk8h7","2019-02-01 10:50:51","2019-02-01 11:21:03","F","1","113");

INSERT INTO tb_acesso VALUES("95","g37vj5fi2cd712n6271m4bk8h7","2019-02-01 14:59:38","2019-02-01 15:29:56","F","1","114");

INSERT INTO tb_acesso VALUES("96","efi49bfhkf5g8c8595c87vq166","2019-02-04 14:27:40","2019-02-04 17:36:29","F","1","115");

INSERT INTO tb_acesso VALUES("97","efi49bfhkf5g8c8595c87vq166","2019-02-04 17:36:48","2019-02-04 18:26:06","F","1","116");

INSERT INTO tb_acesso VALUES("98","kt7a4a15uuusshkt6fb8uppqq6","2019-02-05 10:23:23","2019-02-05 12:43:21","F","1","117");

INSERT INTO tb_acesso VALUES("99","kt7a4a15uuusshkt6fb8uppqq6","2019-02-05 12:48:41","2019-02-05 17:55:44","F","1","118");

INSERT INTO tb_acesso VALUES("100","kt7a4a15uuusshkt6fb8uppqq6","2019-02-05 17:55:54","2019-02-05 18:44:38","A","1","119");




DROP TABLE IF EXISTS tb_anotacao;


CREATE TABLE `tb_anotacao` (
  `co_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_anotacao`,`co_historia`),
  KEY `fk_TB_ANOTACAO_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO tb_anotacao VALUES("1","2018-08-03 19:14:15","<p>verificar o cadastro pelo site para manter um plano mesmo que que por experi&ecirc;ncia</p>","Cadastro pelo site para o assinante","2");

INSERT INTO tb_anotacao VALUES("2","2018-08-03 19:15:28","<p>Verificar quando for realizar a edi&ccedil;&atilde;o se o cadastro e hist&oacute;rico esta ok</p>","Edição da filial","3");

INSERT INTO tb_anotacao VALUES("3","2018-08-03 19:50:23","<p>Verificar como sera inserido o plano quando consta filiais e como sera cobrado o n&uacute;mero de profissionais com as filiais</p>","Plano com filial","4");

INSERT INTO tb_anotacao VALUES("4","2018-08-13 18:01:53","<p>Criar Usu&aacute;rio no cadastro na gest&atilde;o do assinante envio de email de confirma&ccedil;&atilde;o com senha gerada e ativa&ccedil;&atilde;o do cadastro</p>","Criar Usuário","2");

INSERT INTO tb_anotacao VALUES("5","2019-01-30 14:16:09","<p>Quem ira fazer a entrada de dados do cliente e quando ser&aacute; feito</p>","Entrada de dados do cliente","174");

INSERT INTO tb_anotacao VALUES("6","2019-01-30 14:17:03","<p>Havera um periodo de teste para o uso do sistema ? se sim de quanto dias</p>","Período de teste","174");

INSERT INTO tb_anotacao VALUES("7","2019-01-30 14:17:57","<p>Quem irar dar a entrada das informa&ccedil;&otilde;es e como sera feito (Arquivo de envio a receita)?</p>","Validação das informações","174");

INSERT INTO tb_anotacao VALUES("8","2019-01-30 14:19:16","<p>com que frequ&ecirc;ncia tem altera&ccedil;&atilde;o nas formalas de valida&ccedil;&atilde;o da receita?</p>","Alteração nas Fórmulas","174");

INSERT INTO tb_anotacao VALUES("9","2019-01-30 14:20:26","<p>Ser&aacute; necess&aacute;rio a utiliza&ccedil;&atilde;o de um site ou somente uso com clientes que ser&atilde;o captados?</p>","Uso de um site","174");




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

INSERT INTO tb_assinante VALUES("11","2018-08-14 16:45:26","2020-12-16","S","A","M","12","15");

INSERT INTO tb_assinante VALUES("12","2018-08-16 23:59:20","2018-09-30","N","A","M","13","16");

INSERT INTO tb_assinante VALUES("13","2018-08-28 10:59:39","2018-09-12","N","A","M","14","17");

INSERT INTO tb_assinante VALUES("14","2018-09-17 16:45:33","2019-01-02","N","A","M","15","18");




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
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("11","2018-07-24 15:28:56","Master","1");

INSERT INTO tb_auditoria VALUES("12","2018-07-24 16:58:01","Master","1");

INSERT INTO tb_auditoria VALUES("13","2018-07-24 17:03:25","Master","1");

INSERT INTO tb_auditoria VALUES("14","2018-07-24 17:03:43","Master","1");

INSERT INTO tb_auditoria VALUES("15","2018-07-24 17:04:01","Master","1");

INSERT INTO tb_auditoria VALUES("16","2018-07-24 17:04:16","Master","1");

INSERT INTO tb_auditoria VALUES("17","2018-07-24 17:05:48","Master","1");

INSERT INTO tb_auditoria VALUES("23","2018-07-24 22:36:04","Master","1");

INSERT INTO tb_auditoria VALUES("24","2018-07-24 22:36:59","Master","1");

INSERT INTO tb_auditoria VALUES("25","2018-07-25 11:03:37","Master","1");

INSERT INTO tb_auditoria VALUES("26","2018-07-25 11:05:18","Master","1");

INSERT INTO tb_auditoria VALUES("27","2018-07-25 11:06:56","Master","1");

INSERT INTO tb_auditoria VALUES("29","2018-07-25 11:09:26","Master","1");

INSERT INTO tb_auditoria VALUES("30","2018-07-25 11:24:23","Master","1");

INSERT INTO tb_auditoria VALUES("32","2018-07-25 11:37:35","Master","1");

INSERT INTO tb_auditoria VALUES("33","2018-07-25 11:42:55","Master","1");

INSERT INTO tb_auditoria VALUES("34","2018-07-25 11:43:19","Master","1");

INSERT INTO tb_auditoria VALUES("40","2018-07-25 12:11:05","Master","1");

INSERT INTO tb_auditoria VALUES("41","2018-07-25 12:19:44","Master","1");

INSERT INTO tb_auditoria VALUES("42","2018-07-25 12:21:30","Master","1");

INSERT INTO tb_auditoria VALUES("44","2018-07-25 12:27:26","Master","1");

INSERT INTO tb_auditoria VALUES("45","2018-07-25 12:28:51","Master","1");

INSERT INTO tb_auditoria VALUES("46","2018-07-25 12:29:10","Master","1");

INSERT INTO tb_auditoria VALUES("49","2018-07-25 14:38:19","Master","1");

INSERT INTO tb_auditoria VALUES("50","2018-07-25 14:39:47","Master","1");

INSERT INTO tb_auditoria VALUES("52","2018-07-25 14:43:03","Master","1");

INSERT INTO tb_auditoria VALUES("54","2018-07-25 14:54:36","Master","1");

INSERT INTO tb_auditoria VALUES("56","2018-07-25 15:13:38","Master","1");

INSERT INTO tb_auditoria VALUES("57","2018-07-25 15:15:19","Master","1");

INSERT INTO tb_auditoria VALUES("59","2018-07-25 15:56:08","Master","1");

INSERT INTO tb_auditoria VALUES("60","2018-07-25 15:59:43","Master","1");

INSERT INTO tb_auditoria VALUES("62","2018-07-25 16:12:20","Master","1");

INSERT INTO tb_auditoria VALUES("64","2018-07-25 16:16:48","Master","1");

INSERT INTO tb_auditoria VALUES("65","2018-07-25 16:17:12","Master","1");

INSERT INTO tb_auditoria VALUES("67","2018-07-25 16:19:34","Master","1");

INSERT INTO tb_auditoria VALUES("68","2018-07-25 16:21:25","Master","1");

INSERT INTO tb_auditoria VALUES("69","2018-07-25 16:23:07","Master","1");

INSERT INTO tb_auditoria VALUES("70","2018-07-25 16:26:14","Master","1");

INSERT INTO tb_auditoria VALUES("72","2018-07-25 16:30:26","Master","1");

INSERT INTO tb_auditoria VALUES("74","2018-07-25 17:12:39","Master","1");

INSERT INTO tb_auditoria VALUES("76","2018-07-25 17:14:29","Master","1");

INSERT INTO tb_auditoria VALUES("78","2018-07-25 17:23:18","Master","1");

INSERT INTO tb_auditoria VALUES("80","2018-07-25 17:32:10","Master","1");

INSERT INTO tb_auditoria VALUES("81","2018-07-25 17:32:34","Master","1");

INSERT INTO tb_auditoria VALUES("82","2018-07-25 17:44:09","Master","1");

INSERT INTO tb_auditoria VALUES("83","2018-07-25 17:44:46","Master","1");

INSERT INTO tb_auditoria VALUES("84","2018-07-25 17:49:26","Master","1");

INSERT INTO tb_auditoria VALUES("85","2018-07-25 17:50:48","Master","1");

INSERT INTO tb_auditoria VALUES("86","2018-07-25 17:52:20","Master","1");

INSERT INTO tb_auditoria VALUES("87","2018-07-25 17:55:21","Master","1");

INSERT INTO tb_auditoria VALUES("88","2018-07-25 17:56:16","Master","1");

INSERT INTO tb_auditoria VALUES("89","2018-07-25 17:57:19","Master","1");

INSERT INTO tb_auditoria VALUES("90","2018-07-25 17:57:52","Master","1");

INSERT INTO tb_auditoria VALUES("91","2018-07-25 17:58:43","Master","1");

INSERT INTO tb_auditoria VALUES("92","2018-07-25 17:59:03","Master","1");

INSERT INTO tb_auditoria VALUES("93","2018-07-25 18:12:12","Master","1");

INSERT INTO tb_auditoria VALUES("94","2018-07-25 18:13:09","Master","1");

INSERT INTO tb_auditoria VALUES("96","2018-07-25 18:16:22","Master","1");

INSERT INTO tb_auditoria VALUES("97","2018-07-25 18:24:58","Master","1");

INSERT INTO tb_auditoria VALUES("98","2018-07-25 18:25:44","Master","1");

INSERT INTO tb_auditoria VALUES("99","2018-07-25 18:27:03","Master","1");

INSERT INTO tb_auditoria VALUES("100","2018-07-25 18:29:25","Master","1");

INSERT INTO tb_auditoria VALUES("101","2018-07-25 18:40:36","Master","1");

INSERT INTO tb_auditoria VALUES("102","2018-07-25 18:42:35","Master","1");

INSERT INTO tb_auditoria VALUES("103","2018-07-25 18:43:26","Master","1");

INSERT INTO tb_auditoria VALUES("104","2018-07-25 18:44:48","Master","1");

INSERT INTO tb_auditoria VALUES("105","2018-07-25 18:45:49","Master","1");

INSERT INTO tb_auditoria VALUES("106","2018-07-25 18:55:44","Master","1");

INSERT INTO tb_auditoria VALUES("107","2018-07-25 19:11:25","Master","1");

INSERT INTO tb_auditoria VALUES("108","2018-07-25 19:11:54","Master","1");

INSERT INTO tb_auditoria VALUES("109","2018-07-25 19:17:02","Master","1");

INSERT INTO tb_auditoria VALUES("110","2018-07-25 19:17:37","Master","1");

INSERT INTO tb_auditoria VALUES("111","2018-07-25 19:20:30","Master","1");

INSERT INTO tb_auditoria VALUES("112","2018-07-25 19:21:41","Master","1");

INSERT INTO tb_auditoria VALUES("113","2018-07-25 19:22:51","Master","1");

INSERT INTO tb_auditoria VALUES("114","2018-07-25 19:24:05","Master","1");

INSERT INTO tb_auditoria VALUES("115","2018-07-25 19:24:33","Master","1");

INSERT INTO tb_auditoria VALUES("116","2018-07-25 19:25:05","Master","1");

INSERT INTO tb_auditoria VALUES("117","2018-07-25 19:25:36","Master","1");

INSERT INTO tb_auditoria VALUES("118","2018-07-25 19:26:05","Master","1");

INSERT INTO tb_auditoria VALUES("119","2018-07-25 19:26:53","Master","1");

INSERT INTO tb_auditoria VALUES("120","2018-07-25 19:27:25","Master","1");

INSERT INTO tb_auditoria VALUES("121","2018-07-25 19:27:58","Master","1");

INSERT INTO tb_auditoria VALUES("124","2018-07-26 11:46:54","Master","1");

INSERT INTO tb_auditoria VALUES("127","2018-07-26 17:36:50","Master","1");

INSERT INTO tb_auditoria VALUES("129","2018-07-26 17:38:31","Master","1");

INSERT INTO tb_auditoria VALUES("130","2018-07-26 17:39:10","Master","1");

INSERT INTO tb_auditoria VALUES("131","2018-07-26 17:40:01","Master","1");

INSERT INTO tb_auditoria VALUES("132","2018-07-26 17:40:37","Master","1");

INSERT INTO tb_auditoria VALUES("137","2018-07-26 17:45:02","Master","1");

INSERT INTO tb_auditoria VALUES("138","2018-07-26 17:45:23","Master","1");

INSERT INTO tb_auditoria VALUES("139","2018-07-26 17:46:23","Master","1");

INSERT INTO tb_auditoria VALUES("140","2018-07-26 17:47:24","Master","1");

INSERT INTO tb_auditoria VALUES("143","2018-07-26 17:55:15","Master","1");

INSERT INTO tb_auditoria VALUES("145","2018-07-26 17:58:04","Master","1");

INSERT INTO tb_auditoria VALUES("147","2018-07-26 18:00:07","Master","1");

INSERT INTO tb_auditoria VALUES("148","2018-07-26 18:01:36","Master","1");

INSERT INTO tb_auditoria VALUES("149","2018-07-26 18:02:18","Master","1");

INSERT INTO tb_auditoria VALUES("152","2018-07-26 18:13:56","Master","1");

INSERT INTO tb_auditoria VALUES("153","2018-07-26 18:15:35","Master","1");

INSERT INTO tb_auditoria VALUES("155","2018-07-26 18:40:29","Master","1");

INSERT INTO tb_auditoria VALUES("156","2018-07-26 18:41:34","Master","1");

INSERT INTO tb_auditoria VALUES("157","2018-07-26 18:45:07","Master","1");

INSERT INTO tb_auditoria VALUES("158","2018-07-26 18:47:00","Master","1");

INSERT INTO tb_auditoria VALUES("160","2018-07-26 18:49:20","Master","1");

INSERT INTO tb_auditoria VALUES("164","2018-07-26 18:51:32","Master","1");

INSERT INTO tb_auditoria VALUES("166","2018-07-26 18:53:05","Master","1");

INSERT INTO tb_auditoria VALUES("169","2018-07-26 18:55:02","Master","1");

INSERT INTO tb_auditoria VALUES("179","2018-07-26 22:16:38","Master","1");

INSERT INTO tb_auditoria VALUES("181","2018-07-26 22:19:03","Master","1");

INSERT INTO tb_auditoria VALUES("182","2018-07-26 22:21:00","Master","1");

INSERT INTO tb_auditoria VALUES("183","2018-07-26 22:23:39","Master","1");

INSERT INTO tb_auditoria VALUES("184","2018-07-26 22:25:10","Master","1");

INSERT INTO tb_auditoria VALUES("186","2018-07-26 22:27:22","Master","1");

INSERT INTO tb_auditoria VALUES("187","2018-07-26 22:28:33","Master","1");

INSERT INTO tb_auditoria VALUES("189","2018-07-27 14:57:21","Master","1");

INSERT INTO tb_auditoria VALUES("190","2018-07-27 14:59:44","Master","1");

INSERT INTO tb_auditoria VALUES("191","2018-07-27 15:00:17","Master","1");

INSERT INTO tb_auditoria VALUES("192","2018-07-27 15:02:27","Master","1");

INSERT INTO tb_auditoria VALUES("193","2018-07-27 17:19:07","Master","1");

INSERT INTO tb_auditoria VALUES("194","2018-07-27 17:22:59","Master","1");

INSERT INTO tb_auditoria VALUES("195","2018-07-27 17:37:41","Master","1");

INSERT INTO tb_auditoria VALUES("196","2018-07-27 17:38:44","Master","1");

INSERT INTO tb_auditoria VALUES("197","2018-07-27 17:39:05","Master","1");

INSERT INTO tb_auditoria VALUES("198","2018-07-27 17:40:17","Master","1");

INSERT INTO tb_auditoria VALUES("199","2018-07-27 17:41:17","Master","1");

INSERT INTO tb_auditoria VALUES("200","2018-07-27 17:41:42","Master","1");

INSERT INTO tb_auditoria VALUES("201","2018-07-27 17:43:01","Master","1");

INSERT INTO tb_auditoria VALUES("202","2018-07-27 17:45:36","Master","1");

INSERT INTO tb_auditoria VALUES("203","2018-07-27 17:46:02","Master","1");

INSERT INTO tb_auditoria VALUES("204","2018-07-27 17:46:32","Master","1");

INSERT INTO tb_auditoria VALUES("205","2018-07-27 17:46:55","Master","1");

INSERT INTO tb_auditoria VALUES("206","2018-07-27 17:47:20","Master","1");

INSERT INTO tb_auditoria VALUES("207","2018-07-27 17:47:48","Master","1");

INSERT INTO tb_auditoria VALUES("208","2018-07-27 17:49:20","Master","1");

INSERT INTO tb_auditoria VALUES("209","2018-07-27 17:50:16","Master","1");

INSERT INTO tb_auditoria VALUES("210","2018-07-27 17:51:05","Master","1");

INSERT INTO tb_auditoria VALUES("211","2018-07-27 17:51:49","Master","1");

INSERT INTO tb_auditoria VALUES("212","2018-07-27 17:53:27","Master","1");

INSERT INTO tb_auditoria VALUES("213","2018-07-27 17:54:38","Master","1");

INSERT INTO tb_auditoria VALUES("214","2018-07-27 17:55:41","Master","1");

INSERT INTO tb_auditoria VALUES("215","2018-07-27 17:57:45","Master","1");

INSERT INTO tb_auditoria VALUES("216","2018-07-27 18:06:37","Master","1");

INSERT INTO tb_auditoria VALUES("217","2018-07-27 18:07:01","Master","1");

INSERT INTO tb_auditoria VALUES("218","2018-07-27 18:07:54","Master","1");

INSERT INTO tb_auditoria VALUES("219","2018-07-27 18:09:40","Master","1");

INSERT INTO tb_auditoria VALUES("220","2018-07-27 18:10:55","Master","1");

INSERT INTO tb_auditoria VALUES("221","2018-07-27 18:12:06","Master","1");

INSERT INTO tb_auditoria VALUES("222","2018-07-27 18:12:44","Master","1");

INSERT INTO tb_auditoria VALUES("223","2018-07-27 18:13:22","Master","1");

INSERT INTO tb_auditoria VALUES("224","2018-07-27 18:14:26","Master","1");

INSERT INTO tb_auditoria VALUES("225","2018-07-27 18:15:07","Master","1");

INSERT INTO tb_auditoria VALUES("226","2018-07-27 18:17:28","Master","1");

INSERT INTO tb_auditoria VALUES("227","2018-07-27 18:19:02","Master","1");

INSERT INTO tb_auditoria VALUES("228","2018-07-27 18:19:26","Master","1");

INSERT INTO tb_auditoria VALUES("229","2018-07-27 18:20:43","Master","1");

INSERT INTO tb_auditoria VALUES("230","2018-07-27 18:22:34","Master","1");

INSERT INTO tb_auditoria VALUES("231","2018-07-27 18:23:56","Master","1");

INSERT INTO tb_auditoria VALUES("232","2018-07-27 18:24:36","Master","1");

INSERT INTO tb_auditoria VALUES("233","2018-07-27 18:25:16","Master","1");

INSERT INTO tb_auditoria VALUES("234","2018-07-27 18:49:49","Master","1");

INSERT INTO tb_auditoria VALUES("235","2018-07-27 18:52:04","Master","1");

INSERT INTO tb_auditoria VALUES("236","2018-07-27 18:53:06","Master","1");

INSERT INTO tb_auditoria VALUES("237","2018-07-27 18:54:22","Master","1");

INSERT INTO tb_auditoria VALUES("238","2018-07-27 18:56:13","Master","1");

INSERT INTO tb_auditoria VALUES("239","2018-07-27 19:00:55","Master","1");

INSERT INTO tb_auditoria VALUES("240","2018-07-27 19:01:27","Master","1");

INSERT INTO tb_auditoria VALUES("241","2018-07-27 19:02:44","Master","1");

INSERT INTO tb_auditoria VALUES("242","2018-07-27 19:03:12","Master","1");

INSERT INTO tb_auditoria VALUES("243","2018-07-27 19:08:38","Master","1");

INSERT INTO tb_auditoria VALUES("244","2018-07-27 19:09:29","Master","1");

INSERT INTO tb_auditoria VALUES("245","2018-07-27 19:12:19","Master","1");

INSERT INTO tb_auditoria VALUES("246","2018-07-30 10:32:17","Master","1");

INSERT INTO tb_auditoria VALUES("247","2018-07-30 11:10:26","Master","1");

INSERT INTO tb_auditoria VALUES("248","2018-07-30 11:11:11","Master","1");

INSERT INTO tb_auditoria VALUES("249","2018-07-30 11:30:50","Master","1");

INSERT INTO tb_auditoria VALUES("250","2018-07-30 11:31:12","Master","1");

INSERT INTO tb_auditoria VALUES("251","2018-07-30 11:37:21","Master","1");

INSERT INTO tb_auditoria VALUES("252","2018-07-30 12:29:08","Master","1");

INSERT INTO tb_auditoria VALUES("253","2018-07-30 12:29:34","Master","1");

INSERT INTO tb_auditoria VALUES("254","2018-07-30 12:32:42","Master","1");

INSERT INTO tb_auditoria VALUES("255","2018-07-30 12:43:28","Master","1");

INSERT INTO tb_auditoria VALUES("256","2018-07-31 12:10:59","Master","1");

INSERT INTO tb_auditoria VALUES("257","2018-07-31 15:05:13","Master","1");

INSERT INTO tb_auditoria VALUES("258","2018-07-31 15:26:40","Master","1");

INSERT INTO tb_auditoria VALUES("259","2018-07-31 15:27:03","Master","1");

INSERT INTO tb_auditoria VALUES("260","2018-07-31 15:30:22","Master","1");

INSERT INTO tb_auditoria VALUES("261","2018-07-31 18:05:29","Master","1");

INSERT INTO tb_auditoria VALUES("262","2018-07-31 20:12:44","Master","1");

INSERT INTO tb_auditoria VALUES("263","2018-07-31 22:41:38","Master","1");

INSERT INTO tb_auditoria VALUES("264","2018-07-31 22:45:16","Master","1");

INSERT INTO tb_auditoria VALUES("265","2018-07-31 22:45:39","Master","1");

INSERT INTO tb_auditoria VALUES("266","2018-08-01 00:01:18","Master","1");

INSERT INTO tb_auditoria VALUES("267","2018-08-03 19:12:14","Master","1");

INSERT INTO tb_auditoria VALUES("268","2018-08-03 19:12:38","Master","1");

INSERT INTO tb_auditoria VALUES("271","2018-08-03 19:31:35","Master","1");

INSERT INTO tb_auditoria VALUES("272","2018-08-03 19:34:31","Master","1");

INSERT INTO tb_auditoria VALUES("276","2018-08-13 12:05:19","Master","1");

INSERT INTO tb_auditoria VALUES("277","2018-08-13 17:32:58","Master","1");

INSERT INTO tb_auditoria VALUES("278","2018-08-13 17:33:25","Master","1");

INSERT INTO tb_auditoria VALUES("279","2018-08-13 17:56:16","Master","1");

INSERT INTO tb_auditoria VALUES("280","2018-08-13 17:56:39","Master","1");

INSERT INTO tb_auditoria VALUES("282","2018-08-13 18:02:23","Master","1");

INSERT INTO tb_auditoria VALUES("283","2018-08-13 18:04:13","Master","1");

INSERT INTO tb_auditoria VALUES("284","2018-08-13 18:05:02","Master","1");

INSERT INTO tb_auditoria VALUES("285","2018-08-13 23:02:29","Master","1");

INSERT INTO tb_auditoria VALUES("287","2018-08-14 12:45:44","Master","1");

INSERT INTO tb_auditoria VALUES("288","2018-08-14 12:51:01","Master","1");

INSERT INTO tb_auditoria VALUES("289","2018-08-14 17:31:36","Master","1");

INSERT INTO tb_auditoria VALUES("290","2018-08-15 11:16:04","Master","1");

INSERT INTO tb_auditoria VALUES("291","2018-08-15 20:30:34","Master","1");

INSERT INTO tb_auditoria VALUES("292","2018-08-17 15:57:25","Master","1");

INSERT INTO tb_auditoria VALUES("295","2018-08-17 16:12:02","Master","1");

INSERT INTO tb_auditoria VALUES("296","2018-08-17 16:12:24","Master","1");

INSERT INTO tb_auditoria VALUES("297","2018-08-17 16:12:59","Master","1");

INSERT INTO tb_auditoria VALUES("298","2018-08-17 16:13:28","Master","1");

INSERT INTO tb_auditoria VALUES("299","2018-08-17 18:09:18","Master","1");

INSERT INTO tb_auditoria VALUES("301","2018-08-28 11:25:01","Master","1");

INSERT INTO tb_auditoria VALUES("302","2018-08-28 18:49:22","Master","1");

INSERT INTO tb_auditoria VALUES("303","2018-08-30 10:57:06","Master","1");

INSERT INTO tb_auditoria VALUES("304","2018-08-30 10:58:04","Master","1");

INSERT INTO tb_auditoria VALUES("305","2018-08-30 10:58:26","Master","1");

INSERT INTO tb_auditoria VALUES("306","2018-08-30 10:58:57","Master","1");

INSERT INTO tb_auditoria VALUES("307","2018-09-18 08:43:04","Master","1");

INSERT INTO tb_auditoria VALUES("308","2018-09-18 08:43:40","Master","1");

INSERT INTO tb_auditoria VALUES("309","2018-09-18 08:44:10","Master","1");

INSERT INTO tb_auditoria VALUES("310","2018-09-18 08:44:33","Master","1");

INSERT INTO tb_auditoria VALUES("311","2018-09-21 22:08:20","Master","1");

INSERT INTO tb_auditoria VALUES("312","2018-09-21 22:08:49","Master","1");

INSERT INTO tb_auditoria VALUES("313","2018-09-21 22:09:17","Master","1");

INSERT INTO tb_auditoria VALUES("314","2018-09-21 22:09:40","Master","1");

INSERT INTO tb_auditoria VALUES("315","2018-09-24 20:33:36","Master","1");

INSERT INTO tb_auditoria VALUES("316","2018-09-24 20:34:02","Master","1");

INSERT INTO tb_auditoria VALUES("317","2018-09-25 14:23:14","Master","1");

INSERT INTO tb_auditoria VALUES("318","2018-09-25 14:26:26","Master","1");

INSERT INTO tb_auditoria VALUES("319","2018-09-25 14:27:18","Master","1");

INSERT INTO tb_auditoria VALUES("320","2018-09-25 14:28:00","Master","1");

INSERT INTO tb_auditoria VALUES("321","2018-09-25 14:31:36","Master","1");

INSERT INTO tb_auditoria VALUES("322","2018-09-25 14:31:59","Master","1");

INSERT INTO tb_auditoria VALUES("323","2018-10-18 20:24:57","Master","1");

INSERT INTO tb_auditoria VALUES("324","2018-10-19 11:26:45","Master","1");

INSERT INTO tb_auditoria VALUES("325","2018-10-19 11:32:01","Master","1");

INSERT INTO tb_auditoria VALUES("326","2018-10-19 11:32:32","Master","1");

INSERT INTO tb_auditoria VALUES("327","2018-10-26 20:28:56","Master","1");

INSERT INTO tb_auditoria VALUES("328","2018-10-26 20:29:19","Master","1");

INSERT INTO tb_auditoria VALUES("329","2018-10-26 20:35:47","Master","1");

INSERT INTO tb_auditoria VALUES("330","2018-10-26 20:45:05","Master","1");

INSERT INTO tb_auditoria VALUES("331","2018-11-14 16:07:41","Master","1");

INSERT INTO tb_auditoria VALUES("332","2018-11-19 17:37:31","Master","1");

INSERT INTO tb_auditoria VALUES("333","2018-11-19 17:37:56","Master","1");

INSERT INTO tb_auditoria VALUES("334","2018-11-22 16:03:43","Master","1");

INSERT INTO tb_auditoria VALUES("335","2018-11-22 16:22:54","Master","1");

INSERT INTO tb_auditoria VALUES("336","2018-11-22 16:23:19","Master","1");

INSERT INTO tb_auditoria VALUES("337","2018-11-23 17:55:10","Master","1");

INSERT INTO tb_auditoria VALUES("338","2018-11-23 17:55:38","Master","1");

INSERT INTO tb_auditoria VALUES("339","2018-11-26 17:29:23","Master","1");

INSERT INTO tb_auditoria VALUES("340","2018-11-27 13:45:17","Master","1");

INSERT INTO tb_auditoria VALUES("341","2018-11-27 14:53:46","Master","1");

INSERT INTO tb_auditoria VALUES("342","2018-11-27 18:13:21","Master","1");

INSERT INTO tb_auditoria VALUES("343","2018-11-27 18:23:03","Master","1");

INSERT INTO tb_auditoria VALUES("344","2018-12-03 11:54:01","Master","1");

INSERT INTO tb_auditoria VALUES("345","2018-12-10 16:51:54","Master","1");

INSERT INTO tb_auditoria VALUES("346","2018-12-10 16:52:48","Master","1");

INSERT INTO tb_auditoria VALUES("347","2018-12-11 14:07:07","Master","1");

INSERT INTO tb_auditoria VALUES("348","2018-12-13 17:10:50","Master","1");

INSERT INTO tb_auditoria VALUES("349","2018-12-13 17:56:07","Master","1");

INSERT INTO tb_auditoria VALUES("359","2018-12-20 13:39:20","Master","1");

INSERT INTO tb_auditoria VALUES("360","2018-12-20 13:42:59","Master","1");

INSERT INTO tb_auditoria VALUES("413","2019-01-25 11:56:43","Master","1");

INSERT INTO tb_auditoria VALUES("414","2019-01-25 14:03:01","Master","1");

INSERT INTO tb_auditoria VALUES("415","2019-01-31 14:35:46","Master","1");

INSERT INTO tb_auditoria VALUES("416","2019-01-31 14:36:53","Master","1");

INSERT INTO tb_auditoria VALUES("417","2019-01-31 14:38:18","Master","1");

INSERT INTO tb_auditoria VALUES("418","2019-01-31 14:45:18","Master","1");

INSERT INTO tb_auditoria VALUES("419","2019-01-31 14:46:33","Master","1");




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=3085 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_itens VALUES("34","","3","nu_esforco","11");

INSERT INTO tb_auditoria_itens VALUES("35","","3","nu_esforco_restante","11");

INSERT INTO tb_auditoria_itens VALUES("44","3","8","nu_esforco","12");

INSERT INTO tb_auditoria_itens VALUES("45","3","7","nu_esforco_restante","12");

INSERT INTO tb_auditoria_itens VALUES("53","8","8","nu_esforco","13");

INSERT INTO tb_auditoria_itens VALUES("54","7","7","nu_esforco_restante","13");

INSERT INTO tb_auditoria_itens VALUES("62","8","8","nu_esforco","14");

INSERT INTO tb_auditoria_itens VALUES("63","7","1","nu_esforco_restante","14");

INSERT INTO tb_auditoria_itens VALUES("71","8","8","nu_esforco","15");

INSERT INTO tb_auditoria_itens VALUES("72","1","","nu_esforco_restante","15");

INSERT INTO tb_auditoria_itens VALUES("80","8","8","nu_esforco","16");

INSERT INTO tb_auditoria_itens VALUES("81","0","8","nu_esforco_restante","16");

INSERT INTO tb_auditoria_itens VALUES("89","8","8","nu_esforco","17");

INSERT INTO tb_auditoria_itens VALUES("90","8","8","nu_esforco_restante","17");

INSERT INTO tb_auditoria_itens VALUES("112","8","8","nu_esforco","23");

INSERT INTO tb_auditoria_itens VALUES("113","5","","nu_esforco_restante","23");

INSERT INTO tb_auditoria_itens VALUES("121","8","8","nu_esforco","24");

INSERT INTO tb_auditoria_itens VALUES("122","0","8","nu_esforco_restante","24");

INSERT INTO tb_auditoria_itens VALUES("130","8","3","nu_esforco","25");

INSERT INTO tb_auditoria_itens VALUES("131","8","3","nu_esforco_restante","25");

INSERT INTO tb_auditoria_itens VALUES("139","3","8","nu_esforco","26");

INSERT INTO tb_auditoria_itens VALUES("140","3","8","nu_esforco_restante","26");

INSERT INTO tb_auditoria_itens VALUES("148","8","8","nu_esforco","27");

INSERT INTO tb_auditoria_itens VALUES("149","8","8","nu_esforco_restante","27");

INSERT INTO tb_auditoria_itens VALUES("160","8","13","nu_esforco","29");

INSERT INTO tb_auditoria_itens VALUES("161","8","13","nu_esforco_restante","29");

INSERT INTO tb_auditoria_itens VALUES("167","","13","nu_esforco","30");

INSERT INTO tb_auditoria_itens VALUES("168","","13","nu_esforco_restante","30");

INSERT INTO tb_auditoria_itens VALUES("179","","5","nu_esforco","32");

INSERT INTO tb_auditoria_itens VALUES("180","","5","nu_esforco_restante","32");

INSERT INTO tb_auditoria_itens VALUES("187","","20","nu_esforco","33");

INSERT INTO tb_auditoria_itens VALUES("188","","20","nu_esforco_restante","33");

INSERT INTO tb_auditoria_itens VALUES("197","20","20","nu_esforco","34");

INSERT INTO tb_auditoria_itens VALUES("198","20","20","nu_esforco_restante","34");

INSERT INTO tb_auditoria_itens VALUES("224","","8","nu_esforco","40");

INSERT INTO tb_auditoria_itens VALUES("225","","8","nu_esforco_restante","40");

INSERT INTO tb_auditoria_itens VALUES("232","","5","nu_esforco","41");

INSERT INTO tb_auditoria_itens VALUES("233","","5","nu_esforco_restante","41");

INSERT INTO tb_auditoria_itens VALUES("240","","8","nu_esforco","42");

INSERT INTO tb_auditoria_itens VALUES("241","","8","nu_esforco_restante","42");

INSERT INTO tb_auditoria_itens VALUES("251","","13","nu_esforco","44");

INSERT INTO tb_auditoria_itens VALUES("252","","13","nu_esforco_restante","44");

INSERT INTO tb_auditoria_itens VALUES("259","","5","nu_esforco","45");

INSERT INTO tb_auditoria_itens VALUES("260","","5","nu_esforco_restante","45");

INSERT INTO tb_auditoria_itens VALUES("269","5","5","nu_esforco","46");

INSERT INTO tb_auditoria_itens VALUES("270","5","5","nu_esforco_restante","46");

INSERT INTO tb_auditoria_itens VALUES("283","","20","nu_esforco","49");

INSERT INTO tb_auditoria_itens VALUES("284","","20","nu_esforco_restante","49");

INSERT INTO tb_auditoria_itens VALUES("293","20","20","nu_esforco","50");

INSERT INTO tb_auditoria_itens VALUES("294","20","20","nu_esforco_restante","50");

INSERT INTO tb_auditoria_itens VALUES("303","","3","nu_esforco","52");

INSERT INTO tb_auditoria_itens VALUES("304","","3","nu_esforco_restante","52");

INSERT INTO tb_auditoria_itens VALUES("314","","13","nu_esforco","54");

INSERT INTO tb_auditoria_itens VALUES("315","","13","nu_esforco_restante","54");

INSERT INTO tb_auditoria_itens VALUES("325","","3","nu_esforco","56");

INSERT INTO tb_auditoria_itens VALUES("326","","3","nu_esforco_restante","56");

INSERT INTO tb_auditoria_itens VALUES("333","","3","nu_esforco","57");

INSERT INTO tb_auditoria_itens VALUES("334","","3","nu_esforco_restante","57");

INSERT INTO tb_auditoria_itens VALUES("344","","13","nu_esforco","59");

INSERT INTO tb_auditoria_itens VALUES("345","","13","nu_esforco_restante","59");

INSERT INTO tb_auditoria_itens VALUES("352","","5","nu_esforco","60");

INSERT INTO tb_auditoria_itens VALUES("353","","5","nu_esforco_restante","60");

INSERT INTO tb_auditoria_itens VALUES("363","","5","nu_esforco","62");

INSERT INTO tb_auditoria_itens VALUES("364","","5","nu_esforco_restante","62");

INSERT INTO tb_auditoria_itens VALUES("374","","8","nu_esforco","64");

INSERT INTO tb_auditoria_itens VALUES("375","","8","nu_esforco_restante","64");

INSERT INTO tb_auditoria_itens VALUES("384","8","13","nu_esforco","65");

INSERT INTO tb_auditoria_itens VALUES("385","8","13","nu_esforco_restante","65");

INSERT INTO tb_auditoria_itens VALUES("394","","3","nu_esforco","67");

INSERT INTO tb_auditoria_itens VALUES("395","","3","nu_esforco_restante","67");

INSERT INTO tb_auditoria_itens VALUES("402","","5","nu_esforco","68");

INSERT INTO tb_auditoria_itens VALUES("403","","5","nu_esforco_restante","68");

INSERT INTO tb_auditoria_itens VALUES("410","","13","nu_esforco","69");

INSERT INTO tb_auditoria_itens VALUES("411","","13","nu_esforco_restante","69");

INSERT INTO tb_auditoria_itens VALUES("418","","5","nu_esforco","70");

INSERT INTO tb_auditoria_itens VALUES("419","","5","nu_esforco_restante","70");

INSERT INTO tb_auditoria_itens VALUES("429","","13","nu_esforco","72");

INSERT INTO tb_auditoria_itens VALUES("430","","13","nu_esforco_restante","72");

INSERT INTO tb_auditoria_itens VALUES("440","","5","nu_esforco","74");

INSERT INTO tb_auditoria_itens VALUES("441","","5","nu_esforco_restante","74");

INSERT INTO tb_auditoria_itens VALUES("451","","3","nu_esforco","76");

INSERT INTO tb_auditoria_itens VALUES("452","","3","nu_esforco_restante","76");

INSERT INTO tb_auditoria_itens VALUES("462","","8","nu_esforco","78");

INSERT INTO tb_auditoria_itens VALUES("463","","8","nu_esforco_restante","78");

INSERT INTO tb_auditoria_itens VALUES("473","","8","nu_esforco","80");

INSERT INTO tb_auditoria_itens VALUES("474","","8","nu_esforco_restante","80");

INSERT INTO tb_auditoria_itens VALUES("483","8","13","nu_esforco","81");

INSERT INTO tb_auditoria_itens VALUES("484","8","13","nu_esforco_restante","81");

INSERT INTO tb_auditoria_itens VALUES("490","","40","nu_esforco","82");

INSERT INTO tb_auditoria_itens VALUES("491","","40","nu_esforco_restante","82");

INSERT INTO tb_auditoria_itens VALUES("498","","40","nu_esforco","83");

INSERT INTO tb_auditoria_itens VALUES("499","","40","nu_esforco_restante","83");

INSERT INTO tb_auditoria_itens VALUES("506","","13","nu_esforco","84");

INSERT INTO tb_auditoria_itens VALUES("507","","13","nu_esforco_restante","84");

INSERT INTO tb_auditoria_itens VALUES("516","13","20","nu_esforco","85");

INSERT INTO tb_auditoria_itens VALUES("517","13","20","nu_esforco_restante","85");

INSERT INTO tb_auditoria_itens VALUES("523","","5","nu_esforco","86");

INSERT INTO tb_auditoria_itens VALUES("524","","5","nu_esforco_restante","86");

INSERT INTO tb_auditoria_itens VALUES("531","","8","nu_esforco","87");

INSERT INTO tb_auditoria_itens VALUES("532","","8","nu_esforco_restante","87");

INSERT INTO tb_auditoria_itens VALUES("541","20","13","nu_esforco","88");

INSERT INTO tb_auditoria_itens VALUES("542","20","13","nu_esforco_restante","88");

INSERT INTO tb_auditoria_itens VALUES("548","","8","nu_esforco","89");

INSERT INTO tb_auditoria_itens VALUES("549","","8","nu_esforco_restante","89");

INSERT INTO tb_auditoria_itens VALUES("556","","3","nu_esforco","90");

INSERT INTO tb_auditoria_itens VALUES("557","","3","nu_esforco_restante","90");

INSERT INTO tb_auditoria_itens VALUES("564","","5","nu_esforco","91");

INSERT INTO tb_auditoria_itens VALUES("565","","5","nu_esforco_restante","91");

INSERT INTO tb_auditoria_itens VALUES("574","5","8","nu_esforco","92");

INSERT INTO tb_auditoria_itens VALUES("575","5","8","nu_esforco_restante","92");

INSERT INTO tb_auditoria_itens VALUES("581","","13","nu_esforco","93");

INSERT INTO tb_auditoria_itens VALUES("582","","13","nu_esforco_restante","93");

INSERT INTO tb_auditoria_itens VALUES("589","","8","nu_esforco","94");

INSERT INTO tb_auditoria_itens VALUES("590","","8","nu_esforco_restante","94");

INSERT INTO tb_auditoria_itens VALUES("600","","8","nu_esforco","96");

INSERT INTO tb_auditoria_itens VALUES("601","","8","nu_esforco_restante","96");

INSERT INTO tb_auditoria_itens VALUES("608","","8","nu_esforco","97");

INSERT INTO tb_auditoria_itens VALUES("609","","8","nu_esforco_restante","97");

INSERT INTO tb_auditoria_itens VALUES("616","","8","nu_esforco","98");

INSERT INTO tb_auditoria_itens VALUES("617","","8","nu_esforco_restante","98");

INSERT INTO tb_auditoria_itens VALUES("624","","13","nu_esforco","99");

INSERT INTO tb_auditoria_itens VALUES("625","","13","nu_esforco_restante","99");

INSERT INTO tb_auditoria_itens VALUES("634","13","13","nu_esforco","100");

INSERT INTO tb_auditoria_itens VALUES("635","13","13","nu_esforco_restante","100");

INSERT INTO tb_auditoria_itens VALUES("641","","8","nu_esforco","101");

INSERT INTO tb_auditoria_itens VALUES("642","","8","nu_esforco_restante","101");

INSERT INTO tb_auditoria_itens VALUES("649","","8","nu_esforco","102");

INSERT INTO tb_auditoria_itens VALUES("650","","8","nu_esforco_restante","102");

INSERT INTO tb_auditoria_itens VALUES("657","","20","nu_esforco","103");

INSERT INTO tb_auditoria_itens VALUES("658","","20","nu_esforco_restante","103");

INSERT INTO tb_auditoria_itens VALUES("667","8","8","nu_esforco","104");

INSERT INTO tb_auditoria_itens VALUES("668","8","8","nu_esforco_restante","104");

INSERT INTO tb_auditoria_itens VALUES("676","8","8","nu_esforco","105");

INSERT INTO tb_auditoria_itens VALUES("677","8","8","nu_esforco_restante","105");

INSERT INTO tb_auditoria_itens VALUES("683","","8","nu_esforco","106");

INSERT INTO tb_auditoria_itens VALUES("684","","8","nu_esforco_restante","106");

INSERT INTO tb_auditoria_itens VALUES("691","","8","nu_esforco","107");

INSERT INTO tb_auditoria_itens VALUES("692","","8","nu_esforco_restante","107");

INSERT INTO tb_auditoria_itens VALUES("701","8","8","nu_esforco","108");

INSERT INTO tb_auditoria_itens VALUES("702","8","8","nu_esforco_restante","108");

INSERT INTO tb_auditoria_itens VALUES("708","","8","nu_esforco","109");

INSERT INTO tb_auditoria_itens VALUES("709","","8","nu_esforco_restante","109");

INSERT INTO tb_auditoria_itens VALUES("716","","8","nu_esforco","110");

INSERT INTO tb_auditoria_itens VALUES("717","","8","nu_esforco_restante","110");

INSERT INTO tb_auditoria_itens VALUES("724","","8","nu_esforco","111");

INSERT INTO tb_auditoria_itens VALUES("725","","8","nu_esforco_restante","111");

INSERT INTO tb_auditoria_itens VALUES("732","","8","nu_esforco","112");

INSERT INTO tb_auditoria_itens VALUES("733","","8","nu_esforco_restante","112");

INSERT INTO tb_auditoria_itens VALUES("740","","5","nu_esforco","113");

INSERT INTO tb_auditoria_itens VALUES("741","","5","nu_esforco_restante","113");

INSERT INTO tb_auditoria_itens VALUES("748","","8","nu_esforco","114");

INSERT INTO tb_auditoria_itens VALUES("749","","8","nu_esforco_restante","114");

INSERT INTO tb_auditoria_itens VALUES("756","","8","nu_esforco","115");

INSERT INTO tb_auditoria_itens VALUES("757","","8","nu_esforco_restante","115");

INSERT INTO tb_auditoria_itens VALUES("764","","8","nu_esforco","116");

INSERT INTO tb_auditoria_itens VALUES("765","","8","nu_esforco_restante","116");

INSERT INTO tb_auditoria_itens VALUES("772","","8","nu_esforco","117");

INSERT INTO tb_auditoria_itens VALUES("773","","8","nu_esforco_restante","117");

INSERT INTO tb_auditoria_itens VALUES("780","","8","nu_esforco","118");

INSERT INTO tb_auditoria_itens VALUES("781","","8","nu_esforco_restante","118");

INSERT INTO tb_auditoria_itens VALUES("788","","8","nu_esforco","119");

INSERT INTO tb_auditoria_itens VALUES("789","","8","nu_esforco_restante","119");

INSERT INTO tb_auditoria_itens VALUES("796","","8","nu_esforco","120");

INSERT INTO tb_auditoria_itens VALUES("797","","8","nu_esforco_restante","120");

INSERT INTO tb_auditoria_itens VALUES("804","","8","nu_esforco","121");

INSERT INTO tb_auditoria_itens VALUES("805","","8","nu_esforco_restante","121");

INSERT INTO tb_auditoria_itens VALUES("818","","40","nu_esforco","124");

INSERT INTO tb_auditoria_itens VALUES("819","","25","nu_esforco_restante","124");

INSERT INTO tb_auditoria_itens VALUES("832","","40","nu_esforco","127");

INSERT INTO tb_auditoria_itens VALUES("833","","40","nu_esforco_restante","127");

INSERT INTO tb_auditoria_itens VALUES("843","","40","nu_esforco","129");

INSERT INTO tb_auditoria_itens VALUES("844","","40","nu_esforco_restante","129");

INSERT INTO tb_auditoria_itens VALUES("851","","20","nu_esforco","130");

INSERT INTO tb_auditoria_itens VALUES("852","","20","nu_esforco_restante","130");

INSERT INTO tb_auditoria_itens VALUES("859","","40","nu_esforco","131");

INSERT INTO tb_auditoria_itens VALUES("860","","40","nu_esforco_restante","131");

INSERT INTO tb_auditoria_itens VALUES("867","","20","nu_esforco","132");

INSERT INTO tb_auditoria_itens VALUES("868","","20","nu_esforco_restante","132");

INSERT INTO tb_auditoria_itens VALUES("889","","40","nu_esforco","137");

INSERT INTO tb_auditoria_itens VALUES("890","","40","nu_esforco_restante","137");

INSERT INTO tb_auditoria_itens VALUES("899","40","40","nu_esforco","138");

INSERT INTO tb_auditoria_itens VALUES("900","40","40","nu_esforco_restante","138");

INSERT INTO tb_auditoria_itens VALUES("906","","40","nu_esforco","139");

INSERT INTO tb_auditoria_itens VALUES("907","","40","nu_esforco_restante","139");

INSERT INTO tb_auditoria_itens VALUES("914","","20","nu_esforco","140");

INSERT INTO tb_auditoria_itens VALUES("915","","20","nu_esforco_restante","140");

INSERT INTO tb_auditoria_itens VALUES("928","","40","nu_esforco","143");

INSERT INTO tb_auditoria_itens VALUES("929","","40","nu_esforco_restante","143");

INSERT INTO tb_auditoria_itens VALUES("942","40","40","nu_esforco","145");

INSERT INTO tb_auditoria_itens VALUES("943","40","40","nu_esforco_restante","145");

INSERT INTO tb_auditoria_itens VALUES("953","","13","nu_esforco","147");

INSERT INTO tb_auditoria_itens VALUES("954","","13","nu_esforco_restante","147");

INSERT INTO tb_auditoria_itens VALUES("961","","40","nu_esforco","148");

INSERT INTO tb_auditoria_itens VALUES("962","","40","nu_esforco_restante","148");

INSERT INTO tb_auditoria_itens VALUES("969","","20","nu_esforco","149");

INSERT INTO tb_auditoria_itens VALUES("970","","20","nu_esforco_restante","149");

INSERT INTO tb_auditoria_itens VALUES("984","","20","nu_esforco","152");

INSERT INTO tb_auditoria_itens VALUES("985","","3","nu_esforco_restante","152");

INSERT INTO tb_auditoria_itens VALUES("994","20","13","nu_esforco","153");

INSERT INTO tb_auditoria_itens VALUES("995","3","3","nu_esforco_restante","153");

INSERT INTO tb_auditoria_itens VALUES("1004","","30","nu_esforco","155");

INSERT INTO tb_auditoria_itens VALUES("1005","","30","nu_esforco_restante","155");

INSERT INTO tb_auditoria_itens VALUES("1014","13","20","nu_esforco","156");

INSERT INTO tb_auditoria_itens VALUES("1015","13","20","nu_esforco_restante","156");

INSERT INTO tb_auditoria_itens VALUES("1023","40","40","nu_esforco","157");

INSERT INTO tb_auditoria_itens VALUES("1024","40","40","nu_esforco_restante","157");

INSERT INTO tb_auditoria_itens VALUES("1032","40","40","nu_esforco","158");

INSERT INTO tb_auditoria_itens VALUES("1033","25","20","nu_esforco_restante","158");

INSERT INTO tb_auditoria_itens VALUES("1042","","8","nu_esforco","160");

INSERT INTO tb_auditoria_itens VALUES("1043","","8","nu_esforco_restante","160");

INSERT INTO tb_auditoria_itens VALUES("1075","","40","nu_esforco","164");

INSERT INTO tb_auditoria_itens VALUES("1076","","40","nu_esforco_restante","164");

INSERT INTO tb_auditoria_itens VALUES("1086","","8","nu_esforco","166");

INSERT INTO tb_auditoria_itens VALUES("1087","","8","nu_esforco_restante","166");

INSERT INTO tb_auditoria_itens VALUES("1110","","20","nu_esforco","169");

INSERT INTO tb_auditoria_itens VALUES("1111","","20","nu_esforco_restante","169");

INSERT INTO tb_auditoria_itens VALUES("1153","","30","nu_esforco","179");

INSERT INTO tb_auditoria_itens VALUES("1154","","30","nu_esforco_restante","179");

INSERT INTO tb_auditoria_itens VALUES("1164","","20","nu_esforco","181");

INSERT INTO tb_auditoria_itens VALUES("1165","","20","nu_esforco_restante","181");

INSERT INTO tb_auditoria_itens VALUES("1172","","20","nu_esforco","182");

INSERT INTO tb_auditoria_itens VALUES("1173","","20","nu_esforco_restante","182");

INSERT INTO tb_auditoria_itens VALUES("1180","","20","nu_esforco","183");

INSERT INTO tb_auditoria_itens VALUES("1181","","20","nu_esforco_restante","183");

INSERT INTO tb_auditoria_itens VALUES("1188","","20","nu_esforco","184");

INSERT INTO tb_auditoria_itens VALUES("1189","","20","nu_esforco_restante","184");

INSERT INTO tb_auditoria_itens VALUES("1199","","20","nu_esforco","186");

INSERT INTO tb_auditoria_itens VALUES("1200","","20","nu_esforco_restante","186");

INSERT INTO tb_auditoria_itens VALUES("1209","20","40","nu_esforco","187");

INSERT INTO tb_auditoria_itens VALUES("1210","20","40","nu_esforco_restante","187");

INSERT INTO tb_auditoria_itens VALUES("1221","40","40","nu_esforco","189");

INSERT INTO tb_auditoria_itens VALUES("1222","20","8","nu_esforco_restante","189");

INSERT INTO tb_auditoria_itens VALUES("1230","40","40","nu_esforco","190");

INSERT INTO tb_auditoria_itens VALUES("1231","8","20","nu_esforco_restante","190");

INSERT INTO tb_auditoria_itens VALUES("1239","40","40","nu_esforco","191");

INSERT INTO tb_auditoria_itens VALUES("1240","20","8","nu_esforco_restante","191");

INSERT INTO tb_auditoria_itens VALUES("1246","","8","nu_esforco","192");

INSERT INTO tb_auditoria_itens VALUES("1247","","8","nu_esforco_restante","192");

INSERT INTO tb_auditoria_itens VALUES("1254","","40","nu_esforco","193");

INSERT INTO tb_auditoria_itens VALUES("1255","","40","nu_esforco_restante","193");

INSERT INTO tb_auditoria_itens VALUES("1264","20","40","nu_esforco","194");

INSERT INTO tb_auditoria_itens VALUES("1265","20","40","nu_esforco_restante","194");

INSERT INTO tb_auditoria_itens VALUES("1271","","8","nu_esforco","195");

INSERT INTO tb_auditoria_itens VALUES("1272","","8","nu_esforco_restante","195");

INSERT INTO tb_auditoria_itens VALUES("1279","","8","nu_esforco","196");

INSERT INTO tb_auditoria_itens VALUES("1280","","8","nu_esforco_restante","196");

INSERT INTO tb_auditoria_itens VALUES("1289","8","8","nu_esforco","197");

INSERT INTO tb_auditoria_itens VALUES("1290","8","8","nu_esforco_restante","197");

INSERT INTO tb_auditoria_itens VALUES("1296","","8","nu_esforco","198");

INSERT INTO tb_auditoria_itens VALUES("1297","","8","nu_esforco_restante","198");

INSERT INTO tb_auditoria_itens VALUES("1304","","8","nu_esforco","199");

INSERT INTO tb_auditoria_itens VALUES("1305","","8","nu_esforco_restante","199");

INSERT INTO tb_auditoria_itens VALUES("1314","8","20","nu_esforco","200");

INSERT INTO tb_auditoria_itens VALUES("1315","8","20","nu_esforco_restante","200");

INSERT INTO tb_auditoria_itens VALUES("1321","","8","nu_esforco","201");

INSERT INTO tb_auditoria_itens VALUES("1322","","8","nu_esforco_restante","201");

INSERT INTO tb_auditoria_itens VALUES("1331","8","13","nu_esforco","202");

INSERT INTO tb_auditoria_itens VALUES("1332","8","13","nu_esforco_restante","202");

INSERT INTO tb_auditoria_itens VALUES("1340","8","13","nu_esforco","203");

INSERT INTO tb_auditoria_itens VALUES("1341","8","13","nu_esforco_restante","203");

INSERT INTO tb_auditoria_itens VALUES("1349","8","13","nu_esforco","204");

INSERT INTO tb_auditoria_itens VALUES("1350","8","13","nu_esforco_restante","204");

INSERT INTO tb_auditoria_itens VALUES("1358","20","30","nu_esforco","205");

INSERT INTO tb_auditoria_itens VALUES("1359","20","30","nu_esforco_restante","205");

INSERT INTO tb_auditoria_itens VALUES("1367","8","13","nu_esforco","206");

INSERT INTO tb_auditoria_itens VALUES("1368","8","13","nu_esforco_restante","206");

INSERT INTO tb_auditoria_itens VALUES("1376","30","30","nu_esforco","207");

INSERT INTO tb_auditoria_itens VALUES("1377","30","30","nu_esforco_restante","207");

INSERT INTO tb_auditoria_itens VALUES("1383","","13","nu_esforco","208");

INSERT INTO tb_auditoria_itens VALUES("1384","","13","nu_esforco_restante","208");

INSERT INTO tb_auditoria_itens VALUES("1391","","13","nu_esforco","209");

INSERT INTO tb_auditoria_itens VALUES("1392","","13","nu_esforco_restante","209");

INSERT INTO tb_auditoria_itens VALUES("1399","","13","nu_esforco","210");

INSERT INTO tb_auditoria_itens VALUES("1400","","13","nu_esforco_restante","210");

INSERT INTO tb_auditoria_itens VALUES("1407","","13","nu_esforco","211");

INSERT INTO tb_auditoria_itens VALUES("1408","","13","nu_esforco_restante","211");

INSERT INTO tb_auditoria_itens VALUES("1415","","13","nu_esforco","212");

INSERT INTO tb_auditoria_itens VALUES("1416","","13","nu_esforco_restante","212");

INSERT INTO tb_auditoria_itens VALUES("1423","","13","nu_esforco","213");

INSERT INTO tb_auditoria_itens VALUES("1424","","13","nu_esforco_restante","213");

INSERT INTO tb_auditoria_itens VALUES("1431","","20","nu_esforco","214");

INSERT INTO tb_auditoria_itens VALUES("1432","","20","nu_esforco_restante","214");

INSERT INTO tb_auditoria_itens VALUES("1441","40","40","nu_esforco","215");

INSERT INTO tb_auditoria_itens VALUES("1442","8","3","nu_esforco_restante","215");

INSERT INTO tb_auditoria_itens VALUES("1448","","20","nu_esforco","216");

INSERT INTO tb_auditoria_itens VALUES("1449","","20","nu_esforco_restante","216");

INSERT INTO tb_auditoria_itens VALUES("1458","13","20","nu_esforco","217");

INSERT INTO tb_auditoria_itens VALUES("1459","13","20","nu_esforco_restante","217");

INSERT INTO tb_auditoria_itens VALUES("1465","","20","nu_esforco","218");

INSERT INTO tb_auditoria_itens VALUES("1466","","20","nu_esforco_restante","218");

INSERT INTO tb_auditoria_itens VALUES("1473","","30","nu_esforco","219");

INSERT INTO tb_auditoria_itens VALUES("1474","","30","nu_esforco_restante","219");

INSERT INTO tb_auditoria_itens VALUES("1481","","20","nu_esforco","220");

INSERT INTO tb_auditoria_itens VALUES("1482","","20","nu_esforco_restante","220");

INSERT INTO tb_auditoria_itens VALUES("1489","","13","nu_esforco","221");

INSERT INTO tb_auditoria_itens VALUES("1490","","13","nu_esforco_restante","221");

INSERT INTO tb_auditoria_itens VALUES("1497","","13","nu_esforco","222");

INSERT INTO tb_auditoria_itens VALUES("1498","","13","nu_esforco_restante","222");

INSERT INTO tb_auditoria_itens VALUES("1505","","13","nu_esforco","223");

INSERT INTO tb_auditoria_itens VALUES("1506","","13","nu_esforco_restante","223");

INSERT INTO tb_auditoria_itens VALUES("1513","","8","nu_esforco","224");

INSERT INTO tb_auditoria_itens VALUES("1514","","8","nu_esforco_restante","224");

INSERT INTO tb_auditoria_itens VALUES("1521","","8","nu_esforco","225");

INSERT INTO tb_auditoria_itens VALUES("1522","","8","nu_esforco_restante","225");

INSERT INTO tb_auditoria_itens VALUES("1531","8","20","nu_esforco","226");

INSERT INTO tb_auditoria_itens VALUES("1532","8","20","nu_esforco_restante","226");

INSERT INTO tb_auditoria_itens VALUES("1540","8","13","nu_esforco","227");

INSERT INTO tb_auditoria_itens VALUES("1541","8","13","nu_esforco_restante","227");

INSERT INTO tb_auditoria_itens VALUES("1549","20","13","nu_esforco","228");

INSERT INTO tb_auditoria_itens VALUES("1550","20","13","nu_esforco_restante","228");

INSERT INTO tb_auditoria_itens VALUES("1556","","13","nu_esforco","229");

INSERT INTO tb_auditoria_itens VALUES("1557","","13","nu_esforco_restante","229");

INSERT INTO tb_auditoria_itens VALUES("1564","","13","nu_esforco","230");

INSERT INTO tb_auditoria_itens VALUES("1565","","13","nu_esforco_restante","230");

INSERT INTO tb_auditoria_itens VALUES("1572","","13","nu_esforco","231");

INSERT INTO tb_auditoria_itens VALUES("1573","","13","nu_esforco_restante","231");

INSERT INTO tb_auditoria_itens VALUES("1582","13","13","nu_esforco","232");

INSERT INTO tb_auditoria_itens VALUES("1583","13","13","nu_esforco_restante","232");

INSERT INTO tb_auditoria_itens VALUES("1589","","13","nu_esforco","233");

INSERT INTO tb_auditoria_itens VALUES("1590","","13","nu_esforco_restante","233");

INSERT INTO tb_auditoria_itens VALUES("1597","","13","nu_esforco","234");

INSERT INTO tb_auditoria_itens VALUES("1598","","13","nu_esforco_restante","234");

INSERT INTO tb_auditoria_itens VALUES("1605","","13","nu_esforco","235");

INSERT INTO tb_auditoria_itens VALUES("1606","","13","nu_esforco_restante","235");

INSERT INTO tb_auditoria_itens VALUES("1613","","13","nu_esforco","236");

INSERT INTO tb_auditoria_itens VALUES("1614","","13","nu_esforco_restante","236");

INSERT INTO tb_auditoria_itens VALUES("1623","13","13","nu_esforco","237");

INSERT INTO tb_auditoria_itens VALUES("1624","13","13","nu_esforco_restante","237");

INSERT INTO tb_auditoria_itens VALUES("1632","13","13","nu_esforco","238");

INSERT INTO tb_auditoria_itens VALUES("1633","13","13","nu_esforco_restante","238");

INSERT INTO tb_auditoria_itens VALUES("1641","8","5","nu_esforco","239");

INSERT INTO tb_auditoria_itens VALUES("1642","8","5","nu_esforco_restante","239");

INSERT INTO tb_auditoria_itens VALUES("1650","40","20","nu_esforco","240");

INSERT INTO tb_auditoria_itens VALUES("1651","40","20","nu_esforco_restante","240");

INSERT INTO tb_auditoria_itens VALUES("1659","8","20","nu_esforco","241");

INSERT INTO tb_auditoria_itens VALUES("1660","8","20","nu_esforco_restante","241");

INSERT INTO tb_auditoria_itens VALUES("1668","20","5","nu_esforco","242");

INSERT INTO tb_auditoria_itens VALUES("1669","20","5","nu_esforco_restante","242");

INSERT INTO tb_auditoria_itens VALUES("1675","","13","nu_esforco","243");

INSERT INTO tb_auditoria_itens VALUES("1676","","13","nu_esforco_restante","243");

INSERT INTO tb_auditoria_itens VALUES("1683","","13","nu_esforco","244");

INSERT INTO tb_auditoria_itens VALUES("1684","","13","nu_esforco_restante","244");

INSERT INTO tb_auditoria_itens VALUES("1691","","20","nu_esforco","245");

INSERT INTO tb_auditoria_itens VALUES("1692","","20","nu_esforco_restante","245");

INSERT INTO tb_auditoria_itens VALUES("1699","","13","nu_esforco","246");

INSERT INTO tb_auditoria_itens VALUES("1700","","13","nu_esforco_restante","246");

INSERT INTO tb_auditoria_itens VALUES("1709","13","8","nu_esforco","247");

INSERT INTO tb_auditoria_itens VALUES("1710","13","1","nu_esforco_restante","247");

INSERT INTO tb_auditoria_itens VALUES("1716","","5","nu_esforco","248");

INSERT INTO tb_auditoria_itens VALUES("1717","","5","nu_esforco_restante","248");

INSERT INTO tb_auditoria_itens VALUES("1726","5","20","nu_esforco","249");

INSERT INTO tb_auditoria_itens VALUES("1727","5","20","nu_esforco_restante","249");

INSERT INTO tb_auditoria_itens VALUES("1735","8","8","nu_esforco","250");

INSERT INTO tb_auditoria_itens VALUES("1736","1","3","nu_esforco_restante","250");

INSERT INTO tb_auditoria_itens VALUES("1744","8","8","nu_esforco","251");

INSERT INTO tb_auditoria_itens VALUES("1745","3","","nu_esforco_restante","251");

INSERT INTO tb_auditoria_itens VALUES("1753","13","20","nu_esforco","252");

INSERT INTO tb_auditoria_itens VALUES("1754","13","20","nu_esforco_restante","252");

INSERT INTO tb_auditoria_itens VALUES("1762","20","13","nu_esforco","253");

INSERT INTO tb_auditoria_itens VALUES("1763","20","13","nu_esforco_restante","253");

INSERT INTO tb_auditoria_itens VALUES("1771","13","13","nu_esforco","254");

INSERT INTO tb_auditoria_itens VALUES("1772","13","13","nu_esforco_restante","254");

INSERT INTO tb_auditoria_itens VALUES("1780","13","13","nu_esforco","255");

INSERT INTO tb_auditoria_itens VALUES("1781","13","10","nu_esforco_restante","255");

INSERT INTO tb_auditoria_itens VALUES("1789","13","13","nu_esforco","256");

INSERT INTO tb_auditoria_itens VALUES("1790","10","1","nu_esforco_restante","256");

INSERT INTO tb_auditoria_itens VALUES("1798","13","13","nu_esforco","257");

INSERT INTO tb_auditoria_itens VALUES("1799","1","","nu_esforco_restante","257");

INSERT INTO tb_auditoria_itens VALUES("1807","13","30","nu_esforco","258");

INSERT INTO tb_auditoria_itens VALUES("1808","13","30","nu_esforco_restante","258");

INSERT INTO tb_auditoria_itens VALUES("1816","30","30","nu_esforco","259");

INSERT INTO tb_auditoria_itens VALUES("1817","30","26","nu_esforco_restante","259");

INSERT INTO tb_auditoria_itens VALUES("1825","20","30","nu_esforco","260");

INSERT INTO tb_auditoria_itens VALUES("1826","20","30","nu_esforco_restante","260");

INSERT INTO tb_auditoria_itens VALUES("1834","30","30","nu_esforco","261");

INSERT INTO tb_auditoria_itens VALUES("1835","26","24","nu_esforco_restante","261");

INSERT INTO tb_auditoria_itens VALUES("1843","30","30","nu_esforco","262");

INSERT INTO tb_auditoria_itens VALUES("1844","24","20","nu_esforco_restante","262");

INSERT INTO tb_auditoria_itens VALUES("1852","30","30","nu_esforco","263");

INSERT INTO tb_auditoria_itens VALUES("1853","20","8","nu_esforco_restante","263");

INSERT INTO tb_auditoria_itens VALUES("1861","30","13","nu_esforco","264");

INSERT INTO tb_auditoria_itens VALUES("1862","8","13","nu_esforco_restante","264");

INSERT INTO tb_auditoria_itens VALUES("1870","13","13","nu_esforco","265");

INSERT INTO tb_auditoria_itens VALUES("1871","13","","nu_esforco_restante","265");

INSERT INTO tb_auditoria_itens VALUES("1879","5","8","nu_esforco","266");

INSERT INTO tb_auditoria_itens VALUES("1880","5","5","nu_esforco_restante","266");

INSERT INTO tb_auditoria_itens VALUES("1888","8","13","nu_esforco","267");

INSERT INTO tb_auditoria_itens VALUES("1889","5","1","nu_esforco_restante","267");

INSERT INTO tb_auditoria_itens VALUES("1897","13","13","nu_esforco","268");

INSERT INTO tb_auditoria_itens VALUES("1898","1","2","nu_esforco_restante","268");

INSERT INTO tb_auditoria_itens VALUES("1914","13","13","nu_esforco","271");

INSERT INTO tb_auditoria_itens VALUES("1915","0","1","nu_esforco_restante","271");

INSERT INTO tb_auditoria_itens VALUES("1923","20","30","nu_esforco","272");

INSERT INTO tb_auditoria_itens VALUES("1924","20","20","nu_esforco_restante","272");

INSERT INTO tb_auditoria_itens VALUES("1946","13","13","nu_esforco","276");

INSERT INTO tb_auditoria_itens VALUES("1947","2","","nu_esforco_restante","276");

INSERT INTO tb_auditoria_itens VALUES("1955","30","20","nu_esforco","277");

INSERT INTO tb_auditoria_itens VALUES("1956","20","","nu_esforco_restante","277");

INSERT INTO tb_auditoria_itens VALUES("1962","","13","nu_esforco","278");

INSERT INTO tb_auditoria_itens VALUES("1963","","13","nu_esforco_restante","278");

INSERT INTO tb_auditoria_itens VALUES("1970","","13","nu_esforco","279");

INSERT INTO tb_auditoria_itens VALUES("1971","","13","nu_esforco_restante","279");

INSERT INTO tb_auditoria_itens VALUES("1980","13","8","nu_esforco","280");

INSERT INTO tb_auditoria_itens VALUES("1981","13","8","nu_esforco_restante","280");

INSERT INTO tb_auditoria_itens VALUES("1993","13","13","nu_esforco","282");

INSERT INTO tb_auditoria_itens VALUES("1994","1","3","nu_esforco_restante","282");

INSERT INTO tb_auditoria_itens VALUES("2002","30","30","nu_esforco","283");

INSERT INTO tb_auditoria_itens VALUES("2003","30","30","nu_esforco_restante","283");

INSERT INTO tb_auditoria_itens VALUES("2011","13","20","nu_esforco","284");

INSERT INTO tb_auditoria_itens VALUES("2012","3","5","nu_esforco_restante","284");

INSERT INTO tb_auditoria_itens VALUES("2020","20","20","nu_esforco","285");

INSERT INTO tb_auditoria_itens VALUES("2021","5","","nu_esforco_restante","285");

INSERT INTO tb_auditoria_itens VALUES("2032","30","30","nu_esforco","287");

INSERT INTO tb_auditoria_itens VALUES("2033","30","10","nu_esforco_restante","287");

INSERT INTO tb_auditoria_itens VALUES("2041","30","20","nu_esforco","288");

INSERT INTO tb_auditoria_itens VALUES("2042","10","8","nu_esforco_restante","288");

INSERT INTO tb_auditoria_itens VALUES("2050","20","20","nu_esforco","289");

INSERT INTO tb_auditoria_itens VALUES("2051","8","3","nu_esforco_restante","289");

INSERT INTO tb_auditoria_itens VALUES("2057","","13","nu_esforco","290");

INSERT INTO tb_auditoria_itens VALUES("2058","","13","nu_esforco_restante","290");

INSERT INTO tb_auditoria_itens VALUES("2067","20","30","nu_esforco","291");

INSERT INTO tb_auditoria_itens VALUES("2068","3","10","nu_esforco_restante","291");

INSERT INTO tb_auditoria_itens VALUES("2076","13","20","nu_esforco","292");

INSERT INTO tb_auditoria_itens VALUES("2077","13","18","nu_esforco_restante","292");

INSERT INTO tb_auditoria_itens VALUES("2096","30","20","nu_esforco","295");

INSERT INTO tb_auditoria_itens VALUES("2097","10","20","nu_esforco_restante","295");

INSERT INTO tb_auditoria_itens VALUES("2105","20","20","nu_esforco","296");

INSERT INTO tb_auditoria_itens VALUES("2106","20","","nu_esforco_restante","296");

INSERT INTO tb_auditoria_itens VALUES("2114","20","20","nu_esforco","297");

INSERT INTO tb_auditoria_itens VALUES("2115","0","","nu_esforco_restante","297");

INSERT INTO tb_auditoria_itens VALUES("2123","13","13","nu_esforco","298");

INSERT INTO tb_auditoria_itens VALUES("2124","13","5","nu_esforco_restante","298");

INSERT INTO tb_auditoria_itens VALUES("2132","13","13","nu_esforco","299");

INSERT INTO tb_auditoria_itens VALUES("2133","5","","nu_esforco_restante","299");

INSERT INTO tb_auditoria_itens VALUES("2149","20","20","nu_esforco","301");

INSERT INTO tb_auditoria_itens VALUES("2150","18","","nu_esforco_restante","301");

INSERT INTO tb_auditoria_itens VALUES("2158","8","20","nu_esforco","302");

INSERT INTO tb_auditoria_itens VALUES("2159","8","15","nu_esforco_restante","302");

INSERT INTO tb_auditoria_itens VALUES("2165","","8","nu_esforco","303");

INSERT INTO tb_auditoria_itens VALUES("2166","","5","nu_esforco_restante","303");

INSERT INTO tb_auditoria_itens VALUES("2175","8","8","nu_esforco","304");

INSERT INTO tb_auditoria_itens VALUES("2176","8","5","nu_esforco_restante","304");

INSERT INTO tb_auditoria_itens VALUES("2184","5","8","nu_esforco","305");

INSERT INTO tb_auditoria_itens VALUES("2185","5","5","nu_esforco_restante","305");

INSERT INTO tb_auditoria_itens VALUES("2193","20","20","nu_esforco","306");

INSERT INTO tb_auditoria_itens VALUES("2194","15","12","nu_esforco_restante","306");

INSERT INTO tb_auditoria_itens VALUES("2202","20","20","nu_esforco","307");

INSERT INTO tb_auditoria_itens VALUES("2203","12","5","nu_esforco_restante","307");

INSERT INTO tb_auditoria_itens VALUES("2211","8","8","nu_esforco","308");

INSERT INTO tb_auditoria_itens VALUES("2212","5","3","nu_esforco_restante","308");

INSERT INTO tb_auditoria_itens VALUES("2220","8","8","nu_esforco","309");

INSERT INTO tb_auditoria_itens VALUES("2221","5","3","nu_esforco_restante","309");

INSERT INTO tb_auditoria_itens VALUES("2229","8","8","nu_esforco","310");

INSERT INTO tb_auditoria_itens VALUES("2230","5","3","nu_esforco_restante","310");

INSERT INTO tb_auditoria_itens VALUES("2238","8","8","nu_esforco","311");

INSERT INTO tb_auditoria_itens VALUES("2239","3","","nu_esforco_restante","311");

INSERT INTO tb_auditoria_itens VALUES("2247","8","8","nu_esforco","312");

INSERT INTO tb_auditoria_itens VALUES("2248","3","","nu_esforco_restante","312");

INSERT INTO tb_auditoria_itens VALUES("2256","8","8","nu_esforco","313");

INSERT INTO tb_auditoria_itens VALUES("2257","3","","nu_esforco_restante","313");

INSERT INTO tb_auditoria_itens VALUES("2265","20","20","nu_esforco","314");

INSERT INTO tb_auditoria_itens VALUES("2266","5","","nu_esforco_restante","314");

INSERT INTO tb_auditoria_itens VALUES("2274","5","13","nu_esforco","315");

INSERT INTO tb_auditoria_itens VALUES("2275","5","","nu_esforco_restante","315");

INSERT INTO tb_auditoria_itens VALUES("2283","13","5","nu_esforco","316");

INSERT INTO tb_auditoria_itens VALUES("2284","13","","nu_esforco_restante","316");

INSERT INTO tb_auditoria_itens VALUES("2292","40","13","nu_esforco","317");

INSERT INTO tb_auditoria_itens VALUES("2293","40","13","nu_esforco_restante","317");

INSERT INTO tb_auditoria_itens VALUES("2299","","13","nu_esforco","318");

INSERT INTO tb_auditoria_itens VALUES("2300","","13","nu_esforco_restante","318");

INSERT INTO tb_auditoria_itens VALUES("2307","","8","nu_esforco","319");

INSERT INTO tb_auditoria_itens VALUES("2308","","8","nu_esforco_restante","319");

INSERT INTO tb_auditoria_itens VALUES("2317","3","5","nu_esforco","320");

INSERT INTO tb_auditoria_itens VALUES("2318","3","5","nu_esforco_restante","320");

INSERT INTO tb_auditoria_itens VALUES("2324","","8","nu_esforco","321");

INSERT INTO tb_auditoria_itens VALUES("2325","","8","nu_esforco_restante","321");

INSERT INTO tb_auditoria_itens VALUES("2334","8","13","nu_esforco","322");

INSERT INTO tb_auditoria_itens VALUES("2335","8","13","nu_esforco_restante","322");

INSERT INTO tb_auditoria_itens VALUES("2343","13","13","nu_esforco","323");

INSERT INTO tb_auditoria_itens VALUES("2344","13","10","nu_esforco_restante","323");

INSERT INTO tb_auditoria_itens VALUES("2352","13","13","nu_esforco","324");

INSERT INTO tb_auditoria_itens VALUES("2353","10","3","nu_esforco_restante","324");

INSERT INTO tb_auditoria_itens VALUES("2361","13","8","nu_esforco","325");

INSERT INTO tb_auditoria_itens VALUES("2362","3","","nu_esforco_restante","325");

INSERT INTO tb_auditoria_itens VALUES("2370","13","20","nu_esforco","326");

INSERT INTO tb_auditoria_itens VALUES("2371","13","20","nu_esforco_restante","326");

INSERT INTO tb_auditoria_itens VALUES("2379","20","20","nu_esforco","327");

INSERT INTO tb_auditoria_itens VALUES("2380","20","","nu_esforco_restante","327");

INSERT INTO tb_auditoria_itens VALUES("2388","8","8","nu_esforco","328");

INSERT INTO tb_auditoria_itens VALUES("2389","8","","nu_esforco_restante","328");

INSERT INTO tb_auditoria_itens VALUES("2397","5","5","nu_esforco","329");

INSERT INTO tb_auditoria_itens VALUES("2398","5","4","nu_esforco_restante","329");

INSERT INTO tb_auditoria_itens VALUES("2406","13","13","nu_esforco","330");

INSERT INTO tb_auditoria_itens VALUES("2407","13","13","nu_esforco_restante","330");

INSERT INTO tb_auditoria_itens VALUES("2415","5","5","nu_esforco","331");

INSERT INTO tb_auditoria_itens VALUES("2416","4","","nu_esforco_restante","331");

INSERT INTO tb_auditoria_itens VALUES("2424","13","13","nu_esforco","332");

INSERT INTO tb_auditoria_itens VALUES("2425","13","","nu_esforco_restante","332");

INSERT INTO tb_auditoria_itens VALUES("2433","13","8","nu_esforco","333");

INSERT INTO tb_auditoria_itens VALUES("2434","0","","nu_esforco_restante","333");

INSERT INTO tb_auditoria_itens VALUES("2442","13","13","nu_esforco","334");

INSERT INTO tb_auditoria_itens VALUES("2443","13","13","nu_esforco_restante","334");

INSERT INTO tb_auditoria_itens VALUES("2451","3","1","nu_esforco","335");

INSERT INTO tb_auditoria_itens VALUES("2452","3","1","nu_esforco_restante","335");

INSERT INTO tb_auditoria_itens VALUES("2460","3","5","nu_esforco","336");

INSERT INTO tb_auditoria_itens VALUES("2461","3","5","nu_esforco_restante","336");

INSERT INTO tb_auditoria_itens VALUES("2469","1","1","nu_esforco","337");

INSERT INTO tb_auditoria_itens VALUES("2470","1","","nu_esforco_restante","337");

INSERT INTO tb_auditoria_itens VALUES("2478","5","5","nu_esforco","338");

INSERT INTO tb_auditoria_itens VALUES("2479","5","3","nu_esforco_restante","338");

INSERT INTO tb_auditoria_itens VALUES("2487","5","5","nu_esforco","339");

INSERT INTO tb_auditoria_itens VALUES("2488","3","","nu_esforco_restante","339");

INSERT INTO tb_auditoria_itens VALUES("2494","","8","nu_esforco","340");

INSERT INTO tb_auditoria_itens VALUES("2495","","8","nu_esforco_restante","340");

INSERT INTO tb_auditoria_itens VALUES("2504","13","13","nu_esforco","341");

INSERT INTO tb_auditoria_itens VALUES("2505","13","11","nu_esforco_restante","341");

INSERT INTO tb_auditoria_itens VALUES("2513","13","30","nu_esforco","342");

INSERT INTO tb_auditoria_itens VALUES("2514","11","26","nu_esforco_restante","342");

INSERT INTO tb_auditoria_itens VALUES("2522","30","40","nu_esforco","343");

INSERT INTO tb_auditoria_itens VALUES("2523","26","36","nu_esforco_restante","343");

INSERT INTO tb_auditoria_itens VALUES("2531","40","40","nu_esforco","344");

INSERT INTO tb_auditoria_itens VALUES("2532","36","33","nu_esforco_restante","344");

INSERT INTO tb_auditoria_itens VALUES("2540","40","40","nu_esforco","345");

INSERT INTO tb_auditoria_itens VALUES("2541","33","28","nu_esforco_restante","345");

INSERT INTO tb_auditoria_itens VALUES("2549","8","8","nu_esforco","346");

INSERT INTO tb_auditoria_itens VALUES("2550","8","8","nu_esforco_restante","346");

INSERT INTO tb_auditoria_itens VALUES("2558","40","40","nu_esforco","347");

INSERT INTO tb_auditoria_itens VALUES("2559","28","25","nu_esforco_restante","347");

INSERT INTO tb_auditoria_itens VALUES("2567","40","40","nu_esforco","348");

INSERT INTO tb_auditoria_itens VALUES("2568","25","15","nu_esforco_restante","348");

INSERT INTO tb_auditoria_itens VALUES("2576","40","40","nu_esforco","349");

INSERT INTO tb_auditoria_itens VALUES("2577","15","10","nu_esforco_restante","349");

INSERT INTO tb_auditoria_itens VALUES("2644","40","40","nu_esforco","359");

INSERT INTO tb_auditoria_itens VALUES("2645","10","","nu_esforco_restante","359");

INSERT INTO tb_auditoria_itens VALUES("2651","","5","nu_esforco","360");

INSERT INTO tb_auditoria_itens VALUES("2652","","5","nu_esforco_restante","360");

INSERT INTO tb_auditoria_itens VALUES("3066","5","5","nu_esforco","413");

INSERT INTO tb_auditoria_itens VALUES("3067","5","3","nu_esforco_restante","413");

INSERT INTO tb_auditoria_itens VALUES("3075","5","8","nu_esforco","414");

INSERT INTO tb_auditoria_itens VALUES("3076","3","","nu_esforco_restante","414");

INSERT INTO tb_auditoria_itens VALUES("3077","5","","co_modulo","418");

INSERT INTO tb_auditoria_itens VALUES("3078","Lançamento do Sistema Da Beleaza","Lançamento do Sistema Da Beleza","no_modulo","418");

INSERT INTO tb_auditoria_itens VALUES("3079","2018-07-26 17:42:45","","dt_cadastro","418");

INSERT INTO tb_auditoria_itens VALUES("3080","1","1","co_projeto","418");

INSERT INTO tb_auditoria_itens VALUES("3081","5","","co_modulo","419");

INSERT INTO tb_auditoria_itens VALUES("3082","Lançamento do Sistema Da Beleza","Lançamento do SisBela","no_modulo","419");

INSERT INTO tb_auditoria_itens VALUES("3083","2018-07-26 17:42:45","","dt_cadastro","419");

INSERT INTO tb_auditoria_itens VALUES("3084","1","1","co_projeto","419");




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=420 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_tabela VALUES("11","TB_HISTORIA","I","1","11");

INSERT INTO tb_auditoria_tabela VALUES("12","TB_HISTORIA","U","1","12");

INSERT INTO tb_auditoria_tabela VALUES("13","TB_HISTORIA","U","1","13");

INSERT INTO tb_auditoria_tabela VALUES("14","TB_HISTORIA","U","1","14");

INSERT INTO tb_auditoria_tabela VALUES("15","TB_HISTORIA","U","1","15");

INSERT INTO tb_auditoria_tabela VALUES("16","TB_HISTORIA","U","1","16");

INSERT INTO tb_auditoria_tabela VALUES("17","TB_HISTORIA","U","1","17");

INSERT INTO tb_auditoria_tabela VALUES("23","TB_HISTORIA","U","1","23");

INSERT INTO tb_auditoria_tabela VALUES("24","TB_HISTORIA","U","1","24");

INSERT INTO tb_auditoria_tabela VALUES("25","TB_HISTORIA","U","1","25");

INSERT INTO tb_auditoria_tabela VALUES("26","TB_HISTORIA","U","1","26");

INSERT INTO tb_auditoria_tabela VALUES("27","TB_HISTORIA","U","1","27");

INSERT INTO tb_auditoria_tabela VALUES("29","TB_HISTORIA","U","1","29");

INSERT INTO tb_auditoria_tabela VALUES("30","TB_HISTORIA","I","2","30");

INSERT INTO tb_auditoria_tabela VALUES("32","TB_HISTORIA","I","3","32");

INSERT INTO tb_auditoria_tabela VALUES("33","TB_HISTORIA","I","4","33");

INSERT INTO tb_auditoria_tabela VALUES("34","TB_HISTORIA","U","4","34");

INSERT INTO tb_auditoria_tabela VALUES("40","TB_HISTORIA","I","6","40");

INSERT INTO tb_auditoria_tabela VALUES("41","TB_HISTORIA","I","7","41");

INSERT INTO tb_auditoria_tabela VALUES("42","TB_HISTORIA","I","8","42");

INSERT INTO tb_auditoria_tabela VALUES("44","TB_HISTORIA","I","9","44");

INSERT INTO tb_auditoria_tabela VALUES("45","TB_HISTORIA","I","10","45");

INSERT INTO tb_auditoria_tabela VALUES("46","TB_HISTORIA","U","10","46");

INSERT INTO tb_auditoria_tabela VALUES("49","TB_HISTORIA","I","11","49");

INSERT INTO tb_auditoria_tabela VALUES("50","TB_HISTORIA","U","11","50");

INSERT INTO tb_auditoria_tabela VALUES("52","TB_HISTORIA","I","12","52");

INSERT INTO tb_auditoria_tabela VALUES("54","TB_HISTORIA","I","13","54");

INSERT INTO tb_auditoria_tabela VALUES("56","TB_HISTORIA","I","14","56");

INSERT INTO tb_auditoria_tabela VALUES("57","TB_HISTORIA","I","15","57");

INSERT INTO tb_auditoria_tabela VALUES("59","TB_HISTORIA","I","16","59");

INSERT INTO tb_auditoria_tabela VALUES("60","TB_HISTORIA","I","17","60");

INSERT INTO tb_auditoria_tabela VALUES("62","TB_HISTORIA","I","18","62");

INSERT INTO tb_auditoria_tabela VALUES("64","TB_HISTORIA","I","19","64");

INSERT INTO tb_auditoria_tabela VALUES("65","TB_HISTORIA","U","19","65");

INSERT INTO tb_auditoria_tabela VALUES("67","TB_HISTORIA","I","20","67");

INSERT INTO tb_auditoria_tabela VALUES("68","TB_HISTORIA","I","21","68");

INSERT INTO tb_auditoria_tabela VALUES("69","TB_HISTORIA","I","22","69");

INSERT INTO tb_auditoria_tabela VALUES("70","TB_HISTORIA","I","23","70");

INSERT INTO tb_auditoria_tabela VALUES("72","TB_HISTORIA","I","24","72");

INSERT INTO tb_auditoria_tabela VALUES("74","TB_HISTORIA","I","25","74");

INSERT INTO tb_auditoria_tabela VALUES("76","TB_HISTORIA","I","26","76");

INSERT INTO tb_auditoria_tabela VALUES("78","TB_HISTORIA","I","27","78");

INSERT INTO tb_auditoria_tabela VALUES("80","TB_HISTORIA","I","28","80");

INSERT INTO tb_auditoria_tabela VALUES("81","TB_HISTORIA","U","28","81");

INSERT INTO tb_auditoria_tabela VALUES("82","TB_HISTORIA","I","29","82");

INSERT INTO tb_auditoria_tabela VALUES("83","TB_HISTORIA","I","30","83");

INSERT INTO tb_auditoria_tabela VALUES("84","TB_HISTORIA","I","31","84");

INSERT INTO tb_auditoria_tabela VALUES("85","TB_HISTORIA","U","28","85");

INSERT INTO tb_auditoria_tabela VALUES("86","TB_HISTORIA","I","32","86");

INSERT INTO tb_auditoria_tabela VALUES("87","TB_HISTORIA","I","33","87");

INSERT INTO tb_auditoria_tabela VALUES("88","TB_HISTORIA","U","28","88");

INSERT INTO tb_auditoria_tabela VALUES("89","TB_HISTORIA","I","34","89");

INSERT INTO tb_auditoria_tabela VALUES("90","TB_HISTORIA","I","35","90");

INSERT INTO tb_auditoria_tabela VALUES("91","TB_HISTORIA","I","36","91");

INSERT INTO tb_auditoria_tabela VALUES("92","TB_HISTORIA","U","36","92");

INSERT INTO tb_auditoria_tabela VALUES("93","TB_HISTORIA","I","37","93");

INSERT INTO tb_auditoria_tabela VALUES("94","TB_HISTORIA","I","38","94");

INSERT INTO tb_auditoria_tabela VALUES("96","TB_HISTORIA","I","39","96");

INSERT INTO tb_auditoria_tabela VALUES("97","TB_HISTORIA","I","40","97");

INSERT INTO tb_auditoria_tabela VALUES("98","TB_HISTORIA","I","41","98");

INSERT INTO tb_auditoria_tabela VALUES("99","TB_HISTORIA","I","42","99");

INSERT INTO tb_auditoria_tabela VALUES("100","TB_HISTORIA","U","37","100");

INSERT INTO tb_auditoria_tabela VALUES("101","TB_HISTORIA","I","43","101");

INSERT INTO tb_auditoria_tabela VALUES("102","TB_HISTORIA","I","44","102");

INSERT INTO tb_auditoria_tabela VALUES("103","TB_HISTORIA","I","45","103");

INSERT INTO tb_auditoria_tabela VALUES("104","TB_HISTORIA","U","43","104");

INSERT INTO tb_auditoria_tabela VALUES("105","TB_HISTORIA","U","43","105");

INSERT INTO tb_auditoria_tabela VALUES("106","TB_HISTORIA","I","46","106");

INSERT INTO tb_auditoria_tabela VALUES("107","TB_HISTORIA","I","47","107");

INSERT INTO tb_auditoria_tabela VALUES("108","TB_HISTORIA","U","47","108");

INSERT INTO tb_auditoria_tabela VALUES("109","TB_HISTORIA","I","48","109");

INSERT INTO tb_auditoria_tabela VALUES("110","TB_HISTORIA","I","49","110");

INSERT INTO tb_auditoria_tabela VALUES("111","TB_HISTORIA","I","50","111");

INSERT INTO tb_auditoria_tabela VALUES("112","TB_HISTORIA","I","51","112");

INSERT INTO tb_auditoria_tabela VALUES("113","TB_HISTORIA","I","52","113");

INSERT INTO tb_auditoria_tabela VALUES("114","TB_HISTORIA","I","53","114");

INSERT INTO tb_auditoria_tabela VALUES("115","TB_HISTORIA","I","54","115");

INSERT INTO tb_auditoria_tabela VALUES("116","TB_HISTORIA","I","55","116");

INSERT INTO tb_auditoria_tabela VALUES("117","TB_HISTORIA","I","56","117");

INSERT INTO tb_auditoria_tabela VALUES("118","TB_HISTORIA","I","57","118");

INSERT INTO tb_auditoria_tabela VALUES("119","TB_HISTORIA","I","58","119");

INSERT INTO tb_auditoria_tabela VALUES("120","TB_HISTORIA","I","59","120");

INSERT INTO tb_auditoria_tabela VALUES("121","TB_HISTORIA","I","60","121");

INSERT INTO tb_auditoria_tabela VALUES("124","TB_HISTORIA","I","61","124");

INSERT INTO tb_auditoria_tabela VALUES("127","TB_HISTORIA","I","62","127");

INSERT INTO tb_auditoria_tabela VALUES("129","TB_HISTORIA","I","63","129");

INSERT INTO tb_auditoria_tabela VALUES("130","TB_HISTORIA","I","64","130");

INSERT INTO tb_auditoria_tabela VALUES("131","TB_HISTORIA","I","65","131");

INSERT INTO tb_auditoria_tabela VALUES("132","TB_HISTORIA","I","66","132");

INSERT INTO tb_auditoria_tabela VALUES("137","TB_HISTORIA","I","67","137");

INSERT INTO tb_auditoria_tabela VALUES("138","TB_HISTORIA","U","67","138");

INSERT INTO tb_auditoria_tabela VALUES("139","TB_HISTORIA","I","68","139");

INSERT INTO tb_auditoria_tabela VALUES("140","TB_HISTORIA","I","69","140");

INSERT INTO tb_auditoria_tabela VALUES("143","TB_HISTORIA","I","70","143");

INSERT INTO tb_auditoria_tabela VALUES("145","TB_HISTORIA","U","67","145");

INSERT INTO tb_auditoria_tabela VALUES("147","TB_HISTORIA","I","71","147");

INSERT INTO tb_auditoria_tabela VALUES("148","TB_HISTORIA","I","72","148");

INSERT INTO tb_auditoria_tabela VALUES("149","TB_HISTORIA","I","73","149");

INSERT INTO tb_auditoria_tabela VALUES("152","TB_HISTORIA","I","74","152");

INSERT INTO tb_auditoria_tabela VALUES("153","TB_HISTORIA","U","74","153");

INSERT INTO tb_auditoria_tabela VALUES("155","TB_HISTORIA","I","75","155");

INSERT INTO tb_auditoria_tabela VALUES("156","TB_HISTORIA","U","37","156");

INSERT INTO tb_auditoria_tabela VALUES("157","TB_HISTORIA","U","62","157");

INSERT INTO tb_auditoria_tabela VALUES("158","TB_HISTORIA","U","61","158");

INSERT INTO tb_auditoria_tabela VALUES("160","TB_HISTORIA","I","76","160");

INSERT INTO tb_auditoria_tabela VALUES("164","TB_HISTORIA","I","79","164");

INSERT INTO tb_auditoria_tabela VALUES("166","TB_HISTORIA","I","80","166");

INSERT INTO tb_auditoria_tabela VALUES("169","TB_HISTORIA","I","83","169");

INSERT INTO tb_auditoria_tabela VALUES("179","TB_HISTORIA","I","84","179");

INSERT INTO tb_auditoria_tabela VALUES("181","TB_HISTORIA","I","85","181");

INSERT INTO tb_auditoria_tabela VALUES("182","TB_HISTORIA","I","86","182");

INSERT INTO tb_auditoria_tabela VALUES("183","TB_HISTORIA","I","87","183");

INSERT INTO tb_auditoria_tabela VALUES("184","TB_HISTORIA","I","88","184");

INSERT INTO tb_auditoria_tabela VALUES("186","TB_HISTORIA","I","89","186");

INSERT INTO tb_auditoria_tabela VALUES("187","TB_HISTORIA","U","89","187");

INSERT INTO tb_auditoria_tabela VALUES("189","TB_HISTORIA","U","61","189");

INSERT INTO tb_auditoria_tabela VALUES("190","TB_HISTORIA","U","61","190");

INSERT INTO tb_auditoria_tabela VALUES("191","TB_HISTORIA","U","61","191");

INSERT INTO tb_auditoria_tabela VALUES("192","TB_HISTORIA","I","90","192");

INSERT INTO tb_auditoria_tabela VALUES("193","TB_HISTORIA","I","91","193");

INSERT INTO tb_auditoria_tabela VALUES("194","TB_HISTORIA","U","11","194");

INSERT INTO tb_auditoria_tabela VALUES("195","TB_HISTORIA","I","92","195");

INSERT INTO tb_auditoria_tabela VALUES("196","TB_HISTORIA","I","93","196");

INSERT INTO tb_auditoria_tabela VALUES("197","TB_HISTORIA","U","92","197");

INSERT INTO tb_auditoria_tabela VALUES("198","TB_HISTORIA","I","94","198");

INSERT INTO tb_auditoria_tabela VALUES("199","TB_HISTORIA","I","95","199");

INSERT INTO tb_auditoria_tabela VALUES("200","TB_HISTORIA","U","95","200");

INSERT INTO tb_auditoria_tabela VALUES("201","TB_HISTORIA","I","96","201");

INSERT INTO tb_auditoria_tabela VALUES("202","TB_HISTORIA","U","92","202");

INSERT INTO tb_auditoria_tabela VALUES("203","TB_HISTORIA","U","93","203");

INSERT INTO tb_auditoria_tabela VALUES("204","TB_HISTORIA","U","94","204");

INSERT INTO tb_auditoria_tabela VALUES("205","TB_HISTORIA","U","95","205");

INSERT INTO tb_auditoria_tabela VALUES("206","TB_HISTORIA","U","96","206");

INSERT INTO tb_auditoria_tabela VALUES("207","TB_HISTORIA","U","95","207");

INSERT INTO tb_auditoria_tabela VALUES("208","TB_HISTORIA","I","97","208");

INSERT INTO tb_auditoria_tabela VALUES("209","TB_HISTORIA","I","98","209");

INSERT INTO tb_auditoria_tabela VALUES("210","TB_HISTORIA","I","99","210");

INSERT INTO tb_auditoria_tabela VALUES("211","TB_HISTORIA","I","100","211");

INSERT INTO tb_auditoria_tabela VALUES("212","TB_HISTORIA","I","101","212");

INSERT INTO tb_auditoria_tabela VALUES("213","TB_HISTORIA","I","102","213");

INSERT INTO tb_auditoria_tabela VALUES("214","TB_HISTORIA","I","103","214");

INSERT INTO tb_auditoria_tabela VALUES("215","TB_HISTORIA","U","61","215");

INSERT INTO tb_auditoria_tabela VALUES("216","TB_HISTORIA","I","104","216");

INSERT INTO tb_auditoria_tabela VALUES("217","TB_HISTORIA","U","102","217");

INSERT INTO tb_auditoria_tabela VALUES("218","TB_HISTORIA","I","105","218");

INSERT INTO tb_auditoria_tabela VALUES("219","TB_HISTORIA","I","106","219");

INSERT INTO tb_auditoria_tabela VALUES("220","TB_HISTORIA","I","107","220");

INSERT INTO tb_auditoria_tabela VALUES("221","TB_HISTORIA","I","108","221");

INSERT INTO tb_auditoria_tabela VALUES("222","TB_HISTORIA","I","109","222");

INSERT INTO tb_auditoria_tabela VALUES("223","TB_HISTORIA","I","110","223");

INSERT INTO tb_auditoria_tabela VALUES("224","TB_HISTORIA","I","111","224");

INSERT INTO tb_auditoria_tabela VALUES("225","TB_HISTORIA","I","112","225");

INSERT INTO tb_auditoria_tabela VALUES("226","TB_HISTORIA","U","111","226");

INSERT INTO tb_auditoria_tabela VALUES("227","TB_HISTORIA","U","112","227");

INSERT INTO tb_auditoria_tabela VALUES("228","TB_HISTORIA","U","111","228");

INSERT INTO tb_auditoria_tabela VALUES("229","TB_HISTORIA","I","113","229");

INSERT INTO tb_auditoria_tabela VALUES("230","TB_HISTORIA","I","114","230");

INSERT INTO tb_auditoria_tabela VALUES("231","TB_HISTORIA","I","115","231");

INSERT INTO tb_auditoria_tabela VALUES("232","TB_HISTORIA","U","114","232");

INSERT INTO tb_auditoria_tabela VALUES("233","TB_HISTORIA","I","116","233");

INSERT INTO tb_auditoria_tabela VALUES("234","TB_HISTORIA","I","117","234");

INSERT INTO tb_auditoria_tabela VALUES("235","TB_HISTORIA","I","118","235");

INSERT INTO tb_auditoria_tabela VALUES("236","TB_HISTORIA","I","119","236");

INSERT INTO tb_auditoria_tabela VALUES("237","TB_HISTORIA","U","119","237");

INSERT INTO tb_auditoria_tabela VALUES("238","TB_HISTORIA","U","118","238");

INSERT INTO tb_auditoria_tabela VALUES("239","TB_HISTORIA","U","76","239");

INSERT INTO tb_auditoria_tabela VALUES("240","TB_HISTORIA","U","79","240");

INSERT INTO tb_auditoria_tabela VALUES("241","TB_HISTORIA","U","80","241");

INSERT INTO tb_auditoria_tabela VALUES("242","TB_HISTORIA","U","83","242");

INSERT INTO tb_auditoria_tabela VALUES("243","TB_HISTORIA","I","120","243");

INSERT INTO tb_auditoria_tabela VALUES("244","TB_HISTORIA","I","121","244");

INSERT INTO tb_auditoria_tabela VALUES("245","TB_HISTORIA","I","122","245");

INSERT INTO tb_auditoria_tabela VALUES("246","TB_HISTORIA","I","123","246");

INSERT INTO tb_auditoria_tabela VALUES("247","TB_HISTORIA","U","123","247");

INSERT INTO tb_auditoria_tabela VALUES("248","TB_HISTORIA","I","124","248");

INSERT INTO tb_auditoria_tabela VALUES("249","TB_HISTORIA","U","124","249");

INSERT INTO tb_auditoria_tabela VALUES("250","TB_HISTORIA","U","123","250");

INSERT INTO tb_auditoria_tabela VALUES("251","TB_HISTORIA","U","123","251");

INSERT INTO tb_auditoria_tabela VALUES("252","TB_HISTORIA","U","1","252");

INSERT INTO tb_auditoria_tabela VALUES("253","TB_HISTORIA","U","1","253");

INSERT INTO tb_auditoria_tabela VALUES("254","TB_HISTORIA","U","1","254");

INSERT INTO tb_auditoria_tabela VALUES("255","TB_HISTORIA","U","1","255");

INSERT INTO tb_auditoria_tabela VALUES("256","TB_HISTORIA","U","1","256");

INSERT INTO tb_auditoria_tabela VALUES("257","TB_HISTORIA","U","1","257");

INSERT INTO tb_auditoria_tabela VALUES("258","TB_HISTORIA","U","2","258");

INSERT INTO tb_auditoria_tabela VALUES("259","TB_HISTORIA","U","2","259");

INSERT INTO tb_auditoria_tabela VALUES("260","TB_HISTORIA","U","124","260");

INSERT INTO tb_auditoria_tabela VALUES("261","TB_HISTORIA","U","2","261");

INSERT INTO tb_auditoria_tabela VALUES("262","TB_HISTORIA","U","2","262");

INSERT INTO tb_auditoria_tabela VALUES("263","TB_HISTORIA","U","2","263");

INSERT INTO tb_auditoria_tabela VALUES("264","TB_HISTORIA","U","2","264");

INSERT INTO tb_auditoria_tabela VALUES("265","TB_HISTORIA","U","2","265");

INSERT INTO tb_auditoria_tabela VALUES("266","TB_HISTORIA","U","3","266");

INSERT INTO tb_auditoria_tabela VALUES("267","TB_HISTORIA","U","3","267");

INSERT INTO tb_auditoria_tabela VALUES("268","TB_HISTORIA","U","3","268");

INSERT INTO tb_auditoria_tabela VALUES("271","TB_HISTORIA","U","2","271");

INSERT INTO tb_auditoria_tabela VALUES("272","TB_HISTORIA","U","4","272");

INSERT INTO tb_auditoria_tabela VALUES("276","TB_HISTORIA","U","3","276");

INSERT INTO tb_auditoria_tabela VALUES("277","TB_HISTORIA","U","4","277");

INSERT INTO tb_auditoria_tabela VALUES("278","TB_HISTORIA","I","125","278");

INSERT INTO tb_auditoria_tabela VALUES("279","TB_HISTORIA","I","126","279");

INSERT INTO tb_auditoria_tabela VALUES("280","TB_HISTORIA","U","126","280");

INSERT INTO tb_auditoria_tabela VALUES("282","TB_HISTORIA","U","2","282");

INSERT INTO tb_auditoria_tabela VALUES("283","TB_HISTORIA","U","124","283");

INSERT INTO tb_auditoria_tabela VALUES("284","TB_HISTORIA","U","2","284");

INSERT INTO tb_auditoria_tabela VALUES("285","TB_HISTORIA","U","2","285");

INSERT INTO tb_auditoria_tabela VALUES("287","TB_HISTORIA","U","124","287");

INSERT INTO tb_auditoria_tabela VALUES("288","TB_HISTORIA","U","124","288");

INSERT INTO tb_auditoria_tabela VALUES("289","TB_HISTORIA","U","124","289");

INSERT INTO tb_auditoria_tabela VALUES("290","TB_HISTORIA","I","127","290");

INSERT INTO tb_auditoria_tabela VALUES("291","TB_HISTORIA","U","124","291");

INSERT INTO tb_auditoria_tabela VALUES("292","TB_HISTORIA","U","127","292");

INSERT INTO tb_auditoria_tabela VALUES("295","TB_HISTORIA","U","124","295");

INSERT INTO tb_auditoria_tabela VALUES("296","TB_HISTORIA","U","124","296");

INSERT INTO tb_auditoria_tabela VALUES("297","TB_HISTORIA","U","124","297");

INSERT INTO tb_auditoria_tabela VALUES("298","TB_HISTORIA","U","125","298");

INSERT INTO tb_auditoria_tabela VALUES("299","TB_HISTORIA","U","125","299");

INSERT INTO tb_auditoria_tabela VALUES("301","TB_HISTORIA","U","127","301");

INSERT INTO tb_auditoria_tabela VALUES("302","TB_HISTORIA","U","6","302");

INSERT INTO tb_auditoria_tabela VALUES("303","TB_HISTORIA","I","130","303");

INSERT INTO tb_auditoria_tabela VALUES("304","TB_HISTORIA","U","8","304");

INSERT INTO tb_auditoria_tabela VALUES("305","TB_HISTORIA","U","7","305");

INSERT INTO tb_auditoria_tabela VALUES("306","TB_HISTORIA","U","6","306");

INSERT INTO tb_auditoria_tabela VALUES("307","TB_HISTORIA","U","6","307");

INSERT INTO tb_auditoria_tabela VALUES("308","TB_HISTORIA","U","130","308");

INSERT INTO tb_auditoria_tabela VALUES("309","TB_HISTORIA","U","7","309");

INSERT INTO tb_auditoria_tabela VALUES("310","TB_HISTORIA","U","8","310");

INSERT INTO tb_auditoria_tabela VALUES("311","TB_HISTORIA","U","130","311");

INSERT INTO tb_auditoria_tabela VALUES("312","TB_HISTORIA","U","8","312");

INSERT INTO tb_auditoria_tabela VALUES("313","TB_HISTORIA","U","7","313");

INSERT INTO tb_auditoria_tabela VALUES("314","TB_HISTORIA","U","6","314");

INSERT INTO tb_auditoria_tabela VALUES("315","TB_HISTORIA","U","10","315");

INSERT INTO tb_auditoria_tabela VALUES("316","TB_HISTORIA","U","9","316");

INSERT INTO tb_auditoria_tabela VALUES("317","TB_HISTORIA","U","11","317");

INSERT INTO tb_auditoria_tabela VALUES("318","TB_HISTORIA","I","131","318");

INSERT INTO tb_auditoria_tabela VALUES("319","TB_HISTORIA","I","132","319");

INSERT INTO tb_auditoria_tabela VALUES("320","TB_HISTORIA","U","12","320");

INSERT INTO tb_auditoria_tabela VALUES("321","TB_HISTORIA","I","133","321");

INSERT INTO tb_auditoria_tabela VALUES("322","TB_HISTORIA","U","133","322");

INSERT INTO tb_auditoria_tabela VALUES("323","TB_HISTORIA","U","11","323");

INSERT INTO tb_auditoria_tabela VALUES("324","TB_HISTORIA","U","11","324");

INSERT INTO tb_auditoria_tabela VALUES("325","TB_HISTORIA","U","11","325");

INSERT INTO tb_auditoria_tabela VALUES("326","TB_HISTORIA","U","131","326");

INSERT INTO tb_auditoria_tabela VALUES("327","TB_HISTORIA","U","131","327");

INSERT INTO tb_auditoria_tabela VALUES("328","TB_HISTORIA","U","132","328");

INSERT INTO tb_auditoria_tabela VALUES("329","TB_HISTORIA","U","12","329");

INSERT INTO tb_auditoria_tabela VALUES("330","TB_HISTORIA","U","13","330");

INSERT INTO tb_auditoria_tabela VALUES("331","TB_HISTORIA","U","12","331");

INSERT INTO tb_auditoria_tabela VALUES("332","TB_HISTORIA","U","13","332");

INSERT INTO tb_auditoria_tabela VALUES("333","TB_HISTORIA","U","13","333");

INSERT INTO tb_auditoria_tabela VALUES("334","TB_HISTORIA","U","133","334");

INSERT INTO tb_auditoria_tabela VALUES("335","TB_HISTORIA","U","15","335");

INSERT INTO tb_auditoria_tabela VALUES("336","TB_HISTORIA","U","14","336");

INSERT INTO tb_auditoria_tabela VALUES("337","TB_HISTORIA","U","15","337");

INSERT INTO tb_auditoria_tabela VALUES("338","TB_HISTORIA","U","14","338");

INSERT INTO tb_auditoria_tabela VALUES("339","TB_HISTORIA","U","14","339");

INSERT INTO tb_auditoria_tabela VALUES("340","TB_HISTORIA","I","134","340");

INSERT INTO tb_auditoria_tabela VALUES("341","TB_HISTORIA","U","16","341");

INSERT INTO tb_auditoria_tabela VALUES("342","TB_HISTORIA","U","16","342");

INSERT INTO tb_auditoria_tabela VALUES("343","TB_HISTORIA","U","16","343");

INSERT INTO tb_auditoria_tabela VALUES("344","TB_HISTORIA","U","16","344");

INSERT INTO tb_auditoria_tabela VALUES("345","TB_HISTORIA","U","16","345");

INSERT INTO tb_auditoria_tabela VALUES("346","TB_HISTORIA","U","46","346");

INSERT INTO tb_auditoria_tabela VALUES("347","TB_HISTORIA","U","16","347");

INSERT INTO tb_auditoria_tabela VALUES("348","TB_HISTORIA","U","16","348");

INSERT INTO tb_auditoria_tabela VALUES("349","TB_HISTORIA","U","16","349");

INSERT INTO tb_auditoria_tabela VALUES("359","TB_HISTORIA","U","16","359");

INSERT INTO tb_auditoria_tabela VALUES("360","TB_HISTORIA","I","140","360");

INSERT INTO tb_auditoria_tabela VALUES("413","TB_HISTORIA","U","17","413");

INSERT INTO tb_auditoria_tabela VALUES("414","TB_HISTORIA","U","17","414");

INSERT INTO tb_auditoria_tabela VALUES("415","TB_PERFIL_FUNCIONALIDADE","D","","415");

INSERT INTO tb_auditoria_tabela VALUES("416","TB_PERFIL_FUNCIONALIDADE","D","","416");

INSERT INTO tb_auditoria_tabela VALUES("417","TB_PERFIL_FUNCIONALIDADE","D","","417");

INSERT INTO tb_auditoria_tabela VALUES("418","TB_MODULO","U","5","418");

INSERT INTO tb_auditoria_tabela VALUES("419","TB_MODULO","U","5","419");




DROP TABLE IF EXISTS tb_ausencia;


CREATE TABLE `tb_ausencia` (
  `co_ausencia` int(11) NOT NULL AUTO_INCREMENT,
  `dt_inicio` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `tp_ausencia` int(1) DEFAULT NULL,
  `ds_observacao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_profissional` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL COMMENT 'Usuário responsável pelo cadastro',
  PRIMARY KEY (`co_ausencia`,`co_profissional`,`co_usuario`),
  KEY `fk_TB_AUSENCIA_TB_PROFISSIONAL1_idx` (`co_profissional`),
  KEY `fk_TB_AUSENCIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





DROP TABLE IF EXISTS tb_banco;


CREATE TABLE `tb_banco` (
  `co_banco` int(11) NOT NULL COMMENT 'Código do banco',
  `no_banco` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`co_banco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO tb_banco VALUES("1","001 - BANCO DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("2","002 - BANCO CENTRAL DO BRASIL");

INSERT INTO tb_banco VALUES("3","003 - BANCO DA AMAZONIA S.A.");

INSERT INTO tb_banco VALUES("4","004 - BANCO DO NORDESTE DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("7","007 - BANCO NAC DESENV. ECO. SOCIAL S.A.");

INSERT INTO tb_banco VALUES("8","008 - BANCO MERIDIONAL DO BRASIL");

INSERT INTO tb_banco VALUES("20","020 - BANCO DO ESTADO DE ALAGOAS S.A.");

INSERT INTO tb_banco VALUES("21","021 - BANCO DO ESTADO DO ESPIRITO SANTO S.A.");

INSERT INTO tb_banco VALUES("22","022 - BANCO DE CREDITO REAL DE MINAS GERAIS S.A.");

INSERT INTO tb_banco VALUES("24","024 - BANCO DO ESTADO DE PERNAMBUCO");

INSERT INTO tb_banco VALUES("25","025 - BANCO ALFA S.A.");

INSERT INTO tb_banco VALUES("26","026 - BANCO DO ESTADO DO ACRE S.A.");

INSERT INTO tb_banco VALUES("27","027 - BANCO DO ESTADO DE SANTA CATARINA S.A.");

INSERT INTO tb_banco VALUES("28","028 - BANCO DO ESTADO DA BAHIA S.A.");

INSERT INTO tb_banco VALUES("29","029 - BANCO DO ESTADO DO RIO DE JANEIRO S.A.");

INSERT INTO tb_banco VALUES("30","030 - BANCO DO ESTADO DA PARAIBA S.A.");

INSERT INTO tb_banco VALUES("31","031 - BANCO DO ESTADO DE GOIAS S.A.");

INSERT INTO tb_banco VALUES("32","032 - BANCO DO ESTADO DO MATO GROSSO S.A.");

INSERT INTO tb_banco VALUES("33","033 - BANCO DO ESTADO DE SAO PAULO S.A.");

INSERT INTO tb_banco VALUES("34","034 - BANCO DO ESADO DO AMAZONAS S.A.");

INSERT INTO tb_banco VALUES("35","035 - BANCO DO ESTADO DO CEARA S.A.");

INSERT INTO tb_banco VALUES("36","036 - BANCO DO ESTADO DO MARANHAO S.A.");

INSERT INTO tb_banco VALUES("37","037 - BANCO DO ESTADO DO PARA S.A.");

INSERT INTO tb_banco VALUES("38","038 - BANCO DO ESTADO DO PARANA S.A.");

INSERT INTO tb_banco VALUES("39","039 - BANCO DO ESTADO DO PIAUI S.A.");

INSERT INTO tb_banco VALUES("41","041 - BANCO DO ESTADO DO RIO GRANDE DO SUL S.A.");

INSERT INTO tb_banco VALUES("47","047 - BANCO DO ESTADO DE SERGIPE S.A.");

INSERT INTO tb_banco VALUES("48","048 - BANCO DO ESTADO DE MINAS GERAIS S.A.");

INSERT INTO tb_banco VALUES("59","059 - BANCO DO ESTADO DE RONDONIA S.A.");

INSERT INTO tb_banco VALUES("70","070 - BANCO DE BRASILIA S.A.");

INSERT INTO tb_banco VALUES("104","104 - CAIXA ECONOMICA FEDERAL");

INSERT INTO tb_banco VALUES("106","106 - BANCO ITABANCO S.A.");

INSERT INTO tb_banco VALUES("107","107 - BANCO BBM S.A.");

INSERT INTO tb_banco VALUES("109","109 - BANCO CREDIBANCO S.A.");

INSERT INTO tb_banco VALUES("116","116 - BANCO B.N.L DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("148","148 - MULTI BANCO S.A.");

INSERT INTO tb_banco VALUES("151","151 - CAIXA ECONOMICA DO ESTADO DE SAO PAULO");

INSERT INTO tb_banco VALUES("153","153 - CAIXA ECONOMICA DO ESTADO DO R.G.SUL");

INSERT INTO tb_banco VALUES("165","165 - BANCO NORCHEM S.A.");

INSERT INTO tb_banco VALUES("166","166 - BANCO INTER-ATLANTICO S.A.");

INSERT INTO tb_banco VALUES("168","168 - BANCO C.C.F. BRASIL S.A.");

INSERT INTO tb_banco VALUES("175","175 - CONTINENTAL BANCO S.A.");

INSERT INTO tb_banco VALUES("184","184 - BBA - CREDITANSTALT S.A.");

INSERT INTO tb_banco VALUES("199","199 - BANCO FINANCIAL PORTUGUES");

INSERT INTO tb_banco VALUES("200","200 - BANCO FRICRISA AXELRUD S.A.");

INSERT INTO tb_banco VALUES("201","201 - BANCO AUGUSTA INDUSTRIA E COMERCIAL S.A.");

INSERT INTO tb_banco VALUES("204","204 - BANCO S.R.L S.A.");

INSERT INTO tb_banco VALUES("205","205 - BANCO SUL AMERICA S.A.");

INSERT INTO tb_banco VALUES("206","206 - BANCO MARTINELLI S.A.");

INSERT INTO tb_banco VALUES("208","208 - BANCO PACTUAL S.A.");

INSERT INTO tb_banco VALUES("210","210 - DEUTSCH SUDAMERIKANICHE BANK AG");

INSERT INTO tb_banco VALUES("211","211 - BANCO SISTEMA S.A.");

INSERT INTO tb_banco VALUES("212","212 - BANCO MATONE S.A.");

INSERT INTO tb_banco VALUES("213","213 - BANCO ARBI S.A.");

INSERT INTO tb_banco VALUES("214","214 - BANCO DIBENS S.A.");

INSERT INTO tb_banco VALUES("215","215 - BANCO AMERICA DO SUL S.A.");

INSERT INTO tb_banco VALUES("216","216 - BANCO REGIONAL MALCON S.A.");

INSERT INTO tb_banco VALUES("217","217 - BANCO AGROINVEST S.A.");

INSERT INTO tb_banco VALUES("218","218 - BBS - BANCO BONSUCESSO S.A.");

INSERT INTO tb_banco VALUES("219","219 - BANCO DE CREDITO DE SAO PAULO S.A.");

INSERT INTO tb_banco VALUES("220","220 - BANCO CREFISUL");

INSERT INTO tb_banco VALUES("221","221 - BANCO GRAPHUS S.A.");

INSERT INTO tb_banco VALUES("222","222 - BANCO AGF BRASIL S. A.");

INSERT INTO tb_banco VALUES("223","223 - BANCO INTERUNION S.A.");

INSERT INTO tb_banco VALUES("224","224 - BANCO FIBRA S.A.");

INSERT INTO tb_banco VALUES("225","225 - BANCO BRASCAN S.A.");

INSERT INTO tb_banco VALUES("228","228 - BANCO ICATU S.A.");

INSERT INTO tb_banco VALUES("229","229 - BANCO CRUZEIRO S.A.");

INSERT INTO tb_banco VALUES("230","230 - BANCO BANDEIRANTES S.A.");

INSERT INTO tb_banco VALUES("231","231 - BANCO BOAVISTA S.A.");

INSERT INTO tb_banco VALUES("232","232 - BANCO INTERPART S.A.");

INSERT INTO tb_banco VALUES("233","233 - BANCO MAPPIN S.A.");

INSERT INTO tb_banco VALUES("234","234 - BANCO LAVRA S.A.");

INSERT INTO tb_banco VALUES("235","235 - BANCO LIBERAL S.A.");

INSERT INTO tb_banco VALUES("236","236 - BANCO CAMBIAL S.A.");

INSERT INTO tb_banco VALUES("237","237 - BANCO BRADESCO S.A.");

INSERT INTO tb_banco VALUES("239","239 - BANCO BANCRED S.A.");

INSERT INTO tb_banco VALUES("240","240 - BANCO DE CREDITO REAL DE MINAS GERAIS S.");

INSERT INTO tb_banco VALUES("241","241 - BANCO CLASSICO S.A.");

INSERT INTO tb_banco VALUES("242","242 - BANCO EUROINVEST S.A.");

INSERT INTO tb_banco VALUES("243","243 - BANCO STOCK S.A.");

INSERT INTO tb_banco VALUES("244","244 - BANCO CIDADE S.A.");

INSERT INTO tb_banco VALUES("245","245 - BANCO EMPRESARIAL S.A.");

INSERT INTO tb_banco VALUES("246","246 - BANCO ABC ROMA S.A.");

INSERT INTO tb_banco VALUES("247","247 - BANCO OMEGA S.A.");

INSERT INTO tb_banco VALUES("249","249 - BANCO INVESTCRED S.A.");

INSERT INTO tb_banco VALUES("250","250 - BANCO SCHAHIN CURY S.A.");

INSERT INTO tb_banco VALUES("251","251 - BANCO SAO JORGE S.A.");

INSERT INTO tb_banco VALUES("252","252 - BANCO FININVEST S.A.");

INSERT INTO tb_banco VALUES("254","254 - BANCO PARANA BANCO S.A.");

INSERT INTO tb_banco VALUES("255","255 - MILBANCO S.A.");

INSERT INTO tb_banco VALUES("256","256 - BANCO GULVINVEST S.A.");

INSERT INTO tb_banco VALUES("258","258 - BANCO INDUSCRED S.A.");

INSERT INTO tb_banco VALUES("261","261 - BANCO VARIG S.A.");

INSERT INTO tb_banco VALUES("262","262 - BANCO BOREAL S.A.");

INSERT INTO tb_banco VALUES("263","263 - BANCO CACIQUE");

INSERT INTO tb_banco VALUES("264","264 - BANCO PERFORMANCE S.A.");

INSERT INTO tb_banco VALUES("265","265 - BANCO FATOR S.A.");

INSERT INTO tb_banco VALUES("266","266 - BANCO CEDULA S.A.");

INSERT INTO tb_banco VALUES("267","267 - BANCO BBM-COM.C.IMOB.CFI S.A.");

INSERT INTO tb_banco VALUES("275","275 - BANCO REAL S.A.");

INSERT INTO tb_banco VALUES("277","277 - BANCO PLANIBANC S.A.");

INSERT INTO tb_banco VALUES("282","282 - BANCO BRASILEIRO COMERCIAL");

INSERT INTO tb_banco VALUES("291","291 - BANCO DE CREDITO NACIONAL S.A.");

INSERT INTO tb_banco VALUES("294","294 - BCR - BANCO DE CREDITO REAL S.A.");

INSERT INTO tb_banco VALUES("295","295 - BANCO CREDIPLAN S.A.");

INSERT INTO tb_banco VALUES("300","300 - BANCO DE LA NACION ARGENTINA S.A.");

INSERT INTO tb_banco VALUES("302","302 - BANCO DO PROGRESSO S.A.");

INSERT INTO tb_banco VALUES("303","303 - BANCO HNF S.A.");

INSERT INTO tb_banco VALUES("304","304 - BANCO PONTUAL S.A.");

INSERT INTO tb_banco VALUES("308","308 - BANCO COMERCIAL BANCESA S.A.");

INSERT INTO tb_banco VALUES("318","318 - BANCO B.M.G. S.A.");

INSERT INTO tb_banco VALUES("320","320 - BANCO INDUSTRIAL E COMERCIAL");

INSERT INTO tb_banco VALUES("341","341 - BANCO ITAU S.A.");

INSERT INTO tb_banco VALUES("346","346 - BANCO FRANCES E BRASILEIRO S.A.");

INSERT INTO tb_banco VALUES("347","347 - BANCO SUDAMERIS BRASIL S.A.");

INSERT INTO tb_banco VALUES("351","351 - BANCO BOZANO SIMONSEN S.A.");

INSERT INTO tb_banco VALUES("353","353 - BANCO GERAL DO COMERCIO S.A.");

INSERT INTO tb_banco VALUES("356","356 - ABN AMRO S.A.");

INSERT INTO tb_banco VALUES("366","366 - BANCO SOGERAL S.A.");

INSERT INTO tb_banco VALUES("369","369 - PONTUAL");

INSERT INTO tb_banco VALUES("370","370 - BEAL - BANCO EUROPEU PARA AMERICA LATINA");

INSERT INTO tb_banco VALUES("372","372 - BANCO ITAMARATI S.A.");

INSERT INTO tb_banco VALUES("375","375 - BANCO FENICIA S.A.");

INSERT INTO tb_banco VALUES("376","376 - CHASE MANHATTAN BANK S.A.");

INSERT INTO tb_banco VALUES("388","388 - BANCO MERCANTIL DE DESCONTOS S.A.");

INSERT INTO tb_banco VALUES("389","389 - BANCO MERCANTIL DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("392","392 - BANCO MERCANTIL DE SAO PAULO S.A.");

INSERT INTO tb_banco VALUES("394","394 - BANCO B.M.C. S.A.");

INSERT INTO tb_banco VALUES("399","399 - BANCO BAMERINDUS DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("409","409 - UNIBANCO - UNIAO DOS BANCOS BRASILEIROS");

INSERT INTO tb_banco VALUES("412","412 - BANCO NACIONAL DA BAHIA S.A.");

INSERT INTO tb_banco VALUES("415","415 - BANCO NACIONAL S.A.");

INSERT INTO tb_banco VALUES("420","420 - BANCO NACIONAL DO NORTE S.A.");

INSERT INTO tb_banco VALUES("422","422 - BANCO SAFRA S.A.");

INSERT INTO tb_banco VALUES("424","424 - BANCO NOROESTE S.A.");

INSERT INTO tb_banco VALUES("434","434 - BANCO FORTALEZA S.A.");

INSERT INTO tb_banco VALUES("453","453 - BANCO RURAL S.A.");

INSERT INTO tb_banco VALUES("456","456 - BANCO TOKIO S.A.");

INSERT INTO tb_banco VALUES("464","464 - BANCO SUMITOMO BRASILEIRO S.A.");

INSERT INTO tb_banco VALUES("466","466 - BANCO MITSUBISHI BRASILEIRO S.A.");

INSERT INTO tb_banco VALUES("472","472 - LLOYDS BANK PLC");

INSERT INTO tb_banco VALUES("473","473 - BANCO FINANCIAL PORTUGUES S.A.");

INSERT INTO tb_banco VALUES("477","477 - CITIBANK N.A");

INSERT INTO tb_banco VALUES("479","479 - BANCO DE BOSTON S.A.");

INSERT INTO tb_banco VALUES("480","480 - BANCO PORTUGUES DO ATLANTICO-BRASIL S.A.");

INSERT INTO tb_banco VALUES("483","483 - BANCO AGRIMISA S.A.");

INSERT INTO tb_banco VALUES("487","487 - DEUTSCHE BANK S.A - BANCO ALEMAO");

INSERT INTO tb_banco VALUES("488","488 - BANCO J. P. MORGAN S.A.");

INSERT INTO tb_banco VALUES("489","489 - BANESTO BANCO URUGAUAY S.A.");

INSERT INTO tb_banco VALUES("492","492 - INTERNATIONALE NEDERLANDEN BANK N.V.");

INSERT INTO tb_banco VALUES("493","493 - BANCO UNION S.A.C.A");

INSERT INTO tb_banco VALUES("494","494 - BANCO LA REP. ORIENTAL DEL URUGUAY");

INSERT INTO tb_banco VALUES("495","495 - BANCO LA PROVINCIA DE BUENOS AIRES");

INSERT INTO tb_banco VALUES("496","496 - BANCO EXTERIOR DE ESPANA S.A.");

INSERT INTO tb_banco VALUES("498","498 - CENTRO HISPANO BANCO");

INSERT INTO tb_banco VALUES("499","499 - BANCO IOCHPE S.A.");

INSERT INTO tb_banco VALUES("501","501 - BANCO BRASILEIRO IRAQUIANO S.A.");

INSERT INTO tb_banco VALUES("502","502 - BANCO SANTANDER S.A.");

INSERT INTO tb_banco VALUES("504","504 - BANCO MULTIPLIC S.A.");

INSERT INTO tb_banco VALUES("505","505 - BANCO GARANTIA S.A.");

INSERT INTO tb_banco VALUES("600","600 - BANCO LUSO BRASILEIRO S.A.");

INSERT INTO tb_banco VALUES("601","601 - BFC BANCO S.A.");

INSERT INTO tb_banco VALUES("602","602 - BANCO PATENTE S.A.");

INSERT INTO tb_banco VALUES("604","604 - BANCO INDUSTRIAL DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("607","607 - BANCO SANTOS NEVES S.A.");

INSERT INTO tb_banco VALUES("608","608 - BANCO OPEN S.A.");

INSERT INTO tb_banco VALUES("610","610 - BANCO V.R. S.A.");

INSERT INTO tb_banco VALUES("611","611 - BANCO PAULISTA S.A.");

INSERT INTO tb_banco VALUES("612","612 - BANCO GUANABARA S.A.");

INSERT INTO tb_banco VALUES("613","613 - BANCO PECUNIA S.A.");

INSERT INTO tb_banco VALUES("616","616 - BANCO INTERPACIFICO S.A.");

INSERT INTO tb_banco VALUES("617","617 - BANCO INVESTOR S.A.");

INSERT INTO tb_banco VALUES("618","618 - BANCO TENDENCIA S.A.");

INSERT INTO tb_banco VALUES("621","621 - BANCO APLICAP S.A.");

INSERT INTO tb_banco VALUES("622","622 - BANCO DRACMA S.A.");

INSERT INTO tb_banco VALUES("623","623 - BANCO PANAMERICANO S.A.");

INSERT INTO tb_banco VALUES("624","624 - BANCO GENERAL MOTORS S.A.");

INSERT INTO tb_banco VALUES("625","625 - BANCO ARAUCARIA S.A.");

INSERT INTO tb_banco VALUES("626","626 - BANCO FICSA S.A.");

INSERT INTO tb_banco VALUES("627","627 - BANCO DESTAK S.A.");

INSERT INTO tb_banco VALUES("628","628 - BANCO CRITERIUM S.A.");

INSERT INTO tb_banco VALUES("629","629 - BANCORP BANCO COML. E. DE INVESTMENTO");

INSERT INTO tb_banco VALUES("630","630 - BANCO INTERCAP S.A.");

INSERT INTO tb_banco VALUES("633","633 - BANCO REDIMENTO S.A.");

INSERT INTO tb_banco VALUES("634","634 - BANCO TRIANGULO S.A.");

INSERT INTO tb_banco VALUES("635","635 - BANCO DO ESTADO DO AMAPA S.A.");

INSERT INTO tb_banco VALUES("637","637 - BANCO SOFISA S.A.");

INSERT INTO tb_banco VALUES("638","638 - BANCO PROSPER S.A.");

INSERT INTO tb_banco VALUES("639","639 - BIG S.A. - BANCO IRMAOS GUIMARAES");

INSERT INTO tb_banco VALUES("640","640 - BANCO DE CREDITO METROPOLITANO S.A.");

INSERT INTO tb_banco VALUES("641","641 - BANCO EXCEL ECONOMICO S.A.");

INSERT INTO tb_banco VALUES("643","643 - BANCO SEGMENTO S.A.");

INSERT INTO tb_banco VALUES("645","645 - BANCO DO ESTADO DE RORAIMA S.A.");

INSERT INTO tb_banco VALUES("647","647 - BANCO MARKA S.A.");

INSERT INTO tb_banco VALUES("648","648 - BANCO ATLANTIS S.A.");

INSERT INTO tb_banco VALUES("649","649 - BANCO DIMENSAO S.A.");

INSERT INTO tb_banco VALUES("650","650 - BANCO PEBB S.A.");

INSERT INTO tb_banco VALUES("652","652 - BANCO FRANCES E BRASILEIRO S.A.");

INSERT INTO tb_banco VALUES("653","653 - BANCO INDUSVAL S.A.");

INSERT INTO tb_banco VALUES("654","654 - BANCO A. J. RENNER S.A.");

INSERT INTO tb_banco VALUES("655","655 - BANCO VOTORANTIM S.A.");

INSERT INTO tb_banco VALUES("656","656 - BANCO MATRIX S.A.");

INSERT INTO tb_banco VALUES("657","657 - BANCO TECNICORP S.A.");

INSERT INTO tb_banco VALUES("658","658 - BANCO PORTO REAL S.A.");

INSERT INTO tb_banco VALUES("702","702 - BANCO SANTOS S.A.");

INSERT INTO tb_banco VALUES("705","705 - BANCO INVESTCORP S.A.");

INSERT INTO tb_banco VALUES("707","707 - BANCO DAYCOVAL S.A.");

INSERT INTO tb_banco VALUES("711","711 - BANCO VETOR S.A.");

INSERT INTO tb_banco VALUES("713","713 - BANCO CINDAM S.A.");

INSERT INTO tb_banco VALUES("715","715 - BANCO VEGA S.A.");

INSERT INTO tb_banco VALUES("718","718 - BANCO OPERADOR S.A.");

INSERT INTO tb_banco VALUES("719","719 - BANCO PRIMUS S.A.");

INSERT INTO tb_banco VALUES("720","720 - BANCO MAXINVEST S.A.");

INSERT INTO tb_banco VALUES("721","721 - BANCO CREDIBEL S.A.");

INSERT INTO tb_banco VALUES("722","722 - BANCO INTERIOR DE SAO PAULO S.A.");

INSERT INTO tb_banco VALUES("724","724 - BANCO PORTO SEGURO S.A.");

INSERT INTO tb_banco VALUES("725","725 - BANCO FINABANCO S.A.");

INSERT INTO tb_banco VALUES("726","726 - BANCO UNIVERSAL S.A.");

INSERT INTO tb_banco VALUES("728","728 - BANCO FITAL S.A.");

INSERT INTO tb_banco VALUES("729","729 - BANCO FONTE S.A.");

INSERT INTO tb_banco VALUES("730","730 - BANCO COMERCIAL PARAGUAYO S.A.");

INSERT INTO tb_banco VALUES("731","731 - BANCO GNPP S.A.");

INSERT INTO tb_banco VALUES("732","732 - BANCO PREMIER S.A.");

INSERT INTO tb_banco VALUES("733","733 - BANCO NACOES S.A.");

INSERT INTO tb_banco VALUES("734","734 - BANCO GERDAU S.A.");

INSERT INTO tb_banco VALUES("735","735 - BACO POTENCIAL");

INSERT INTO tb_banco VALUES("736","736 - BANCO UNITED S.A.");

INSERT INTO tb_banco VALUES("737","737 - THECA");

INSERT INTO tb_banco VALUES("738","738 - MARADA");

INSERT INTO tb_banco VALUES("739","739 - BGN");

INSERT INTO tb_banco VALUES("740","740 - BCN BARCLAYS");

INSERT INTO tb_banco VALUES("741","741 - BRP");

INSERT INTO tb_banco VALUES("742","742 - EQUATORIAL");

INSERT INTO tb_banco VALUES("743","743 - BANCO EMBLEMA S.A.");

INSERT INTO tb_banco VALUES("744","744 - THE FIRST NATIONAL BANK OF BOSTON");

INSERT INTO tb_banco VALUES("745","745 - CITIBAN N.A.");

INSERT INTO tb_banco VALUES("746","746 - MODAL S.A.");

INSERT INTO tb_banco VALUES("747","747 - RAIBOBANK DO BRASIL");

INSERT INTO tb_banco VALUES("748","748 - SICREDI");

INSERT INTO tb_banco VALUES("749","749 - BRMSANTIL S.A.");

INSERT INTO tb_banco VALUES("750","750 - BANCO REPUBLIC NATIONAL OF NEW YORK (BRA");

INSERT INTO tb_banco VALUES("751","751 - DRESDNER BANK LATEINAMERIKA-BRASIL S.A.");

INSERT INTO tb_banco VALUES("752","752 - BANCO BANQUE NATIONALE DE PARIS BRASIL S");

INSERT INTO tb_banco VALUES("753","753 - BANCO COMERCIAL URUGUAI S.A.");

INSERT INTO tb_banco VALUES("755","755 - BANCO MERRILL LYNCH S.A.");

INSERT INTO tb_banco VALUES("756","756 - BANCO COOPERATIVO DO BRASIL S.A.");

INSERT INTO tb_banco VALUES("757","757 - BANCO KEB DO BRASIL S.A.");




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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


INSERT INTO tb_cargo VALUES("1","Assistente");

INSERT INTO tb_cargo VALUES("2","Acupunturista");

INSERT INTO tb_cargo VALUES("3","Administrativo");

INSERT INTO tb_cargo VALUES("4","Auxiliar de serviços gerais");

INSERT INTO tb_cargo VALUES("5","Barbeiro");

INSERT INTO tb_cargo VALUES("6","Caixa");

INSERT INTO tb_cargo VALUES("7","Cabeleireiro(a)");

INSERT INTO tb_cargo VALUES("8","Colorista");

INSERT INTO tb_cargo VALUES("9","Copeira");

INSERT INTO tb_cargo VALUES("10","Consultor");

INSERT INTO tb_cargo VALUES("11","Cirurgião Plástico");

INSERT INTO tb_cargo VALUES("12","Depilador(a)");

INSERT INTO tb_cargo VALUES("13","Designer de sobrancelhas");

INSERT INTO tb_cargo VALUES("14","Estoquista");

INSERT INTO tb_cargo VALUES("15","Esteticista");

INSERT INTO tb_cargo VALUES("16","Faxineira");

INSERT INTO tb_cargo VALUES("17","Freelancer");

INSERT INTO tb_cargo VALUES("18","Fisioterapeuta");

INSERT INTO tb_cargo VALUES("19","Financeiro");

INSERT INTO tb_cargo VALUES("20","Gerente");

INSERT INTO tb_cargo VALUES("21","Gestor");

INSERT INTO tb_cargo VALUES("22","Marketing");

INSERT INTO tb_cargo VALUES("23","Manicure");

INSERT INTO tb_cargo VALUES("24","Manobrista");

INSERT INTO tb_cargo VALUES("25","Manutenção");

INSERT INTO tb_cargo VALUES("26","Maquiador(a)");

INSERT INTO tb_cargo VALUES("27","Massagista");

INSERT INTO tb_cargo VALUES("28","Micropigmentador(a)");

INSERT INTO tb_cargo VALUES("29","Nutricionista");

INSERT INTO tb_cargo VALUES("30","Pedicure");

INSERT INTO tb_cargo VALUES("31","Podologista");

INSERT INTO tb_cargo VALUES("32","Recepcionista");

INSERT INTO tb_cargo VALUES("33","Terapeuta");

INSERT INTO tb_cargo VALUES("34","Vendedor");

INSERT INTO tb_cargo VALUES("35","Outros");




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


INSERT INTO tb_config_agendamento VALUES("2","2","1","7","S","N","11");




DROP TABLE IF EXISTS tb_config_cliente;


CREATE TABLE `tb_config_cliente` (
  `co_config_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `st_marca_servico` varchar(1) DEFAULT 'N' COMMENT 'S - Sim / N - Não',
  `nu_ausencia` int(2) DEFAULT '0' COMMENT 'Número que o cliente se ausentou e não poderar mias marcar serviços pelo site',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_config_cliente`,`co_assinante`),
  KEY `fk_TB_CONFIG_CLIENTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_config_cliente VALUES("1","S","4","11");




DROP TABLE IF EXISTS tb_conta_bancaria;


CREATE TABLE `tb_conta_bancaria` (
  `co_conta_bancaria` int(11) NOT NULL AUTO_INCREMENT,
  `nu_agencia` varchar(10) DEFAULT NULL,
  `nu_conta` varchar(20) DEFAULT NULL,
  `tp_conta` varchar(2) DEFAULT 'CC' COMMENT 'CC - Conta corrente / CP - Conta Poupança / CS - Conta Salário',
  `co_banco` int(11) NOT NULL,
  PRIMARY KEY (`co_conta_bancaria`,`co_banco`),
  KEY `fk_TB_CONTA_BANCARIA_TB_BANCO1_idx` (`co_banco`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;


INSERT INTO tb_conta_bancaria VALUES("17","2399","22982-7","CC","104");

INSERT INTO tb_conta_bancaria VALUES("34","","","","0");

INSERT INTO tb_conta_bancaria VALUES("35","2399","22982-7","CS","1");

INSERT INTO tb_conta_bancaria VALUES("39","2399","22982-7","CP","0");

INSERT INTO tb_conta_bancaria VALUES("40","4354365465","436547385685638","CP","341");

INSERT INTO tb_conta_bancaria VALUES("42","2399","22982-7","CC","104");

INSERT INTO tb_conta_bancaria VALUES("43","2399","22982-7","CC","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;


INSERT INTO tb_contato VALUES("1","61993274991","6130826060","0","","leonardomcbessa@gmail.com","","","","");

INSERT INTO tb_contato VALUES("15","33333333333","44444444444","","","leo@mail.com","3333333","","","");

INSERT INTO tb_contato VALUES("16","23425253666","","","","leonardomcbessa@gmail.com","","","","");

INSERT INTO tb_contato VALUES("17","54353643643","","","","ddssado@mail.com","","","","");

INSERT INTO tb_contato VALUES("18","61336699663","","","","mail@email.com","","","","");

INSERT INTO tb_contato VALUES("19","","","","","","","","","");

INSERT INTO tb_contato VALUES("20","","","","","","","","","");

INSERT INTO tb_contato VALUES("53","61999999999","61888888888","","","leonardomcbessa@gmail.com","","link face","link twitter","link insta");

INSERT INTO tb_contato VALUES("72","6546546132","","","","rgr@grge.com","","","","");

INSERT INTO tb_contato VALUES("73","45654665165","57712572758","","","rgr@grge.com","","link face 2","link twitter 2","link insta 2");

INSERT INTO tb_contato VALUES("78","56464654646","","","","greg@gd.com","","","","");

INSERT INTO tb_contato VALUES("79","11111111111","22222222222","","","leo@mail.com","","link face 5","link twitter 5","link insta 5");

INSERT INTO tb_contato VALUES("81","61993003405","","","","leonardomcbessa@gmail.com","","","","");

INSERT INTO tb_contato VALUES("82","6546546131","","","","leonardomcbessa@gmail.com","","","","");




DROP TABLE IF EXISTS tb_controller;


CREATE TABLE `tb_controller` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;


INSERT INTO tb_controller VALUES("1","Gestao","clip-data");

INSERT INTO tb_controller VALUES("2","Auditoria","fa fa-crosshairs");

INSERT INTO tb_controller VALUES("3","Acesso","clip-connection-2");

INSERT INTO tb_controller VALUES("4","Funcionalidade","fa fa-outdent");

INSERT INTO tb_controller VALUES("5","Perfil","clip-stack-empty");

INSERT INTO tb_controller VALUES("6","Usuario","fa fa-group");

INSERT INTO tb_controller VALUES("7","Visita","clip-airplane");

INSERT INTO tb_controller VALUES("8","Plano","clip-banknote");

INSERT INTO tb_controller VALUES("9","Assinante","clip-user-5");

INSERT INTO tb_controller VALUES("12","Profissional","clip-user");

INSERT INTO tb_controller VALUES("13","Configuracao","clip-settings");




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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO tb_dia_especial VALUES("2","2019-01-31","4","09:00","14:00","Dia especial","11");




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

INSERT INTO tb_empresa VALUES("12","TESTE 01 RAZãO 33","MEU SALãO 33","2018-08-14 16:45:26","07844665000120","4354366433","vev v33","","0","29","15","0");

INSERT INTO tb_empresa VALUES("13","","Novo Esmaltaria 88","2018-08-16 23:59:20","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("14","","Novo Esmaltaria 10ggg","2018-08-28 10:59:39","","","","","0","0","0","0");

INSERT INTO tb_empresa VALUES("15","","Salão novo visual","2018-09-17 16:45:33","","","","","0","30","0","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;


INSERT INTO tb_endereco VALUES("1","qr 403 conjunto 10 casa 28","","Samambaia Norte","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("16","","","","","","");

INSERT INTO tb_endereco VALUES("17","","","","","","");

INSERT INTO tb_endereco VALUES("23","","","","","","");

INSERT INTO tb_endereco VALUES("27","","","","","","");

INSERT INTO tb_endereco VALUES("28","QR 403 Conjunto 10","Casa 28","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("29","QR 403 Conjunto 10 33","Casa 28 33","Samambaia Norte (Samambaia)","72319111","Brasília 33","AP");

INSERT INTO tb_endereco VALUES("30","","","","","","");

INSERT INTO tb_endereco VALUES("66","QR 403 Conjunto 10 casa 28","complemento novo","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("86","","","","","","");

INSERT INTO tb_endereco VALUES("87","Rua Ipanema","complemento novo","Ypiranga","72879282","Valparaíso de Goiás","GO");

INSERT INTO tb_endereco VALUES("92","","","","","","");

INSERT INTO tb_endereco VALUES("93","QR 403 Conjunto 10","Casa 28 33","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("95","QR 403 Conjunto 10","Casa 28","Samambaia Norte (Samambaia)","72319111","Brasília","DF");

INSERT INTO tb_endereco VALUES("96","QR 403 Conjunto 10","","Samambaia Norte (Samambaia)","72319111","Brasília","DF");




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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;


INSERT INTO tb_facilidade_beneficio VALUES("48","0","0","0","0","N","N","N","N","N","14");

INSERT INTO tb_facilidade_beneficio VALUES("55","1","1","1","1","S","S","S","S","S","11");




DROP TABLE IF EXISTS tb_facilidade_pagamento;


CREATE TABLE `tb_facilidade_pagamento` (
  `co_facilidade_pagamento` int(10) NOT NULL AUTO_INCREMENT,
  `co_tipo_pagamento` int(11) NOT NULL,
  `co_facilidade_beneficio` int(11) NOT NULL,
  PRIMARY KEY (`co_facilidade_pagamento`,`co_tipo_pagamento`,`co_facilidade_beneficio`),
  KEY `fk_TB_FACILIDADE_BENEFICIO_has_TB_TIPO_PAGAMENTO_TB_TIPO_PA_idx` (`co_tipo_pagamento`),
  KEY `fk_TB_FACILIDADE_BENEFICIO_has_TB_TIPO_PAGAMENTO_TB_FACILID_idx` (`co_facilidade_beneficio`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;


INSERT INTO tb_facilidade_pagamento VALUES("19","1","40");

INSERT INTO tb_facilidade_pagamento VALUES("20","2","40");

INSERT INTO tb_facilidade_pagamento VALUES("21","3","40");

INSERT INTO tb_facilidade_pagamento VALUES("22","4","40");

INSERT INTO tb_facilidade_pagamento VALUES("23","3","42");




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
  `ds_action` varchar(120) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT '''A - Ativo / I - Inativo''',
  `st_menu` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não (Se apresenta no menu)',
  `co_controller` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionalidade`,`co_controller`),
  KEY `fk_TB_FUNCIONALIDADE_TB_CONTROLLER1_idx` (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;


INSERT INTO tb_funcionalidade VALUES("1","Perfil Master","PerfilMaster","A","S","0");

INSERT INTO tb_funcionalidade VALUES("2","Auditoria Listar","ListarAuditoria","A","S","2");

INSERT INTO tb_funcionalidade VALUES("3","Auditoria Detalhar","DetalharAuditoria","A","N","2");

INSERT INTO tb_funcionalidade VALUES("4","Usuario Cadastrar","CadastroUsuario","A","N","6");

INSERT INTO tb_funcionalidade VALUES("5","Usuario Listar","ListarUsuario","A","S","6");

INSERT INTO tb_funcionalidade VALUES("6","Meu Perfil Usuario","MeuPerfilUsuario","A","S","6");

INSERT INTO tb_funcionalidade VALUES("7","Perfil Listar","ListarPerfil","A","S","5");

INSERT INTO tb_funcionalidade VALUES("8","Perfil Cadastrar","CadastroPerfil","A","S","5");

INSERT INTO tb_funcionalidade VALUES("9","Funcionalidade Listar","ListarFuncionalidade","A","S","4");

INSERT INTO tb_funcionalidade VALUES("10","Funcionalidade Cadastrar","CadastroFuncionalidade","A","S","4");

INSERT INTO tb_funcionalidade VALUES("12","Troca Senha Usuario","TrocaSenhaUsuario","A","S","6");

INSERT INTO tb_funcionalidade VALUES("13","Dados Complementares Assinante","DadosComplementaresAssinante","A","S","9");

INSERT INTO tb_funcionalidade VALUES("14","Dia Especial","DiaEspecialConfiguracao","A","S","13");

INSERT INTO tb_funcionalidade VALUES("15","Cadastro Dia Especial","CadastroDiaEspecialConfiguracao","A","N","13");

INSERT INTO tb_funcionalidade VALUES("16","Formas De Pagamento","FormasDePagamentoConfiguracao","A","S","13");

INSERT INTO tb_funcionalidade VALUES("17","Bandeiras e Taxas","BandeiraTaxaConfiguracao","A","N","13");

INSERT INTO tb_funcionalidade VALUES("18","Historico Taxa Cartao Debito","HistoricoTaxaCartaoDebito","A","N","13");

INSERT INTO tb_funcionalidade VALUES("19","Historico Taxa Cartao Crédito","HistoricoTaxaCartaoCredito","A","N","13");

INSERT INTO tb_funcionalidade VALUES("20","Configuração de Cliente","ClienteConfiguracao","A","S","13");

INSERT INTO tb_funcionalidade VALUES("21","Configuração de Agendamento","AgendamentoConfiguracao","A","S","13");

INSERT INTO tb_funcionalidade VALUES("22","Manter Motivo Desconto","MotivoDescontoConfiguracao","A","S","13");

INSERT INTO tb_funcionalidade VALUES("23","Cadastro Profissional","CadastroProfissional","A","S","12");

INSERT INTO tb_funcionalidade VALUES("24","Listar Profissional","ListarProfissional","A","S","12");

INSERT INTO tb_funcionalidade VALUES("26","Ausência Profissional","AusenciaProfissional","A","S","12");

INSERT INTO tb_funcionalidade VALUES("27","Cadastro Ausência Profissional","CadastroAusenciaProfissional","A","N","12");

INSERT INTO tb_funcionalidade VALUES("29","Listar Visita","ListarVisita","A","S","7");

INSERT INTO tb_funcionalidade VALUES("30","Config Gestao","ConfigGestao","A","S","1");

INSERT INTO tb_funcionalidade VALUES("31","Gerar Entidades Gestao","GerarEntidadesGestao","A","S","1");

INSERT INTO tb_funcionalidade VALUES("32","Gerar Backup Gestao","GerarBackupGestao","A","S","1");

INSERT INTO tb_funcionalidade VALUES("33","Listar Acesso","ListarAcesso","A","S","3");

INSERT INTO tb_funcionalidade VALUES("34","Listar Plano","ListarPlano","A","S","8");

INSERT INTO tb_funcionalidade VALUES("35","Cadastro Plano","CadastroPlano","A","S","8");

INSERT INTO tb_funcionalidade VALUES("36","Listar Assinante","ListarAssinante","A","S","9");

INSERT INTO tb_funcionalidade VALUES("37","Cadastro Assinante","CadastroAssinante","A","S","9");

INSERT INTO tb_funcionalidade VALUES("38","Pre Projeto Gestao","PreProjetoGestao","A","S","1");

INSERT INTO tb_funcionalidade VALUES("39","Acompanhar Projeto Gestao","AcompanharProjetoGestao","A","N","1");




DROP TABLE IF EXISTS tb_funcionamento;


CREATE TABLE `tb_funcionamento` (
  `co_funcionamento` int(11) NOT NULL AUTO_INCREMENT,
  `nu_dia_semana` int(1) DEFAULT NULL COMMENT '1 - Segunda / 2 - Terça / 3 - Terça / 4 - Quarta / 5 - Sexta / 6 - Sábado / 7 - Domingo / 8 - Feriado',
  `nu_hora_abertura` varchar(5) DEFAULT NULL,
  `nu_hora_fechamento` varchar(5) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_funcionamento`,`co_assinante`),
  KEY `fk_TB_FUNCIONAMENTO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=utf8;


INSERT INTO tb_funcionamento VALUES("238","1","08:00","18:00","14");

INSERT INTO tb_funcionamento VALUES("239","2","08:00","18:00","14");

INSERT INTO tb_funcionamento VALUES("240","3","08:00","18:00","14");

INSERT INTO tb_funcionamento VALUES("241","4","08:00","18:00","14");

INSERT INTO tb_funcionamento VALUES("242","5","08:00","18:00","14");

INSERT INTO tb_funcionamento VALUES("285","1","05:44","18:11","11");

INSERT INTO tb_funcionamento VALUES("286","2","05:44","18:11","11");

INSERT INTO tb_funcionamento VALUES("287","3","05:44","18:11","11");

INSERT INTO tb_funcionamento VALUES("288","4","04:44","18:11","11");

INSERT INTO tb_funcionamento VALUES("289","5","04:44","18:11","11");

INSERT INTO tb_funcionamento VALUES("290","6","03:44","19:11","11");

INSERT INTO tb_funcionamento VALUES("291","7","03:44","14:11","11");




DROP TABLE IF EXISTS tb_historia;


CREATE TABLE `tb_historia` (
  `co_historia` int(11) NOT NULL AUTO_INCREMENT,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `ds_observacao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_atualizado` datetime DEFAULT NULL,
  `st_situacao` varchar(1) DEFAULT 'N' COMMENT 'N - Não iniciada / I - Iniciada / C - Concluida',
  `nu_esforco` int(3) DEFAULT NULL COMMENT 'Esforço total da História',
  `nu_esforco_restante` int(3) DEFAULT NULL COMMENT 'Esforço restante para comclusão da História',
  `co_sessao` int(11) NOT NULL,
  PRIMARY KEY (`co_historia`,`co_sessao`),
  KEY `fk_TB_HISTORIA_TB_SESSAO1_idx` (`co_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;


INSERT INTO tb_historia VALUES("1","Manter Planos do sistema","<p>Manter planos do sistema da beleza, onde ter&aacute; que manter os desconto com per&iacute;odo para o plano</p>\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n<p>Modelagem: Plano e historico plano modulos</p>","2018-07-24 15:28:56","2018-07-31 15:05:13","C","13","0","1");

INSERT INTO tb_historia VALUES("2","Manter Assinante","<p>Manter assinante do sistema e com data de expira&ccedil;&atilde;o do sistema para o assinante, criar contato, criar pessoa, envio de email de confirma&ccedil;&atilde;o com senha gerada</p>\n\n\n\n\n\n\n\n<p>Criar o usu&aacute;rio quando criar o assinante, plano assinado</p>\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n<p>Modelagem: Assinante (Jun&ccedil;&atilde;o de pessoa, contato, usuario, data de expira&ccedil;&atilde;o, status)</p>","2018-07-25 11:24:23","2018-08-13 23:02:29","C","20","0","1");

INSERT INTO tb_historia VALUES("3","Manter Filial","<p>Manter filial</p>\n\n\n\n\n\n\n\n<p>Modelagem: Filial (FK assinante)</p>","2018-07-25 11:37:35","2018-08-13 12:05:19","C","13","0","1");

INSERT INTO tb_historia VALUES("4","Gestão de pagamentos dos assinantes","<p>Dar baixas no pagamento, e atualizar o prazo de expira&ccedil;&atilde;o do assiante e suas filias</p>\n\n\n\n\n\n\n\n<p>Criar hist&oacute;rico dos pagamentos</p>\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n<p>Modelagem: Pagamento assinante (Ligada com plano e assinante)</p>","2018-07-25 11:42:55","2018-08-13 17:32:58","C","20","0","1");

INSERT INTO tb_historia VALUES("6","Dados complementares básicos","<p>Manter dados: (Endere&ccedil;o, telefone, CNPJ, fantasia, raz&atilde;o e outros)</p>\n\n\n\n\n\n\n\n<p>Modelagem: Contato, endere&ccedil;o e empresa ou pessoa</p>","2018-07-25 12:11:05","2018-09-21 22:09:40","C","20","0","2");

INSERT INTO tb_historia VALUES("7","Manter Horário de funcionamento padrão","<p>Manter hor&aacute;rio de funcionamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Funcionamento (Assinante)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-25 12:19:44","2018-09-21 22:09:17","C","8","0","2");

INSERT INTO tb_historia VALUES("8","Manter Fotos do Estabelecimento","<p>Manter Fotos do Estabelecimento para o Site</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Imagem (FK Assinante)</p>","2018-07-25 12:21:30","2018-09-21 22:08:49","C","8","0","2");

INSERT INTO tb_historia VALUES("9","Manter Feriados","<p>Manter Feriados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Tabela base Feriados nacionais, Feriados (FK assinante, com hor&aacute;rio de funcionamento)</p>","2018-07-25 12:27:26","2018-09-24 20:34:02","C","5","0","4");

INSERT INTO tb_historia VALUES("10","Manter Dias Especiais","<p>Manter Dias Especiais n&atilde;o recorrente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: dias especiais (FK assinante, com hor&aacute;rio de funcionamento)</p>","2018-07-25 12:28:51","2018-09-24 20:33:36","C","13","0","4");

INSERT INTO tb_historia VALUES("11","Formas de pagamento","<p>Forma de pagamento aceitas</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>modelagem: Configuracao (FK assinante),&nbsp; Tabela base Formas de pagamento, Tabela base bandeira cartao</p>","2018-07-25 14:38:19","2018-10-19 11:32:01","C","8","0","5");

INSERT INTO tb_historia VALUES("12","Configuração do cliente","<p>Cliente Marcar Servi&ccedil;o S / N, quantidade de aus&ecirc;ncia para que o cliente n&atilde;o marque mais servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Configura&ccedil;&atilde;o assinante (FK Assinante)</p>","2018-07-25 14:43:02","2018-11-14 16:07:41","C","5","0","5");

INSERT INTO tb_historia VALUES("13","Configuração de agendamento","<p>Confirma&ccedil;&atilde;o do agendamento e Regras de agendamento, agendamento recorrente, Horas de antecedencia do agendamento, Agendamento online, intervalo de agendamento dos clientes</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Configura&ccedil;&atilde;o assinante (FK Assinante)</p>","2018-07-25 14:54:36","2018-11-19 17:37:56","C","8","0","5");

INSERT INTO tb_historia VALUES("14","Manter Motivo desconto","<p>Manter Motivo desconto</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Motivo desconto (FK Assinante)</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-25 15:13:38","2018-11-26 17:29:23","C","5","0","8");

INSERT INTO tb_historia VALUES("15","Tabela base Motivo Desconto","<p>Modelagem: Tabela base Motivo Desconto</p>","2018-07-25 15:15:19","2018-11-23 17:55:10","C","1","0","8");

INSERT INTO tb_historia VALUES("16","Manter profissional","<p>Manter profissional</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Profissional (FK Assinante, pessoa, usuario, endere&ccedil;o, dados banc&aacute;rios, configura&ccedil;&atilde;o, jornada de trabalho e contato)</p>","2018-07-25 15:56:07","2018-12-20 13:39:20","C","40","0","9");

INSERT INTO tb_historia VALUES("17","Manter ausência","<p>Manter aus&ecirc;ncia</p>\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n<p>Modelagem: Aus&ecirc;ncia Profissional (FK Profissional)</p>","2018-07-25 15:59:43","2019-01-25 14:03:01","C","8","0","9");

INSERT INTO tb_historia VALUES("18","Manter Bloqueio por profissional","<p>Bloqueio de hor&aacute;rio para o profissional</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Bloqueio hor&aacute;rio (FK profissional, motivo)</p>","2018-07-25 16:12:20","2018-07-25 16:12:20","N","5","5","10");

INSERT INTO tb_historia VALUES("19","Manter Cliente","<p>Manter Cliente, Clientes recebem SMS com lembrete do hor&aacute;rio agendado, Integra&ccedil;&atilde;o com WhatsApp,</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Cliente (FK Assinante, pessoa, contato, endere&ccedil;o, foto)</p>","2018-07-25 16:16:48","2018-07-25 16:17:12","N","13","13","11");

INSERT INTO tb_historia VALUES("20","Manter Categorias do Serviço","<p>Manter Categorias do Servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Cat. servico (FK Assinante)</p>","2018-07-25 16:19:34","2018-07-25 16:19:34","N","3","3","12");

INSERT INTO tb_historia VALUES("21","Tabela base Categorias serviços","<p>Tabela base Categorias servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Tabela base Categorias servi&ccedil;os</p>","2018-07-25 16:21:25","2018-07-25 16:21:25","N","5","5","12");

INSERT INTO tb_historia VALUES("22","Edição rápida de serviços","<p>Edi&ccedil;&atilde;o r&aacute;pida de servi&ccedil;os todos eles (Comiss&atilde;o, categoria, pre&ccedil;o)</p>","2018-07-25 16:23:07","2018-07-25 16:23:07","N","13","13","12");

INSERT INTO tb_historia VALUES("23","Profissionais que atende o serviço","<p>Profissionais que atende o servi&ccedil;o, comiss&atilde;o padr&atilde;o pra todos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Tab tern&aacute;ria Profissional e Servi&ccedil;o (Comiss&atilde;o individual)</p>","2018-07-25 16:26:14","2018-07-25 16:26:14","N","5","5","12");

INSERT INTO tb_historia VALUES("24","Manter Pacote","<p>Manter Pacote</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Pacote (FK Assinante), Pacote Servi&ccedil;os (FK Pacote e servi&ccedil;o)</p>","2018-07-25 16:30:25","2018-07-25 16:30:25","N","13","13","13");

INSERT INTO tb_historia VALUES("25","Manter promoção","<p>Manter promo&ccedil;&atilde;o dias e hor&aacute;rios a ser ultilizado per&iacute;odo v&aacute;lido</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Promocao (FK Servi&ccedil;o)</p>","2018-07-25 17:12:39","2018-07-25 17:12:39","N","5","5","14");

INSERT INTO tb_historia VALUES("26","Manter cortesia","<p>Manter cortesia, validade da cortesia, per&iacute;odo de uso dia e hora</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem (FK cliente, servico)</p>","2018-07-25 17:14:29","2018-07-25 17:14:29","N","3","3","15");

INSERT INTO tb_historia VALUES("27","Manter Vale presente","<p>Manter Vale presente, gerar c&oacute;digo pra passar para o cliente que ira usar, validade e periodo de uso</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Vale presente e valepresente servicos (FK Servicos e vale presente)</p>","2018-07-25 17:23:18","2018-07-25 17:23:18","N","8","8","16");

INSERT INTO tb_historia VALUES("28","Cadastrar Agendamento","<p>Cadastrar Agendamento (Op&ccedil;&atilde;o da recorr&ecirc;ncia)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: (FK cliente, Servi&ccedil;o, Profissional)</p>","2018-07-25 17:32:10","2018-07-25 17:56:16","N","13","13","17");

INSERT INTO tb_historia VALUES("29","Agenda","<p>Mostrar a agenda (Filtros por profissional)</p>","2018-07-25 17:44:09","2018-07-25 17:44:09","N","40","40","17");

INSERT INTO tb_historia VALUES("30","Agenda CSS (Responsivo)","<p>Agenda CSS (Responsivo)</p>","2018-07-25 17:44:46","2018-07-25 17:44:46","N","40","40","17");

INSERT INTO tb_historia VALUES("31","Consulta agendamentos","<p>Pesquisa de agendamento &nbsp;por per&iacute;odo, status, profissional, servi&ccedil;o</p>","2018-07-25 17:49:26","2018-07-25 17:49:26","N","13","13","17");

INSERT INTO tb_historia VALUES("32","Alterar Status do agendamento","<p>Alterar Status do agendamento</p>","2018-07-25 17:52:20","2018-07-25 17:52:20","N","5","5","17");

INSERT INTO tb_historia VALUES("33","Acrescentar serviço","<p>Acrescentar servi&ccedil;o (Duplicar agendamento com a mudan&ccedil;a de servi&ccedil;o e profissional se for preciso)</p>","2018-07-25 17:55:21","2018-07-25 17:55:21","N","8","8","17");

INSERT INTO tb_historia VALUES("34","Gerar Menu do Agendamento","<p>Gerar Menu do Agendamento para a edi&ccedil;&atilde;o do mesmo</p>","2018-07-25 17:57:19","2018-07-25 17:57:19","N","8","8","17");

INSERT INTO tb_historia VALUES("35","Exclusão do agendamento","<p>Exclus&atilde;o do agendamento</p>","2018-07-25 17:57:52","2018-07-25 17:57:52","N","3","3","17");

INSERT INTO tb_historia VALUES("36","Editar o agendamento","<p>Editar o agendamento</p>","2018-07-25 17:58:43","2018-07-25 17:59:03","N","8","8","17");

INSERT INTO tb_historia VALUES("37","Fechamento de conta no agendamento","<p>Fechamento de conta no agendamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Transformar troco em cr&eacute;dito</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Pagamento (FK agendamento, FK Caixa)</p>","2018-07-25 18:12:12","2018-07-26 18:41:34","N","20","20","18");

INSERT INTO tb_historia VALUES("38","Manter Fotos agendamento","<p>Manter Fotos agendamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Agendamento Imagem (FK imagem, FK agendamento)</p>","2018-07-25 18:13:09","2018-07-25 18:13:09","N","8","8","17");

INSERT INTO tb_historia VALUES("39","Abertura de caixa","<p>Abertura de caixa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Caixa (FK Assinante)</p>","2018-07-25 18:16:22","2018-07-25 18:16:22","N","8","8","18");

INSERT INTO tb_historia VALUES("40","Retirada / Sangria","<p>Retirada / Sangria (Normal e recorrente)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Sangria caixa (FK Caixa)</p>","2018-07-25 18:24:58","2018-07-25 18:24:58","N","8","8","18");

INSERT INTO tb_historia VALUES("41","Recebimentos","<p>Recebimentos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Recebimento caixa (FK Caixa)</p>","2018-07-25 18:25:44","2018-07-25 18:25:44","N","8","8","18");

INSERT INTO tb_historia VALUES("42","Gerar cupom não fiscal","<p>Gerar cupom n&atilde;o fiscal no fechamento de conta</p>","2018-07-25 18:27:03","2018-07-25 18:27:03","N","13","13","18");

INSERT INTO tb_historia VALUES("43","Valor pago por serviço","<p>Determinar porcentagem ou valor para cada servi&ccedil;o.</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Depend&ecirc;ncia: <a href=\"http://localhost/PreProjeto/admin/Historia/CadastroHistoria/MjA5YzYzNDY2NTYyNjBlN2E3OGVmZGI1MDcxNWM2NTkvTkRRPQ==\">http://localhost/PreProjeto/admin/Historia/CadastroHistoria/MjA5YzYzNDY2NTYyNjBlN2E3OGVmZGI1MDcxNWM2NTkvTkRRPQ==</a></p>","2018-07-25 18:40:36","2018-07-25 18:45:49","N","8","8","5");

INSERT INTO tb_historia VALUES("44","Manter Serviço","<p>Manter Servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Servi&ccedil;o (FK categoria Servi. Assinante)</p>","2018-07-25 18:42:35","2018-07-25 18:42:35","N","8","8","12");

INSERT INTO tb_historia VALUES("45","Tabela base serviços","<p>Tabela base servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Servi&ccedil;os Base</p>","2018-07-25 18:43:26","2018-07-25 18:43:26","N","20","20","12");

INSERT INTO tb_historia VALUES("46","Manter intervalos do profissional","<p>Manter intervalos do profissional</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Horario do Profissional de refei&ccedil;&otilde;es e intervalos.</p>","2018-07-25 18:55:44","2018-12-10 16:52:48","N","8","8","9");

INSERT INTO tb_historia VALUES("47","Histórico de comissões","<p>Hist&oacute;rico de comiss&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pendencia: Manter agendamento</p>","2018-07-25 19:11:25","2018-07-25 19:11:54","N","8","8","9");

INSERT INTO tb_historia VALUES("48","Histórico de serviços","<p>Hist&oacute;rico de servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>pendencia: manter agendamento</p>","2018-07-25 19:17:02","2018-07-25 19:17:02","N","8","8","9");

INSERT INTO tb_historia VALUES("49","Histórico de agendamentos","<p>Hist&oacute;rico de agendamentos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:17:37","2018-07-25 19:17:37","N","8","8","9");

INSERT INTO tb_historia VALUES("50","Histórico de vale/adiantamento","<p>Hist&oacute;rico de vale/adiantamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pendencia: Manter vale/adiantamento (Financeiro)</p>","2018-07-25 19:20:30","2018-07-25 19:20:30","N","8","8","9");

INSERT INTO tb_historia VALUES("51","Relatório de comissões","<p>Relat&oacute;rio de comiss&otilde;es (Filtros)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pendencia: Manter agendamento</p>","2018-07-25 19:21:41","2018-07-25 19:21:41","N","8","8","9");

INSERT INTO tb_historia VALUES("52","Acesso da agenda","<p>Acesso da agenda (Visualiza&ccedil;&atilde;o)</p>","2018-07-25 19:22:51","2018-07-25 19:22:51","N","5","5","9");

INSERT INTO tb_historia VALUES("53","Histórico de agendamentos","<p>Hist&oacute;rico de agendamentos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:24:05","2018-07-25 19:24:05","N","8","8","11");

INSERT INTO tb_historia VALUES("54","Histórico de serviços","<p>Hist&oacute;rico de servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:24:33","2018-07-25 19:24:33","N","8","8","11");

INSERT INTO tb_historia VALUES("55","Histórico de Pacotes","<p>Hist&oacute;rico de Pacotes</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:25:05","2018-07-25 19:25:05","N","8","8","11");

INSERT INTO tb_historia VALUES("56","Histórico de Débitos","<p>Hist&oacute;rico de D&eacute;bitos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:25:36","2018-07-25 19:25:36","N","8","8","11");

INSERT INTO tb_historia VALUES("57","Histórico de crédito","<p>Hist&oacute;rico de cr&eacute;dito</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:26:05","2018-07-25 19:26:05","N","8","8","11");

INSERT INTO tb_historia VALUES("58","Histórico de Vale presente","<p>Hist&oacute;rico de Vale presente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:26:52","2018-07-25 19:26:52","N","8","8","11");

INSERT INTO tb_historia VALUES("59","Histórico de Sms","<p>Hist&oacute;rico de Sms</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter Sms</p>","2018-07-25 19:27:25","2018-07-25 19:27:25","N","8","8","11");

INSERT INTO tb_historia VALUES("60","Histórico de E-mail","<p>Hist&oacute;rico de E-mail</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter E-mail</p>","2018-07-25 19:27:58","2018-07-25 19:27:58","N","8","8","11");

INSERT INTO tb_historia VALUES("61","Criar Histórias Módulos Principal e assinante","<p>Criar Hist&oacute;rias M&oacute;dulos Principal e assinante</p>","2018-07-26 11:46:54","2018-07-27 17:57:45","I","40","3","19");

INSERT INTO tb_historia VALUES("62","Página do Assinante","<p>P&aacute;gina do Assinante</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Promova seu sal&atilde;o no sistema da beleza com sua pr&oacute;pria p&aacute;gina customizada e com agendamento on-line</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Utilize sua p&aacute;gina exclusiva para divulgar fotos, servi&ccedil;os e informa&ccedil;&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Ofere&ccedil;a promo&ccedil;&otilde;es e pacotes exclusivos para seus clientes</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>As promo&ccedil;&otilde;es s&atilde;o exibidas e podem ser agendadas com exclusividade na sua p&aacute;gina no Site da empresa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Intera&ccedil;&atilde;o do cliente com o WhatsApp da Empresa</p>","2018-07-26 17:36:50","2018-07-26 18:45:07","N","40","40","20");

INSERT INTO tb_historia VALUES("63","Página de captura de cliente","<p>P&aacute;gina de captura de cliente</p>","2018-07-26 17:38:30","2018-07-26 17:38:30","N","40","40","21");

INSERT INTO tb_historia VALUES("64","Vídeos para a Página de captura de cliente","<p>V&iacute;deos para a P&aacute;gina de captura de cliente</p>","2018-07-26 17:39:10","2018-07-26 17:39:10","N","20","20","21");

INSERT INTO tb_historia VALUES("65","Site do Sistema da beleza","<p>Site do Sistema da beleza detalhando tudo sobre para apresenta&ccedil;&atilde;o ao assinante</p>","2018-07-26 17:40:01","2018-07-26 17:40:01","N","40","40","21");

INSERT INTO tb_historia VALUES("66","Vídeos para o Site do Sistema da beleza","<p>V&iacute;deos para o Site do Sistema da beleza</p>","2018-07-26 17:40:37","2018-07-26 17:40:37","N","20","20","21");

INSERT INTO tb_historia VALUES("67","Material do Pré Lançamento","<p>Produ&ccedil;&atilde;o e Disponibiliza&ccedil;&atilde;o do material para lista de lead</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Dura&ccedil;&atilde;o de 7 a 10 dias antes do Lan&ccedil;amento de 3 a 4 v&iacute;deos</p>","2018-07-26 17:45:02","2018-07-26 17:58:04","N","40","40","22");

INSERT INTO tb_historia VALUES("68","Criação da Lista de Lead","<p>Cria&ccedil;&atilde;o da Lista de Lead ja trabalhadas nas redes sociais e mais..</p>","2018-07-26 17:46:23","2018-07-26 17:46:23","N","40","40","24");

INSERT INTO tb_historia VALUES("69","Página de captura de lead","<p>P&aacute;gina de captura de lead</p>","2018-07-26 17:47:24","2018-07-26 17:47:24","N","20","20","21");

INSERT INTO tb_historia VALUES("70","Criar conteúdos e Entregas","<p>Criar conte&uacute;dos para entrega e ir formulando a lista de lead</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Inicio da divulga&ccedil;&atilde;o para o lan&ccedil;amento.</p>","2018-07-26 17:55:15","2018-07-26 17:55:15","N","40","40","24");

INSERT INTO tb_historia VALUES("71","Direcionar para o lançamento","<p>&nbsp;Apos Lan&ccedil;amento Direcionar para o lan&ccedil;amento o tr&aacute;fego do PL</p>","2018-07-26 18:00:07","2018-07-26 18:00:07","N","13","13","22");

INSERT INTO tb_historia VALUES("72","Lançamento das Vendas","<p>de 1 a 7 dias de vendas com p&aacute;gina aquecida</p>","2018-07-26 18:01:36","2018-07-26 18:01:36","N","40","40","23");

INSERT INTO tb_historia VALUES("73","Vídeos para lançamento de vendas","<p>produ&ccedil;&atilde;o de V&iacute;deos para lan&ccedil;amento de vendas</p>","2018-07-26 18:02:18","2018-07-26 18:02:18","N","20","20","23");

INSERT INTO tb_historia VALUES("74","Criar Histórias Módulos Lançamento do Sistema Da Beleaza e Site","<p>Criar Hist&oacute;rias M&oacute;dulos Lan&ccedil;amento do Sistema Da Beleaza e Site</p>","2018-07-26 18:13:56","2018-07-26 18:15:35","I","13","3","25");

INSERT INTO tb_historia VALUES("75","Iniciar o sistema com as configurações básicas","<p>Iniciar o sistema com as configura&ccedil;&otilde;es b&aacute;sicas para depois iniciar o painel</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Cadastro de proffisional, cliente, servi&ccedil;os e configura&ccedil;&otilde;es padr&otilde;es</p>","2018-07-26 18:40:29","2018-07-26 18:40:29","N","30","30","26");

INSERT INTO tb_historia VALUES("76","Regras de E-mail","<p>Regras de E-mail</p>","2018-07-26 18:49:20","2018-07-27 19:00:55","N","5","5","27");

INSERT INTO tb_historia VALUES("79","Criar Templates de Envio","<p>Criar Templates de Envio de email</p>","2018-07-26 18:51:32","2018-07-27 19:01:27","N","20","20","27");

INSERT INTO tb_historia VALUES("80","Regras de SMS","<p>Regras de envio de SMS</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Aprendizagem de envio de SMS</p>","2018-07-26 18:53:05","2018-07-27 19:02:44","N","20","20","28");

INSERT INTO tb_historia VALUES("83","Criar Templates de Envio","<p>Criar Templates de Envio de SMS</p>","2018-07-26 18:55:02","2018-07-27 19:03:11","N","5","5","28");

INSERT INTO tb_historia VALUES("84","Manter Perfil","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>","2018-07-26 22:16:38","2018-07-26 22:16:38","N","30","30","29");

INSERT INTO tb_historia VALUES("85","Manter Entrada e saída (Normal e recorrente)","<p>Manter Entrada e sa&iacute;da (Normal e recorrente)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Entrada saida (FK Assinante)</p>","2018-07-26 22:19:03","2018-07-26 22:19:03","N","20","20","30");

INSERT INTO tb_historia VALUES("86","Manter categorias de entrada e saída","<p>Manter categorias de entrada e sa&iacute;da</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: categorias entrada e sa&iacute;da (FK Assinante)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Tabela Base categorias entrada e sa&iacute;da</p>","2018-07-26 22:21:00","2018-07-26 22:21:00","N","20","20","30");

INSERT INTO tb_historia VALUES("87","Manter Comissões","<p>Manter Comiss&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: comissao (FK Agendamento)</p>","2018-07-26 22:23:39","2018-07-26 22:23:39","N","20","20","30");

INSERT INTO tb_historia VALUES("88","Manter vale e adiantamento","<p>Manter vale e adiantamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: vale e adiantamento (FK Profissional)</p>","2018-07-26 22:25:10","2018-07-26 22:25:10","N","20","20","30");

INSERT INTO tb_historia VALUES("89","Manter Suporte","<p>Manter Suporte, responder suporte, apresentar resposta</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: suporte (FK Assinante, Categoria Suporte)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Tabela base Categoria Suporte</p>","2018-07-26 22:27:22","2018-07-26 22:28:33","N","40","40","31");

INSERT INTO tb_historia VALUES("90","Percentual de desconto por Perfil","<p>Percentual de desconto por Perfil no fechamento de conta</p>","2018-07-27 15:02:27","2018-07-27 15:02:27","N","8","8","29");

INSERT INTO tb_historia VALUES("91","Gerar Gráficos em relatórios","<p>Gerar Gr&aacute;ficos em relat&oacute;rios</p>","2018-07-27 17:19:07","2018-07-27 17:19:07","N","40","40","32");

INSERT INTO tb_historia VALUES("92","Profissional mostra os serviços realizados","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra os servi&ccedil;os realizados no per&iacute;odo com um Profissional ou auxiliar</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:37:41","2018-07-27 17:45:36","N","13","13","32");

INSERT INTO tb_historia VALUES("93","Profissional mostra todas as reservas","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todas as reservas de um profissional no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:38:44","2018-07-27 17:46:02","N","13","13","32");

INSERT INTO tb_historia VALUES("94","Profissional mostra todos agendamentos atendidos","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos agendamentos atendidos de um profissional no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:40:17","2018-07-27 17:46:32","N","13","13","32");

INSERT INTO tb_historia VALUES("95","Profissional o total de comissões","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rio Mostra o total de comiss&otilde;es para todos os profissionais do per&iacute;odo, Comiss&atilde;o por profissional (Principal ou auxiliar)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:41:16","2018-07-27 17:47:48","N","30","30","32");

INSERT INTO tb_historia VALUES("96","Cliente por profissonal atendido","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Selecione o profissional e o per&iacute;odo para ver os clientes atendidos por ele</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:43:01","2018-07-27 17:47:20","N","13","13","32");

INSERT INTO tb_historia VALUES("97","Cliente Informações básicas","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios com informa&ccedil;&otilde;es como aniversariantes do m&ecirc;s, lista de contatos, atrav&eacute;s de que meio</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:49:20","2018-07-27 17:49:20","N","13","13","32");

INSERT INTO tb_historia VALUES("98","Cliente todos agendamentos","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Mostrar todos agendamentos por cliente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:50:16","2018-07-27 17:50:16","N","13","13","32");

INSERT INTO tb_historia VALUES("99","Cliente serviços consumido","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Mostrar servi&ccedil;os consumido por cliente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:51:05","2018-07-27 17:51:05","N","13","13","32");

INSERT INTO tb_historia VALUES("100","Clientes cadastrados no periodo","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra quais clientes foram cadastrados no per&iacute;odo selecionado</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:51:49","2018-07-27 17:51:49","N","13","13","32");

INSERT INTO tb_historia VALUES("101","Financeiro débitos e créditos dos clientes","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra quais clientes possuem d&eacute;bitos e cr&eacute;ditos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:53:27","2018-07-27 17:53:27","N","13","13","32");

INSERT INTO tb_historia VALUES("102","Financeiro entrada e saída","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Financeiro com entradas e sa&iacute;das por per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:54:38","2018-07-27 18:07:01","N","20","20","32");

INSERT INTO tb_historia VALUES("103","Financeiro comissões pagas","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todas as comiss&otilde;es pagas em determinado per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:55:41","2018-07-27 17:55:41","N","20","20","32");

INSERT INTO tb_historia VALUES("104","Financeiro faturamento por forma de pagamento","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios&nbsp;Selecione um per&iacute;odo de datas para gerar o relat&oacute;rio de faturamento por forma de pagamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:06:37","2018-07-27 18:06:37","N","20","20","32");

INSERT INTO tb_historia VALUES("105","Financeiro faturamento diário","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Selecione um Per&iacute;odo para gerar o relat&oacute;rio de faturamento do sal&atilde;o por dia</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:07:54","2018-07-27 18:07:54","N","20","20","32");

INSERT INTO tb_historia VALUES("106","Financeiro taxas dos cartões pagas","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra quanto voc&ecirc; ter&aacute; de pagar de taxas de cart&atilde;o de cr&eacute;dito e d&eacute;bito no per&iacute;odo considerando as taxas inseridas na aba configura&ccedil;&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:09:40","2018-07-27 18:09:40","N","30","30","32");

INSERT INTO tb_historia VALUES("107","Financeiro taxas dos cartões pagas por bandeira","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra o total de faturamento por bandeira e total de taxa descontado no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:10:55","2018-07-27 18:10:55","N","20","20","32");

INSERT INTO tb_historia VALUES("108","Caixa Fechados e abertos por periodo","<p>Caixa Gerar Gr&aacute;ficos e Relat&oacute;rios&nbsp;Selecione o per&iacute;odo e visualize todos os caixas fechados e os seus respectivos hor&aacute;rios de abertura e fechamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 18:12:06","2018-07-27 18:12:06","N","13","13","32");

INSERT INTO tb_historia VALUES("109","Caixa entrada de pagamento","<p>Caixa Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todas as entradas de pagamento no per&iacute;odo por caixa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 18:12:44","2018-07-27 18:12:44","N","13","13","32");

INSERT INTO tb_historia VALUES("110","Caixa sangrias","<p>Caixa Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra as sangrias de caixa no per&iacute;odo por caixa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 18:13:22","2018-07-27 18:13:22","N","13","13","32");

INSERT INTO tb_historia VALUES("111","Vale Presente vendidos","<p>Vale Presente Gerar Gr&aacute;ficos e Relat&oacute;rios&nbsp;Mostra todos os vales presentes que foram vendidos (Geral) Filtros: usados, ativos e vencidos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:14:26","2018-07-27 18:19:26","N","13","13","32");

INSERT INTO tb_historia VALUES("112","Cortesia Dadas","<p>Cortesia Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos as cortesias dadas (Geral) Filtros: usados, ativos e vencidos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:15:07","2018-07-27 18:19:02","N","13","13","32");

INSERT INTO tb_historia VALUES("113","Promoções Vendidas","<p>Promo&ccedil;&otilde;es Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos as promo&ccedil;&otilde;es vendidas (Geral) Filtros: usados, ativos e vencidos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:20:43","2018-07-27 18:20:43","N","13","13","32");

INSERT INTO tb_historia VALUES("114","Serviço profissionais que realizou","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Profissionais por servi&ccedil;os realizados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:22:34","2018-07-27 18:24:36","N","13","13","32");

INSERT INTO tb_historia VALUES("115","Serviço Clientes atendidos","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Selecione o servi&ccedil;o e per&iacute;odo e veja os clientes atendidos por aquele servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:23:56","2018-07-27 18:23:56","N","13","13","32");

INSERT INTO tb_historia VALUES("116","Serviços utilizados por categoria","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Servi&ccedil;os mais utilizados por categorias</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:25:16","2018-07-27 18:25:16","N","13","13","32");

INSERT INTO tb_historia VALUES("117","Pacote Vendidos","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todosos pacotes vendidas (Geral) Filtros: usados, ativos e vencidos&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:49:49","2018-07-27 18:49:49","N","13","13","32");

INSERT INTO tb_historia VALUES("118","Pacote status por serviços","<p>Pacotes Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos os clientes que tem servi&ccedil;os ativos realizados e vencidos e seu servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:52:04","2018-07-27 18:56:13","N","13","13","32");

INSERT INTO tb_historia VALUES("119","Pacote status por serviços","<p>Pacotes Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos os servi&ccedil;os do pacote &nbsp;ja realizados e ativos e vencidos no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:53:06","2018-07-27 18:54:22","N","13","13","32");

INSERT INTO tb_historia VALUES("120","Sms Histórico de envio","<p>Sms Gerar Gr&aacute;ficos e Relat&oacute;rios Sms disparados para lembrete</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 19:08:38","2018-07-27 19:08:38","N","13","13","32");

INSERT INTO tb_historia VALUES("121","E-mail Historico de envio","<p>E-mail Gerar Gr&aacute;ficos e Relat&oacute;rios E-mail disparados para lembrete</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 19:09:29","2018-07-27 19:09:29","N","13","13","32");

INSERT INTO tb_historia VALUES("122","Agendamento detalhes","<p>Agendamentos Gerar Gr&aacute;ficos e Relat&oacute;rios de gendamentos por status do agendamento cliente profissional e periodo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 19:12:19","2018-07-27 19:12:19","N","20","20","32");

INSERT INTO tb_historia VALUES("123","Configuração inicial do projeto","<p>Configura&ccedil;&atilde;o inicial do projeto</p>","2018-07-30 10:32:17","2018-07-30 11:37:21","C","8","0","1");

INSERT INTO tb_historia VALUES("124","Mudar loguin","<p>Mudar loguin para logar com email tb, recuperar senha e notificar de mudar senha.</p>","2018-07-30 11:11:11","2018-08-17 16:12:59","C","20","0","1");

INSERT INTO tb_historia VALUES("125","Criar mensagem de expiração e bloqueio do sistema","<p>Criar mensagem de expira&ccedil;&atilde;o e bloqueio do sistema</p>","2018-08-13 17:33:25","2018-08-17 18:09:18","C","13","0","1");

INSERT INTO tb_historia VALUES("126","Cadastro pelo site para o assinante","<p>verificar o cadastro pelo site para manter um plano mesmo que que por experi&ecirc;ncia</p>","2018-08-13 17:56:16","2018-08-13 17:56:39","N","8","8","21");

INSERT INTO tb_historia VALUES("127","Gestão de notificações","<p>Gest&atilde;o de notifica&ccedil;&otilde;es com as mensagens geradas do sistema de sucesso erro e avisos</p>","2018-08-15 11:16:03","2018-08-28 11:25:00","C","20","0","2");

INSERT INTO tb_historia VALUES("130","Manter Facilidades e beneficios","<p>Manter Facilidades e beneficios</p>","2018-08-30 10:57:06","2018-09-21 22:08:20","C","8","0","2");

INSERT INTO tb_historia VALUES("131","Taxas dos cartões","<p>Taxas cobradas dos cart&otilde;es de d&eacute;bito e cr&eacute;dito e taxa de antecipa&ccedil;&atilde;o dos cart&otilde;es de cr&eacute;dito com periodo da taxa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>modelagem: Configuracao (FK assinante), Taxas cart&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-09-25 14:26:26","2018-10-26 20:28:56","C","20","0","5");

INSERT INTO tb_historia VALUES("132","Histórico da taxas","<p>hist&oacute;rico da taxas cobradas dos cart&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-09-25 14:27:18","2018-10-26 20:29:19","C","8","0","5");

INSERT INTO tb_historia VALUES("133","Configuração das comissões","<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas</p>","2018-09-25 14:31:36","2018-11-22 16:03:43","N","13","13","5");

INSERT INTO tb_historia VALUES("134","Configuração de Profissional","<p>Receber Email de resumo de faturamento di&aacute;rio, agenda futura (Configurar periodo), edi&ccedil;&atilde;o dos servi&ccedil;os prestados, edi&ccedil;&atilde;o dos atendimento futuros.</p>","2018-11-27 13:45:17","2018-11-27 13:45:17","N","8","8","5");

INSERT INTO tb_historia VALUES("140","Mudar Status","<p>Mudar Status Ativo e inativo do Profissional</p>","2018-12-20 13:42:59","2018-12-20 13:42:59","N","5","5","9");




DROP TABLE IF EXISTS tb_historico_historia;


CREATE TABLE `tb_historico_historia` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` int(2) DEFAULT NULL,
  `nu_esforco_restante` int(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`),
  KEY `fk_TB_HISTORICO_HISTORIA_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=541 DEFAULT CHARSET=utf8;


INSERT INTO tb_historico_historia VALUES("1","3","3","2018-07-24 15:28:56","1");

INSERT INTO tb_historico_historia VALUES("2","3","3","2018-07-24 15:28:56","1");

INSERT INTO tb_historico_historia VALUES("3","8","7","2018-07-24 16:58:01","1");

INSERT INTO tb_historico_historia VALUES("4","8","7","2018-07-24 16:58:01","1");

INSERT INTO tb_historico_historia VALUES("5","8","7","2018-07-24 17:03:25","1");

INSERT INTO tb_historico_historia VALUES("6","8","7","2018-07-24 17:03:25","1");

INSERT INTO tb_historico_historia VALUES("7","8","1","2018-07-24 17:03:43","1");

INSERT INTO tb_historico_historia VALUES("8","8","1","2018-07-24 17:03:43","1");

INSERT INTO tb_historico_historia VALUES("9","8","","2018-07-24 17:04:01","1");

INSERT INTO tb_historico_historia VALUES("10","8","","2018-07-24 17:04:01","1");

INSERT INTO tb_historico_historia VALUES("11","8","8","2018-07-24 17:04:16","1");

INSERT INTO tb_historico_historia VALUES("12","8","8","2018-07-24 17:04:16","1");

INSERT INTO tb_historico_historia VALUES("13","8","8","2018-07-24 17:05:48","1");

INSERT INTO tb_historico_historia VALUES("14","8","8","2018-07-24 17:05:48","1");

INSERT INTO tb_historico_historia VALUES("15","8","","2018-07-24 22:36:04","1");

INSERT INTO tb_historico_historia VALUES("16","8","","2018-07-24 22:36:04","1");

INSERT INTO tb_historico_historia VALUES("17","8","8","2018-07-24 22:36:59","1");

INSERT INTO tb_historico_historia VALUES("18","8","8","2018-07-24 22:36:59","1");

INSERT INTO tb_historico_historia VALUES("19","3","3","2018-07-25 11:03:37","1");

INSERT INTO tb_historico_historia VALUES("20","3","3","2018-07-25 11:03:37","1");

INSERT INTO tb_historico_historia VALUES("21","8","8","2018-07-25 11:05:18","1");

INSERT INTO tb_historico_historia VALUES("22","8","8","2018-07-25 11:05:18","1");

INSERT INTO tb_historico_historia VALUES("23","8","8","2018-07-25 11:06:56","1");

INSERT INTO tb_historico_historia VALUES("24","8","8","2018-07-25 11:06:56","1");

INSERT INTO tb_historico_historia VALUES("25","13","13","2018-07-25 11:09:26","1");

INSERT INTO tb_historico_historia VALUES("26","13","13","2018-07-25 11:09:26","1");

INSERT INTO tb_historico_historia VALUES("27","13","13","2018-07-25 11:24:23","2");

INSERT INTO tb_historico_historia VALUES("28","13","13","2018-07-25 11:24:23","2");

INSERT INTO tb_historico_historia VALUES("29","5","5","2018-07-25 11:37:35","3");

INSERT INTO tb_historico_historia VALUES("30","5","5","2018-07-25 11:37:35","3");

INSERT INTO tb_historico_historia VALUES("31","20","20","2018-07-25 11:42:55","4");

INSERT INTO tb_historico_historia VALUES("32","20","20","2018-07-25 11:42:55","4");

INSERT INTO tb_historico_historia VALUES("33","20","20","2018-07-25 11:43:19","4");

INSERT INTO tb_historico_historia VALUES("34","20","20","2018-07-25 11:43:19","4");

INSERT INTO tb_historico_historia VALUES("35","8","8","2018-07-25 12:11:05","6");

INSERT INTO tb_historico_historia VALUES("36","8","8","2018-07-25 12:11:05","6");

INSERT INTO tb_historico_historia VALUES("37","5","5","2018-07-25 12:19:44","7");

INSERT INTO tb_historico_historia VALUES("38","5","5","2018-07-25 12:19:44","7");

INSERT INTO tb_historico_historia VALUES("39","8","8","2018-07-25 12:21:30","8");

INSERT INTO tb_historico_historia VALUES("40","8","8","2018-07-25 12:21:30","8");

INSERT INTO tb_historico_historia VALUES("41","13","13","2018-07-25 12:27:26","9");

INSERT INTO tb_historico_historia VALUES("42","13","13","2018-07-25 12:27:26","9");

INSERT INTO tb_historico_historia VALUES("43","5","5","2018-07-25 12:28:51","10");

INSERT INTO tb_historico_historia VALUES("44","5","5","2018-07-25 12:28:51","10");

INSERT INTO tb_historico_historia VALUES("45","5","5","2018-07-25 12:29:10","10");

INSERT INTO tb_historico_historia VALUES("46","5","5","2018-07-25 12:29:10","10");

INSERT INTO tb_historico_historia VALUES("47","20","20","2018-07-25 14:38:19","11");

INSERT INTO tb_historico_historia VALUES("48","20","20","2018-07-25 14:38:19","11");

INSERT INTO tb_historico_historia VALUES("49","20","20","2018-07-25 14:39:47","11");

INSERT INTO tb_historico_historia VALUES("50","20","20","2018-07-25 14:39:47","11");

INSERT INTO tb_historico_historia VALUES("51","3","3","2018-07-25 14:43:03","12");

INSERT INTO tb_historico_historia VALUES("52","3","3","2018-07-25 14:43:03","12");

INSERT INTO tb_historico_historia VALUES("53","13","13","2018-07-25 14:54:36","13");

INSERT INTO tb_historico_historia VALUES("54","13","13","2018-07-25 14:54:36","13");

INSERT INTO tb_historico_historia VALUES("55","3","3","2018-07-25 15:13:38","14");

INSERT INTO tb_historico_historia VALUES("56","3","3","2018-07-25 15:13:38","14");

INSERT INTO tb_historico_historia VALUES("57","3","3","2018-07-25 15:15:19","15");

INSERT INTO tb_historico_historia VALUES("58","3","3","2018-07-25 15:15:19","15");

INSERT INTO tb_historico_historia VALUES("59","13","13","2018-07-25 15:56:08","16");

INSERT INTO tb_historico_historia VALUES("60","13","13","2018-07-25 15:56:08","16");

INSERT INTO tb_historico_historia VALUES("61","5","5","2018-07-25 15:59:43","17");

INSERT INTO tb_historico_historia VALUES("62","5","5","2018-07-25 15:59:43","17");

INSERT INTO tb_historico_historia VALUES("63","5","5","2018-07-25 16:12:20","18");

INSERT INTO tb_historico_historia VALUES("64","5","5","2018-07-25 16:12:20","18");

INSERT INTO tb_historico_historia VALUES("65","8","8","2018-07-25 16:16:48","19");

INSERT INTO tb_historico_historia VALUES("66","8","8","2018-07-25 16:16:48","19");

INSERT INTO tb_historico_historia VALUES("67","13","13","2018-07-25 16:17:12","19");

INSERT INTO tb_historico_historia VALUES("68","13","13","2018-07-25 16:17:12","19");

INSERT INTO tb_historico_historia VALUES("69","3","3","2018-07-25 16:19:34","20");

INSERT INTO tb_historico_historia VALUES("70","3","3","2018-07-25 16:19:34","20");

INSERT INTO tb_historico_historia VALUES("71","5","5","2018-07-25 16:21:25","21");

INSERT INTO tb_historico_historia VALUES("72","5","5","2018-07-25 16:21:25","21");

INSERT INTO tb_historico_historia VALUES("73","13","13","2018-07-25 16:23:07","22");

INSERT INTO tb_historico_historia VALUES("74","13","13","2018-07-25 16:23:07","22");

INSERT INTO tb_historico_historia VALUES("75","5","5","2018-07-25 16:26:14","23");

INSERT INTO tb_historico_historia VALUES("76","5","5","2018-07-25 16:26:14","23");

INSERT INTO tb_historico_historia VALUES("77","13","13","2018-07-25 16:30:26","24");

INSERT INTO tb_historico_historia VALUES("78","13","13","2018-07-25 16:30:26","24");

INSERT INTO tb_historico_historia VALUES("79","5","5","2018-07-25 17:12:39","25");

INSERT INTO tb_historico_historia VALUES("80","5","5","2018-07-25 17:12:39","25");

INSERT INTO tb_historico_historia VALUES("81","3","3","2018-07-25 17:14:29","26");

INSERT INTO tb_historico_historia VALUES("82","3","3","2018-07-25 17:14:29","26");

INSERT INTO tb_historico_historia VALUES("83","8","8","2018-07-25 17:23:18","27");

INSERT INTO tb_historico_historia VALUES("84","8","8","2018-07-25 17:23:18","27");

INSERT INTO tb_historico_historia VALUES("85","8","8","2018-07-25 17:32:10","28");

INSERT INTO tb_historico_historia VALUES("86","8","8","2018-07-25 17:32:10","28");

INSERT INTO tb_historico_historia VALUES("87","13","13","2018-07-25 17:32:34","28");

INSERT INTO tb_historico_historia VALUES("88","13","13","2018-07-25 17:32:34","28");

INSERT INTO tb_historico_historia VALUES("89","40","40","2018-07-25 17:44:09","29");

INSERT INTO tb_historico_historia VALUES("90","40","40","2018-07-25 17:44:09","29");

INSERT INTO tb_historico_historia VALUES("91","40","40","2018-07-25 17:44:46","30");

INSERT INTO tb_historico_historia VALUES("92","40","40","2018-07-25 17:44:46","30");

INSERT INTO tb_historico_historia VALUES("93","13","13","2018-07-25 17:49:26","31");

INSERT INTO tb_historico_historia VALUES("94","13","13","2018-07-25 17:49:26","31");

INSERT INTO tb_historico_historia VALUES("95","20","20","2018-07-25 17:50:48","28");

INSERT INTO tb_historico_historia VALUES("96","20","20","2018-07-25 17:50:48","28");

INSERT INTO tb_historico_historia VALUES("97","5","5","2018-07-25 17:52:20","32");

INSERT INTO tb_historico_historia VALUES("98","5","5","2018-07-25 17:52:20","32");

INSERT INTO tb_historico_historia VALUES("99","8","8","2018-07-25 17:55:21","33");

INSERT INTO tb_historico_historia VALUES("100","8","8","2018-07-25 17:55:21","33");

INSERT INTO tb_historico_historia VALUES("101","13","13","2018-07-25 17:56:16","28");

INSERT INTO tb_historico_historia VALUES("102","13","13","2018-07-25 17:56:16","28");

INSERT INTO tb_historico_historia VALUES("103","8","8","2018-07-25 17:57:19","34");

INSERT INTO tb_historico_historia VALUES("104","8","8","2018-07-25 17:57:19","34");

INSERT INTO tb_historico_historia VALUES("105","3","3","2018-07-25 17:57:52","35");

INSERT INTO tb_historico_historia VALUES("106","3","3","2018-07-25 17:57:52","35");

INSERT INTO tb_historico_historia VALUES("107","5","5","2018-07-25 17:58:43","36");

INSERT INTO tb_historico_historia VALUES("108","5","5","2018-07-25 17:58:43","36");

INSERT INTO tb_historico_historia VALUES("109","8","8","2018-07-25 17:59:03","36");

INSERT INTO tb_historico_historia VALUES("110","8","8","2018-07-25 17:59:03","36");

INSERT INTO tb_historico_historia VALUES("111","13","13","2018-07-25 18:12:12","37");

INSERT INTO tb_historico_historia VALUES("112","13","13","2018-07-25 18:12:12","37");

INSERT INTO tb_historico_historia VALUES("113","8","8","2018-07-25 18:13:09","38");

INSERT INTO tb_historico_historia VALUES("114","8","8","2018-07-25 18:13:09","38");

INSERT INTO tb_historico_historia VALUES("115","8","8","2018-07-25 18:16:22","39");

INSERT INTO tb_historico_historia VALUES("116","8","8","2018-07-25 18:16:22","39");

INSERT INTO tb_historico_historia VALUES("117","8","8","2018-07-25 18:24:58","40");

INSERT INTO tb_historico_historia VALUES("118","8","8","2018-07-25 18:24:58","40");

INSERT INTO tb_historico_historia VALUES("119","8","8","2018-07-25 18:25:44","41");

INSERT INTO tb_historico_historia VALUES("120","8","8","2018-07-25 18:25:44","41");

INSERT INTO tb_historico_historia VALUES("121","13","13","2018-07-25 18:27:03","42");

INSERT INTO tb_historico_historia VALUES("122","13","13","2018-07-25 18:27:03","42");

INSERT INTO tb_historico_historia VALUES("123","13","13","2018-07-25 18:29:25","37");

INSERT INTO tb_historico_historia VALUES("124","13","13","2018-07-25 18:29:25","37");

INSERT INTO tb_historico_historia VALUES("125","8","8","2018-07-25 18:40:36","43");

INSERT INTO tb_historico_historia VALUES("126","8","8","2018-07-25 18:40:36","43");

INSERT INTO tb_historico_historia VALUES("127","8","8","2018-07-25 18:42:35","44");

INSERT INTO tb_historico_historia VALUES("128","8","8","2018-07-25 18:42:35","44");

INSERT INTO tb_historico_historia VALUES("129","20","20","2018-07-25 18:43:26","45");

INSERT INTO tb_historico_historia VALUES("130","20","20","2018-07-25 18:43:26","45");

INSERT INTO tb_historico_historia VALUES("131","8","8","2018-07-25 18:44:48","43");

INSERT INTO tb_historico_historia VALUES("132","8","8","2018-07-25 18:44:48","43");

INSERT INTO tb_historico_historia VALUES("133","8","8","2018-07-25 18:45:49","43");

INSERT INTO tb_historico_historia VALUES("134","8","8","2018-07-25 18:45:49","43");

INSERT INTO tb_historico_historia VALUES("135","8","8","2018-07-25 18:55:44","46");

INSERT INTO tb_historico_historia VALUES("136","8","8","2018-07-25 18:55:44","46");

INSERT INTO tb_historico_historia VALUES("137","8","8","2018-07-25 19:11:25","47");

INSERT INTO tb_historico_historia VALUES("138","8","8","2018-07-25 19:11:25","47");

INSERT INTO tb_historico_historia VALUES("139","8","8","2018-07-25 19:11:54","47");

INSERT INTO tb_historico_historia VALUES("140","8","8","2018-07-25 19:11:54","47");

INSERT INTO tb_historico_historia VALUES("141","8","8","2018-07-25 19:17:02","48");

INSERT INTO tb_historico_historia VALUES("142","8","8","2018-07-25 19:17:02","48");

INSERT INTO tb_historico_historia VALUES("143","8","8","2018-07-25 19:17:37","49");

INSERT INTO tb_historico_historia VALUES("144","8","8","2018-07-25 19:17:37","49");

INSERT INTO tb_historico_historia VALUES("145","8","8","2018-07-25 19:20:30","50");

INSERT INTO tb_historico_historia VALUES("146","8","8","2018-07-25 19:20:30","50");

INSERT INTO tb_historico_historia VALUES("147","8","8","2018-07-25 19:21:41","51");

INSERT INTO tb_historico_historia VALUES("148","8","8","2018-07-25 19:21:41","51");

INSERT INTO tb_historico_historia VALUES("149","5","5","2018-07-25 19:22:51","52");

INSERT INTO tb_historico_historia VALUES("150","5","5","2018-07-25 19:22:51","52");

INSERT INTO tb_historico_historia VALUES("151","8","8","2018-07-25 19:24:05","53");

INSERT INTO tb_historico_historia VALUES("152","8","8","2018-07-25 19:24:05","53");

INSERT INTO tb_historico_historia VALUES("153","8","8","2018-07-25 19:24:33","54");

INSERT INTO tb_historico_historia VALUES("154","8","8","2018-07-25 19:24:33","54");

INSERT INTO tb_historico_historia VALUES("155","8","8","2018-07-25 19:25:05","55");

INSERT INTO tb_historico_historia VALUES("156","8","8","2018-07-25 19:25:05","55");

INSERT INTO tb_historico_historia VALUES("157","8","8","2018-07-25 19:25:36","56");

INSERT INTO tb_historico_historia VALUES("158","8","8","2018-07-25 19:25:36","56");

INSERT INTO tb_historico_historia VALUES("159","8","8","2018-07-25 19:26:05","57");

INSERT INTO tb_historico_historia VALUES("160","8","8","2018-07-25 19:26:05","57");

INSERT INTO tb_historico_historia VALUES("161","8","8","2018-07-25 19:26:53","58");

INSERT INTO tb_historico_historia VALUES("162","8","8","2018-07-25 19:26:53","58");

INSERT INTO tb_historico_historia VALUES("163","8","8","2018-07-25 19:27:25","59");

INSERT INTO tb_historico_historia VALUES("164","8","8","2018-07-25 19:27:25","59");

INSERT INTO tb_historico_historia VALUES("165","8","8","2018-07-25 19:27:58","60");

INSERT INTO tb_historico_historia VALUES("166","8","8","2018-07-25 19:27:58","60");

INSERT INTO tb_historico_historia VALUES("167","40","25","2018-07-26 11:46:54","61");

INSERT INTO tb_historico_historia VALUES("168","40","25","2018-07-26 11:46:54","61");

INSERT INTO tb_historico_historia VALUES("169","40","40","2018-07-26 17:36:50","62");

INSERT INTO tb_historico_historia VALUES("170","40","40","2018-07-26 17:36:50","62");

INSERT INTO tb_historico_historia VALUES("171","40","40","2018-07-26 17:38:31","63");

INSERT INTO tb_historico_historia VALUES("172","40","40","2018-07-26 17:38:31","63");

INSERT INTO tb_historico_historia VALUES("173","20","20","2018-07-26 17:39:10","64");

INSERT INTO tb_historico_historia VALUES("174","20","20","2018-07-26 17:39:10","64");

INSERT INTO tb_historico_historia VALUES("175","40","40","2018-07-26 17:40:01","65");

INSERT INTO tb_historico_historia VALUES("176","40","40","2018-07-26 17:40:01","65");

INSERT INTO tb_historico_historia VALUES("177","20","20","2018-07-26 17:40:37","66");

INSERT INTO tb_historico_historia VALUES("178","20","20","2018-07-26 17:40:37","66");

INSERT INTO tb_historico_historia VALUES("179","40","40","2018-07-26 17:45:02","67");

INSERT INTO tb_historico_historia VALUES("180","40","40","2018-07-26 17:45:02","67");

INSERT INTO tb_historico_historia VALUES("181","40","40","2018-07-26 17:45:23","67");

INSERT INTO tb_historico_historia VALUES("182","40","40","2018-07-26 17:45:23","67");

INSERT INTO tb_historico_historia VALUES("183","40","40","2018-07-26 17:46:23","68");

INSERT INTO tb_historico_historia VALUES("184","40","40","2018-07-26 17:46:23","68");

INSERT INTO tb_historico_historia VALUES("185","20","20","2018-07-26 17:47:24","69");

INSERT INTO tb_historico_historia VALUES("186","20","20","2018-07-26 17:47:24","69");

INSERT INTO tb_historico_historia VALUES("187","40","40","2018-07-26 17:55:15","70");

INSERT INTO tb_historico_historia VALUES("188","40","40","2018-07-26 17:55:15","70");

INSERT INTO tb_historico_historia VALUES("189","40","40","2018-07-26 17:58:04","67");

INSERT INTO tb_historico_historia VALUES("190","40","40","2018-07-26 17:58:04","67");

INSERT INTO tb_historico_historia VALUES("191","13","13","2018-07-26 18:00:07","71");

INSERT INTO tb_historico_historia VALUES("192","13","13","2018-07-26 18:00:07","71");

INSERT INTO tb_historico_historia VALUES("193","40","40","2018-07-26 18:01:36","72");

INSERT INTO tb_historico_historia VALUES("194","40","40","2018-07-26 18:01:36","72");

INSERT INTO tb_historico_historia VALUES("195","20","20","2018-07-26 18:02:18","73");

INSERT INTO tb_historico_historia VALUES("196","20","20","2018-07-26 18:02:18","73");

INSERT INTO tb_historico_historia VALUES("197","20","3","2018-07-26 18:13:56","74");

INSERT INTO tb_historico_historia VALUES("198","20","3","2018-07-26 18:13:56","74");

INSERT INTO tb_historico_historia VALUES("199","13","3","2018-07-26 18:15:35","74");

INSERT INTO tb_historico_historia VALUES("200","13","3","2018-07-26 18:15:35","74");

INSERT INTO tb_historico_historia VALUES("201","30","30","2018-07-26 18:40:29","75");

INSERT INTO tb_historico_historia VALUES("202","30","30","2018-07-26 18:40:29","75");

INSERT INTO tb_historico_historia VALUES("203","20","20","2018-07-26 18:41:34","37");

INSERT INTO tb_historico_historia VALUES("204","20","20","2018-07-26 18:41:34","37");

INSERT INTO tb_historico_historia VALUES("205","40","40","2018-07-26 18:45:07","62");

INSERT INTO tb_historico_historia VALUES("206","40","40","2018-07-26 18:45:07","62");

INSERT INTO tb_historico_historia VALUES("207","40","20","2018-07-26 18:47:00","61");

INSERT INTO tb_historico_historia VALUES("208","40","20","2018-07-26 18:47:00","61");

INSERT INTO tb_historico_historia VALUES("209","8","8","2018-07-26 18:49:20","76");

INSERT INTO tb_historico_historia VALUES("210","8","8","2018-07-26 18:49:20","76");

INSERT INTO tb_historico_historia VALUES("211","40","40","2018-07-26 18:51:32","79");

INSERT INTO tb_historico_historia VALUES("212","40","40","2018-07-26 18:51:32","79");

INSERT INTO tb_historico_historia VALUES("213","8","8","2018-07-26 18:53:05","80");

INSERT INTO tb_historico_historia VALUES("214","8","8","2018-07-26 18:53:05","80");

INSERT INTO tb_historico_historia VALUES("215","20","20","2018-07-26 18:55:02","83");

INSERT INTO tb_historico_historia VALUES("216","20","20","2018-07-26 18:55:02","83");

INSERT INTO tb_historico_historia VALUES("217","30","30","2018-07-26 22:16:38","84");

INSERT INTO tb_historico_historia VALUES("218","30","30","2018-07-26 22:16:38","84");

INSERT INTO tb_historico_historia VALUES("219","20","20","2018-07-26 22:19:03","85");

INSERT INTO tb_historico_historia VALUES("220","20","20","2018-07-26 22:19:03","85");

INSERT INTO tb_historico_historia VALUES("221","20","20","2018-07-26 22:21:00","86");

INSERT INTO tb_historico_historia VALUES("222","20","20","2018-07-26 22:21:00","86");

INSERT INTO tb_historico_historia VALUES("223","20","20","2018-07-26 22:23:39","87");

INSERT INTO tb_historico_historia VALUES("224","20","20","2018-07-26 22:23:39","87");

INSERT INTO tb_historico_historia VALUES("225","20","20","2018-07-26 22:25:10","88");

INSERT INTO tb_historico_historia VALUES("226","20","20","2018-07-26 22:25:10","88");

INSERT INTO tb_historico_historia VALUES("227","20","20","2018-07-26 22:27:22","89");

INSERT INTO tb_historico_historia VALUES("228","20","20","2018-07-26 22:27:22","89");

INSERT INTO tb_historico_historia VALUES("229","40","40","2018-07-26 22:28:33","89");

INSERT INTO tb_historico_historia VALUES("230","40","40","2018-07-26 22:28:33","89");

INSERT INTO tb_historico_historia VALUES("231","40","8","2018-07-27 14:57:21","61");

INSERT INTO tb_historico_historia VALUES("232","40","8","2018-07-27 14:57:21","61");

INSERT INTO tb_historico_historia VALUES("233","40","20","2018-07-27 14:59:44","61");

INSERT INTO tb_historico_historia VALUES("234","40","20","2018-07-27 14:59:44","61");

INSERT INTO tb_historico_historia VALUES("235","40","8","2018-07-27 15:00:17","61");

INSERT INTO tb_historico_historia VALUES("236","40","8","2018-07-27 15:00:17","61");

INSERT INTO tb_historico_historia VALUES("237","8","8","2018-07-27 15:02:27","90");

INSERT INTO tb_historico_historia VALUES("238","8","8","2018-07-27 15:02:27","90");

INSERT INTO tb_historico_historia VALUES("239","40","40","2018-07-27 17:19:07","91");

INSERT INTO tb_historico_historia VALUES("240","40","40","2018-07-27 17:19:07","91");

INSERT INTO tb_historico_historia VALUES("241","40","40","2018-07-27 17:22:59","11");

INSERT INTO tb_historico_historia VALUES("242","40","40","2018-07-27 17:22:59","11");

INSERT INTO tb_historico_historia VALUES("243","8","8","2018-07-27 17:37:41","92");

INSERT INTO tb_historico_historia VALUES("244","8","8","2018-07-27 17:37:41","92");

INSERT INTO tb_historico_historia VALUES("245","8","8","2018-07-27 17:38:44","93");

INSERT INTO tb_historico_historia VALUES("246","8","8","2018-07-27 17:38:44","93");

INSERT INTO tb_historico_historia VALUES("247","8","8","2018-07-27 17:39:05","92");

INSERT INTO tb_historico_historia VALUES("248","8","8","2018-07-27 17:39:05","92");

INSERT INTO tb_historico_historia VALUES("249","8","8","2018-07-27 17:40:17","94");

INSERT INTO tb_historico_historia VALUES("250","8","8","2018-07-27 17:40:17","94");

INSERT INTO tb_historico_historia VALUES("251","8","8","2018-07-27 17:41:17","95");

INSERT INTO tb_historico_historia VALUES("252","8","8","2018-07-27 17:41:17","95");

INSERT INTO tb_historico_historia VALUES("253","20","20","2018-07-27 17:41:42","95");

INSERT INTO tb_historico_historia VALUES("254","20","20","2018-07-27 17:41:42","95");

INSERT INTO tb_historico_historia VALUES("255","8","8","2018-07-27 17:43:01","96");

INSERT INTO tb_historico_historia VALUES("256","8","8","2018-07-27 17:43:01","96");

INSERT INTO tb_historico_historia VALUES("257","13","13","2018-07-27 17:45:36","92");

INSERT INTO tb_historico_historia VALUES("258","13","13","2018-07-27 17:45:36","92");

INSERT INTO tb_historico_historia VALUES("259","13","13","2018-07-27 17:46:02","93");

INSERT INTO tb_historico_historia VALUES("260","13","13","2018-07-27 17:46:02","93");

INSERT INTO tb_historico_historia VALUES("261","13","13","2018-07-27 17:46:32","94");

INSERT INTO tb_historico_historia VALUES("262","13","13","2018-07-27 17:46:32","94");

INSERT INTO tb_historico_historia VALUES("263","30","30","2018-07-27 17:46:55","95");

INSERT INTO tb_historico_historia VALUES("264","30","30","2018-07-27 17:46:55","95");

INSERT INTO tb_historico_historia VALUES("265","13","13","2018-07-27 17:47:20","96");

INSERT INTO tb_historico_historia VALUES("266","13","13","2018-07-27 17:47:20","96");

INSERT INTO tb_historico_historia VALUES("267","30","30","2018-07-27 17:47:48","95");

INSERT INTO tb_historico_historia VALUES("268","30","30","2018-07-27 17:47:48","95");

INSERT INTO tb_historico_historia VALUES("269","13","13","2018-07-27 17:49:20","97");

INSERT INTO tb_historico_historia VALUES("270","13","13","2018-07-27 17:49:20","97");

INSERT INTO tb_historico_historia VALUES("271","13","13","2018-07-27 17:50:16","98");

INSERT INTO tb_historico_historia VALUES("272","13","13","2018-07-27 17:50:16","98");

INSERT INTO tb_historico_historia VALUES("273","13","13","2018-07-27 17:51:05","99");

INSERT INTO tb_historico_historia VALUES("274","13","13","2018-07-27 17:51:05","99");

INSERT INTO tb_historico_historia VALUES("275","13","13","2018-07-27 17:51:49","100");

INSERT INTO tb_historico_historia VALUES("276","13","13","2018-07-27 17:51:49","100");

INSERT INTO tb_historico_historia VALUES("277","13","13","2018-07-27 17:53:27","101");

INSERT INTO tb_historico_historia VALUES("278","13","13","2018-07-27 17:53:27","101");

INSERT INTO tb_historico_historia VALUES("279","13","13","2018-07-27 17:54:38","102");

INSERT INTO tb_historico_historia VALUES("280","13","13","2018-07-27 17:54:38","102");

INSERT INTO tb_historico_historia VALUES("281","20","20","2018-07-27 17:55:41","103");

INSERT INTO tb_historico_historia VALUES("282","20","20","2018-07-27 17:55:41","103");

INSERT INTO tb_historico_historia VALUES("283","40","3","2018-07-27 17:57:45","61");

INSERT INTO tb_historico_historia VALUES("284","40","3","2018-07-27 17:57:45","61");

INSERT INTO tb_historico_historia VALUES("285","20","20","2018-07-27 18:06:37","104");

INSERT INTO tb_historico_historia VALUES("286","20","20","2018-07-27 18:06:37","104");

INSERT INTO tb_historico_historia VALUES("287","20","20","2018-07-27 18:07:01","102");

INSERT INTO tb_historico_historia VALUES("288","20","20","2018-07-27 18:07:01","102");

INSERT INTO tb_historico_historia VALUES("289","20","20","2018-07-27 18:07:54","105");

INSERT INTO tb_historico_historia VALUES("290","20","20","2018-07-27 18:07:54","105");

INSERT INTO tb_historico_historia VALUES("291","30","30","2018-07-27 18:09:40","106");

INSERT INTO tb_historico_historia VALUES("292","30","30","2018-07-27 18:09:40","106");

INSERT INTO tb_historico_historia VALUES("293","20","20","2018-07-27 18:10:55","107");

INSERT INTO tb_historico_historia VALUES("294","20","20","2018-07-27 18:10:55","107");

INSERT INTO tb_historico_historia VALUES("295","13","13","2018-07-27 18:12:06","108");

INSERT INTO tb_historico_historia VALUES("296","13","13","2018-07-27 18:12:06","108");

INSERT INTO tb_historico_historia VALUES("297","13","13","2018-07-27 18:12:44","109");

INSERT INTO tb_historico_historia VALUES("298","13","13","2018-07-27 18:12:44","109");

INSERT INTO tb_historico_historia VALUES("299","13","13","2018-07-27 18:13:22","110");

INSERT INTO tb_historico_historia VALUES("300","13","13","2018-07-27 18:13:22","110");

INSERT INTO tb_historico_historia VALUES("301","8","8","2018-07-27 18:14:26","111");

INSERT INTO tb_historico_historia VALUES("302","8","8","2018-07-27 18:14:26","111");

INSERT INTO tb_historico_historia VALUES("303","8","8","2018-07-27 18:15:07","112");

INSERT INTO tb_historico_historia VALUES("304","8","8","2018-07-27 18:15:07","112");

INSERT INTO tb_historico_historia VALUES("305","20","20","2018-07-27 18:17:28","111");

INSERT INTO tb_historico_historia VALUES("306","20","20","2018-07-27 18:17:28","111");

INSERT INTO tb_historico_historia VALUES("307","13","13","2018-07-27 18:19:02","112");

INSERT INTO tb_historico_historia VALUES("308","13","13","2018-07-27 18:19:02","112");

INSERT INTO tb_historico_historia VALUES("309","13","13","2018-07-27 18:19:26","111");

INSERT INTO tb_historico_historia VALUES("310","13","13","2018-07-27 18:19:26","111");

INSERT INTO tb_historico_historia VALUES("311","13","13","2018-07-27 18:20:43","113");

INSERT INTO tb_historico_historia VALUES("312","13","13","2018-07-27 18:20:43","113");

INSERT INTO tb_historico_historia VALUES("313","13","13","2018-07-27 18:22:34","114");

INSERT INTO tb_historico_historia VALUES("314","13","13","2018-07-27 18:22:34","114");

INSERT INTO tb_historico_historia VALUES("315","13","13","2018-07-27 18:23:56","115");

INSERT INTO tb_historico_historia VALUES("316","13","13","2018-07-27 18:23:56","115");

INSERT INTO tb_historico_historia VALUES("317","13","13","2018-07-27 18:24:36","114");

INSERT INTO tb_historico_historia VALUES("318","13","13","2018-07-27 18:24:36","114");

INSERT INTO tb_historico_historia VALUES("319","13","13","2018-07-27 18:25:16","116");

INSERT INTO tb_historico_historia VALUES("320","13","13","2018-07-27 18:25:16","116");

INSERT INTO tb_historico_historia VALUES("321","13","13","2018-07-27 18:49:49","117");

INSERT INTO tb_historico_historia VALUES("322","13","13","2018-07-27 18:49:49","117");

INSERT INTO tb_historico_historia VALUES("323","13","13","2018-07-27 18:52:04","118");

INSERT INTO tb_historico_historia VALUES("324","13","13","2018-07-27 18:52:04","118");

INSERT INTO tb_historico_historia VALUES("325","13","13","2018-07-27 18:53:06","119");

INSERT INTO tb_historico_historia VALUES("326","13","13","2018-07-27 18:53:06","119");

INSERT INTO tb_historico_historia VALUES("327","13","13","2018-07-27 18:54:22","119");

INSERT INTO tb_historico_historia VALUES("328","13","13","2018-07-27 18:54:22","119");

INSERT INTO tb_historico_historia VALUES("329","13","13","2018-07-27 18:56:13","118");

INSERT INTO tb_historico_historia VALUES("330","13","13","2018-07-27 18:56:13","118");

INSERT INTO tb_historico_historia VALUES("331","5","5","2018-07-27 19:00:55","76");

INSERT INTO tb_historico_historia VALUES("332","5","5","2018-07-27 19:00:55","76");

INSERT INTO tb_historico_historia VALUES("333","20","20","2018-07-27 19:01:27","79");

INSERT INTO tb_historico_historia VALUES("334","20","20","2018-07-27 19:01:27","79");

INSERT INTO tb_historico_historia VALUES("335","20","20","2018-07-27 19:02:44","80");

INSERT INTO tb_historico_historia VALUES("336","20","20","2018-07-27 19:02:44","80");

INSERT INTO tb_historico_historia VALUES("337","5","5","2018-07-27 19:03:12","83");

INSERT INTO tb_historico_historia VALUES("338","5","5","2018-07-27 19:03:12","83");

INSERT INTO tb_historico_historia VALUES("339","13","13","2018-07-27 19:08:38","120");

INSERT INTO tb_historico_historia VALUES("340","13","13","2018-07-27 19:08:38","120");

INSERT INTO tb_historico_historia VALUES("341","13","13","2018-07-27 19:09:29","121");

INSERT INTO tb_historico_historia VALUES("342","13","13","2018-07-27 19:09:29","121");

INSERT INTO tb_historico_historia VALUES("343","20","20","2018-07-27 19:12:19","122");

INSERT INTO tb_historico_historia VALUES("344","20","20","2018-07-27 19:12:19","122");

INSERT INTO tb_historico_historia VALUES("345","13","13","2018-07-30 10:32:17","123");

INSERT INTO tb_historico_historia VALUES("346","13","13","2018-07-30 10:32:17","123");

INSERT INTO tb_historico_historia VALUES("347","8","1","2018-07-30 11:10:26","123");

INSERT INTO tb_historico_historia VALUES("348","8","1","2018-07-30 11:10:26","123");

INSERT INTO tb_historico_historia VALUES("349","5","5","2018-07-30 11:11:11","124");

INSERT INTO tb_historico_historia VALUES("350","5","5","2018-07-30 11:11:11","124");

INSERT INTO tb_historico_historia VALUES("351","20","20","2018-07-30 11:30:50","124");

INSERT INTO tb_historico_historia VALUES("352","20","20","2018-07-30 11:30:50","124");

INSERT INTO tb_historico_historia VALUES("353","8","3","2018-07-30 11:31:12","123");

INSERT INTO tb_historico_historia VALUES("354","8","3","2018-07-30 11:31:12","123");

INSERT INTO tb_historico_historia VALUES("355","8","","2018-07-30 11:37:21","123");

INSERT INTO tb_historico_historia VALUES("356","8","","2018-07-30 11:37:21","123");

INSERT INTO tb_historico_historia VALUES("357","20","20","2018-07-30 12:29:08","1");

INSERT INTO tb_historico_historia VALUES("358","20","20","2018-07-30 12:29:08","1");

INSERT INTO tb_historico_historia VALUES("359","13","13","2018-07-30 12:29:34","1");

INSERT INTO tb_historico_historia VALUES("360","13","13","2018-07-30 12:29:34","1");

INSERT INTO tb_historico_historia VALUES("361","13","13","2018-07-30 12:32:42","1");

INSERT INTO tb_historico_historia VALUES("362","13","13","2018-07-30 12:32:42","1");

INSERT INTO tb_historico_historia VALUES("363","13","10","2018-07-30 12:43:28","1");

INSERT INTO tb_historico_historia VALUES("364","13","10","2018-07-30 12:43:28","1");

INSERT INTO tb_historico_historia VALUES("365","13","1","2018-07-31 12:10:59","1");

INSERT INTO tb_historico_historia VALUES("366","13","1","2018-07-31 12:10:59","1");

INSERT INTO tb_historico_historia VALUES("367","13","","2018-07-31 15:05:13","1");

INSERT INTO tb_historico_historia VALUES("368","13","","2018-07-31 15:05:13","1");

INSERT INTO tb_historico_historia VALUES("369","30","30","2018-07-31 15:26:40","2");

INSERT INTO tb_historico_historia VALUES("370","30","30","2018-07-31 15:26:40","2");

INSERT INTO tb_historico_historia VALUES("371","30","26","2018-07-31 15:27:03","2");

INSERT INTO tb_historico_historia VALUES("372","30","26","2018-07-31 15:27:03","2");

INSERT INTO tb_historico_historia VALUES("373","30","30","2018-07-31 15:30:22","124");

INSERT INTO tb_historico_historia VALUES("374","30","30","2018-07-31 15:30:22","124");

INSERT INTO tb_historico_historia VALUES("375","30","24","2018-07-31 18:05:29","2");

INSERT INTO tb_historico_historia VALUES("376","30","24","2018-07-31 18:05:29","2");

INSERT INTO tb_historico_historia VALUES("377","30","20","2018-07-31 20:12:44","2");

INSERT INTO tb_historico_historia VALUES("378","30","20","2018-07-31 20:12:44","2");

INSERT INTO tb_historico_historia VALUES("379","30","8","2018-07-31 22:41:38","2");

INSERT INTO tb_historico_historia VALUES("380","30","8","2018-07-31 22:41:38","2");

INSERT INTO tb_historico_historia VALUES("381","13","13","2018-07-31 22:45:16","2");

INSERT INTO tb_historico_historia VALUES("382","13","13","2018-07-31 22:45:16","2");

INSERT INTO tb_historico_historia VALUES("383","13","","2018-07-31 22:45:39","2");

INSERT INTO tb_historico_historia VALUES("384","13","","2018-07-31 22:45:39","2");

INSERT INTO tb_historico_historia VALUES("385","8","5","2018-08-01 00:01:18","3");

INSERT INTO tb_historico_historia VALUES("386","8","5","2018-08-01 00:01:18","3");

INSERT INTO tb_historico_historia VALUES("387","13","1","2018-08-03 19:12:14","3");

INSERT INTO tb_historico_historia VALUES("388","13","1","2018-08-03 19:12:14","3");

INSERT INTO tb_historico_historia VALUES("389","13","2","2018-08-03 19:12:38","3");

INSERT INTO tb_historico_historia VALUES("390","13","2","2018-08-03 19:12:38","3");

INSERT INTO tb_historico_historia VALUES("391","13","1","2018-08-03 19:31:35","2");

INSERT INTO tb_historico_historia VALUES("392","13","1","2018-08-03 19:31:35","2");

INSERT INTO tb_historico_historia VALUES("393","30","20","2018-08-03 19:34:31","4");

INSERT INTO tb_historico_historia VALUES("394","30","20","2018-08-03 19:34:31","4");

INSERT INTO tb_historico_historia VALUES("395","13","","2018-08-13 12:05:19","3");

INSERT INTO tb_historico_historia VALUES("396","13","","2018-08-13 12:05:19","3");

INSERT INTO tb_historico_historia VALUES("397","20","","2018-08-13 17:32:58","4");

INSERT INTO tb_historico_historia VALUES("398","20","","2018-08-13 17:32:58","4");

INSERT INTO tb_historico_historia VALUES("399","13","13","2018-08-13 17:33:25","125");

INSERT INTO tb_historico_historia VALUES("400","13","13","2018-08-13 17:33:25","125");

INSERT INTO tb_historico_historia VALUES("401","13","13","2018-08-13 17:56:16","126");

INSERT INTO tb_historico_historia VALUES("402","13","13","2018-08-13 17:56:16","126");

INSERT INTO tb_historico_historia VALUES("403","8","8","2018-08-13 17:56:39","126");

INSERT INTO tb_historico_historia VALUES("404","8","8","2018-08-13 17:56:39","126");

INSERT INTO tb_historico_historia VALUES("405","13","3","2018-08-13 18:02:23","2");

INSERT INTO tb_historico_historia VALUES("406","13","3","2018-08-13 18:02:23","2");

INSERT INTO tb_historico_historia VALUES("407","30","30","2018-08-13 18:04:13","124");

INSERT INTO tb_historico_historia VALUES("408","30","30","2018-08-13 18:04:13","124");

INSERT INTO tb_historico_historia VALUES("409","20","5","2018-08-13 18:05:02","2");

INSERT INTO tb_historico_historia VALUES("410","20","5","2018-08-13 18:05:02","2");

INSERT INTO tb_historico_historia VALUES("411","20","","2018-08-13 23:02:29","2");

INSERT INTO tb_historico_historia VALUES("412","20","","2018-08-13 23:02:29","2");

INSERT INTO tb_historico_historia VALUES("413","30","10","2018-08-14 12:45:44","124");

INSERT INTO tb_historico_historia VALUES("414","30","10","2018-08-14 12:45:44","124");

INSERT INTO tb_historico_historia VALUES("415","20","8","2018-08-14 12:51:01","124");

INSERT INTO tb_historico_historia VALUES("416","20","8","2018-08-14 12:51:01","124");

INSERT INTO tb_historico_historia VALUES("417","20","3","2018-08-14 17:31:36","124");

INSERT INTO tb_historico_historia VALUES("418","20","3","2018-08-14 17:31:36","124");

INSERT INTO tb_historico_historia VALUES("419","13","13","2018-08-15 11:16:04","127");

INSERT INTO tb_historico_historia VALUES("420","13","13","2018-08-15 11:16:04","127");

INSERT INTO tb_historico_historia VALUES("421","30","10","2018-08-15 20:30:34","124");

INSERT INTO tb_historico_historia VALUES("422","30","10","2018-08-15 20:30:34","124");

INSERT INTO tb_historico_historia VALUES("423","20","18","2018-08-17 15:57:25","127");

INSERT INTO tb_historico_historia VALUES("424","20","18","2018-08-17 15:57:25","127");

INSERT INTO tb_historico_historia VALUES("425","20","20","2018-08-17 16:12:02","124");

INSERT INTO tb_historico_historia VALUES("426","20","20","2018-08-17 16:12:02","124");

INSERT INTO tb_historico_historia VALUES("427","20","","2018-08-17 16:12:24","124");

INSERT INTO tb_historico_historia VALUES("428","20","","2018-08-17 16:12:24","124");

INSERT INTO tb_historico_historia VALUES("429","20","","2018-08-17 16:12:59","124");

INSERT INTO tb_historico_historia VALUES("430","20","","2018-08-17 16:12:59","124");

INSERT INTO tb_historico_historia VALUES("431","13","5","2018-08-17 16:13:28","125");

INSERT INTO tb_historico_historia VALUES("432","13","5","2018-08-17 16:13:28","125");

INSERT INTO tb_historico_historia VALUES("433","13","","2018-08-17 18:09:18","125");

INSERT INTO tb_historico_historia VALUES("434","13","","2018-08-17 18:09:18","125");

INSERT INTO tb_historico_historia VALUES("435","20","","2018-08-28 11:25:01","127");

INSERT INTO tb_historico_historia VALUES("436","20","","2018-08-28 11:25:01","127");

INSERT INTO tb_historico_historia VALUES("437","20","15","2018-08-28 18:49:22","6");

INSERT INTO tb_historico_historia VALUES("438","20","15","2018-08-28 18:49:22","6");

INSERT INTO tb_historico_historia VALUES("439","8","5","2018-08-30 10:57:06","130");

INSERT INTO tb_historico_historia VALUES("440","8","5","2018-08-30 10:57:06","130");

INSERT INTO tb_historico_historia VALUES("441","8","5","2018-08-30 10:58:04","8");

INSERT INTO tb_historico_historia VALUES("442","8","5","2018-08-30 10:58:04","8");

INSERT INTO tb_historico_historia VALUES("443","8","5","2018-08-30 10:58:26","7");

INSERT INTO tb_historico_historia VALUES("444","8","5","2018-08-30 10:58:26","7");

INSERT INTO tb_historico_historia VALUES("445","20","12","2018-08-30 10:58:57","6");

INSERT INTO tb_historico_historia VALUES("446","20","12","2018-08-30 10:58:57","6");

INSERT INTO tb_historico_historia VALUES("447","20","5","2018-09-18 08:43:04","6");

INSERT INTO tb_historico_historia VALUES("448","20","5","2018-09-18 08:43:04","6");

INSERT INTO tb_historico_historia VALUES("449","8","3","2018-09-18 08:43:40","130");

INSERT INTO tb_historico_historia VALUES("450","8","3","2018-09-18 08:43:40","130");

INSERT INTO tb_historico_historia VALUES("451","8","3","2018-09-18 08:44:10","7");

INSERT INTO tb_historico_historia VALUES("452","8","3","2018-09-18 08:44:10","7");

INSERT INTO tb_historico_historia VALUES("453","8","3","2018-09-18 08:44:33","8");

INSERT INTO tb_historico_historia VALUES("454","8","3","2018-09-18 08:44:33","8");

INSERT INTO tb_historico_historia VALUES("455","8","","2018-09-21 22:08:20","130");

INSERT INTO tb_historico_historia VALUES("456","8","","2018-09-21 22:08:20","130");

INSERT INTO tb_historico_historia VALUES("457","8","","2018-09-21 22:08:49","8");

INSERT INTO tb_historico_historia VALUES("458","8","","2018-09-21 22:08:49","8");

INSERT INTO tb_historico_historia VALUES("459","8","","2018-09-21 22:09:17","7");

INSERT INTO tb_historico_historia VALUES("460","8","","2018-09-21 22:09:17","7");

INSERT INTO tb_historico_historia VALUES("461","20","","2018-09-21 22:09:40","6");

INSERT INTO tb_historico_historia VALUES("462","20","","2018-09-21 22:09:40","6");

INSERT INTO tb_historico_historia VALUES("463","13","","2018-09-24 20:33:36","10");

INSERT INTO tb_historico_historia VALUES("464","13","","2018-09-24 20:33:36","10");

INSERT INTO tb_historico_historia VALUES("465","5","","2018-09-24 20:34:02","9");

INSERT INTO tb_historico_historia VALUES("466","5","","2018-09-24 20:34:02","9");

INSERT INTO tb_historico_historia VALUES("467","13","13","2018-09-25 14:23:14","11");

INSERT INTO tb_historico_historia VALUES("468","13","13","2018-09-25 14:23:14","11");

INSERT INTO tb_historico_historia VALUES("469","13","13","2018-09-25 14:26:26","131");

INSERT INTO tb_historico_historia VALUES("470","13","13","2018-09-25 14:26:26","131");

INSERT INTO tb_historico_historia VALUES("471","8","8","2018-09-25 14:27:18","132");

INSERT INTO tb_historico_historia VALUES("472","8","8","2018-09-25 14:27:18","132");

INSERT INTO tb_historico_historia VALUES("473","5","5","2018-09-25 14:28:00","12");

INSERT INTO tb_historico_historia VALUES("474","5","5","2018-09-25 14:28:00","12");

INSERT INTO tb_historico_historia VALUES("475","8","8","2018-09-25 14:31:36","133");

INSERT INTO tb_historico_historia VALUES("476","8","8","2018-09-25 14:31:36","133");

INSERT INTO tb_historico_historia VALUES("477","13","13","2018-09-25 14:31:59","133");

INSERT INTO tb_historico_historia VALUES("478","13","13","2018-09-25 14:31:59","133");

INSERT INTO tb_historico_historia VALUES("479","13","10","2018-10-18 20:24:57","11");

INSERT INTO tb_historico_historia VALUES("480","13","10","2018-10-18 20:24:57","11");

INSERT INTO tb_historico_historia VALUES("481","13","3","2018-10-19 11:26:45","11");

INSERT INTO tb_historico_historia VALUES("482","13","3","2018-10-19 11:26:45","11");

INSERT INTO tb_historico_historia VALUES("483","8","","2018-10-19 11:32:01","11");

INSERT INTO tb_historico_historia VALUES("484","8","","2018-10-19 11:32:01","11");

INSERT INTO tb_historico_historia VALUES("485","20","20","2018-10-19 11:32:32","131");

INSERT INTO tb_historico_historia VALUES("486","20","20","2018-10-19 11:32:32","131");

INSERT INTO tb_historico_historia VALUES("487","20","","2018-10-26 20:28:56","131");

INSERT INTO tb_historico_historia VALUES("488","20","","2018-10-26 20:28:56","131");

INSERT INTO tb_historico_historia VALUES("489","8","","2018-10-26 20:29:19","132");

INSERT INTO tb_historico_historia VALUES("490","8","","2018-10-26 20:29:19","132");

INSERT INTO tb_historico_historia VALUES("491","5","4","2018-10-26 20:35:47","12");

INSERT INTO tb_historico_historia VALUES("492","5","4","2018-10-26 20:35:47","12");

INSERT INTO tb_historico_historia VALUES("493","13","13","2018-10-26 20:45:05","13");

INSERT INTO tb_historico_historia VALUES("494","13","13","2018-10-26 20:45:05","13");

INSERT INTO tb_historico_historia VALUES("495","5","","2018-11-14 16:07:41","12");

INSERT INTO tb_historico_historia VALUES("496","5","","2018-11-14 16:07:41","12");

INSERT INTO tb_historico_historia VALUES("497","13","","2018-11-19 17:37:31","13");

INSERT INTO tb_historico_historia VALUES("498","13","","2018-11-19 17:37:31","13");

INSERT INTO tb_historico_historia VALUES("499","8","","2018-11-19 17:37:56","13");

INSERT INTO tb_historico_historia VALUES("500","8","","2018-11-19 17:37:56","13");

INSERT INTO tb_historico_historia VALUES("501","13","13","2018-11-22 16:03:43","133");

INSERT INTO tb_historico_historia VALUES("502","13","13","2018-11-22 16:03:43","133");

INSERT INTO tb_historico_historia VALUES("503","1","1","2018-11-22 16:22:54","15");

INSERT INTO tb_historico_historia VALUES("504","1","1","2018-11-22 16:22:54","15");

INSERT INTO tb_historico_historia VALUES("505","5","5","2018-11-22 16:23:19","14");

INSERT INTO tb_historico_historia VALUES("506","5","5","2018-11-22 16:23:19","14");

INSERT INTO tb_historico_historia VALUES("507","1","","2018-11-23 17:55:10","15");

INSERT INTO tb_historico_historia VALUES("508","1","","2018-11-23 17:55:10","15");

INSERT INTO tb_historico_historia VALUES("509","5","3","2018-11-23 17:55:38","14");

INSERT INTO tb_historico_historia VALUES("510","5","3","2018-11-23 17:55:38","14");

INSERT INTO tb_historico_historia VALUES("511","5","","2018-11-26 17:29:23","14");

INSERT INTO tb_historico_historia VALUES("512","5","","2018-11-26 17:29:23","14");

INSERT INTO tb_historico_historia VALUES("513","8","8","2018-11-27 13:45:17","134");

INSERT INTO tb_historico_historia VALUES("514","8","8","2018-11-27 13:45:17","134");

INSERT INTO tb_historico_historia VALUES("515","13","11","2018-11-27 14:53:46","16");

INSERT INTO tb_historico_historia VALUES("516","13","11","2018-11-27 14:53:46","16");

INSERT INTO tb_historico_historia VALUES("517","30","26","2018-11-27 18:13:21","16");

INSERT INTO tb_historico_historia VALUES("518","30","26","2018-11-27 18:13:21","16");

INSERT INTO tb_historico_historia VALUES("519","40","36","2018-11-27 18:23:03","16");

INSERT INTO tb_historico_historia VALUES("520","40","36","2018-11-27 18:23:03","16");

INSERT INTO tb_historico_historia VALUES("521","40","33","2018-12-03 11:54:01","16");

INSERT INTO tb_historico_historia VALUES("522","40","33","2018-12-03 11:54:01","16");

INSERT INTO tb_historico_historia VALUES("523","40","28","2018-12-10 16:51:54","16");

INSERT INTO tb_historico_historia VALUES("524","40","28","2018-12-10 16:51:54","16");

INSERT INTO tb_historico_historia VALUES("525","8","8","2018-12-10 16:52:48","46");

INSERT INTO tb_historico_historia VALUES("526","8","8","2018-12-10 16:52:48","46");

INSERT INTO tb_historico_historia VALUES("527","40","25","2018-12-11 14:07:07","16");

INSERT INTO tb_historico_historia VALUES("528","40","25","2018-12-11 14:07:07","16");

INSERT INTO tb_historico_historia VALUES("529","40","15","2018-12-13 17:10:50","16");

INSERT INTO tb_historico_historia VALUES("530","40","15","2018-12-13 17:10:50","16");

INSERT INTO tb_historico_historia VALUES("531","40","10","2018-12-13 17:56:07","16");

INSERT INTO tb_historico_historia VALUES("532","40","10","2018-12-13 17:56:07","16");

INSERT INTO tb_historico_historia VALUES("533","40","","2018-12-20 13:39:20","16");

INSERT INTO tb_historico_historia VALUES("534","40","","2018-12-20 13:39:20","16");

INSERT INTO tb_historico_historia VALUES("535","5","5","2018-12-20 13:42:59","140");

INSERT INTO tb_historico_historia VALUES("536","5","5","2018-12-20 13:42:59","140");

INSERT INTO tb_historico_historia VALUES("537","5","3","2019-01-25 11:56:43","17");

INSERT INTO tb_historico_historia VALUES("538","5","3","2019-01-25 11:56:43","17");

INSERT INTO tb_historico_historia VALUES("539","8","","2019-01-25 14:03:01","17");

INSERT INTO tb_historico_historia VALUES("540","8","","2019-01-25 14:03:01","17");




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;


INSERT INTO tb_imagem VALUES("1","leonardo-m-c-bessa-56e8920c23ab66.jpg");

INSERT INTO tb_imagem VALUES("2","salao-novo-visual-11-5ba5062aa132f.JPG");

INSERT INTO tb_imagem VALUES("14","fp-meu-salao-11-5c0acd065bfde.jpg");

INSERT INTO tb_imagem VALUES("15","fp-meu-salao-11-5c0ac90136bf7.jpg");

INSERT INTO tb_imagem VALUES("16","fp-meu-salao-11-5c0acaf212840.jpg");

INSERT INTO tb_imagem VALUES("17","novo-profissional-5c1295971bb68.jpg");

INSERT INTO tb_imagem VALUES("18","novo-profissional-5c1296446df89.jpg");

INSERT INTO tb_imagem VALUES("19","novo-profissional-5c1297654ee1d.jpg");

INSERT INTO tb_imagem VALUES("20","novo-profissional-5c12978c2becb.jpg");

INSERT INTO tb_imagem VALUES("21","novo-profissional-5c1297c3a4dcb.jpg");

INSERT INTO tb_imagem VALUES("22","novo-profissional-5c1297de61603.jpg");

INSERT INTO tb_imagem VALUES("23","novo-profissional-5c129871d8efe.jpg");

INSERT INTO tb_imagem VALUES("24","novo-profissional-5c1298c7c0c62.jpg");

INSERT INTO tb_imagem VALUES("25","novo-profissional-5c1299ff5746d.jpg");

INSERT INTO tb_imagem VALUES("26","novo-profissional-5c129a930559f.jpg");

INSERT INTO tb_imagem VALUES("27","novo-profissional-5c129b4d6a999.jpg");

INSERT INTO tb_imagem VALUES("28","novo-profissional-5c129bbf877dd.jpg");

INSERT INTO tb_imagem VALUES("29","novo-profissional-5c129d1c2b109.jpg");

INSERT INTO tb_imagem VALUES("30","novo-profissional-5c129d7c539c9.jpg");

INSERT INTO tb_imagem VALUES("31","novo-profissional-5c129da507f1b.jpg");

INSERT INTO tb_imagem VALUES("32","novo-profissional-5c129dc72bb78.jpg");

INSERT INTO tb_imagem VALUES("33","maria-karlene-5c194c84e0a06.jpg");

INSERT INTO tb_imagem VALUES("34","novo-profissional-dsf-5c1a40b0217a6.jpg");

INSERT INTO tb_imagem VALUES("35","novo-profissional-dsf-5c1a40c4863d0.jpg");

INSERT INTO tb_imagem VALUES("36","leo-bessa-novinho-5c1b8c81725c7.jpg");

INSERT INTO tb_imagem VALUES("37","jose-arnaldo-5c1b94788c0d8.jpg");

INSERT INTO tb_imagem VALUES("38","seu-biga-5c1b955013dfa.jpg");




DROP TABLE IF EXISTS tb_imagem_assinante;


CREATE TABLE `tb_imagem_assinante` (
  `co_imagem_assinante` int(10) NOT NULL AUTO_INCREMENT,
  `co_assinante` int(11) NOT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  PRIMARY KEY (`co_imagem_assinante`,`co_assinante`,`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_ASSINANTE_has_TB_IMAGEM_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO tb_imagem_assinante VALUES("12","11","14");

INSERT INTO tb_imagem_assinante VALUES("13","11","15");

INSERT INTO tb_imagem_assinante VALUES("14","11","1");




DROP TABLE IF EXISTS tb_jornada_trabalho;


CREATE TABLE `tb_jornada_trabalho` (
  `co_jornada_trabalho` int(11) NOT NULL AUTO_INCREMENT,
  `nu_dia_semana` int(1) DEFAULT NULL COMMENT '1 - Segunda / 2 - Terça / 3 - Terça / 4 - Quarta / 5 - Sexta / 6 - Sábado / 7 - Domingo / 8 - Feriado',
  `nu_hora_abertura` varchar(5) DEFAULT NULL COMMENT 'Horário de inicio de atendimento',
  `nu_hora_fechamento` varchar(5) DEFAULT NULL COMMENT 'Horário de finalização do atendimento',
  `co_profissional` int(11) NOT NULL,
  PRIMARY KEY (`co_jornada_trabalho`,`co_profissional`),
  KEY `fk_TB_JORNADA_TRABALHO_TB_PROFISSIONAL1_idx` (`co_profissional`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;


INSERT INTO tb_jornada_trabalho VALUES("15","1","05:44","18:40","0");

INSERT INTO tb_jornada_trabalho VALUES("16","2","05:44","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("17","3","05:44","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("18","4","23:33","18:40","0");

INSERT INTO tb_jornada_trabalho VALUES("19","5","04:00","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("20","6","03:00","19:11","0");

INSERT INTO tb_jornada_trabalho VALUES("22","1","05:00","18:40","0");

INSERT INTO tb_jornada_trabalho VALUES("23","2","05:44","18:11","0");

INSERT INTO tb_jornada_trabalho VALUES("24","3","05:44","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("25","4","04:44","18:11","0");

INSERT INTO tb_jornada_trabalho VALUES("26","5","04:00","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("27","6","03:00","19:11","0");

INSERT INTO tb_jornada_trabalho VALUES("28","7","03:00","14:11","0");

INSERT INTO tb_jornada_trabalho VALUES("35","2","05:00","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("36","4","23:33","18:40","0");

INSERT INTO tb_jornada_trabalho VALUES("40","1","05:00","18:11","0");

INSERT INTO tb_jornada_trabalho VALUES("41","2","05:44","18:04","0");

INSERT INTO tb_jornada_trabalho VALUES("42","8","02:23","21:23","0");

INSERT INTO tb_jornada_trabalho VALUES("56","1","05:00","18:40","20");

INSERT INTO tb_jornada_trabalho VALUES("57","2","05:00","18:04","20");

INSERT INTO tb_jornada_trabalho VALUES("58","4","04:44","18:11","20");




DROP TABLE IF EXISTS tb_modulo;


CREATE TABLE `tb_modulo` (
  `co_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `no_modulo` varchar(50) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_projeto` int(11) NOT NULL,
  PRIMARY KEY (`co_modulo`,`co_projeto`),
  KEY `fk_TB_MODULO_TB_PROJETO1_idx` (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


INSERT INTO tb_modulo VALUES("1","Assinante","2018-07-25 11:07:40","1");

INSERT INTO tb_modulo VALUES("2","Principal","2018-07-25 11:45:27","1");

INSERT INTO tb_modulo VALUES("3","Criar Histórias","2018-07-26 11:45:42","1");

INSERT INTO tb_modulo VALUES("4","Site","2018-07-26 17:35:18","1");

INSERT INTO tb_modulo VALUES("5","Lançamento do SisBela","2018-07-26 17:42:45","1");




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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


INSERT INTO tb_motivo_desconto_assinante VALUES("9","S","S","2018-11-26 14:56:57","11","8");

INSERT INTO tb_motivo_desconto_assinante VALUES("10","S","N","2018-11-26 14:56:58","11","7");

INSERT INTO tb_motivo_desconto_assinante VALUES("11","S","N","2018-11-26 14:56:58","11","6");

INSERT INTO tb_motivo_desconto_assinante VALUES("12","S","N","2018-11-26 14:56:58","11","5");

INSERT INTO tb_motivo_desconto_assinante VALUES("13","S","S","2018-11-26 14:56:59","11","4");

INSERT INTO tb_motivo_desconto_assinante VALUES("14","S","S","2018-11-26 14:56:59","11","3");

INSERT INTO tb_motivo_desconto_assinante VALUES("15","S","S","2018-11-26 14:56:59","11","2");

INSERT INTO tb_motivo_desconto_assinante VALUES("16","N","N","2018-11-26 14:56:59","11","1");

INSERT INTO tb_motivo_desconto_assinante VALUES("17","N","N","2018-12-10 11:44:43","14","8");

INSERT INTO tb_motivo_desconto_assinante VALUES("18","N","N","2018-12-10 11:44:44","14","7");

INSERT INTO tb_motivo_desconto_assinante VALUES("19","N","N","2018-12-10 11:44:44","14","6");

INSERT INTO tb_motivo_desconto_assinante VALUES("20","N","N","2018-12-10 11:44:44","14","5");

INSERT INTO tb_motivo_desconto_assinante VALUES("21","N","N","2018-12-10 11:44:45","14","4");

INSERT INTO tb_motivo_desconto_assinante VALUES("22","N","N","2018-12-10 11:44:45","14","3");

INSERT INTO tb_motivo_desconto_assinante VALUES("23","N","N","2018-12-10 11:44:45","14","2");

INSERT INTO tb_motivo_desconto_assinante VALUES("24","N","N","2018-12-10 11:44:46","14","1");




DROP TABLE IF EXISTS tb_pacote;


CREATE TABLE `tb_pacote` (
  `co_pacote` int(11) NOT NULL AUTO_INCREMENT,
  `no_pacote` varchar(50) DEFAULT NULL,
  `ds_descricao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `dt_lancamento` date DEFAULT NULL,
  PRIMARY KEY (`co_pacote`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


INSERT INTO tb_pacote VALUES("1","Assinante","Gestão do assinante no sistema da beleza","2018-07-30 14:00:00","2018-11-02");

INSERT INTO tb_pacote VALUES("2","Principal","Onde consta todas as funcionalidades padrões e básicas do sistema","2018-07-30 14:00:00","2018-11-02");




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
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("20","2","23");

INSERT INTO tb_perfil_funcionalidade VALUES("21","2","24");

INSERT INTO tb_perfil_funcionalidade VALUES("155","2","26");

INSERT INTO tb_perfil_funcionalidade VALUES("156","19","23");

INSERT INTO tb_perfil_funcionalidade VALUES("158","4","26");

INSERT INTO tb_perfil_funcionalidade VALUES("160","6","23");

INSERT INTO tb_perfil_funcionalidade VALUES("167","3","28");

INSERT INTO tb_perfil_funcionalidade VALUES("168","2","28");

INSERT INTO tb_perfil_funcionalidade VALUES("170","2","22");

INSERT INTO tb_perfil_funcionalidade VALUES("171","2","21");

INSERT INTO tb_perfil_funcionalidade VALUES("172","2","20");

INSERT INTO tb_perfil_funcionalidade VALUES("173","2","19");

INSERT INTO tb_perfil_funcionalidade VALUES("174","2","18");

INSERT INTO tb_perfil_funcionalidade VALUES("175","2","17");

INSERT INTO tb_perfil_funcionalidade VALUES("176","2","16");

INSERT INTO tb_perfil_funcionalidade VALUES("177","2","15");

INSERT INTO tb_perfil_funcionalidade VALUES("179","2","13");

INSERT INTO tb_perfil_funcionalidade VALUES("182","2","8");

INSERT INTO tb_perfil_funcionalidade VALUES("183","2","7");

INSERT INTO tb_perfil_funcionalidade VALUES("186","2","5");

INSERT INTO tb_perfil_funcionalidade VALUES("187","2","4");

INSERT INTO tb_perfil_funcionalidade VALUES("188","3","12");

INSERT INTO tb_perfil_funcionalidade VALUES("189","2","12");

INSERT INTO tb_perfil_funcionalidade VALUES("190","2","14");

INSERT INTO tb_perfil_funcionalidade VALUES("191","3","6");

INSERT INTO tb_perfil_funcionalidade VALUES("192","2","6");

INSERT INTO tb_perfil_funcionalidade VALUES("193","2","27");




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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;


INSERT INTO tb_pessoa VALUES("1","72681438187","LEONARDO MACHADO CARVALHO BESSA","2077811","2016-10-31 00:00:00","1984-07-06","M","1","1","1");

INSERT INTO tb_pessoa VALUES("5","","novo pedido 2","","2018-07-31 20:11:38","0000-00-00","","0","5","0");

INSERT INTO tb_pessoa VALUES("6","","Novo asinante 355","","2018-07-31 22:39:48","0000-00-00","","0","6","0");

INSERT INTO tb_pessoa VALUES("7","","Novo asinante 355","","2018-08-03 18:42:23","0000-00-00","","0","7","0");

INSERT INTO tb_pessoa VALUES("15","","LEO BESSA","","2018-08-14 16:45:26","0000-00-00","","0","15","0");

INSERT INTO tb_pessoa VALUES("16","","Novo asinante 355GG","","2018-08-16 23:59:20","0000-00-00","","0","16","0");

INSERT INTO tb_pessoa VALUES("17","","novo pedido","","2018-08-28 10:59:39","0000-00-00","","0","17","0");

INSERT INTO tb_pessoa VALUES("18","","Leo bessa","","2018-09-17 16:45:33","0000-00-00","","0","18","0");

INSERT INTO tb_pessoa VALUES("48","12345678909","Novo Profissional","2346","2018-12-19 18:25:40","2017-03-07","M","66","53","0");

INSERT INTO tb_pessoa VALUES("67","","gre","","2018-12-18 17:15:15","2002-12-03","F","86","72","0");

INSERT INTO tb_pessoa VALUES("68","01304694160","Maria Karlene","2346","2018-12-18 17:37:40","1999-12-14","F","87","73","0");

INSERT INTO tb_pessoa VALUES("73","","Novo Profissional DSF ","","2018-12-19 10:59:48","2000-12-05","M","92","78","0");

INSERT INTO tb_pessoa VALUES("74","12345678909","LEO BESSA NOVINHO","1111111111111","2018-12-20 10:56:22","1984-07-06","F","93","79","0");

INSERT INTO tb_pessoa VALUES("76","22322191191","Jose Arnaldo","2346","2019-01-14 17:25:21","1959-06-05","M","95","81","0");

INSERT INTO tb_pessoa VALUES("77","","Seu Biga","","2019-01-14 17:05:48","2018-12-04","M","96","82","0");




DROP TABLE IF EXISTS tb_plano;


CREATE TABLE `tb_plano` (
  `co_plano` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `no_plano` varchar(100) DEFAULT NULL,
  `nu_mes_ativo` int(1) DEFAULT NULL COMMENT 'Número de meses ativo do plano (1, 3, 6, 12 e 24)',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'Status do plano A - Ativo / I - Inativo',
  PRIMARY KEY (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


INSERT INTO tb_plano VALUES("1","2018-07-31 10:17:46","Plano Padrão","1","A");

INSERT INTO tb_plano VALUES("2","2018-07-31 10:53:52","Plano A","1","A");

INSERT INTO tb_plano VALUES("3","2018-07-30 14:00:00","Plano A2d","3","A");

INSERT INTO tb_plano VALUES("4","2018-08-15 11:09:54","novo em folha","6","A");

INSERT INTO tb_plano VALUES("5","2018-08-15 11:10:46","gdfg rg","1","A");

INSERT INTO tb_plano VALUES("6","2018-08-28 10:30:16","novo em folha","6","A");

INSERT INTO tb_plano VALUES("7","2018-08-28 11:17:47","hhrt","24","A");

INSERT INTO tb_plano VALUES("8","2018-12-10 11:56:19","fewf efe","3","A");

INSERT INTO tb_plano VALUES("9","2019-01-14 16:50:14","novinho","24","A");




DROP TABLE IF EXISTS tb_plano_assinante;


CREATE TABLE `tb_plano_assinante` (
  `co_plano_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(10,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text,
  `co_plano` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_assinante`,`co_plano`),
  KEY `fk_TB_PLANO_ASSINANTE_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_plano_assinante VALUES("20","18.50","2018-12-10 11:56:19","fewf","8");

INSERT INTO tb_plano_assinante VALUES("21","3.99","2019-01-14 16:50:14","ce","9");

INSERT INTO tb_plano_assinante VALUES("22","3.99","2019-01-14 16:50:14","ce","9");




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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_plano_assinante_assinatura VALUES("21","2018-12-10 11:09:32","2019-04-02","0","354.00","2","14","13");

INSERT INTO tb_plano_assinante_assinatura VALUES("23","2018-12-10 11:20:41","2019-01-02","0","90.00","2","14","6");

INSERT INTO tb_plano_assinante_assinatura VALUES("24","2018-12-10 11:57:35","2020-12-16","0","2877.60","3","11","19");




DROP TABLE IF EXISTS tb_plano_pacote;


CREATE TABLE `tb_plano_pacote` (
  `co_plano_pacote` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_pacote` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_pacote`,`co_plano`,`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_pacote`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;


INSERT INTO tb_plano_pacote VALUES("8","3","2");

INSERT INTO tb_plano_pacote VALUES("11","2","2");

INSERT INTO tb_plano_pacote VALUES("12","4","1");

INSERT INTO tb_plano_pacote VALUES("13","4","2");

INSERT INTO tb_plano_pacote VALUES("18","6","1");

INSERT INTO tb_plano_pacote VALUES("19","6","2");

INSERT INTO tb_plano_pacote VALUES("28","5","1");

INSERT INTO tb_plano_pacote VALUES("29","5","2");

INSERT INTO tb_plano_pacote VALUES("30","7","1");

INSERT INTO tb_plano_pacote VALUES("31","7","2");

INSERT INTO tb_plano_pacote VALUES("32","8","1");

INSERT INTO tb_plano_pacote VALUES("33","8","2");

INSERT INTO tb_plano_pacote VALUES("34","9","1");




DROP TABLE IF EXISTS tb_profissional;


CREATE TABLE `tb_profissional` (
  `co_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_cor_agenda` varchar(7) DEFAULT NULL COMMENT 'Valor Hexadecimal',
  `st_assistente` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser assitente de outro profissional',
  `ds_sobre` text,
  `no_apelido` varchar(45) DEFAULT NULL,
  `st_agenda` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se possui agenda',
  `st_agenda_online` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser ter agendamento on line',
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo',
  `nu_ordem_agenda` int(1) DEFAULT NULL COMMENT 'Ordem da apresentação na agenda',
  `tp_contratacao` int(1) DEFAULT NULL COMMENT '1 - Contrato de trabalho CLT / 2 - Contrato de trabalho por prazo determinado / 3 - Sem vínculo empregatício / 4 - Contrato de Locação de espaço / 5 - Outros',
  `dt_admissao` date DEFAULT NULL,
  `dt_demissao` date DEFAULT NULL,
  `co_imagem` int(10) unsigned NOT NULL,
  `co_pessoa` int(10) unsigned NOT NULL,
  `co_usuario` int(10) NOT NULL,
  `co_assinante` int(11) NOT NULL,
  `co_conta_bancaria` int(11) NOT NULL,
  PRIMARY KEY (`co_profissional`,`co_imagem`,`co_pessoa`,`co_usuario`,`co_assinante`,`co_conta_bancaria`),
  KEY `fk_TB_PROFISSIONAL_TB_IMAGEM1_idx` (`co_imagem`),
  KEY `fk_TB_PROFISSIONAL_TB_PESSOA1_idx` (`co_pessoa`),
  KEY `fk_TB_PROFISSIONAL_TB_USUARIO1_idx` (`co_usuario`),
  KEY `fk_TB_PROFISSIONAL_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_PROFISSIONAL_TB_CONTA_BANCARIA1_idx` (`co_conta_bancaria`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


INSERT INTO tb_profissional VALUES("9","2018-12-19 18:25:40","#00FF00","S","SOBRE MIM","meu apelido","S","S","A","2","1","2018-12-03","0000-00-00","32","48","27","11","17");

INSERT INTO tb_profissional VALUES("15","2018-12-18 17:15:15","","N","","","N","N","A","0","1","0000-00-00","0000-00-00","0","67","43","11","34");

INSERT INTO tb_profissional VALUES("16","2018-12-18 17:37:41","#A54A7B","N","Eu sou a kaka","Kaka","S","S","","1","3","2018-12-04","","33","68","44","11","35");

INSERT INTO tb_profissional VALUES("18","2018-12-19 10:59:48","","N","","","N","N","A","0","1","0000-00-00","0000-00-00","35","73","46","11","39");

INSERT INTO tb_profissional VALUES("19","2018-12-20 10:56:22","#F7C6CE","N","SObre 22","meu apelido 22","S","S","A","2","3","2018-12-19","0000-00-00","36","74","47","11","40");

INSERT INTO tb_profissional VALUES("20","2019-01-14 17:25:21","#397B21","S","Representante comercial da Bartofil","Bigode","S","S","","1","2","2018-12-17","0000-00-00","37","76","49","11","42");

INSERT INTO tb_profissional VALUES("21","2019-01-14 17:05:48","#EFC631","N","","","S","S","","0","1","0000-00-00","0000-00-00","38","77","50","11","43");




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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;


INSERT INTO tb_profissional_cargo VALUES("14","30","15","2018-12-18 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("20","34","18","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("21","29","18","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("23","7","9","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("24","6","9","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("37","33","19","2018-12-20 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("46","32","21","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("52","34","20","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("53","32","20","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("54","31","16","2019-01-25 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("55","26","16","2019-01-25 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("56","21","16","2019-01-25 00:00:00","A");




DROP TABLE IF EXISTS tb_projeto;


CREATE TABLE `tb_projeto` (
  `co_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `no_projeto` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_projeto VALUES("1","SisBela","2018-07-25 11:07:40");




DROP TABLE IF EXISTS tb_sessao;


CREATE TABLE `tb_sessao` (
  `co_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_sessao`,`co_modulo`),
  KEY `fk_TB_SESSAO_TB_MODULO1_idx` (`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;


INSERT INTO tb_sessao VALUES("1","Assinante","2018-07-25 11:07:40","1");

INSERT INTO tb_sessao VALUES("2","Complemento do assinante","2018-07-25 11:46:04","2");

INSERT INTO tb_sessao VALUES("4","Feriados e Dias Especiais","2018-07-25 12:24:17","2");

INSERT INTO tb_sessao VALUES("5","Configuração Padrão","2018-07-25 14:33:58","2");

INSERT INTO tb_sessao VALUES("8","Motivo Desconto","2018-07-25 15:10:45","2");

INSERT INTO tb_sessao VALUES("9","Profissional","2018-07-25 15:27:04","2");

INSERT INTO tb_sessao VALUES("10","Bloqueio de horário","2018-07-25 16:09:50","2");

INSERT INTO tb_sessao VALUES("11","Cliente","2018-07-25 16:13:20","2");

INSERT INTO tb_sessao VALUES("12","Serviço","2018-07-25 16:17:48","2");

INSERT INTO tb_sessao VALUES("13","Pacote","2018-07-25 16:28:16","2");

INSERT INTO tb_sessao VALUES("14","Promoção","2018-07-25 17:11:37","2");

INSERT INTO tb_sessao VALUES("15","Cortesia","2018-07-25 17:13:07","2");

INSERT INTO tb_sessao VALUES("16","Vale presente","2018-07-25 17:19:32","2");

INSERT INTO tb_sessao VALUES("17","Agendamento","2018-07-25 17:24:48","2");

INSERT INTO tb_sessao VALUES("18","Caixa","2018-07-25 18:15:22","2");

INSERT INTO tb_sessao VALUES("19","Criar Histórias Módulos Principal e assinante","2018-07-26 11:46:18","3");

INSERT INTO tb_sessao VALUES("20","Página do Assinante","2018-07-26 17:36:23","4");

INSERT INTO tb_sessao VALUES("21","Site do Sistema Da Beleza","2018-07-26 17:37:42","4");

INSERT INTO tb_sessao VALUES("22","PL - Pré Lançamento","2018-07-26 17:43:49","5");

INSERT INTO tb_sessao VALUES("23","L - Lançamento","2018-07-26 17:50:17","5");

INSERT INTO tb_sessao VALUES("24","PPL - Pré Pré Lançamento","2018-07-26 17:53:22","5");

INSERT INTO tb_sessao VALUES("25","Criar Histórias Módulos Lançamento do Sistema Da Beleaza e Site","2018-07-26 18:12:41","3");

INSERT INTO tb_sessao VALUES("26","Iniciar o sistema","2018-07-26 18:39:09","2");

INSERT INTO tb_sessao VALUES("27","Lembretes por e-mail","2018-07-26 18:48:42","2");

INSERT INTO tb_sessao VALUES("28","Lembretes por SMS","2018-07-26 18:52:19","2");

INSERT INTO tb_sessao VALUES("29","Perfil","2018-07-26 18:57:21","2");

INSERT INTO tb_sessao VALUES("30","Financeiro","2018-07-26 22:17:41","2");

INSERT INTO tb_sessao VALUES("31","Suporte","2018-07-26 22:26:08","2");

INSERT INTO tb_sessao VALUES("32","Relatório","2018-07-26 22:31:46","2");




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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;


INSERT INTO tb_trafego VALUES("1","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("2","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("3","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("4","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:63.0) Gecko/20100101 Firefox/63.0");

INSERT INTO tb_trafego VALUES("5","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("6","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("7","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("8","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("9","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("10","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("11","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("12","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("13","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("14","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("15","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("16","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("17","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("18","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("19","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("20","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("21","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("22","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("23","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("24","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("25","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("26","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("27","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("28","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("29","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("30","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("31","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("32","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("33","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("34","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("35","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("36","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("37","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("38","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("39","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("40","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("41","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("42","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("43","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("44","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("45","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("46","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("47","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("48","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("49","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("50","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("51","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("52","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("53","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("54","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("55","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("56","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("57","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("58","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("59","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("60","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("61","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("62","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("63","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("64","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("65","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("66","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("67","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("68","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("69","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("70","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("71","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("72","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("73","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("74","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("75","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("76","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("77","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("78","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("79","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("80","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("81","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("82","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("83","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("84","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("85","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("86","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("87","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("88","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("89","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("90","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("91","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("92","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("93","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("94","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("95","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("96","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("97","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("98","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("99","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("100","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("105","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("106","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("107","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("108","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("109","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("110","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("111","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("112","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("113","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("114","127.0.0.1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("115","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("116","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("117","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("118","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("119","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");




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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario VALUES("1","123456**","TVRJek5EVTJLaW89","A","S","2016-10-31 00:00:00","1","1","0");

INSERT INTO tb_usuario VALUES("8","teste123","ZEdWemRHVXhNak09","A","S","2018-08-14 16:45:26","0","15","11");

INSERT INTO tb_usuario VALUES("9","OMT0PLF6","VDAxVU1GQk1Salk9","A","N","2018-08-16 23:59:20","0","16","12");

INSERT INTO tb_usuario VALUES("10","TEW3NAL6","VkVWWE0wNUJURFk9","I","N","2018-08-28 10:59:39","0","17","13");

INSERT INTO tb_usuario VALUES("11","QQT8ZPA3","VVZGVU9GcFFRVE09","A","N","2018-09-17 16:45:33","0","18","14");

INSERT INTO tb_usuario VALUES("27","HZH7OGA5","U0ZwSU4wOUhRVFU9","I","N","2018-12-13 15:58:31","0","48","11");

INSERT INTO tb_usuario VALUES("43","FYC1JST5","UmxsRE1VcFRWRFU9","I","N","2018-12-18 17:15:15","0","67","11");

INSERT INTO tb_usuario VALUES("44","WZA1WID7","VjFwQk1WZEpSRGM9","I","N","2018-12-18 17:37:40","0","68","11");

INSERT INTO tb_usuario VALUES("46","XAT4RFA5","V0VGVU5GSkdRVFU9","I","N","2018-12-19 10:59:48","0","73","11");

INSERT INTO tb_usuario VALUES("47","IQW2LLP2","U1ZGWE1reE1VREk9","I","N","2018-12-19 17:53:40","0","74","11");

INSERT INTO tb_usuario VALUES("49","OKG0TUO6","VDB0SE1GUlZUelk9","I","N","2018-12-20 11:05:39","0","76","11");

INSERT INTO tb_usuario VALUES("50","ONW9OOB5","VDA1WE9VOVBRalU9","I","N","2018-12-20 11:10:16","0","77","11");




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





