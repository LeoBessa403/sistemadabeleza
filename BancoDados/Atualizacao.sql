INSERT INTO TB_MODULO (no_modulo, co_projeto, dt_cadastro) VALUES ("Melhorias Arquitetura", "1", "2019-06-14 10:10:30");

INSERT INTO TB_SESSAO (no_sessao, co_modulo, dt_cadastro) VALUES ("Gestão Arquitetura", "7", "2019-06-14 10:11:55");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Limpar dados de das Visitas e trafego", "<p>Limpar dados de das Visitas e trafego p&aacute;ginas e tudo mais</p>", "35", "N", "2019-06-14 10:12:25", "2019-06-14 10:12:25");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-06-14 10:12:25", "186");

INSERT INTO TB_SESSAO (no_sessao, co_modulo, dt_cadastro) VALUES ("Melhorias Arquitetura", "7", "2019-06-14 10:12:55");

UPDATE TB_HISTORIA SET ds_titulo = "Manter promoção", ds_observacao = "<p>Manter promo&ccedil;&atilde;o dias e hor&aacute;rios a ser ultilizado per&iacute;odo v&aacute;lido</p>

<p>&nbsp;</p>

<p>Modelagem: Promocao (FK Servi&ccedil;o)</p>", co_sessao = "14", st_situacao = "N", dt_atualizado = "2019-06-14 10:41:48" where co_historia = 25;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-06-14 10:41:48", "25");

INSERT INTO TB_MODULO (no_modulo, co_projeto, dt_cadastro) VALUES ("Melhorias do Sistema", "1", "2019-06-14 10:48:24");

INSERT INTO TB_SESSAO (no_sessao, co_modulo, dt_cadastro) VALUES ("Pacote", "8", "2019-06-14 10:48:40");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Pacote Melhorado", "<p>Criar pacote com quantidade por servi&ccedil;o e atendimento parcial</p>", "37", "N", "2019-06-14 10:49:49", "2019-06-14 10:49:49");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-06-14 10:49:49", "187");

UPDATE TB_HISTORIA SET ds_titulo = "Manter promoção", ds_observacao = "<p>Manter promo&ccedil;&atilde;o dias e hor&aacute;rios a ser ultilizado per&iacute;odo v&aacute;lido valor e servi&ccedil;o</p>

<p>&nbsp;</p>

<p>Modelagem: Promocao (FK Servi&ccedil;o)</p>", co_sessao = "14", st_situacao = "I", dt_atualizado = "2019-06-14 13:23:09" where co_historia = 25;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-06-14 13:23:09", "25");

