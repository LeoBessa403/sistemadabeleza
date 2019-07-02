DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (79);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("79", "2");

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (79);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("79", "2");

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 6;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 6;

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_hora_abertura, nu_hora_fechamento, nu_dia_semana) VALUES ("11", "08:00", "18:00", "1");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_hora_abertura, nu_hora_fechamento, nu_dia_semana) VALUES ("11", "08:00", "18:00", "2");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_hora_abertura, nu_hora_fechamento, nu_dia_semana) VALUES ("11", "08:00", "18:00", "3");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_hora_abertura, nu_hora_fechamento, nu_dia_semana) VALUES ("11", "08:00", "18:00", "4");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_hora_abertura, nu_hora_fechamento, nu_dia_semana) VALUES ("11", "08:00", "18:00", "5");

UPDATE TB_HISTORIA SET ds_titulo = "Cadastrar Agendamento", ds_observacao = "<p>Cadastrar Agendamento (Op&ccedil;&atilde;o da recorr&ecirc;ncia)</p>

<p>&nbsp;</p>

<p>Modelagem: (FK cliente, Servi&ccedil;o, Profissional, Assistente)</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-02 11:17:09" where co_historia = 28;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-07-02 11:17:09", "28");

UPDATE TB_HISTORIA SET ds_titulo = "Implantação Agenda", ds_observacao = "<p>Agenda CSS (Responsivo)</p>", co_sessao = "17", st_situacao = "C", dt_atualizado = "2019-07-02 11:18:09" where co_historia = 30;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-02 11:18:09", "30");

UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Agendamentos", ds_observacao = "<p>Pesquisa de agendamento &nbsp;por per&iacute;odo, status, profissional, servi&ccedil;o</p>", co_sessao = "17", st_situacao = "N", dt_atualizado = "2019-07-02 11:18:57" where co_historia = 31;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-02 11:18:57", "31");

UPDATE TB_HISTORIA SET ds_titulo = "Edição Agenda", ds_observacao = "<p>Mostrar a agenda Edi&ccedil;&atilde;o Agenda</p>", co_sessao = "17", st_situacao = "N", dt_atualizado = "2019-07-02 11:19:57" where co_historia = 29;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-02 11:19:57", "29");

UPDATE TB_HISTORIA SET ds_titulo = "Cadastrar Agendamento", ds_observacao = "<p>Cadastrar Agendamento (Op&ccedil;&atilde;o da recorr&ecirc;ncia)</p>

<p>Varios servi&ccedil;os e pacotes</p>

<p>Modelagem: (FK cliente, Servi&ccedil;o, Profissional, Assistente)</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-02 11:20:39" where co_historia = 28;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("30", "30"_restante, "2019-07-02 11:20:39", "28");

UPDATE TB_HISTORIA SET ds_titulo = "Edição Agenda", ds_observacao = "<p>Mostrar a agenda Edi&ccedil;&atilde;o Agenda</p>", co_sessao = "17", st_situacao = "N", dt_atualizado = "2019-07-02 11:20:54" where co_historia = 29;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-07-02 11:20:54", "29");

