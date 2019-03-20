-- Atualizado em: 20/03/2019 17:49:26
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8;


INSERT INTO tb_acesso VALUES("118","2tfpgp5ig57jaj83hjer8assg2","2019-02-12 12:07:46","2019-02-12 12:45:35","F","1","137");

INSERT INTO tb_acesso VALUES("119","cuifntt9id1rq6gt6vi2ucvo43","2019-02-18 16:30:10","2019-02-18 17:02:44","F","1","138");

INSERT INTO tb_acesso VALUES("120","cuifntt9id1rq6gt6vi2ucvo43","2019-02-18 17:04:16","2019-02-18 17:12:50","F","8","139");

INSERT INTO tb_acesso VALUES("121","cuifntt9id1rq6gt6vi2ucvo43","2019-02-18 17:12:55","2019-02-18 17:44:05","F","1","140");

INSERT INTO tb_acesso VALUES("122","cuifntt9id1rq6gt6vi2ucvo43","2019-02-19 18:00:15","2019-02-19 18:25:47","F","1","141");

INSERT INTO tb_acesso VALUES("123","cuifntt9id1rq6gt6vi2ucvo43","2019-02-19 18:26:04","2019-02-19 18:30:11","F","8","142");

INSERT INTO tb_acesso VALUES("124","cuifntt9id1rq6gt6vi2ucvo43","2019-02-19 18:30:17","2019-02-19 18:31:21","F","1","143");

INSERT INTO tb_acesso VALUES("125","cuifntt9id1rq6gt6vi2ucvo43","2019-02-19 18:31:27","2019-02-19 18:36:00","F","8","144");

INSERT INTO tb_acesso VALUES("126","cuifntt9id1rq6gt6vi2ucvo43","2019-02-19 18:36:05","2019-02-19 18:39:51","F","1","145");

INSERT INTO tb_acesso VALUES("127","cuifntt9id1rq6gt6vi2ucvo43","2019-02-19 18:40:26","2019-02-19 19:23:20","F","1","146");

INSERT INTO tb_acesso VALUES("128","cuifntt9id1rq6gt6vi2ucvo43","2019-02-20 14:16:50","2019-02-20 16:20:06","F","1","147");

INSERT INTO tb_acesso VALUES("129","cuifntt9id1rq6gt6vi2ucvo43","2019-02-20 16:21:47","2019-02-20 17:06:21","F","8","148");

INSERT INTO tb_acesso VALUES("130","cuifntt9id1rq6gt6vi2ucvo43","2019-02-20 17:06:27","2019-02-20 17:41:28","F","1","149");

INSERT INTO tb_acesso VALUES("131","cuifntt9id1rq6gt6vi2ucvo43","2019-02-25 15:16:22","2019-02-25 16:38:45","F","1","150");

INSERT INTO tb_acesso VALUES("132","5ahpq6hpf9vf32e6ml0hav2jq6","2019-03-08 09:53:55","2019-03-08 09:59:24","F","1","151");

INSERT INTO tb_acesso VALUES("133","5ahpq6hpf9vf32e6ml0hav2jq6","2019-03-08 09:59:30","2019-03-08 10:01:35","F","8","152");

INSERT INTO tb_acesso VALUES("134","5ahpq6hpf9vf32e6ml0hav2jq6","2019-03-08 10:01:48","2019-03-08 10:02:10","F","1","153");

INSERT INTO tb_acesso VALUES("135","5ahpq6hpf9vf32e6ml0hav2jq6","2019-03-08 11:05:39","2019-03-08 11:10:29","F","8","154");

INSERT INTO tb_acesso VALUES("136","5ahpq6hpf9vf32e6ml0hav2jq6","2019-03-08 15:26:08","2019-03-08 15:58:37","F","1","155");

INSERT INTO tb_acesso VALUES("137","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:42:23","2019-03-11 14:50:03","F","1","156");

INSERT INTO tb_acesso VALUES("138","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:50:58","2019-03-11 14:52:22","F","8","157");

INSERT INTO tb_acesso VALUES("139","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:52:28","2019-03-11 14:54:22","F","8","158");

INSERT INTO tb_acesso VALUES("140","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:54:27","2019-03-11 14:54:57","F","1","159");

INSERT INTO tb_acesso VALUES("141","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:55:06","2019-03-11 14:55:31","F","11","160");

INSERT INTO tb_acesso VALUES("142","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:55:37","2019-03-11 14:55:51","F","1","161");

INSERT INTO tb_acesso VALUES("143","5167a394veapkpqrjn8hj3uop2","2019-03-11 14:55:56","2019-03-11 15:37:47","F","8","162");

INSERT INTO tb_acesso VALUES("144","5167a394veapkpqrjn8hj3uop2","2019-03-11 15:37:53","2019-03-11 16:10:35","F","1","163");

INSERT INTO tb_acesso VALUES("145","5167a394veapkpqrjn8hj3uop2","2019-03-11 16:33:04","2019-03-11 17:20:47","F","1","164");

INSERT INTO tb_acesso VALUES("146","5167a394veapkpqrjn8hj3uop2","2019-03-11 17:20:53","2019-03-11 17:22:58","F","8","165");

INSERT INTO tb_acesso VALUES("147","5167a394veapkpqrjn8hj3uop2","2019-03-11 17:23:15","2019-03-11 17:28:01","F","1","166");

INSERT INTO tb_acesso VALUES("148","5167a394veapkpqrjn8hj3uop2","2019-03-11 17:28:06","2019-03-11 17:29:06","F","8","167");

INSERT INTO tb_acesso VALUES("149","5167a394veapkpqrjn8hj3uop2","2019-03-11 17:29:11","2019-03-11 17:59:23","F","1","168");

INSERT INTO tb_acesso VALUES("150","5167a394veapkpqrjn8hj3uop2","2019-03-13 15:49:43","2019-03-13 15:50:49","F","8","169");

INSERT INTO tb_acesso VALUES("151","5167a394veapkpqrjn8hj3uop2","2019-03-13 15:50:55","2019-03-13 16:14:45","F","1","170");

INSERT INTO tb_acesso VALUES("152","5167a394veapkpqrjn8hj3uop2","2019-03-13 16:14:52","2019-03-13 16:17:34","F","8","171");

INSERT INTO tb_acesso VALUES("153","5167a394veapkpqrjn8hj3uop2","2019-03-13 16:17:39","2019-03-13 16:45:40","F","1","172");

INSERT INTO tb_acesso VALUES("154","5167a394veapkpqrjn8hj3uop2","2019-03-13 16:45:49","2019-03-13 17:54:08","F","8","173");

INSERT INTO tb_acesso VALUES("155","5167a394veapkpqrjn8hj3uop2","2019-03-13 17:54:17","2019-03-13 17:55:49","F","1","174");

INSERT INTO tb_acesso VALUES("156","5167a394veapkpqrjn8hj3uop2","2019-03-13 17:55:57","2019-03-13 18:16:16","F","8","175");

INSERT INTO tb_acesso VALUES("157","0gqarf8rld3jc32f15l2i9aj66","2019-03-13 18:17:19","2019-03-14 08:51:35","F","8","176");

INSERT INTO tb_acesso VALUES("158","r11s8di90npd9s1omb5s2er9t5","2019-03-20 09:56:23","2019-03-20 10:05:23","F","1","177");

INSERT INTO tb_acesso VALUES("159","r11s8di90npd9s1omb5s2er9t5","2019-03-20 10:05:30","2019-03-20 10:09:17","F","8","178");

INSERT INTO tb_acesso VALUES("160","r11s8di90npd9s1omb5s2er9t5","2019-03-20 10:09:22","2019-03-20 10:50:59","F","1","179");

INSERT INTO tb_acesso VALUES("161","r11s8di90npd9s1omb5s2er9t5","2019-03-20 13:30:21","2019-03-20 14:14:04","F","8","180");

INSERT INTO tb_acesso VALUES("162","r11s8di90npd9s1omb5s2er9t5","2019-03-20 14:14:12","2019-03-20 15:15:00","F","1","181");

INSERT INTO tb_acesso VALUES("163","r11s8di90npd9s1omb5s2er9t5","2019-03-20 15:29:32","2019-03-20 16:51:43","F","1","182");

INSERT INTO tb_acesso VALUES("164","r11s8di90npd9s1omb5s2er9t5","2019-03-20 16:51:51","2019-03-20 17:47:21","F","8","183");

INSERT INTO tb_acesso VALUES("165","r11s8di90npd9s1omb5s2er9t5","2019-03-20 17:47:28","2019-03-20 18:19:26","A","1","184");




DROP TABLE IF EXISTS tb_anotacao;


CREATE TABLE `tb_anotacao` (
  `co_anotacao` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` text,
  `ds_titulo` varchar(80) DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_anotacao`,`co_historia`),
  KEY `fk_TB_ANOTACAO_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


INSERT INTO tb_anotacao VALUES("1","2018-08-03 19:14:15","<p>verificar o cadastro pelo site para manter um plano mesmo que que por experi&ecirc;ncia</p>","Cadastro pelo site para o assinante","2");

INSERT INTO tb_anotacao VALUES("2","2018-08-03 19:15:28","<p>Verificar quando for realizar a edi&ccedil;&atilde;o se o cadastro e hist&oacute;rico esta ok</p>","Edição da filial","3");

INSERT INTO tb_anotacao VALUES("3","2018-08-03 19:50:23","<p>Verificar como sera inserido o plano quando consta filiais e como sera cobrado o n&uacute;mero de profissionais com as filiais</p>","Plano com filial","4");

INSERT INTO tb_anotacao VALUES("4","2018-08-13 18:01:53","<p>Criar Usu&aacute;rio no cadastro na gest&atilde;o do assinante envio de email de confirma&ccedil;&atilde;o com senha gerada e ativa&ccedil;&atilde;o do cadastro</p>","Criar Usuário","2");

INSERT INTO tb_anotacao VALUES("5","2019-01-30 14:16:09","<p>Quem ira fazer a entrada de dados do cliente e quando ser&aacute; feito</p>","Entrada de dados do cliente","174");

INSERT INTO tb_anotacao VALUES("6","2019-01-30 14:17:03","<p>Havera um periodo de teste para o uso do sistema ? se sim de quanto dias</p>","Período de teste","174");

INSERT INTO tb_anotacao VALUES("7","2019-01-30 14:17:57","<p>Quem irar dar a entrada das informa&ccedil;&otilde;es e como sera feito (Arquivo de envio a receita)?</p>","Validação das informações","174");

INSERT INTO tb_anotacao VALUES("8","2019-01-30 14:19:16","<p>com que frequ&ecirc;ncia tem altera&ccedil;&atilde;o nas formalas de valida&ccedil;&atilde;o da receita?</p>","Alteração nas Fórmulas","174");

INSERT INTO tb_anotacao VALUES("9","2019-01-30 14:20:26","<p>Ser&aacute; necess&aacute;rio a utiliza&ccedil;&atilde;o de um site ou somente uso com clientes que ser&atilde;o captados?</p>","Uso de um site","174");

INSERT INTO tb_anotacao VALUES("10","2019-03-11 16:57:48","<p>Criar Perfil de Profissional autom&aacute;tico onde ao cadastrar um profissional ele ja vem com o perfil de profissional e ja suas funcionalidades b&aacute;sicas cadastradas</p>","Criar Perfil de Profissional","84");




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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("48","2019-02-12 12:09:39","Master","1");

INSERT INTO tb_auditoria VALUES("49","2019-02-12 12:09:39","Master","1");

INSERT INTO tb_auditoria VALUES("50","2019-02-18 16:42:26","Master","1");

INSERT INTO tb_auditoria VALUES("51","2019-02-18 16:42:26","Master","1");

INSERT INTO tb_auditoria VALUES("52","2019-02-18 16:46:24","Master","1");

INSERT INTO tb_auditoria VALUES("53","2019-02-18 17:11:14","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("54","2019-02-18 17:12:38","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("55","2019-02-19 18:30:57","Master","1");

INSERT INTO tb_auditoria VALUES("56","2019-02-19 18:31:16","Master","1");

INSERT INTO tb_auditoria VALUES("57","2019-02-19 18:31:55","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("58","2019-02-19 18:35:25","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("59","2019-02-19 18:35:45","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("60","2019-02-19 18:36:34","Master","1");

INSERT INTO tb_auditoria VALUES("61","2019-02-19 18:36:34","Master","1");

INSERT INTO tb_auditoria VALUES("62","2019-02-20 14:24:17","Master","1");

INSERT INTO tb_auditoria VALUES("63","2019-02-20 14:24:18","Master","1");

INSERT INTO tb_auditoria VALUES("64","2019-02-20 14:24:33","Master","1");

INSERT INTO tb_auditoria VALUES("65","2019-02-20 14:24:34","Master","1");

INSERT INTO tb_auditoria VALUES("66","2019-02-20 14:57:53","Master","1");

INSERT INTO tb_auditoria VALUES("67","2019-02-20 14:57:53","Master","1");

INSERT INTO tb_auditoria VALUES("68","2019-02-20 15:26:49","Master","1");

INSERT INTO tb_auditoria VALUES("69","2019-02-20 15:27:35","Master","1");

INSERT INTO tb_auditoria VALUES("70","2019-02-20 15:27:45","Master","1");

INSERT INTO tb_auditoria VALUES("71","2019-02-20 16:22:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("72","2019-02-20 16:22:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("73","2019-02-20 16:23:00","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("74","2019-02-20 16:23:00","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("75","2019-02-20 16:23:00","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("76","2019-02-20 16:23:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("77","2019-02-20 16:23:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("78","2019-02-20 16:23:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("79","2019-02-20 16:23:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("80","2019-02-20 16:23:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("81","2019-02-20 16:23:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("82","2019-02-20 16:23:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("83","2019-02-20 16:23:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("84","2019-02-20 16:23:03","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("85","2019-02-20 17:01:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("86","2019-02-20 17:01:37","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("87","2019-02-20 17:05:34","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("88","2019-02-20 17:06:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("89","2019-02-20 17:07:32","Master","1");

INSERT INTO tb_auditoria VALUES("90","2019-02-20 17:07:33","Master","1");

INSERT INTO tb_auditoria VALUES("91","2019-02-25 16:07:59","Master","1");

INSERT INTO tb_auditoria VALUES("92","2019-02-25 16:08:00","Master","1");

INSERT INTO tb_auditoria VALUES("93","2019-02-25 16:08:44","Master","1");

INSERT INTO tb_auditoria VALUES("94","2019-02-25 16:08:44","Master","1");

INSERT INTO tb_auditoria VALUES("95","2019-03-08 09:57:28","Master","1");

INSERT INTO tb_auditoria VALUES("96","2019-03-08 09:57:46","Master","1");

INSERT INTO tb_auditoria VALUES("97","2019-03-08 09:58:03","Master","1");

INSERT INTO tb_auditoria VALUES("98","2019-03-08 09:58:30","Master","1");

INSERT INTO tb_auditoria VALUES("99","2019-03-08 15:27:09","Master","1");

INSERT INTO tb_auditoria VALUES("100","2019-03-08 15:27:10","Master","1");

INSERT INTO tb_auditoria VALUES("101","2019-03-08 15:28:30","Master","1");

INSERT INTO tb_auditoria VALUES("102","2019-03-08 15:28:30","Master","1");

INSERT INTO tb_auditoria VALUES("103","2019-03-11 14:49:49","Master","1");

INSERT INTO tb_auditoria VALUES("104","2019-03-11 15:15:32","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("105","2019-03-11 15:36:26","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("106","2019-03-11 15:37:36","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("107","2019-03-11 16:33:47","Master","1");

INSERT INTO tb_auditoria VALUES("108","2019-03-11 16:33:47","Master","1");

INSERT INTO tb_auditoria VALUES("109","2019-03-11 16:34:01","Master","1");

INSERT INTO tb_auditoria VALUES("110","2019-03-11 16:34:01","Master","1");

INSERT INTO tb_auditoria VALUES("111","2019-03-11 16:57:48","Master","1");

INSERT INTO tb_auditoria VALUES("112","2019-03-11 17:06:17","Master","1");

INSERT INTO tb_auditoria VALUES("113","2019-03-11 17:06:50","Master","1");

INSERT INTO tb_auditoria VALUES("114","2019-03-11 17:06:50","Master","1");

INSERT INTO tb_auditoria VALUES("115","2019-03-11 17:07:12","Master","1");

INSERT INTO tb_auditoria VALUES("116","2019-03-11 17:07:12","Master","1");

INSERT INTO tb_auditoria VALUES("117","2019-03-13 15:53:08","Master","1");

INSERT INTO tb_auditoria VALUES("118","2019-03-13 15:53:08","Master","1");

INSERT INTO tb_auditoria VALUES("119","2019-03-13 16:37:08","Master","1");

INSERT INTO tb_auditoria VALUES("120","2019-03-20 13:40:47","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("121","2019-03-20 13:41:43","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("122","2019-03-20 13:41:43","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("123","2019-03-20 13:41:43","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("124","2019-03-20 13:41:44","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("125","2019-03-20 13:41:44","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("126","2019-03-20 13:41:44","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("127","2019-03-20 13:41:45","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("128","2019-03-20 13:41:45","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("129","2019-03-20 13:41:45","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("130","2019-03-20 13:41:46","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("131","2019-03-20 13:41:46","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("132","2019-03-20 13:41:46","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("133","2019-03-20 13:41:46","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("134","2019-03-20 13:41:47","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("135","2019-03-20 13:41:47","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("136","2019-03-20 13:41:48","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("137","2019-03-20 13:41:48","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("138","2019-03-20 13:41:48","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("139","2019-03-20 13:41:49","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("140","2019-03-20 13:41:49","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("141","2019-03-20 13:41:49","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("142","2019-03-20 13:41:49","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("143","2019-03-20 13:41:50","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("144","2019-03-20 13:41:50","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("145","2019-03-20 13:41:50","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("146","2019-03-20 13:41:51","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("147","2019-03-20 13:41:51","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("148","2019-03-20 13:41:51","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("149","2019-03-20 13:41:51","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("150","2019-03-20 13:41:52","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("151","2019-03-20 13:41:52","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("152","2019-03-20 13:41:52","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("153","2019-03-20 13:41:53","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("154","2019-03-20 13:41:53","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("155","2019-03-20 13:41:53","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("156","2019-03-20 13:41:53","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("157","2019-03-20 13:41:53","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("158","2019-03-20 13:41:54","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("159","2019-03-20 13:41:55","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("160","2019-03-20 13:41:56","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("161","2019-03-20 13:41:56","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("162","2019-03-20 13:41:57","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("163","2019-03-20 13:41:57","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("164","2019-03-20 13:41:57","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("165","2019-03-20 13:41:58","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("166","2019-03-20 13:41:58","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("167","2019-03-20 13:41:58","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("168","2019-03-20 13:41:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("169","2019-03-20 13:41:59","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("170","2019-03-20 13:42:00","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("171","2019-03-20 13:42:00","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("172","2019-03-20 13:42:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("173","2019-03-20 13:42:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("174","2019-03-20 13:42:01","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("175","2019-03-20 13:42:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("176","2019-03-20 13:42:02","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("177","2019-03-20 13:42:03","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("178","2019-03-20 13:42:03","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("179","2019-03-20 13:42:03","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("180","2019-03-20 13:42:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("181","2019-03-20 13:42:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("182","2019-03-20 13:42:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("183","2019-03-20 13:42:05","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("184","2019-03-20 13:42:05","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("185","2019-03-20 13:42:06","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("186","2019-03-20 13:42:06","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("187","2019-03-20 13:42:07","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("197","2019-03-20 14:08:42","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("198","2019-03-20 14:14:45","Master","1");

INSERT INTO tb_auditoria VALUES("199","2019-03-20 14:14:45","Master","1");

INSERT INTO tb_auditoria VALUES("200","2019-03-20 14:17:47","Master","1");

INSERT INTO tb_auditoria VALUES("201","2019-03-20 14:17:48","Master","1");

INSERT INTO tb_auditoria VALUES("202","2019-03-20 14:19:52","Master","1");

INSERT INTO tb_auditoria VALUES("203","2019-03-20 14:19:52","Master","1");

INSERT INTO tb_auditoria VALUES("204","2019-03-20 14:22:28","Master","1");

INSERT INTO tb_auditoria VALUES("205","2019-03-20 14:22:29","Master","1");

INSERT INTO tb_auditoria VALUES("206","2019-03-20 14:22:52","Master","1");

INSERT INTO tb_auditoria VALUES("207","2019-03-20 14:22:53","Master","1");

INSERT INTO tb_auditoria VALUES("208","2019-03-20 14:26:33","Master","1");

INSERT INTO tb_auditoria VALUES("209","2019-03-20 14:26:33","Master","1");

INSERT INTO tb_auditoria VALUES("210","2019-03-20 14:27:15","Master","1");

INSERT INTO tb_auditoria VALUES("211","2019-03-20 14:27:15","Master","1");

INSERT INTO tb_auditoria VALUES("212","2019-03-20 14:27:31","Master","1");

INSERT INTO tb_auditoria VALUES("213","2019-03-20 14:27:31","Master","1");

INSERT INTO tb_auditoria VALUES("214","2019-03-20 14:28:42","Master","1");

INSERT INTO tb_auditoria VALUES("215","2019-03-20 14:28:42","Master","1");

INSERT INTO tb_auditoria VALUES("216","2019-03-20 14:34:27","Master","1");

INSERT INTO tb_auditoria VALUES("217","2019-03-20 14:34:27","Master","1");

INSERT INTO tb_auditoria VALUES("218","2019-03-20 14:37:45","Master","1");

INSERT INTO tb_auditoria VALUES("219","2019-03-20 14:37:45","Master","1");

INSERT INTO tb_auditoria VALUES("220","2019-03-20 14:40:07","Master","1");

INSERT INTO tb_auditoria VALUES("221","2019-03-20 14:40:07","Master","1");

INSERT INTO tb_auditoria VALUES("222","2019-03-20 15:30:19","Master","1");

INSERT INTO tb_auditoria VALUES("227","2019-03-20 16:54:46","Gestor, Colaborador","8");




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=4933 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_itens VALUES("1064","19","","co_historia","141");

INSERT INTO tb_auditoria_itens VALUES("1065","Manter Cliente","Manter Cliente","ds_titulo","141");

INSERT INTO tb_auditoria_itens VALUES("1066","<p>Manter Cliente, Clientes recebem SMS com lembrete do hor&aacute;rio agendado, Integra&ccedil;&atilde;o com WhatsApp,</p>\n\n<p>Modelagem: Cliente (FK Assinante, pessoa, contato, endere&ccedil;o, foto)</p>","<p>Manter Cliente, Clientes recebem SMS com lembrete do hor&aacute;rio agendado, Integra&ccedil;&atilde;o com WhatsApp,</p>\n\n<p>Modelagem: Cliente (FK Assinante, pessoa, contato, endere&ccedil;o, foto)</p>","ds_observacao","141");

INSERT INTO tb_auditoria_itens VALUES("1067","2018-07-25 16:16:48","","dt_cadastro","141");

INSERT INTO tb_auditoria_itens VALUES("1068","2019-02-11 18:11:00","2019-02-12 12:09:39","dt_atualizado","141");

INSERT INTO tb_auditoria_itens VALUES("1069","I","C","st_situacao","141");

INSERT INTO tb_auditoria_itens VALUES("1070","11","11","co_sessao","141");

INSERT INTO tb_auditoria_itens VALUES("1071","","20","nu_esforco","142");

INSERT INTO tb_auditoria_itens VALUES("1072","","0","nu_esforco_restante","142");

INSERT INTO tb_auditoria_itens VALUES("1073","","2019-02-12 12:09:39","dt_cadastro","142");

INSERT INTO tb_auditoria_itens VALUES("1074","","19","co_historia","142");

INSERT INTO tb_auditoria_itens VALUES("1075","134","","co_historia","143");

INSERT INTO tb_auditoria_itens VALUES("1076","Configuração de Profissional","Configuração de Profissional","ds_titulo","143");

INSERT INTO tb_auditoria_itens VALUES("1077","<p>Receber Email de resumo de faturamento di&aacute;rio, agenda futura (Configurar periodo), edi&ccedil;&atilde;o dos servi&ccedil;os prestados, edi&ccedil;&atilde;o dos atendimento futuros.</p>","<p>Receber Email de resumo de faturamento di&aacute;rio, agenda futura (Configurar periodo), edi&ccedil;&atilde;o dos servi&ccedil;os prestados, edi&ccedil;&atilde;o dos atendimento futuros.</p>","ds_observacao","143");

INSERT INTO tb_auditoria_itens VALUES("1078","2018-11-27 13:45:17","","dt_cadastro","143");

INSERT INTO tb_auditoria_itens VALUES("1079","2018-11-27 13:45:17","2019-02-18 16:42:26","dt_atualizado","143");

INSERT INTO tb_auditoria_itens VALUES("1080","N","C","st_situacao","143");

INSERT INTO tb_auditoria_itens VALUES("1081","5","5","co_sessao","143");

INSERT INTO tb_auditoria_itens VALUES("1082","","5","nu_esforco","144");

INSERT INTO tb_auditoria_itens VALUES("1083","","0","nu_esforco_restante","144");

INSERT INTO tb_auditoria_itens VALUES("1084","","2019-02-18 16:42:26","dt_cadastro","144");

INSERT INTO tb_auditoria_itens VALUES("1085","","134","co_historia","144");

INSERT INTO tb_auditoria_itens VALUES("1086","","45","co_funcionalidade","145");

INSERT INTO tb_auditoria_itens VALUES("1087","","2","co_perfil","145");

INSERT INTO tb_auditoria_itens VALUES("1088","","4","nu_periodo_agenda","146");

INSERT INTO tb_auditoria_itens VALUES("1089","","S","st_recebe_email_faturamento","146");

INSERT INTO tb_auditoria_itens VALUES("1090","","S","st_edicao_servicos","146");

INSERT INTO tb_auditoria_itens VALUES("1091","","N","st_edicao_atendimento","146");

INSERT INTO tb_auditoria_itens VALUES("1092","","11","co_assinante","146");

INSERT INTO tb_auditoria_itens VALUES("1093","1","","co_config_profissional","147");

INSERT INTO tb_auditoria_itens VALUES("1094","S","N","st_recebe_email_faturamento","147");

INSERT INTO tb_auditoria_itens VALUES("1095","4","18","nu_periodo_agenda","147");

INSERT INTO tb_auditoria_itens VALUES("1096","S","N","st_edicao_servicos","147");

INSERT INTO tb_auditoria_itens VALUES("1097","N","N","st_edicao_atendimento","147");

INSERT INTO tb_auditoria_itens VALUES("1098","11","11","co_assinante","147");

INSERT INTO tb_auditoria_itens VALUES("1099","","46","co_funcionalidade","148");

INSERT INTO tb_auditoria_itens VALUES("1100","","2","co_perfil","148");

INSERT INTO tb_auditoria_itens VALUES("1101","","47","co_funcionalidade","149");

INSERT INTO tb_auditoria_itens VALUES("1102","","2","co_perfil","149");

INSERT INTO tb_auditoria_itens VALUES("1103","20","","co_profissional","150");

INSERT INTO tb_auditoria_itens VALUES("1104","2019-01-14 17:25:21","","dt_cadastro","150");

INSERT INTO tb_auditoria_itens VALUES("1105","#397B21","","ds_cor_agenda","150");

INSERT INTO tb_auditoria_itens VALUES("1106","S","","st_assistente","150");

INSERT INTO tb_auditoria_itens VALUES("1107","Representante comercial da Bartofil","","ds_sobre","150");

INSERT INTO tb_auditoria_itens VALUES("1108","Bigode","","no_apelido","150");

INSERT INTO tb_auditoria_itens VALUES("1109","S","","st_agenda","150");

INSERT INTO tb_auditoria_itens VALUES("1110","S","","st_agenda_online","150");

INSERT INTO tb_auditoria_itens VALUES("1111","I","A","st_status","150");

INSERT INTO tb_auditoria_itens VALUES("1112","1","","nu_ordem_agenda","150");

INSERT INTO tb_auditoria_itens VALUES("1113","2","","tp_contratacao","150");

INSERT INTO tb_auditoria_itens VALUES("1114","2018-12-17","","dt_admissao","150");

INSERT INTO tb_auditoria_itens VALUES("1115","0000-00-00","","dt_demissao","150");

INSERT INTO tb_auditoria_itens VALUES("1116","37","","co_imagem","150");

INSERT INTO tb_auditoria_itens VALUES("1117","76","","co_pessoa","150");

INSERT INTO tb_auditoria_itens VALUES("1118","49","","co_usuario","150");

INSERT INTO tb_auditoria_itens VALUES("1119","11","","co_assinante","150");

INSERT INTO tb_auditoria_itens VALUES("1120","42","","co_conta_bancaria","150");

INSERT INTO tb_auditoria_itens VALUES("1121","19","","co_profissional","151");

INSERT INTO tb_auditoria_itens VALUES("1122","2018-12-20 10:56:22","","dt_cadastro","151");

INSERT INTO tb_auditoria_itens VALUES("1123","#F7C6CE","","ds_cor_agenda","151");

INSERT INTO tb_auditoria_itens VALUES("1124","N","","st_assistente","151");

INSERT INTO tb_auditoria_itens VALUES("1125","SObre 22","","ds_sobre","151");

INSERT INTO tb_auditoria_itens VALUES("1126","meu apelido 22","","no_apelido","151");

INSERT INTO tb_auditoria_itens VALUES("1127","","TESTE DO MOTIVO","ds_motivo","151");

INSERT INTO tb_auditoria_itens VALUES("1128","S","","st_agenda","151");

INSERT INTO tb_auditoria_itens VALUES("1129","S","","st_agenda_online","151");

INSERT INTO tb_auditoria_itens VALUES("1130","A","I","st_status","151");

INSERT INTO tb_auditoria_itens VALUES("1131","2","","nu_ordem_agenda","151");

INSERT INTO tb_auditoria_itens VALUES("1132","3","","tp_contratacao","151");

INSERT INTO tb_auditoria_itens VALUES("1133","2018-12-19","","dt_admissao","151");

INSERT INTO tb_auditoria_itens VALUES("1134","0000-00-00","","dt_demissao","151");

INSERT INTO tb_auditoria_itens VALUES("1135","36","","co_imagem","151");

INSERT INTO tb_auditoria_itens VALUES("1136","74","","co_pessoa","151");

INSERT INTO tb_auditoria_itens VALUES("1137","47","","co_usuario","151");

INSERT INTO tb_auditoria_itens VALUES("1138","11","","co_assinante","151");

INSERT INTO tb_auditoria_itens VALUES("1139","40","","co_conta_bancaria","151");

INSERT INTO tb_auditoria_itens VALUES("1140","19","","co_profissional","152");

INSERT INTO tb_auditoria_itens VALUES("1141","2018-12-20 10:56:22","","dt_cadastro","152");

INSERT INTO tb_auditoria_itens VALUES("1142","#F7C6CE","","ds_cor_agenda","152");

INSERT INTO tb_auditoria_itens VALUES("1143","N","","st_assistente","152");

INSERT INTO tb_auditoria_itens VALUES("1144","SObre 22","","ds_sobre","152");

INSERT INTO tb_auditoria_itens VALUES("1145","meu apelido 22","","no_apelido","152");

INSERT INTO tb_auditoria_itens VALUES("1146","TESTE DO MOTIVO","","ds_motivo","152");

INSERT INTO tb_auditoria_itens VALUES("1147","S","","st_agenda","152");

INSERT INTO tb_auditoria_itens VALUES("1148","S","","st_agenda_online","152");

INSERT INTO tb_auditoria_itens VALUES("1149","I","A","st_status","152");

INSERT INTO tb_auditoria_itens VALUES("1150","2","","nu_ordem_agenda","152");

INSERT INTO tb_auditoria_itens VALUES("1151","3","","tp_contratacao","152");

INSERT INTO tb_auditoria_itens VALUES("1152","2018-12-19","","dt_admissao","152");

INSERT INTO tb_auditoria_itens VALUES("1153","0000-00-00","","dt_demissao","152");

INSERT INTO tb_auditoria_itens VALUES("1154","36","","co_imagem","152");

INSERT INTO tb_auditoria_itens VALUES("1155","74","","co_pessoa","152");

INSERT INTO tb_auditoria_itens VALUES("1156","47","","co_usuario","152");

INSERT INTO tb_auditoria_itens VALUES("1157","11","","co_assinante","152");

INSERT INTO tb_auditoria_itens VALUES("1158","40","","co_conta_bancaria","152");

INSERT INTO tb_auditoria_itens VALUES("1159","140","","co_historia","153");

INSERT INTO tb_auditoria_itens VALUES("1160","Mudar Status","Mudar Status","ds_titulo","153");

INSERT INTO tb_auditoria_itens VALUES("1161","<p>Mudar Status Ativo e inativo do Profissional</p>","<p>Mudar Status Ativo e inativo do Profissional</p>","ds_observacao","153");

INSERT INTO tb_auditoria_itens VALUES("1162","2018-12-20 13:42:59","","dt_cadastro","153");

INSERT INTO tb_auditoria_itens VALUES("1163","2018-12-20 13:42:59","2019-02-19 18:36:34","dt_atualizado","153");

INSERT INTO tb_auditoria_itens VALUES("1164","N","C","st_situacao","153");

INSERT INTO tb_auditoria_itens VALUES("1165","9","9","co_sessao","153");

INSERT INTO tb_auditoria_itens VALUES("1166","","5","nu_esforco","154");

INSERT INTO tb_auditoria_itens VALUES("1167","","0","nu_esforco_restante","154");

INSERT INTO tb_auditoria_itens VALUES("1168","","2019-02-19 18:36:34","dt_cadastro","154");

INSERT INTO tb_auditoria_itens VALUES("1169","","140","co_historia","154");

INSERT INTO tb_auditoria_itens VALUES("1170","21","","co_historia","155");

INSERT INTO tb_auditoria_itens VALUES("1171","Tabela base Categorias serviços","Tabela base Categorias serviços","ds_titulo","155");

INSERT INTO tb_auditoria_itens VALUES("1172","<p>Tabela base Categorias servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Tabela base Categorias servi&ccedil;os</p>","<p>Tabela base Categorias servi&ccedil;os</p>\n\n<p>&nbsp;</p>\n\n<p>Modelagem: Tabela base Categorias servi&ccedil;os</p>","ds_observacao","155");

INSERT INTO tb_auditoria_itens VALUES("1173","2018-07-25 16:21:25","","dt_cadastro","155");

INSERT INTO tb_auditoria_itens VALUES("1174","2018-07-25 16:21:25","2019-02-20 14:24:17","dt_atualizado","155");

INSERT INTO tb_auditoria_itens VALUES("1175","N","N","st_situacao","155");

INSERT INTO tb_auditoria_itens VALUES("1176","12","12","co_sessao","155");

INSERT INTO tb_auditoria_itens VALUES("1177","","3","nu_esforco","156");

INSERT INTO tb_auditoria_itens VALUES("1178","","3","nu_esforco_restante","156");

INSERT INTO tb_auditoria_itens VALUES("1179","","2019-02-20 14:24:17","dt_cadastro","156");

INSERT INTO tb_auditoria_itens VALUES("1180","","21","co_historia","156");

INSERT INTO tb_auditoria_itens VALUES("1181","20","","co_historia","157");

INSERT INTO tb_auditoria_itens VALUES("1182","Manter Categorias do Serviço","Manter Categorias do Serviço","ds_titulo","157");

INSERT INTO tb_auditoria_itens VALUES("1183","<p>Manter Categorias do Servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Cat. servico (FK Assinante)</p>","<p>Manter Categorias do Servi&ccedil;o</p>\n\n<p>Modelagem: Cat. servico (FK Assinante)</p>","ds_observacao","157");

INSERT INTO tb_auditoria_itens VALUES("1184","2018-07-25 16:19:34","","dt_cadastro","157");

INSERT INTO tb_auditoria_itens VALUES("1185","2018-07-25 16:19:34","2019-02-20 14:24:33","dt_atualizado","157");

INSERT INTO tb_auditoria_itens VALUES("1186","N","N","st_situacao","157");

INSERT INTO tb_auditoria_itens VALUES("1187","12","12","co_sessao","157");

INSERT INTO tb_auditoria_itens VALUES("1188","","5","nu_esforco","158");

INSERT INTO tb_auditoria_itens VALUES("1189","","5","nu_esforco_restante","158");

INSERT INTO tb_auditoria_itens VALUES("1190","","2019-02-20 14:24:33","dt_cadastro","158");

INSERT INTO tb_auditoria_itens VALUES("1191","","20","co_historia","158");

INSERT INTO tb_auditoria_itens VALUES("1192","20","","co_historia","159");

INSERT INTO tb_auditoria_itens VALUES("1193","Manter Categorias do Serviço","Manter Categorias do Serviço","ds_titulo","159");

INSERT INTO tb_auditoria_itens VALUES("1194","<p>Manter Categorias do Servi&ccedil;o</p>\n\n<p>Modelagem: Cat. servico (FK Assinante)</p>","<p>Manter Categorias do Servi&ccedil;o</p>\n\n<p>Modelagem: Cat. servico (FK Assinante)</p>","ds_observacao","159");

INSERT INTO tb_auditoria_itens VALUES("1195","2018-07-25 16:19:34","","dt_cadastro","159");

INSERT INTO tb_auditoria_itens VALUES("1196","2019-02-20 14:24:33","2019-02-20 14:57:53","dt_atualizado","159");

INSERT INTO tb_auditoria_itens VALUES("1197","N","N","st_situacao","159");

INSERT INTO tb_auditoria_itens VALUES("1198","12","12","co_sessao","159");

INSERT INTO tb_auditoria_itens VALUES("1199","","8","nu_esforco","160");

INSERT INTO tb_auditoria_itens VALUES("1200","","8","nu_esforco_restante","160");

INSERT INTO tb_auditoria_itens VALUES("1201","","2019-02-20 14:57:53","dt_cadastro","160");

INSERT INTO tb_auditoria_itens VALUES("1202","","20","co_historia","160");

INSERT INTO tb_auditoria_itens VALUES("1203","","Servico","no_controller","161");

INSERT INTO tb_auditoria_itens VALUES("1204","","fa fa-scissors","ds_class_icon","161");

INSERT INTO tb_auditoria_itens VALUES("1205","","48","co_funcionalidade","162");

INSERT INTO tb_auditoria_itens VALUES("1206","","2","co_perfil","162");

INSERT INTO tb_auditoria_itens VALUES("1207","","49","co_funcionalidade","163");

INSERT INTO tb_auditoria_itens VALUES("1208","","2","co_perfil","163");

INSERT INTO tb_auditoria_itens VALUES("1209","208","","co_perfil_funcionalidade","164");

INSERT INTO tb_auditoria_itens VALUES("1210","2","","co_perfil","164");

INSERT INTO tb_auditoria_itens VALUES("1211","48","","co_funcionalidade","164");

INSERT INTO tb_auditoria_itens VALUES("1212","","48","co_funcionalidade","165");

INSERT INTO tb_auditoria_itens VALUES("1213","","2","co_perfil","165");

INSERT INTO tb_auditoria_itens VALUES("1214","","11","co_assinante","166");

INSERT INTO tb_auditoria_itens VALUES("1215","","2019-02-20 16:22:59","dt_cadastro","166");

INSERT INTO tb_auditoria_itens VALUES("1216","","A","st_status","166");

INSERT INTO tb_auditoria_itens VALUES("1217","","Cabelo","no_categoria_servico","166");

INSERT INTO tb_auditoria_itens VALUES("1218","","11","co_assinante","167");

INSERT INTO tb_auditoria_itens VALUES("1219","","2019-02-20 16:22:59","dt_cadastro","167");

INSERT INTO tb_auditoria_itens VALUES("1220","","A","st_status","167");

INSERT INTO tb_auditoria_itens VALUES("1221","","Mãos e Pés","no_categoria_servico","167");

INSERT INTO tb_auditoria_itens VALUES("1222","","11","co_assinante","168");

INSERT INTO tb_auditoria_itens VALUES("1223","","2019-02-20 16:22:59","dt_cadastro","168");

INSERT INTO tb_auditoria_itens VALUES("1224","","A","st_status","168");

INSERT INTO tb_auditoria_itens VALUES("1225","","Maquiagem","no_categoria_servico","168");

INSERT INTO tb_auditoria_itens VALUES("1226","","11","co_assinante","169");

INSERT INTO tb_auditoria_itens VALUES("1227","","2019-02-20 16:22:59","dt_cadastro","169");

INSERT INTO tb_auditoria_itens VALUES("1228","","A","st_status","169");

INSERT INTO tb_auditoria_itens VALUES("1229","","Sobrancelha","no_categoria_servico","169");

INSERT INTO tb_auditoria_itens VALUES("1230","","11","co_assinante","170");

INSERT INTO tb_auditoria_itens VALUES("1231","","2019-02-20 16:22:59","dt_cadastro","170");

INSERT INTO tb_auditoria_itens VALUES("1232","","A","st_status","170");

INSERT INTO tb_auditoria_itens VALUES("1233","","barba","no_categoria_servico","170");

INSERT INTO tb_auditoria_itens VALUES("1234","","11","co_assinante","171");

INSERT INTO tb_auditoria_itens VALUES("1235","","2019-02-20 16:22:59","dt_cadastro","171");

INSERT INTO tb_auditoria_itens VALUES("1236","","A","st_status","171");

INSERT INTO tb_auditoria_itens VALUES("1237","","Estética Facial","no_categoria_servico","171");

INSERT INTO tb_auditoria_itens VALUES("1238","","11","co_assinante","172");

INSERT INTO tb_auditoria_itens VALUES("1239","","2019-02-20 16:22:59","dt_cadastro","172");

INSERT INTO tb_auditoria_itens VALUES("1240","","A","st_status","172");

INSERT INTO tb_auditoria_itens VALUES("1241","","Depilação","no_categoria_servico","172");

INSERT INTO tb_auditoria_itens VALUES("1242","","11","co_assinante","173");

INSERT INTO tb_auditoria_itens VALUES("1243","","2019-02-20 16:22:59","dt_cadastro","173");

INSERT INTO tb_auditoria_itens VALUES("1244","","A","st_status","173");

INSERT INTO tb_auditoria_itens VALUES("1245","","Emagrecimento","no_categoria_servico","173");

INSERT INTO tb_auditoria_itens VALUES("1246","","11","co_assinante","174");

INSERT INTO tb_auditoria_itens VALUES("1247","","2019-02-20 16:22:59","dt_cadastro","174");

INSERT INTO tb_auditoria_itens VALUES("1248","","A","st_status","174");

INSERT INTO tb_auditoria_itens VALUES("1249","","Fisioterapia","no_categoria_servico","174");

INSERT INTO tb_auditoria_itens VALUES("1250","","11","co_assinante","175");

INSERT INTO tb_auditoria_itens VALUES("1251","","2019-02-20 16:22:59","dt_cadastro","175");

INSERT INTO tb_auditoria_itens VALUES("1252","","A","st_status","175");

INSERT INTO tb_auditoria_itens VALUES("1253","","Massagem","no_categoria_servico","175");

INSERT INTO tb_auditoria_itens VALUES("1254","","11","co_assinante","176");

INSERT INTO tb_auditoria_itens VALUES("1255","","2019-02-20 16:22:59","dt_cadastro","176");

INSERT INTO tb_auditoria_itens VALUES("1256","","A","st_status","176");

INSERT INTO tb_auditoria_itens VALUES("1257","","Podologia","no_categoria_servico","176");

INSERT INTO tb_auditoria_itens VALUES("1258","","11","co_assinante","177");

INSERT INTO tb_auditoria_itens VALUES("1259","","2019-02-20 16:22:59","dt_cadastro","177");

INSERT INTO tb_auditoria_itens VALUES("1260","","A","st_status","177");

INSERT INTO tb_auditoria_itens VALUES("1261","","Terapia","no_categoria_servico","177");

INSERT INTO tb_auditoria_itens VALUES("1262","","11","co_assinante","178");

INSERT INTO tb_auditoria_itens VALUES("1263","","2019-02-20 16:22:59","dt_cadastro","178");

INSERT INTO tb_auditoria_itens VALUES("1264","","A","st_status","178");

INSERT INTO tb_auditoria_itens VALUES("1265","","Tratamento","no_categoria_servico","178");

INSERT INTO tb_auditoria_itens VALUES("1266","","11","co_assinante","179");

INSERT INTO tb_auditoria_itens VALUES("1267","","2019-02-20 16:22:59","dt_cadastro","179");

INSERT INTO tb_auditoria_itens VALUES("1268","","A","st_status","179");

INSERT INTO tb_auditoria_itens VALUES("1269","","Lifting","no_categoria_servico","179");

INSERT INTO tb_auditoria_itens VALUES("1270","","nova cat","no_categoria_servico","180");

INSERT INTO tb_auditoria_itens VALUES("1271","","A","st_status","180");

INSERT INTO tb_auditoria_itens VALUES("1272","","11","co_assinante","180");

INSERT INTO tb_auditoria_itens VALUES("1273","","2019-02-20 17:01:04","dt_cadastro","180");

INSERT INTO tb_auditoria_itens VALUES("1274","","nova cat 22","no_categoria_servico","181");

INSERT INTO tb_auditoria_itens VALUES("1275","","I","st_status","181");

INSERT INTO tb_auditoria_itens VALUES("1276","","11","co_assinante","181");

INSERT INTO tb_auditoria_itens VALUES("1277","","2019-02-20 17:01:37","dt_cadastro","181");

INSERT INTO tb_auditoria_itens VALUES("1278","15","","co_categoria_servico","182");

INSERT INTO tb_auditoria_itens VALUES("1279","nova cat","nova catEGORIA NOVINHA","no_categoria_servico","182");

INSERT INTO tb_auditoria_itens VALUES("1280","2019-02-20 17:01:04","","dt_cadastro","182");

INSERT INTO tb_auditoria_itens VALUES("1281","A","I","st_status","182");

INSERT INTO tb_auditoria_itens VALUES("1282","11","","co_assinante","182");

INSERT INTO tb_auditoria_itens VALUES("1283","16","","co_categoria_servico","183");

INSERT INTO tb_auditoria_itens VALUES("1284","nova cat 22","100200","no_categoria_servico","183");

INSERT INTO tb_auditoria_itens VALUES("1285","2019-02-20 17:01:37","","dt_cadastro","183");

INSERT INTO tb_auditoria_itens VALUES("1286","I","A","st_status","183");

INSERT INTO tb_auditoria_itens VALUES("1287","11","","co_assinante","183");

INSERT INTO tb_auditoria_itens VALUES("1288","20","","co_historia","184");

INSERT INTO tb_auditoria_itens VALUES("1289","Manter Categorias do Serviço","Manter Categorias do Serviço","ds_titulo","184");

INSERT INTO tb_auditoria_itens VALUES("1290","<p>Manter Categorias do Servi&ccedil;o</p>\n\n<p>Modelagem: Cat. servico (FK Assinante)</p>","<p>Manter Categorias do Servi&ccedil;o</p>\n\n<p>Modelagem: Cat. servico (FK Assinante) e inicializa&ccedil;&atilde;o das categorias de base</p>","ds_observacao","184");

INSERT INTO tb_auditoria_itens VALUES("1291","2018-07-25 16:19:34","","dt_cadastro","184");

INSERT INTO tb_auditoria_itens VALUES("1292","2019-02-20 14:57:53","2019-02-20 17:07:32","dt_atualizado","184");

INSERT INTO tb_auditoria_itens VALUES("1293","N","C","st_situacao","184");

INSERT INTO tb_auditoria_itens VALUES("1294","12","12","co_sessao","184");

INSERT INTO tb_auditoria_itens VALUES("1295","","8","nu_esforco","185");

INSERT INTO tb_auditoria_itens VALUES("1296","","0","nu_esforco_restante","185");

INSERT INTO tb_auditoria_itens VALUES("1297","","2019-02-20 17:07:32","dt_cadastro","185");

INSERT INTO tb_auditoria_itens VALUES("1298","","20","co_historia","185");

INSERT INTO tb_auditoria_itens VALUES("1299","45","","co_historia","186");

INSERT INTO tb_auditoria_itens VALUES("1300","Tabela base serviços","Tabela base serviços","ds_titulo","186");

INSERT INTO tb_auditoria_itens VALUES("1301","<p>Tabela base servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Servi&ccedil;os Base</p>","<p>Tabela base servi&ccedil;os</p>\n\n<p>Modelagem: Servi&ccedil;os Base, inicio servi&ccedil;os b&aacute;sicos e Tabela Pre&ccedil;o Servi&ccedil;o</p>","ds_observacao","186");

INSERT INTO tb_auditoria_itens VALUES("1302","2018-07-25 18:43:26","","dt_cadastro","186");

INSERT INTO tb_auditoria_itens VALUES("1303","2018-07-25 18:43:26","2019-02-25 16:07:59","dt_atualizado","186");

INSERT INTO tb_auditoria_itens VALUES("1304","N","N","st_situacao","186");

INSERT INTO tb_auditoria_itens VALUES("1305","12","12","co_sessao","186");

INSERT INTO tb_auditoria_itens VALUES("1306","","20","nu_esforco","187");

INSERT INTO tb_auditoria_itens VALUES("1307","","20","nu_esforco_restante","187");

INSERT INTO tb_auditoria_itens VALUES("1308","","2019-02-25 16:07:59","dt_cadastro","187");

INSERT INTO tb_auditoria_itens VALUES("1309","","45","co_historia","187");

INSERT INTO tb_auditoria_itens VALUES("1310","45","","co_historia","188");

INSERT INTO tb_auditoria_itens VALUES("1311","Tabela base serviços","Tabela base serviços","ds_titulo","188");

INSERT INTO tb_auditoria_itens VALUES("1312","<p>Tabela base servi&ccedil;os</p>\n\n<p>Modelagem: Servi&ccedil;os Base, inicio servi&ccedil;os b&aacute;sicos e Tabela Pre&ccedil;o Servi&ccedil;o</p>","<p>Tabela base servi&ccedil;os</p>\n\n<p>Modelagem: Servi&ccedil;os Base, inicio servi&ccedil;os b&aacute;sicos e Tabela Pre&ccedil;o Servi&ccedil;o, inicializar categorias de servi&ccedil;os se preciso</p>","ds_observacao","188");

INSERT INTO tb_auditoria_itens VALUES("1313","2018-07-25 18:43:26","","dt_cadastro","188");

INSERT INTO tb_auditoria_itens VALUES("1314","2019-02-25 16:07:59","2019-02-25 16:08:44","dt_atualizado","188");

INSERT INTO tb_auditoria_itens VALUES("1315","N","I","st_situacao","188");

INSERT INTO tb_auditoria_itens VALUES("1316","12","12","co_sessao","188");

INSERT INTO tb_auditoria_itens VALUES("1317","","30","nu_esforco","189");

INSERT INTO tb_auditoria_itens VALUES("1318","","25","nu_esforco_restante","189");

INSERT INTO tb_auditoria_itens VALUES("1319","","2019-02-25 16:08:44","dt_cadastro","189");

INSERT INTO tb_auditoria_itens VALUES("1320","","45","co_historia","189");

INSERT INTO tb_auditoria_itens VALUES("1321","","Profissional","no_perfil","190");

INSERT INTO tb_auditoria_itens VALUES("1322","","4","co_perfil","191");

INSERT INTO tb_auditoria_itens VALUES("1323","","12","co_funcionalidade","191");

INSERT INTO tb_auditoria_itens VALUES("1324","","4","co_perfil","192");

INSERT INTO tb_auditoria_itens VALUES("1325","","6","co_funcionalidade","192");

INSERT INTO tb_auditoria_itens VALUES("1326","","4","co_perfil","193");

INSERT INTO tb_auditoria_itens VALUES("1327","","4","co_funcionalidade","193");

INSERT INTO tb_auditoria_itens VALUES("1328","4","","co_perfil","194");

INSERT INTO tb_auditoria_itens VALUES("1329","Profissional","Profissional","no_perfil","194");

INSERT INTO tb_auditoria_itens VALUES("1330","A","","st_status","194");

INSERT INTO tb_auditoria_itens VALUES("1331","158","","co_perfil_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1332","4","","co_perfil","195");

INSERT INTO tb_auditoria_itens VALUES("1333","26","","co_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1334","211","","co_perfil_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1335","4","","co_perfil","195");

INSERT INTO tb_auditoria_itens VALUES("1336","12","","co_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1337","212","","co_perfil_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1338","4","","co_perfil","195");

INSERT INTO tb_auditoria_itens VALUES("1339","6","","co_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1340","213","","co_perfil_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1341","4","","co_perfil","195");

INSERT INTO tb_auditoria_itens VALUES("1342","4","","co_funcionalidade","195");

INSERT INTO tb_auditoria_itens VALUES("1343","","4","co_perfil","196");

INSERT INTO tb_auditoria_itens VALUES("1344","","12","co_funcionalidade","196");

INSERT INTO tb_auditoria_itens VALUES("1345","","4","co_perfil","197");

INSERT INTO tb_auditoria_itens VALUES("1346","","6","co_funcionalidade","197");

INSERT INTO tb_auditoria_itens VALUES("1347","","4","co_perfil","198");

INSERT INTO tb_auditoria_itens VALUES("1348","","4","co_funcionalidade","198");

INSERT INTO tb_auditoria_itens VALUES("1349","3","","co_perfil","199");

INSERT INTO tb_auditoria_itens VALUES("1350","Colaborador","Colaborador","no_perfil","199");

INSERT INTO tb_auditoria_itens VALUES("1351","A","","st_status","199");

INSERT INTO tb_auditoria_itens VALUES("1352","167","","co_perfil_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1353","3","","co_perfil","200");

INSERT INTO tb_auditoria_itens VALUES("1354","28","","co_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1355","188","","co_perfil_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1356","3","","co_perfil","200");

INSERT INTO tb_auditoria_itens VALUES("1357","12","","co_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1358","191","","co_perfil_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1359","3","","co_perfil","200");

INSERT INTO tb_auditoria_itens VALUES("1360","6","","co_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1361","198","","co_perfil_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1362","3","","co_perfil","200");

INSERT INTO tb_auditoria_itens VALUES("1363","41","","co_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1364","201","","co_perfil_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1365","3","","co_perfil","200");

INSERT INTO tb_auditoria_itens VALUES("1366","44","","co_funcionalidade","200");

INSERT INTO tb_auditoria_itens VALUES("1367","","3","co_perfil","201");

INSERT INTO tb_auditoria_itens VALUES("1368","","44","co_funcionalidade","201");

INSERT INTO tb_auditoria_itens VALUES("1369","","3","co_perfil","202");

INSERT INTO tb_auditoria_itens VALUES("1370","","12","co_funcionalidade","202");

INSERT INTO tb_auditoria_itens VALUES("1371","","3","co_perfil","203");

INSERT INTO tb_auditoria_itens VALUES("1372","","6","co_funcionalidade","203");

INSERT INTO tb_auditoria_itens VALUES("1373","2","","co_perfil","204");

INSERT INTO tb_auditoria_itens VALUES("1374","Gestor","Gestor","no_perfil","204");

INSERT INTO tb_auditoria_itens VALUES("1375","A","","st_status","204");

INSERT INTO tb_auditoria_itens VALUES("1376","21","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1377","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1378","24","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1379","155","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1380","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1381","26","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1382","168","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1383","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1384","28","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1385","170","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1386","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1387","22","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1388","171","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1389","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1390","21","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1391","172","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1392","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1393","20","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1394","173","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1395","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1396","19","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1397","174","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1398","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1399","18","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1400","175","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1401","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1402","17","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1403","176","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1404","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1405","16","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1406","177","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1407","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1408","15","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1409","179","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1410","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1411","13","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1412","182","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1413","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1414","8","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1415","183","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1416","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1417","7","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1418","186","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1419","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1420","5","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1421","187","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1422","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1423","4","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1424","189","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1425","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1426","12","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1427","190","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1428","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1429","14","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1430","192","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1431","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1432","6","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1433","193","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1434","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1435","27","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1436","197","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1437","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1438","42","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1439","199","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1440","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1441","41","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1442","202","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1443","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1444","44","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1445","203","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1446","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1447","43","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1448","204","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1449","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1450","23","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1451","205","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1452","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1453","45","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1454","206","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1455","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1456","46","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1457","207","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1458","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1459","47","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1460","209","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1461","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1462","49","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1463","210","","co_perfil_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1464","2","","co_perfil","205");

INSERT INTO tb_auditoria_itens VALUES("1465","48","","co_funcionalidade","205");

INSERT INTO tb_auditoria_itens VALUES("1466","","2","co_perfil","206");

INSERT INTO tb_auditoria_itens VALUES("1467","","49","co_funcionalidade","206");

INSERT INTO tb_auditoria_itens VALUES("1468","","2","co_perfil","207");

INSERT INTO tb_auditoria_itens VALUES("1469","","48","co_funcionalidade","207");

INSERT INTO tb_auditoria_itens VALUES("1470","","2","co_perfil","208");

INSERT INTO tb_auditoria_itens VALUES("1471","","47","co_funcionalidade","208");

INSERT INTO tb_auditoria_itens VALUES("1472","","2","co_perfil","209");

INSERT INTO tb_auditoria_itens VALUES("1473","","46","co_funcionalidade","209");

INSERT INTO tb_auditoria_itens VALUES("1474","","2","co_perfil","210");

INSERT INTO tb_auditoria_itens VALUES("1475","","45","co_funcionalidade","210");

INSERT INTO tb_auditoria_itens VALUES("1476","","2","co_perfil","211");

INSERT INTO tb_auditoria_itens VALUES("1477","","44","co_funcionalidade","211");

INSERT INTO tb_auditoria_itens VALUES("1478","","2","co_perfil","212");

INSERT INTO tb_auditoria_itens VALUES("1479","","43","co_funcionalidade","212");

INSERT INTO tb_auditoria_itens VALUES("1480","","2","co_perfil","213");

INSERT INTO tb_auditoria_itens VALUES("1481","","27","co_funcionalidade","213");

INSERT INTO tb_auditoria_itens VALUES("1482","","2","co_perfil","214");

INSERT INTO tb_auditoria_itens VALUES("1483","","26","co_funcionalidade","214");

INSERT INTO tb_auditoria_itens VALUES("1484","","2","co_perfil","215");

INSERT INTO tb_auditoria_itens VALUES("1485","","24","co_funcionalidade","215");

INSERT INTO tb_auditoria_itens VALUES("1486","","2","co_perfil","216");

INSERT INTO tb_auditoria_itens VALUES("1487","","23","co_funcionalidade","216");

INSERT INTO tb_auditoria_itens VALUES("1488","","2","co_perfil","217");

INSERT INTO tb_auditoria_itens VALUES("1489","","22","co_funcionalidade","217");

INSERT INTO tb_auditoria_itens VALUES("1490","","2","co_perfil","218");

INSERT INTO tb_auditoria_itens VALUES("1491","","21","co_funcionalidade","218");

INSERT INTO tb_auditoria_itens VALUES("1492","","2","co_perfil","219");

INSERT INTO tb_auditoria_itens VALUES("1493","","20","co_funcionalidade","219");

INSERT INTO tb_auditoria_itens VALUES("1494","","2","co_perfil","220");

INSERT INTO tb_auditoria_itens VALUES("1495","","19","co_funcionalidade","220");

INSERT INTO tb_auditoria_itens VALUES("1496","","2","co_perfil","221");

INSERT INTO tb_auditoria_itens VALUES("1497","","18","co_funcionalidade","221");

INSERT INTO tb_auditoria_itens VALUES("1498","","2","co_perfil","222");

INSERT INTO tb_auditoria_itens VALUES("1499","","17","co_funcionalidade","222");

INSERT INTO tb_auditoria_itens VALUES("1500","","2","co_perfil","223");

INSERT INTO tb_auditoria_itens VALUES("1501","","16","co_funcionalidade","223");

INSERT INTO tb_auditoria_itens VALUES("1502","","2","co_perfil","224");

INSERT INTO tb_auditoria_itens VALUES("1503","","15","co_funcionalidade","224");

INSERT INTO tb_auditoria_itens VALUES("1504","","2","co_perfil","225");

INSERT INTO tb_auditoria_itens VALUES("1505","","14","co_funcionalidade","225");

INSERT INTO tb_auditoria_itens VALUES("1506","","2","co_perfil","226");

INSERT INTO tb_auditoria_itens VALUES("1507","","13","co_funcionalidade","226");

INSERT INTO tb_auditoria_itens VALUES("1508","","2","co_perfil","227");

INSERT INTO tb_auditoria_itens VALUES("1509","","12","co_funcionalidade","227");

INSERT INTO tb_auditoria_itens VALUES("1510","","2","co_perfil","228");

INSERT INTO tb_auditoria_itens VALUES("1511","","8","co_funcionalidade","228");

INSERT INTO tb_auditoria_itens VALUES("1512","","2","co_perfil","229");

INSERT INTO tb_auditoria_itens VALUES("1513","","7","co_funcionalidade","229");

INSERT INTO tb_auditoria_itens VALUES("1514","","2","co_perfil","230");

INSERT INTO tb_auditoria_itens VALUES("1515","","6","co_funcionalidade","230");

INSERT INTO tb_auditoria_itens VALUES("1516","","2","co_perfil","231");

INSERT INTO tb_auditoria_itens VALUES("1517","","5","co_funcionalidade","231");

INSERT INTO tb_auditoria_itens VALUES("1518","","2","co_perfil","232");

INSERT INTO tb_auditoria_itens VALUES("1519","","4","co_funcionalidade","232");

INSERT INTO tb_auditoria_itens VALUES("1520","74","","co_historia","233");

INSERT INTO tb_auditoria_itens VALUES("1521","Criar Histórias Módulos Lançamento do Sistema Da Beleaza e Site","Criar Histórias Módulos Lançamento do Sistema Da Beleaza e Site","ds_titulo","233");

INSERT INTO tb_auditoria_itens VALUES("1522","<p>Criar Hist&oacute;rias M&oacute;dulos Lan&ccedil;amento do Sistema Da Beleaza e Site</p>","<p>Criar Hist&oacute;rias M&oacute;dulos Lan&ccedil;amento do Sistema Da Beleaza e Site</p>","ds_observacao","233");

INSERT INTO tb_auditoria_itens VALUES("1523","2018-07-26 18:13:56","","dt_cadastro","233");

INSERT INTO tb_auditoria_itens VALUES("1524","2018-07-26 18:15:35","2019-03-08 15:27:09","dt_atualizado","233");

INSERT INTO tb_auditoria_itens VALUES("1525","I","I","st_situacao","233");

INSERT INTO tb_auditoria_itens VALUES("1526","25","25","co_sessao","233");

INSERT INTO tb_auditoria_itens VALUES("1527","","13","nu_esforco","234");

INSERT INTO tb_auditoria_itens VALUES("1528","","1","nu_esforco_restante","234");

INSERT INTO tb_auditoria_itens VALUES("1529","","2019-03-08 15:27:09","dt_cadastro","234");

INSERT INTO tb_auditoria_itens VALUES("1530","","74","co_historia","234");

INSERT INTO tb_auditoria_itens VALUES("1531","84","","co_historia","235");

INSERT INTO tb_auditoria_itens VALUES("1532","Manter Perfil","Manter Perfil","ds_titulo","235");

INSERT INTO tb_auditoria_itens VALUES("1533","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>\n\n<p>&nbsp;</p>\n\n<p>Tabela Perfil Base</p>","ds_observacao","235");

INSERT INTO tb_auditoria_itens VALUES("1534","2018-07-26 22:16:38","","dt_cadastro","235");

INSERT INTO tb_auditoria_itens VALUES("1535","2018-07-26 22:16:38","2019-03-08 15:28:30","dt_atualizado","235");

INSERT INTO tb_auditoria_itens VALUES("1536","N","N","st_situacao","235");

INSERT INTO tb_auditoria_itens VALUES("1537","29","29","co_sessao","235");

INSERT INTO tb_auditoria_itens VALUES("1538","","30","nu_esforco","236");

INSERT INTO tb_auditoria_itens VALUES("1539","","30","nu_esforco_restante","236");

INSERT INTO tb_auditoria_itens VALUES("1540","","2019-03-08 15:28:30","dt_cadastro","236");

INSERT INTO tb_auditoria_itens VALUES("1541","","84","co_historia","236");

INSERT INTO tb_auditoria_itens VALUES("1542","4","","co_perfil","237");

INSERT INTO tb_auditoria_itens VALUES("1543","Profissional","","no_perfil","237");

INSERT INTO tb_auditoria_itens VALUES("1544","A","","st_status","237");

INSERT INTO tb_auditoria_itens VALUES("1545","","TESTE 33","no_perfil","238");

INSERT INTO tb_auditoria_itens VALUES("1546","","11","co_assinante","238");

INSERT INTO tb_auditoria_itens VALUES("1547","","A","st_status","238");

INSERT INTO tb_auditoria_itens VALUES("1548","","1","co_perfil_assinante","239");

INSERT INTO tb_auditoria_itens VALUES("1549","","48","co_funcionalidade","239");

INSERT INTO tb_auditoria_itens VALUES("1550","1","","co_perfil_assinante","240");

INSERT INTO tb_auditoria_itens VALUES("1551","TESTE 33","Profissional","no_perfil","240");

INSERT INTO tb_auditoria_itens VALUES("1552","A","A","st_status","240");

INSERT INTO tb_auditoria_itens VALUES("1553","11","11","co_assinante","240");

INSERT INTO tb_auditoria_itens VALUES("1554","247","","co_perfil_funcionalidade","241");

INSERT INTO tb_auditoria_itens VALUES("1555","48","","co_funcionalidade","241");

INSERT INTO tb_auditoria_itens VALUES("1556","0","","co_perfil","241");

INSERT INTO tb_auditoria_itens VALUES("1557","1","","co_perfil_assinante","241");

INSERT INTO tb_auditoria_itens VALUES("1558","1","","co_perfil_assinante","242");

INSERT INTO tb_auditoria_itens VALUES("1559","Profissional","Profissional","no_perfil","242");

INSERT INTO tb_auditoria_itens VALUES("1560","A","A","st_status","242");

INSERT INTO tb_auditoria_itens VALUES("1561","11","11","co_assinante","242");

INSERT INTO tb_auditoria_itens VALUES("1562","","1","co_perfil_assinante","244");

INSERT INTO tb_auditoria_itens VALUES("1563","","49","co_funcionalidade","244");

INSERT INTO tb_auditoria_itens VALUES("1564","84","","co_historia","245");

INSERT INTO tb_auditoria_itens VALUES("1565","Manter Perfil","Manter Perfil","ds_titulo","245");

INSERT INTO tb_auditoria_itens VALUES("1566","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>\n\n<p>&nbsp;</p>\n\n<p>Tabela Perfil Base</p>","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>\n\n<p>&nbsp;</p>\n\n<p>Tabela Perfil Base</p>","ds_observacao","245");

INSERT INTO tb_auditoria_itens VALUES("1567","2018-07-26 22:16:38","","dt_cadastro","245");

INSERT INTO tb_auditoria_itens VALUES("1568","2019-03-08 15:28:30","2019-03-11 16:33:47","dt_atualizado","245");

INSERT INTO tb_auditoria_itens VALUES("1569","N","I","st_situacao","245");

INSERT INTO tb_auditoria_itens VALUES("1570","29","29","co_sessao","245");

INSERT INTO tb_auditoria_itens VALUES("1571","","30","nu_esforco","246");

INSERT INTO tb_auditoria_itens VALUES("1572","","8","nu_esforco_restante","246");

INSERT INTO tb_auditoria_itens VALUES("1573","","2019-03-11 16:33:47","dt_cadastro","246");

INSERT INTO tb_auditoria_itens VALUES("1574","","84","co_historia","246");

INSERT INTO tb_auditoria_itens VALUES("1575","84","","co_historia","247");

INSERT INTO tb_auditoria_itens VALUES("1576","Manter Perfil","Manter Perfil","ds_titulo","247");

INSERT INTO tb_auditoria_itens VALUES("1577","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>\n\n<p>&nbsp;</p>\n\n<p>Tabela Perfil Base</p>","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>\n\n<p>&nbsp;</p>\n\n<p>Tabela Perfil Base</p>","ds_observacao","247");

INSERT INTO tb_auditoria_itens VALUES("1578","2018-07-26 22:16:38","","dt_cadastro","247");

INSERT INTO tb_auditoria_itens VALUES("1579","2019-03-11 16:33:47","2019-03-11 16:34:01","dt_atualizado","247");

INSERT INTO tb_auditoria_itens VALUES("1580","I","I","st_situacao","247");

INSERT INTO tb_auditoria_itens VALUES("1581","29","29","co_sessao","247");

INSERT INTO tb_auditoria_itens VALUES("1582","","20","nu_esforco","248");

INSERT INTO tb_auditoria_itens VALUES("1583","","5","nu_esforco_restante","248");

INSERT INTO tb_auditoria_itens VALUES("1584","","2019-03-11 16:34:01","dt_cadastro","248");

INSERT INTO tb_auditoria_itens VALUES("1585","","84","co_historia","248");

INSERT INTO tb_auditoria_itens VALUES("1586","","Criar Perfil de Profissional","ds_titulo","249");

INSERT INTO tb_auditoria_itens VALUES("1587","","84","co_historia","249");

INSERT INTO tb_auditoria_itens VALUES("1588","","<p>Criar Perfil de Profissional autom&aacute;tico onde ao cadastrar um profissional ele ja vem com o perfil de profissional e ja suas funcionalidades b&aacute;sicas cadastradas</p>","ds_observacao","249");

INSERT INTO tb_auditoria_itens VALUES("1589","","2019-03-11 16:57:48","dt_cadastro","249");

INSERT INTO tb_auditoria_itens VALUES("1590","","Usuário","no_sessao","250");

INSERT INTO tb_auditoria_itens VALUES("1591","","2","co_modulo","250");

INSERT INTO tb_auditoria_itens VALUES("1592","","2019-03-11 17:06:17","dt_cadastro","250");

INSERT INTO tb_auditoria_itens VALUES("1593","","Manter Usuário Assinante","ds_titulo","251");

INSERT INTO tb_auditoria_itens VALUES("1594","","<p>Manter Usu&aacute;rio Assinante</p>","ds_observacao","251");

INSERT INTO tb_auditoria_itens VALUES("1595","","33","co_sessao","251");

INSERT INTO tb_auditoria_itens VALUES("1596","","I","st_situacao","251");

INSERT INTO tb_auditoria_itens VALUES("1597","","2019-03-11 17:06:50","dt_atualizado","251");

INSERT INTO tb_auditoria_itens VALUES("1598","","2019-03-11 17:06:50","dt_cadastro","251");

INSERT INTO tb_auditoria_itens VALUES("1599","","13","nu_esforco","252");

INSERT INTO tb_auditoria_itens VALUES("1600","","3","nu_esforco_restante","252");

INSERT INTO tb_auditoria_itens VALUES("1601","","2019-03-11 17:06:50","dt_cadastro","252");

INSERT INTO tb_auditoria_itens VALUES("1602","","141","co_historia","252");

INSERT INTO tb_auditoria_itens VALUES("1603","","Manter Usuário Comum","ds_titulo","253");

INSERT INTO tb_auditoria_itens VALUES("1604","","<p>Manter Usu&aacute;rio Comum</p>","ds_observacao","253");

INSERT INTO tb_auditoria_itens VALUES("1605","","33","co_sessao","253");

INSERT INTO tb_auditoria_itens VALUES("1606","","I","st_situacao","253");

INSERT INTO tb_auditoria_itens VALUES("1607","","2019-03-11 17:07:12","dt_atualizado","253");

INSERT INTO tb_auditoria_itens VALUES("1608","","2019-03-11 17:07:12","dt_cadastro","253");

INSERT INTO tb_auditoria_itens VALUES("1609","","8","nu_esforco","254");

INSERT INTO tb_auditoria_itens VALUES("1610","","5","nu_esforco_restante","254");

INSERT INTO tb_auditoria_itens VALUES("1611","","2019-03-11 17:07:12","dt_cadastro","254");

INSERT INTO tb_auditoria_itens VALUES("1612","","142","co_historia","254");

INSERT INTO tb_auditoria_itens VALUES("1613","","Manter Planos do Assinante","ds_titulo","255");

INSERT INTO tb_auditoria_itens VALUES("1614","","<p>Manter Planos do Assinante, alterar seu plano aumentando o plano</p>","ds_observacao","255");

INSERT INTO tb_auditoria_itens VALUES("1615","","1","co_sessao","255");

INSERT INTO tb_auditoria_itens VALUES("1616","","N","st_situacao","255");

INSERT INTO tb_auditoria_itens VALUES("1617","","2019-03-13 15:53:08","dt_atualizado","255");

INSERT INTO tb_auditoria_itens VALUES("1618","","2019-03-13 15:53:08","dt_cadastro","255");

INSERT INTO tb_auditoria_itens VALUES("1619","","13","nu_esforco","256");

INSERT INTO tb_auditoria_itens VALUES("1620","","13","nu_esforco_restante","256");

INSERT INTO tb_auditoria_itens VALUES("1621","","2019-03-13 15:53:08","dt_cadastro","256");

INSERT INTO tb_auditoria_itens VALUES("1622","","143","co_historia","256");

INSERT INTO tb_auditoria_itens VALUES("1623","","60","co_funcionalidade","257");

INSERT INTO tb_auditoria_itens VALUES("1624","","2","co_perfil","257");

INSERT INTO tb_auditoria_itens VALUES("1625","","2019-03-20 13:40:47","dt_cadastro","258");

INSERT INTO tb_auditoria_itens VALUES("1626","","A","st_status","258");

INSERT INTO tb_auditoria_itens VALUES("1627","","Coloração / Tonalização","no_servico","258");

INSERT INTO tb_auditoria_itens VALUES("1628","","120","nu_duracao","258");

INSERT INTO tb_auditoria_itens VALUES("1629","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","258");

INSERT INTO tb_auditoria_itens VALUES("1630","","1","co_categoria_servico","258");

INSERT INTO tb_auditoria_itens VALUES("1631","","11","co_assinante","259");

INSERT INTO tb_auditoria_itens VALUES("1632","","2019-03-20 13:41:42","dt_cadastro","259");

INSERT INTO tb_auditoria_itens VALUES("1633","","A","st_status","259");

INSERT INTO tb_auditoria_itens VALUES("1634","","Cabelo","no_categoria_servico","259");

INSERT INTO tb_auditoria_itens VALUES("1635","","1","co_categoria_servico","260");

INSERT INTO tb_auditoria_itens VALUES("1636","","2019-03-20 13:41:43","dt_cadastro","260");

INSERT INTO tb_auditoria_itens VALUES("1637","","A","st_status","260");

INSERT INTO tb_auditoria_itens VALUES("1638","","Coloração / Tonalização","no_servico","260");

INSERT INTO tb_auditoria_itens VALUES("1639","","120","nu_duracao","260");

INSERT INTO tb_auditoria_itens VALUES("1640","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","260");

INSERT INTO tb_auditoria_itens VALUES("1641","","2","co_servico","261");

INSERT INTO tb_auditoria_itens VALUES("1642","","2019-03-20 13:41:43","dt_cadastro","261");

INSERT INTO tb_auditoria_itens VALUES("1643","","39.9","nu_valor","261");

INSERT INTO tb_auditoria_itens VALUES("1644","","Serviço Inicial","ds_observacao","261");

INSERT INTO tb_auditoria_itens VALUES("1645","","1","co_categoria_servico","262");

INSERT INTO tb_auditoria_itens VALUES("1646","","2019-03-20 13:41:44","dt_cadastro","262");

INSERT INTO tb_auditoria_itens VALUES("1647","","A","st_status","262");

INSERT INTO tb_auditoria_itens VALUES("1648","","Coloração / Tonalização","no_servico","262");

INSERT INTO tb_auditoria_itens VALUES("1649","","120","nu_duracao","262");

INSERT INTO tb_auditoria_itens VALUES("1650","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","262");

INSERT INTO tb_auditoria_itens VALUES("1651","","3","co_servico","263");

INSERT INTO tb_auditoria_itens VALUES("1652","","2019-03-20 13:41:44","dt_cadastro","263");

INSERT INTO tb_auditoria_itens VALUES("1653","","39.9","nu_valor","263");

INSERT INTO tb_auditoria_itens VALUES("1654","","Serviço Inicial","ds_observacao","263");

INSERT INTO tb_auditoria_itens VALUES("1655","","1","co_categoria_servico","264");

INSERT INTO tb_auditoria_itens VALUES("1656","","2019-03-20 13:41:44","dt_cadastro","264");

INSERT INTO tb_auditoria_itens VALUES("1657","","A","st_status","264");

INSERT INTO tb_auditoria_itens VALUES("1658","","Coloração / Tonalização","no_servico","264");

INSERT INTO tb_auditoria_itens VALUES("1659","","120","nu_duracao","264");

INSERT INTO tb_auditoria_itens VALUES("1660","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","264");

INSERT INTO tb_auditoria_itens VALUES("1661","","4","co_servico","265");

INSERT INTO tb_auditoria_itens VALUES("1662","","2019-03-20 13:41:45","dt_cadastro","265");

INSERT INTO tb_auditoria_itens VALUES("1663","","39.9","nu_valor","265");

INSERT INTO tb_auditoria_itens VALUES("1664","","Serviço Inicial","ds_observacao","265");

INSERT INTO tb_auditoria_itens VALUES("1665","","1","co_categoria_servico","266");

INSERT INTO tb_auditoria_itens VALUES("1666","","2019-03-20 13:41:45","dt_cadastro","266");

INSERT INTO tb_auditoria_itens VALUES("1667","","A","st_status","266");

INSERT INTO tb_auditoria_itens VALUES("1668","","Coloração / Tonalização","no_servico","266");

INSERT INTO tb_auditoria_itens VALUES("1669","","120","nu_duracao","266");

INSERT INTO tb_auditoria_itens VALUES("1670","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","266");

INSERT INTO tb_auditoria_itens VALUES("1671","","5","co_servico","267");

INSERT INTO tb_auditoria_itens VALUES("1672","","2019-03-20 13:41:45","dt_cadastro","267");

INSERT INTO tb_auditoria_itens VALUES("1673","","39.9","nu_valor","267");

INSERT INTO tb_auditoria_itens VALUES("1674","","Serviço Inicial","ds_observacao","267");

INSERT INTO tb_auditoria_itens VALUES("1675","","1","co_categoria_servico","268");

INSERT INTO tb_auditoria_itens VALUES("1676","","2019-03-20 13:41:46","dt_cadastro","268");

INSERT INTO tb_auditoria_itens VALUES("1677","","A","st_status","268");

INSERT INTO tb_auditoria_itens VALUES("1678","","Coloração / Tonalização","no_servico","268");

INSERT INTO tb_auditoria_itens VALUES("1679","","120","nu_duracao","268");

INSERT INTO tb_auditoria_itens VALUES("1680","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","268");

INSERT INTO tb_auditoria_itens VALUES("1681","","6","co_servico","269");

INSERT INTO tb_auditoria_itens VALUES("1682","","2019-03-20 13:41:46","dt_cadastro","269");

INSERT INTO tb_auditoria_itens VALUES("1683","","39.9","nu_valor","269");

INSERT INTO tb_auditoria_itens VALUES("1684","","Serviço Inicial","ds_observacao","269");

INSERT INTO tb_auditoria_itens VALUES("1685","","1","co_categoria_servico","270");

INSERT INTO tb_auditoria_itens VALUES("1686","","2019-03-20 13:41:46","dt_cadastro","270");

INSERT INTO tb_auditoria_itens VALUES("1687","","A","st_status","270");

INSERT INTO tb_auditoria_itens VALUES("1688","","Coloração / Tonalização","no_servico","270");

INSERT INTO tb_auditoria_itens VALUES("1689","","120","nu_duracao","270");

INSERT INTO tb_auditoria_itens VALUES("1690","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","270");

INSERT INTO tb_auditoria_itens VALUES("1691","","7","co_servico","271");

INSERT INTO tb_auditoria_itens VALUES("1692","","2019-03-20 13:41:46","dt_cadastro","271");

INSERT INTO tb_auditoria_itens VALUES("1693","","39.9","nu_valor","271");

INSERT INTO tb_auditoria_itens VALUES("1694","","Serviço Inicial","ds_observacao","271");

INSERT INTO tb_auditoria_itens VALUES("1695","","1","co_categoria_servico","272");

INSERT INTO tb_auditoria_itens VALUES("1696","","2019-03-20 13:41:47","dt_cadastro","272");

INSERT INTO tb_auditoria_itens VALUES("1697","","A","st_status","272");

INSERT INTO tb_auditoria_itens VALUES("1698","","Coloração / Tonalização","no_servico","272");

INSERT INTO tb_auditoria_itens VALUES("1699","","120","nu_duracao","272");

INSERT INTO tb_auditoria_itens VALUES("1700","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","272");

INSERT INTO tb_auditoria_itens VALUES("1701","","8","co_servico","273");

INSERT INTO tb_auditoria_itens VALUES("1702","","2019-03-20 13:41:47","dt_cadastro","273");

INSERT INTO tb_auditoria_itens VALUES("1703","","39.9","nu_valor","273");

INSERT INTO tb_auditoria_itens VALUES("1704","","Serviço Inicial","ds_observacao","273");

INSERT INTO tb_auditoria_itens VALUES("1705","","1","co_categoria_servico","274");

INSERT INTO tb_auditoria_itens VALUES("1706","","2019-03-20 13:41:47","dt_cadastro","274");

INSERT INTO tb_auditoria_itens VALUES("1707","","A","st_status","274");

INSERT INTO tb_auditoria_itens VALUES("1708","","Coloração / Tonalização","no_servico","274");

INSERT INTO tb_auditoria_itens VALUES("1709","","120","nu_duracao","274");

INSERT INTO tb_auditoria_itens VALUES("1710","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","274");

INSERT INTO tb_auditoria_itens VALUES("1711","","9","co_servico","275");

INSERT INTO tb_auditoria_itens VALUES("1712","","2019-03-20 13:41:48","dt_cadastro","275");

INSERT INTO tb_auditoria_itens VALUES("1713","","39.9","nu_valor","275");

INSERT INTO tb_auditoria_itens VALUES("1714","","Serviço Inicial","ds_observacao","275");

INSERT INTO tb_auditoria_itens VALUES("1715","","1","co_categoria_servico","276");

INSERT INTO tb_auditoria_itens VALUES("1716","","2019-03-20 13:41:48","dt_cadastro","276");

INSERT INTO tb_auditoria_itens VALUES("1717","","A","st_status","276");

INSERT INTO tb_auditoria_itens VALUES("1718","","Coloração / Tonalização","no_servico","276");

INSERT INTO tb_auditoria_itens VALUES("1719","","120","nu_duracao","276");

INSERT INTO tb_auditoria_itens VALUES("1720","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","276");

INSERT INTO tb_auditoria_itens VALUES("1721","","10","co_servico","277");

INSERT INTO tb_auditoria_itens VALUES("1722","","2019-03-20 13:41:49","dt_cadastro","277");

INSERT INTO tb_auditoria_itens VALUES("1723","","39.9","nu_valor","277");

INSERT INTO tb_auditoria_itens VALUES("1724","","Serviço Inicial","ds_observacao","277");

INSERT INTO tb_auditoria_itens VALUES("1725","","1","co_categoria_servico","278");

INSERT INTO tb_auditoria_itens VALUES("1726","","2019-03-20 13:41:49","dt_cadastro","278");

INSERT INTO tb_auditoria_itens VALUES("1727","","A","st_status","278");

INSERT INTO tb_auditoria_itens VALUES("1728","","Coloração / Tonalização","no_servico","278");

INSERT INTO tb_auditoria_itens VALUES("1729","","120","nu_duracao","278");

INSERT INTO tb_auditoria_itens VALUES("1730","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","278");

INSERT INTO tb_auditoria_itens VALUES("1731","","11","co_servico","279");

INSERT INTO tb_auditoria_itens VALUES("1732","","2019-03-20 13:41:49","dt_cadastro","279");

INSERT INTO tb_auditoria_itens VALUES("1733","","39.9","nu_valor","279");

INSERT INTO tb_auditoria_itens VALUES("1734","","Serviço Inicial","ds_observacao","279");

INSERT INTO tb_auditoria_itens VALUES("1735","","1","co_categoria_servico","280");

INSERT INTO tb_auditoria_itens VALUES("1736","","2019-03-20 13:41:49","dt_cadastro","280");

INSERT INTO tb_auditoria_itens VALUES("1737","","A","st_status","280");

INSERT INTO tb_auditoria_itens VALUES("1738","","Coloração / Tonalização","no_servico","280");

INSERT INTO tb_auditoria_itens VALUES("1739","","120","nu_duracao","280");

INSERT INTO tb_auditoria_itens VALUES("1740","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","280");

INSERT INTO tb_auditoria_itens VALUES("1741","","12","co_servico","281");

INSERT INTO tb_auditoria_itens VALUES("1742","","2019-03-20 13:41:50","dt_cadastro","281");

INSERT INTO tb_auditoria_itens VALUES("1743","","39.9","nu_valor","281");

INSERT INTO tb_auditoria_itens VALUES("1744","","Serviço Inicial","ds_observacao","281");

INSERT INTO tb_auditoria_itens VALUES("1745","","11","co_assinante","282");

INSERT INTO tb_auditoria_itens VALUES("1746","","2019-03-20 13:41:42","dt_cadastro","282");

INSERT INTO tb_auditoria_itens VALUES("1747","","A","st_status","282");

INSERT INTO tb_auditoria_itens VALUES("1748","","Mãos e Pés","no_categoria_servico","282");

INSERT INTO tb_auditoria_itens VALUES("1749","","2","co_categoria_servico","283");

INSERT INTO tb_auditoria_itens VALUES("1750","","2019-03-20 13:41:50","dt_cadastro","283");

INSERT INTO tb_auditoria_itens VALUES("1751","","A","st_status","283");

INSERT INTO tb_auditoria_itens VALUES("1752","","Corte Tesoura","no_servico","283");

INSERT INTO tb_auditoria_itens VALUES("1753","","30","nu_duracao","283");

INSERT INTO tb_auditoria_itens VALUES("1754","","Corte: O corte na tesoura irá deixar você com o visual renovado.","ds_descricao","283");

INSERT INTO tb_auditoria_itens VALUES("1755","","13","co_servico","284");

INSERT INTO tb_auditoria_itens VALUES("1756","","2019-03-20 13:41:50","dt_cadastro","284");

INSERT INTO tb_auditoria_itens VALUES("1757","","19.9","nu_valor","284");

INSERT INTO tb_auditoria_itens VALUES("1758","","Serviço Inicial","ds_observacao","284");

INSERT INTO tb_auditoria_itens VALUES("1759","","2","co_categoria_servico","285");

INSERT INTO tb_auditoria_itens VALUES("1760","","2019-03-20 13:41:51","dt_cadastro","285");

INSERT INTO tb_auditoria_itens VALUES("1761","","A","st_status","285");

INSERT INTO tb_auditoria_itens VALUES("1762","","Corte Tesoura","no_servico","285");

INSERT INTO tb_auditoria_itens VALUES("1763","","30","nu_duracao","285");

INSERT INTO tb_auditoria_itens VALUES("1764","","Corte: O corte na tesoura irá deixar você com o visual renovado.","ds_descricao","285");

INSERT INTO tb_auditoria_itens VALUES("1765","","14","co_servico","286");

INSERT INTO tb_auditoria_itens VALUES("1766","","2019-03-20 13:41:51","dt_cadastro","286");

INSERT INTO tb_auditoria_itens VALUES("1767","","19.9","nu_valor","286");

INSERT INTO tb_auditoria_itens VALUES("1768","","Serviço Inicial","ds_observacao","286");

INSERT INTO tb_auditoria_itens VALUES("1769","","2","co_categoria_servico","287");

INSERT INTO tb_auditoria_itens VALUES("1770","","2019-03-20 13:41:51","dt_cadastro","287");

INSERT INTO tb_auditoria_itens VALUES("1771","","A","st_status","287");

INSERT INTO tb_auditoria_itens VALUES("1772","","Corte Tesoura","no_servico","287");

INSERT INTO tb_auditoria_itens VALUES("1773","","30","nu_duracao","287");

INSERT INTO tb_auditoria_itens VALUES("1774","","Corte: O corte na tesoura irá deixar você com o visual renovado.","ds_descricao","287");

INSERT INTO tb_auditoria_itens VALUES("1775","","15","co_servico","288");

INSERT INTO tb_auditoria_itens VALUES("1776","","2019-03-20 13:41:52","dt_cadastro","288");

INSERT INTO tb_auditoria_itens VALUES("1777","","19.9","nu_valor","288");

INSERT INTO tb_auditoria_itens VALUES("1778","","Serviço Inicial","ds_observacao","288");

INSERT INTO tb_auditoria_itens VALUES("1779","","2","co_categoria_servico","289");

INSERT INTO tb_auditoria_itens VALUES("1780","","2019-03-20 13:41:52","dt_cadastro","289");

INSERT INTO tb_auditoria_itens VALUES("1781","","A","st_status","289");

INSERT INTO tb_auditoria_itens VALUES("1782","","Corte Tesoura","no_servico","289");

INSERT INTO tb_auditoria_itens VALUES("1783","","30","nu_duracao","289");

INSERT INTO tb_auditoria_itens VALUES("1784","","Corte: O corte na tesoura irá deixar você com o visual renovado.","ds_descricao","289");

INSERT INTO tb_auditoria_itens VALUES("1785","","16","co_servico","290");

INSERT INTO tb_auditoria_itens VALUES("1786","","2019-03-20 13:41:52","dt_cadastro","290");

INSERT INTO tb_auditoria_itens VALUES("1787","","19.9","nu_valor","290");

INSERT INTO tb_auditoria_itens VALUES("1788","","Serviço Inicial","ds_observacao","290");

INSERT INTO tb_auditoria_itens VALUES("1789","","11","co_assinante","291");

INSERT INTO tb_auditoria_itens VALUES("1790","","2019-03-20 13:41:42","dt_cadastro","291");

INSERT INTO tb_auditoria_itens VALUES("1791","","A","st_status","291");

INSERT INTO tb_auditoria_itens VALUES("1792","","Maquiagem","no_categoria_servico","291");

INSERT INTO tb_auditoria_itens VALUES("1793","","3","co_categoria_servico","292");

INSERT INTO tb_auditoria_itens VALUES("1794","","2019-03-20 13:41:53","dt_cadastro","292");

INSERT INTO tb_auditoria_itens VALUES("1795","","A","st_status","292");

INSERT INTO tb_auditoria_itens VALUES("1796","","Corte Máquina","no_servico","292");

INSERT INTO tb_auditoria_itens VALUES("1797","","30","nu_duracao","292");

INSERT INTO tb_auditoria_itens VALUES("1798","","Corte: O corte na máquina irá deixar você com o visual renovado.","ds_descricao","292");

INSERT INTO tb_auditoria_itens VALUES("1799","","17","co_servico","293");

INSERT INTO tb_auditoria_itens VALUES("1800","","2019-03-20 13:41:53","dt_cadastro","293");

INSERT INTO tb_auditoria_itens VALUES("1801","","29.9","nu_valor","293");

INSERT INTO tb_auditoria_itens VALUES("1802","","Serviço Inicial","ds_observacao","293");

INSERT INTO tb_auditoria_itens VALUES("1803","","11","co_assinante","294");

INSERT INTO tb_auditoria_itens VALUES("1804","","2019-03-20 13:41:42","dt_cadastro","294");

INSERT INTO tb_auditoria_itens VALUES("1805","","A","st_status","294");

INSERT INTO tb_auditoria_itens VALUES("1806","","Sobrancelha","no_categoria_servico","294");

INSERT INTO tb_auditoria_itens VALUES("1807","","4","co_categoria_servico","295");

INSERT INTO tb_auditoria_itens VALUES("1808","","2019-03-20 13:41:53","dt_cadastro","295");

INSERT INTO tb_auditoria_itens VALUES("1809","","A","st_status","295");

INSERT INTO tb_auditoria_itens VALUES("1810","","Corte Feminino","no_servico","295");

INSERT INTO tb_auditoria_itens VALUES("1811","","60","nu_duracao","295");

INSERT INTO tb_auditoria_itens VALUES("1812","","Corte: mude o visual ou apare as pontinhas para manter a aparência do \n        cabelo sempre saudável.","ds_descricao","295");

INSERT INTO tb_auditoria_itens VALUES("1813","","18","co_servico","296");

INSERT INTO tb_auditoria_itens VALUES("1814","","2019-03-20 13:41:54","dt_cadastro","296");

INSERT INTO tb_auditoria_itens VALUES("1815","","59.9","nu_valor","296");

INSERT INTO tb_auditoria_itens VALUES("1816","","Serviço Inicial","ds_observacao","296");

INSERT INTO tb_auditoria_itens VALUES("1817","","4","co_categoria_servico","297");

INSERT INTO tb_auditoria_itens VALUES("1818","","2019-03-20 13:41:55","dt_cadastro","297");

INSERT INTO tb_auditoria_itens VALUES("1819","","A","st_status","297");

INSERT INTO tb_auditoria_itens VALUES("1820","","Corte Feminino","no_servico","297");

INSERT INTO tb_auditoria_itens VALUES("1821","","60","nu_duracao","297");

INSERT INTO tb_auditoria_itens VALUES("1822","","Corte: mude o visual ou apare as pontinhas para manter a aparência do \n        cabelo sempre saudável.","ds_descricao","297");

INSERT INTO tb_auditoria_itens VALUES("1823","","19","co_servico","298");

INSERT INTO tb_auditoria_itens VALUES("1824","","2019-03-20 13:41:56","dt_cadastro","298");

INSERT INTO tb_auditoria_itens VALUES("1825","","59.9","nu_valor","298");

INSERT INTO tb_auditoria_itens VALUES("1826","","Serviço Inicial","ds_observacao","298");

INSERT INTO tb_auditoria_itens VALUES("1827","","11","co_assinante","299");

INSERT INTO tb_auditoria_itens VALUES("1828","","2019-03-20 13:41:42","dt_cadastro","299");

INSERT INTO tb_auditoria_itens VALUES("1829","","A","st_status","299");

INSERT INTO tb_auditoria_itens VALUES("1830","","Barba","no_categoria_servico","299");

INSERT INTO tb_auditoria_itens VALUES("1831","","5","co_categoria_servico","300");

INSERT INTO tb_auditoria_itens VALUES("1832","","2019-03-20 13:41:57","dt_cadastro","300");

INSERT INTO tb_auditoria_itens VALUES("1833","","A","st_status","300");

INSERT INTO tb_auditoria_itens VALUES("1834","","Hidratação Capilar","no_servico","300");

INSERT INTO tb_auditoria_itens VALUES("1835","","60","nu_duracao","300");

INSERT INTO tb_auditoria_itens VALUES("1836","","Barba","ds_descricao","300");

INSERT INTO tb_auditoria_itens VALUES("1837","","20","co_servico","301");

INSERT INTO tb_auditoria_itens VALUES("1838","","2019-03-20 13:41:57","dt_cadastro","301");

INSERT INTO tb_auditoria_itens VALUES("1839","","49.9","nu_valor","301");

INSERT INTO tb_auditoria_itens VALUES("1840","","Serviço Inicial","ds_observacao","301");

INSERT INTO tb_auditoria_itens VALUES("1841","","11","co_assinante","302");

INSERT INTO tb_auditoria_itens VALUES("1842","","2019-03-20 13:41:42","dt_cadastro","302");

INSERT INTO tb_auditoria_itens VALUES("1843","","A","st_status","302");

INSERT INTO tb_auditoria_itens VALUES("1844","","Estética Facial","no_categoria_servico","302");

INSERT INTO tb_auditoria_itens VALUES("1845","","6","co_categoria_servico","303");

INSERT INTO tb_auditoria_itens VALUES("1846","","2019-03-20 13:41:57","dt_cadastro","303");

INSERT INTO tb_auditoria_itens VALUES("1847","","A","st_status","303");

INSERT INTO tb_auditoria_itens VALUES("1848","","Corte e Higienização dos Fios","no_servico","303");

INSERT INTO tb_auditoria_itens VALUES("1849","","30","nu_duracao","303");

INSERT INTO tb_auditoria_itens VALUES("1850","","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","ds_descricao","303");

INSERT INTO tb_auditoria_itens VALUES("1851","","21","co_servico","304");

INSERT INTO tb_auditoria_itens VALUES("1852","","2019-03-20 13:41:58","dt_cadastro","304");

INSERT INTO tb_auditoria_itens VALUES("1853","","49.9","nu_valor","304");

INSERT INTO tb_auditoria_itens VALUES("1854","","Serviço Inicial","ds_observacao","304");

INSERT INTO tb_auditoria_itens VALUES("1855","","6","co_categoria_servico","305");

INSERT INTO tb_auditoria_itens VALUES("1856","","2019-03-20 13:41:58","dt_cadastro","305");

INSERT INTO tb_auditoria_itens VALUES("1857","","A","st_status","305");

INSERT INTO tb_auditoria_itens VALUES("1858","","Corte e Higienização dos Fios","no_servico","305");

INSERT INTO tb_auditoria_itens VALUES("1859","","30","nu_duracao","305");

INSERT INTO tb_auditoria_itens VALUES("1860","","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","ds_descricao","305");

INSERT INTO tb_auditoria_itens VALUES("1861","","22","co_servico","306");

INSERT INTO tb_auditoria_itens VALUES("1862","","2019-03-20 13:41:59","dt_cadastro","306");

INSERT INTO tb_auditoria_itens VALUES("1863","","49.9","nu_valor","306");

INSERT INTO tb_auditoria_itens VALUES("1864","","Serviço Inicial","ds_observacao","306");

INSERT INTO tb_auditoria_itens VALUES("1865","","6","co_categoria_servico","307");

INSERT INTO tb_auditoria_itens VALUES("1866","","2019-03-20 13:41:59","dt_cadastro","307");

INSERT INTO tb_auditoria_itens VALUES("1867","","A","st_status","307");

INSERT INTO tb_auditoria_itens VALUES("1868","","Corte e Higienização dos Fios","no_servico","307");

INSERT INTO tb_auditoria_itens VALUES("1869","","30","nu_duracao","307");

INSERT INTO tb_auditoria_itens VALUES("1870","","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","ds_descricao","307");

INSERT INTO tb_auditoria_itens VALUES("1871","","23","co_servico","308");

INSERT INTO tb_auditoria_itens VALUES("1872","","2019-03-20 13:42:00","dt_cadastro","308");

INSERT INTO tb_auditoria_itens VALUES("1873","","49.9","nu_valor","308");

INSERT INTO tb_auditoria_itens VALUES("1874","","Serviço Inicial","ds_observacao","308");

INSERT INTO tb_auditoria_itens VALUES("1875","","6","co_categoria_servico","309");

INSERT INTO tb_auditoria_itens VALUES("1876","","2019-03-20 13:42:00","dt_cadastro","309");

INSERT INTO tb_auditoria_itens VALUES("1877","","A","st_status","309");

INSERT INTO tb_auditoria_itens VALUES("1878","","Corte e Higienização dos Fios","no_servico","309");

INSERT INTO tb_auditoria_itens VALUES("1879","","30","nu_duracao","309");

INSERT INTO tb_auditoria_itens VALUES("1880","","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","ds_descricao","309");

INSERT INTO tb_auditoria_itens VALUES("1881","","24","co_servico","310");

INSERT INTO tb_auditoria_itens VALUES("1882","","2019-03-20 13:42:01","dt_cadastro","310");

INSERT INTO tb_auditoria_itens VALUES("1883","","49.9","nu_valor","310");

INSERT INTO tb_auditoria_itens VALUES("1884","","Serviço Inicial","ds_observacao","310");

INSERT INTO tb_auditoria_itens VALUES("1885","","11","co_assinante","311");

INSERT INTO tb_auditoria_itens VALUES("1886","","2019-03-20 13:41:42","dt_cadastro","311");

INSERT INTO tb_auditoria_itens VALUES("1887","","A","st_status","311");

INSERT INTO tb_auditoria_itens VALUES("1888","","Depilação","no_categoria_servico","311");

INSERT INTO tb_auditoria_itens VALUES("1889","","7","co_categoria_servico","312");

INSERT INTO tb_auditoria_itens VALUES("1890","","2019-03-20 13:42:01","dt_cadastro","312");

INSERT INTO tb_auditoria_itens VALUES("1891","","A","st_status","312");

INSERT INTO tb_auditoria_itens VALUES("1892","","Escova Modeladora","no_servico","312");

INSERT INTO tb_auditoria_itens VALUES("1893","","30","nu_duracao","312");

INSERT INTO tb_auditoria_itens VALUES("1894","","Escova: você vai ter uma ajudinha para realinhar os cabelos com um \n        caimento perfeito.","ds_descricao","312");

INSERT INTO tb_auditoria_itens VALUES("1895","","25","co_servico","313");

INSERT INTO tb_auditoria_itens VALUES("1896","","2019-03-20 13:42:02","dt_cadastro","313");

INSERT INTO tb_auditoria_itens VALUES("1897","","29.9","nu_valor","313");

INSERT INTO tb_auditoria_itens VALUES("1898","","Serviço Inicial","ds_observacao","313");

INSERT INTO tb_auditoria_itens VALUES("1899","","7","co_categoria_servico","314");

INSERT INTO tb_auditoria_itens VALUES("1900","","2019-03-20 13:42:02","dt_cadastro","314");

INSERT INTO tb_auditoria_itens VALUES("1901","","A","st_status","314");

INSERT INTO tb_auditoria_itens VALUES("1902","","Escova Modeladora","no_servico","314");

INSERT INTO tb_auditoria_itens VALUES("1903","","30","nu_duracao","314");

INSERT INTO tb_auditoria_itens VALUES("1904","","Escova: você vai ter uma ajudinha para realinhar os cabelos com um \n        caimento perfeito.","ds_descricao","314");

INSERT INTO tb_auditoria_itens VALUES("1905","","26","co_servico","315");

INSERT INTO tb_auditoria_itens VALUES("1906","","2019-03-20 13:42:03","dt_cadastro","315");

INSERT INTO tb_auditoria_itens VALUES("1907","","29.9","nu_valor","315");

INSERT INTO tb_auditoria_itens VALUES("1908","","Serviço Inicial","ds_observacao","315");

INSERT INTO tb_auditoria_itens VALUES("1909","","7","co_categoria_servico","316");

INSERT INTO tb_auditoria_itens VALUES("1910","","2019-03-20 13:42:03","dt_cadastro","316");

INSERT INTO tb_auditoria_itens VALUES("1911","","A","st_status","316");

INSERT INTO tb_auditoria_itens VALUES("1912","","Escova Modeladora","no_servico","316");

INSERT INTO tb_auditoria_itens VALUES("1913","","30","nu_duracao","316");

INSERT INTO tb_auditoria_itens VALUES("1914","","Escova: você vai ter uma ajudinha para realinhar os cabelos com um \n        caimento perfeito.","ds_descricao","316");

INSERT INTO tb_auditoria_itens VALUES("1915","","27","co_servico","317");

INSERT INTO tb_auditoria_itens VALUES("1916","","2019-03-20 13:42:03","dt_cadastro","317");

INSERT INTO tb_auditoria_itens VALUES("1917","","29.9","nu_valor","317");

INSERT INTO tb_auditoria_itens VALUES("1918","","Serviço Inicial","ds_observacao","317");

INSERT INTO tb_auditoria_itens VALUES("1919","","11","co_assinante","318");

INSERT INTO tb_auditoria_itens VALUES("1920","","2019-03-20 13:41:42","dt_cadastro","318");

INSERT INTO tb_auditoria_itens VALUES("1921","","A","st_status","318");

INSERT INTO tb_auditoria_itens VALUES("1922","","Massagem","no_categoria_servico","318");

INSERT INTO tb_auditoria_itens VALUES("1923","","8","co_categoria_servico","319");

INSERT INTO tb_auditoria_itens VALUES("1924","","2019-03-20 13:42:04","dt_cadastro","319");

INSERT INTO tb_auditoria_itens VALUES("1925","","A","st_status","319");

INSERT INTO tb_auditoria_itens VALUES("1926","","Selagem","no_servico","319");

INSERT INTO tb_auditoria_itens VALUES("1927","","60","nu_duracao","319");

INSERT INTO tb_auditoria_itens VALUES("1928","","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","ds_descricao","319");

INSERT INTO tb_auditoria_itens VALUES("1929","","28","co_servico","320");

INSERT INTO tb_auditoria_itens VALUES("1930","","2019-03-20 13:42:04","dt_cadastro","320");

INSERT INTO tb_auditoria_itens VALUES("1931","","59.9","nu_valor","320");

INSERT INTO tb_auditoria_itens VALUES("1932","","Serviço Inicial","ds_observacao","320");

INSERT INTO tb_auditoria_itens VALUES("1933","","8","co_categoria_servico","321");

INSERT INTO tb_auditoria_itens VALUES("1934","","2019-03-20 13:42:05","dt_cadastro","321");

INSERT INTO tb_auditoria_itens VALUES("1935","","A","st_status","321");

INSERT INTO tb_auditoria_itens VALUES("1936","","Selagem","no_servico","321");

INSERT INTO tb_auditoria_itens VALUES("1937","","60","nu_duracao","321");

INSERT INTO tb_auditoria_itens VALUES("1938","","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","ds_descricao","321");

INSERT INTO tb_auditoria_itens VALUES("1939","","29","co_servico","322");

INSERT INTO tb_auditoria_itens VALUES("1940","","2019-03-20 13:42:05","dt_cadastro","322");

INSERT INTO tb_auditoria_itens VALUES("1941","","59.9","nu_valor","322");

INSERT INTO tb_auditoria_itens VALUES("1942","","Serviço Inicial","ds_observacao","322");

INSERT INTO tb_auditoria_itens VALUES("1943","","8","co_categoria_servico","323");

INSERT INTO tb_auditoria_itens VALUES("1944","","2019-03-20 13:42:05","dt_cadastro","323");

INSERT INTO tb_auditoria_itens VALUES("1945","","A","st_status","323");

INSERT INTO tb_auditoria_itens VALUES("1946","","Selagem","no_servico","323");

INSERT INTO tb_auditoria_itens VALUES("1947","","60","nu_duracao","323");

INSERT INTO tb_auditoria_itens VALUES("1948","","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","ds_descricao","323");

INSERT INTO tb_auditoria_itens VALUES("1949","","30","co_servico","324");

INSERT INTO tb_auditoria_itens VALUES("1950","","2019-03-20 13:42:06","dt_cadastro","324");

INSERT INTO tb_auditoria_itens VALUES("1951","","59.9","nu_valor","324");

INSERT INTO tb_auditoria_itens VALUES("1952","","Serviço Inicial","ds_observacao","324");

INSERT INTO tb_auditoria_itens VALUES("1953","","8","co_categoria_servico","325");

INSERT INTO tb_auditoria_itens VALUES("1954","","2019-03-20 13:42:07","dt_cadastro","325");

INSERT INTO tb_auditoria_itens VALUES("1955","","A","st_status","325");

INSERT INTO tb_auditoria_itens VALUES("1956","","Selagem","no_servico","325");

INSERT INTO tb_auditoria_itens VALUES("1957","","60","nu_duracao","325");

INSERT INTO tb_auditoria_itens VALUES("1958","","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","ds_descricao","325");

INSERT INTO tb_auditoria_itens VALUES("3933","","11","co_assinante","737");

INSERT INTO tb_auditoria_itens VALUES("3934","","2019-03-20 14:08:42","dt_cadastro","737");

INSERT INTO tb_auditoria_itens VALUES("3935","","A","st_status","737");

INSERT INTO tb_auditoria_itens VALUES("3936","","Cabelo","no_categoria_servico","737");

INSERT INTO tb_auditoria_itens VALUES("3937","","82","co_categoria_servico","738");

INSERT INTO tb_auditoria_itens VALUES("3938","","2019-03-20 14:08:42","dt_cadastro","738");

INSERT INTO tb_auditoria_itens VALUES("3939","","A","st_status","738");

INSERT INTO tb_auditoria_itens VALUES("3940","","Coloração / Tonalização","no_servico","738");

INSERT INTO tb_auditoria_itens VALUES("3941","","120","nu_duracao","738");

INSERT INTO tb_auditoria_itens VALUES("3942","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","738");

INSERT INTO tb_auditoria_itens VALUES("3943","","166","co_servico","739");

INSERT INTO tb_auditoria_itens VALUES("3944","","2019-03-20 14:08:42","dt_cadastro","739");

INSERT INTO tb_auditoria_itens VALUES("3945","","39.9","nu_valor","739");

INSERT INTO tb_auditoria_itens VALUES("3946","","Serviço Inicial","ds_observacao","739");

INSERT INTO tb_auditoria_itens VALUES("3947","","82","co_categoria_servico","740");

INSERT INTO tb_auditoria_itens VALUES("3948","","2019-03-20 14:08:42","dt_cadastro","740");

INSERT INTO tb_auditoria_itens VALUES("3949","","A","st_status","740");

INSERT INTO tb_auditoria_itens VALUES("3950","","Corte Tesoura","no_servico","740");

INSERT INTO tb_auditoria_itens VALUES("3951","","30","nu_duracao","740");

INSERT INTO tb_auditoria_itens VALUES("3952","","Corte: O corte na tesoura irá deixar você com o visual renovado.","ds_descricao","740");

INSERT INTO tb_auditoria_itens VALUES("3953","","167","co_servico","741");

INSERT INTO tb_auditoria_itens VALUES("3954","","2019-03-20 14:08:42","dt_cadastro","741");

INSERT INTO tb_auditoria_itens VALUES("3955","","19.9","nu_valor","741");

INSERT INTO tb_auditoria_itens VALUES("3956","","Serviço Inicial","ds_observacao","741");

INSERT INTO tb_auditoria_itens VALUES("3957","","82","co_categoria_servico","742");

INSERT INTO tb_auditoria_itens VALUES("3958","","2019-03-20 14:08:42","dt_cadastro","742");

INSERT INTO tb_auditoria_itens VALUES("3959","","A","st_status","742");

INSERT INTO tb_auditoria_itens VALUES("3960","","Corte Máquina","no_servico","742");

INSERT INTO tb_auditoria_itens VALUES("3961","","30","nu_duracao","742");

INSERT INTO tb_auditoria_itens VALUES("3962","","Corte: O corte na máquina irá deixar você com o visual renovado.","ds_descricao","742");

INSERT INTO tb_auditoria_itens VALUES("3963","","168","co_servico","743");

INSERT INTO tb_auditoria_itens VALUES("3964","","2019-03-20 14:08:42","dt_cadastro","743");

INSERT INTO tb_auditoria_itens VALUES("3965","","29.9","nu_valor","743");

INSERT INTO tb_auditoria_itens VALUES("3966","","Serviço Inicial","ds_observacao","743");

INSERT INTO tb_auditoria_itens VALUES("3967","","82","co_categoria_servico","744");

INSERT INTO tb_auditoria_itens VALUES("3968","","2019-03-20 14:08:42","dt_cadastro","744");

INSERT INTO tb_auditoria_itens VALUES("3969","","A","st_status","744");

INSERT INTO tb_auditoria_itens VALUES("3970","","Corte Feminino","no_servico","744");

INSERT INTO tb_auditoria_itens VALUES("3971","","60","nu_duracao","744");

INSERT INTO tb_auditoria_itens VALUES("3972","","Corte: mude o visual ou apare as pontinhas para manter a aparência do \n        cabelo sempre saudável.","ds_descricao","744");

INSERT INTO tb_auditoria_itens VALUES("3973","","169","co_servico","745");

INSERT INTO tb_auditoria_itens VALUES("3974","","2019-03-20 14:08:42","dt_cadastro","745");

INSERT INTO tb_auditoria_itens VALUES("3975","","59.9","nu_valor","745");

INSERT INTO tb_auditoria_itens VALUES("3976","","Serviço Inicial","ds_observacao","745");

INSERT INTO tb_auditoria_itens VALUES("3977","","82","co_categoria_servico","746");

INSERT INTO tb_auditoria_itens VALUES("3978","","2019-03-20 14:08:42","dt_cadastro","746");

INSERT INTO tb_auditoria_itens VALUES("3979","","A","st_status","746");

INSERT INTO tb_auditoria_itens VALUES("3980","","Hidratação Capilar","no_servico","746");

INSERT INTO tb_auditoria_itens VALUES("3981","","60","nu_duracao","746");

INSERT INTO tb_auditoria_itens VALUES("3982","","Barba","ds_descricao","746");

INSERT INTO tb_auditoria_itens VALUES("3983","","170","co_servico","747");

INSERT INTO tb_auditoria_itens VALUES("3984","","2019-03-20 14:08:42","dt_cadastro","747");

INSERT INTO tb_auditoria_itens VALUES("3985","","49.9","nu_valor","747");

INSERT INTO tb_auditoria_itens VALUES("3986","","Serviço Inicial","ds_observacao","747");

INSERT INTO tb_auditoria_itens VALUES("3987","","82","co_categoria_servico","748");

INSERT INTO tb_auditoria_itens VALUES("3988","","2019-03-20 14:08:42","dt_cadastro","748");

INSERT INTO tb_auditoria_itens VALUES("3989","","A","st_status","748");

INSERT INTO tb_auditoria_itens VALUES("3990","","Corte e Higienização dos Fios","no_servico","748");

INSERT INTO tb_auditoria_itens VALUES("3991","","30","nu_duracao","748");

INSERT INTO tb_auditoria_itens VALUES("3992","","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","ds_descricao","748");

INSERT INTO tb_auditoria_itens VALUES("3993","","171","co_servico","749");

INSERT INTO tb_auditoria_itens VALUES("3994","","2019-03-20 14:08:42","dt_cadastro","749");

INSERT INTO tb_auditoria_itens VALUES("3995","","49.9","nu_valor","749");

INSERT INTO tb_auditoria_itens VALUES("3996","","Serviço Inicial","ds_observacao","749");

INSERT INTO tb_auditoria_itens VALUES("3997","","82","co_categoria_servico","750");

INSERT INTO tb_auditoria_itens VALUES("3998","","2019-03-20 14:08:42","dt_cadastro","750");

INSERT INTO tb_auditoria_itens VALUES("3999","","A","st_status","750");

INSERT INTO tb_auditoria_itens VALUES("4000","","Escova Modeladora","no_servico","750");

INSERT INTO tb_auditoria_itens VALUES("4001","","30","nu_duracao","750");

INSERT INTO tb_auditoria_itens VALUES("4002","","Escova: você vai ter uma ajudinha para realinhar os cabelos com um \n        caimento perfeito.","ds_descricao","750");

INSERT INTO tb_auditoria_itens VALUES("4003","","172","co_servico","751");

INSERT INTO tb_auditoria_itens VALUES("4004","","2019-03-20 14:08:42","dt_cadastro","751");

INSERT INTO tb_auditoria_itens VALUES("4005","","29.9","nu_valor","751");

INSERT INTO tb_auditoria_itens VALUES("4006","","Serviço Inicial","ds_observacao","751");

INSERT INTO tb_auditoria_itens VALUES("4007","","82","co_categoria_servico","752");

INSERT INTO tb_auditoria_itens VALUES("4008","","2019-03-20 14:08:42","dt_cadastro","752");

INSERT INTO tb_auditoria_itens VALUES("4009","","A","st_status","752");

INSERT INTO tb_auditoria_itens VALUES("4010","","Selagem","no_servico","752");

INSERT INTO tb_auditoria_itens VALUES("4011","","60","nu_duracao","752");

INSERT INTO tb_auditoria_itens VALUES("4012","","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","ds_descricao","752");

INSERT INTO tb_auditoria_itens VALUES("4013","","173","co_servico","753");

INSERT INTO tb_auditoria_itens VALUES("4014","","2019-03-20 14:08:42","dt_cadastro","753");

INSERT INTO tb_auditoria_itens VALUES("4015","","59.9","nu_valor","753");

INSERT INTO tb_auditoria_itens VALUES("4016","","Serviço Inicial","ds_observacao","753");

INSERT INTO tb_auditoria_itens VALUES("4017","","82","co_categoria_servico","754");

INSERT INTO tb_auditoria_itens VALUES("4018","","2019-03-20 14:08:42","dt_cadastro","754");

INSERT INTO tb_auditoria_itens VALUES("4019","","A","st_status","754");

INSERT INTO tb_auditoria_itens VALUES("4020","","Escova Progressiva","no_servico","754");

INSERT INTO tb_auditoria_itens VALUES("4021","","60","nu_duracao","754");

INSERT INTO tb_auditoria_itens VALUES("4022","","Progressiva: é um realinhamento tradicional dos fios, que reestrutura a \n        fibra capilar com ativação térmica, hidratando e condicionando profundamente o cabelo. Possui um ativo \n        que adere à superfície do cabelo, selando as cutículas, repo","ds_descricao","754");

INSERT INTO tb_auditoria_itens VALUES("4023","","174","co_servico","755");

INSERT INTO tb_auditoria_itens VALUES("4024","","2019-03-20 14:08:42","dt_cadastro","755");

INSERT INTO tb_auditoria_itens VALUES("4025","","59.9","nu_valor","755");

INSERT INTO tb_auditoria_itens VALUES("4026","","Serviço Inicial","ds_observacao","755");

INSERT INTO tb_auditoria_itens VALUES("4027","","82","co_categoria_servico","756");

INSERT INTO tb_auditoria_itens VALUES("4028","","2019-03-20 14:08:42","dt_cadastro","756");

INSERT INTO tb_auditoria_itens VALUES("4029","","A","st_status","756");

INSERT INTO tb_auditoria_itens VALUES("4030","","Botox Capilar","no_servico","756");

INSERT INTO tb_auditoria_itens VALUES("4031","","60","nu_duracao","756");

INSERT INTO tb_auditoria_itens VALUES("4032","","Botox: é um poderoso reconstrutor da fibra do cabelo, garantindo sua jovialidade. \n        Esta técnica deixa-os hidratados, sem volume e com aspecto saudável.","ds_descricao","756");

INSERT INTO tb_auditoria_itens VALUES("4033","","175","co_servico","757");

INSERT INTO tb_auditoria_itens VALUES("4034","","2019-03-20 14:08:42","dt_cadastro","757");

INSERT INTO tb_auditoria_itens VALUES("4035","","59.9","nu_valor","757");

INSERT INTO tb_auditoria_itens VALUES("4036","","Serviço Inicial","ds_observacao","757");

INSERT INTO tb_auditoria_itens VALUES("4037","","82","co_categoria_servico","758");

INSERT INTO tb_auditoria_itens VALUES("4038","","2019-03-20 14:08:42","dt_cadastro","758");

INSERT INTO tb_auditoria_itens VALUES("4039","","A","st_status","758");

INSERT INTO tb_auditoria_itens VALUES("4040","","Luzes / Mechas","no_servico","758");

INSERT INTO tb_auditoria_itens VALUES("4041","","150","nu_duracao","758");

INSERT INTO tb_auditoria_itens VALUES("4042","","Luzes: clareiam sutilmente os fios da raiz até as pontas, deixando o cabelo \n        com mais reflexos e Mechas: descoloração feita em mechas que se misturam à cor original do cabelo.","ds_descricao","758");

INSERT INTO tb_auditoria_itens VALUES("4043","","176","co_servico","759");

INSERT INTO tb_auditoria_itens VALUES("4044","","2019-03-20 14:08:42","dt_cadastro","759");

INSERT INTO tb_auditoria_itens VALUES("4045","","79.9","nu_valor","759");

INSERT INTO tb_auditoria_itens VALUES("4046","","Serviço Inicial","ds_observacao","759");

INSERT INTO tb_auditoria_itens VALUES("4047","","11","co_assinante","760");

INSERT INTO tb_auditoria_itens VALUES("4048","","2019-03-20 14:08:42","dt_cadastro","760");

INSERT INTO tb_auditoria_itens VALUES("4049","","A","st_status","760");

INSERT INTO tb_auditoria_itens VALUES("4050","","Mãos e Pés","no_categoria_servico","760");

INSERT INTO tb_auditoria_itens VALUES("4051","","83","co_categoria_servico","761");

INSERT INTO tb_auditoria_itens VALUES("4052","","2019-03-20 14:08:42","dt_cadastro","761");

INSERT INTO tb_auditoria_itens VALUES("4053","","A","st_status","761");

INSERT INTO tb_auditoria_itens VALUES("4054","","Manicure","no_servico","761");

INSERT INTO tb_auditoria_itens VALUES("4055","","30","nu_duracao","761");

INSERT INTO tb_auditoria_itens VALUES("4056","","Manicure: retirada de cutículas e pintura das unhas das mãos nas cores desejadas \n        pela cliente.","ds_descricao","761");

INSERT INTO tb_auditoria_itens VALUES("4057","","177","co_servico","762");

INSERT INTO tb_auditoria_itens VALUES("4058","","2019-03-20 14:08:42","dt_cadastro","762");

INSERT INTO tb_auditoria_itens VALUES("4059","","19.9","nu_valor","762");

INSERT INTO tb_auditoria_itens VALUES("4060","","Serviço Inicial","ds_observacao","762");

INSERT INTO tb_auditoria_itens VALUES("4061","","83","co_categoria_servico","763");

INSERT INTO tb_auditoria_itens VALUES("4062","","2019-03-20 14:08:42","dt_cadastro","763");

INSERT INTO tb_auditoria_itens VALUES("4063","","A","st_status","763");

INSERT INTO tb_auditoria_itens VALUES("4064","","Pedicure","no_servico","763");

INSERT INTO tb_auditoria_itens VALUES("4065","","30","nu_duracao","763");

INSERT INTO tb_auditoria_itens VALUES("4066","","Pedicure: retirada de cutículas e pintura das unhas dos pés nas cores desejadas \n        pela cliente.","ds_descricao","763");

INSERT INTO tb_auditoria_itens VALUES("4067","","178","co_servico","764");

INSERT INTO tb_auditoria_itens VALUES("4068","","2019-03-20 14:08:42","dt_cadastro","764");

INSERT INTO tb_auditoria_itens VALUES("4069","","19.9","nu_valor","764");

INSERT INTO tb_auditoria_itens VALUES("4070","","Serviço Inicial","ds_observacao","764");

INSERT INTO tb_auditoria_itens VALUES("4071","","83","co_categoria_servico","765");

INSERT INTO tb_auditoria_itens VALUES("4072","","2019-03-20 14:08:42","dt_cadastro","765");

INSERT INTO tb_auditoria_itens VALUES("4073","","A","st_status","765");

INSERT INTO tb_auditoria_itens VALUES("4074","","Manicure e Pedicure","no_servico","765");

INSERT INTO tb_auditoria_itens VALUES("4075","","60","nu_duracao","765");

INSERT INTO tb_auditoria_itens VALUES("4076","","Manicure e Pedicure: retirada de cutículas e pintura das unhas das mãos \n        e dos pés nas cores desejadas pela cliente.","ds_descricao","765");

INSERT INTO tb_auditoria_itens VALUES("4077","","179","co_servico","766");

INSERT INTO tb_auditoria_itens VALUES("4078","","2019-03-20 14:08:42","dt_cadastro","766");

INSERT INTO tb_auditoria_itens VALUES("4079","","29.9","nu_valor","766");

INSERT INTO tb_auditoria_itens VALUES("4080","","Serviço Inicial","ds_observacao","766");

INSERT INTO tb_auditoria_itens VALUES("4081","","83","co_categoria_servico","767");

INSERT INTO tb_auditoria_itens VALUES("4082","","2019-03-20 14:08:42","dt_cadastro","767");

INSERT INTO tb_auditoria_itens VALUES("4083","","A","st_status","767");

INSERT INTO tb_auditoria_itens VALUES("4084","","Manicure e Pedicure","no_servico","767");

INSERT INTO tb_auditoria_itens VALUES("4085","","90","nu_duracao","767");

INSERT INTO tb_auditoria_itens VALUES("4086","","Unhas em Gel: feitas com produto à base de película de poliéster, \n        antitóxico e antialérgico, secado sob o calor de lâmpada de UV. As unhas têm aparência mais natural e \n        são mais finas.","ds_descricao","767");

INSERT INTO tb_auditoria_itens VALUES("4087","","180","co_servico","768");

INSERT INTO tb_auditoria_itens VALUES("4088","","2019-03-20 14:08:42","dt_cadastro","768");

INSERT INTO tb_auditoria_itens VALUES("4089","","59.9","nu_valor","768");

INSERT INTO tb_auditoria_itens VALUES("4090","","Serviço Inicial","ds_observacao","768");

INSERT INTO tb_auditoria_itens VALUES("4091","","11","co_assinante","769");

INSERT INTO tb_auditoria_itens VALUES("4092","","2019-03-20 14:08:42","dt_cadastro","769");

INSERT INTO tb_auditoria_itens VALUES("4093","","A","st_status","769");

INSERT INTO tb_auditoria_itens VALUES("4094","","Maquiagem","no_categoria_servico","769");

INSERT INTO tb_auditoria_itens VALUES("4095","","84","co_categoria_servico","770");

INSERT INTO tb_auditoria_itens VALUES("4096","","2019-03-20 14:08:42","dt_cadastro","770");

INSERT INTO tb_auditoria_itens VALUES("4097","","A","st_status","770");

INSERT INTO tb_auditoria_itens VALUES("4098","","Maquiagem Completa","no_servico","770");

INSERT INTO tb_auditoria_itens VALUES("4099","","120","nu_duracao","770");

INSERT INTO tb_auditoria_itens VALUES("4100","","Desfrute de uma make completa para arrasar em festas, comemorações e \n        casamentos com uma super maquiagem.","ds_descricao","770");

INSERT INTO tb_auditoria_itens VALUES("4101","","181","co_servico","771");

INSERT INTO tb_auditoria_itens VALUES("4102","","2019-03-20 14:08:42","dt_cadastro","771");

INSERT INTO tb_auditoria_itens VALUES("4103","","119.9","nu_valor","771");

INSERT INTO tb_auditoria_itens VALUES("4104","","Serviço Inicial","ds_observacao","771");

INSERT INTO tb_auditoria_itens VALUES("4105","","11","co_assinante","772");

INSERT INTO tb_auditoria_itens VALUES("4106","","2019-03-20 14:08:42","dt_cadastro","772");

INSERT INTO tb_auditoria_itens VALUES("4107","","A","st_status","772");

INSERT INTO tb_auditoria_itens VALUES("4108","","Sobrancelha","no_categoria_servico","772");

INSERT INTO tb_auditoria_itens VALUES("4109","","85","co_categoria_servico","773");

INSERT INTO tb_auditoria_itens VALUES("4110","","2019-03-20 14:08:42","dt_cadastro","773");

INSERT INTO tb_auditoria_itens VALUES("4111","","A","st_status","773");

INSERT INTO tb_auditoria_itens VALUES("4112","","Alongamento de Cílios Fio a Fio","no_servico","773");

INSERT INTO tb_auditoria_itens VALUES("4113","","90","nu_duracao","773");

INSERT INTO tb_auditoria_itens VALUES("4114","","Alongamento de Cílios: a técnica de alongamento de cílios trata-se \n        de uma espécie de “mega-hair” para cílios, ou seja, aumenta o tamanho e o volume dos pelos, fio a fio, \n        fazendo com que os mesmos fiquem alongados, cheios e definidos, c","ds_descricao","773");

INSERT INTO tb_auditoria_itens VALUES("4115","","182","co_servico","774");

INSERT INTO tb_auditoria_itens VALUES("4116","","2019-03-20 14:08:42","dt_cadastro","774");

INSERT INTO tb_auditoria_itens VALUES("4117","","79.9","nu_valor","774");

INSERT INTO tb_auditoria_itens VALUES("4118","","Serviço Inicial","ds_observacao","774");

INSERT INTO tb_auditoria_itens VALUES("4119","","85","co_categoria_servico","775");

INSERT INTO tb_auditoria_itens VALUES("4120","","2019-03-20 14:08:42","dt_cadastro","775");

INSERT INTO tb_auditoria_itens VALUES("4121","","A","st_status","775");

INSERT INTO tb_auditoria_itens VALUES("4122","","Design de Sobrancelhas","no_servico","775");

INSERT INTO tb_auditoria_itens VALUES("4123","","30","nu_duracao","775");

INSERT INTO tb_auditoria_itens VALUES("4124","","Design de Sobrancelhas: além de ser esteticamente essencial, garante \n        uma expressão mais bonita, evidencia traços naturais e deixa você com olhar muito mais seguro e disposto. \n        Feito de acordo com o formato do seu rosto. Feito com pinça.","ds_descricao","775");

INSERT INTO tb_auditoria_itens VALUES("4125","","183","co_servico","776");

INSERT INTO tb_auditoria_itens VALUES("4126","","2019-03-20 14:08:42","dt_cadastro","776");

INSERT INTO tb_auditoria_itens VALUES("4127","","24.9","nu_valor","776");

INSERT INTO tb_auditoria_itens VALUES("4128","","Serviço Inicial","ds_observacao","776");

INSERT INTO tb_auditoria_itens VALUES("4129","","11","co_assinante","777");

INSERT INTO tb_auditoria_itens VALUES("4130","","2019-03-20 14:08:42","dt_cadastro","777");

INSERT INTO tb_auditoria_itens VALUES("4131","","A","st_status","777");

INSERT INTO tb_auditoria_itens VALUES("4132","","Barba","no_categoria_servico","777");

INSERT INTO tb_auditoria_itens VALUES("4133","","86","co_categoria_servico","778");

INSERT INTO tb_auditoria_itens VALUES("4134","","2019-03-20 14:08:42","dt_cadastro","778");

INSERT INTO tb_auditoria_itens VALUES("4135","","A","st_status","778");

INSERT INTO tb_auditoria_itens VALUES("4136","","Retoque na Barba","no_servico","778");

INSERT INTO tb_auditoria_itens VALUES("4137","","60","nu_duracao","778");

INSERT INTO tb_auditoria_itens VALUES("4138","","Barba: faça a barba totalmente ou apare com um design a seu gosto para \n        manter a aparência impecável.","ds_descricao","778");

INSERT INTO tb_auditoria_itens VALUES("4139","","184","co_servico","779");

INSERT INTO tb_auditoria_itens VALUES("4140","","2019-03-20 14:08:42","dt_cadastro","779");

INSERT INTO tb_auditoria_itens VALUES("4141","","19.9","nu_valor","779");

INSERT INTO tb_auditoria_itens VALUES("4142","","Serviço Inicial","ds_observacao","779");

INSERT INTO tb_auditoria_itens VALUES("4143","","11","co_assinante","780");

INSERT INTO tb_auditoria_itens VALUES("4144","","2019-03-20 14:08:42","dt_cadastro","780");

INSERT INTO tb_auditoria_itens VALUES("4145","","A","st_status","780");

INSERT INTO tb_auditoria_itens VALUES("4146","","Estética Facial","no_categoria_servico","780");

INSERT INTO tb_auditoria_itens VALUES("4147","","87","co_categoria_servico","781");

INSERT INTO tb_auditoria_itens VALUES("4148","","2019-03-20 14:08:42","dt_cadastro","781");

INSERT INTO tb_auditoria_itens VALUES("4149","","A","st_status","781");

INSERT INTO tb_auditoria_itens VALUES("4150","","Rejuvenescimento Facial","no_servico","781");

INSERT INTO tb_auditoria_itens VALUES("4151","","60","nu_duracao","781");

INSERT INTO tb_auditoria_itens VALUES("4152","","Rejuvenescimento Facial com Luz Pulsada é um procedimento \n        de última geração que promove a melhora da textura, vivacidade e iluminação da pele, além de repor o colágeno \n        e a elastina proporcionando assim uma pele mais firme e jovem.","ds_descricao","781");

INSERT INTO tb_auditoria_itens VALUES("4153","","185","co_servico","782");

INSERT INTO tb_auditoria_itens VALUES("4154","","2019-03-20 14:08:42","dt_cadastro","782");

INSERT INTO tb_auditoria_itens VALUES("4155","","19.9","nu_valor","782");

INSERT INTO tb_auditoria_itens VALUES("4156","","Serviço Inicial","ds_observacao","782");

INSERT INTO tb_auditoria_itens VALUES("4157","","87","co_categoria_servico","783");

INSERT INTO tb_auditoria_itens VALUES("4158","","2019-03-20 14:08:42","dt_cadastro","783");

INSERT INTO tb_auditoria_itens VALUES("4159","","A","st_status","783");

INSERT INTO tb_auditoria_itens VALUES("4160","","Microagulhamento com Peeling","no_servico","783");

INSERT INTO tb_auditoria_itens VALUES("4161","","60","nu_duracao","783");

INSERT INTO tb_auditoria_itens VALUES("4162","","Microagulhamento: promove textura mais macia, atenuando cicatrizes \n        de acne, poros abertos, rugas, linhas de expressão, cicatrizes, estrias, olheiras, manchas, flacidez. e Peeling \n        de diamante: entre os principais objetivos do procedimen","ds_descricao","783");

INSERT INTO tb_auditoria_itens VALUES("4163","","186","co_servico","784");

INSERT INTO tb_auditoria_itens VALUES("4164","","2019-03-20 14:08:42","dt_cadastro","784");

INSERT INTO tb_auditoria_itens VALUES("4165","","69.9","nu_valor","784");

INSERT INTO tb_auditoria_itens VALUES("4166","","Serviço Inicial","ds_observacao","784");

INSERT INTO tb_auditoria_itens VALUES("4167","","87","co_categoria_servico","785");

INSERT INTO tb_auditoria_itens VALUES("4168","","2019-03-20 14:08:42","dt_cadastro","785");

INSERT INTO tb_auditoria_itens VALUES("4169","","A","st_status","785");

INSERT INTO tb_auditoria_itens VALUES("4170","","Máscara Acne Control","no_servico","785");

INSERT INTO tb_auditoria_itens VALUES("4171","","60","nu_duracao","785");

INSERT INTO tb_auditoria_itens VALUES("4172","","Máscara Acne Control: o tratamento visa diminuir a acne, manchas e melhorar a \n        textura e a firmeza da pele.","ds_descricao","785");

INSERT INTO tb_auditoria_itens VALUES("4173","","187","co_servico","786");

INSERT INTO tb_auditoria_itens VALUES("4174","","2019-03-20 14:08:42","dt_cadastro","786");

INSERT INTO tb_auditoria_itens VALUES("4175","","39.9","nu_valor","786");

INSERT INTO tb_auditoria_itens VALUES("4176","","Serviço Inicial","ds_observacao","786");

INSERT INTO tb_auditoria_itens VALUES("4177","","87","co_categoria_servico","787");

INSERT INTO tb_auditoria_itens VALUES("4178","","2019-03-20 14:08:42","dt_cadastro","787");

INSERT INTO tb_auditoria_itens VALUES("4179","","A","st_status","787");

INSERT INTO tb_auditoria_itens VALUES("4180","","Limpeza de Pele","no_servico","787");

INSERT INTO tb_auditoria_itens VALUES("4181","","30","nu_duracao","787");

INSERT INTO tb_auditoria_itens VALUES("4182","","Limpeza de pele com extração: inclui higienização, vapor de ozônio e extração \n        de cravos, deixando seu rosto limpo e saudável para os demais procedimentos.","ds_descricao","787");

INSERT INTO tb_auditoria_itens VALUES("4183","","188","co_servico","788");

INSERT INTO tb_auditoria_itens VALUES("4184","","2019-03-20 14:08:42","dt_cadastro","788");

INSERT INTO tb_auditoria_itens VALUES("4185","","29.9","nu_valor","788");

INSERT INTO tb_auditoria_itens VALUES("4186","","Serviço Inicial","ds_observacao","788");

INSERT INTO tb_auditoria_itens VALUES("4187","","11","co_assinante","789");

INSERT INTO tb_auditoria_itens VALUES("4188","","2019-03-20 14:08:42","dt_cadastro","789");

INSERT INTO tb_auditoria_itens VALUES("4189","","A","st_status","789");

INSERT INTO tb_auditoria_itens VALUES("4190","","Depilação","no_categoria_servico","789");

INSERT INTO tb_auditoria_itens VALUES("4191","","88","co_categoria_servico","790");

INSERT INTO tb_auditoria_itens VALUES("4192","","2019-03-20 14:08:42","dt_cadastro","790");

INSERT INTO tb_auditoria_itens VALUES("4193","","A","st_status","790");

INSERT INTO tb_auditoria_itens VALUES("4194","","Depilação a Laser","no_servico","790");

INSERT INTO tb_auditoria_itens VALUES("4195","","30","nu_duracao","790");

INSERT INTO tb_auditoria_itens VALUES("4196","","Com Depilação a Laser com Soprano XL, um aparelho praticamente indolor, \n        que garante uma boa tolerância dos pacientes ao desconforto no momento da sessão.","ds_descricao","790");

INSERT INTO tb_auditoria_itens VALUES("4197","","189","co_servico","791");

INSERT INTO tb_auditoria_itens VALUES("4198","","2019-03-20 14:08:42","dt_cadastro","791");

INSERT INTO tb_auditoria_itens VALUES("4199","","99.9","nu_valor","791");

INSERT INTO tb_auditoria_itens VALUES("4200","","Serviço Inicial","ds_observacao","791");

INSERT INTO tb_auditoria_itens VALUES("4201","","88","co_categoria_servico","792");

INSERT INTO tb_auditoria_itens VALUES("4202","","2019-03-20 14:08:42","dt_cadastro","792");

INSERT INTO tb_auditoria_itens VALUES("4203","","A","st_status","792");

INSERT INTO tb_auditoria_itens VALUES("4204","","Depilação a Cera","no_servico","792");

INSERT INTO tb_auditoria_itens VALUES("4205","","60","nu_duracao","792");

INSERT INTO tb_auditoria_itens VALUES("4206","","Realizada com cera quente, que garante uma maior durabilidade, já que os \n        pelos são eliminados pela raiz. O tratamento diminui a espessura do pelo e retarda seu crescimento. É rápida, \n        sem resíduos e sua pele não fica irritada, como acon","ds_descricao","792");

INSERT INTO tb_auditoria_itens VALUES("4207","","190","co_servico","793");

INSERT INTO tb_auditoria_itens VALUES("4208","","2019-03-20 14:08:42","dt_cadastro","793");

INSERT INTO tb_auditoria_itens VALUES("4209","","29.9","nu_valor","793");

INSERT INTO tb_auditoria_itens VALUES("4210","","Serviço Inicial","ds_observacao","793");

INSERT INTO tb_auditoria_itens VALUES("4211","","88","co_categoria_servico","794");

INSERT INTO tb_auditoria_itens VALUES("4212","","2019-03-20 14:08:42","dt_cadastro","794");

INSERT INTO tb_auditoria_itens VALUES("4213","","A","st_status","794");

INSERT INTO tb_auditoria_itens VALUES("4214","","Depilação a Luz","no_servico","794");

INSERT INTO tb_auditoria_itens VALUES("4215","","30","nu_duracao","794");

INSERT INTO tb_auditoria_itens VALUES("4216","","O método remove os pelos pela destruição do folículo piloso ou \n        de sua nutrição, tornando seu crescimento inviável. O laser utiliza a cor do pelo como guia para chegar até \n        sua raiz e destruí-lo. Com a emissão de um feixe de luz monocrom","ds_descricao","794");

INSERT INTO tb_auditoria_itens VALUES("4217","","191","co_servico","795");

INSERT INTO tb_auditoria_itens VALUES("4218","","2019-03-20 14:08:42","dt_cadastro","795");

INSERT INTO tb_auditoria_itens VALUES("4219","","89.9","nu_valor","795");

INSERT INTO tb_auditoria_itens VALUES("4220","","Serviço Inicial","ds_observacao","795");

INSERT INTO tb_auditoria_itens VALUES("4221","","11","co_assinante","796");

INSERT INTO tb_auditoria_itens VALUES("4222","","2019-03-20 14:08:42","dt_cadastro","796");

INSERT INTO tb_auditoria_itens VALUES("4223","","A","st_status","796");

INSERT INTO tb_auditoria_itens VALUES("4224","","Massagem","no_categoria_servico","796");

INSERT INTO tb_auditoria_itens VALUES("4225","","89","co_categoria_servico","797");

INSERT INTO tb_auditoria_itens VALUES("4226","","2019-03-20 14:08:42","dt_cadastro","797");

INSERT INTO tb_auditoria_itens VALUES("4227","","A","st_status","797");

INSERT INTO tb_auditoria_itens VALUES("4228","","Massagem Relaxante","no_servico","797");

INSERT INTO tb_auditoria_itens VALUES("4229","","30","nu_duracao","797");

INSERT INTO tb_auditoria_itens VALUES("4230","","Massagem Relaxante: é revigorante e reduz o estado de tensão muscular.","ds_descricao","797");

INSERT INTO tb_auditoria_itens VALUES("4231","","192","co_servico","798");

INSERT INTO tb_auditoria_itens VALUES("4232","","2019-03-20 14:08:42","dt_cadastro","798");

INSERT INTO tb_auditoria_itens VALUES("4233","","29.9","nu_valor","798");

INSERT INTO tb_auditoria_itens VALUES("4234","","Serviço Inicial","ds_observacao","798");

INSERT INTO tb_auditoria_itens VALUES("4235","","89","co_categoria_servico","799");

INSERT INTO tb_auditoria_itens VALUES("4236","","2019-03-20 14:08:42","dt_cadastro","799");

INSERT INTO tb_auditoria_itens VALUES("4237","","A","st_status","799");

INSERT INTO tb_auditoria_itens VALUES("4238","","Massagem Modeladora","no_servico","799");

INSERT INTO tb_auditoria_itens VALUES("4239","","30","nu_duracao","799");

INSERT INTO tb_auditoria_itens VALUES("4240","","Massagem Modeladora: para quem precisa ativar o metabolismo local, \n        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.","ds_descricao","799");

INSERT INTO tb_auditoria_itens VALUES("4241","","193","co_servico","800");

INSERT INTO tb_auditoria_itens VALUES("4242","","2019-03-20 14:08:42","dt_cadastro","800");

INSERT INTO tb_auditoria_itens VALUES("4243","","29.9","nu_valor","800");

INSERT INTO tb_auditoria_itens VALUES("4244","","Serviço Inicial","ds_observacao","800");

INSERT INTO tb_auditoria_itens VALUES("4245","","89","co_categoria_servico","801");

INSERT INTO tb_auditoria_itens VALUES("4246","","2019-03-20 14:08:42","dt_cadastro","801");

INSERT INTO tb_auditoria_itens VALUES("4247","","A","st_status","801");

INSERT INTO tb_auditoria_itens VALUES("4248","","Drenagem Linfática","no_servico","801");

INSERT INTO tb_auditoria_itens VALUES("4249","","30","nu_duracao","801");

INSERT INTO tb_auditoria_itens VALUES("4250","","Drenagem Linfática: para quem precisa retirar o excesso de líquidos e \n        toxinas do organismo.","ds_descricao","801");

INSERT INTO tb_auditoria_itens VALUES("4251","","194","co_servico","802");

INSERT INTO tb_auditoria_itens VALUES("4252","","2019-03-20 14:08:42","dt_cadastro","802");

INSERT INTO tb_auditoria_itens VALUES("4253","","29.9","nu_valor","802");

INSERT INTO tb_auditoria_itens VALUES("4254","","Serviço Inicial","ds_observacao","802");

INSERT INTO tb_auditoria_itens VALUES("4255","","89","co_categoria_servico","803");

INSERT INTO tb_auditoria_itens VALUES("4256","","2019-03-20 14:08:42","dt_cadastro","803");

INSERT INTO tb_auditoria_itens VALUES("4257","","A","st_status","803");

INSERT INTO tb_auditoria_itens VALUES("4258","","Day Spa","no_servico","803");

INSERT INTO tb_auditoria_itens VALUES("4259","","120","nu_duracao","803");

INSERT INTO tb_auditoria_itens VALUES("4260","","Massagem com pedras quentes é uma terapia complementar, que utiliza pedras de \n        vários tipos e tamanhos, principalmente as vulcânicas, que absorvem muito mais o calor. Esta terapia é capaz \n        de levar a um profundo relaxamento e bem estar, ","ds_descricao","803");

INSERT INTO tb_auditoria_itens VALUES("4261","","195","co_servico","804");

INSERT INTO tb_auditoria_itens VALUES("4262","","2019-03-20 14:08:42","dt_cadastro","804");

INSERT INTO tb_auditoria_itens VALUES("4263","","99.9","nu_valor","804");

INSERT INTO tb_auditoria_itens VALUES("4264","","Serviço Inicial","ds_observacao","804");

INSERT INTO tb_auditoria_itens VALUES("4265","","11","co_assinante","805");

INSERT INTO tb_auditoria_itens VALUES("4266","","2019-03-20 14:08:42","dt_cadastro","805");

INSERT INTO tb_auditoria_itens VALUES("4267","","A","st_status","805");

INSERT INTO tb_auditoria_itens VALUES("4268","","Podologia","no_categoria_servico","805");

INSERT INTO tb_auditoria_itens VALUES("4269","","90","co_categoria_servico","806");

INSERT INTO tb_auditoria_itens VALUES("4270","","2019-03-20 14:08:42","dt_cadastro","806");

INSERT INTO tb_auditoria_itens VALUES("4271","","A","st_status","806");

INSERT INTO tb_auditoria_itens VALUES("4272","","Podologia com limpeza dos pés","no_servico","806");

INSERT INTO tb_auditoria_itens VALUES("4273","","60","nu_duracao","806");

INSERT INTO tb_auditoria_itens VALUES("4274","","Podologia com limpeza dos pés: corte, polimento, limpeza, \n        debastamento das calosidades, esfoliação dos pés e hidratação profunda.","ds_descricao","806");

INSERT INTO tb_auditoria_itens VALUES("4275","","196","co_servico","807");

INSERT INTO tb_auditoria_itens VALUES("4276","","2019-03-20 14:08:42","dt_cadastro","807");

INSERT INTO tb_auditoria_itens VALUES("4277","","39.9","nu_valor","807");

INSERT INTO tb_auditoria_itens VALUES("4278","","Serviço Inicial","ds_observacao","807");

INSERT INTO tb_auditoria_itens VALUES("4279","","11","co_assinante","808");

INSERT INTO tb_auditoria_itens VALUES("4280","","2019-03-20 14:08:42","dt_cadastro","808");

INSERT INTO tb_auditoria_itens VALUES("4281","","A","st_status","808");

INSERT INTO tb_auditoria_itens VALUES("4282","","Terapia","no_categoria_servico","808");

INSERT INTO tb_auditoria_itens VALUES("4283","","91","co_categoria_servico","809");

INSERT INTO tb_auditoria_itens VALUES("4284","","2019-03-20 14:08:43","dt_cadastro","809");

INSERT INTO tb_auditoria_itens VALUES("4285","","A","st_status","809");

INSERT INTO tb_auditoria_itens VALUES("4286","","Bambuterapia","no_servico","809");

INSERT INTO tb_auditoria_itens VALUES("4287","","60","nu_duracao","809");

INSERT INTO tb_auditoria_itens VALUES("4288","","Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, \n        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes \n        e energética.","ds_descricao","809");

INSERT INTO tb_auditoria_itens VALUES("4289","","197","co_servico","810");

INSERT INTO tb_auditoria_itens VALUES("4290","","2019-03-20 14:08:43","dt_cadastro","810");

INSERT INTO tb_auditoria_itens VALUES("4291","","29.9","nu_valor","810");

INSERT INTO tb_auditoria_itens VALUES("4292","","Serviço Inicial","ds_observacao","810");

INSERT INTO tb_auditoria_itens VALUES("4293","","91","co_categoria_servico","811");

INSERT INTO tb_auditoria_itens VALUES("4294","","2019-03-20 14:08:43","dt_cadastro","811");

INSERT INTO tb_auditoria_itens VALUES("4295","","A","st_status","811");

INSERT INTO tb_auditoria_itens VALUES("4296","","Carboxiterapia","no_servico","811");

INSERT INTO tb_auditoria_itens VALUES("4297","","30","nu_duracao","811");

INSERT INTO tb_auditoria_itens VALUES("4298","","Feita por meio de injeção subcutânea de gás carbônico medicinal, estimula a \n        produção de colágeno local e ajuda a reduzir a gordura localizada, ao mesmo tempo que melhora a celulite \n        e flacidez.","ds_descricao","811");

INSERT INTO tb_auditoria_itens VALUES("4299","","198","co_servico","812");

INSERT INTO tb_auditoria_itens VALUES("4300","","2019-03-20 14:08:43","dt_cadastro","812");

INSERT INTO tb_auditoria_itens VALUES("4301","","39.9","nu_valor","812");

INSERT INTO tb_auditoria_itens VALUES("4302","","Serviço Inicial","ds_observacao","812");

INSERT INTO tb_auditoria_itens VALUES("4303","45","","co_historia","813");

INSERT INTO tb_auditoria_itens VALUES("4304","Tabela base serviços","Tabela base serviços","ds_titulo","813");

INSERT INTO tb_auditoria_itens VALUES("4305","<p>Tabela base servi&ccedil;os</p>\n\n<p>Modelagem: Servi&ccedil;os Base, inicio servi&ccedil;os b&aacute;sicos e Tabela Pre&ccedil;o Servi&ccedil;o, inicializar categorias de servi&ccedil;os se preciso</p>","<p>Tabela base servi&ccedil;os</p>\n\n<p>Modelagem: Servi&ccedil;os Base, inicio servi&ccedil;os b&aacute;sicos e Tabela Pre&ccedil;o Servi&ccedil;o, inicializar categorias de servi&ccedil;os se preciso</p>","ds_observacao","813");

INSERT INTO tb_auditoria_itens VALUES("4306","2018-07-25 18:43:26","","dt_cadastro","813");

INSERT INTO tb_auditoria_itens VALUES("4307","2019-02-25 16:08:44","2019-03-20 14:14:45","dt_atualizado","813");

INSERT INTO tb_auditoria_itens VALUES("4308","I","C","st_situacao","813");

INSERT INTO tb_auditoria_itens VALUES("4309","12","12","co_sessao","813");

INSERT INTO tb_auditoria_itens VALUES("4310","","20","nu_esforco","814");

INSERT INTO tb_auditoria_itens VALUES("4311","","0","nu_esforco_restante","814");

INSERT INTO tb_auditoria_itens VALUES("4312","","2019-03-20 14:14:45","dt_cadastro","814");

INSERT INTO tb_auditoria_itens VALUES("4313","","45","co_historia","814");

INSERT INTO tb_auditoria_itens VALUES("4314","44","","co_historia","815");

INSERT INTO tb_auditoria_itens VALUES("4315","Manter Serviço","Manter Serviço","ds_titulo","815");

INSERT INTO tb_auditoria_itens VALUES("4316","<p>Manter Servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Servi&ccedil;o (FK categoria Servi. Assinante)</p>","<p>Manter Servi&ccedil;o</p>\n\n<p>Modelagem: Servi&ccedil;o (FK categoria Servi. Assinante) e listagem dos servi&ccedil;os por categoria</p>","ds_observacao","815");

INSERT INTO tb_auditoria_itens VALUES("4317","2018-07-25 18:42:35","","dt_cadastro","815");

INSERT INTO tb_auditoria_itens VALUES("4318","2018-07-25 18:42:35","2019-03-20 14:17:47","dt_atualizado","815");

INSERT INTO tb_auditoria_itens VALUES("4319","N","N","st_situacao","815");

INSERT INTO tb_auditoria_itens VALUES("4320","12","12","co_sessao","815");

INSERT INTO tb_auditoria_itens VALUES("4321","","13","nu_esforco","816");

INSERT INTO tb_auditoria_itens VALUES("4322","","13","nu_esforco_restante","816");

INSERT INTO tb_auditoria_itens VALUES("4323","","2019-03-20 14:17:47","dt_cadastro","816");

INSERT INTO tb_auditoria_itens VALUES("4324","","44","co_historia","816");

INSERT INTO tb_auditoria_itens VALUES("4325","","Pesquisa Avançada dos serviços","ds_titulo","817");

INSERT INTO tb_auditoria_itens VALUES("4326","","<p>Pesquisa Avan&ccedil;ada dos servi&ccedil;os por categoria, descri&ccedil;&atilde;o, valor, profissional</p>","ds_observacao","817");

INSERT INTO tb_auditoria_itens VALUES("4327","","12","co_sessao","817");

INSERT INTO tb_auditoria_itens VALUES("4328","","N","st_situacao","817");

INSERT INTO tb_auditoria_itens VALUES("4329","","2019-03-20 14:19:52","dt_atualizado","817");

INSERT INTO tb_auditoria_itens VALUES("4330","","2019-03-20 14:19:52","dt_cadastro","817");

INSERT INTO tb_auditoria_itens VALUES("4331","","8","nu_esforco","818");

INSERT INTO tb_auditoria_itens VALUES("4332","","8","nu_esforco_restante","818");

INSERT INTO tb_auditoria_itens VALUES("4333","","2019-03-20 14:19:52","dt_cadastro","818");

INSERT INTO tb_auditoria_itens VALUES("4334","","144","co_historia","818");

INSERT INTO tb_auditoria_itens VALUES("4335","","Promoções do Serviço","ds_titulo","819");

INSERT INTO tb_auditoria_itens VALUES("4336","","<p>Apresentar todas as promo&ccedil;&atilde;oes do servi&ccedil;o</p>","ds_observacao","819");

INSERT INTO tb_auditoria_itens VALUES("4337","","12","co_sessao","819");

INSERT INTO tb_auditoria_itens VALUES("4338","","N","st_situacao","819");

INSERT INTO tb_auditoria_itens VALUES("4339","","2019-03-20 14:22:28","dt_atualizado","819");

INSERT INTO tb_auditoria_itens VALUES("4340","","2019-03-20 14:22:28","dt_cadastro","819");

INSERT INTO tb_auditoria_itens VALUES("4341","","8","nu_esforco","820");

INSERT INTO tb_auditoria_itens VALUES("4342","","8","nu_esforco_restante","820");

INSERT INTO tb_auditoria_itens VALUES("4343","","2019-03-20 14:22:28","dt_cadastro","820");

INSERT INTO tb_auditoria_itens VALUES("4344","","145","co_historia","820");

INSERT INTO tb_auditoria_itens VALUES("4345","","Pacotes do Serviço","ds_titulo","821");

INSERT INTO tb_auditoria_itens VALUES("4346","","<p>apresentar todos os Pacotes do Servi&ccedil;o</p>","ds_observacao","821");

INSERT INTO tb_auditoria_itens VALUES("4347","","12","co_sessao","821");

INSERT INTO tb_auditoria_itens VALUES("4348","","N","st_situacao","821");

INSERT INTO tb_auditoria_itens VALUES("4349","","2019-03-20 14:22:52","dt_atualizado","821");

INSERT INTO tb_auditoria_itens VALUES("4350","","2019-03-20 14:22:52","dt_cadastro","821");

INSERT INTO tb_auditoria_itens VALUES("4351","","8","nu_esforco","822");

INSERT INTO tb_auditoria_itens VALUES("4352","","8","nu_esforco_restante","822");

INSERT INTO tb_auditoria_itens VALUES("4353","","2019-03-20 14:22:52","dt_cadastro","822");

INSERT INTO tb_auditoria_itens VALUES("4354","","146","co_historia","822");

INSERT INTO tb_auditoria_itens VALUES("4355","","Pesquisa Avançada dos Profissionais","ds_titulo","823");

INSERT INTO tb_auditoria_itens VALUES("4356","","<p>Pesquisa Avan&ccedil;ada dos Profissionais por nome, filial, cargo, jornada de tabalho, sexo, cidade e uf, assistente , possui agenda,&nbsp; agenda on line, banco,</p>","ds_observacao","823");

INSERT INTO tb_auditoria_itens VALUES("4357","","9","co_sessao","823");

INSERT INTO tb_auditoria_itens VALUES("4358","","N","st_situacao","823");

INSERT INTO tb_auditoria_itens VALUES("4359","","2019-03-20 14:26:33","dt_atualizado","823");

INSERT INTO tb_auditoria_itens VALUES("4360","","2019-03-20 14:26:33","dt_cadastro","823");

INSERT INTO tb_auditoria_itens VALUES("4361","","20","nu_esforco","824");

INSERT INTO tb_auditoria_itens VALUES("4362","","20","nu_esforco_restante","824");

INSERT INTO tb_auditoria_itens VALUES("4363","","2019-03-20 14:26:33","dt_cadastro","824");

INSERT INTO tb_auditoria_itens VALUES("4364","","147","co_historia","824");

INSERT INTO tb_auditoria_itens VALUES("4365","145","","co_historia","825");

INSERT INTO tb_auditoria_itens VALUES("4366","Promoções do Serviço","Histórico Promoções do Serviço","ds_titulo","825");

INSERT INTO tb_auditoria_itens VALUES("4367","<p>Apresentar todas as promo&ccedil;&atilde;oes do servi&ccedil;o</p>","<p>Apresentar Hist&oacute;rico das promo&ccedil;&atilde;oes do servi&ccedil;o</p>","ds_observacao","825");

INSERT INTO tb_auditoria_itens VALUES("4368","2019-03-20 14:22:28","","dt_cadastro","825");

INSERT INTO tb_auditoria_itens VALUES("4369","2019-03-20 14:22:28","2019-03-20 14:27:15","dt_atualizado","825");

INSERT INTO tb_auditoria_itens VALUES("4370","N","N","st_situacao","825");

INSERT INTO tb_auditoria_itens VALUES("4371","12","12","co_sessao","825");

INSERT INTO tb_auditoria_itens VALUES("4372","","8","nu_esforco","826");

INSERT INTO tb_auditoria_itens VALUES("4373","","8","nu_esforco_restante","826");

INSERT INTO tb_auditoria_itens VALUES("4374","","2019-03-20 14:27:15","dt_cadastro","826");

INSERT INTO tb_auditoria_itens VALUES("4375","","145","co_historia","826");

INSERT INTO tb_auditoria_itens VALUES("4376","146","","co_historia","827");

INSERT INTO tb_auditoria_itens VALUES("4377","Pacotes do Serviço","Histórico Pacotes do Serviço","ds_titulo","827");

INSERT INTO tb_auditoria_itens VALUES("4378","<p>apresentar todos os Pacotes do Servi&ccedil;o</p>","<p>apresentar Hist&oacute;rico os Pacotes do Servi&ccedil;o</p>","ds_observacao","827");

INSERT INTO tb_auditoria_itens VALUES("4379","2019-03-20 14:22:52","","dt_cadastro","827");

INSERT INTO tb_auditoria_itens VALUES("4380","2019-03-20 14:22:52","2019-03-20 14:27:31","dt_atualizado","827");

INSERT INTO tb_auditoria_itens VALUES("4381","N","N","st_situacao","827");

INSERT INTO tb_auditoria_itens VALUES("4382","12","12","co_sessao","827");

INSERT INTO tb_auditoria_itens VALUES("4383","","8","nu_esforco","828");

INSERT INTO tb_auditoria_itens VALUES("4384","","8","nu_esforco_restante","828");

INSERT INTO tb_auditoria_itens VALUES("4385","","2019-03-20 14:27:31","dt_cadastro","828");

INSERT INTO tb_auditoria_itens VALUES("4386","","146","co_historia","828");

INSERT INTO tb_auditoria_itens VALUES("4387","144","","co_historia","829");

INSERT INTO tb_auditoria_itens VALUES("4388","Pesquisa Avançada dos serviços","Pesquisa Avançada dos Serviços","ds_titulo","829");

INSERT INTO tb_auditoria_itens VALUES("4389","<p>Pesquisa Avan&ccedil;ada dos servi&ccedil;os por categoria, descri&ccedil;&atilde;o, valor, profissional</p>","<p>Pesquisa Avan&ccedil;ada dos servi&ccedil;os por categoria, descri&ccedil;&atilde;o, valor, profissional, status, dura&ccedil;&atilde;o,</p>","ds_observacao","829");

INSERT INTO tb_auditoria_itens VALUES("4390","2019-03-20 14:19:52","","dt_cadastro","829");

INSERT INTO tb_auditoria_itens VALUES("4391","2019-03-20 14:19:52","2019-03-20 14:28:42","dt_atualizado","829");

INSERT INTO tb_auditoria_itens VALUES("4392","N","N","st_situacao","829");

INSERT INTO tb_auditoria_itens VALUES("4393","12","12","co_sessao","829");

INSERT INTO tb_auditoria_itens VALUES("4394","","8","nu_esforco","830");

INSERT INTO tb_auditoria_itens VALUES("4395","","8","nu_esforco_restante","830");

INSERT INTO tb_auditoria_itens VALUES("4396","","2019-03-20 14:28:42","dt_cadastro","830");

INSERT INTO tb_auditoria_itens VALUES("4397","","144","co_historia","830");

INSERT INTO tb_auditoria_itens VALUES("4398","","Pesquisa Avançada dos Clientes","ds_titulo","831");

INSERT INTO tb_auditoria_itens VALUES("4399","","<p>Pesquisa Avan&ccedil;ada dos Clientes nome, apelido, anivers&aacute;rio do m&ecirc;s semana, sexo, cidade e UF,&nbsp; Recebe E-mail Agendamento, Lembrete Hor&aacute;rio de Agendamento, Recebe E-mail Marketing, Recebe SMS Marketing,&nbsp;</p>","ds_observacao","831");

INSERT INTO tb_auditoria_itens VALUES("4400","","11","co_sessao","831");

INSERT INTO tb_auditoria_itens VALUES("4401","","N","st_situacao","831");

INSERT INTO tb_auditoria_itens VALUES("4402","","2019-03-20 14:34:27","dt_atualizado","831");

INSERT INTO tb_auditoria_itens VALUES("4403","","2019-03-20 14:34:27","dt_cadastro","831");

INSERT INTO tb_auditoria_itens VALUES("4404","","13","nu_esforco","832");

INSERT INTO tb_auditoria_itens VALUES("4405","","13","nu_esforco_restante","832");

INSERT INTO tb_auditoria_itens VALUES("4406","","2019-03-20 14:34:27","dt_cadastro","832");

INSERT INTO tb_auditoria_itens VALUES("4407","","148","co_historia","832");

INSERT INTO tb_auditoria_itens VALUES("4408","","Pesquisa Avançada dos Assinantes","ds_titulo","833");

INSERT INTO tb_auditoria_itens VALUES("4409","","<p>Pesquisa Avan&ccedil;ada dos Assinantes por raz&atilde;o soxial, nome fantasia, Respons&aacute;vel, cidade e UF, email, Tipo de estabelecimento, Atendimento, Genero Especializado, funcionamento</p>","ds_observacao","833");

INSERT INTO tb_auditoria_itens VALUES("4410","","1","co_sessao","833");

INSERT INTO tb_auditoria_itens VALUES("4411","","N","st_situacao","833");

INSERT INTO tb_auditoria_itens VALUES("4412","","2019-03-20 14:37:45","dt_atualizado","833");

INSERT INTO tb_auditoria_itens VALUES("4413","","2019-03-20 14:37:45","dt_cadastro","833");

INSERT INTO tb_auditoria_itens VALUES("4414","","8","nu_esforco","834");

INSERT INTO tb_auditoria_itens VALUES("4415","","8","nu_esforco_restante","834");

INSERT INTO tb_auditoria_itens VALUES("4416","","2019-03-20 14:37:45","dt_cadastro","834");

INSERT INTO tb_auditoria_itens VALUES("4417","","149","co_historia","834");

INSERT INTO tb_auditoria_itens VALUES("4418","149","","co_historia","835");

INSERT INTO tb_auditoria_itens VALUES("4419","Pesquisa Avançada dos Assinantes","Pesquisa Avançada dos Assinantes","ds_titulo","835");

INSERT INTO tb_auditoria_itens VALUES("4420","<p>Pesquisa Avan&ccedil;ada dos Assinantes por raz&atilde;o soxial, nome fantasia, Respons&aacute;vel, cidade e UF, email, Tipo de estabelecimento, Atendimento, Genero Especializado, funcionamento</p>","<p>Pesquisa Avan&ccedil;ada dos Assinantes por raz&atilde;o soxial, nome fantasia, Respons&aacute;vel, cidade e UF, email, Tipo de estabelecimento, Atendimento, Genero Especializado, funcionamento, data de expira&ccedil;&atilde;o (Per&iacute;odo), n&uacut","ds_observacao","835");

INSERT INTO tb_auditoria_itens VALUES("4421","2019-03-20 14:37:45","","dt_cadastro","835");

INSERT INTO tb_auditoria_itens VALUES("4422","2019-03-20 14:37:45","2019-03-20 14:40:07","dt_atualizado","835");

INSERT INTO tb_auditoria_itens VALUES("4423","N","N","st_situacao","835");

INSERT INTO tb_auditoria_itens VALUES("4424","1","1","co_sessao","835");

INSERT INTO tb_auditoria_itens VALUES("4425","","20","nu_esforco","836");

INSERT INTO tb_auditoria_itens VALUES("4426","","20","nu_esforco_restante","836");

INSERT INTO tb_auditoria_itens VALUES("4427","","2019-03-20 14:40:07","dt_cadastro","836");

INSERT INTO tb_auditoria_itens VALUES("4428","","149","co_historia","836");

INSERT INTO tb_auditoria_itens VALUES("4429","","61","co_funcionalidade","837");

INSERT INTO tb_auditoria_itens VALUES("4430","","2","co_perfil","837");

INSERT INTO tb_auditoria_itens VALUES("4464","","11","co_assinante","847");

INSERT INTO tb_auditoria_itens VALUES("4465","","2019-03-20 16:54:46","dt_cadastro","847");

INSERT INTO tb_auditoria_itens VALUES("4466","","A","st_status","847");

INSERT INTO tb_auditoria_itens VALUES("4467","","Cabelo","no_categoria_servico","847");

INSERT INTO tb_auditoria_itens VALUES("4468","","servico_padrao/tonalizante-coloracao02.jpg","ds_caminho","848");

INSERT INTO tb_auditoria_itens VALUES("4469","","5","co_categoria_servico","849");

INSERT INTO tb_auditoria_itens VALUES("4470","","47","co_imagem","849");

INSERT INTO tb_auditoria_itens VALUES("4471","","2019-03-20 16:54:46","dt_cadastro","849");

INSERT INTO tb_auditoria_itens VALUES("4472","","A","st_status","849");

INSERT INTO tb_auditoria_itens VALUES("4473","","Coloração / Tonalização","no_servico","849");

INSERT INTO tb_auditoria_itens VALUES("4474","","120","nu_duracao","849");

INSERT INTO tb_auditoria_itens VALUES("4475","","Tonalização: matiza e deixa os tons dos fios mais naturais.","ds_descricao","849");

INSERT INTO tb_auditoria_itens VALUES("4476","","3","co_servico","850");

INSERT INTO tb_auditoria_itens VALUES("4477","","2019-03-20 16:54:46","dt_cadastro","850");

INSERT INTO tb_auditoria_itens VALUES("4478","","39.9","nu_valor","850");

INSERT INTO tb_auditoria_itens VALUES("4479","","Serviço Inicial","ds_observacao","850");

INSERT INTO tb_auditoria_itens VALUES("4480","","8","co_usuario","850");

INSERT INTO tb_auditoria_itens VALUES("4481","","servico_padrao/corte-de-cabelo-masculino.jpg","ds_caminho","851");

INSERT INTO tb_auditoria_itens VALUES("4482","","5","co_categoria_servico","852");

INSERT INTO tb_auditoria_itens VALUES("4483","","48","co_imagem","852");

INSERT INTO tb_auditoria_itens VALUES("4484","","2019-03-20 16:54:46","dt_cadastro","852");

INSERT INTO tb_auditoria_itens VALUES("4485","","A","st_status","852");

INSERT INTO tb_auditoria_itens VALUES("4486","","Corte Tesoura","no_servico","852");

INSERT INTO tb_auditoria_itens VALUES("4487","","30","nu_duracao","852");

INSERT INTO tb_auditoria_itens VALUES("4488","","Corte: O corte na tesoura irá deixar você com o visual renovado.","ds_descricao","852");

INSERT INTO tb_auditoria_itens VALUES("4489","","4","co_servico","853");

INSERT INTO tb_auditoria_itens VALUES("4490","","2019-03-20 16:54:46","dt_cadastro","853");

INSERT INTO tb_auditoria_itens VALUES("4491","","19.9","nu_valor","853");

INSERT INTO tb_auditoria_itens VALUES("4492","","Serviço Inicial","ds_observacao","853");

INSERT INTO tb_auditoria_itens VALUES("4493","","8","co_usuario","853");

INSERT INTO tb_auditoria_itens VALUES("4494","","servico_padrao/qual-a-melhor-máquina-de-cortar-cabelo_1.jpg","ds_caminho","854");

INSERT INTO tb_auditoria_itens VALUES("4495","","5","co_categoria_servico","855");

INSERT INTO tb_auditoria_itens VALUES("4496","","49","co_imagem","855");

INSERT INTO tb_auditoria_itens VALUES("4497","","2019-03-20 16:54:46","dt_cadastro","855");

INSERT INTO tb_auditoria_itens VALUES("4498","","A","st_status","855");

INSERT INTO tb_auditoria_itens VALUES("4499","","Corte Máquina","no_servico","855");

INSERT INTO tb_auditoria_itens VALUES("4500","","30","nu_duracao","855");

INSERT INTO tb_auditoria_itens VALUES("4501","","Corte: O corte na máquina irá deixar você com o visual renovado.","ds_descricao","855");

INSERT INTO tb_auditoria_itens VALUES("4502","","5","co_servico","856");

INSERT INTO tb_auditoria_itens VALUES("4503","","2019-03-20 16:54:46","dt_cadastro","856");

INSERT INTO tb_auditoria_itens VALUES("4504","","29.9","nu_valor","856");

INSERT INTO tb_auditoria_itens VALUES("4505","","Serviço Inicial","ds_observacao","856");

INSERT INTO tb_auditoria_itens VALUES("4506","","8","co_usuario","856");

INSERT INTO tb_auditoria_itens VALUES("4507","","servico_padrao/melhor-fase-da-lua-para-corta-cabelo-em-2019.jpg","ds_caminho","857");

INSERT INTO tb_auditoria_itens VALUES("4508","","5","co_categoria_servico","858");

INSERT INTO tb_auditoria_itens VALUES("4509","","50","co_imagem","858");

INSERT INTO tb_auditoria_itens VALUES("4510","","2019-03-20 16:54:46","dt_cadastro","858");

INSERT INTO tb_auditoria_itens VALUES("4511","","A","st_status","858");

INSERT INTO tb_auditoria_itens VALUES("4512","","Corte Feminino","no_servico","858");

INSERT INTO tb_auditoria_itens VALUES("4513","","60","nu_duracao","858");

INSERT INTO tb_auditoria_itens VALUES("4514","","Corte: mude o visual ou apare as pontinhas para manter a aparência do \n        cabelo sempre saudável.","ds_descricao","858");

INSERT INTO tb_auditoria_itens VALUES("4515","","6","co_servico","859");

INSERT INTO tb_auditoria_itens VALUES("4516","","2019-03-20 16:54:46","dt_cadastro","859");

INSERT INTO tb_auditoria_itens VALUES("4517","","59.9","nu_valor","859");

INSERT INTO tb_auditoria_itens VALUES("4518","","Serviço Inicial","ds_observacao","859");

INSERT INTO tb_auditoria_itens VALUES("4519","","8","co_usuario","859");

INSERT INTO tb_auditoria_itens VALUES("4520","","servico_padrao/mascara-de-cabelo-1.jpg","ds_caminho","860");

INSERT INTO tb_auditoria_itens VALUES("4521","","5","co_categoria_servico","861");

INSERT INTO tb_auditoria_itens VALUES("4522","","51","co_imagem","861");

INSERT INTO tb_auditoria_itens VALUES("4523","","2019-03-20 16:54:46","dt_cadastro","861");

INSERT INTO tb_auditoria_itens VALUES("4524","","A","st_status","861");

INSERT INTO tb_auditoria_itens VALUES("4525","","Hidratação Capilar","no_servico","861");

INSERT INTO tb_auditoria_itens VALUES("4526","","60","nu_duracao","861");

INSERT INTO tb_auditoria_itens VALUES("4527","","Hidratação profunda Capilar","ds_descricao","861");

INSERT INTO tb_auditoria_itens VALUES("4528","","7","co_servico","862");

INSERT INTO tb_auditoria_itens VALUES("4529","","2019-03-20 16:54:46","dt_cadastro","862");

INSERT INTO tb_auditoria_itens VALUES("4530","","49.9","nu_valor","862");

INSERT INTO tb_auditoria_itens VALUES("4531","","Serviço Inicial","ds_observacao","862");

INSERT INTO tb_auditoria_itens VALUES("4532","","8","co_usuario","862");

INSERT INTO tb_auditoria_itens VALUES("4533","","servico_padrao/lavagem-1.jpg","ds_caminho","863");

INSERT INTO tb_auditoria_itens VALUES("4534","","5","co_categoria_servico","864");

INSERT INTO tb_auditoria_itens VALUES("4535","","52","co_imagem","864");

INSERT INTO tb_auditoria_itens VALUES("4536","","2019-03-20 16:54:46","dt_cadastro","864");

INSERT INTO tb_auditoria_itens VALUES("4537","","A","st_status","864");

INSERT INTO tb_auditoria_itens VALUES("4538","","Corte e Higienização dos Fios","no_servico","864");

INSERT INTO tb_auditoria_itens VALUES("4539","","30","nu_duracao","864");

INSERT INTO tb_auditoria_itens VALUES("4540","","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","ds_descricao","864");

INSERT INTO tb_auditoria_itens VALUES("4541","","8","co_servico","865");

INSERT INTO tb_auditoria_itens VALUES("4542","","2019-03-20 16:54:46","dt_cadastro","865");

INSERT INTO tb_auditoria_itens VALUES("4543","","49.9","nu_valor","865");

INSERT INTO tb_auditoria_itens VALUES("4544","","Serviço Inicial","ds_observacao","865");

INSERT INTO tb_auditoria_itens VALUES("4545","","8","co_usuario","865");

INSERT INTO tb_auditoria_itens VALUES("4546","","servico_padrao/escova-modeladora-como-escolher-2.jpg","ds_caminho","866");

INSERT INTO tb_auditoria_itens VALUES("4547","","5","co_categoria_servico","867");

INSERT INTO tb_auditoria_itens VALUES("4548","","53","co_imagem","867");

INSERT INTO tb_auditoria_itens VALUES("4549","","2019-03-20 16:54:46","dt_cadastro","867");

INSERT INTO tb_auditoria_itens VALUES("4550","","A","st_status","867");

INSERT INTO tb_auditoria_itens VALUES("4551","","Escova Modeladora","no_servico","867");

INSERT INTO tb_auditoria_itens VALUES("4552","","30","nu_duracao","867");

INSERT INTO tb_auditoria_itens VALUES("4553","","Escova: você vai ter uma ajudinha para realinhar os cabelos com um \n        caimento perfeito.","ds_descricao","867");

INSERT INTO tb_auditoria_itens VALUES("4554","","9","co_servico","868");

INSERT INTO tb_auditoria_itens VALUES("4555","","2019-03-20 16:54:46","dt_cadastro","868");

INSERT INTO tb_auditoria_itens VALUES("4556","","29.9","nu_valor","868");

INSERT INTO tb_auditoria_itens VALUES("4557","","Serviço Inicial","ds_observacao","868");

INSERT INTO tb_auditoria_itens VALUES("4558","","8","co_usuario","868");

INSERT INTO tb_auditoria_itens VALUES("4559","","servico_padrao/selagem-termica-capilar-2.jpg","ds_caminho","869");

INSERT INTO tb_auditoria_itens VALUES("4560","","5","co_categoria_servico","870");

INSERT INTO tb_auditoria_itens VALUES("4561","","54","co_imagem","870");

INSERT INTO tb_auditoria_itens VALUES("4562","","2019-03-20 16:54:46","dt_cadastro","870");

INSERT INTO tb_auditoria_itens VALUES("4563","","A","st_status","870");

INSERT INTO tb_auditoria_itens VALUES("4564","","Selagem","no_servico","870");

INSERT INTO tb_auditoria_itens VALUES("4565","","60","nu_duracao","870");

INSERT INTO tb_auditoria_itens VALUES("4566","","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","ds_descricao","870");

INSERT INTO tb_auditoria_itens VALUES("4567","","10","co_servico","871");

INSERT INTO tb_auditoria_itens VALUES("4568","","2019-03-20 16:54:46","dt_cadastro","871");

INSERT INTO tb_auditoria_itens VALUES("4569","","59.9","nu_valor","871");

INSERT INTO tb_auditoria_itens VALUES("4570","","Serviço Inicial","ds_observacao","871");

INSERT INTO tb_auditoria_itens VALUES("4571","","8","co_usuario","871");

INSERT INTO tb_auditoria_itens VALUES("4572","","servico_padrao/Escova-progressiva.jpg","ds_caminho","872");

INSERT INTO tb_auditoria_itens VALUES("4573","","5","co_categoria_servico","873");

INSERT INTO tb_auditoria_itens VALUES("4574","","55","co_imagem","873");

INSERT INTO tb_auditoria_itens VALUES("4575","","2019-03-20 16:54:46","dt_cadastro","873");

INSERT INTO tb_auditoria_itens VALUES("4576","","A","st_status","873");

INSERT INTO tb_auditoria_itens VALUES("4577","","Escova Progressiva","no_servico","873");

INSERT INTO tb_auditoria_itens VALUES("4578","","60","nu_duracao","873");

INSERT INTO tb_auditoria_itens VALUES("4579","","Progressiva: é um realinhamento tradicional dos fios, que reestrutura a \n        fibra capilar com ativação térmica, hidratando e condicionando profundamente o cabelo. Possui um ativo \n        que adere à superfície do cabelo, selando as cutículas, repo","ds_descricao","873");

INSERT INTO tb_auditoria_itens VALUES("4580","","11","co_servico","874");

INSERT INTO tb_auditoria_itens VALUES("4581","","2019-03-20 16:54:46","dt_cadastro","874");

INSERT INTO tb_auditoria_itens VALUES("4582","","59.9","nu_valor","874");

INSERT INTO tb_auditoria_itens VALUES("4583","","Serviço Inicial","ds_observacao","874");

INSERT INTO tb_auditoria_itens VALUES("4584","","8","co_usuario","874");

INSERT INTO tb_auditoria_itens VALUES("4585","","servico_padrao/botox-capilar-como-saber-se-e-falso.jpg","ds_caminho","875");

INSERT INTO tb_auditoria_itens VALUES("4586","","5","co_categoria_servico","876");

INSERT INTO tb_auditoria_itens VALUES("4587","","56","co_imagem","876");

INSERT INTO tb_auditoria_itens VALUES("4588","","2019-03-20 16:54:46","dt_cadastro","876");

INSERT INTO tb_auditoria_itens VALUES("4589","","A","st_status","876");

INSERT INTO tb_auditoria_itens VALUES("4590","","Botox Capilar","no_servico","876");

INSERT INTO tb_auditoria_itens VALUES("4591","","60","nu_duracao","876");

INSERT INTO tb_auditoria_itens VALUES("4592","","Botox: é um poderoso reconstrutor da fibra do cabelo, garantindo sua jovialidade. \n        Esta técnica deixa-os hidratados, sem volume e com aspecto saudável.","ds_descricao","876");

INSERT INTO tb_auditoria_itens VALUES("4593","","12","co_servico","877");

INSERT INTO tb_auditoria_itens VALUES("4594","","2019-03-20 16:54:46","dt_cadastro","877");

INSERT INTO tb_auditoria_itens VALUES("4595","","59.9","nu_valor","877");

INSERT INTO tb_auditoria_itens VALUES("4596","","Serviço Inicial","ds_observacao","877");

INSERT INTO tb_auditoria_itens VALUES("4597","","8","co_usuario","877");

INSERT INTO tb_auditoria_itens VALUES("4598","","servico_padrao/luzes-reflexos.jpg","ds_caminho","878");

INSERT INTO tb_auditoria_itens VALUES("4599","","5","co_categoria_servico","879");

INSERT INTO tb_auditoria_itens VALUES("4600","","57","co_imagem","879");

INSERT INTO tb_auditoria_itens VALUES("4601","","2019-03-20 16:54:46","dt_cadastro","879");

INSERT INTO tb_auditoria_itens VALUES("4602","","A","st_status","879");

INSERT INTO tb_auditoria_itens VALUES("4603","","Luzes / Mechas","no_servico","879");

INSERT INTO tb_auditoria_itens VALUES("4604","","150","nu_duracao","879");

INSERT INTO tb_auditoria_itens VALUES("4605","","Luzes: clareiam sutilmente os fios da raiz até as pontas, deixando o cabelo \n        com mais reflexos e Mechas: descoloração feita em mechas que se misturam à cor original do cabelo.","ds_descricao","879");

INSERT INTO tb_auditoria_itens VALUES("4606","","13","co_servico","880");

INSERT INTO tb_auditoria_itens VALUES("4607","","2019-03-20 16:54:46","dt_cadastro","880");

INSERT INTO tb_auditoria_itens VALUES("4608","","79.9","nu_valor","880");

INSERT INTO tb_auditoria_itens VALUES("4609","","Serviço Inicial","ds_observacao","880");

INSERT INTO tb_auditoria_itens VALUES("4610","","8","co_usuario","880");

INSERT INTO tb_auditoria_itens VALUES("4611","","11","co_assinante","881");

INSERT INTO tb_auditoria_itens VALUES("4612","","2019-03-20 16:54:46","dt_cadastro","881");

INSERT INTO tb_auditoria_itens VALUES("4613","","A","st_status","881");

INSERT INTO tb_auditoria_itens VALUES("4614","","Mãos e Pés","no_categoria_servico","881");

INSERT INTO tb_auditoria_itens VALUES("4615","","servico_padrao/manicure.jpg","ds_caminho","882");

INSERT INTO tb_auditoria_itens VALUES("4616","","6","co_categoria_servico","883");

INSERT INTO tb_auditoria_itens VALUES("4617","","58","co_imagem","883");

INSERT INTO tb_auditoria_itens VALUES("4618","","2019-03-20 16:54:46","dt_cadastro","883");

INSERT INTO tb_auditoria_itens VALUES("4619","","A","st_status","883");

INSERT INTO tb_auditoria_itens VALUES("4620","","Manicure","no_servico","883");

INSERT INTO tb_auditoria_itens VALUES("4621","","30","nu_duracao","883");

INSERT INTO tb_auditoria_itens VALUES("4622","","Manicure: retirada de cutículas e pintura das unhas das mãos nas cores desejadas \n        pela cliente.","ds_descricao","883");

INSERT INTO tb_auditoria_itens VALUES("4623","","14","co_servico","884");

INSERT INTO tb_auditoria_itens VALUES("4624","","2019-03-20 16:54:46","dt_cadastro","884");

INSERT INTO tb_auditoria_itens VALUES("4625","","19.9","nu_valor","884");

INSERT INTO tb_auditoria_itens VALUES("4626","","Serviço Inicial","ds_observacao","884");

INSERT INTO tb_auditoria_itens VALUES("4627","","8","co_usuario","884");

INSERT INTO tb_auditoria_itens VALUES("4628","","servico_padrao/spa-pedicure.jpg","ds_caminho","885");

INSERT INTO tb_auditoria_itens VALUES("4629","","6","co_categoria_servico","886");

INSERT INTO tb_auditoria_itens VALUES("4630","","59","co_imagem","886");

INSERT INTO tb_auditoria_itens VALUES("4631","","2019-03-20 16:54:46","dt_cadastro","886");

INSERT INTO tb_auditoria_itens VALUES("4632","","A","st_status","886");

INSERT INTO tb_auditoria_itens VALUES("4633","","Pedicure","no_servico","886");

INSERT INTO tb_auditoria_itens VALUES("4634","","30","nu_duracao","886");

INSERT INTO tb_auditoria_itens VALUES("4635","","Pedicure: retirada de cutículas e pintura das unhas dos pés nas cores desejadas \n        pela cliente.","ds_descricao","886");

INSERT INTO tb_auditoria_itens VALUES("4636","","15","co_servico","887");

INSERT INTO tb_auditoria_itens VALUES("4637","","2019-03-20 16:54:46","dt_cadastro","887");

INSERT INTO tb_auditoria_itens VALUES("4638","","19.9","nu_valor","887");

INSERT INTO tb_auditoria_itens VALUES("4639","","Serviço Inicial","ds_observacao","887");

INSERT INTO tb_auditoria_itens VALUES("4640","","8","co_usuario","887");

INSERT INTO tb_auditoria_itens VALUES("4641","","servico_padrao/manicure-pedicure.jpg","ds_caminho","888");

INSERT INTO tb_auditoria_itens VALUES("4642","","6","co_categoria_servico","889");

INSERT INTO tb_auditoria_itens VALUES("4643","","60","co_imagem","889");

INSERT INTO tb_auditoria_itens VALUES("4644","","2019-03-20 16:54:46","dt_cadastro","889");

INSERT INTO tb_auditoria_itens VALUES("4645","","A","st_status","889");

INSERT INTO tb_auditoria_itens VALUES("4646","","Manicure e Pedicure","no_servico","889");

INSERT INTO tb_auditoria_itens VALUES("4647","","60","nu_duracao","889");

INSERT INTO tb_auditoria_itens VALUES("4648","","Manicure e Pedicure: retirada de cutículas e pintura das unhas das mãos \n        e dos pés nas cores desejadas pela cliente.","ds_descricao","889");

INSERT INTO tb_auditoria_itens VALUES("4649","","16","co_servico","890");

INSERT INTO tb_auditoria_itens VALUES("4650","","2019-03-20 16:54:46","dt_cadastro","890");

INSERT INTO tb_auditoria_itens VALUES("4651","","29.9","nu_valor","890");

INSERT INTO tb_auditoria_itens VALUES("4652","","Serviço Inicial","ds_observacao","890");

INSERT INTO tb_auditoria_itens VALUES("4653","","8","co_usuario","890");

INSERT INTO tb_auditoria_itens VALUES("4654","","servico_padrao/banho-de-gel-cristalizacao-unhas-cristalizadas.jpg","ds_caminho","891");

INSERT INTO tb_auditoria_itens VALUES("4655","","6","co_categoria_servico","892");

INSERT INTO tb_auditoria_itens VALUES("4656","","61","co_imagem","892");

INSERT INTO tb_auditoria_itens VALUES("4657","","2019-03-20 16:54:46","dt_cadastro","892");

INSERT INTO tb_auditoria_itens VALUES("4658","","A","st_status","892");

INSERT INTO tb_auditoria_itens VALUES("4659","","Unhas Gel","no_servico","892");

INSERT INTO tb_auditoria_itens VALUES("4660","","90","nu_duracao","892");

INSERT INTO tb_auditoria_itens VALUES("4661","","Unhas em Gel: feitas com produto à base de película de poliéster, \n        antitóxico e antialérgico, secado sob o calor de lâmpada de UV. As unhas têm aparência mais natural e \n        são mais finas.","ds_descricao","892");

INSERT INTO tb_auditoria_itens VALUES("4662","","17","co_servico","893");

INSERT INTO tb_auditoria_itens VALUES("4663","","2019-03-20 16:54:46","dt_cadastro","893");

INSERT INTO tb_auditoria_itens VALUES("4664","","59.9","nu_valor","893");

INSERT INTO tb_auditoria_itens VALUES("4665","","Serviço Inicial","ds_observacao","893");

INSERT INTO tb_auditoria_itens VALUES("4666","","8","co_usuario","893");

INSERT INTO tb_auditoria_itens VALUES("4667","","11","co_assinante","894");

INSERT INTO tb_auditoria_itens VALUES("4668","","2019-03-20 16:54:46","dt_cadastro","894");

INSERT INTO tb_auditoria_itens VALUES("4669","","A","st_status","894");

INSERT INTO tb_auditoria_itens VALUES("4670","","Maquiagem","no_categoria_servico","894");

INSERT INTO tb_auditoria_itens VALUES("4671","","servico_padrao/Makeup-Pic-for-Website.jpg","ds_caminho","895");

INSERT INTO tb_auditoria_itens VALUES("4672","","7","co_categoria_servico","896");

INSERT INTO tb_auditoria_itens VALUES("4673","","62","co_imagem","896");

INSERT INTO tb_auditoria_itens VALUES("4674","","2019-03-20 16:54:46","dt_cadastro","896");

INSERT INTO tb_auditoria_itens VALUES("4675","","A","st_status","896");

INSERT INTO tb_auditoria_itens VALUES("4676","","Maquiagem Completa","no_servico","896");

INSERT INTO tb_auditoria_itens VALUES("4677","","120","nu_duracao","896");

INSERT INTO tb_auditoria_itens VALUES("4678","","Desfrute de uma make completa para arrasar em festas, comemorações e \n        casamentos com uma super maquiagem.","ds_descricao","896");

INSERT INTO tb_auditoria_itens VALUES("4679","","18","co_servico","897");

INSERT INTO tb_auditoria_itens VALUES("4680","","2019-03-20 16:54:46","dt_cadastro","897");

INSERT INTO tb_auditoria_itens VALUES("4681","","119.9","nu_valor","897");

INSERT INTO tb_auditoria_itens VALUES("4682","","Serviço Inicial","ds_observacao","897");

INSERT INTO tb_auditoria_itens VALUES("4683","","8","co_usuario","897");

INSERT INTO tb_auditoria_itens VALUES("4684","","11","co_assinante","898");

INSERT INTO tb_auditoria_itens VALUES("4685","","2019-03-20 16:54:46","dt_cadastro","898");

INSERT INTO tb_auditoria_itens VALUES("4686","","A","st_status","898");

INSERT INTO tb_auditoria_itens VALUES("4687","","Sobrancelha","no_categoria_servico","898");

INSERT INTO tb_auditoria_itens VALUES("4688","","servico_padrao/cilios_fio_a_fio_duo_spa.jpg","ds_caminho","899");

INSERT INTO tb_auditoria_itens VALUES("4689","","8","co_categoria_servico","900");

INSERT INTO tb_auditoria_itens VALUES("4690","","63","co_imagem","900");

INSERT INTO tb_auditoria_itens VALUES("4691","","2019-03-20 16:54:46","dt_cadastro","900");

INSERT INTO tb_auditoria_itens VALUES("4692","","A","st_status","900");

INSERT INTO tb_auditoria_itens VALUES("4693","","Alongamento de Cílios Fio a Fio","no_servico","900");

INSERT INTO tb_auditoria_itens VALUES("4694","","90","nu_duracao","900");

INSERT INTO tb_auditoria_itens VALUES("4695","","Alongamento de Cílios: a técnica de alongamento de cílios trata-se \n        de uma espécie de “mega-hair” para cílios, ou seja, aumenta o tamanho e o volume dos pelos, fio a fio, \n        fazendo com que os mesmos fiquem alongados, cheios e definidos, c","ds_descricao","900");

INSERT INTO tb_auditoria_itens VALUES("4696","","19","co_servico","901");

INSERT INTO tb_auditoria_itens VALUES("4697","","2019-03-20 16:54:46","dt_cadastro","901");

INSERT INTO tb_auditoria_itens VALUES("4698","","79.9","nu_valor","901");

INSERT INTO tb_auditoria_itens VALUES("4699","","Serviço Inicial","ds_observacao","901");

INSERT INTO tb_auditoria_itens VALUES("4700","","8","co_usuario","901");

INSERT INTO tb_auditoria_itens VALUES("4701","","servico_padrao/design-de-sobrancelhas-nilópolis.jpg","ds_caminho","902");

INSERT INTO tb_auditoria_itens VALUES("4702","","8","co_categoria_servico","903");

INSERT INTO tb_auditoria_itens VALUES("4703","","64","co_imagem","903");

INSERT INTO tb_auditoria_itens VALUES("4704","","2019-03-20 16:54:46","dt_cadastro","903");

INSERT INTO tb_auditoria_itens VALUES("4705","","A","st_status","903");

INSERT INTO tb_auditoria_itens VALUES("4706","","Design de Sobrancelhas","no_servico","903");

INSERT INTO tb_auditoria_itens VALUES("4707","","30","nu_duracao","903");

INSERT INTO tb_auditoria_itens VALUES("4708","","Design de Sobrancelhas: além de ser esteticamente essencial, garante \n        uma expressão mais bonita, evidencia traços naturais e deixa você com olhar muito mais seguro e disposto. \n        Feito de acordo com o formato do seu rosto. Feito com pinça.","ds_descricao","903");

INSERT INTO tb_auditoria_itens VALUES("4709","","20","co_servico","904");

INSERT INTO tb_auditoria_itens VALUES("4710","","2019-03-20 16:54:46","dt_cadastro","904");

INSERT INTO tb_auditoria_itens VALUES("4711","","24.9","nu_valor","904");

INSERT INTO tb_auditoria_itens VALUES("4712","","Serviço Inicial","ds_observacao","904");

INSERT INTO tb_auditoria_itens VALUES("4713","","8","co_usuario","904");

INSERT INTO tb_auditoria_itens VALUES("4714","","11","co_assinante","905");

INSERT INTO tb_auditoria_itens VALUES("4715","","2019-03-20 16:54:46","dt_cadastro","905");

INSERT INTO tb_auditoria_itens VALUES("4716","","A","st_status","905");

INSERT INTO tb_auditoria_itens VALUES("4717","","Barba","no_categoria_servico","905");

INSERT INTO tb_auditoria_itens VALUES("4718","","servico_padrao/retocar-a-barba-de-seu-amigo_1153-1504.jpg","ds_caminho","906");

INSERT INTO tb_auditoria_itens VALUES("4719","","9","co_categoria_servico","907");

INSERT INTO tb_auditoria_itens VALUES("4720","","65","co_imagem","907");

INSERT INTO tb_auditoria_itens VALUES("4721","","2019-03-20 16:54:46","dt_cadastro","907");

INSERT INTO tb_auditoria_itens VALUES("4722","","A","st_status","907");

INSERT INTO tb_auditoria_itens VALUES("4723","","Retoque na Barba","no_servico","907");

INSERT INTO tb_auditoria_itens VALUES("4724","","60","nu_duracao","907");

INSERT INTO tb_auditoria_itens VALUES("4725","","Barba: faça a barba totalmente ou apare com um design a seu gosto para \n        manter a aparência impecável.","ds_descricao","907");

INSERT INTO tb_auditoria_itens VALUES("4726","","21","co_servico","908");

INSERT INTO tb_auditoria_itens VALUES("4727","","2019-03-20 16:54:46","dt_cadastro","908");

INSERT INTO tb_auditoria_itens VALUES("4728","","19.9","nu_valor","908");

INSERT INTO tb_auditoria_itens VALUES("4729","","Serviço Inicial","ds_observacao","908");

INSERT INTO tb_auditoria_itens VALUES("4730","","8","co_usuario","908");

INSERT INTO tb_auditoria_itens VALUES("4731","","11","co_assinante","909");

INSERT INTO tb_auditoria_itens VALUES("4732","","2019-03-20 16:54:46","dt_cadastro","909");

INSERT INTO tb_auditoria_itens VALUES("4733","","A","st_status","909");

INSERT INTO tb_auditoria_itens VALUES("4734","","Estética Facial","no_categoria_servico","909");

INSERT INTO tb_auditoria_itens VALUES("4735","","servico_padrao/Rejuvenescimento_Facial.jpg","ds_caminho","910");

INSERT INTO tb_auditoria_itens VALUES("4736","","10","co_categoria_servico","911");

INSERT INTO tb_auditoria_itens VALUES("4737","","66","co_imagem","911");

INSERT INTO tb_auditoria_itens VALUES("4738","","2019-03-20 16:54:46","dt_cadastro","911");

INSERT INTO tb_auditoria_itens VALUES("4739","","A","st_status","911");

INSERT INTO tb_auditoria_itens VALUES("4740","","Rejuvenescimento Facial","no_servico","911");

INSERT INTO tb_auditoria_itens VALUES("4741","","60","nu_duracao","911");

INSERT INTO tb_auditoria_itens VALUES("4742","","Rejuvenescimento Facial com Luz Pulsada é um procedimento \n        de última geração que promove a melhora da textura, vivacidade e iluminação da pele, além de repor o colágeno \n        e a elastina proporcionando assim uma pele mais firme e jovem.","ds_descricao","911");

INSERT INTO tb_auditoria_itens VALUES("4743","","22","co_servico","912");

INSERT INTO tb_auditoria_itens VALUES("4744","","2019-03-20 16:54:46","dt_cadastro","912");

INSERT INTO tb_auditoria_itens VALUES("4745","","19.9","nu_valor","912");

INSERT INTO tb_auditoria_itens VALUES("4746","","Serviço Inicial","ds_observacao","912");

INSERT INTO tb_auditoria_itens VALUES("4747","","8","co_usuario","912");

INSERT INTO tb_auditoria_itens VALUES("4748","","servico_padrao/Microagulhamento_Peeling.jpg","ds_caminho","913");

INSERT INTO tb_auditoria_itens VALUES("4749","","10","co_categoria_servico","914");

INSERT INTO tb_auditoria_itens VALUES("4750","","67","co_imagem","914");

INSERT INTO tb_auditoria_itens VALUES("4751","","2019-03-20 16:54:46","dt_cadastro","914");

INSERT INTO tb_auditoria_itens VALUES("4752","","A","st_status","914");

INSERT INTO tb_auditoria_itens VALUES("4753","","Microagulhamento com Peeling","no_servico","914");

INSERT INTO tb_auditoria_itens VALUES("4754","","60","nu_duracao","914");

INSERT INTO tb_auditoria_itens VALUES("4755","","Microagulhamento: promove textura mais macia, atenuando cicatrizes \n        de acne, poros abertos, rugas, linhas de expressão, cicatrizes, estrias, olheiras, manchas, flacidez. e Peeling \n        de diamante: entre os principais objetivos do procedimen","ds_descricao","914");

INSERT INTO tb_auditoria_itens VALUES("4756","","23","co_servico","915");

INSERT INTO tb_auditoria_itens VALUES("4757","","2019-03-20 16:54:46","dt_cadastro","915");

INSERT INTO tb_auditoria_itens VALUES("4758","","69.9","nu_valor","915");

INSERT INTO tb_auditoria_itens VALUES("4759","","Serviço Inicial","ds_observacao","915");

INSERT INTO tb_auditoria_itens VALUES("4760","","8","co_usuario","915");

INSERT INTO tb_auditoria_itens VALUES("4761","","servico_padrao/Máscara_Acne_Control.jpg","ds_caminho","916");

INSERT INTO tb_auditoria_itens VALUES("4762","","10","co_categoria_servico","917");

INSERT INTO tb_auditoria_itens VALUES("4763","","68","co_imagem","917");

INSERT INTO tb_auditoria_itens VALUES("4764","","2019-03-20 16:54:46","dt_cadastro","917");

INSERT INTO tb_auditoria_itens VALUES("4765","","A","st_status","917");

INSERT INTO tb_auditoria_itens VALUES("4766","","Máscara Acne Control","no_servico","917");

INSERT INTO tb_auditoria_itens VALUES("4767","","60","nu_duracao","917");

INSERT INTO tb_auditoria_itens VALUES("4768","","Máscara Acne Control: o tratamento visa diminuir a acne, manchas e melhorar a \n        textura e a firmeza da pele.","ds_descricao","917");

INSERT INTO tb_auditoria_itens VALUES("4769","","24","co_servico","918");

INSERT INTO tb_auditoria_itens VALUES("4770","","2019-03-20 16:54:46","dt_cadastro","918");

INSERT INTO tb_auditoria_itens VALUES("4771","","39.9","nu_valor","918");

INSERT INTO tb_auditoria_itens VALUES("4772","","Serviço Inicial","ds_observacao","918");

INSERT INTO tb_auditoria_itens VALUES("4773","","8","co_usuario","918");

INSERT INTO tb_auditoria_itens VALUES("4774","","servico_padrao/Limpeza_Pele.jpg","ds_caminho","919");

INSERT INTO tb_auditoria_itens VALUES("4775","","10","co_categoria_servico","920");

INSERT INTO tb_auditoria_itens VALUES("4776","","69","co_imagem","920");

INSERT INTO tb_auditoria_itens VALUES("4777","","2019-03-20 16:54:46","dt_cadastro","920");

INSERT INTO tb_auditoria_itens VALUES("4778","","A","st_status","920");

INSERT INTO tb_auditoria_itens VALUES("4779","","Limpeza de Pele","no_servico","920");

INSERT INTO tb_auditoria_itens VALUES("4780","","30","nu_duracao","920");

INSERT INTO tb_auditoria_itens VALUES("4781","","Limpeza de pele com extração: inclui higienização, vapor de ozônio e extração \n        de cravos, deixando seu rosto limpo e saudável para os demais procedimentos.","ds_descricao","920");

INSERT INTO tb_auditoria_itens VALUES("4782","","25","co_servico","921");

INSERT INTO tb_auditoria_itens VALUES("4783","","2019-03-20 16:54:46","dt_cadastro","921");

INSERT INTO tb_auditoria_itens VALUES("4784","","29.9","nu_valor","921");

INSERT INTO tb_auditoria_itens VALUES("4785","","Serviço Inicial","ds_observacao","921");

INSERT INTO tb_auditoria_itens VALUES("4786","","8","co_usuario","921");

INSERT INTO tb_auditoria_itens VALUES("4787","","11","co_assinante","922");

INSERT INTO tb_auditoria_itens VALUES("4788","","2019-03-20 16:54:46","dt_cadastro","922");

INSERT INTO tb_auditoria_itens VALUES("4789","","A","st_status","922");

INSERT INTO tb_auditoria_itens VALUES("4790","","Depilação","no_categoria_servico","922");

INSERT INTO tb_auditoria_itens VALUES("4791","","servico_padrao/Depilação_Laser.jpg","ds_caminho","923");

INSERT INTO tb_auditoria_itens VALUES("4792","","11","co_categoria_servico","924");

INSERT INTO tb_auditoria_itens VALUES("4793","","70","co_imagem","924");

INSERT INTO tb_auditoria_itens VALUES("4794","","2019-03-20 16:54:46","dt_cadastro","924");

INSERT INTO tb_auditoria_itens VALUES("4795","","A","st_status","924");

INSERT INTO tb_auditoria_itens VALUES("4796","","Depilação a Laser","no_servico","924");

INSERT INTO tb_auditoria_itens VALUES("4797","","30","nu_duracao","924");

INSERT INTO tb_auditoria_itens VALUES("4798","","Com Depilação a Laser com Soprano XL, um aparelho praticamente indolor, \n        que garante uma boa tolerância dos pacientes ao desconforto no momento da sessão.","ds_descricao","924");

INSERT INTO tb_auditoria_itens VALUES("4799","","26","co_servico","925");

INSERT INTO tb_auditoria_itens VALUES("4800","","2019-03-20 16:54:46","dt_cadastro","925");

INSERT INTO tb_auditoria_itens VALUES("4801","","99.9","nu_valor","925");

INSERT INTO tb_auditoria_itens VALUES("4802","","Serviço Inicial","ds_observacao","925");

INSERT INTO tb_auditoria_itens VALUES("4803","","8","co_usuario","925");

INSERT INTO tb_auditoria_itens VALUES("4804","","servico_padrao/Depilação_Cera.png","ds_caminho","926");

INSERT INTO tb_auditoria_itens VALUES("4805","","11","co_categoria_servico","927");

INSERT INTO tb_auditoria_itens VALUES("4806","","71","co_imagem","927");

INSERT INTO tb_auditoria_itens VALUES("4807","","2019-03-20 16:54:46","dt_cadastro","927");

INSERT INTO tb_auditoria_itens VALUES("4808","","A","st_status","927");

INSERT INTO tb_auditoria_itens VALUES("4809","","Depilação a Cera","no_servico","927");

INSERT INTO tb_auditoria_itens VALUES("4810","","60","nu_duracao","927");

INSERT INTO tb_auditoria_itens VALUES("4811","","Realizada com cera quente, que garante uma maior durabilidade, já que os \n        pelos são eliminados pela raiz. O tratamento diminui a espessura do pelo e retarda seu crescimento. É rápida, \n        sem resíduos e sua pele não fica irritada, como acon","ds_descricao","927");

INSERT INTO tb_auditoria_itens VALUES("4812","","27","co_servico","928");

INSERT INTO tb_auditoria_itens VALUES("4813","","2019-03-20 16:54:46","dt_cadastro","928");

INSERT INTO tb_auditoria_itens VALUES("4814","","29.9","nu_valor","928");

INSERT INTO tb_auditoria_itens VALUES("4815","","Serviço Inicial","ds_observacao","928");

INSERT INTO tb_auditoria_itens VALUES("4816","","8","co_usuario","928");

INSERT INTO tb_auditoria_itens VALUES("4817","","servico_padrao/Depilação_Luz.jpg","ds_caminho","929");

INSERT INTO tb_auditoria_itens VALUES("4818","","11","co_categoria_servico","930");

INSERT INTO tb_auditoria_itens VALUES("4819","","72","co_imagem","930");

INSERT INTO tb_auditoria_itens VALUES("4820","","2019-03-20 16:54:46","dt_cadastro","930");

INSERT INTO tb_auditoria_itens VALUES("4821","","A","st_status","930");

INSERT INTO tb_auditoria_itens VALUES("4822","","Depilação a Luz","no_servico","930");

INSERT INTO tb_auditoria_itens VALUES("4823","","30","nu_duracao","930");

INSERT INTO tb_auditoria_itens VALUES("4824","","O método remove os pelos pela destruição do folículo piloso ou \n        de sua nutrição, tornando seu crescimento inviável. O laser utiliza a cor do pelo como guia para chegar até \n        sua raiz e destruí-lo. Com a emissão de um feixe de luz monocrom","ds_descricao","930");

INSERT INTO tb_auditoria_itens VALUES("4825","","28","co_servico","931");

INSERT INTO tb_auditoria_itens VALUES("4826","","2019-03-20 16:54:46","dt_cadastro","931");

INSERT INTO tb_auditoria_itens VALUES("4827","","89.9","nu_valor","931");

INSERT INTO tb_auditoria_itens VALUES("4828","","Serviço Inicial","ds_observacao","931");

INSERT INTO tb_auditoria_itens VALUES("4829","","8","co_usuario","931");

INSERT INTO tb_auditoria_itens VALUES("4830","","11","co_assinante","932");

INSERT INTO tb_auditoria_itens VALUES("4831","","2019-03-20 16:54:46","dt_cadastro","932");

INSERT INTO tb_auditoria_itens VALUES("4832","","A","st_status","932");

INSERT INTO tb_auditoria_itens VALUES("4833","","Massagem","no_categoria_servico","932");

INSERT INTO tb_auditoria_itens VALUES("4834","","servico_padrao/Massagem_Relaxante.jpg","ds_caminho","933");

INSERT INTO tb_auditoria_itens VALUES("4835","","12","co_categoria_servico","934");

INSERT INTO tb_auditoria_itens VALUES("4836","","73","co_imagem","934");

INSERT INTO tb_auditoria_itens VALUES("4837","","2019-03-20 16:54:46","dt_cadastro","934");

INSERT INTO tb_auditoria_itens VALUES("4838","","A","st_status","934");

INSERT INTO tb_auditoria_itens VALUES("4839","","Massagem Relaxante","no_servico","934");

INSERT INTO tb_auditoria_itens VALUES("4840","","30","nu_duracao","934");

INSERT INTO tb_auditoria_itens VALUES("4841","","Massagem Relaxante: é revigorante e reduz o estado de tensão muscular.","ds_descricao","934");

INSERT INTO tb_auditoria_itens VALUES("4842","","29","co_servico","935");

INSERT INTO tb_auditoria_itens VALUES("4843","","2019-03-20 16:54:46","dt_cadastro","935");

INSERT INTO tb_auditoria_itens VALUES("4844","","29.9","nu_valor","935");

INSERT INTO tb_auditoria_itens VALUES("4845","","Serviço Inicial","ds_observacao","935");

INSERT INTO tb_auditoria_itens VALUES("4846","","8","co_usuario","935");

INSERT INTO tb_auditoria_itens VALUES("4847","","servico_padrao/Massagem_Modeladora.jpg","ds_caminho","936");

INSERT INTO tb_auditoria_itens VALUES("4848","","12","co_categoria_servico","937");

INSERT INTO tb_auditoria_itens VALUES("4849","","74","co_imagem","937");

INSERT INTO tb_auditoria_itens VALUES("4850","","2019-03-20 16:54:46","dt_cadastro","937");

INSERT INTO tb_auditoria_itens VALUES("4851","","A","st_status","937");

INSERT INTO tb_auditoria_itens VALUES("4852","","Massagem Modeladora","no_servico","937");

INSERT INTO tb_auditoria_itens VALUES("4853","","30","nu_duracao","937");

INSERT INTO tb_auditoria_itens VALUES("4854","","Massagem Modeladora: para quem precisa ativar o metabolismo local, \n        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.","ds_descricao","937");

INSERT INTO tb_auditoria_itens VALUES("4855","","30","co_servico","938");

INSERT INTO tb_auditoria_itens VALUES("4856","","2019-03-20 16:54:46","dt_cadastro","938");

INSERT INTO tb_auditoria_itens VALUES("4857","","29.9","nu_valor","938");

INSERT INTO tb_auditoria_itens VALUES("4858","","Serviço Inicial","ds_observacao","938");

INSERT INTO tb_auditoria_itens VALUES("4859","","8","co_usuario","938");

INSERT INTO tb_auditoria_itens VALUES("4860","","servico_padrao/Drenagem_Linfática.jpg","ds_caminho","939");

INSERT INTO tb_auditoria_itens VALUES("4861","","12","co_categoria_servico","940");

INSERT INTO tb_auditoria_itens VALUES("4862","","75","co_imagem","940");

INSERT INTO tb_auditoria_itens VALUES("4863","","2019-03-20 16:54:46","dt_cadastro","940");

INSERT INTO tb_auditoria_itens VALUES("4864","","A","st_status","940");

INSERT INTO tb_auditoria_itens VALUES("4865","","Drenagem Linfática","no_servico","940");

INSERT INTO tb_auditoria_itens VALUES("4866","","30","nu_duracao","940");

INSERT INTO tb_auditoria_itens VALUES("4867","","Drenagem Linfática: para quem precisa retirar o excesso de líquidos e \n        toxinas do organismo.","ds_descricao","940");

INSERT INTO tb_auditoria_itens VALUES("4868","","31","co_servico","941");

INSERT INTO tb_auditoria_itens VALUES("4869","","2019-03-20 16:54:46","dt_cadastro","941");

INSERT INTO tb_auditoria_itens VALUES("4870","","29.9","nu_valor","941");

INSERT INTO tb_auditoria_itens VALUES("4871","","Serviço Inicial","ds_observacao","941");

INSERT INTO tb_auditoria_itens VALUES("4872","","8","co_usuario","941");

INSERT INTO tb_auditoria_itens VALUES("4873","","servico_padrao/Day_Spa.jpg","ds_caminho","942");

INSERT INTO tb_auditoria_itens VALUES("4874","","12","co_categoria_servico","943");

INSERT INTO tb_auditoria_itens VALUES("4875","","76","co_imagem","943");

INSERT INTO tb_auditoria_itens VALUES("4876","","2019-03-20 16:54:46","dt_cadastro","943");

INSERT INTO tb_auditoria_itens VALUES("4877","","A","st_status","943");

INSERT INTO tb_auditoria_itens VALUES("4878","","Day Spa","no_servico","943");

INSERT INTO tb_auditoria_itens VALUES("4879","","120","nu_duracao","943");

INSERT INTO tb_auditoria_itens VALUES("4880","","Massagem com pedras quentes é uma terapia complementar, que utiliza pedras de \n        vários tipos e tamanhos, principalmente as vulcânicas, que absorvem muito mais o calor. Esta terapia é capaz \n        de levar a um profundo relaxamento e bem estar, ","ds_descricao","943");

INSERT INTO tb_auditoria_itens VALUES("4881","","32","co_servico","944");

INSERT INTO tb_auditoria_itens VALUES("4882","","2019-03-20 16:54:46","dt_cadastro","944");

INSERT INTO tb_auditoria_itens VALUES("4883","","99.9","nu_valor","944");

INSERT INTO tb_auditoria_itens VALUES("4884","","Serviço Inicial","ds_observacao","944");

INSERT INTO tb_auditoria_itens VALUES("4885","","8","co_usuario","944");

INSERT INTO tb_auditoria_itens VALUES("4886","","11","co_assinante","945");

INSERT INTO tb_auditoria_itens VALUES("4887","","2019-03-20 16:54:46","dt_cadastro","945");

INSERT INTO tb_auditoria_itens VALUES("4888","","A","st_status","945");

INSERT INTO tb_auditoria_itens VALUES("4889","","Podologia","no_categoria_servico","945");

INSERT INTO tb_auditoria_itens VALUES("4890","","servico_padrao/Podologia.jpg","ds_caminho","946");

INSERT INTO tb_auditoria_itens VALUES("4891","","13","co_categoria_servico","947");

INSERT INTO tb_auditoria_itens VALUES("4892","","77","co_imagem","947");

INSERT INTO tb_auditoria_itens VALUES("4893","","2019-03-20 16:54:46","dt_cadastro","947");

INSERT INTO tb_auditoria_itens VALUES("4894","","A","st_status","947");

INSERT INTO tb_auditoria_itens VALUES("4895","","Podologia com limpeza dos pés","no_servico","947");

INSERT INTO tb_auditoria_itens VALUES("4896","","60","nu_duracao","947");

INSERT INTO tb_auditoria_itens VALUES("4897","","Podologia com limpeza dos pés: corte, polimento, limpeza, \n        debastamento das calosidades, esfoliação dos pés e hidratação profunda.","ds_descricao","947");

INSERT INTO tb_auditoria_itens VALUES("4898","","33","co_servico","948");

INSERT INTO tb_auditoria_itens VALUES("4899","","2019-03-20 16:54:46","dt_cadastro","948");

INSERT INTO tb_auditoria_itens VALUES("4900","","39.9","nu_valor","948");

INSERT INTO tb_auditoria_itens VALUES("4901","","Serviço Inicial","ds_observacao","948");

INSERT INTO tb_auditoria_itens VALUES("4902","","8","co_usuario","948");

INSERT INTO tb_auditoria_itens VALUES("4903","","11","co_assinante","949");

INSERT INTO tb_auditoria_itens VALUES("4904","","2019-03-20 16:54:46","dt_cadastro","949");

INSERT INTO tb_auditoria_itens VALUES("4905","","A","st_status","949");

INSERT INTO tb_auditoria_itens VALUES("4906","","Terapia","no_categoria_servico","949");

INSERT INTO tb_auditoria_itens VALUES("4907","","servico_padrao/Bambuterapia.jpg","ds_caminho","950");

INSERT INTO tb_auditoria_itens VALUES("4908","","14","co_categoria_servico","951");

INSERT INTO tb_auditoria_itens VALUES("4909","","78","co_imagem","951");

INSERT INTO tb_auditoria_itens VALUES("4910","","2019-03-20 16:54:46","dt_cadastro","951");

INSERT INTO tb_auditoria_itens VALUES("4911","","A","st_status","951");

INSERT INTO tb_auditoria_itens VALUES("4912","","Bambuterapia","no_servico","951");

INSERT INTO tb_auditoria_itens VALUES("4913","","60","nu_duracao","951");

INSERT INTO tb_auditoria_itens VALUES("4914","","Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, \n        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes \n        e energética.","ds_descricao","951");

INSERT INTO tb_auditoria_itens VALUES("4915","","34","co_servico","952");

INSERT INTO tb_auditoria_itens VALUES("4916","","2019-03-20 16:54:46","dt_cadastro","952");

INSERT INTO tb_auditoria_itens VALUES("4917","","29.9","nu_valor","952");

INSERT INTO tb_auditoria_itens VALUES("4918","","Serviço Inicial","ds_observacao","952");

INSERT INTO tb_auditoria_itens VALUES("4919","","8","co_usuario","952");

INSERT INTO tb_auditoria_itens VALUES("4920","","servico_padrao/Carboxiterapia.jpg","ds_caminho","953");

INSERT INTO tb_auditoria_itens VALUES("4921","","14","co_categoria_servico","954");

INSERT INTO tb_auditoria_itens VALUES("4922","","79","co_imagem","954");

INSERT INTO tb_auditoria_itens VALUES("4923","","2019-03-20 16:54:46","dt_cadastro","954");

INSERT INTO tb_auditoria_itens VALUES("4924","","A","st_status","954");

INSERT INTO tb_auditoria_itens VALUES("4925","","Carboxiterapia","no_servico","954");

INSERT INTO tb_auditoria_itens VALUES("4926","","30","nu_duracao","954");

INSERT INTO tb_auditoria_itens VALUES("4927","","Feita por meio de injeção subcutânea de gás carbônico medicinal, estimula a \n        produção de colágeno local e ajuda a reduzir a gordura localizada, ao mesmo tempo que melhora a celulite \n        e flacidez.","ds_descricao","954");

INSERT INTO tb_auditoria_itens VALUES("4928","","35","co_servico","955");

INSERT INTO tb_auditoria_itens VALUES("4929","","2019-03-20 16:54:46","dt_cadastro","955");

INSERT INTO tb_auditoria_itens VALUES("4930","","39.9","nu_valor","955");

INSERT INTO tb_auditoria_itens VALUES("4931","","Serviço Inicial","ds_observacao","955");

INSERT INTO tb_auditoria_itens VALUES("4932","","8","co_usuario","955");




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=956 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_tabela VALUES("141","TB_HISTORIA","U","19","48");

INSERT INTO tb_auditoria_tabela VALUES("142","TB_HISTORICO_HISTORIA","I","545","49");

INSERT INTO tb_auditoria_tabela VALUES("143","TB_HISTORIA","U","134","50");

INSERT INTO tb_auditoria_tabela VALUES("144","TB_HISTORICO_HISTORIA","I","546","51");

INSERT INTO tb_auditoria_tabela VALUES("145","TB_PERFIL_FUNCIONALIDADE","I","205","52");

INSERT INTO tb_auditoria_tabela VALUES("146","TB_CONFIG_PROFISSIONAL","I","1","53");

INSERT INTO tb_auditoria_tabela VALUES("147","TB_CONFIG_PROFISSIONAL","U","1","54");

INSERT INTO tb_auditoria_tabela VALUES("148","TB_PERFIL_FUNCIONALIDADE","I","206","55");

INSERT INTO tb_auditoria_tabela VALUES("149","TB_PERFIL_FUNCIONALIDADE","I","207","56");

INSERT INTO tb_auditoria_tabela VALUES("150","TB_PROFISSIONAL","U","20","57");

INSERT INTO tb_auditoria_tabela VALUES("151","TB_PROFISSIONAL","U","19","58");

INSERT INTO tb_auditoria_tabela VALUES("152","TB_PROFISSIONAL","U","19","59");

INSERT INTO tb_auditoria_tabela VALUES("153","TB_HISTORIA","U","140","60");

INSERT INTO tb_auditoria_tabela VALUES("154","TB_HISTORICO_HISTORIA","I","547","61");

INSERT INTO tb_auditoria_tabela VALUES("155","TB_HISTORIA","U","21","62");

INSERT INTO tb_auditoria_tabela VALUES("156","TB_HISTORICO_HISTORIA","I","548","63");

INSERT INTO tb_auditoria_tabela VALUES("157","TB_HISTORIA","U","20","64");

INSERT INTO tb_auditoria_tabela VALUES("158","TB_HISTORICO_HISTORIA","I","549","65");

INSERT INTO tb_auditoria_tabela VALUES("159","TB_HISTORIA","U","20","66");

INSERT INTO tb_auditoria_tabela VALUES("160","TB_HISTORICO_HISTORIA","I","550","67");

INSERT INTO tb_auditoria_tabela VALUES("161","TB_CONTROLLER","I","15","68");

INSERT INTO tb_auditoria_tabela VALUES("162","TB_PERFIL_FUNCIONALIDADE","I","208","68");

INSERT INTO tb_auditoria_tabela VALUES("163","TB_PERFIL_FUNCIONALIDADE","I","209","69");

INSERT INTO tb_auditoria_tabela VALUES("164","TB_PERFIL_FUNCIONALIDADE","D","","70");

INSERT INTO tb_auditoria_tabela VALUES("165","TB_PERFIL_FUNCIONALIDADE","I","210","70");

INSERT INTO tb_auditoria_tabela VALUES("166","TB_CATEGORIA_SERVICO","I","1","71");

INSERT INTO tb_auditoria_tabela VALUES("167","TB_CATEGORIA_SERVICO","I","2","72");

INSERT INTO tb_auditoria_tabela VALUES("168","TB_CATEGORIA_SERVICO","I","3","73");

INSERT INTO tb_auditoria_tabela VALUES("169","TB_CATEGORIA_SERVICO","I","4","74");

INSERT INTO tb_auditoria_tabela VALUES("170","TB_CATEGORIA_SERVICO","I","5","75");

INSERT INTO tb_auditoria_tabela VALUES("171","TB_CATEGORIA_SERVICO","I","6","76");

INSERT INTO tb_auditoria_tabela VALUES("172","TB_CATEGORIA_SERVICO","I","7","77");

INSERT INTO tb_auditoria_tabela VALUES("173","TB_CATEGORIA_SERVICO","I","8","78");

INSERT INTO tb_auditoria_tabela VALUES("174","TB_CATEGORIA_SERVICO","I","9","79");

INSERT INTO tb_auditoria_tabela VALUES("175","TB_CATEGORIA_SERVICO","I","10","80");

INSERT INTO tb_auditoria_tabela VALUES("176","TB_CATEGORIA_SERVICO","I","11","81");

INSERT INTO tb_auditoria_tabela VALUES("177","TB_CATEGORIA_SERVICO","I","12","82");

INSERT INTO tb_auditoria_tabela VALUES("178","TB_CATEGORIA_SERVICO","I","13","83");

INSERT INTO tb_auditoria_tabela VALUES("179","TB_CATEGORIA_SERVICO","I","14","84");

INSERT INTO tb_auditoria_tabela VALUES("180","TB_CATEGORIA_SERVICO","I","15","85");

INSERT INTO tb_auditoria_tabela VALUES("181","TB_CATEGORIA_SERVICO","I","16","86");

INSERT INTO tb_auditoria_tabela VALUES("182","TB_CATEGORIA_SERVICO","U","15","87");

INSERT INTO tb_auditoria_tabela VALUES("183","TB_CATEGORIA_SERVICO","U","16","88");

INSERT INTO tb_auditoria_tabela VALUES("184","TB_HISTORIA","U","20","89");

INSERT INTO tb_auditoria_tabela VALUES("185","TB_HISTORICO_HISTORIA","I","551","90");

INSERT INTO tb_auditoria_tabela VALUES("186","TB_HISTORIA","U","45","91");

INSERT INTO tb_auditoria_tabela VALUES("187","TB_HISTORICO_HISTORIA","I","552","92");

INSERT INTO tb_auditoria_tabela VALUES("188","TB_HISTORIA","U","45","93");

INSERT INTO tb_auditoria_tabela VALUES("189","TB_HISTORICO_HISTORIA","I","553","94");

INSERT INTO tb_auditoria_tabela VALUES("190","TB_PERFIL","I","4","95");

INSERT INTO tb_auditoria_tabela VALUES("191","TB_PERFIL_FUNCIONALIDADE","I","211","95");

INSERT INTO tb_auditoria_tabela VALUES("192","TB_PERFIL_FUNCIONALIDADE","I","212","95");

INSERT INTO tb_auditoria_tabela VALUES("193","TB_PERFIL_FUNCIONALIDADE","I","213","95");

INSERT INTO tb_auditoria_tabela VALUES("194","TB_PERFIL","U","4","96");

INSERT INTO tb_auditoria_tabela VALUES("195","TB_PERFIL_FUNCIONALIDADE","D","","96");

INSERT INTO tb_auditoria_tabela VALUES("196","TB_PERFIL_FUNCIONALIDADE","I","214","96");

INSERT INTO tb_auditoria_tabela VALUES("197","TB_PERFIL_FUNCIONALIDADE","I","215","96");

INSERT INTO tb_auditoria_tabela VALUES("198","TB_PERFIL_FUNCIONALIDADE","I","216","96");

INSERT INTO tb_auditoria_tabela VALUES("199","TB_PERFIL","U","3","97");

INSERT INTO tb_auditoria_tabela VALUES("200","TB_PERFIL_FUNCIONALIDADE","D","","97");

INSERT INTO tb_auditoria_tabela VALUES("201","TB_PERFIL_FUNCIONALIDADE","I","217","97");

INSERT INTO tb_auditoria_tabela VALUES("202","TB_PERFIL_FUNCIONALIDADE","I","218","97");

INSERT INTO tb_auditoria_tabela VALUES("203","TB_PERFIL_FUNCIONALIDADE","I","219","97");

INSERT INTO tb_auditoria_tabela VALUES("204","TB_PERFIL","U","2","98");

INSERT INTO tb_auditoria_tabela VALUES("205","TB_PERFIL_FUNCIONALIDADE","D","","98");

INSERT INTO tb_auditoria_tabela VALUES("206","TB_PERFIL_FUNCIONALIDADE","I","220","98");

INSERT INTO tb_auditoria_tabela VALUES("207","TB_PERFIL_FUNCIONALIDADE","I","221","98");

INSERT INTO tb_auditoria_tabela VALUES("208","TB_PERFIL_FUNCIONALIDADE","I","222","98");

INSERT INTO tb_auditoria_tabela VALUES("209","TB_PERFIL_FUNCIONALIDADE","I","223","98");

INSERT INTO tb_auditoria_tabela VALUES("210","TB_PERFIL_FUNCIONALIDADE","I","224","98");

INSERT INTO tb_auditoria_tabela VALUES("211","TB_PERFIL_FUNCIONALIDADE","I","225","98");

INSERT INTO tb_auditoria_tabela VALUES("212","TB_PERFIL_FUNCIONALIDADE","I","226","98");

INSERT INTO tb_auditoria_tabela VALUES("213","TB_PERFIL_FUNCIONALIDADE","I","227","98");

INSERT INTO tb_auditoria_tabela VALUES("214","TB_PERFIL_FUNCIONALIDADE","I","228","98");

INSERT INTO tb_auditoria_tabela VALUES("215","TB_PERFIL_FUNCIONALIDADE","I","229","98");

INSERT INTO tb_auditoria_tabela VALUES("216","TB_PERFIL_FUNCIONALIDADE","I","230","98");

INSERT INTO tb_auditoria_tabela VALUES("217","TB_PERFIL_FUNCIONALIDADE","I","231","98");

INSERT INTO tb_auditoria_tabela VALUES("218","TB_PERFIL_FUNCIONALIDADE","I","232","98");

INSERT INTO tb_auditoria_tabela VALUES("219","TB_PERFIL_FUNCIONALIDADE","I","233","98");

INSERT INTO tb_auditoria_tabela VALUES("220","TB_PERFIL_FUNCIONALIDADE","I","234","98");

INSERT INTO tb_auditoria_tabela VALUES("221","TB_PERFIL_FUNCIONALIDADE","I","235","98");

INSERT INTO tb_auditoria_tabela VALUES("222","TB_PERFIL_FUNCIONALIDADE","I","236","98");

INSERT INTO tb_auditoria_tabela VALUES("223","TB_PERFIL_FUNCIONALIDADE","I","237","98");

INSERT INTO tb_auditoria_tabela VALUES("224","TB_PERFIL_FUNCIONALIDADE","I","238","98");

INSERT INTO tb_auditoria_tabela VALUES("225","TB_PERFIL_FUNCIONALIDADE","I","239","98");

INSERT INTO tb_auditoria_tabela VALUES("226","TB_PERFIL_FUNCIONALIDADE","I","240","98");

INSERT INTO tb_auditoria_tabela VALUES("227","TB_PERFIL_FUNCIONALIDADE","I","241","98");

INSERT INTO tb_auditoria_tabela VALUES("228","TB_PERFIL_FUNCIONALIDADE","I","242","98");

INSERT INTO tb_auditoria_tabela VALUES("229","TB_PERFIL_FUNCIONALIDADE","I","243","98");

INSERT INTO tb_auditoria_tabela VALUES("230","TB_PERFIL_FUNCIONALIDADE","I","244","98");

INSERT INTO tb_auditoria_tabela VALUES("231","TB_PERFIL_FUNCIONALIDADE","I","245","98");

INSERT INTO tb_auditoria_tabela VALUES("232","TB_PERFIL_FUNCIONALIDADE","I","246","98");

INSERT INTO tb_auditoria_tabela VALUES("233","TB_HISTORIA","U","74","99");

INSERT INTO tb_auditoria_tabela VALUES("234","TB_HISTORICO_HISTORIA","I","554","100");

INSERT INTO tb_auditoria_tabela VALUES("235","TB_HISTORIA","U","84","101");

INSERT INTO tb_auditoria_tabela VALUES("236","TB_HISTORICO_HISTORIA","I","555","102");

INSERT INTO tb_auditoria_tabela VALUES("237","TB_PERFIL","D","4","103");

INSERT INTO tb_auditoria_tabela VALUES("238","TB_PERFIL_ASSINANTE","I","1","104");

INSERT INTO tb_auditoria_tabela VALUES("239","TB_PERFIL_FUNCIONALIDADE","I","247","104");

INSERT INTO tb_auditoria_tabela VALUES("240","TB_PERFIL_ASSINANTE","U","1","105");

INSERT INTO tb_auditoria_tabela VALUES("241","TB_PERFIL_FUNCIONALIDADE","D","","105");

INSERT INTO tb_auditoria_tabela VALUES("242","TB_PERFIL_ASSINANTE","U","1","106");

INSERT INTO tb_auditoria_tabela VALUES("243","TB_PERFIL_FUNCIONALIDADE","D","","106");

INSERT INTO tb_auditoria_tabela VALUES("244","TB_PERFIL_FUNCIONALIDADE","I","248","106");

INSERT INTO tb_auditoria_tabela VALUES("245","TB_HISTORIA","U","84","107");

INSERT INTO tb_auditoria_tabela VALUES("246","TB_HISTORICO_HISTORIA","I","556","108");

INSERT INTO tb_auditoria_tabela VALUES("247","TB_HISTORIA","U","84","109");

INSERT INTO tb_auditoria_tabela VALUES("248","TB_HISTORICO_HISTORIA","I","557","110");

INSERT INTO tb_auditoria_tabela VALUES("249","TB_ANOTACAO","I","10","111");

INSERT INTO tb_auditoria_tabela VALUES("250","TB_SESSAO","I","33","112");

INSERT INTO tb_auditoria_tabela VALUES("251","TB_HISTORIA","I","141","113");

INSERT INTO tb_auditoria_tabela VALUES("252","TB_HISTORICO_HISTORIA","I","558","114");

INSERT INTO tb_auditoria_tabela VALUES("253","TB_HISTORIA","I","142","115");

INSERT INTO tb_auditoria_tabela VALUES("254","TB_HISTORICO_HISTORIA","I","559","116");

INSERT INTO tb_auditoria_tabela VALUES("255","TB_HISTORIA","I","143","117");

INSERT INTO tb_auditoria_tabela VALUES("256","TB_HISTORICO_HISTORIA","I","560","118");

INSERT INTO tb_auditoria_tabela VALUES("257","TB_PERFIL_FUNCIONALIDADE","I","261","119");

INSERT INTO tb_auditoria_tabela VALUES("258","TB_SERVICO","I","1","120");

INSERT INTO tb_auditoria_tabela VALUES("259","TB_CATEGORIA_SERVICO","I","1","121");

INSERT INTO tb_auditoria_tabela VALUES("260","TB_SERVICO","I","2","122");

INSERT INTO tb_auditoria_tabela VALUES("261","TB_PRECO_SERVICO","I","1","123");

INSERT INTO tb_auditoria_tabela VALUES("262","TB_SERVICO","I","3","124");

INSERT INTO tb_auditoria_tabela VALUES("263","TB_PRECO_SERVICO","I","2","125");

INSERT INTO tb_auditoria_tabela VALUES("264","TB_SERVICO","I","4","126");

INSERT INTO tb_auditoria_tabela VALUES("265","TB_PRECO_SERVICO","I","3","127");

INSERT INTO tb_auditoria_tabela VALUES("266","TB_SERVICO","I","5","128");

INSERT INTO tb_auditoria_tabela VALUES("267","TB_PRECO_SERVICO","I","4","129");

INSERT INTO tb_auditoria_tabela VALUES("268","TB_SERVICO","I","6","130");

INSERT INTO tb_auditoria_tabela VALUES("269","TB_PRECO_SERVICO","I","5","131");

INSERT INTO tb_auditoria_tabela VALUES("270","TB_SERVICO","I","7","132");

INSERT INTO tb_auditoria_tabela VALUES("271","TB_PRECO_SERVICO","I","6","133");

INSERT INTO tb_auditoria_tabela VALUES("272","TB_SERVICO","I","8","134");

INSERT INTO tb_auditoria_tabela VALUES("273","TB_PRECO_SERVICO","I","7","135");

INSERT INTO tb_auditoria_tabela VALUES("274","TB_SERVICO","I","9","136");

INSERT INTO tb_auditoria_tabela VALUES("275","TB_PRECO_SERVICO","I","8","137");

INSERT INTO tb_auditoria_tabela VALUES("276","TB_SERVICO","I","10","138");

INSERT INTO tb_auditoria_tabela VALUES("277","TB_PRECO_SERVICO","I","9","139");

INSERT INTO tb_auditoria_tabela VALUES("278","TB_SERVICO","I","11","140");

INSERT INTO tb_auditoria_tabela VALUES("279","TB_PRECO_SERVICO","I","10","141");

INSERT INTO tb_auditoria_tabela VALUES("280","TB_SERVICO","I","12","142");

INSERT INTO tb_auditoria_tabela VALUES("281","TB_PRECO_SERVICO","I","11","143");

INSERT INTO tb_auditoria_tabela VALUES("282","TB_CATEGORIA_SERVICO","I","2","144");

INSERT INTO tb_auditoria_tabela VALUES("283","TB_SERVICO","I","13","145");

INSERT INTO tb_auditoria_tabela VALUES("284","TB_PRECO_SERVICO","I","12","146");

INSERT INTO tb_auditoria_tabela VALUES("285","TB_SERVICO","I","14","147");

INSERT INTO tb_auditoria_tabela VALUES("286","TB_PRECO_SERVICO","I","13","148");

INSERT INTO tb_auditoria_tabela VALUES("287","TB_SERVICO","I","15","149");

INSERT INTO tb_auditoria_tabela VALUES("288","TB_PRECO_SERVICO","I","14","150");

INSERT INTO tb_auditoria_tabela VALUES("289","TB_SERVICO","I","16","151");

INSERT INTO tb_auditoria_tabela VALUES("290","TB_PRECO_SERVICO","I","15","152");

INSERT INTO tb_auditoria_tabela VALUES("291","TB_CATEGORIA_SERVICO","I","3","153");

INSERT INTO tb_auditoria_tabela VALUES("292","TB_SERVICO","I","17","154");

INSERT INTO tb_auditoria_tabela VALUES("293","TB_PRECO_SERVICO","I","16","155");

INSERT INTO tb_auditoria_tabela VALUES("294","TB_CATEGORIA_SERVICO","I","4","156");

INSERT INTO tb_auditoria_tabela VALUES("295","TB_SERVICO","I","18","157");

INSERT INTO tb_auditoria_tabela VALUES("296","TB_PRECO_SERVICO","I","17","158");

INSERT INTO tb_auditoria_tabela VALUES("297","TB_SERVICO","I","19","159");

INSERT INTO tb_auditoria_tabela VALUES("298","TB_PRECO_SERVICO","I","18","160");

INSERT INTO tb_auditoria_tabela VALUES("299","TB_CATEGORIA_SERVICO","I","5","161");

INSERT INTO tb_auditoria_tabela VALUES("300","TB_SERVICO","I","20","162");

INSERT INTO tb_auditoria_tabela VALUES("301","TB_PRECO_SERVICO","I","19","163");

INSERT INTO tb_auditoria_tabela VALUES("302","TB_CATEGORIA_SERVICO","I","6","164");

INSERT INTO tb_auditoria_tabela VALUES("303","TB_SERVICO","I","21","165");

INSERT INTO tb_auditoria_tabela VALUES("304","TB_PRECO_SERVICO","I","20","166");

INSERT INTO tb_auditoria_tabela VALUES("305","TB_SERVICO","I","22","167");

INSERT INTO tb_auditoria_tabela VALUES("306","TB_PRECO_SERVICO","I","21","168");

INSERT INTO tb_auditoria_tabela VALUES("307","TB_SERVICO","I","23","169");

INSERT INTO tb_auditoria_tabela VALUES("308","TB_PRECO_SERVICO","I","22","170");

INSERT INTO tb_auditoria_tabela VALUES("309","TB_SERVICO","I","24","171");

INSERT INTO tb_auditoria_tabela VALUES("310","TB_PRECO_SERVICO","I","23","172");

INSERT INTO tb_auditoria_tabela VALUES("311","TB_CATEGORIA_SERVICO","I","7","173");

INSERT INTO tb_auditoria_tabela VALUES("312","TB_SERVICO","I","25","174");

INSERT INTO tb_auditoria_tabela VALUES("313","TB_PRECO_SERVICO","I","24","175");

INSERT INTO tb_auditoria_tabela VALUES("314","TB_SERVICO","I","26","176");

INSERT INTO tb_auditoria_tabela VALUES("315","TB_PRECO_SERVICO","I","25","177");

INSERT INTO tb_auditoria_tabela VALUES("316","TB_SERVICO","I","27","178");

INSERT INTO tb_auditoria_tabela VALUES("317","TB_PRECO_SERVICO","I","26","179");

INSERT INTO tb_auditoria_tabela VALUES("318","TB_CATEGORIA_SERVICO","I","8","180");

INSERT INTO tb_auditoria_tabela VALUES("319","TB_SERVICO","I","28","181");

INSERT INTO tb_auditoria_tabela VALUES("320","TB_PRECO_SERVICO","I","27","182");

INSERT INTO tb_auditoria_tabela VALUES("321","TB_SERVICO","I","29","183");

INSERT INTO tb_auditoria_tabela VALUES("322","TB_PRECO_SERVICO","I","28","184");

INSERT INTO tb_auditoria_tabela VALUES("323","TB_SERVICO","I","30","185");

INSERT INTO tb_auditoria_tabela VALUES("324","TB_PRECO_SERVICO","I","29","186");

INSERT INTO tb_auditoria_tabela VALUES("325","TB_SERVICO","I","31","187");

INSERT INTO tb_auditoria_tabela VALUES("737","TB_CATEGORIA_SERVICO","I","82","197");

INSERT INTO tb_auditoria_tabela VALUES("738","TB_SERVICO","I","166","197");

INSERT INTO tb_auditoria_tabela VALUES("739","TB_PRECO_SERVICO","I","166","197");

INSERT INTO tb_auditoria_tabela VALUES("740","TB_SERVICO","I","167","197");

INSERT INTO tb_auditoria_tabela VALUES("741","TB_PRECO_SERVICO","I","167","197");

INSERT INTO tb_auditoria_tabela VALUES("742","TB_SERVICO","I","168","197");

INSERT INTO tb_auditoria_tabela VALUES("743","TB_PRECO_SERVICO","I","168","197");

INSERT INTO tb_auditoria_tabela VALUES("744","TB_SERVICO","I","169","197");

INSERT INTO tb_auditoria_tabela VALUES("745","TB_PRECO_SERVICO","I","169","197");

INSERT INTO tb_auditoria_tabela VALUES("746","TB_SERVICO","I","170","197");

INSERT INTO tb_auditoria_tabela VALUES("747","TB_PRECO_SERVICO","I","170","197");

INSERT INTO tb_auditoria_tabela VALUES("748","TB_SERVICO","I","171","197");

INSERT INTO tb_auditoria_tabela VALUES("749","TB_PRECO_SERVICO","I","171","197");

INSERT INTO tb_auditoria_tabela VALUES("750","TB_SERVICO","I","172","197");

INSERT INTO tb_auditoria_tabela VALUES("751","TB_PRECO_SERVICO","I","172","197");

INSERT INTO tb_auditoria_tabela VALUES("752","TB_SERVICO","I","173","197");

INSERT INTO tb_auditoria_tabela VALUES("753","TB_PRECO_SERVICO","I","173","197");

INSERT INTO tb_auditoria_tabela VALUES("754","TB_SERVICO","I","174","197");

INSERT INTO tb_auditoria_tabela VALUES("755","TB_PRECO_SERVICO","I","174","197");

INSERT INTO tb_auditoria_tabela VALUES("756","TB_SERVICO","I","175","197");

INSERT INTO tb_auditoria_tabela VALUES("757","TB_PRECO_SERVICO","I","175","197");

INSERT INTO tb_auditoria_tabela VALUES("758","TB_SERVICO","I","176","197");

INSERT INTO tb_auditoria_tabela VALUES("759","TB_PRECO_SERVICO","I","176","197");

INSERT INTO tb_auditoria_tabela VALUES("760","TB_CATEGORIA_SERVICO","I","83","197");

INSERT INTO tb_auditoria_tabela VALUES("761","TB_SERVICO","I","177","197");

INSERT INTO tb_auditoria_tabela VALUES("762","TB_PRECO_SERVICO","I","177","197");

INSERT INTO tb_auditoria_tabela VALUES("763","TB_SERVICO","I","178","197");

INSERT INTO tb_auditoria_tabela VALUES("764","TB_PRECO_SERVICO","I","178","197");

INSERT INTO tb_auditoria_tabela VALUES("765","TB_SERVICO","I","179","197");

INSERT INTO tb_auditoria_tabela VALUES("766","TB_PRECO_SERVICO","I","179","197");

INSERT INTO tb_auditoria_tabela VALUES("767","TB_SERVICO","I","180","197");

INSERT INTO tb_auditoria_tabela VALUES("768","TB_PRECO_SERVICO","I","180","197");

INSERT INTO tb_auditoria_tabela VALUES("769","TB_CATEGORIA_SERVICO","I","84","197");

INSERT INTO tb_auditoria_tabela VALUES("770","TB_SERVICO","I","181","197");

INSERT INTO tb_auditoria_tabela VALUES("771","TB_PRECO_SERVICO","I","181","197");

INSERT INTO tb_auditoria_tabela VALUES("772","TB_CATEGORIA_SERVICO","I","85","197");

INSERT INTO tb_auditoria_tabela VALUES("773","TB_SERVICO","I","182","197");

INSERT INTO tb_auditoria_tabela VALUES("774","TB_PRECO_SERVICO","I","182","197");

INSERT INTO tb_auditoria_tabela VALUES("775","TB_SERVICO","I","183","197");

INSERT INTO tb_auditoria_tabela VALUES("776","TB_PRECO_SERVICO","I","183","197");

INSERT INTO tb_auditoria_tabela VALUES("777","TB_CATEGORIA_SERVICO","I","86","197");

INSERT INTO tb_auditoria_tabela VALUES("778","TB_SERVICO","I","184","197");

INSERT INTO tb_auditoria_tabela VALUES("779","TB_PRECO_SERVICO","I","184","197");

INSERT INTO tb_auditoria_tabela VALUES("780","TB_CATEGORIA_SERVICO","I","87","197");

INSERT INTO tb_auditoria_tabela VALUES("781","TB_SERVICO","I","185","197");

INSERT INTO tb_auditoria_tabela VALUES("782","TB_PRECO_SERVICO","I","185","197");

INSERT INTO tb_auditoria_tabela VALUES("783","TB_SERVICO","I","186","197");

INSERT INTO tb_auditoria_tabela VALUES("784","TB_PRECO_SERVICO","I","186","197");

INSERT INTO tb_auditoria_tabela VALUES("785","TB_SERVICO","I","187","197");

INSERT INTO tb_auditoria_tabela VALUES("786","TB_PRECO_SERVICO","I","187","197");

INSERT INTO tb_auditoria_tabela VALUES("787","TB_SERVICO","I","188","197");

INSERT INTO tb_auditoria_tabela VALUES("788","TB_PRECO_SERVICO","I","188","197");

INSERT INTO tb_auditoria_tabela VALUES("789","TB_CATEGORIA_SERVICO","I","88","197");

INSERT INTO tb_auditoria_tabela VALUES("790","TB_SERVICO","I","189","197");

INSERT INTO tb_auditoria_tabela VALUES("791","TB_PRECO_SERVICO","I","189","197");

INSERT INTO tb_auditoria_tabela VALUES("792","TB_SERVICO","I","190","197");

INSERT INTO tb_auditoria_tabela VALUES("793","TB_PRECO_SERVICO","I","190","197");

INSERT INTO tb_auditoria_tabela VALUES("794","TB_SERVICO","I","191","197");

INSERT INTO tb_auditoria_tabela VALUES("795","TB_PRECO_SERVICO","I","191","197");

INSERT INTO tb_auditoria_tabela VALUES("796","TB_CATEGORIA_SERVICO","I","89","197");

INSERT INTO tb_auditoria_tabela VALUES("797","TB_SERVICO","I","192","197");

INSERT INTO tb_auditoria_tabela VALUES("798","TB_PRECO_SERVICO","I","192","197");

INSERT INTO tb_auditoria_tabela VALUES("799","TB_SERVICO","I","193","197");

INSERT INTO tb_auditoria_tabela VALUES("800","TB_PRECO_SERVICO","I","193","197");

INSERT INTO tb_auditoria_tabela VALUES("801","TB_SERVICO","I","194","197");

INSERT INTO tb_auditoria_tabela VALUES("802","TB_PRECO_SERVICO","I","194","197");

INSERT INTO tb_auditoria_tabela VALUES("803","TB_SERVICO","I","195","197");

INSERT INTO tb_auditoria_tabela VALUES("804","TB_PRECO_SERVICO","I","195","197");

INSERT INTO tb_auditoria_tabela VALUES("805","TB_CATEGORIA_SERVICO","I","90","197");

INSERT INTO tb_auditoria_tabela VALUES("806","TB_SERVICO","I","196","197");

INSERT INTO tb_auditoria_tabela VALUES("807","TB_PRECO_SERVICO","I","196","197");

INSERT INTO tb_auditoria_tabela VALUES("808","TB_CATEGORIA_SERVICO","I","91","197");

INSERT INTO tb_auditoria_tabela VALUES("809","TB_SERVICO","I","197","197");

INSERT INTO tb_auditoria_tabela VALUES("810","TB_PRECO_SERVICO","I","197","197");

INSERT INTO tb_auditoria_tabela VALUES("811","TB_SERVICO","I","198","197");

INSERT INTO tb_auditoria_tabela VALUES("812","TB_PRECO_SERVICO","I","198","197");

INSERT INTO tb_auditoria_tabela VALUES("813","TB_HISTORIA","U","45","198");

INSERT INTO tb_auditoria_tabela VALUES("814","TB_HISTORICO_HISTORIA","I","561","199");

INSERT INTO tb_auditoria_tabela VALUES("815","TB_HISTORIA","U","44","200");

INSERT INTO tb_auditoria_tabela VALUES("816","TB_HISTORICO_HISTORIA","I","562","201");

INSERT INTO tb_auditoria_tabela VALUES("817","TB_HISTORIA","I","144","202");

INSERT INTO tb_auditoria_tabela VALUES("818","TB_HISTORICO_HISTORIA","I","563","203");

INSERT INTO tb_auditoria_tabela VALUES("819","TB_HISTORIA","I","145","204");

INSERT INTO tb_auditoria_tabela VALUES("820","TB_HISTORICO_HISTORIA","I","564","205");

INSERT INTO tb_auditoria_tabela VALUES("821","TB_HISTORIA","I","146","206");

INSERT INTO tb_auditoria_tabela VALUES("822","TB_HISTORICO_HISTORIA","I","565","207");

INSERT INTO tb_auditoria_tabela VALUES("823","TB_HISTORIA","I","147","208");

INSERT INTO tb_auditoria_tabela VALUES("824","TB_HISTORICO_HISTORIA","I","566","209");

INSERT INTO tb_auditoria_tabela VALUES("825","TB_HISTORIA","U","145","210");

INSERT INTO tb_auditoria_tabela VALUES("826","TB_HISTORICO_HISTORIA","I","567","211");

INSERT INTO tb_auditoria_tabela VALUES("827","TB_HISTORIA","U","146","212");

INSERT INTO tb_auditoria_tabela VALUES("828","TB_HISTORICO_HISTORIA","I","568","213");

INSERT INTO tb_auditoria_tabela VALUES("829","TB_HISTORIA","U","144","214");

INSERT INTO tb_auditoria_tabela VALUES("830","TB_HISTORICO_HISTORIA","I","569","215");

INSERT INTO tb_auditoria_tabela VALUES("831","TB_HISTORIA","I","148","216");

INSERT INTO tb_auditoria_tabela VALUES("832","TB_HISTORICO_HISTORIA","I","570","217");

INSERT INTO tb_auditoria_tabela VALUES("833","TB_HISTORIA","I","149","218");

INSERT INTO tb_auditoria_tabela VALUES("834","TB_HISTORICO_HISTORIA","I","571","219");

INSERT INTO tb_auditoria_tabela VALUES("835","TB_HISTORIA","U","149","220");

INSERT INTO tb_auditoria_tabela VALUES("836","TB_HISTORICO_HISTORIA","I","572","221");

INSERT INTO tb_auditoria_tabela VALUES("837","TB_PERFIL_FUNCIONALIDADE","I","262","222");

INSERT INTO tb_auditoria_tabela VALUES("847","TB_CATEGORIA_SERVICO","I","5","227");

INSERT INTO tb_auditoria_tabela VALUES("848","TB_IMAGEM","I","47","227");

INSERT INTO tb_auditoria_tabela VALUES("849","TB_SERVICO","I","3","227");

INSERT INTO tb_auditoria_tabela VALUES("850","TB_PRECO_SERVICO","I","1","227");

INSERT INTO tb_auditoria_tabela VALUES("851","TB_IMAGEM","I","48","227");

INSERT INTO tb_auditoria_tabela VALUES("852","TB_SERVICO","I","4","227");

INSERT INTO tb_auditoria_tabela VALUES("853","TB_PRECO_SERVICO","I","2","227");

INSERT INTO tb_auditoria_tabela VALUES("854","TB_IMAGEM","I","49","227");

INSERT INTO tb_auditoria_tabela VALUES("855","TB_SERVICO","I","5","227");

INSERT INTO tb_auditoria_tabela VALUES("856","TB_PRECO_SERVICO","I","3","227");

INSERT INTO tb_auditoria_tabela VALUES("857","TB_IMAGEM","I","50","227");

INSERT INTO tb_auditoria_tabela VALUES("858","TB_SERVICO","I","6","227");

INSERT INTO tb_auditoria_tabela VALUES("859","TB_PRECO_SERVICO","I","4","227");

INSERT INTO tb_auditoria_tabela VALUES("860","TB_IMAGEM","I","51","227");

INSERT INTO tb_auditoria_tabela VALUES("861","TB_SERVICO","I","7","227");

INSERT INTO tb_auditoria_tabela VALUES("862","TB_PRECO_SERVICO","I","5","227");

INSERT INTO tb_auditoria_tabela VALUES("863","TB_IMAGEM","I","52","227");

INSERT INTO tb_auditoria_tabela VALUES("864","TB_SERVICO","I","8","227");

INSERT INTO tb_auditoria_tabela VALUES("865","TB_PRECO_SERVICO","I","6","227");

INSERT INTO tb_auditoria_tabela VALUES("866","TB_IMAGEM","I","53","227");

INSERT INTO tb_auditoria_tabela VALUES("867","TB_SERVICO","I","9","227");

INSERT INTO tb_auditoria_tabela VALUES("868","TB_PRECO_SERVICO","I","7","227");

INSERT INTO tb_auditoria_tabela VALUES("869","TB_IMAGEM","I","54","227");

INSERT INTO tb_auditoria_tabela VALUES("870","TB_SERVICO","I","10","227");

INSERT INTO tb_auditoria_tabela VALUES("871","TB_PRECO_SERVICO","I","8","227");

INSERT INTO tb_auditoria_tabela VALUES("872","TB_IMAGEM","I","55","227");

INSERT INTO tb_auditoria_tabela VALUES("873","TB_SERVICO","I","11","227");

INSERT INTO tb_auditoria_tabela VALUES("874","TB_PRECO_SERVICO","I","9","227");

INSERT INTO tb_auditoria_tabela VALUES("875","TB_IMAGEM","I","56","227");

INSERT INTO tb_auditoria_tabela VALUES("876","TB_SERVICO","I","12","227");

INSERT INTO tb_auditoria_tabela VALUES("877","TB_PRECO_SERVICO","I","10","227");

INSERT INTO tb_auditoria_tabela VALUES("878","TB_IMAGEM","I","57","227");

INSERT INTO tb_auditoria_tabela VALUES("879","TB_SERVICO","I","13","227");

INSERT INTO tb_auditoria_tabela VALUES("880","TB_PRECO_SERVICO","I","11","227");

INSERT INTO tb_auditoria_tabela VALUES("881","TB_CATEGORIA_SERVICO","I","6","227");

INSERT INTO tb_auditoria_tabela VALUES("882","TB_IMAGEM","I","58","227");

INSERT INTO tb_auditoria_tabela VALUES("883","TB_SERVICO","I","14","227");

INSERT INTO tb_auditoria_tabela VALUES("884","TB_PRECO_SERVICO","I","12","227");

INSERT INTO tb_auditoria_tabela VALUES("885","TB_IMAGEM","I","59","227");

INSERT INTO tb_auditoria_tabela VALUES("886","TB_SERVICO","I","15","227");

INSERT INTO tb_auditoria_tabela VALUES("887","TB_PRECO_SERVICO","I","13","227");

INSERT INTO tb_auditoria_tabela VALUES("888","TB_IMAGEM","I","60","227");

INSERT INTO tb_auditoria_tabela VALUES("889","TB_SERVICO","I","16","227");

INSERT INTO tb_auditoria_tabela VALUES("890","TB_PRECO_SERVICO","I","14","227");

INSERT INTO tb_auditoria_tabela VALUES("891","TB_IMAGEM","I","61","227");

INSERT INTO tb_auditoria_tabela VALUES("892","TB_SERVICO","I","17","227");

INSERT INTO tb_auditoria_tabela VALUES("893","TB_PRECO_SERVICO","I","15","227");

INSERT INTO tb_auditoria_tabela VALUES("894","TB_CATEGORIA_SERVICO","I","7","227");

INSERT INTO tb_auditoria_tabela VALUES("895","TB_IMAGEM","I","62","227");

INSERT INTO tb_auditoria_tabela VALUES("896","TB_SERVICO","I","18","227");

INSERT INTO tb_auditoria_tabela VALUES("897","TB_PRECO_SERVICO","I","16","227");

INSERT INTO tb_auditoria_tabela VALUES("898","TB_CATEGORIA_SERVICO","I","8","227");

INSERT INTO tb_auditoria_tabela VALUES("899","TB_IMAGEM","I","63","227");

INSERT INTO tb_auditoria_tabela VALUES("900","TB_SERVICO","I","19","227");

INSERT INTO tb_auditoria_tabela VALUES("901","TB_PRECO_SERVICO","I","17","227");

INSERT INTO tb_auditoria_tabela VALUES("902","TB_IMAGEM","I","64","227");

INSERT INTO tb_auditoria_tabela VALUES("903","TB_SERVICO","I","20","227");

INSERT INTO tb_auditoria_tabela VALUES("904","TB_PRECO_SERVICO","I","18","227");

INSERT INTO tb_auditoria_tabela VALUES("905","TB_CATEGORIA_SERVICO","I","9","227");

INSERT INTO tb_auditoria_tabela VALUES("906","TB_IMAGEM","I","65","227");

INSERT INTO tb_auditoria_tabela VALUES("907","TB_SERVICO","I","21","227");

INSERT INTO tb_auditoria_tabela VALUES("908","TB_PRECO_SERVICO","I","19","227");

INSERT INTO tb_auditoria_tabela VALUES("909","TB_CATEGORIA_SERVICO","I","10","227");

INSERT INTO tb_auditoria_tabela VALUES("910","TB_IMAGEM","I","66","227");

INSERT INTO tb_auditoria_tabela VALUES("911","TB_SERVICO","I","22","227");

INSERT INTO tb_auditoria_tabela VALUES("912","TB_PRECO_SERVICO","I","20","227");

INSERT INTO tb_auditoria_tabela VALUES("913","TB_IMAGEM","I","67","227");

INSERT INTO tb_auditoria_tabela VALUES("914","TB_SERVICO","I","23","227");

INSERT INTO tb_auditoria_tabela VALUES("915","TB_PRECO_SERVICO","I","21","227");

INSERT INTO tb_auditoria_tabela VALUES("916","TB_IMAGEM","I","68","227");

INSERT INTO tb_auditoria_tabela VALUES("917","TB_SERVICO","I","24","227");

INSERT INTO tb_auditoria_tabela VALUES("918","TB_PRECO_SERVICO","I","22","227");

INSERT INTO tb_auditoria_tabela VALUES("919","TB_IMAGEM","I","69","227");

INSERT INTO tb_auditoria_tabela VALUES("920","TB_SERVICO","I","25","227");

INSERT INTO tb_auditoria_tabela VALUES("921","TB_PRECO_SERVICO","I","23","227");

INSERT INTO tb_auditoria_tabela VALUES("922","TB_CATEGORIA_SERVICO","I","11","227");

INSERT INTO tb_auditoria_tabela VALUES("923","TB_IMAGEM","I","70","227");

INSERT INTO tb_auditoria_tabela VALUES("924","TB_SERVICO","I","26","227");

INSERT INTO tb_auditoria_tabela VALUES("925","TB_PRECO_SERVICO","I","24","227");

INSERT INTO tb_auditoria_tabela VALUES("926","TB_IMAGEM","I","71","227");

INSERT INTO tb_auditoria_tabela VALUES("927","TB_SERVICO","I","27","227");

INSERT INTO tb_auditoria_tabela VALUES("928","TB_PRECO_SERVICO","I","25","227");

INSERT INTO tb_auditoria_tabela VALUES("929","TB_IMAGEM","I","72","227");

INSERT INTO tb_auditoria_tabela VALUES("930","TB_SERVICO","I","28","227");

INSERT INTO tb_auditoria_tabela VALUES("931","TB_PRECO_SERVICO","I","26","227");

INSERT INTO tb_auditoria_tabela VALUES("932","TB_CATEGORIA_SERVICO","I","12","227");

INSERT INTO tb_auditoria_tabela VALUES("933","TB_IMAGEM","I","73","227");

INSERT INTO tb_auditoria_tabela VALUES("934","TB_SERVICO","I","29","227");

INSERT INTO tb_auditoria_tabela VALUES("935","TB_PRECO_SERVICO","I","27","227");

INSERT INTO tb_auditoria_tabela VALUES("936","TB_IMAGEM","I","74","227");

INSERT INTO tb_auditoria_tabela VALUES("937","TB_SERVICO","I","30","227");

INSERT INTO tb_auditoria_tabela VALUES("938","TB_PRECO_SERVICO","I","28","227");

INSERT INTO tb_auditoria_tabela VALUES("939","TB_IMAGEM","I","75","227");

INSERT INTO tb_auditoria_tabela VALUES("940","TB_SERVICO","I","31","227");

INSERT INTO tb_auditoria_tabela VALUES("941","TB_PRECO_SERVICO","I","29","227");

INSERT INTO tb_auditoria_tabela VALUES("942","TB_IMAGEM","I","76","227");

INSERT INTO tb_auditoria_tabela VALUES("943","TB_SERVICO","I","32","227");

INSERT INTO tb_auditoria_tabela VALUES("944","TB_PRECO_SERVICO","I","30","227");

INSERT INTO tb_auditoria_tabela VALUES("945","TB_CATEGORIA_SERVICO","I","13","227");

INSERT INTO tb_auditoria_tabela VALUES("946","TB_IMAGEM","I","77","227");

INSERT INTO tb_auditoria_tabela VALUES("947","TB_SERVICO","I","33","227");

INSERT INTO tb_auditoria_tabela VALUES("948","TB_PRECO_SERVICO","I","31","227");

INSERT INTO tb_auditoria_tabela VALUES("949","TB_CATEGORIA_SERVICO","I","14","227");

INSERT INTO tb_auditoria_tabela VALUES("950","TB_IMAGEM","I","78","227");

INSERT INTO tb_auditoria_tabela VALUES("951","TB_SERVICO","I","34","227");

INSERT INTO tb_auditoria_tabela VALUES("952","TB_PRECO_SERVICO","I","32","227");

INSERT INTO tb_auditoria_tabela VALUES("953","TB_IMAGEM","I","79","227");

INSERT INTO tb_auditoria_tabela VALUES("954","TB_SERVICO","I","35","227");

INSERT INTO tb_auditoria_tabela VALUES("955","TB_PRECO_SERVICO","I","33","227");




DROP TABLE IF EXISTS tb_ausencia;


CREATE TABLE `tb_ausencia` (
  `co_ausencia` int(11) NOT NULL AUTO_INCREMENT,
  `dt_inicio` datetime DEFAULT NULL,
  `dt_fim` datetime DEFAULT NULL,
  `tp_ausencia` int(1) DEFAULT NULL COMMENT '1 - Almoço  / 2 - Ausência Médica / 3 - Falta / 4 - Férias / 5 - Folga / 6 - Lanche / 7 - Estudos / 8 - Outros',
  `ds_observacao` text,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_profissional` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL COMMENT 'Usuário responsável pelo cadastro',
  PRIMARY KEY (`co_ausencia`,`co_profissional`,`co_usuario`),
  KEY `fk_TB_AUSENCIA_TB_PROFISSIONAL1_idx` (`co_profissional`),
  KEY `fk_TB_AUSENCIA_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_ausencia VALUES("1","2019-02-07 10:00:00","2019-02-07 12:00:00","2","Consulta nova","2019-02-11 16:00:01","20","8");




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




DROP TABLE IF EXISTS tb_categoria_servico;


CREATE TABLE `tb_categoria_servico` (
  `co_categoria_servico` int(11) NOT NULL AUTO_INCREMENT,
  `no_categoria_servico` varchar(100) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_categoria_servico`,`co_assinante`),
  KEY `fk_TB_CATEGORIA_SERVICO_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;


INSERT INTO tb_categoria_servico VALUES("5","Cabelo","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("6","Mãos e Pés","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("7","Maquiagem","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("8","Sobrancelha","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("9","Barba","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("10","Estética Facial","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("11","Depilação","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("12","Massagem","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("13","Podologia","2019-03-20 16:54:46","A","11");

INSERT INTO tb_categoria_servico VALUES("14","Terapia","2019-03-20 16:54:46","A","11");




DROP TABLE IF EXISTS tb_cliente;


CREATE TABLE `tb_cliente` (
  `co_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo / I - Inativo\n',
  `no_apelido` varchar(45) DEFAULT NULL,
  `ds_observacao` text,
  `st_receber_email_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_lembrete_horario_agendamento` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_sms_marketing` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `st_email_marketing` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não',
  `nu_como_conheceu` varchar(1) DEFAULT NULL COMMENT 'ComoConheceuEnum',
  `co_assinante` int(11) NOT NULL,
  `co_pessoa` int(11) NOT NULL,
  PRIMARY KEY (`co_cliente`,`co_assinante`,`co_pessoa`),
  KEY `fk_TB_CLIENTE_TB_ASSINANTE1_idx` (`co_assinante`),
  KEY `fk_TB_CLIENTE_TB_PESSOA1_idx` (`co_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_cliente VALUES("1","2019-02-12 11:44:02","","meu apelido cli 2","sobre novo cliente","S","S","N","N","2","11","79");




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




DROP TABLE IF EXISTS tb_config_profissional;


CREATE TABLE `tb_config_profissional` (
  `co_config_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `st_recebe_email_faturamento` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não',
  `nu_periodo_agenda` int(3) DEFAULT NULL COMMENT 'Número de Dias futuros que pode ser marcado serviços.',
  `st_edicao_servicos` varchar(1) DEFAULT NULL COMMENT 'S - Sim / N - Não',
  `st_edicao_atendimento` varchar(1) DEFAULT NULL COMMENT 'Se edita Atendimentos Futuros da agenda (S - Sim / N - Não)',
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_config_profissional`,`co_assinante`),
  KEY `fk_TB_CONFIG_PROFISSIONAL_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_config_profissional VALUES("1","N","18","N","N","11");




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

INSERT INTO tb_conta_bancaria VALUES("39","","","","0");

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_contato VALUES("82","6546546131","43536436436","","","leonardomcbessa@gmail.com","","","","");

INSERT INTO tb_contato VALUES("91","11111111111","22222222222","","","greg11@gd.com","","link face","link twitter","link insta");




DROP TABLE IF EXISTS tb_controller;


CREATE TABLE `tb_controller` (
  `co_controller` int(11) NOT NULL AUTO_INCREMENT,
  `no_controller` varchar(60) DEFAULT NULL,
  `ds_class_icon` varchar(30) DEFAULT NULL COMMENT 'Classe do Ícone',
  PRIMARY KEY (`co_controller`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_controller VALUES("14","Cliente","clip-user-plus");

INSERT INTO tb_controller VALUES("15","Servico","fa fa-scissors");




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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_endereco VALUES("105","QR 403 Conjunto 10","Casa 28 33","Samambaia Norte (Samambaia)","72319111","Brasília","DF");




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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;


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

INSERT INTO tb_funcionalidade VALUES("23","Cadastro Profissional","CadastroProfissional","A","N","12");

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

INSERT INTO tb_funcionalidade VALUES("40","Limpar Banco Gestao","LimparBancoGestao","A","S","1");

INSERT INTO tb_funcionalidade VALUES("43","Cadastro Cliente","CadastroCliente","A","N","14");

INSERT INTO tb_funcionalidade VALUES("44","Listar Cliente","ListarCliente","A","S","14");

INSERT INTO tb_funcionalidade VALUES("45","Configuração de Profissional","ProfissionalConfiguracao","A","S","13");

INSERT INTO tb_funcionalidade VALUES("46","Desativar Profissional","DesativarProfissional","A","N","12");

INSERT INTO tb_funcionalidade VALUES("47","Ativar Profissional","AtivarProfissional","A","N","12");

INSERT INTO tb_funcionalidade VALUES("48","Cadastro Categoria Servico","CadastroCategoriaServico","A","N","15");

INSERT INTO tb_funcionalidade VALUES("49","Listar Categoria Servico","ListarCategoriaServico","A","S","15");

INSERT INTO tb_funcionalidade VALUES("60","Meu Plano Assinante","MeuPlanoAssinante","A","S","9");

INSERT INTO tb_funcionalidade VALUES("61","Listar Serviço","ListarServico","A","S","15");




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
  `co_sessao` int(11) NOT NULL,
  PRIMARY KEY (`co_historia`,`co_sessao`),
  KEY `fk_TB_HISTORIA_TB_SESSAO1_idx` (`co_sessao`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;


INSERT INTO tb_historia VALUES("1","Manter Planos do sistema","<p>Manter planos do sistema da beleza, onde ter&aacute; que manter os desconto com per&iacute;odo para o plano</p>\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n<p>Modelagem: Plano e historico plano modulos</p>","2018-07-24 15:28:56","2018-07-31 15:05:13","C","1");

INSERT INTO tb_historia VALUES("2","Manter Assinante","<p>Manter assinante do sistema e com data de expira&ccedil;&atilde;o do sistema para o assinante, criar contato, criar pessoa, envio de email de confirma&ccedil;&atilde;o com senha gerada</p>\n\n\n\n\n\n\n\n<p>Criar o usu&aacute;rio quando criar o assinante, plano assinado</p>\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n<p>Modelagem: Assinante (Jun&ccedil;&atilde;o de pessoa, contato, usuario, data de expira&ccedil;&atilde;o, status)</p>","2018-07-25 11:24:23","2018-08-13 23:02:29","C","1");

INSERT INTO tb_historia VALUES("3","Manter Filial","<p>Manter filial</p>\n\n\n\n\n\n\n\n<p>Modelagem: Filial (FK assinante)</p>","2018-07-25 11:37:35","2018-08-13 12:05:19","C","1");

INSERT INTO tb_historia VALUES("4","Gestão de pagamentos dos assinantes","<p>Dar baixas no pagamento, e atualizar o prazo de expira&ccedil;&atilde;o do assiante e suas filias</p>\n\n\n\n\n\n\n\n<p>Criar hist&oacute;rico dos pagamentos</p>\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n<p>Modelagem: Pagamento assinante (Ligada com plano e assinante)</p>","2018-07-25 11:42:55","2018-08-13 17:32:58","C","1");

INSERT INTO tb_historia VALUES("6","Dados complementares básicos","<p>Manter dados: (Endere&ccedil;o, telefone, CNPJ, fantasia, raz&atilde;o e outros)</p>\n\n\n\n\n\n\n\n<p>Modelagem: Contato, endere&ccedil;o e empresa ou pessoa</p>","2018-07-25 12:11:05","2018-09-21 22:09:40","C","2");

INSERT INTO tb_historia VALUES("7","Manter Horário de funcionamento padrão","<p>Manter hor&aacute;rio de funcionamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Funcionamento (Assinante)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-25 12:19:44","2018-09-21 22:09:17","C","2");

INSERT INTO tb_historia VALUES("8","Manter Fotos do Estabelecimento","<p>Manter Fotos do Estabelecimento para o Site</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Imagem (FK Assinante)</p>","2018-07-25 12:21:30","2018-09-21 22:08:49","C","2");

INSERT INTO tb_historia VALUES("9","Manter Feriados","<p>Manter Feriados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Tabela base Feriados nacionais, Feriados (FK assinante, com hor&aacute;rio de funcionamento)</p>","2018-07-25 12:27:26","2018-09-24 20:34:02","C","4");

INSERT INTO tb_historia VALUES("10","Manter Dias Especiais","<p>Manter Dias Especiais n&atilde;o recorrente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: dias especiais (FK assinante, com hor&aacute;rio de funcionamento)</p>","2018-07-25 12:28:51","2018-09-24 20:33:36","C","4");

INSERT INTO tb_historia VALUES("11","Formas de pagamento","<p>Forma de pagamento aceitas</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>modelagem: Configuracao (FK assinante),&nbsp; Tabela base Formas de pagamento, Tabela base bandeira cartao</p>","2018-07-25 14:38:19","2018-10-19 11:32:01","C","5");

INSERT INTO tb_historia VALUES("12","Configuração do cliente","<p>Cliente Marcar Servi&ccedil;o S / N, quantidade de aus&ecirc;ncia para que o cliente n&atilde;o marque mais servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Configura&ccedil;&atilde;o assinante (FK Assinante)</p>","2018-07-25 14:43:02","2018-11-14 16:07:41","C","5");

INSERT INTO tb_historia VALUES("13","Configuração de agendamento","<p>Confirma&ccedil;&atilde;o do agendamento e Regras de agendamento, agendamento recorrente, Horas de antecedencia do agendamento, Agendamento online, intervalo de agendamento dos clientes</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Configura&ccedil;&atilde;o assinante (FK Assinante)</p>","2018-07-25 14:54:36","2018-11-19 17:37:56","C","5");

INSERT INTO tb_historia VALUES("14","Manter Motivo desconto","<p>Manter Motivo desconto</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Motivo desconto (FK Assinante)</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-25 15:13:38","2018-11-26 17:29:23","C","8");

INSERT INTO tb_historia VALUES("15","Tabela base Motivo Desconto","<p>Modelagem: Tabela base Motivo Desconto</p>","2018-07-25 15:15:19","2018-11-23 17:55:10","C","8");

INSERT INTO tb_historia VALUES("16","Manter profissional","<p>Manter profissional</p>\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Profissional (FK Assinante, pessoa, usuario, endere&ccedil;o, dados banc&aacute;rios, configura&ccedil;&atilde;o, jornada de trabalho e contato)</p>","2018-07-25 15:56:07","2018-12-20 13:39:20","C","9");

INSERT INTO tb_historia VALUES("17","Manter ausência","<p>Manter aus&ecirc;ncia</p>\n\n<p>&nbsp;</p>\n\n<p>Modelagem: Aus&ecirc;ncia Profissional (FK Profissional)</p>","2018-07-25 15:59:43","2019-02-06 08:44:05","C","9");

INSERT INTO tb_historia VALUES("18","Manter Bloqueio por profissional","<p>Bloqueio de hor&aacute;rio para o profissional</p>\n\n<p>Modelagem: Bloqueio hor&aacute;rio (FK profissional, motivo)</p>","2018-07-25 16:12:20","2019-02-11 17:34:25","C","10");

INSERT INTO tb_historia VALUES("19","Manter Cliente","<p>Manter Cliente, Clientes recebem SMS com lembrete do hor&aacute;rio agendado, Integra&ccedil;&atilde;o com WhatsApp,</p>\n\n<p>Modelagem: Cliente (FK Assinante, pessoa, contato, endere&ccedil;o, foto)</p>","2018-07-25 16:16:48","2019-02-12 12:09:39","C","11");

INSERT INTO tb_historia VALUES("20","Manter Categorias do Serviço","<p>Manter Categorias do Servi&ccedil;o</p>\n\n<p>Modelagem: Cat. servico (FK Assinante) e inicializa&ccedil;&atilde;o das categorias de base</p>","2018-07-25 16:19:34","2019-02-20 17:07:32","C","12");

INSERT INTO tb_historia VALUES("22","Edição rápida de serviços","<p>Edi&ccedil;&atilde;o r&aacute;pida de servi&ccedil;os todos eles (Comiss&atilde;o, categoria, pre&ccedil;o)</p>","2018-07-25 16:23:07","2018-07-25 16:23:07","N","12");

INSERT INTO tb_historia VALUES("23","Profissionais que atende o serviço","<p>Profissionais que atende o servi&ccedil;o, comiss&atilde;o padr&atilde;o pra todos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Tab tern&aacute;ria Profissional e Servi&ccedil;o (Comiss&atilde;o individual)</p>","2018-07-25 16:26:14","2018-07-25 16:26:14","N","12");

INSERT INTO tb_historia VALUES("24","Manter Pacote","<p>Manter Pacote</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Pacote (FK Assinante), Pacote Servi&ccedil;os (FK Pacote e servi&ccedil;o)</p>","2018-07-25 16:30:25","2018-07-25 16:30:25","N","13");

INSERT INTO tb_historia VALUES("25","Manter promoção","<p>Manter promo&ccedil;&atilde;o dias e hor&aacute;rios a ser ultilizado per&iacute;odo v&aacute;lido</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Promocao (FK Servi&ccedil;o)</p>","2018-07-25 17:12:39","2018-07-25 17:12:39","N","14");

INSERT INTO tb_historia VALUES("26","Manter cortesia","<p>Manter cortesia, validade da cortesia, per&iacute;odo de uso dia e hora</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem (FK cliente, servico)</p>","2018-07-25 17:14:29","2018-07-25 17:14:29","N","15");

INSERT INTO tb_historia VALUES("27","Manter Vale presente","<p>Manter Vale presente, gerar c&oacute;digo pra passar para o cliente que ira usar, validade e periodo de uso</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Vale presente e valepresente servicos (FK Servicos e vale presente)</p>","2018-07-25 17:23:18","2018-07-25 17:23:18","N","16");

INSERT INTO tb_historia VALUES("28","Cadastrar Agendamento","<p>Cadastrar Agendamento (Op&ccedil;&atilde;o da recorr&ecirc;ncia)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: (FK cliente, Servi&ccedil;o, Profissional)</p>","2018-07-25 17:32:10","2018-07-25 17:56:16","N","17");

INSERT INTO tb_historia VALUES("29","Agenda","<p>Mostrar a agenda (Filtros por profissional)</p>","2018-07-25 17:44:09","2018-07-25 17:44:09","N","17");

INSERT INTO tb_historia VALUES("30","Agenda CSS (Responsivo)","<p>Agenda CSS (Responsivo)</p>","2018-07-25 17:44:46","2018-07-25 17:44:46","N","17");

INSERT INTO tb_historia VALUES("31","Consulta agendamentos","<p>Pesquisa de agendamento &nbsp;por per&iacute;odo, status, profissional, servi&ccedil;o</p>","2018-07-25 17:49:26","2018-07-25 17:49:26","N","17");

INSERT INTO tb_historia VALUES("32","Alterar Status do agendamento","<p>Alterar Status do agendamento</p>","2018-07-25 17:52:20","2018-07-25 17:52:20","N","17");

INSERT INTO tb_historia VALUES("33","Acrescentar serviço","<p>Acrescentar servi&ccedil;o (Duplicar agendamento com a mudan&ccedil;a de servi&ccedil;o e profissional se for preciso)</p>","2018-07-25 17:55:21","2018-07-25 17:55:21","N","17");

INSERT INTO tb_historia VALUES("34","Gerar Menu do Agendamento","<p>Gerar Menu do Agendamento para a edi&ccedil;&atilde;o do mesmo</p>","2018-07-25 17:57:19","2018-07-25 17:57:19","N","17");

INSERT INTO tb_historia VALUES("35","Exclusão do agendamento","<p>Exclus&atilde;o do agendamento</p>","2018-07-25 17:57:52","2018-07-25 17:57:52","N","17");

INSERT INTO tb_historia VALUES("36","Editar o agendamento","<p>Editar o agendamento</p>","2018-07-25 17:58:43","2018-07-25 17:59:03","N","17");

INSERT INTO tb_historia VALUES("37","Fechamento de conta no agendamento","<p>Fechamento de conta no agendamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Transformar troco em cr&eacute;dito</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Pagamento (FK agendamento, FK Caixa)</p>","2018-07-25 18:12:12","2018-07-26 18:41:34","N","18");

INSERT INTO tb_historia VALUES("38","Manter Fotos agendamento","<p>Manter Fotos agendamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Agendamento Imagem (FK imagem, FK agendamento)</p>","2018-07-25 18:13:09","2018-07-25 18:13:09","N","17");

INSERT INTO tb_historia VALUES("39","Abertura de caixa","<p>Abertura de caixa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Caixa (FK Assinante)</p>","2018-07-25 18:16:22","2018-07-25 18:16:22","N","18");

INSERT INTO tb_historia VALUES("40","Retirada / Sangria","<p>Retirada / Sangria (Normal e recorrente)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Sangria caixa (FK Caixa)</p>","2018-07-25 18:24:58","2018-07-25 18:24:58","N","18");

INSERT INTO tb_historia VALUES("41","Recebimentos","<p>Recebimentos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Recebimento caixa (FK Caixa)</p>","2018-07-25 18:25:44","2018-07-25 18:25:44","N","18");

INSERT INTO tb_historia VALUES("42","Gerar cupom não fiscal","<p>Gerar cupom n&atilde;o fiscal no fechamento de conta</p>","2018-07-25 18:27:03","2018-07-25 18:27:03","N","18");

INSERT INTO tb_historia VALUES("43","Valor pago por serviço","<p>Determinar porcentagem ou valor para cada servi&ccedil;o.</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Depend&ecirc;ncia: <a href=\"http://localhost/PreProjeto/admin/Historia/CadastroHistoria/MjA5YzYzNDY2NTYyNjBlN2E3OGVmZGI1MDcxNWM2NTkvTkRRPQ==\">http://localhost/PreProjeto/admin/Historia/CadastroHistoria/MjA5YzYzNDY2NTYyNjBlN2E3OGVmZGI1MDcxNWM2NTkvTkRRPQ==</a></p>","2018-07-25 18:40:36","2018-07-25 18:45:49","N","5");

INSERT INTO tb_historia VALUES("44","Manter Serviço","<p>Manter Servi&ccedil;o</p>\n\n<p>Modelagem: Servi&ccedil;o (FK categoria Servi. Assinante) e listagem dos servi&ccedil;os por categoria</p>","2018-07-25 18:42:35","2019-03-20 14:17:47","N","12");

INSERT INTO tb_historia VALUES("45","Tabela base serviços","<p>Tabela base servi&ccedil;os</p>\n\n<p>Modelagem: Servi&ccedil;os Base, inicio servi&ccedil;os b&aacute;sicos e Tabela Pre&ccedil;o Servi&ccedil;o, inicializar categorias de servi&ccedil;os se preciso</p>","2018-07-25 18:43:26","2019-03-20 14:14:45","C","12");

INSERT INTO tb_historia VALUES("46","Manter intervalos do profissional","<p>Manter almo&ccedil;os e&nbsp; intervalos do profissional (Cadastro Profissional)</p>\n\n<p>&nbsp;</p>","2018-07-25 18:55:44","2019-02-11 17:27:48","C","9");

INSERT INTO tb_historia VALUES("47","Histórico de comissões","<p>Hist&oacute;rico de comiss&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pendencia: Manter agendamento</p>","2018-07-25 19:11:25","2018-07-25 19:11:54","N","9");

INSERT INTO tb_historia VALUES("48","Histórico de serviços","<p>Hist&oacute;rico de servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>pendencia: manter agendamento</p>","2018-07-25 19:17:02","2018-07-25 19:17:02","N","9");

INSERT INTO tb_historia VALUES("49","Histórico de agendamentos","<p>Hist&oacute;rico de agendamentos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:17:37","2018-07-25 19:17:37","N","9");

INSERT INTO tb_historia VALUES("50","Histórico de vale/adiantamento","<p>Hist&oacute;rico de vale/adiantamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pendencia: Manter vale/adiantamento (Financeiro)</p>","2018-07-25 19:20:30","2018-07-25 19:20:30","N","9");

INSERT INTO tb_historia VALUES("51","Relatório de comissões","<p>Relat&oacute;rio de comiss&otilde;es (Filtros)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pendencia: Manter agendamento</p>","2018-07-25 19:21:41","2018-07-25 19:21:41","N","9");

INSERT INTO tb_historia VALUES("52","Acesso da agenda","<p>Acesso da agenda (Visualiza&ccedil;&atilde;o)</p>","2018-07-25 19:22:51","2018-07-25 19:22:51","N","9");

INSERT INTO tb_historia VALUES("53","Histórico de agendamentos","<p>Hist&oacute;rico de agendamentos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:24:05","2018-07-25 19:24:05","N","11");

INSERT INTO tb_historia VALUES("54","Histórico de serviços","<p>Hist&oacute;rico de servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:24:33","2018-07-25 19:24:33","N","11");

INSERT INTO tb_historia VALUES("55","Histórico de Pacotes","<p>Hist&oacute;rico de Pacotes</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:25:05","2018-07-25 19:25:05","N","11");

INSERT INTO tb_historia VALUES("56","Histórico de Débitos","<p>Hist&oacute;rico de D&eacute;bitos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:25:36","2018-07-25 19:25:36","N","11");

INSERT INTO tb_historia VALUES("57","Histórico de crédito","<p>Hist&oacute;rico de cr&eacute;dito</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:26:05","2018-07-25 19:26:05","N","11");

INSERT INTO tb_historia VALUES("58","Histórico de Vale presente","<p>Hist&oacute;rico de Vale presente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter agendamento</p>","2018-07-25 19:26:52","2018-07-25 19:26:52","N","11");

INSERT INTO tb_historia VALUES("59","Histórico de Sms","<p>Hist&oacute;rico de Sms</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter Sms</p>","2018-07-25 19:27:25","2018-07-25 19:27:25","N","11");

INSERT INTO tb_historia VALUES("60","Histórico de E-mail","<p>Hist&oacute;rico de E-mail</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Pend&ecirc;ncia: Manter E-mail</p>","2018-07-25 19:27:58","2018-07-25 19:27:58","N","11");

INSERT INTO tb_historia VALUES("61","Criar Histórias Módulos Principal e assinante","<p>Criar Hist&oacute;rias M&oacute;dulos Principal e assinante</p>","2018-07-26 11:46:54","2018-07-27 17:57:45","I","19");

INSERT INTO tb_historia VALUES("62","Página do Assinante","<p>P&aacute;gina do Assinante</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Promova seu sal&atilde;o no sistema da beleza com sua pr&oacute;pria p&aacute;gina customizada e com agendamento on-line</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Utilize sua p&aacute;gina exclusiva para divulgar fotos, servi&ccedil;os e informa&ccedil;&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Ofere&ccedil;a promo&ccedil;&otilde;es e pacotes exclusivos para seus clientes</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>As promo&ccedil;&otilde;es s&atilde;o exibidas e podem ser agendadas com exclusividade na sua p&aacute;gina no Site da empresa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Intera&ccedil;&atilde;o do cliente com o WhatsApp da Empresa</p>","2018-07-26 17:36:50","2018-07-26 18:45:07","N","20");

INSERT INTO tb_historia VALUES("63","Página de captura de cliente","<p>P&aacute;gina de captura de cliente</p>","2018-07-26 17:38:30","2018-07-26 17:38:30","N","21");

INSERT INTO tb_historia VALUES("64","Vídeos para a Página de captura de cliente","<p>V&iacute;deos para a P&aacute;gina de captura de cliente</p>","2018-07-26 17:39:10","2018-07-26 17:39:10","N","21");

INSERT INTO tb_historia VALUES("65","Site do Sistema da beleza","<p>Site do Sistema da beleza detalhando tudo sobre para apresenta&ccedil;&atilde;o ao assinante</p>","2018-07-26 17:40:01","2018-07-26 17:40:01","N","21");

INSERT INTO tb_historia VALUES("66","Vídeos para o Site do Sistema da beleza","<p>V&iacute;deos para o Site do Sistema da beleza</p>","2018-07-26 17:40:37","2018-07-26 17:40:37","N","21");

INSERT INTO tb_historia VALUES("67","Material do Pré Lançamento","<p>Produ&ccedil;&atilde;o e Disponibiliza&ccedil;&atilde;o do material para lista de lead</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Dura&ccedil;&atilde;o de 7 a 10 dias antes do Lan&ccedil;amento de 3 a 4 v&iacute;deos</p>","2018-07-26 17:45:02","2018-07-26 17:58:04","N","22");

INSERT INTO tb_historia VALUES("68","Criação da Lista de Lead","<p>Cria&ccedil;&atilde;o da Lista de Lead ja trabalhadas nas redes sociais e mais..</p>","2018-07-26 17:46:23","2018-07-26 17:46:23","N","24");

INSERT INTO tb_historia VALUES("69","Página de captura de lead","<p>P&aacute;gina de captura de lead</p>","2018-07-26 17:47:24","2018-07-26 17:47:24","N","21");

INSERT INTO tb_historia VALUES("70","Criar conteúdos e Entregas","<p>Criar conte&uacute;dos para entrega e ir formulando a lista de lead</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Inicio da divulga&ccedil;&atilde;o para o lan&ccedil;amento.</p>","2018-07-26 17:55:15","2018-07-26 17:55:15","N","24");

INSERT INTO tb_historia VALUES("71","Direcionar para o lançamento","<p>&nbsp;Apos Lan&ccedil;amento Direcionar para o lan&ccedil;amento o tr&aacute;fego do PL</p>","2018-07-26 18:00:07","2018-07-26 18:00:07","N","22");

INSERT INTO tb_historia VALUES("72","Lançamento das Vendas","<p>de 1 a 7 dias de vendas com p&aacute;gina aquecida</p>","2018-07-26 18:01:36","2018-07-26 18:01:36","N","23");

INSERT INTO tb_historia VALUES("73","Vídeos para lançamento de vendas","<p>produ&ccedil;&atilde;o de V&iacute;deos para lan&ccedil;amento de vendas</p>","2018-07-26 18:02:18","2018-07-26 18:02:18","N","23");

INSERT INTO tb_historia VALUES("74","Criar Histórias Módulos Lançamento do Sistema Da Beleaza e Site","<p>Criar Hist&oacute;rias M&oacute;dulos Lan&ccedil;amento do Sistema Da Beleaza e Site</p>","2018-07-26 18:13:56","2019-03-08 15:27:09","I","25");

INSERT INTO tb_historia VALUES("75","Iniciar o sistema com as configurações básicas","<p>Iniciar o sistema com as configura&ccedil;&otilde;es b&aacute;sicas para depois iniciar o painel</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Cadastro de proffisional, cliente, servi&ccedil;os e configura&ccedil;&otilde;es padr&otilde;es</p>","2018-07-26 18:40:29","2018-07-26 18:40:29","N","26");

INSERT INTO tb_historia VALUES("76","Regras de E-mail","<p>Regras de E-mail</p>","2018-07-26 18:49:20","2018-07-27 19:00:55","N","27");

INSERT INTO tb_historia VALUES("79","Criar Templates de Envio","<p>Criar Templates de Envio de email</p>","2018-07-26 18:51:32","2018-07-27 19:01:27","N","27");

INSERT INTO tb_historia VALUES("80","Regras de SMS","<p>Regras de envio de SMS</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Aprendizagem de envio de SMS</p>","2018-07-26 18:53:05","2018-07-27 19:02:44","N","28");

INSERT INTO tb_historia VALUES("83","Criar Templates de Envio","<p>Criar Templates de Envio de SMS</p>","2018-07-26 18:55:02","2018-07-27 19:03:11","N","28");

INSERT INTO tb_historia VALUES("84","Manter Perfil","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>\n\n<p>&nbsp;</p>\n\n<p>Tabela Perfil Base</p>","2018-07-26 22:16:38","2019-03-11 16:34:01","I","29");

INSERT INTO tb_historia VALUES("85","Manter Entrada e saída (Normal e recorrente)","<p>Manter Entrada e sa&iacute;da (Normal e recorrente)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Entrada saida (FK Assinante)</p>","2018-07-26 22:19:03","2018-07-26 22:19:03","N","30");

INSERT INTO tb_historia VALUES("86","Manter categorias de entrada e saída","<p>Manter categorias de entrada e sa&iacute;da</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: categorias entrada e sa&iacute;da (FK Assinante)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Tabela Base categorias entrada e sa&iacute;da</p>","2018-07-26 22:21:00","2018-07-26 22:21:00","N","30");

INSERT INTO tb_historia VALUES("87","Manter Comissões","<p>Manter Comiss&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: comissao (FK Agendamento)</p>","2018-07-26 22:23:39","2018-07-26 22:23:39","N","30");

INSERT INTO tb_historia VALUES("88","Manter vale e adiantamento","<p>Manter vale e adiantamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: vale e adiantamento (FK Profissional)</p>","2018-07-26 22:25:10","2018-07-26 22:25:10","N","30");

INSERT INTO tb_historia VALUES("89","Manter Suporte","<p>Manter Suporte, responder suporte, apresentar resposta</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: suporte (FK Assinante, Categoria Suporte)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Tabela base Categoria Suporte</p>","2018-07-26 22:27:22","2018-07-26 22:28:33","N","31");

INSERT INTO tb_historia VALUES("90","Percentual de desconto por Perfil","<p>Percentual de desconto por Perfil no fechamento de conta</p>","2018-07-27 15:02:27","2018-07-27 15:02:27","N","29");

INSERT INTO tb_historia VALUES("91","Gerar Gráficos em relatórios","<p>Gerar Gr&aacute;ficos em relat&oacute;rios</p>","2018-07-27 17:19:07","2018-07-27 17:19:07","N","32");

INSERT INTO tb_historia VALUES("92","Profissional mostra os serviços realizados","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra os servi&ccedil;os realizados no per&iacute;odo com um Profissional ou auxiliar</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:37:41","2018-07-27 17:45:36","N","32");

INSERT INTO tb_historia VALUES("93","Profissional mostra todas as reservas","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todas as reservas de um profissional no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:38:44","2018-07-27 17:46:02","N","32");

INSERT INTO tb_historia VALUES("94","Profissional mostra todos agendamentos atendidos","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos agendamentos atendidos de um profissional no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:40:17","2018-07-27 17:46:32","N","32");

INSERT INTO tb_historia VALUES("95","Profissional o total de comissões","<p>Profissional Gerar Gr&aacute;ficos e Relat&oacute;rio Mostra o total de comiss&otilde;es para todos os profissionais do per&iacute;odo, Comiss&atilde;o por profissional (Principal ou auxiliar)</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:41:16","2018-07-27 17:47:48","N","32");

INSERT INTO tb_historia VALUES("96","Cliente por profissonal atendido","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Selecione o profissional e o per&iacute;odo para ver os clientes atendidos por ele</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:43:01","2018-07-27 17:47:20","N","32");

INSERT INTO tb_historia VALUES("97","Cliente Informações básicas","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios com informa&ccedil;&otilde;es como aniversariantes do m&ecirc;s, lista de contatos, atrav&eacute;s de que meio</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:49:20","2018-07-27 17:49:20","N","32");

INSERT INTO tb_historia VALUES("98","Cliente todos agendamentos","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Mostrar todos agendamentos por cliente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:50:16","2018-07-27 17:50:16","N","32");

INSERT INTO tb_historia VALUES("99","Cliente serviços consumido","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Mostrar servi&ccedil;os consumido por cliente</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:51:05","2018-07-27 17:51:05","N","32");

INSERT INTO tb_historia VALUES("100","Clientes cadastrados no periodo","<p>Cliente Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra quais clientes foram cadastrados no per&iacute;odo selecionado</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 17:51:49","2018-07-27 17:51:49","N","32");

INSERT INTO tb_historia VALUES("101","Financeiro débitos e créditos dos clientes","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra quais clientes possuem d&eacute;bitos e cr&eacute;ditos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:53:27","2018-07-27 17:53:27","N","32");

INSERT INTO tb_historia VALUES("102","Financeiro entrada e saída","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Financeiro com entradas e sa&iacute;das por per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:54:38","2018-07-27 18:07:01","N","32");

INSERT INTO tb_historia VALUES("103","Financeiro comissões pagas","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todas as comiss&otilde;es pagas em determinado per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 17:55:41","2018-07-27 17:55:41","N","32");

INSERT INTO tb_historia VALUES("104","Financeiro faturamento por forma de pagamento","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios&nbsp;Selecione um per&iacute;odo de datas para gerar o relat&oacute;rio de faturamento por forma de pagamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:06:37","2018-07-27 18:06:37","N","32");

INSERT INTO tb_historia VALUES("105","Financeiro faturamento diário","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Selecione um Per&iacute;odo para gerar o relat&oacute;rio de faturamento do sal&atilde;o por dia</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:07:54","2018-07-27 18:07:54","N","32");

INSERT INTO tb_historia VALUES("106","Financeiro taxas dos cartões pagas","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra quanto voc&ecirc; ter&aacute; de pagar de taxas de cart&atilde;o de cr&eacute;dito e d&eacute;bito no per&iacute;odo considerando as taxas inseridas na aba configura&ccedil;&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:09:40","2018-07-27 18:09:40","N","32");

INSERT INTO tb_historia VALUES("107","Financeiro taxas dos cartões pagas por bandeira","<p>Financeiro Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra o total de faturamento por bandeira e total de taxa descontado no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:10:55","2018-07-27 18:10:55","N","32");

INSERT INTO tb_historia VALUES("108","Caixa Fechados e abertos por periodo","<p>Caixa Gerar Gr&aacute;ficos e Relat&oacute;rios&nbsp;Selecione o per&iacute;odo e visualize todos os caixas fechados e os seus respectivos hor&aacute;rios de abertura e fechamento</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 18:12:06","2018-07-27 18:12:06","N","32");

INSERT INTO tb_historia VALUES("109","Caixa entrada de pagamento","<p>Caixa Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todas as entradas de pagamento no per&iacute;odo por caixa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 18:12:44","2018-07-27 18:12:44","N","32");

INSERT INTO tb_historia VALUES("110","Caixa sangrias","<p>Caixa Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra as sangrias de caixa no per&iacute;odo por caixa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-07-27 18:13:22","2018-07-27 18:13:22","N","32");

INSERT INTO tb_historia VALUES("111","Vale Presente vendidos","<p>Vale Presente Gerar Gr&aacute;ficos e Relat&oacute;rios&nbsp;Mostra todos os vales presentes que foram vendidos (Geral) Filtros: usados, ativos e vencidos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:14:26","2018-07-27 18:19:26","N","32");

INSERT INTO tb_historia VALUES("112","Cortesia Dadas","<p>Cortesia Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos as cortesias dadas (Geral) Filtros: usados, ativos e vencidos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:15:07","2018-07-27 18:19:02","N","32");

INSERT INTO tb_historia VALUES("113","Promoções Vendidas","<p>Promo&ccedil;&otilde;es Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos as promo&ccedil;&otilde;es vendidas (Geral) Filtros: usados, ativos e vencidos</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:20:43","2018-07-27 18:20:43","N","32");

INSERT INTO tb_historia VALUES("114","Serviço profissionais que realizou","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Profissionais por servi&ccedil;os realizados</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:22:34","2018-07-27 18:24:36","N","32");

INSERT INTO tb_historia VALUES("115","Serviço Clientes atendidos","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Selecione o servi&ccedil;o e per&iacute;odo e veja os clientes atendidos por aquele servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:23:56","2018-07-27 18:23:56","N","32");

INSERT INTO tb_historia VALUES("116","Serviços utilizados por categoria","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Servi&ccedil;os mais utilizados por categorias</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:25:16","2018-07-27 18:25:16","N","32");

INSERT INTO tb_historia VALUES("117","Pacote Vendidos","<p>Servi&ccedil;os Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todosos pacotes vendidas (Geral) Filtros: usados, ativos e vencidos&nbsp; Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:49:49","2018-07-27 18:49:49","N","32");

INSERT INTO tb_historia VALUES("118","Pacote status por serviços","<p>Pacotes Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos os clientes que tem servi&ccedil;os ativos realizados e vencidos e seu servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:52:04","2018-07-27 18:56:13","N","32");

INSERT INTO tb_historia VALUES("119","Pacote status por serviços","<p>Pacotes Gerar Gr&aacute;ficos e Relat&oacute;rios Mostra todos os servi&ccedil;os do pacote &nbsp;ja realizados e ativos e vencidos no per&iacute;odo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 18:53:06","2018-07-27 18:54:22","N","32");

INSERT INTO tb_historia VALUES("120","Sms Histórico de envio","<p>Sms Gerar Gr&aacute;ficos e Relat&oacute;rios Sms disparados para lembrete</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 19:08:38","2018-07-27 19:08:38","N","32");

INSERT INTO tb_historia VALUES("121","E-mail Historico de envio","<p>E-mail Gerar Gr&aacute;ficos e Relat&oacute;rios E-mail disparados para lembrete</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 19:09:29","2018-07-27 19:09:29","N","32");

INSERT INTO tb_historia VALUES("122","Agendamento detalhes","<p>Agendamentos Gerar Gr&aacute;ficos e Relat&oacute;rios de gendamentos por status do agendamento cliente profissional e periodo</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;Impress&atilde;o dos gr&aacute;ficos e dados</p>","2018-07-27 19:12:19","2018-07-27 19:12:19","N","32");

INSERT INTO tb_historia VALUES("123","Configuração inicial do projeto","<p>Configura&ccedil;&atilde;o inicial do projeto</p>","2018-07-30 10:32:17","2018-07-30 11:37:21","C","1");

INSERT INTO tb_historia VALUES("124","Mudar loguin","<p>Mudar loguin para logar com email tb, recuperar senha e notificar de mudar senha.</p>","2018-07-30 11:11:11","2018-08-17 16:12:59","C","1");

INSERT INTO tb_historia VALUES("125","Criar mensagem de expiração e bloqueio do sistema","<p>Criar mensagem de expira&ccedil;&atilde;o e bloqueio do sistema</p>","2018-08-13 17:33:25","2018-08-17 18:09:18","C","1");

INSERT INTO tb_historia VALUES("126","Cadastro pelo site para o assinante","<p>verificar o cadastro pelo site para manter um plano mesmo que que por experi&ecirc;ncia</p>","2018-08-13 17:56:16","2018-08-13 17:56:39","N","21");

INSERT INTO tb_historia VALUES("127","Gestão de notificações","<p>Gest&atilde;o de notifica&ccedil;&otilde;es com as mensagens geradas do sistema de sucesso erro e avisos</p>","2018-08-15 11:16:03","2018-08-28 11:25:00","C","2");

INSERT INTO tb_historia VALUES("130","Manter Facilidades e beneficios","<p>Manter Facilidades e beneficios</p>","2018-08-30 10:57:06","2018-09-21 22:08:20","C","2");

INSERT INTO tb_historia VALUES("131","Taxas dos cartões","<p>Taxas cobradas dos cart&otilde;es de d&eacute;bito e cr&eacute;dito e taxa de antecipa&ccedil;&atilde;o dos cart&otilde;es de cr&eacute;dito com periodo da taxa</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>modelagem: Configuracao (FK assinante), Taxas cart&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-09-25 14:26:26","2018-10-26 20:28:56","C","5");

INSERT INTO tb_historia VALUES("132","Histórico da taxas","<p>hist&oacute;rico da taxas cobradas dos cart&otilde;es</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>","2018-09-25 14:27:18","2018-10-26 20:29:19","C","5");

INSERT INTO tb_historia VALUES("133","Configuração das comissões","<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas</p>","2018-09-25 14:31:36","2018-11-22 16:03:43","N","5");

INSERT INTO tb_historia VALUES("134","Configuração de Profissional","<p>Receber Email de resumo de faturamento di&aacute;rio, agenda futura (Configurar periodo), edi&ccedil;&atilde;o dos servi&ccedil;os prestados, edi&ccedil;&atilde;o dos atendimento futuros.</p>","2018-11-27 13:45:17","2019-02-18 16:42:26","C","5");

INSERT INTO tb_historia VALUES("140","Mudar Status","<p>Mudar Status Ativo e inativo do Profissional</p>","2018-12-20 13:42:59","2019-02-19 18:36:34","C","9");

INSERT INTO tb_historia VALUES("141","Manter Usuário Assinante","<p>Manter Usu&aacute;rio Assinante</p>","2019-03-11 17:06:50","2019-03-11 17:06:50","I","33");

INSERT INTO tb_historia VALUES("142","Manter Usuário Comum","<p>Manter Usu&aacute;rio Comum</p>","2019-03-11 17:07:12","2019-03-11 17:07:12","I","33");

INSERT INTO tb_historia VALUES("143","Manter Planos do Assinante","<p>Manter Planos do Assinante, alterar seu plano aumentando o plano</p>","2019-03-13 15:53:08","2019-03-13 15:53:08","N","1");

INSERT INTO tb_historia VALUES("144","Pesquisa Avançada dos Serviços","<p>Pesquisa Avan&ccedil;ada dos servi&ccedil;os por categoria, descri&ccedil;&atilde;o, valor, profissional, status, dura&ccedil;&atilde;o,</p>","2019-03-20 14:19:52","2019-03-20 14:28:42","N","12");

INSERT INTO tb_historia VALUES("145","Histórico Promoções do Serviço","<p>Apresentar Hist&oacute;rico das promo&ccedil;&atilde;oes do servi&ccedil;o</p>","2019-03-20 14:22:28","2019-03-20 14:27:15","N","12");

INSERT INTO tb_historia VALUES("146","Histórico Pacotes do Serviço","<p>apresentar Hist&oacute;rico os Pacotes do Servi&ccedil;o</p>","2019-03-20 14:22:52","2019-03-20 14:27:31","N","12");

INSERT INTO tb_historia VALUES("147","Pesquisa Avançada dos Profissionais","<p>Pesquisa Avan&ccedil;ada dos Profissionais por nome, filial, cargo, jornada de tabalho, sexo, cidade e uf, assistente , possui agenda,&nbsp; agenda on line, banco,</p>","2019-03-20 14:26:33","2019-03-20 14:26:33","N","9");

INSERT INTO tb_historia VALUES("148","Pesquisa Avançada dos Clientes","<p>Pesquisa Avan&ccedil;ada dos Clientes nome, apelido, anivers&aacute;rio do m&ecirc;s semana, sexo, cidade e UF,&nbsp; Recebe E-mail Agendamento, Lembrete Hor&aacute;rio de Agendamento, Recebe E-mail Marketing, Recebe SMS Marketing,&nbsp;</p>","2019-03-20 14:34:27","2019-03-20 14:34:27","N","11");

INSERT INTO tb_historia VALUES("149","Pesquisa Avançada dos Assinantes","<p>Pesquisa Avan&ccedil;ada dos Assinantes por raz&atilde;o soxial, nome fantasia, Respons&aacute;vel, cidade e UF, email, Tipo de estabelecimento, Atendimento, Genero Especializado, funcionamento, data de expira&ccedil;&atilde;o (Per&iacute;odo), n&uacute;mero de filiais, valor assinatura atual, n&uacute;mero de profissionais,</p>","2019-03-20 14:37:45","2019-03-20 14:40:07","N","1");




DROP TABLE IF EXISTS tb_historico_historia;


CREATE TABLE `tb_historico_historia` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` int(2) DEFAULT NULL,
  `nu_esforco_restante` int(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`),
  KEY `fk_TB_HISTORICO_HISTORIA_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=573 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_historico_historia VALUES("541","8","0","2019-02-06 08:44:05","17");

INSERT INTO tb_historico_historia VALUES("542","3","0","2019-02-11 17:27:48","46");

INSERT INTO tb_historico_historia VALUES("543","1","0","2019-02-11 17:34:25","18");

INSERT INTO tb_historico_historia VALUES("544","20","15","2019-02-11 18:11:00","19");

INSERT INTO tb_historico_historia VALUES("545","20","0","2019-02-12 12:09:39","19");

INSERT INTO tb_historico_historia VALUES("546","5","0","2019-02-18 16:42:26","134");

INSERT INTO tb_historico_historia VALUES("547","5","0","2019-02-19 18:36:34","140");

INSERT INTO tb_historico_historia VALUES("549","5","5","2019-02-20 14:24:33","20");

INSERT INTO tb_historico_historia VALUES("550","8","8","2019-02-20 14:57:53","20");

INSERT INTO tb_historico_historia VALUES("551","8","0","2019-02-20 17:07:32","20");

INSERT INTO tb_historico_historia VALUES("552","20","20","2019-02-25 16:07:59","45");

INSERT INTO tb_historico_historia VALUES("553","30","25","2019-02-25 16:08:44","45");

INSERT INTO tb_historico_historia VALUES("554","13","1","2019-03-08 15:27:09","74");

INSERT INTO tb_historico_historia VALUES("555","30","30","2019-03-08 15:28:30","84");

INSERT INTO tb_historico_historia VALUES("556","30","8","2019-03-11 16:33:47","84");

INSERT INTO tb_historico_historia VALUES("557","20","5","2019-03-11 16:34:01","84");

INSERT INTO tb_historico_historia VALUES("558","13","3","2019-03-11 17:06:50","141");

INSERT INTO tb_historico_historia VALUES("559","8","5","2019-03-11 17:07:12","142");

INSERT INTO tb_historico_historia VALUES("560","13","13","2019-03-13 15:53:08","143");

INSERT INTO tb_historico_historia VALUES("561","20","0","2019-03-20 14:14:45","45");

INSERT INTO tb_historico_historia VALUES("562","13","13","2019-03-20 14:17:47","44");

INSERT INTO tb_historico_historia VALUES("563","8","8","2019-03-20 14:19:52","144");

INSERT INTO tb_historico_historia VALUES("564","8","8","2019-03-20 14:22:28","145");

INSERT INTO tb_historico_historia VALUES("565","8","8","2019-03-20 14:22:52","146");

INSERT INTO tb_historico_historia VALUES("566","20","20","2019-03-20 14:26:33","147");

INSERT INTO tb_historico_historia VALUES("567","8","8","2019-03-20 14:27:15","145");

INSERT INTO tb_historico_historia VALUES("568","8","8","2019-03-20 14:27:31","146");

INSERT INTO tb_historico_historia VALUES("569","8","8","2019-03-20 14:28:42","144");

INSERT INTO tb_historico_historia VALUES("570","13","13","2019-03-20 14:34:27","148");

INSERT INTO tb_historico_historia VALUES("571","8","8","2019-03-20 14:37:45","149");

INSERT INTO tb_historico_historia VALUES("572","20","20","2019-03-20 14:40:07","149");




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;


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

INSERT INTO tb_imagem VALUES("35","novo-profissional-dsf-5c62d2ddadb46.jpg");

INSERT INTO tb_imagem VALUES("36","leo-bessa-novinho-5c1b8c81725c7.jpg");

INSERT INTO tb_imagem VALUES("37","jose-arnaldo-5c1b94788c0d8.jpg");

INSERT INTO tb_imagem VALUES("38","seu-biga-5c5af209a8223.jpg");

INSERT INTO tb_imagem VALUES("39","novo-cliente-p-5c62ce494f9a0.jpg");

INSERT INTO tb_imagem VALUES("40","novo-cliente-p-5c62ceba4f2e4.jpg");

INSERT INTO tb_imagem VALUES("41","novo-cliente-p-5c62cf918cc6a.jpg");

INSERT INTO tb_imagem VALUES("42","novo-cliente-p-5c62d19fd8d73.jpg");

INSERT INTO tb_imagem VALUES("43","novo-cliente-p-5c62d315241d5.jpg");

INSERT INTO tb_imagem VALUES("44","servico_padrao/tonalizante-coloracao02.jpg");

INSERT INTO tb_imagem VALUES("45","servico_padrao/tonalizante-coloracao02.jpg");

INSERT INTO tb_imagem VALUES("46","servico_padrao/tonalizante-coloracao02.jpg");

INSERT INTO tb_imagem VALUES("47","servico_padrao/tonalizante-coloracao02.jpg");

INSERT INTO tb_imagem VALUES("48","servico_padrao/corte-de-cabelo-masculino.jpg");

INSERT INTO tb_imagem VALUES("49","servico_padrao/qual-a-melhor-maquina-de-cortar-cabelo_1.jpg");

INSERT INTO tb_imagem VALUES("50","servico_padrao/melhor-fase-da-lua-para-corta-cabelo-em-2019.jpg");

INSERT INTO tb_imagem VALUES("51","servico_padrao/mascara-de-cabelo-1.jpg");

INSERT INTO tb_imagem VALUES("52","servico_padrao/lavagem-1.jpg");

INSERT INTO tb_imagem VALUES("53","servico_padrao/escova-modeladora-como-escolher-2.jpg");

INSERT INTO tb_imagem VALUES("54","servico_padrao/selagem-termica-capilar-2.jpg");

INSERT INTO tb_imagem VALUES("55","servico_padrao/Escova-progressiva.jpg");

INSERT INTO tb_imagem VALUES("56","servico_padrao/botox-capilar-como-saber-se-e-falso.jpg");

INSERT INTO tb_imagem VALUES("57","servico_padrao/luzes-reflexos.jpg");

INSERT INTO tb_imagem VALUES("58","servico_padrao/manicure.jpg");

INSERT INTO tb_imagem VALUES("59","servico_padrao/spa-pedicure.jpg");

INSERT INTO tb_imagem VALUES("60","servico_padrao/manicure-pedicure.jpg");

INSERT INTO tb_imagem VALUES("61","servico_padrao/banho-de-gel-cristalizacao-unhas-cristalizadas.jpg");

INSERT INTO tb_imagem VALUES("62","servico_padrao/Makeup-Pic-for-Website.jpg");

INSERT INTO tb_imagem VALUES("63","servico_padrao/cilios_fio_a_fio_duo_spa.jpg");

INSERT INTO tb_imagem VALUES("64","servico_padrao/design-de-sobrancelhas-nilopolis.jpg");

INSERT INTO tb_imagem VALUES("65","servico_padrao/retocar-a-barba-de-seu-amigo_1153-1504.jpg");

INSERT INTO tb_imagem VALUES("66","servico_padrao/Rejuvenescimento_Facial.jpg");

INSERT INTO tb_imagem VALUES("67","servico_padrao/Microagulhamento_Peeling.jpg");

INSERT INTO tb_imagem VALUES("68","servico_padrao/Mascara_Acne_Control.jpg");

INSERT INTO tb_imagem VALUES("69","servico_padrao/Limpeza_Pele.jpg");

INSERT INTO tb_imagem VALUES("70","servico_padrao/Depilacao_Laser.jpg");

INSERT INTO tb_imagem VALUES("71","servico_padrao/Depilacao_Cera.png");

INSERT INTO tb_imagem VALUES("72","servico_padrao/Depilacao_Luz.jpg");

INSERT INTO tb_imagem VALUES("73","servico_padrao/Massagem_Relaxante.jpg");

INSERT INTO tb_imagem VALUES("74","servico_padrao/Massagem_Modeladora.jpg");

INSERT INTO tb_imagem VALUES("75","servico_padrao/Drenagem_Linfatica.jpg");

INSERT INTO tb_imagem VALUES("76","servico_padrao/Day_Spa.jpg");

INSERT INTO tb_imagem VALUES("77","servico_padrao/Podologia.jpg");

INSERT INTO tb_imagem VALUES("78","servico_padrao/Bambuterapia.jpg");

INSERT INTO tb_imagem VALUES("79","servico_padrao/Carboxiterapia.jpg");




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
  `nu_almoco_inicio` varchar(5) DEFAULT NULL COMMENT 'Horário de inicio de almoço',
  `nu_almoco_final` varchar(5) DEFAULT NULL COMMENT 'Horário de finalização do Almoço',
  `nu_intervalo_inicio` varchar(5) DEFAULT NULL COMMENT 'Horário de inicio do intervalo',
  `nu_intervalo_final` varchar(5) DEFAULT NULL COMMENT 'Horário de finalização do intervalo',
  `co_profissional` int(11) NOT NULL,
  PRIMARY KEY (`co_jornada_trabalho`,`co_profissional`),
  KEY `fk_TB_JORNADA_TRABALHO_TB_PROFISSIONAL1_idx` (`co_profissional`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;


INSERT INTO tb_jornada_trabalho VALUES("15","1","05:44","18:40","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("16","2","05:44","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("17","3","05:44","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("18","4","23:33","18:40","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("19","5","04:00","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("20","6","03:00","19:11","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("22","1","05:00","18:40","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("23","2","05:44","18:11","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("24","3","05:44","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("25","4","04:44","18:11","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("26","5","04:00","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("27","6","03:00","19:11","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("28","7","03:00","14:11","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("35","2","05:00","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("36","4","23:33","18:40","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("40","1","05:00","18:11","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("41","2","05:44","18:04","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("42","8","02:23","21:23","","","","","0");

INSERT INTO tb_jornada_trabalho VALUES("56","1","05:00","18:40","","","","","20");

INSERT INTO tb_jornada_trabalho VALUES("57","2","05:00","18:04","","","","","20");

INSERT INTO tb_jornada_trabalho VALUES("58","4","04:44","18:11","","","","","20");

INSERT INTO tb_jornada_trabalho VALUES("64","2","05:00","18:11","","","16:00","16:10","21");

INSERT INTO tb_jornada_trabalho VALUES("65","3","05:00","18:04","12:00","12:30","","","21");

INSERT INTO tb_jornada_trabalho VALUES("66","6","03:00","19:11","12:00","12:30","16:00","16:15","21");




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




DROP TABLE IF EXISTS tb_perfil_assinante;


CREATE TABLE `tb_perfil_assinante` (
  `co_perfil_assinante` int(11) NOT NULL AUTO_INCREMENT,
  `no_perfil` varchar(45) DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL,
  `co_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_assinante`,`co_assinante`),
  KEY `fk_TB_PERFIL_ASSINANTE_TB_ASSINANTE1_idx` (`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_perfil_assinante VALUES("1","Profissional","A","11");




DROP TABLE IF EXISTS tb_perfil_funcionalidade;


CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_funcionalidade` int(11) NOT NULL,
  `co_perfil` int(11) NOT NULL,
  `co_perfil_assinante` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_funcionalidade`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_TB_PERFIL_FUNCIONALIDADE_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1","0");

INSERT INTO tb_perfil_funcionalidade VALUES("214","12","4","0");

INSERT INTO tb_perfil_funcionalidade VALUES("215","6","4","0");

INSERT INTO tb_perfil_funcionalidade VALUES("216","4","4","0");

INSERT INTO tb_perfil_funcionalidade VALUES("217","44","3","0");

INSERT INTO tb_perfil_funcionalidade VALUES("218","12","3","0");

INSERT INTO tb_perfil_funcionalidade VALUES("219","6","3","0");

INSERT INTO tb_perfil_funcionalidade VALUES("220","49","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("221","48","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("222","47","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("223","46","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("224","45","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("225","44","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("226","43","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("227","27","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("228","26","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("229","24","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("230","23","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("231","22","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("232","21","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("233","20","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("234","19","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("235","18","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("236","17","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("237","16","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("238","15","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("239","14","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("240","13","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("241","12","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("242","8","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("243","7","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("244","6","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("245","5","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("246","4","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("261","60","2","0");

INSERT INTO tb_perfil_funcionalidade VALUES("262","61","2","0");




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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_pessoa VALUES("73","","Novo Profissional DSF ","","2018-12-19 10:59:48","2000-12-05","M","92","78","35");

INSERT INTO tb_pessoa VALUES("74","12345678909","LEO BESSA NOVINHO","1111111111111","2018-12-20 10:56:22","1984-07-06","F","93","79","0");

INSERT INTO tb_pessoa VALUES("76","22322191191","Jose Arnaldo","2346","2019-01-14 17:25:21","1959-06-05","M","95","81","0");

INSERT INTO tb_pessoa VALUES("77","12345678909","Seu Biga ","1111111111111","2019-01-14 17:05:48","2018-09-10","M","96","82","0");

INSERT INTO tb_pessoa VALUES("79","22322191191","Novo Cliente p","777777777","2019-02-12 11:44:02","2000-02-09","F","105","91","43");




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




DROP TABLE IF EXISTS tb_preco_servico;


CREATE TABLE `tb_preco_servico` (
  `co_preco_servico` int(11) NOT NULL AUTO_INCREMENT,
  `nu_valor` decimal(6,2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_observacao` varchar(120) DEFAULT NULL,
  `co_servico` int(11) NOT NULL,
  `co_usuario` int(10) NOT NULL,
  PRIMARY KEY (`co_preco_servico`,`co_servico`,`co_usuario`),
  KEY `fk_TB_PRECO_SERVICO_TB_SERVICO1_idx` (`co_servico`),
  KEY `fk_TB_PRECO_SERVICO_TB_USUARIO1_idx` (`co_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


INSERT INTO tb_preco_servico VALUES("1","39.90","2019-03-20 16:54:46","Serviço Inicial","3","8");

INSERT INTO tb_preco_servico VALUES("2","19.90","2019-03-20 16:54:46","Serviço Inicial","4","8");

INSERT INTO tb_preco_servico VALUES("3","29.90","2019-03-20 16:54:46","Serviço Inicial","5","8");

INSERT INTO tb_preco_servico VALUES("4","59.90","2019-03-20 16:54:46","Serviço Inicial","6","8");

INSERT INTO tb_preco_servico VALUES("5","49.90","2019-03-20 16:54:46","Serviço Inicial","7","8");

INSERT INTO tb_preco_servico VALUES("6","49.90","2019-03-20 16:54:46","Serviço Inicial","8","8");

INSERT INTO tb_preco_servico VALUES("7","29.90","2019-03-20 16:54:46","Serviço Inicial","9","8");

INSERT INTO tb_preco_servico VALUES("8","59.90","2019-03-20 16:54:46","Serviço Inicial","10","8");

INSERT INTO tb_preco_servico VALUES("9","59.90","2019-03-20 16:54:46","Serviço Inicial","11","8");

INSERT INTO tb_preco_servico VALUES("10","59.90","2019-03-20 16:54:46","Serviço Inicial","12","8");

INSERT INTO tb_preco_servico VALUES("11","79.90","2019-03-20 16:54:46","Serviço Inicial","13","8");

INSERT INTO tb_preco_servico VALUES("12","19.90","2019-03-20 16:54:46","Serviço Inicial","14","8");

INSERT INTO tb_preco_servico VALUES("13","19.90","2019-03-20 16:54:46","Serviço Inicial","15","8");

INSERT INTO tb_preco_servico VALUES("14","29.90","2019-03-20 16:54:46","Serviço Inicial","16","8");

INSERT INTO tb_preco_servico VALUES("15","59.90","2019-03-20 16:54:46","Serviço Inicial","17","8");

INSERT INTO tb_preco_servico VALUES("16","119.90","2019-03-20 16:54:46","Serviço Inicial","18","8");

INSERT INTO tb_preco_servico VALUES("17","79.90","2019-03-20 16:54:46","Serviço Inicial","19","8");

INSERT INTO tb_preco_servico VALUES("18","24.90","2019-03-20 16:54:46","Serviço Inicial","20","8");

INSERT INTO tb_preco_servico VALUES("19","19.90","2019-03-20 16:54:46","Serviço Inicial","21","8");

INSERT INTO tb_preco_servico VALUES("20","19.90","2019-03-20 16:54:46","Serviço Inicial","22","8");

INSERT INTO tb_preco_servico VALUES("21","69.90","2019-03-20 16:54:46","Serviço Inicial","23","8");

INSERT INTO tb_preco_servico VALUES("22","39.90","2019-03-20 16:54:46","Serviço Inicial","24","8");

INSERT INTO tb_preco_servico VALUES("23","29.90","2019-03-20 16:54:46","Serviço Inicial","25","8");

INSERT INTO tb_preco_servico VALUES("24","99.90","2019-03-20 16:54:46","Serviço Inicial","26","8");

INSERT INTO tb_preco_servico VALUES("25","29.90","2019-03-20 16:54:46","Serviço Inicial","27","8");

INSERT INTO tb_preco_servico VALUES("26","89.90","2019-03-20 16:54:46","Serviço Inicial","28","8");

INSERT INTO tb_preco_servico VALUES("27","29.90","2019-03-20 16:54:46","Serviço Inicial","29","8");

INSERT INTO tb_preco_servico VALUES("28","29.90","2019-03-20 16:54:46","Serviço Inicial","30","8");

INSERT INTO tb_preco_servico VALUES("29","29.90","2019-03-20 16:54:46","Serviço Inicial","31","8");

INSERT INTO tb_preco_servico VALUES("30","99.90","2019-03-20 16:54:46","Serviço Inicial","32","8");

INSERT INTO tb_preco_servico VALUES("31","39.90","2019-03-20 16:54:46","Serviço Inicial","33","8");

INSERT INTO tb_preco_servico VALUES("32","29.90","2019-03-20 16:54:46","Serviço Inicial","34","8");

INSERT INTO tb_preco_servico VALUES("33","39.90","2019-03-20 16:54:46","Serviço Inicial","35","8");




DROP TABLE IF EXISTS tb_profissional;


CREATE TABLE `tb_profissional` (
  `co_profissional` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `ds_cor_agenda` varchar(7) DEFAULT NULL COMMENT 'Valor Hexadecimal',
  `st_assistente` varchar(1) DEFAULT 'S' COMMENT 'S - Sim / N - Não * Se pode ser assitente de outro profissional',
  `ds_sobre` text,
  `no_apelido` varchar(45) DEFAULT NULL,
  `ds_motivo` text,
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


INSERT INTO tb_profissional VALUES("9","2018-12-19 18:25:40","#00FF00","S","SOBRE MIM","meu apelido","","S","S","A","2","1","2018-12-03","0000-00-00","32","48","27","11","17");

INSERT INTO tb_profissional VALUES("15","2018-12-18 17:15:15","","N","","","","N","N","A","0","1","0000-00-00","0000-00-00","0","67","43","11","34");

INSERT INTO tb_profissional VALUES("16","2018-12-18 17:37:41","#A54A7B","N","Eu sou a kaka","Kaka","","S","S","I","1","3","2018-12-04","","33","68","44","11","35");

INSERT INTO tb_profissional VALUES("18","2018-12-19 10:59:48","","N","","","","N","N","I","0","1","1969-12-31","","35","73","46","11","39");

INSERT INTO tb_profissional VALUES("19","2018-12-20 10:56:22","#F7C6CE","N","SObre 22","meu apelido 22","","S","S","A","2","3","2018-12-19","0000-00-00","36","74","47","11","40");

INSERT INTO tb_profissional VALUES("20","2019-01-14 17:25:21","#397B21","S","Representante comercial da Bartofil","Bigode","","S","S","I","1","2","2018-12-17","0000-00-00","37","76","49","11","42");

INSERT INTO tb_profissional VALUES("21","2019-01-14 17:05:48","#A54A7B","S","","meu apelido","","S","S","I","0","1","1983-12-06","","38","77","50","11","43");




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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;


INSERT INTO tb_profissional_cargo VALUES("14","30","15","2018-12-18 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("23","7","9","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("24","6","9","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("37","33","19","2018-12-20 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("52","34","20","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("53","32","20","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("54","31","16","2019-01-25 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("55","26","16","2019-01-25 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("56","21","16","2019-01-25 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("65","32","21","2019-02-11 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("66","31","21","2019-02-11 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("67","30","21","2019-02-11 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("68","27","21","2019-02-11 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("69","34","18","2019-02-12 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("70","29","18","2019-02-12 00:00:00","A");




DROP TABLE IF EXISTS tb_projeto;


CREATE TABLE `tb_projeto` (
  `co_projeto` int(11) NOT NULL AUTO_INCREMENT,
  `no_projeto` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`co_projeto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


INSERT INTO tb_projeto VALUES("1","SisBela","2018-07-25 11:07:40");




DROP TABLE IF EXISTS tb_servico;


CREATE TABLE `tb_servico` (
  `co_servico` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cadastro` datetime DEFAULT NULL,
  `st_status` varchar(1) DEFAULT NULL COMMENT 'A - Ativo / I - Inativo',
  `no_servico` varchar(100) DEFAULT NULL,
  `nu_duracao` int(3) DEFAULT NULL,
  `ds_descricao` text,
  `co_categoria_servico` int(11) NOT NULL,
  `co_imagem` int(10) NOT NULL,
  PRIMARY KEY (`co_servico`,`co_categoria_servico`,`co_imagem`),
  KEY `fk_TB_SERVICO_TB_CATEGORIA_SERVICO1_idx` (`co_categoria_servico`),
  KEY `fk_TB_SERVICO_TB_IMAGEM1_idx` (`co_imagem`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;


INSERT INTO tb_servico VALUES("3","2019-03-20 16:54:46","A","Coloração / Tonalização","120","Tonalização: matiza e deixa os tons dos fios mais naturais.","5","47");

INSERT INTO tb_servico VALUES("4","2019-03-20 16:54:46","A","Corte Tesoura","30","Corte: O corte na tesoura irá deixar você com o visual renovado.","5","48");

INSERT INTO tb_servico VALUES("5","2019-03-20 16:54:46","A","Corte Máquina","30","Corte: O corte na máquina irá deixar você com o visual renovado.","5","49");

INSERT INTO tb_servico VALUES("6","2019-03-20 16:54:46","A","Corte Feminino","60","Corte: mude o visual ou apare as pontinhas para manter a aparência do \n        cabelo sempre saudável.","5","50");

INSERT INTO tb_servico VALUES("7","2019-03-20 16:54:46","A","Hidratação Capilar","60","Hidratação profunda Capilar","5","51");

INSERT INTO tb_servico VALUES("8","2019-03-20 16:54:46","A","Corte e Higienização dos Fios","30","Corte: mude o visual ou apare as pontinhas para manter a \n        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas","5","52");

INSERT INTO tb_servico VALUES("9","2019-03-20 16:54:46","A","Escova Modeladora","30","Escova: você vai ter uma ajudinha para realinhar os cabelos com um \n        caimento perfeito.","5","53");

INSERT INTO tb_servico VALUES("10","2019-03-20 16:54:46","A","Selagem","60","Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição \n        aos fios, além de ser uma ótima aliada na redução do volume.","5","54");

INSERT INTO tb_servico VALUES("11","2019-03-20 16:54:46","A","Escova Progressiva","60","Progressiva: é um realinhamento tradicional dos fios, que reestrutura a \n        fibra capilar com ativação térmica, hidratando e condicionando profundamente o cabelo. Possui um ativo \n        que adere à superfície do cabelo, selando as cutículas, repondo a massa e recuperando a estrutura capilar. \n        Os resultados são cabelos lisos, hidratados, sem frizz, macios e com super brilho.","5","55");

INSERT INTO tb_servico VALUES("12","2019-03-20 16:54:46","A","Botox Capilar","60","Botox: é um poderoso reconstrutor da fibra do cabelo, garantindo sua jovialidade. \n        Esta técnica deixa-os hidratados, sem volume e com aspecto saudável.","5","56");

INSERT INTO tb_servico VALUES("13","2019-03-20 16:54:46","A","Luzes / Mechas","150","Luzes: clareiam sutilmente os fios da raiz até as pontas, deixando o cabelo \n        com mais reflexos e Mechas: descoloração feita em mechas que se misturam à cor original do cabelo.","5","57");

INSERT INTO tb_servico VALUES("14","2019-03-20 16:54:46","A","Manicure","30","Manicure: retirada de cutículas e pintura das unhas das mãos nas cores desejadas \n        pela cliente.","6","58");

INSERT INTO tb_servico VALUES("15","2019-03-20 16:54:46","A","Pedicure","30","Pedicure: retirada de cutículas e pintura das unhas dos pés nas cores desejadas \n        pela cliente.","6","59");

INSERT INTO tb_servico VALUES("16","2019-03-20 16:54:46","A","Manicure e Pedicure","60","Manicure e Pedicure: retirada de cutículas e pintura das unhas das mãos \n        e dos pés nas cores desejadas pela cliente.","6","60");

INSERT INTO tb_servico VALUES("17","2019-03-20 16:54:46","A","Unhas Gel","90","Unhas em Gel: feitas com produto à base de película de poliéster, \n        antitóxico e antialérgico, secado sob o calor de lâmpada de UV. As unhas têm aparência mais natural e \n        são mais finas.","6","61");

INSERT INTO tb_servico VALUES("18","2019-03-20 16:54:46","A","Maquiagem Completa","120","Desfrute de uma make completa para arrasar em festas, comemorações e \n        casamentos com uma super maquiagem.","7","62");

INSERT INTO tb_servico VALUES("19","2019-03-20 16:54:46","A","Alongamento de Cílios Fio a Fio","90","Alongamento de Cílios: a técnica de alongamento de cílios trata-se \n        de uma espécie de “mega-hair” para cílios, ou seja, aumenta o tamanho e o volume dos pelos, fio a fio, \n        fazendo com que os mesmos fiquem alongados, cheios e definidos, como se tivesse sido aplicada uma camada \n        generosa de máscara para cílios. Desta forma, você pode dispensar o uso do rímel durante o período em que o \n        procedimento estético em questão dura.","8","63");

INSERT INTO tb_servico VALUES("20","2019-03-20 16:54:46","A","Design de Sobrancelhas","30","Design de Sobrancelhas: além de ser esteticamente essencial, garante \n        uma expressão mais bonita, evidencia traços naturais e deixa você com olhar muito mais seguro e disposto. \n        Feito de acordo com o formato do seu rosto. Feito com pinça.","8","64");

INSERT INTO tb_servico VALUES("21","2019-03-20 16:54:46","A","Retoque na Barba","60","Barba: faça a barba totalmente ou apare com um design a seu gosto para \n        manter a aparência impecável.","9","65");

INSERT INTO tb_servico VALUES("22","2019-03-20 16:54:46","A","Rejuvenescimento Facial","60","Rejuvenescimento Facial com Luz Pulsada é um procedimento \n        de última geração que promove a melhora da textura, vivacidade e iluminação da pele, além de repor o colágeno \n        e a elastina proporcionando assim uma pele mais firme e jovem.","10","66");

INSERT INTO tb_servico VALUES("23","2019-03-20 16:54:46","A","Microagulhamento com Peeling","60","Microagulhamento: promove textura mais macia, atenuando cicatrizes \n        de acne, poros abertos, rugas, linhas de expressão, cicatrizes, estrias, olheiras, manchas, flacidez. e Peeling \n        de diamante: entre os principais objetivos do procedimento estão a remoção das células mortas que ficam na \n        camada mais superficial da pele e a estimulação à produção de colágeno.","10","67");

INSERT INTO tb_servico VALUES("24","2019-03-20 16:54:46","A","Máscara Acne Control","60","Máscara Acne Control: o tratamento visa diminuir a acne, manchas e melhorar a \n        textura e a firmeza da pele.","10","68");

INSERT INTO tb_servico VALUES("25","2019-03-20 16:54:46","A","Limpeza de Pele","30","Limpeza de pele com extração: inclui higienização, vapor de ozônio e extração \n        de cravos, deixando seu rosto limpo e saudável para os demais procedimentos.","10","69");

INSERT INTO tb_servico VALUES("26","2019-03-20 16:54:46","A","Depilação a Laser","30","Com Depilação a Laser com Soprano XL, um aparelho praticamente indolor, \n        que garante uma boa tolerância dos pacientes ao desconforto no momento da sessão.","11","70");

INSERT INTO tb_servico VALUES("27","2019-03-20 16:54:46","A","Depilação a Cera","60","Realizada com cera quente, que garante uma maior durabilidade, já que os \n        pelos são eliminados pela raiz. O tratamento diminui a espessura do pelo e retarda seu crescimento. É rápida, \n        sem resíduos e sua pele não fica irritada, como acontece com a lâmina de barbear. Todo material é descartável.","11","71");

INSERT INTO tb_servico VALUES("28","2019-03-20 16:54:46","A","Depilação a Luz","30","O método remove os pelos pela destruição do folículo piloso ou \n        de sua nutrição, tornando seu crescimento inviável. O laser utiliza a cor do pelo como guia para chegar até \n        sua raiz e destruí-lo. Com a emissão de um feixe de luz monocromática, queima e atrofia sua raiz.","11","72");

INSERT INTO tb_servico VALUES("29","2019-03-20 16:54:46","A","Massagem Relaxante","30","Massagem Relaxante: é revigorante e reduz o estado de tensão muscular.","12","73");

INSERT INTO tb_servico VALUES("30","2019-03-20 16:54:46","A","Massagem Modeladora","30","Massagem Modeladora: para quem precisa ativar o metabolismo local, \n        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.","12","74");

INSERT INTO tb_servico VALUES("31","2019-03-20 16:54:46","A","Drenagem Linfática","30","Drenagem Linfática: para quem precisa retirar o excesso de líquidos e \n        toxinas do organismo.","12","75");

INSERT INTO tb_servico VALUES("32","2019-03-20 16:54:46","A","Day Spa","120","Massagem com pedras quentes é uma terapia complementar, que utiliza pedras de \n        vários tipos e tamanhos, principalmente as vulcânicas, que absorvem muito mais o calor. Esta terapia é capaz \n        de levar a um profundo relaxamento e bem estar, trazendo ao corpo diversas sensações com o toque das pedras \n        quentes. Esfoliação corporal e facial: pele mais uniforme, limpa e macia. Escalda-pés: método relaxante que \n        estimula a circulação sanguínea e alivia o estresse e o cansaço acumulado","12","76");

INSERT INTO tb_servico VALUES("33","2019-03-20 16:54:46","A","Podologia com limpeza dos pés","60","Podologia com limpeza dos pés: corte, polimento, limpeza, \n        debastamento das calosidades, esfoliação dos pés e hidratação profunda.","13","77");

INSERT INTO tb_servico VALUES("34","2019-03-20 16:54:46","A","Bambuterapia","60","Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, \n        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes \n        e energética.","14","78");

INSERT INTO tb_servico VALUES("35","2019-03-20 16:54:46","A","Carboxiterapia","30","Feita por meio de injeção subcutânea de gás carbônico medicinal, estimula a \n        produção de colágeno local e ajuda a reduzir a gordura localizada, ao mesmo tempo que melhora a celulite \n        e flacidez.","14","79");




DROP TABLE IF EXISTS tb_sessao;


CREATE TABLE `tb_sessao` (
  `co_sessao` int(11) NOT NULL AUTO_INCREMENT,
  `no_sessao` varchar(80) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_sessao`,`co_modulo`),
  KEY `fk_TB_SESSAO_TB_MODULO1_idx` (`co_modulo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_sessao VALUES("33","Usuário","2019-03-11 17:06:17","2");




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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_trafego VALUES("46","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("137","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("138","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("139","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("140","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("141","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("142","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("143","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("144","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("145","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("146","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("147","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("148","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("149","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("150","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("151","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("152","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("153","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("154","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("155","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("156","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("157","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("158","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("159","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("160","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("161","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("162","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("163","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("164","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("165","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("166","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("167","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("168","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("169","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("170","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("171","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("172","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("173","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("174","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("175","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("176","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Chrome","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36");

INSERT INTO tb_trafego VALUES("177","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("178","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("179","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("180","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("181","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("182","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("183","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");

INSERT INTO tb_trafego VALUES("184","::1","Desconhecido","Desconhecida","Desconhecida","Desconhecida","Desconhecida","Firefox","Windows 10","Desktop","Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0");




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
  `co_perfil_assinante` int(10) NOT NULL,
  PRIMARY KEY (`co_usuario_perfil`,`co_usuario`,`co_perfil`,`co_perfil_assinante`),
  KEY `fk_tb_usuario_tb_perfil_tb_perfil1_idx` (`co_perfil`),
  KEY `fk_tb_usuario_tb_perfil_tb_usuario_idx` (`co_usuario`),
  KEY `fk_TB_USUARIO_PERFIL_TB_PERFIL_ASSINANTE1_idx` (`co_perfil_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;


INSERT INTO tb_usuario_perfil VALUES("1","1","1","0");

INSERT INTO tb_usuario_perfil VALUES("4","8","2","0");

INSERT INTO tb_usuario_perfil VALUES("5","9","2","0");

INSERT INTO tb_usuario_perfil VALUES("6","10","2","0");

INSERT INTO tb_usuario_perfil VALUES("7","11","2","0");

INSERT INTO tb_usuario_perfil VALUES("8","8","3","0");




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





