UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Profissionais", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos Profissionais por nome, filial, cargo, jornada de tabalho, sexo, cidade e uf, assistente , possui agenda,&nbsp; agenda on line, banco, Status Agendamento.</p>", co_sessao = "9", st_situacao = "N", dt_atualizado = "2019-03-27 14:36:24" where co_historia = 147;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 14:36:24", "147");

UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Clientes", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos Clientes nome, apelido, anivers&aacute;rio do m&ecirc;s semana, sexo, cidade e UF,&nbsp; Recebe E-mail Agendamento, Lembrete Hor&aacute;rio de Agendamento, Recebe E-mail Marketing, Recebe SMS Marketing, Status de agendamento</p>", co_sessao = "11", st_situacao = "N", dt_atualizado = "2019-03-27 14:37:30" where co_historia = 148;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 14:37:30", "148");

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I", no_servico = "Podologia com limpeza dos pés", nu_duracao = "60", ds_descricao = "Podologia com limpeza dos pés: corte, polimento, limpeza, 
        debastamento das calosidades, esfoliação dos pés e hidratação profunda.", co_categoria_servico = "13", st_assistente = "S" where co_servico = 33;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("33", "Atualizado", "39.90", "2019-03-27 14:52:41", "8");

UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Serviços", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos servi&ccedil;os por categoria, descri&ccedil;&atilde;o, valor, profissional, status, dura&ccedil;&atilde;o, Assistente</p>", co_sessao = "12", st_situacao = "N", dt_atualizado = "2019-03-27 14:55:59" where co_historia = 144;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-03-27 14:55:59", "144");

UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Serviços", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos servi&ccedil;os por categoria, descri&ccedil;&atilde;o, valor, profissional, status, dura&ccedil;&atilde;o, Assistente, promo&ccedil;&atilde;o, pacote</p>", co_sessao = "12", st_situacao = "N", dt_atualizado = "2019-03-27 14:56:59" where co_historia = 144;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-03-27 14:56:59", "144");

UPDATE TB_HISTORIA SET ds_titulo = "Configuração das comissões", ds_observacao = "<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>

<p>&nbsp;</p>

<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas, Comiss&atilde;o padr&atilde;o geral por servi&ccedil;o ou por profissional</p>", co_sessao = "5", st_situacao = "N", dt_atualizado = "2019-03-27 15:14:45" where co_historia = 133;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-03-27 15:14:45", "133");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Manter Percentual de comissão", "<p>Manter Percentual de comiss&atilde;o (Profissional / Assistente)</p>", "9", "N", "2019-03-27 15:17:19", "2019-03-27 15:17:19");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-03-27 15:17:19", "150");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Manter Percentual de comissão", "<p>Manter Percentual de comiss&atilde;o (Profissional / Assistente) levando em conta a configura&ccedil;&atilde;o se for por Servi&ccedil;o</p>", "12", "N", "2019-03-27 15:18:54", "2019-03-27 15:18:54");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-03-27 15:18:54", "151");

UPDATE TB_HISTORIA SET ds_titulo = "Manter Percentual de comissão", ds_observacao = "<p>Manter Percentual de comiss&atilde;o (Profissional / Assistente) levando em conta a configura&ccedil;&atilde;o se for por Profissional</p>", co_sessao = "9", st_situacao = "N", dt_atualizado = "2019-03-27 15:19:27" where co_historia = 150;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-03-27 15:19:27", "150");

UPDATE TB_HISTORIA SET ds_titulo = "Configuração das comissões", ds_observacao = "<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>

<p>&nbsp;</p>

<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas, Comiss&atilde;o (&Uacute;nico Profissional, Com Assistente e Assistente) padr&atilde;o geral por servi&ccedil;o ou por profissional ou por Servi&ccedil;i / Profissional</p>", co_sessao = "5", st_situacao = "I", dt_atualizado = "2019-03-27 15:32:36" where co_historia = 133;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 15:32:36", "133");

UPDATE TB_HISTORIA SET ds_titulo = "Configuração das comissões", ds_observacao = "<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>

<p>&nbsp;</p>

<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas, Comiss&atilde;o (&Uacute;nico Profissional, Com Assistente e Assistente) padr&atilde;o geral por servi&ccedil;o ou por profissional ou por Servi&ccedil;i / Profissional</p>", co_sessao = "5", st_situacao = "I", dt_atualizado = "2019-03-27 15:32:43" where co_historia = 133;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 15:32:43", "133");

UPDATE TB_HISTORIA SET ds_titulo = "Configuração das comissões", ds_observacao = "<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>

<p>&nbsp;</p>

<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas, Comiss&atilde;o (&Uacute;nico Profissional, Com Assistente e Assistente) padr&atilde;o geral por servi&ccedil;o ou por profissional ou por Servi&ccedil;i / Profissional</p>", co_sessao = "5", st_situacao = "N", dt_atualizado = "2019-03-27 15:33:01" where co_historia = 133;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 15:33:01", "133");

UPDATE TB_HISTORIA SET ds_titulo = "Configuração das comissões", ds_observacao = "<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>

<p>&nbsp;</p>

<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas, Comiss&atilde;o (&Uacute;nico Profissional, Com Assistente e Assistente) padr&atilde;o geral por servi&ccedil;o ou por profissional ou por Servi&ccedil;i / Profissional</p>", co_sessao = "5", st_situacao = "I", dt_atualizado = "2019-03-27 16:39:17" where co_historia = 133;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("30", "30"_restante, "2019-03-27 16:39:17", "133");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Histórico da Configuração da Comissão", "<p>Hist&oacute;rico da Configura&ccedil;&atilde;o da Comiss&atilde;o</p>", "5", "N", "2019-03-27 16:39:58", "2019-03-27 16:39:58");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-03-27 16:39:58", "152");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Histórico de comissões por serviço", "<p>Hist&oacute;rico de comiss&otilde;es por servi&ccedil;o</p>", "9", "N", "2019-03-27 17:10:10", "2019-03-27 17:10:10");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-03-27 17:10:10", "153");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Histórico de comissões por profissional", "<p>Hist&oacute;rico de comiss&otilde;es por profissional</p>", "12", "N", "2019-03-27 17:10:43", "2019-03-27 17:10:43");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-03-27 17:10:43", "154");

UPDATE TB_HISTORIA SET ds_titulo = "Configuração das comissões", ds_observacao = "<p>Configura&ccedil;&atilde;o das comiss&otilde;es</p>

<p>&nbsp;</p>

<p>Considerar ou n&atilde;o as Taxas de antecipa&ccedil;&atilde;o, taxa administrativa, taxa cart&atilde;o de cr&eacute;dito, taxa cart&atilde;o de d&eacute;bito, Regras de pagamentos das pr&eacute; vendas, Comiss&atilde;o (&Uacute;nico Profissional, Com Assistente e Assistente) padr&atilde;o geral por servi&ccedil;o ou por profissional ou por Servi&ccedil;i / Profissional</p>", co_sessao = "5", st_situacao = "I", dt_atualizado = "2019-03-27 17:13:01" where co_historia = 133;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("30", "30"_restante, "2019-03-27 17:13:01", "133");

