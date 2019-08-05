UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Agendamentos", ds_observacao = "<p>Pesquisa de agendamento &nbsp;por per&iacute;odo, status, profissional, servi&ccedil;o, assistente, valor r$, cliente</p>", co_sessao = "17", st_situacao = "N", dt_atualizado = "2019-08-02 16:04:31" where co_historia = 31;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-08-02 16:04:31", "31");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("18", "2019-08-05 10:48:12", "6", "2019-08-02 08:00:00", "2019-08-02 09:00:00", "39.90", "60", "Atualizado pelo Sistema", "1", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("181", "33", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("136", "181", "21", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("136", "181", "0", "2");

