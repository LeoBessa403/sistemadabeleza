DELETE FROM TB_PERFIL where co_perfil = "4";

INSERT INTO TB_PERFIL_ASSINANTE (no_perfil, co_assinante, st_status) VALUES ("TESTE 33", "11", "A");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil_assinante, co_funcionalidade) VALUES ("1", "48");

UPDATE TB_PERFIL_ASSINANTE SET no_perfil = "Profissional", co_assinante = "11", st_status = "A" where co_perfil_assinante = 1;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_perfil_assinante in (1);

UPDATE TB_PERFIL_ASSINANTE SET no_perfil = "Profissional", co_assinante = "11", st_status = "A" where co_perfil_assinante = 1;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_perfil_assinante in (1);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil_assinante, co_funcionalidade) VALUES ("1", "49");

UPDATE TB_HISTORIA SET ds_titulo = "Manter Perfil", ds_observacao = "<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>

<p>&nbsp;</p>

<p>Tabela Perfil Base</p>", co_sessao = "29", st_situacao = "I", dt_atualizado = "2019-03-11 16:33:47" where co_historia = 84;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("30", "30"_restante, "2019-03-11 16:33:47", "84");

UPDATE TB_HISTORIA SET ds_titulo = "Manter Perfil", ds_observacao = "<p>Editar as funcionalidades que podem ser acessadas pro perfis</p>

<p>&nbsp;</p>

<p>Tabela Perfil Base</p>", co_sessao = "29", st_situacao = "I", dt_atualizado = "2019-03-11 16:34:01" where co_historia = 84;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-11 16:34:01", "84");

INSERT INTO TB_ANOTACAO (ds_titulo, co_historia, ds_observacao, dt_cadastro) VALUES ("Criar Perfil de Profissional", "84", "<p>Criar Perfil de Profissional autom&aacute;tico onde ao cadastrar um profissional ele ja vem com o perfil de profissional e ja suas funcionalidades b&aacute;sicas cadastradas</p>", "2019-03-11 16:57:48");

