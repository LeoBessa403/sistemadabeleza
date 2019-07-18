INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-18 15:27:57", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("4", "2019-07-18 15:27:57", "2", "2019-07-18 06:30:00", "2019-07-18 07:00:00", "29.90", "30", "uik uiluil", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("4", "31", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("4", "4", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("4", "4", "15", "2");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("80", "2");

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (80);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("80", "2");

