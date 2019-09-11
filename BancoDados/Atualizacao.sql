INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-09-11 12:37:13", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("27", "2019-09-11 12:37:13", "4", "2019-09-11 08:00:00", "2019-09-11 08:00:00", "29.90", "30", "", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("214", "5", "2");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("168", "214", "21", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("168", "214", "null", "2");

