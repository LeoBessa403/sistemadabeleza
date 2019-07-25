UPDATE TB_HISTORIA SET ds_titulo = "Valida Profissonal e assistente por serviço", ds_observacao = "<p>Valida Profissonal e assistente por servi&ccedil;o e carrega as combos dependentes</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-24 12:15:11" where co_historia = 197;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-24 12:15:11", "197");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-24 12:16:15", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("8", "2019-07-24 12:16:15", "7", "2019-07-24 06:40:00", "2019-07-24 07:10:00", "55.44", "30", "gs dgr ger", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("121", "41", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("77", "121", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("77", "121", "15", "2");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Validações dos botões", "<p>Valida&ccedil;&otilde;es dos bot&otilde;es da tela de visualizar agendamento</p>", "17", "N", "2019-07-24 12:18:17", "2019-07-24 12:18:17");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-07-24 12:18:17", "203");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Botão Finalizar agendamento", "<p>Realizar a finaliza&ccedil;&atilde;o do agendamento</p>", "17", "N", "2019-07-25 13:10:27", "2019-07-25 13:10:27");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-25 13:10:27", "204");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-25 13:14:26", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("9", "2019-07-25 13:14:26", "2", "2019-07-25 09:30:00", "2019-07-25 09:40:00", "39.99", "10", "iuluilui", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("122", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("78", "122", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("78", "122", "19", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("9", "2019-07-25 13:28:49", "7", "2019-07-25 09:30:00", "2019-07-25 09:40:00", "39.99", "10", "iuluilui", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("123", "30", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("79", "123", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("79", "123", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-25 13:30:20", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("10", "2019-07-25 13:30:20", "3", "2019-07-25 12:10:00", "2019-07-25 12:20:00", "39.99", "10", " fgqerqgqre", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("124", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("80", "124", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("80", "124", "19", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("10", "2019-07-25 13:30:59", "7", "2019-07-25 12:10:00", "2019-07-25 12:20:00", "39.99", "10", " fgqerqgqre", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("125", "30", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("81", "125", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("81", "125", "19", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Botão Finalizar agendamento", ds_observacao = "<p>Realizar a finaliza&ccedil;&atilde;o do agendamento</p>", co_sessao = "17", st_situacao = "C", dt_atualizado = "2019-07-25 13:55:40" where co_historia = 204;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-25 13:55:40", "204");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-25 14:01:49", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("11", "2019-07-25 14:01:49", "1", "2019-07-25 11:50:00", "2019-07-25 12:50:00", "39.90", "60", " gerg r43 ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("126", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("82", "126", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("82", "126", "15", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("11", "2019-07-25 14:03:59", "3", "2019-07-25 11:50:00", "2019-07-25 12:50:00", "39.90", "60", " gerg r43 ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("127", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("83", "127", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("83", "127", "15", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Validações dos botões", ds_observacao = "<p>Valida&ccedil;&otilde;es dos bot&otilde;es da tela de visualizar agendamento</p>", co_sessao = "17", st_situacao = "C", dt_atualizado = "2019-07-25 14:05:45" where co_historia = 203;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("3", "3"_restante, "2019-07-25 14:05:45", "203");

