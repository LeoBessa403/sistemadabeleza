-- Atualizado em: 20/02/2019 17:08:58
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_acesso VALUES("130","cuifntt9id1rq6gt6vi2ucvo43","2019-02-20 17:06:27","2019-02-20 17:38:58","A","1","149");




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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;


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




DROP TABLE IF EXISTS tb_auditoria_itens;


CREATE TABLE `tb_auditoria_itens` (
  `co_auditoria_itens` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item_anterior` varchar(255) DEFAULT NULL,
  `ds_item_atual` varchar(255) DEFAULT NULL,
  `ds_campo` varchar(120) DEFAULT NULL,
  `co_auditoria_tabela` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_itens`,`co_auditoria_tabela`),
  KEY `fk_TB_AUDITORIA_ITENS_TB_AUDITORIA_TABELA1_idx` (`co_auditoria_tabela`)
) ENGINE=InnoDB AUTO_INCREMENT=1299 DEFAULT CHARSET=utf8;


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




DROP TABLE IF EXISTS tb_auditoria_tabela;


CREATE TABLE `tb_auditoria_tabela` (
  `co_auditoria_tabela` int(11) NOT NULL AUTO_INCREMENT,
  `no_tabela` varchar(45) DEFAULT NULL,
  `tp_operacao` varchar(1) DEFAULT NULL,
  `co_registro` int(11) DEFAULT NULL,
  `co_auditoria` int(11) NOT NULL,
  PRIMARY KEY (`co_auditoria_tabela`,`co_auditoria`),
  KEY `fk_TB_AUDITORIA_TABELA_TB_AUDITORIA1_idx` (`co_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;


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
  PRIMARY KEY (`co_categoria_servico`,`co_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;


INSERT INTO tb_categoria_servico VALUES("1","Cabelo","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("2","Mãos e Pés","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("3","Maquiagem","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("4","Sobrancelha","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("5","Barba","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("6","Estética Facial","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("7","Depilação","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("8","Emagrecimento","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("9","Fisioterapia","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("10","Massagem","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("11","Podologia","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("12","Terapia","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("13","Tratamento","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("14","Lifting","2019-02-20 16:22:59","A","11");

INSERT INTO tb_categoria_servico VALUES("15","nova catEGORIA NOVINHA","2019-02-20 17:01:04","I","11");

INSERT INTO tb_categoria_servico VALUES("16","100200","2019-02-20 17:01:37","A","11");




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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;


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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;


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

INSERT INTO tb_historia VALUES("44","Manter Serviço","<p>Manter Servi&ccedil;o</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Servi&ccedil;o (FK categoria Servi. Assinante)</p>","2018-07-25 18:42:35","2018-07-25 18:42:35","N","12");

INSERT INTO tb_historia VALUES("45","Tabela base serviços","<p>Tabela base servi&ccedil;os</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Modelagem: Servi&ccedil;os Base</p>","2018-07-25 18:43:26","2018-07-25 18:43:26","N","12");

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

INSERT INTO tb_historia VALUES("74","Criar Histórias Módulos Lançamento do Sistema Da Beleaza e Site","<p>Criar Hist&oacute;rias M&oacute;dulos Lan&ccedil;amento do Sistema Da Beleaza e Site</p>","2018-07-26 18:13:56","2018-07-26 18:15:35","I","25");

INSERT INTO tb_historia VALUES("75","Iniciar o sistema com as configurações básicas","<p>Iniciar o sistema com as configura&ccedil;&otilde;es b&aacute;sicas para depois iniciar o painel</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Cadastro de proffisional, cliente, servi&ccedil;os e configura&ccedil;&otilde;es padr&otilde;es</p>","2018-07-26 18:40:29","2018-07-26 18:40:29","N","26");

INSERT INTO tb_historia VALUES("76","Regras de E-mail","<p>Regras de E-mail</p>","2018-07-26 18:49:20","2018-07-27 19:00:55","N","27");

INSERT INTO tb_historia VALUES("79","Criar Templates de Envio","<p>Criar Templates de Envio de email</p>","2018-07-26 18:51:32","2018-07-27 19:01:27","N","27");

INSERT INTO tb_historia VALUES("80","Regras de SMS","<p>Regras de envio de SMS</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>&nbsp;</p>\n\n\n\n\n\n\n\n\n\n\n\n<p>Aprendizagem de envio de SMS</p>","2018-07-26 18:53:05","2018-07-27 19:02:44","N","28");

INSERT INTO tb_historia VALUES("83","Criar Templates de Envio","<p>Criar Templates de Envio de SMS</p>","2018-07-26 18:55:02","2018-07-27 19:03:11","N","28");

INSERT INTO tb_historia VALUES("84","Manter Perfil","<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>","2018-07-26 22:16:38","2018-07-26 22:16:38","N","29");

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




DROP TABLE IF EXISTS tb_historico_historia;


CREATE TABLE `tb_historico_historia` (
  `co_historico_historia` int(11) NOT NULL AUTO_INCREMENT,
  `nu_esforco` int(2) DEFAULT NULL,
  `nu_esforco_restante` int(2) DEFAULT NULL,
  `dt_cadastro` datetime DEFAULT NULL,
  `co_historia` int(11) NOT NULL,
  PRIMARY KEY (`co_historico_historia`,`co_historia`),
  KEY `fk_TB_HISTORICO_HISTORIA_TB_HISTORIA1_idx` (`co_historia`)
) ENGINE=InnoDB AUTO_INCREMENT=552 DEFAULT CHARSET=utf8;


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




DROP TABLE IF EXISTS tb_imagem;


CREATE TABLE `tb_imagem` (
  `co_imagem` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ds_caminho` varchar(150) NOT NULL,
  PRIMARY KEY (`co_imagem`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;


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




DROP TABLE IF EXISTS tb_perfil_funcionalidade;


CREATE TABLE `tb_perfil_funcionalidade` (
  `co_perfil_funcionalidade` int(11) NOT NULL AUTO_INCREMENT,
  `co_perfil` int(11) NOT NULL,
  `co_funcionalidade` int(11) NOT NULL,
  PRIMARY KEY (`co_perfil_funcionalidade`,`co_perfil`,`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_funcionalidade1_idx` (`co_funcionalidade`),
  KEY `fk_tb_perfil_tb_funcionalidade_tb_perfil1_idx` (`co_perfil`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;


INSERT INTO tb_perfil_funcionalidade VALUES("1","1","1");

INSERT INTO tb_perfil_funcionalidade VALUES("21","2","24");

INSERT INTO tb_perfil_funcionalidade VALUES("155","2","26");

INSERT INTO tb_perfil_funcionalidade VALUES("158","4","26");

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

INSERT INTO tb_perfil_funcionalidade VALUES("197","2","42");

INSERT INTO tb_perfil_funcionalidade VALUES("198","3","41");

INSERT INTO tb_perfil_funcionalidade VALUES("199","2","41");

INSERT INTO tb_perfil_funcionalidade VALUES("201","3","44");

INSERT INTO tb_perfil_funcionalidade VALUES("202","2","44");

INSERT INTO tb_perfil_funcionalidade VALUES("203","2","43");

INSERT INTO tb_perfil_funcionalidade VALUES("204","2","23");

INSERT INTO tb_perfil_funcionalidade VALUES("205","2","45");

INSERT INTO tb_perfil_funcionalidade VALUES("206","2","46");

INSERT INTO tb_perfil_funcionalidade VALUES("207","2","47");

INSERT INTO tb_perfil_funcionalidade VALUES("209","2","49");

INSERT INTO tb_perfil_funcionalidade VALUES("210","2","48");




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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;


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





