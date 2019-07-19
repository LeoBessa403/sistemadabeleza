INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-19 16:20:10", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("4", "2019-07-19 16:20:11", "2", "2019-07-19 07:30:00", "2019-07-19 07:40:00", "39.99", "10", "kyuiyukyu k", "8", "1");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("6", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("6", "6", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("6", "6", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-19 17:54:41", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("5", "2019-07-19 17:54:42", "1", "2019-07-19 13:30:00", "2019-07-19 14:00:00", "29.90", "30", "tyjytjyt", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("7", "25", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("7", "7", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("7", "7", "15", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("4", "2019-07-19 18:00:18", "4", "2019-07-19 07:00:00", "2019-07-19 07:30:00", "29.90", "30", "novidades de edição", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("8", "31", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("8", "8", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("8", "8", "15", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Edição Agendamento", ds_observacao = "<p>Edi&ccedil;&atilde;o Agendamento</p>

<p>Valida&ccedil;&atilde;o dos status do agendamento e status do servi&ccedil;o</p>", co_sessao = "17", st_situacao = "C", dt_atualizado = "2019-07-19 18:01:29" where co_historia = 29;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-19 18:01:29", "29");

