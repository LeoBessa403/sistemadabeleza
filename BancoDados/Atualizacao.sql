INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 12:50:37", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("4", "2019-07-11 12:50:37", "6", "2019-07-11 13:00:00", "2019-07-11 14:00:00", "19.90", "60", "fdvdsv dsv", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("4", "22", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("4", "4", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("4", "4", "18", "2");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Event Dragging & Resizing", "<p style="font-style: italic;"><span dir="ltr">Criar eventos Dragging &amp; Resizing</span></p>", "17", "N", "2019-07-11 14:05:00", "2019-07-11 14:05:00");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-07-11 14:05:00", "196");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 14:14:34", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("5", "2019-07-11 14:14:34", "1", "2019-07-11 08:00:00", "2019-07-11 08:30:00", "29.90", "30", "fjyjt", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("5", "25", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("5", "5", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("5", "5", "20", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 14:15:00", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("6", "2019-07-11 14:15:00", "5", "2019-07-11 08:00:00", "2019-07-11 09:00:00", "29.90", "60", "k87k78", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("6", "16", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("6", "6", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("6", "6", "21", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 14:19:57", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("7", "2019-07-11 14:19:57", "1", "2019-07-11 08:00:00", "2019-07-11 08:30:00", "55.44", "30", "nyynn", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("7", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("7", "7", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("7", "7", "18", "2");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Valida Profissonal e assistente por serviço", "<p>Valida Profissonal e assistente por servi&ccedil;o e carrega as combos dependentes</p>", "17", "N", "2019-07-11 14:26:48", "2019-07-11 14:26:48");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-11 14:26:48", "197");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "30", "19");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("54", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("54", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("54", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "30", co_profissional = "19" where co_servico_profissional = 17;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("17", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "1", "44");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("17", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "2", "55");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("17", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "30", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("55", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("55", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("55", "2019-07-11 16:59:33", "2019-07-11 16:59:33", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "5", "19");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("56", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("56", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("56", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "5", co_profissional = "19" where co_servico_profissional = 37;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("37", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("37", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("37", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "5", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("57", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("57", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("57", "2019-07-11 17:11:40", "2019-07-11 17:11:40", "3", "10");

UPDATE TB_HISTORIA SET ds_titulo = "Valida Profissonal e assistente por serviço", ds_observacao = "<p>Valida Profissonal e assistente por servi&ccedil;o e carrega as combos dependentes</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-11 17:15:34" where co_historia = 197;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-11 17:15:34", "197");

UPDATE TB_HISTORIA SET ds_titulo = "Valida Profissonal e assistente por serviço", ds_observacao = "<p>Valida Profissonal e assistente por servi&ccedil;o e carrega as combos dependentes</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-11 17:15:45" where co_historia = 197;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-11 17:15:45", "197");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-11 19:17:26", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("8", "2019-07-11 19:17:27", "1", "2019-07-11 09:40:00", "2019-07-11 09:50:00", "39.99", "10", "grgr", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("8", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("8", "8", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("8", "8", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:33:47", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("9", "2019-07-12 11:33:48", "1", "2019-07-12 08:40:00", "2019-07-12 09:40:00", "19.90", "60", "greger", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("9", "22", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("9", "9", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("9", "9", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:35:11", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("10", "2019-07-12 11:35:11", "1", "2019-07-12 10:00:00", "2019-07-12 10:10:00", "39.99", "10", "jytjyt", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("10", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("10", "10", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("10", "10", "9", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:41:34", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("11", "2019-07-12 11:41:34", "1", "2019-07-12 10:40:00", "2019-07-12 10:50:00", "39.99", "10", "jh,hj,", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("11", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("11", "11", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("11", "11", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:48:39", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("12", "2019-07-12 11:48:39", "1", "2019-07-12 11:20:00", "2019-07-12 12:20:00", "19.90", "60", "t4t", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("12", "22", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("12", "12", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("12", "12", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:56:55", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("13", "2019-07-12 11:56:55", "1", "2019-07-12 13:20:00", "2019-07-12 13:50:00", "55.44", "30", "jyjdyyj", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("13", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("13", "13", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("13", "13", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:57:34", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("14", "2019-07-12 11:57:35", "1", "2019-07-12 07:20:00", "2019-07-12 07:50:00", "55.44", "30", "bgfb", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("14", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("14", "14", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("14", "14", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:58:19", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("15", "2019-07-12 11:58:19", "3", "2019-07-12 14:10:00", "2019-07-12 14:40:00", "55.44", "30", "jtjyt", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("15", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("15", "15", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("15", "15", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 11:58:58", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("16", "2019-07-12 11:58:58", "4", "2019-07-12 06:50:00", "2019-07-12 07:20:00", "55.44", "30", "f43f43", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("16", "41", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("16", "16", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("16", "16", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:00:24", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("17", "2019-07-12 12:00:24", "2", "2019-07-12 15:10:00", "2019-07-12 16:10:00", "69.90", "60", "btrbtrb", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("17", "23", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("17", "17", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("17", "17", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:01:17", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("18", "2019-07-12 12:01:17", "5", "2019-07-12 08:00:00", "2019-07-12 08:30:00", "55.44", "30", "hyh", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("18", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("18", "18", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("18", "18", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:02:04", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("19", "2019-07-12 12:02:04", "1", "2019-07-12 06:30:00", "2019-07-12 07:30:00", "19.90", "60", "bfgbfg", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("19", "22", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("19", "19", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("19", "19", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:04:13", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("20", "2019-07-12 12:04:13", "6", "2019-07-12 07:30:00", "2019-07-12 08:00:00", "29.90", "30", "gregg", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("20", "31", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("20", "20", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("20", "20", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:05:01", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("21", "2019-07-12 12:05:01", "7", "2019-07-12 08:10:00", "2019-07-12 09:10:00", "39.90", "60", "faf rtre gter", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("21", "24", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("21", "21", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("21", "21", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:05:57", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("22", "2019-07-12 12:05:57", "4", "2019-07-12 07:50:00", "2019-07-12 08:00:00", "39.99", "10", "f gtrhrt ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("22", "30", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("22", "22", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("22", "22", "9", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:07:14", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("23", "2019-07-12 12:07:14", "5", "2019-07-12 06:00:00", "2019-07-12 07:00:00", "69.90", "60", "rthrteh rteh ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("23", "23", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("23", "23", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("23", "23", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:08:17", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("24", "2019-07-12 12:08:17", "5", "2019-07-12 06:10:00", "2019-07-12 06:20:00", "39.99", "10", "greger", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("24", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("24", "24", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("24", "24", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:16:22", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("25", "2019-07-12 12:16:23", "3", "2019-07-12 09:20:00", "2019-07-12 09:30:00", "39.99", "10", "rthrtehrte", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("25", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("25", "25", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("25", "25", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:19:16", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("26", "2019-07-12 12:19:16", "6", "2019-07-12 12:40:00", "2019-07-12 12:50:00", "39.99", "10", "nghngh", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("26", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("26", "26", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("26", "26", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:23:09", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("27", "2019-07-12 12:23:09", "1", "2019-07-12 12:50:00", "2019-07-12 13:00:00", "39.99", "10", "myumyu", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("27", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("27", "27", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("27", "27", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:28:57", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("28", "2019-07-12 12:28:57", "7", "2019-07-11 06:40:00", "2019-07-11 07:10:00", "55.44", "30", "j76j6 ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("28", "41", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("28", "28", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("28", "28", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:29:36", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("29", "2019-07-12 12:29:36", "6", "2019-07-11 06:00:00", "2019-07-11 06:30:00", "55.44", "30", "rtbrt ythyh ", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("29", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("29", "29", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("29", "29", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:31:57", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("30", "2019-07-12 12:31:57", "1", "2019-07-10 09:20:00", "2019-07-10 09:30:00", "39.99", "10", "myuuym", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("30", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("30", "30", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("30", "30", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 12:33:08", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("31", "2019-07-12 12:33:08", "3", "2019-07-10 10:10:00", "2019-07-10 10:40:00", "29.90", "30", "hrth rthtrhrt", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("31", "31", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("31", "31", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("31", "31", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 13:37:37", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("32", "2019-07-12 13:37:38", "3", "2019-07-09 19:30:00", "2019-07-09 19:40:00", "39.99", "10", "kyukyt", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("32", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("32", "32", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("32", "32", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 14:28:00", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("33", "2019-07-12 14:28:00", "2", "2019-07-08 08:40:00", "2019-07-08 09:10:00", "55.44", "30", "f ef ewf egt ertr", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("33", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("33", "33", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("33", "33", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 14:28:32", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("34", "2019-07-12 14:28:32", "4", "2019-07-09 10:10:00", "2019-07-09 10:20:00", "39.99", "10", "vr re rertehtr", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("34", "30", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("34", "34", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("34", "34", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:10:06", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("35", "2019-07-12 15:10:06", "3", "2019-07-09 08:10:00", "2019-07-09 08:20:00", "39.99", "10", "ertyretynrey", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("35", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("35", "35", "19", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("35", "35", "9", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:11:23", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("36", "2019-07-12 15:11:23", "2", "2019-07-07 11:40:00", "2019-07-07 12:40:00", "39.90", "60", "u56u 65ju j7k8 ", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("36", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("36", "36", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("36", "36", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:12:56", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("37", "2019-07-12 15:12:56", "2", "2019-07-09 08:40:00", "2019-07-09 09:10:00", "55.44", "30", "gg5 6ej6ee j6", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("37", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("37", "37", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("37", "37", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:13:36", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("38", "2019-07-12 15:13:36", "5", "2019-07-07 08:40:00", "2019-07-07 09:10:00", "29.90", "30", "i768 i87i867i", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("38", "5", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("38", "38", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("38", "38", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:14:32", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("39", "2019-07-12 15:14:32", "4", "2019-07-07 08:00:00", "2019-07-07 08:30:00", "26.00", "30", "j567j 567j567j", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("39", "4", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("39", "39", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("39", "39", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:16:59", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("40", "2019-07-12 15:16:59", "1", "2019-07-08 12:40:00", "2019-07-08 13:10:00", "29.90", "30", "jr76 r67j76j", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("40", "31", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("40", "40", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("40", "40", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:17:49", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("41", "2019-07-12 15:17:49", "2", "2019-07-07 21:00:00", "2019-07-07 22:00:00", "19.90", "60", "fdg dg regh reh", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("41", "22", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("41", "41", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("41", "41", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:19:19", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("42", "2019-07-12 15:19:19", "7", "2019-07-10 14:50:00", "2019-07-10 15:00:00", "39.99", "10", "5h 6 6 65 f fgh", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("42", "30", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("42", "42", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("42", "42", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:20:57", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("43", "2019-07-12 15:20:57", "3", "2019-07-10 06:00:00", "2019-07-10 06:30:00", "55.44", "30", "76u5 u756u65", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("43", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("43", "43", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("43", "43", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:22:29", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("44", "2019-07-12 15:22:29", "3", "2019-07-09 14:40:00", "2019-07-09 15:10:00", "29.90", "30", " rtertjhjrtj rte", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("44", "31", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("44", "44", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("44", "44", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:30:17", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("45", "2019-07-12 15:30:17", "3", "2019-07-08 06:00:00", "2019-07-08 06:30:00", "55.44", "30", "h ts hrt hrt", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("45", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("45", "45", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("45", "45", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:31:00", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("46", "2019-07-12 15:31:00", "1", "2019-07-13 11:40:00", "2019-07-13 12:10:00", "26.00", "30", " y54 54u 5u", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("46", "4", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("46", "46", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("46", "46", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 15:32:23", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("47", "2019-07-12 15:32:23", "2", "2019-06-24 08:50:00", "2019-06-24 09:20:00", "55.44", "30", "gtr htrjh  rtj y", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("47", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("47", "47", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("47", "47", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 16:00:28", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("1", "2019-07-12 16:00:28", "2", "2019-07-12 06:00:00", "2019-07-12 06:10:00", "39.99", "10", " gewr regg erwg ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("1", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("1", "1", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("1", "1", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 16:16:55", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("2", "2019-07-12 16:16:55", "1", "2019-07-12 06:50:00", "2019-07-12 07:20:00", "19.90", "30", "hrte hejtej e", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("2", "14", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("2", "2", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("2", "2", "15", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-12 16:45:19", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("3", "2019-07-12 16:45:20", "4", "2019-07-12 10:00:00", "2019-07-12 10:30:00", "49.90", "30", "7i 67l8ç8ç", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("3", "8", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("3", "3", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("3", "3", "15", "2");

