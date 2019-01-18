-- Atualizado em: 18/01/2019 13:44:12
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_acesso VALUES("36","eq7iu344l6pht078svt9t4g7o7","2019-01-18 13:01:13","2019-01-18 14:14:12","A","1","51");




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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria VALUES("1","2018-12-20 17:17:04","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("2","2018-12-20 17:17:56","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("3","2018-12-20 17:19:05","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("4","2018-12-20 17:19:45","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("5","2019-01-14 16:50:14","Master","1");

INSERT INTO tb_auditoria VALUES("6","2019-01-14 16:58:52","Master","1");

INSERT INTO tb_auditoria VALUES("7","2019-01-14 16:59:16","Master","1");

INSERT INTO tb_auditoria VALUES("8","2019-01-14 16:59:23","Master","1");

INSERT INTO tb_auditoria VALUES("9","2019-01-14 17:03:55","Master","1");

INSERT INTO tb_auditoria VALUES("10","2019-01-14 17:04:13","Master","1");

INSERT INTO tb_auditoria VALUES("11","2019-01-14 17:05:48","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("14","2019-01-14 17:17:29","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("15","2019-01-14 17:18:56","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("16","2019-01-14 17:20:07","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("17","2019-01-14 17:21:57","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("18","2019-01-14 17:25:21","Gestor, Colaborador","8");

INSERT INTO tb_auditoria VALUES("19","2019-01-18 11:53:21","Master","1");

INSERT INTO tb_auditoria VALUES("20","2019-01-18 11:53:36","Master","1");




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_itens VALUES("1","2","","co_config_agendamento","1");

INSERT INTO tb_auditoria_itens VALUES("2","2","2","nu_intervalo","1");

INSERT INTO tb_auditoria_itens VALUES("3","2","2","st_status_agendamento_site","1");

INSERT INTO tb_auditoria_itens VALUES("4","7","7","nu_antecedencia_agendamento","1");

INSERT INTO tb_auditoria_itens VALUES("5","S","S","st_receber_email_agendamento","1");

INSERT INTO tb_auditoria_itens VALUES("6","N","N","st_enviar_email_confirmacao","1");

INSERT INTO tb_auditoria_itens VALUES("7","11","11","co_assinante","1");

INSERT INTO tb_auditoria_itens VALUES("8","2","","co_config_agendamento","2");

INSERT INTO tb_auditoria_itens VALUES("9","2","2","nu_intervalo","2");

INSERT INTO tb_auditoria_itens VALUES("10","2","","st_status_agendamento_site","2");

INSERT INTO tb_auditoria_itens VALUES("11","7","7","nu_antecedencia_agendamento","2");

INSERT INTO tb_auditoria_itens VALUES("12","S","S","st_receber_email_agendamento","2");

INSERT INTO tb_auditoria_itens VALUES("13","N","N","st_enviar_email_confirmacao","2");

INSERT INTO tb_auditoria_itens VALUES("14","11","11","co_assinante","2");

INSERT INTO tb_auditoria_itens VALUES("15","2","","co_config_agendamento","3");

INSERT INTO tb_auditoria_itens VALUES("16","2","2","nu_intervalo","3");

INSERT INTO tb_auditoria_itens VALUES("17","","","st_status_agendamento_site","3");

INSERT INTO tb_auditoria_itens VALUES("18","7","7","nu_antecedencia_agendamento","3");

INSERT INTO tb_auditoria_itens VALUES("19","S","S","st_receber_email_agendamento","3");

INSERT INTO tb_auditoria_itens VALUES("20","N","N","st_enviar_email_confirmacao","3");

INSERT INTO tb_auditoria_itens VALUES("21","11","11","co_assinante","3");

INSERT INTO tb_auditoria_itens VALUES("22","2","","co_config_agendamento","4");

INSERT INTO tb_auditoria_itens VALUES("23","2","2","nu_intervalo","4");

INSERT INTO tb_auditoria_itens VALUES("24","","1","st_status_agendamento_site","4");

INSERT INTO tb_auditoria_itens VALUES("25","7","7","nu_antecedencia_agendamento","4");

INSERT INTO tb_auditoria_itens VALUES("26","S","S","st_receber_email_agendamento","4");

INSERT INTO tb_auditoria_itens VALUES("27","N","N","st_enviar_email_confirmacao","4");

INSERT INTO tb_auditoria_itens VALUES("28","11","11","co_assinante","4");

INSERT INTO tb_auditoria_itens VALUES("29","","novinho","no_plano","5");

INSERT INTO tb_auditoria_itens VALUES("30","","24","nu_mes_ativo","5");

INSERT INTO tb_auditoria_itens VALUES("31","","A","st_status","5");

INSERT INTO tb_auditoria_itens VALUES("32","","2019-01-14 16:50:14","dt_cadastro","5");

INSERT INTO tb_auditoria_itens VALUES("33","","9","co_plano","7");

INSERT INTO tb_auditoria_itens VALUES("34","","1","co_modulo","7");

INSERT INTO tb_auditoria_itens VALUES("35","","ce","ds_observacao","8");

INSERT INTO tb_auditoria_itens VALUES("36","","3.99","nu_valor","8");

INSERT INTO tb_auditoria_itens VALUES("37","","2019-01-14 16:50:14","dt_cadastro","8");

INSERT INTO tb_auditoria_itens VALUES("38","","9","co_plano","8");

INSERT INTO tb_auditoria_itens VALUES("39","19","","co_perfil","9");

INSERT INTO tb_auditoria_itens VALUES("40","sda ga rg","","no_perfil","9");

INSERT INTO tb_auditoria_itens VALUES("41","A","","st_status","9");

INSERT INTO tb_auditoria_itens VALUES("42","17","","co_perfil","10");

INSERT INTO tb_auditoria_itens VALUES("43","TESTE 333693465","","no_perfil","10");

INSERT INTO tb_auditoria_itens VALUES("44","A","","st_status","10");

INSERT INTO tb_auditoria_itens VALUES("45","","TESTE","no_perfil","12");

INSERT INTO tb_auditoria_itens VALUES("46","20","","co_perfil","13");

INSERT INTO tb_auditoria_itens VALUES("47","TESTE","","no_perfil","13");

INSERT INTO tb_auditoria_itens VALUES("48","A","","st_status","13");

INSERT INTO tb_auditoria_itens VALUES("49","96","96","co_endereco","14");

INSERT INTO tb_auditoria_itens VALUES("50","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","14");

INSERT INTO tb_auditoria_itens VALUES("51","","","ds_complemento","14");

INSERT INTO tb_auditoria_itens VALUES("52","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","14");

INSERT INTO tb_auditoria_itens VALUES("53","72319111","72319111","nu_cep","14");

INSERT INTO tb_auditoria_itens VALUES("54","Brasília","Brasília","no_cidade","14");

INSERT INTO tb_auditoria_itens VALUES("55","DF","DF","sg_uf","14");

INSERT INTO tb_auditoria_itens VALUES("56","82","82","co_contato","15");

INSERT INTO tb_auditoria_itens VALUES("57","6546546131","6546546131","nu_tel1","15");

INSERT INTO tb_auditoria_itens VALUES("58","","","nu_tel2","15");

INSERT INTO tb_auditoria_itens VALUES("59","","","nu_tel3","15");

INSERT INTO tb_auditoria_itens VALUES("60","","","nu_tel_0800","15");

INSERT INTO tb_auditoria_itens VALUES("61","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","15");

INSERT INTO tb_auditoria_itens VALUES("62","","","ds_site","15");

INSERT INTO tb_auditoria_itens VALUES("63","","","ds_facebook","15");

INSERT INTO tb_auditoria_itens VALUES("64","","","ds_twitter","15");

INSERT INTO tb_auditoria_itens VALUES("65","","","ds_instagram","15");

INSERT INTO tb_auditoria_itens VALUES("66","77","77","co_pessoa","16");

INSERT INTO tb_auditoria_itens VALUES("67","","","nu_cpf","16");

INSERT INTO tb_auditoria_itens VALUES("68","Seu Biga","Seu Biga","no_pessoa","16");

INSERT INTO tb_auditoria_itens VALUES("69","","","nu_rg","16");

INSERT INTO tb_auditoria_itens VALUES("70","2018-12-20 11:37:17","2019-01-14 17:05:48","dt_cadastro","16");

INSERT INTO tb_auditoria_itens VALUES("71","2018-12-04","2018-12-04","dt_nascimento","16");

INSERT INTO tb_auditoria_itens VALUES("72","M","M","st_sexo","16");

INSERT INTO tb_auditoria_itens VALUES("73","96","96","co_endereco","16");

INSERT INTO tb_auditoria_itens VALUES("74","82","82","co_contato","16");

INSERT INTO tb_auditoria_itens VALUES("75","0","","co_imagem","16");

INSERT INTO tb_auditoria_itens VALUES("76","43","43","co_conta_bancaria","17");

INSERT INTO tb_auditoria_itens VALUES("77","2399","2399","nu_agencia","17");

INSERT INTO tb_auditoria_itens VALUES("78","22982-7","22982-7","nu_conta","17");

INSERT INTO tb_auditoria_itens VALUES("79","CC","CC","tp_conta","17");

INSERT INTO tb_auditoria_itens VALUES("80","1","1","co_banco","17");

INSERT INTO tb_auditoria_itens VALUES("81","21","21","co_profissional","18");

INSERT INTO tb_auditoria_itens VALUES("82","2018-12-20 11:37:17","2019-01-14 17:05:48","dt_cadastro","18");

INSERT INTO tb_auditoria_itens VALUES("83","#EFC631","#EFC631","ds_cor_agenda","18");

INSERT INTO tb_auditoria_itens VALUES("84","N","N","st_assistente","18");

INSERT INTO tb_auditoria_itens VALUES("85","","","ds_sobre","18");

INSERT INTO tb_auditoria_itens VALUES("86","","","no_apelido","18");

INSERT INTO tb_auditoria_itens VALUES("87","S","S","st_agenda","18");

INSERT INTO tb_auditoria_itens VALUES("88","S","S","st_agenda_online","18");

INSERT INTO tb_auditoria_itens VALUES("89","A","","st_status","18");

INSERT INTO tb_auditoria_itens VALUES("90","0","","nu_ordem_agenda","18");

INSERT INTO tb_auditoria_itens VALUES("91","1","1","tp_contratacao","18");

INSERT INTO tb_auditoria_itens VALUES("92","","","dt_admissao","18");

INSERT INTO tb_auditoria_itens VALUES("93","","","dt_demissao","18");

INSERT INTO tb_auditoria_itens VALUES("94","38","38","co_imagem","18");

INSERT INTO tb_auditoria_itens VALUES("95","77","77","co_pessoa","18");

INSERT INTO tb_auditoria_itens VALUES("96","50","","co_usuario","18");

INSERT INTO tb_auditoria_itens VALUES("97","11","","co_assinante","18");

INSERT INTO tb_auditoria_itens VALUES("98","43","43","co_conta_bancaria","18");

INSERT INTO tb_auditoria_itens VALUES("99","45","","co_profissional_cargo","19");

INSERT INTO tb_auditoria_itens VALUES("100","32","","co_cargo","19");

INSERT INTO tb_auditoria_itens VALUES("101","21","","co_profissional","19");

INSERT INTO tb_auditoria_itens VALUES("102","2018-12-20 00:00:00","","dt_cadastro","19");

INSERT INTO tb_auditoria_itens VALUES("103","A","","st_status","19");

INSERT INTO tb_auditoria_itens VALUES("104","","21","co_profissional","20");

INSERT INTO tb_auditoria_itens VALUES("105","","A","st_status","20");

INSERT INTO tb_auditoria_itens VALUES("106","","2019-01-14","dt_cadastro","20");

INSERT INTO tb_auditoria_itens VALUES("107","","32","co_cargo","20");

INSERT INTO tb_auditoria_itens VALUES("122","95","95","co_endereco","24");

INSERT INTO tb_auditoria_itens VALUES("123","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","24");

INSERT INTO tb_auditoria_itens VALUES("124","Casa 28","Casa 28","ds_complemento","24");

INSERT INTO tb_auditoria_itens VALUES("125","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","24");

INSERT INTO tb_auditoria_itens VALUES("126","72319111","72319111","nu_cep","24");

INSERT INTO tb_auditoria_itens VALUES("127","Brasília","Brasília","no_cidade","24");

INSERT INTO tb_auditoria_itens VALUES("128","DF","DF","sg_uf","24");

INSERT INTO tb_auditoria_itens VALUES("129","81","81","co_contato","25");

INSERT INTO tb_auditoria_itens VALUES("130","61993003405","61993003405","nu_tel1","25");

INSERT INTO tb_auditoria_itens VALUES("131","","","nu_tel2","25");

INSERT INTO tb_auditoria_itens VALUES("132","","","nu_tel3","25");

INSERT INTO tb_auditoria_itens VALUES("133","","","nu_tel_0800","25");

INSERT INTO tb_auditoria_itens VALUES("134","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","25");

INSERT INTO tb_auditoria_itens VALUES("135","","","ds_site","25");

INSERT INTO tb_auditoria_itens VALUES("136","","","ds_facebook","25");

INSERT INTO tb_auditoria_itens VALUES("137","","","ds_twitter","25");

INSERT INTO tb_auditoria_itens VALUES("138","","","ds_instagram","25");

INSERT INTO tb_auditoria_itens VALUES("139","76","76","co_pessoa","26");

INSERT INTO tb_auditoria_itens VALUES("140","22322191191","22322191191","nu_cpf","26");

INSERT INTO tb_auditoria_itens VALUES("141","Jose Arnaldo","Jose Arnaldo","no_pessoa","26");

INSERT INTO tb_auditoria_itens VALUES("142","2346","2346","nu_rg","26");

INSERT INTO tb_auditoria_itens VALUES("143","2018-12-20 11:09:12","2019-01-14 17:17:29","dt_cadastro","26");

INSERT INTO tb_auditoria_itens VALUES("144","1959-06-05","1959-06-05","dt_nascimento","26");

INSERT INTO tb_auditoria_itens VALUES("145","M","M","st_sexo","26");

INSERT INTO tb_auditoria_itens VALUES("146","95","95","co_endereco","26");

INSERT INTO tb_auditoria_itens VALUES("147","81","81","co_contato","26");

INSERT INTO tb_auditoria_itens VALUES("148","0","","co_imagem","26");

INSERT INTO tb_auditoria_itens VALUES("149","42","42","co_conta_bancaria","27");

INSERT INTO tb_auditoria_itens VALUES("150","2399","2399","nu_agencia","27");

INSERT INTO tb_auditoria_itens VALUES("151","22982-7","22982-7","nu_conta","27");

INSERT INTO tb_auditoria_itens VALUES("152","CC","CC","tp_conta","27");

INSERT INTO tb_auditoria_itens VALUES("153","104","104","co_banco","27");

INSERT INTO tb_auditoria_itens VALUES("154","20","20","co_profissional","28");

INSERT INTO tb_auditoria_itens VALUES("155","2018-12-20 11:09:12","2019-01-14 17:17:29","dt_cadastro","28");

INSERT INTO tb_auditoria_itens VALUES("156","#397B21","#397B21","ds_cor_agenda","28");

INSERT INTO tb_auditoria_itens VALUES("157","S","S","st_assistente","28");

INSERT INTO tb_auditoria_itens VALUES("158","Representante comercial da Bartofil","Representante comercial da Bartofil","ds_sobre","28");

INSERT INTO tb_auditoria_itens VALUES("159","Bigode","Bigode","no_apelido","28");

INSERT INTO tb_auditoria_itens VALUES("160","S","S","st_agenda","28");

INSERT INTO tb_auditoria_itens VALUES("161","S","S","st_agenda_online","28");

INSERT INTO tb_auditoria_itens VALUES("162","A","","st_status","28");

INSERT INTO tb_auditoria_itens VALUES("163","1","1","nu_ordem_agenda","28");

INSERT INTO tb_auditoria_itens VALUES("164","2","2","tp_contratacao","28");

INSERT INTO tb_auditoria_itens VALUES("165","2018-12-17","2018-12-17","dt_admissao","28");

INSERT INTO tb_auditoria_itens VALUES("166","","","dt_demissao","28");

INSERT INTO tb_auditoria_itens VALUES("167","37","37","co_imagem","28");

INSERT INTO tb_auditoria_itens VALUES("168","76","76","co_pessoa","28");

INSERT INTO tb_auditoria_itens VALUES("169","49","","co_usuario","28");

INSERT INTO tb_auditoria_itens VALUES("170","11","","co_assinante","28");

INSERT INTO tb_auditoria_itens VALUES("171","42","42","co_conta_bancaria","28");

INSERT INTO tb_auditoria_itens VALUES("172","39","","co_profissional_cargo","29");

INSERT INTO tb_auditoria_itens VALUES("173","34","","co_cargo","29");

INSERT INTO tb_auditoria_itens VALUES("174","20","","co_profissional","29");

INSERT INTO tb_auditoria_itens VALUES("175","2018-12-20 00:00:00","","dt_cadastro","29");

INSERT INTO tb_auditoria_itens VALUES("176","A","","st_status","29");

INSERT INTO tb_auditoria_itens VALUES("177","","20","co_profissional","30");

INSERT INTO tb_auditoria_itens VALUES("178","","A","st_status","30");

INSERT INTO tb_auditoria_itens VALUES("179","","2019-01-14","dt_cadastro","30");

INSERT INTO tb_auditoria_itens VALUES("180","","34","co_cargo","30");

INSERT INTO tb_auditoria_itens VALUES("181","","20","co_profissional","32");

INSERT INTO tb_auditoria_itens VALUES("182","","1","nu_dia_semana","32");

INSERT INTO tb_auditoria_itens VALUES("183","","05:00","nu_hora_abertura","32");

INSERT INTO tb_auditoria_itens VALUES("184","","18:11","nu_hora_fechamento","32");

INSERT INTO tb_auditoria_itens VALUES("185","","20","co_profissional","33");

INSERT INTO tb_auditoria_itens VALUES("186","","2","nu_dia_semana","33");

INSERT INTO tb_auditoria_itens VALUES("187","","05:00","nu_hora_abertura","33");

INSERT INTO tb_auditoria_itens VALUES("188","","18:04","nu_hora_fechamento","33");

INSERT INTO tb_auditoria_itens VALUES("189","","20","co_profissional","34");

INSERT INTO tb_auditoria_itens VALUES("190","","3","nu_dia_semana","34");

INSERT INTO tb_auditoria_itens VALUES("191","","05:44","nu_hora_abertura","34");

INSERT INTO tb_auditoria_itens VALUES("192","","18:11","nu_hora_fechamento","34");

INSERT INTO tb_auditoria_itens VALUES("193","95","95","co_endereco","35");

INSERT INTO tb_auditoria_itens VALUES("194","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","35");

INSERT INTO tb_auditoria_itens VALUES("195","Casa 28","Casa 28","ds_complemento","35");

INSERT INTO tb_auditoria_itens VALUES("196","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","35");

INSERT INTO tb_auditoria_itens VALUES("197","72319111","72319111","nu_cep","35");

INSERT INTO tb_auditoria_itens VALUES("198","Brasília","Brasília","no_cidade","35");

INSERT INTO tb_auditoria_itens VALUES("199","DF","DF","sg_uf","35");

INSERT INTO tb_auditoria_itens VALUES("200","81","81","co_contato","36");

INSERT INTO tb_auditoria_itens VALUES("201","61993003405","61993003405","nu_tel1","36");

INSERT INTO tb_auditoria_itens VALUES("202","","","nu_tel2","36");

INSERT INTO tb_auditoria_itens VALUES("203","","","nu_tel3","36");

INSERT INTO tb_auditoria_itens VALUES("204","","","nu_tel_0800","36");

INSERT INTO tb_auditoria_itens VALUES("205","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","36");

INSERT INTO tb_auditoria_itens VALUES("206","","","ds_site","36");

INSERT INTO tb_auditoria_itens VALUES("207","","","ds_facebook","36");

INSERT INTO tb_auditoria_itens VALUES("208","","","ds_twitter","36");

INSERT INTO tb_auditoria_itens VALUES("209","","","ds_instagram","36");

INSERT INTO tb_auditoria_itens VALUES("210","76","76","co_pessoa","37");

INSERT INTO tb_auditoria_itens VALUES("211","22322191191","22322191191","nu_cpf","37");

INSERT INTO tb_auditoria_itens VALUES("212","Jose Arnaldo","Jose Arnaldo","no_pessoa","37");

INSERT INTO tb_auditoria_itens VALUES("213","2346","2346","nu_rg","37");

INSERT INTO tb_auditoria_itens VALUES("214","2019-01-14 17:17:29","2019-01-14 17:18:56","dt_cadastro","37");

INSERT INTO tb_auditoria_itens VALUES("215","1959-06-05","1959-06-05","dt_nascimento","37");

INSERT INTO tb_auditoria_itens VALUES("216","M","M","st_sexo","37");

INSERT INTO tb_auditoria_itens VALUES("217","95","95","co_endereco","37");

INSERT INTO tb_auditoria_itens VALUES("218","81","81","co_contato","37");

INSERT INTO tb_auditoria_itens VALUES("219","0","","co_imagem","37");

INSERT INTO tb_auditoria_itens VALUES("220","42","42","co_conta_bancaria","38");

INSERT INTO tb_auditoria_itens VALUES("221","2399","2399","nu_agencia","38");

INSERT INTO tb_auditoria_itens VALUES("222","22982-7","22982-7","nu_conta","38");

INSERT INTO tb_auditoria_itens VALUES("223","CC","CC","tp_conta","38");

INSERT INTO tb_auditoria_itens VALUES("224","104","104","co_banco","38");

INSERT INTO tb_auditoria_itens VALUES("225","20","20","co_profissional","39");

INSERT INTO tb_auditoria_itens VALUES("226","2019-01-14 17:17:29","2019-01-14 17:18:56","dt_cadastro","39");

INSERT INTO tb_auditoria_itens VALUES("227","#397B21","#397B21","ds_cor_agenda","39");

INSERT INTO tb_auditoria_itens VALUES("228","S","S","st_assistente","39");

INSERT INTO tb_auditoria_itens VALUES("229","Representante comercial da Bartofil","Representante comercial da Bartofil","ds_sobre","39");

INSERT INTO tb_auditoria_itens VALUES("230","Bigode","Bigode","no_apelido","39");

INSERT INTO tb_auditoria_itens VALUES("231","S","S","st_agenda","39");

INSERT INTO tb_auditoria_itens VALUES("232","S","S","st_agenda_online","39");

INSERT INTO tb_auditoria_itens VALUES("233","","","st_status","39");

INSERT INTO tb_auditoria_itens VALUES("234","1","1","nu_ordem_agenda","39");

INSERT INTO tb_auditoria_itens VALUES("235","2","2","tp_contratacao","39");

INSERT INTO tb_auditoria_itens VALUES("236","2018-12-17","2018-12-17","dt_admissao","39");

INSERT INTO tb_auditoria_itens VALUES("237","","","dt_demissao","39");

INSERT INTO tb_auditoria_itens VALUES("238","37","37","co_imagem","39");

INSERT INTO tb_auditoria_itens VALUES("239","76","76","co_pessoa","39");

INSERT INTO tb_auditoria_itens VALUES("240","49","","co_usuario","39");

INSERT INTO tb_auditoria_itens VALUES("241","11","","co_assinante","39");

INSERT INTO tb_auditoria_itens VALUES("242","42","42","co_conta_bancaria","39");

INSERT INTO tb_auditoria_itens VALUES("243","47","","co_profissional_cargo","40");

INSERT INTO tb_auditoria_itens VALUES("244","34","","co_cargo","40");

INSERT INTO tb_auditoria_itens VALUES("245","20","","co_profissional","40");

INSERT INTO tb_auditoria_itens VALUES("246","2019-01-14 00:00:00","","dt_cadastro","40");

INSERT INTO tb_auditoria_itens VALUES("247","A","","st_status","40");

INSERT INTO tb_auditoria_itens VALUES("248","","20","co_profissional","41");

INSERT INTO tb_auditoria_itens VALUES("249","","A","st_status","41");

INSERT INTO tb_auditoria_itens VALUES("250","","2019-01-14","dt_cadastro","41");

INSERT INTO tb_auditoria_itens VALUES("251","","34","co_cargo","41");

INSERT INTO tb_auditoria_itens VALUES("252","43","","co_jornada_trabalho","42");

INSERT INTO tb_auditoria_itens VALUES("253","1","","nu_dia_semana","42");

INSERT INTO tb_auditoria_itens VALUES("254","05:00","","nu_hora_abertura","42");

INSERT INTO tb_auditoria_itens VALUES("255","18:11","","nu_hora_fechamento","42");

INSERT INTO tb_auditoria_itens VALUES("256","20","","co_profissional","42");

INSERT INTO tb_auditoria_itens VALUES("257","44","","co_jornada_trabalho","42");

INSERT INTO tb_auditoria_itens VALUES("258","2","","nu_dia_semana","42");

INSERT INTO tb_auditoria_itens VALUES("259","05:00","","nu_hora_abertura","42");

INSERT INTO tb_auditoria_itens VALUES("260","18:04","","nu_hora_fechamento","42");

INSERT INTO tb_auditoria_itens VALUES("261","20","","co_profissional","42");

INSERT INTO tb_auditoria_itens VALUES("262","45","","co_jornada_trabalho","42");

INSERT INTO tb_auditoria_itens VALUES("263","3","","nu_dia_semana","42");

INSERT INTO tb_auditoria_itens VALUES("264","05:44","","nu_hora_abertura","42");

INSERT INTO tb_auditoria_itens VALUES("265","18:11","","nu_hora_fechamento","42");

INSERT INTO tb_auditoria_itens VALUES("266","20","","co_profissional","42");

INSERT INTO tb_auditoria_itens VALUES("267","","20","co_profissional","43");

INSERT INTO tb_auditoria_itens VALUES("268","","1","nu_dia_semana","43");

INSERT INTO tb_auditoria_itens VALUES("269","","05:00","nu_hora_abertura","43");

INSERT INTO tb_auditoria_itens VALUES("270","","18:11","nu_hora_fechamento","43");

INSERT INTO tb_auditoria_itens VALUES("271","","20","co_profissional","44");

INSERT INTO tb_auditoria_itens VALUES("272","","2","nu_dia_semana","44");

INSERT INTO tb_auditoria_itens VALUES("273","","05:00","nu_hora_abertura","44");

INSERT INTO tb_auditoria_itens VALUES("274","","18:04","nu_hora_fechamento","44");

INSERT INTO tb_auditoria_itens VALUES("275","","20","co_profissional","45");

INSERT INTO tb_auditoria_itens VALUES("276","","3","nu_dia_semana","45");

INSERT INTO tb_auditoria_itens VALUES("277","","05:44","nu_hora_abertura","45");

INSERT INTO tb_auditoria_itens VALUES("278","","18:11","nu_hora_fechamento","45");

INSERT INTO tb_auditoria_itens VALUES("279","95","95","co_endereco","46");

INSERT INTO tb_auditoria_itens VALUES("280","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","46");

INSERT INTO tb_auditoria_itens VALUES("281","Casa 28","Casa 28","ds_complemento","46");

INSERT INTO tb_auditoria_itens VALUES("282","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","46");

INSERT INTO tb_auditoria_itens VALUES("283","72319111","72319111","nu_cep","46");

INSERT INTO tb_auditoria_itens VALUES("284","Brasília","Brasília","no_cidade","46");

INSERT INTO tb_auditoria_itens VALUES("285","DF","DF","sg_uf","46");

INSERT INTO tb_auditoria_itens VALUES("286","81","81","co_contato","47");

INSERT INTO tb_auditoria_itens VALUES("287","61993003405","61993003405","nu_tel1","47");

INSERT INTO tb_auditoria_itens VALUES("288","","","nu_tel2","47");

INSERT INTO tb_auditoria_itens VALUES("289","","","nu_tel3","47");

INSERT INTO tb_auditoria_itens VALUES("290","","","nu_tel_0800","47");

INSERT INTO tb_auditoria_itens VALUES("291","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","47");

INSERT INTO tb_auditoria_itens VALUES("292","","","ds_site","47");

INSERT INTO tb_auditoria_itens VALUES("293","","","ds_facebook","47");

INSERT INTO tb_auditoria_itens VALUES("294","","","ds_twitter","47");

INSERT INTO tb_auditoria_itens VALUES("295","","","ds_instagram","47");

INSERT INTO tb_auditoria_itens VALUES("296","76","76","co_pessoa","48");

INSERT INTO tb_auditoria_itens VALUES("297","22322191191","22322191191","nu_cpf","48");

INSERT INTO tb_auditoria_itens VALUES("298","Jose Arnaldo","Jose Arnaldo","no_pessoa","48");

INSERT INTO tb_auditoria_itens VALUES("299","2346","2346","nu_rg","48");

INSERT INTO tb_auditoria_itens VALUES("300","2019-01-14 17:20:07","2019-01-14 17:20:07","dt_cadastro","48");

INSERT INTO tb_auditoria_itens VALUES("301","1959-06-05","1959-06-05","dt_nascimento","48");

INSERT INTO tb_auditoria_itens VALUES("302","M","M","st_sexo","48");

INSERT INTO tb_auditoria_itens VALUES("303","95","95","co_endereco","48");

INSERT INTO tb_auditoria_itens VALUES("304","81","81","co_contato","48");

INSERT INTO tb_auditoria_itens VALUES("305","0","","co_imagem","48");

INSERT INTO tb_auditoria_itens VALUES("306","42","42","co_conta_bancaria","49");

INSERT INTO tb_auditoria_itens VALUES("307","2399","2399","nu_agencia","49");

INSERT INTO tb_auditoria_itens VALUES("308","22982-7","22982-7","nu_conta","49");

INSERT INTO tb_auditoria_itens VALUES("309","CC","CC","tp_conta","49");

INSERT INTO tb_auditoria_itens VALUES("310","104","104","co_banco","49");

INSERT INTO tb_auditoria_itens VALUES("311","20","20","co_profissional","50");

INSERT INTO tb_auditoria_itens VALUES("312","2019-01-14 17:20:07","2019-01-14 17:20:07","dt_cadastro","50");

INSERT INTO tb_auditoria_itens VALUES("313","#397B21","#397B21","ds_cor_agenda","50");

INSERT INTO tb_auditoria_itens VALUES("314","S","S","st_assistente","50");

INSERT INTO tb_auditoria_itens VALUES("315","Representante comercial da Bartofil","Representante comercial da Bartofil","ds_sobre","50");

INSERT INTO tb_auditoria_itens VALUES("316","Bigode","Bigode","no_apelido","50");

INSERT INTO tb_auditoria_itens VALUES("317","S","S","st_agenda","50");

INSERT INTO tb_auditoria_itens VALUES("318","S","S","st_agenda_online","50");

INSERT INTO tb_auditoria_itens VALUES("319","","","st_status","50");

INSERT INTO tb_auditoria_itens VALUES("320","1","1","nu_ordem_agenda","50");

INSERT INTO tb_auditoria_itens VALUES("321","2","2","tp_contratacao","50");

INSERT INTO tb_auditoria_itens VALUES("322","2018-12-17","2018-12-17","dt_admissao","50");

INSERT INTO tb_auditoria_itens VALUES("323","","","dt_demissao","50");

INSERT INTO tb_auditoria_itens VALUES("324","37","37","co_imagem","50");

INSERT INTO tb_auditoria_itens VALUES("325","76","76","co_pessoa","50");

INSERT INTO tb_auditoria_itens VALUES("326","49","","co_usuario","50");

INSERT INTO tb_auditoria_itens VALUES("327","11","","co_assinante","50");

INSERT INTO tb_auditoria_itens VALUES("328","42","42","co_conta_bancaria","50");

INSERT INTO tb_auditoria_itens VALUES("329","","20","co_profissional","52");

INSERT INTO tb_auditoria_itens VALUES("330","","A","st_status","52");

INSERT INTO tb_auditoria_itens VALUES("331","","2019-01-14","dt_cadastro","52");

INSERT INTO tb_auditoria_itens VALUES("332","","34","co_cargo","52");

INSERT INTO tb_auditoria_itens VALUES("333","","20","co_profissional","54");

INSERT INTO tb_auditoria_itens VALUES("334","","1","nu_dia_semana","54");

INSERT INTO tb_auditoria_itens VALUES("335","","05:00","nu_hora_abertura","54");

INSERT INTO tb_auditoria_itens VALUES("336","","18:11","nu_hora_fechamento","54");

INSERT INTO tb_auditoria_itens VALUES("337","","20","co_profissional","55");

INSERT INTO tb_auditoria_itens VALUES("338","","2","nu_dia_semana","55");

INSERT INTO tb_auditoria_itens VALUES("339","","05:00","nu_hora_abertura","55");

INSERT INTO tb_auditoria_itens VALUES("340","","18:04","nu_hora_fechamento","55");

INSERT INTO tb_auditoria_itens VALUES("341","","20","co_profissional","56");

INSERT INTO tb_auditoria_itens VALUES("342","","3","nu_dia_semana","56");

INSERT INTO tb_auditoria_itens VALUES("343","","05:44","nu_hora_abertura","56");

INSERT INTO tb_auditoria_itens VALUES("344","","18:11","nu_hora_fechamento","56");

INSERT INTO tb_auditoria_itens VALUES("345","","20","co_profissional","57");

INSERT INTO tb_auditoria_itens VALUES("346","","4","nu_dia_semana","57");

INSERT INTO tb_auditoria_itens VALUES("347","","04:44","nu_hora_abertura","57");

INSERT INTO tb_auditoria_itens VALUES("348","","18:11","nu_hora_fechamento","57");

INSERT INTO tb_auditoria_itens VALUES("349","95","95","co_endereco","58");

INSERT INTO tb_auditoria_itens VALUES("350","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","58");

INSERT INTO tb_auditoria_itens VALUES("351","Casa 28","Casa 28","ds_complemento","58");

INSERT INTO tb_auditoria_itens VALUES("352","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","58");

INSERT INTO tb_auditoria_itens VALUES("353","72319111","72319111","nu_cep","58");

INSERT INTO tb_auditoria_itens VALUES("354","Brasília","Brasília","no_cidade","58");

INSERT INTO tb_auditoria_itens VALUES("355","DF","DF","sg_uf","58");

INSERT INTO tb_auditoria_itens VALUES("356","81","81","co_contato","59");

INSERT INTO tb_auditoria_itens VALUES("357","61993003405","61993003405","nu_tel1","59");

INSERT INTO tb_auditoria_itens VALUES("358","","","nu_tel2","59");

INSERT INTO tb_auditoria_itens VALUES("359","","","nu_tel3","59");

INSERT INTO tb_auditoria_itens VALUES("360","","","nu_tel_0800","59");

INSERT INTO tb_auditoria_itens VALUES("361","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","59");

INSERT INTO tb_auditoria_itens VALUES("362","","","ds_site","59");

INSERT INTO tb_auditoria_itens VALUES("363","","","ds_facebook","59");

INSERT INTO tb_auditoria_itens VALUES("364","","","ds_twitter","59");

INSERT INTO tb_auditoria_itens VALUES("365","","","ds_instagram","59");

INSERT INTO tb_auditoria_itens VALUES("366","76","76","co_pessoa","60");

INSERT INTO tb_auditoria_itens VALUES("367","22322191191","22322191191","nu_cpf","60");

INSERT INTO tb_auditoria_itens VALUES("368","Jose Arnaldo","Jose Arnaldo","no_pessoa","60");

INSERT INTO tb_auditoria_itens VALUES("369","2346","2346","nu_rg","60");

INSERT INTO tb_auditoria_itens VALUES("370","2019-01-14 17:21:57","2019-01-14 17:21:57","dt_cadastro","60");

INSERT INTO tb_auditoria_itens VALUES("371","1959-06-05","1959-06-05","dt_nascimento","60");

INSERT INTO tb_auditoria_itens VALUES("372","M","M","st_sexo","60");

INSERT INTO tb_auditoria_itens VALUES("373","95","95","co_endereco","60");

INSERT INTO tb_auditoria_itens VALUES("374","81","81","co_contato","60");

INSERT INTO tb_auditoria_itens VALUES("375","0","","co_imagem","60");

INSERT INTO tb_auditoria_itens VALUES("376","42","42","co_conta_bancaria","61");

INSERT INTO tb_auditoria_itens VALUES("377","2399","2399","nu_agencia","61");

INSERT INTO tb_auditoria_itens VALUES("378","22982-7","22982-7","nu_conta","61");

INSERT INTO tb_auditoria_itens VALUES("379","CC","CC","tp_conta","61");

INSERT INTO tb_auditoria_itens VALUES("380","104","104","co_banco","61");

INSERT INTO tb_auditoria_itens VALUES("381","20","20","co_profissional","62");

INSERT INTO tb_auditoria_itens VALUES("382","2019-01-14 17:21:57","2019-01-14 17:21:57","dt_cadastro","62");

INSERT INTO tb_auditoria_itens VALUES("383","#397B21","#397B21","ds_cor_agenda","62");

INSERT INTO tb_auditoria_itens VALUES("384","S","S","st_assistente","62");

INSERT INTO tb_auditoria_itens VALUES("385","Representante comercial da Bartofil","Representante comercial da Bartofil","ds_sobre","62");

INSERT INTO tb_auditoria_itens VALUES("386","Bigode","Bigode","no_apelido","62");

INSERT INTO tb_auditoria_itens VALUES("387","S","S","st_agenda","62");

INSERT INTO tb_auditoria_itens VALUES("388","S","S","st_agenda_online","62");

INSERT INTO tb_auditoria_itens VALUES("389","","","st_status","62");

INSERT INTO tb_auditoria_itens VALUES("390","1","1","nu_ordem_agenda","62");

INSERT INTO tb_auditoria_itens VALUES("391","2","2","tp_contratacao","62");

INSERT INTO tb_auditoria_itens VALUES("392","2018-12-17","2018-12-17","dt_admissao","62");

INSERT INTO tb_auditoria_itens VALUES("393","","","dt_demissao","62");

INSERT INTO tb_auditoria_itens VALUES("394","37","37","co_imagem","62");

INSERT INTO tb_auditoria_itens VALUES("395","76","76","co_pessoa","62");

INSERT INTO tb_auditoria_itens VALUES("396","49","","co_usuario","62");

INSERT INTO tb_auditoria_itens VALUES("397","11","","co_assinante","62");

INSERT INTO tb_auditoria_itens VALUES("398","42","42","co_conta_bancaria","62");

INSERT INTO tb_auditoria_itens VALUES("399","","20","co_profissional","64");

INSERT INTO tb_auditoria_itens VALUES("400","","A","st_status","64");

INSERT INTO tb_auditoria_itens VALUES("401","","2019-01-14","dt_cadastro","64");

INSERT INTO tb_auditoria_itens VALUES("402","","34","co_cargo","64");

INSERT INTO tb_auditoria_itens VALUES("403","","20","co_profissional","65");

INSERT INTO tb_auditoria_itens VALUES("404","","A","st_status","65");

INSERT INTO tb_auditoria_itens VALUES("405","","2019-01-14","dt_cadastro","65");

INSERT INTO tb_auditoria_itens VALUES("406","","32","co_cargo","65");

INSERT INTO tb_auditoria_itens VALUES("407","","20","co_profissional","67");

INSERT INTO tb_auditoria_itens VALUES("408","","2","nu_dia_semana","67");

INSERT INTO tb_auditoria_itens VALUES("409","","05:00","nu_hora_abertura","67");

INSERT INTO tb_auditoria_itens VALUES("410","","18:04","nu_hora_fechamento","67");

INSERT INTO tb_auditoria_itens VALUES("411","","20","co_profissional","68");

INSERT INTO tb_auditoria_itens VALUES("412","","3","nu_dia_semana","68");

INSERT INTO tb_auditoria_itens VALUES("413","","05:44","nu_hora_abertura","68");

INSERT INTO tb_auditoria_itens VALUES("414","","18:11","nu_hora_fechamento","68");

INSERT INTO tb_auditoria_itens VALUES("415","","20","co_profissional","69");

INSERT INTO tb_auditoria_itens VALUES("416","","4","nu_dia_semana","69");

INSERT INTO tb_auditoria_itens VALUES("417","","04:44","nu_hora_abertura","69");

INSERT INTO tb_auditoria_itens VALUES("418","","18:11","nu_hora_fechamento","69");

INSERT INTO tb_auditoria_itens VALUES("419","95","95","co_endereco","70");

INSERT INTO tb_auditoria_itens VALUES("420","QR 403 Conjunto 10","QR 403 Conjunto 10","ds_endereco","70");

INSERT INTO tb_auditoria_itens VALUES("421","Casa 28","Casa 28","ds_complemento","70");

INSERT INTO tb_auditoria_itens VALUES("422","Samambaia Norte (Samambaia)","Samambaia Norte (Samambaia)","ds_bairro","70");

INSERT INTO tb_auditoria_itens VALUES("423","72319111","72319111","nu_cep","70");

INSERT INTO tb_auditoria_itens VALUES("424","Brasília","Brasília","no_cidade","70");

INSERT INTO tb_auditoria_itens VALUES("425","DF","DF","sg_uf","70");

INSERT INTO tb_auditoria_itens VALUES("426","81","81","co_contato","71");

INSERT INTO tb_auditoria_itens VALUES("427","61993003405","61993003405","nu_tel1","71");

INSERT INTO tb_auditoria_itens VALUES("428","","","nu_tel2","71");

INSERT INTO tb_auditoria_itens VALUES("429","","","nu_tel3","71");

INSERT INTO tb_auditoria_itens VALUES("430","","","nu_tel_0800","71");

INSERT INTO tb_auditoria_itens VALUES("431","leonardomcbessa@gmail.com","leonardomcbessa@gmail.com","ds_email","71");

INSERT INTO tb_auditoria_itens VALUES("432","","","ds_site","71");

INSERT INTO tb_auditoria_itens VALUES("433","","","ds_facebook","71");

INSERT INTO tb_auditoria_itens VALUES("434","","","ds_twitter","71");

INSERT INTO tb_auditoria_itens VALUES("435","","","ds_instagram","71");

INSERT INTO tb_auditoria_itens VALUES("436","76","76","co_pessoa","72");

INSERT INTO tb_auditoria_itens VALUES("437","22322191191","22322191191","nu_cpf","72");

INSERT INTO tb_auditoria_itens VALUES("438","Jose Arnaldo","Jose Arnaldo","no_pessoa","72");

INSERT INTO tb_auditoria_itens VALUES("439","2346","2346","nu_rg","72");

INSERT INTO tb_auditoria_itens VALUES("440","2019-01-14 17:25:21","2019-01-14 17:25:21","dt_cadastro","72");

INSERT INTO tb_auditoria_itens VALUES("441","1959-06-05","1959-06-05","dt_nascimento","72");

INSERT INTO tb_auditoria_itens VALUES("442","M","M","st_sexo","72");

INSERT INTO tb_auditoria_itens VALUES("443","95","95","co_endereco","72");

INSERT INTO tb_auditoria_itens VALUES("444","81","81","co_contato","72");

INSERT INTO tb_auditoria_itens VALUES("445","0","","co_imagem","72");

INSERT INTO tb_auditoria_itens VALUES("446","42","42","co_conta_bancaria","73");

INSERT INTO tb_auditoria_itens VALUES("447","2399","2399","nu_agencia","73");

INSERT INTO tb_auditoria_itens VALUES("448","22982-7","22982-7","nu_conta","73");

INSERT INTO tb_auditoria_itens VALUES("449","CC","CC","tp_conta","73");

INSERT INTO tb_auditoria_itens VALUES("450","104","104","co_banco","73");

INSERT INTO tb_auditoria_itens VALUES("451","20","20","co_profissional","74");

INSERT INTO tb_auditoria_itens VALUES("452","2019-01-14 17:25:21","2019-01-14 17:25:21","dt_cadastro","74");

INSERT INTO tb_auditoria_itens VALUES("453","#397B21","#397B21","ds_cor_agenda","74");

INSERT INTO tb_auditoria_itens VALUES("454","S","S","st_assistente","74");

INSERT INTO tb_auditoria_itens VALUES("455","Representante comercial da Bartofil","Representante comercial da Bartofil","ds_sobre","74");

INSERT INTO tb_auditoria_itens VALUES("456","Bigode","Bigode","no_apelido","74");

INSERT INTO tb_auditoria_itens VALUES("457","S","S","st_agenda","74");

INSERT INTO tb_auditoria_itens VALUES("458","S","S","st_agenda_online","74");

INSERT INTO tb_auditoria_itens VALUES("459","","","st_status","74");

INSERT INTO tb_auditoria_itens VALUES("460","1","1","nu_ordem_agenda","74");

INSERT INTO tb_auditoria_itens VALUES("461","2","2","tp_contratacao","74");

INSERT INTO tb_auditoria_itens VALUES("462","2018-12-17","2018-12-17","dt_admissao","74");

INSERT INTO tb_auditoria_itens VALUES("463","","","dt_demissao","74");

INSERT INTO tb_auditoria_itens VALUES("464","37","37","co_imagem","74");

INSERT INTO tb_auditoria_itens VALUES("465","76","76","co_pessoa","74");

INSERT INTO tb_auditoria_itens VALUES("466","49","","co_usuario","74");

INSERT INTO tb_auditoria_itens VALUES("467","11","","co_assinante","74");

INSERT INTO tb_auditoria_itens VALUES("468","42","42","co_conta_bancaria","74");

INSERT INTO tb_auditoria_itens VALUES("469","","20","co_profissional","76");

INSERT INTO tb_auditoria_itens VALUES("470","","A","st_status","76");

INSERT INTO tb_auditoria_itens VALUES("471","","2019-01-14","dt_cadastro","76");

INSERT INTO tb_auditoria_itens VALUES("472","","34","co_cargo","76");

INSERT INTO tb_auditoria_itens VALUES("473","","20","co_profissional","77");

INSERT INTO tb_auditoria_itens VALUES("474","","A","st_status","77");

INSERT INTO tb_auditoria_itens VALUES("475","","2019-01-14","dt_cadastro","77");

INSERT INTO tb_auditoria_itens VALUES("476","","32","co_cargo","77");

INSERT INTO tb_auditoria_itens VALUES("477","","20","co_profissional","79");

INSERT INTO tb_auditoria_itens VALUES("478","","1","nu_dia_semana","79");

INSERT INTO tb_auditoria_itens VALUES("479","","05:00","nu_hora_abertura","79");

INSERT INTO tb_auditoria_itens VALUES("480","","18:40","nu_hora_fechamento","79");

INSERT INTO tb_auditoria_itens VALUES("481","","20","co_profissional","80");

INSERT INTO tb_auditoria_itens VALUES("482","","2","nu_dia_semana","80");

INSERT INTO tb_auditoria_itens VALUES("483","","05:00","nu_hora_abertura","80");

INSERT INTO tb_auditoria_itens VALUES("484","","18:04","nu_hora_fechamento","80");

INSERT INTO tb_auditoria_itens VALUES("485","","20","co_profissional","81");

INSERT INTO tb_auditoria_itens VALUES("486","","4","nu_dia_semana","81");

INSERT INTO tb_auditoria_itens VALUES("487","","04:44","nu_hora_abertura","81");

INSERT INTO tb_auditoria_itens VALUES("488","","18:11","nu_hora_fechamento","81");

INSERT INTO tb_auditoria_itens VALUES("489","","rth tr ht","no_perfil","82");

INSERT INTO tb_auditoria_itens VALUES("490","","21","co_perfil","83");

INSERT INTO tb_auditoria_itens VALUES("491","","21","co_funcionalidade","83");

INSERT INTO tb_auditoria_itens VALUES("492","","21","co_perfil","84");

INSERT INTO tb_auditoria_itens VALUES("493","","8","co_funcionalidade","84");

INSERT INTO tb_auditoria_itens VALUES("494","21","","co_perfil","85");

INSERT INTO tb_auditoria_itens VALUES("495","rth tr ht","","no_perfil","85");

INSERT INTO tb_auditoria_itens VALUES("496","A","","st_status","85");




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;


INSERT INTO tb_auditoria_tabela VALUES("1","TB_CONFIG_AGENDAMENTO","U","2","1");

INSERT INTO tb_auditoria_tabela VALUES("2","TB_CONFIG_AGENDAMENTO","U","2","2");

INSERT INTO tb_auditoria_tabela VALUES("3","TB_CONFIG_AGENDAMENTO","U","2","3");

INSERT INTO tb_auditoria_tabela VALUES("4","TB_CONFIG_AGENDAMENTO","U","2","4");

INSERT INTO tb_auditoria_tabela VALUES("5","TB_PLANO","I","9","5");

INSERT INTO tb_auditoria_tabela VALUES("6","TB_PLANO_MODULO","D","0","5");

INSERT INTO tb_auditoria_tabela VALUES("7","TB_PLANO_MODULO","I","34","5");

INSERT INTO tb_auditoria_tabela VALUES("8","TB_PLANO_ASSINANTE","I","21","5");

INSERT INTO tb_auditoria_tabela VALUES("9","TB_PERFIL","D","19","6");

INSERT INTO tb_auditoria_tabela VALUES("10","TB_PERFIL","D","17","7");

INSERT INTO tb_auditoria_tabela VALUES("11","TB_PERFIL","D","19","8");

INSERT INTO tb_auditoria_tabela VALUES("12","TB_PERFIL","I","20","9");

INSERT INTO tb_auditoria_tabela VALUES("13","TB_PERFIL","D","20","10");

INSERT INTO tb_auditoria_tabela VALUES("14","TB_ENDERECO","U","96","11");

INSERT INTO tb_auditoria_tabela VALUES("15","TB_CONTATO","U","82","11");

INSERT INTO tb_auditoria_tabela VALUES("16","TB_PESSOA","U","77","11");

INSERT INTO tb_auditoria_tabela VALUES("17","TB_CONTA_BANCARIA","U","43","11");

INSERT INTO tb_auditoria_tabela VALUES("18","TB_PROFISSIONAL","U","21","11");

INSERT INTO tb_auditoria_tabela VALUES("19","TB_PROFISSIONAL_CARGO","D","0","11");

INSERT INTO tb_auditoria_tabela VALUES("20","TB_PROFISSIONAL_CARGO","I","46","11");

INSERT INTO tb_auditoria_tabela VALUES("21","TB_JORNADA_TRABALHO","D","0","11");

INSERT INTO tb_auditoria_tabela VALUES("24","TB_ENDERECO","U","95","14");

INSERT INTO tb_auditoria_tabela VALUES("25","TB_CONTATO","U","81","14");

INSERT INTO tb_auditoria_tabela VALUES("26","TB_PESSOA","U","76","14");

INSERT INTO tb_auditoria_tabela VALUES("27","TB_CONTA_BANCARIA","U","42","14");

INSERT INTO tb_auditoria_tabela VALUES("28","TB_PROFISSIONAL","U","20","14");

INSERT INTO tb_auditoria_tabela VALUES("29","TB_PROFISSIONAL_CARGO","D","0","14");

INSERT INTO tb_auditoria_tabela VALUES("30","TB_PROFISSIONAL_CARGO","I","47","14");

INSERT INTO tb_auditoria_tabela VALUES("31","TB_JORNADA_TRABALHO","D","0","14");

INSERT INTO tb_auditoria_tabela VALUES("32","TB_JORNADA_TRABALHO","I","43","14");

INSERT INTO tb_auditoria_tabela VALUES("33","TB_JORNADA_TRABALHO","I","44","14");

INSERT INTO tb_auditoria_tabela VALUES("34","TB_JORNADA_TRABALHO","I","45","14");

INSERT INTO tb_auditoria_tabela VALUES("35","TB_ENDERECO","U","95","15");

INSERT INTO tb_auditoria_tabela VALUES("36","TB_CONTATO","U","81","15");

INSERT INTO tb_auditoria_tabela VALUES("37","TB_PESSOA","U","76","15");

INSERT INTO tb_auditoria_tabela VALUES("38","TB_CONTA_BANCARIA","U","42","15");

INSERT INTO tb_auditoria_tabela VALUES("39","TB_PROFISSIONAL","U","20","15");

INSERT INTO tb_auditoria_tabela VALUES("40","TB_PROFISSIONAL_CARGO","D","0","15");

INSERT INTO tb_auditoria_tabela VALUES("41","TB_PROFISSIONAL_CARGO","I","48","15");

INSERT INTO tb_auditoria_tabela VALUES("42","TB_JORNADA_TRABALHO","D","0","15");

INSERT INTO tb_auditoria_tabela VALUES("43","TB_JORNADA_TRABALHO","I","46","15");

INSERT INTO tb_auditoria_tabela VALUES("44","TB_JORNADA_TRABALHO","I","47","15");

INSERT INTO tb_auditoria_tabela VALUES("45","TB_JORNADA_TRABALHO","I","48","15");

INSERT INTO tb_auditoria_tabela VALUES("46","TB_ENDERECO","U","95","16");

INSERT INTO tb_auditoria_tabela VALUES("47","TB_CONTATO","U","81","16");

INSERT INTO tb_auditoria_tabela VALUES("48","TB_PESSOA","U","76","16");

INSERT INTO tb_auditoria_tabela VALUES("49","TB_CONTA_BANCARIA","U","42","16");

INSERT INTO tb_auditoria_tabela VALUES("50","TB_PROFISSIONAL","U","20","16");

INSERT INTO tb_auditoria_tabela VALUES("51","TB_PROFISSIONAL_CARGO","D","0","16");

INSERT INTO tb_auditoria_tabela VALUES("52","TB_PROFISSIONAL_CARGO","I","49","16");

INSERT INTO tb_auditoria_tabela VALUES("53","TB_JORNADA_TRABALHO","D","0","16");

INSERT INTO tb_auditoria_tabela VALUES("54","TB_JORNADA_TRABALHO","I","49","16");

INSERT INTO tb_auditoria_tabela VALUES("55","TB_JORNADA_TRABALHO","I","50","16");

INSERT INTO tb_auditoria_tabela VALUES("56","TB_JORNADA_TRABALHO","I","51","16");

INSERT INTO tb_auditoria_tabela VALUES("57","TB_JORNADA_TRABALHO","I","52","16");

INSERT INTO tb_auditoria_tabela VALUES("58","TB_ENDERECO","U","95","17");

INSERT INTO tb_auditoria_tabela VALUES("59","TB_CONTATO","U","81","17");

INSERT INTO tb_auditoria_tabela VALUES("60","TB_PESSOA","U","76","17");

INSERT INTO tb_auditoria_tabela VALUES("61","TB_CONTA_BANCARIA","U","42","17");

INSERT INTO tb_auditoria_tabela VALUES("62","TB_PROFISSIONAL","U","20","17");

INSERT INTO tb_auditoria_tabela VALUES("63","TB_PROFISSIONAL_CARGO","D","0","17");

INSERT INTO tb_auditoria_tabela VALUES("64","TB_PROFISSIONAL_CARGO","I","50","17");

INSERT INTO tb_auditoria_tabela VALUES("65","TB_PROFISSIONAL_CARGO","I","51","17");

INSERT INTO tb_auditoria_tabela VALUES("66","TB_JORNADA_TRABALHO","D","0","17");

INSERT INTO tb_auditoria_tabela VALUES("67","TB_JORNADA_TRABALHO","I","53","17");

INSERT INTO tb_auditoria_tabela VALUES("68","TB_JORNADA_TRABALHO","I","54","17");

INSERT INTO tb_auditoria_tabela VALUES("69","TB_JORNADA_TRABALHO","I","55","17");

INSERT INTO tb_auditoria_tabela VALUES("70","TB_ENDERECO","U","95","18");

INSERT INTO tb_auditoria_tabela VALUES("71","TB_CONTATO","U","81","18");

INSERT INTO tb_auditoria_tabela VALUES("72","TB_PESSOA","U","76","18");

INSERT INTO tb_auditoria_tabela VALUES("73","TB_CONTA_BANCARIA","U","42","18");

INSERT INTO tb_auditoria_tabela VALUES("74","TB_PROFISSIONAL","U","20","18");

INSERT INTO tb_auditoria_tabela VALUES("75","TB_PROFISSIONAL_CARGO","D","0","18");

INSERT INTO tb_auditoria_tabela VALUES("76","TB_PROFISSIONAL_CARGO","I","52","18");

INSERT INTO tb_auditoria_tabela VALUES("77","TB_PROFISSIONAL_CARGO","I","53","18");

INSERT INTO tb_auditoria_tabela VALUES("78","TB_JORNADA_TRABALHO","D","0","18");

INSERT INTO tb_auditoria_tabela VALUES("79","TB_JORNADA_TRABALHO","I","56","18");

INSERT INTO tb_auditoria_tabela VALUES("80","TB_JORNADA_TRABALHO","I","57","18");

INSERT INTO tb_auditoria_tabela VALUES("81","TB_JORNADA_TRABALHO","I","58","18");

INSERT INTO tb_auditoria_tabela VALUES("82","TB_PERFIL","I","21","19");

INSERT INTO tb_auditoria_tabela VALUES("83","TB_PERFIL_FUNCIONALIDADE","I","134","19");

INSERT INTO tb_auditoria_tabela VALUES("84","TB_PERFIL_FUNCIONALIDADE","I","135","19");

INSERT INTO tb_auditoria_tabela VALUES("85","TB_PERFIL","D","21","20");




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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil VALUES("1","Master","A");

INSERT INTO tb_perfil VALUES("2","Gestor","A");

INSERT INTO tb_perfil VALUES("3","Colaborador","A");

INSERT INTO tb_perfil VALUES("16","TESTE 33369","A");

INSERT INTO tb_perfil VALUES("18","SAF SA","A");




DROP TABLE IF EXISTS tb_perfil_funcionalidade;


CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_perfil`,`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;


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

INSERT INTO tb_perfil_funcionalidade VALUES("22","4","22");

INSERT INTO tb_perfil_funcionalidade VALUES("23","5","22");

INSERT INTO tb_perfil_funcionalidade VALUES("24","6","22");

INSERT INTO tb_perfil_funcionalidade VALUES("36","8","23");

INSERT INTO tb_perfil_funcionalidade VALUES("37","8","20");

INSERT INTO tb_perfil_funcionalidade VALUES("48","10","4");

INSERT INTO tb_perfil_funcionalidade VALUES("49","10","3");

INSERT INTO tb_perfil_funcionalidade VALUES("52","9","23");

INSERT INTO tb_perfil_funcionalidade VALUES("68","12","19");

INSERT INTO tb_perfil_funcionalidade VALUES("69","12","17");

INSERT INTO tb_perfil_funcionalidade VALUES("72","13","19");

INSERT INTO tb_perfil_funcionalidade VALUES("74","11","22");

INSERT INTO tb_perfil_funcionalidade VALUES("87","14","23");

INSERT INTO tb_perfil_funcionalidade VALUES("88","14","18");

INSERT INTO tb_perfil_funcionalidade VALUES("89","7","23");

INSERT INTO tb_perfil_funcionalidade VALUES("90","7","19");

INSERT INTO tb_perfil_funcionalidade VALUES("94","15","22");

INSERT INTO tb_perfil_funcionalidade VALUES("96","16","22");

INSERT INTO tb_perfil_funcionalidade VALUES("122","17","22");

INSERT INTO tb_perfil_funcionalidade VALUES("123","17","19");

INSERT INTO tb_perfil_funcionalidade VALUES("124","17","10");

INSERT INTO tb_perfil_funcionalidade VALUES("125","17","5");

INSERT INTO tb_perfil_funcionalidade VALUES("128","18","20");

INSERT INTO tb_perfil_funcionalidade VALUES("129","19","19");

INSERT INTO tb_perfil_funcionalidade VALUES("130","19","18");

INSERT INTO tb_perfil_funcionalidade VALUES("131","19","16");

INSERT INTO tb_perfil_funcionalidade VALUES("132","19","3");

INSERT INTO tb_perfil_funcionalidade VALUES("133","19","2");

INSERT INTO tb_perfil_funcionalidade VALUES("134","21","21");

INSERT INTO tb_perfil_funcionalidade VALUES("135","21","8");




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




DROP TABLE IF EXISTS tb_plano_modulo;


CREATE TABLE `tb_plano_modulo` (
  `co_plano_modulo` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Planos do Módulo',
  `co_plano` int(11) NOT NULL,
  `co_modulo` int(11) NOT NULL,
  PRIMARY KEY (`co_plano_modulo`,`co_plano`,`co_modulo`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_MODULO1_idx` (`co_modulo`),
  KEY `fk_TB_PLANO_has_TB_MODULO_TB_PLANO1_idx` (`co_plano`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_plano_modulo VALUES("32","8","1");

INSERT INTO tb_plano_modulo VALUES("33","8","2");

INSERT INTO tb_plano_modulo VALUES("34","9","1");




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

INSERT INTO tb_profissional VALUES("16","2018-12-18 17:37:41","#A54A7B","N","Eu sou a kaka","Kaka","S","S","A","1","3","2018-12-04","0000-00-00","33","68","44","11","35");

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;


INSERT INTO tb_profissional_cargo VALUES("14","30","15","2018-12-18 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("15","34","16","2018-12-18 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("16","33","16","2018-12-18 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("17","7","16","2018-12-18 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("20","34","18","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("21","29","18","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("23","7","9","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("24","6","9","2018-12-19 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("37","33","19","2018-12-20 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("46","32","21","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("52","34","20","2019-01-14 00:00:00","A");

INSERT INTO tb_profissional_cargo VALUES("53","32","20","2019-01-14 00:00:00","A");




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




DROP TABLE IF EXISTS tb_teste;


CREATE TABLE `tb_teste` (
  `co_teste` int(11) NOT NULL AUTO_INCREMENT,
  `no_teste` varchar(45) DEFAULT NULL,
  `co_motivo_desconto` int(11) NOT NULL,
  PRIMARY KEY (`co_teste`,`co_motivo_desconto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;


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





