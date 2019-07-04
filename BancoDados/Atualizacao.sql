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

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Histórico do Agendamento", "<p>Hist&oacute;rico do Agendamento (Modal)</p>", "17", "N", "2019-07-04 11:04:12", "2019-07-04 11:04:12");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-04 11:04:12", "193");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Deletar Agendamento", "<p>Deletar Agendamento (Modal) com Justificativa</p>

<p>Visualisar na listagem da grid</p>", "17", "N", "2019-07-04 11:05:08", "2019-07-04 11:05:08");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-07-04 11:05:08", "194");

UPDATE TB_HISTORIA SET ds_titulo = "Listagem dos agendamento (Calendário)", ds_observacao = "<p>Listagem dos agendamento e auto render</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-04 11:05:42" where co_historia = 190;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-04 11:05:42", "190");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Listagem dos agendamento (Grid)", "<p>Listagem dos agendamento</p>", "17", "N", "2019-07-04 11:06:07", "2019-07-04 11:06:07");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-04 11:06:07", "195");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 43;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("43", "2019-07-04 15:26:06", "2019-07-04 15:26:06", "1", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("43", "2019-07-04 15:26:06", "2019-07-04 15:26:06", "2", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("43", "2019-07-04 15:26:06", "2019-07-04 15:26:06", "3", "0");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 49;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("49", "2019-07-04 15:26:07", "2019-07-04 15:26:07", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("49", "2019-07-04 15:26:07", "2019-07-04 15:26:07", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("49", "2019-07-04 15:26:07", "2019-07-04 15:26:07", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "11", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("53", "2019-07-04 15:26:07", "2019-07-04 15:26:07", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("53", "2019-07-04 15:26:07", "2019-07-04 15:26:07", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("53", "2019-07-04 15:26:07", "2019-07-04 15:26:07", "3", "10");

