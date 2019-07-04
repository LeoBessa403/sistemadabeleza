UPDATE TB_HISTORIA SET ds_titulo = "Cadastrar Agendamento 1 Serviço", ds_observacao = "<p>Cadastrar Agendamento (Op&ccedil;&atilde;o da recorr&ecirc;ncia)</p>

<p>Varios servi&ccedil;os e pacotes</p>

<p>Modelagem: (FK cliente, Servi&ccedil;o, Profissional, Assistente)</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-04 09:02:51" where co_historia = 28;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-07-04 09:02:51", "28");

UPDATE TB_HISTORIA SET ds_titulo = "Edição Agendamento", ds_observacao = "<p>Edi&ccedil;&atilde;o Agendamento</p>

<p>Valida&ccedil;&atilde;o dos status do agendamento e status do servi&ccedil;o</p>", co_sessao = "17", st_situacao = "N", dt_atualizado = "2019-07-04 09:03:51" where co_historia = 29;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-04 09:03:51", "29");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Listagem dos agendamento", "<p>Listagem dos agendamento e auto render</p>", "17", "I", "2019-07-04 09:05:01", "2019-07-04 09:05:01");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-04 09:05:01", "190");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Cadastrar Agendamento Vários Serviços Serviço", "<p>Cadastrar Agendamento V&aacute;rios Servi&ccedil;os Servi&ccedil;o</p>

<p>com&nbsp; Agrupamento dos dados por servi&ccedil;o</p>", "17", "N", "2019-07-04 09:05:43", "2019-07-04 09:05:43");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-04 09:05:43", "191");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Cadastrar Agendamento Pacote com vários serviços", "<p>Cadastrar Agendamento Pacote com v&aacute;rios servi&ccedil;os</p>", "17", "N", "2019-07-04 09:06:18", "2019-07-04 09:06:18");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-04 09:06:18", "192");

