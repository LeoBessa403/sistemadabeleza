UPDATE TB_SERVICO SET st_status = "A", no_servico = "Podologia com limpeza dos pés", nu_duracao = "60", ds_descricao = "Podologia com limpeza dos pés: corte, polimento, limpeza, 
        debastamento das calosidades, esfoliação dos pés e hidratação profunda.", co_categoria_servico = "13", st_assistente = "S" where co_servico = 33;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("33", "Atualizado", "39.90", "2019-07-30 10:23:03", "8");

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-30 14:35:54", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("12", "2019-07-30 14:35:54", "1", "2019-07-02 08:00:00", "2019-07-02 09:00:00", "39.90", "60", "rtjtrt yj ", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("131", "33", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("87", "131", "21", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("87", "131", "9", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-30 14:36:38", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("13", "2019-07-30 14:36:38", "1", "2019-07-30 08:00:00", "2019-07-30 09:00:00", "69.90", "60", "jyt jytj ytj e", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("132", "23", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("88", "132", "20", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("88", "132", "null", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-30 14:37:13", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("14", "2019-07-30 14:37:13", "1", "2019-07-30 08:00:00", "2019-07-30 09:00:00", "39.90", "60", "hjm yuyu,yui", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("133", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("89", "133", "20", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("89", "133", "null", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-30 14:40:26", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("15", "2019-07-30 14:40:26", "4", "2019-07-30 08:00:00", "2019-07-30 08:30:00", "29.90", "30", "h rteh rtj 56jj 6j6 5j teste 22", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("134", "31", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("90", "134", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("90", "134", "null", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-30 14:46:44", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-30 14:46:44", "1", "2019-07-30 08:00:00", "2019-07-30 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("135", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("91", "135", "16", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("91", "135", "null", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("15", "2019-07-30 14:48:22", "3", "2019-07-30 10:30:00", "2019-07-30 11:00:00", "55.44", "30", "TESTE 210", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("136", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("92", "136", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("92", "136", "null", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-30 15:09:23", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("17", "2019-07-30 15:09:24", "5", "2019-07-30 08:00:00", "2019-07-30 08:10:00", "39.99", "10", "h wr6uj65u65", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("137", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("93", "137", "21", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("93", "137", "null", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("15", "2019-07-30 15:13:29", "7", "2019-07-30 10:30:00", "2019-07-30 11:00:00", "55.44", "30", "TESTE 210", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("138", "41", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("94", "138", "9", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 00:14:21", "6", "2019-07-30 08:00:00", "2019-07-30 08:10:00", "39.99", "10", "Atualizado pelo Sistema", "1", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("139", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("95", "139", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("14", "2019-07-31 00:14:21", "6", "2019-07-30 08:00:00", "2019-07-30 09:00:00", "39.90", "60", "Atualizado pelo Sistema", "1", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("140", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("96", "140", "20", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("13", "2019-07-31 00:14:21", "6", "2019-07-30 08:00:00", "2019-07-30 09:00:00", "69.90", "60", "Atualizado pelo Sistema", "1", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("141", "23", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("97", "141", "20", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("12", "2019-07-31 00:14:21", "6", "2019-07-02 08:00:00", "2019-07-02 09:00:00", "39.90", "60", "Atualizado pelo Sistema", "1", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("142", "33", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("98", "142", "21", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("98", "142", "9", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:36:21", "7", "31/07/2019 08:00:00", "31/07/2019 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("143", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("99", "143", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:46:48", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("144", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("100", "144", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:47:02", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("145", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("101", "145", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:47:30", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:48:00", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("147", "30", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:48:23", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("148", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("103", "148", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:48:35", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("149", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("104", "149", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:50:05", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("150", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("105", "150", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:50:44", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("151", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("106", "151", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:51:09", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("152", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("107", "152", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:52:01", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("153", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("108", "153", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:52:20", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("154", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("109", "154", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:52:36", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("155", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("110", "155", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:55:55", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("156", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("111", "156", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:57:41", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("157", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("112", "157", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:58:33", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("158", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("113", "158", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:59:18", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("159", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("114", "159", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 11:59:27", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("160", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("115", "160", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 12:00:38", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("161", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("116", "161", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 12:01:19", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("162", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("117", "162", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 12:01:27", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("163", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("118", "163", "16", "1");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("7", "2019-07-31 12:02:09", "6", "2019-07-23 08:50:00", "2019-07-23 10:50:00", "172.30", "120", "Atualizado pelo Sistema", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("164", "3", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("119", "164", "18", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("119", "164", "16", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 12:02:18", "1", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("165", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("120", "165", "16", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("120", "165", "0", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("17", "2019-07-31 12:02:33", "5", "2019-07-31 08:00:00", "2019-07-31 08:10:00", "39.99", "10", "h wr6uj65u65", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("166", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("121", "166", "21", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("121", "166", "0", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-31 12:02:54", "1", "2019-07-30 08:00:00", "2019-07-30 08:10:00", "39.99", "10", "RE GRE G", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("167", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("122", "167", "16", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("122", "167", "0", "2");

