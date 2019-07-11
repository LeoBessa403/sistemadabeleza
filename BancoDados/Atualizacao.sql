UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 4;

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:45:50");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:47:23");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:48:48");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:49:41");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:49:59");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:50:54");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:51:55");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 17:59:41");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 18:00:34");

INSERT INTO TB_AGENDA (dt_cadastro) VALUES ("2019-07-09 18:02:11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-09 18:14:12", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-09 18:20:34", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-09 18:21:27", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:22:42", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:25:08", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:25:29", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:25:43", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:25:49", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:27:54", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:29:40", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:33:25", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("18", "2019-07-11 11:33:25", "1", "2019-07-11 08:50:00", "2019-07-11 09:00:00", "39.99", "10", "jyjy", "8", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:48:42", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("19", "2019-07-11 11:48:42", "1", "2019-07-11 08:50:00", "2019-07-11 09:00:00", "39.99", "10", "jyjy", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("2", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("1", "2", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("1", "2", "21", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:51:16", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("20", "2019-07-11 11:51:16", "1", "2019-07-11 08:50:00", "2019-07-11 09:00:00", "39.99", "10", "jyjy", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("3", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("2", "3", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("2", "3", "21", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 11:52:58", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("21", "2019-07-11 11:52:58", "1", "2019-07-11 08:10:00", "2019-07-11 09:10:00", "69.90", "60", "wf b f4f ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("4", "23", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("3", "4", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("3", "4", "20", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 12:00:02", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("1", "2019-07-11 12:00:02", "1", "2019-07-11 09:10:00", "2019-07-11 09:20:00", "39.99", "10", "rtjh rth", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("1", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("1", "1", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("1", "1", "16", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Cadastrar Agendamento 1 Serviço", ds_observacao = "<p>Cadastrar Agendamento (Op&ccedil;&atilde;o da recorr&ecirc;ncia)</p>

<p>Varios servi&ccedil;os e pacotes</p>

<p>Modelagem: (FK cliente, Servi&ccedil;o, Profissional, Assistente)</p>", co_sessao = "17", st_situacao = "N", dt_atualizado = "2019-07-11 12:12:26" where co_historia = 28;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-07-11 12:12:26", "28");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 12:15:26", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("2", "2019-07-11 12:15:26", "4", "2019-07-11 10:10:00", "2019-07-11 10:40:00", "29.90", "30", "gfgreg", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("2", "5", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("2", "2", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("2", "2", "21", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 12:17:03", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("3", "2019-07-11 12:17:03", "2", "2019-07-11 11:00:00", "2019-07-11 12:00:00", "19.90", "60", "dgdgd", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("3", "22", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("3", "3", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("3", "3", "20", "2");

