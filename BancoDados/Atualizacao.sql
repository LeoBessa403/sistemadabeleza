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

