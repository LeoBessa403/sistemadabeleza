INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-11-08 12:00:01", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("29", "2019-11-08 12:00:01", "3", "2019-07-31 08:00:00", "2019-07-31 08:30:00", "55.44", "30", "", "8", "4");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("227", "41", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("181", "227", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("181", "227", "null", "2");

