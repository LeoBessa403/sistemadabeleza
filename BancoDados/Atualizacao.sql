UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Profissionais", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos Profissionais por nome, filial, cargo, jornada de tabalho, sexo, cidade e uf, assistente , possui agenda,&nbsp; agenda on line, banco, Status Agendamento.</p>", co_sessao = "9", st_situacao = "N", dt_atualizado = "2019-03-27 14:36:24" where co_historia = 147;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 14:36:24", "147");

UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Clientes", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos Clientes nome, apelido, anivers&aacute;rio do m&ecirc;s semana, sexo, cidade e UF,&nbsp; Recebe E-mail Agendamento, Lembrete Hor&aacute;rio de Agendamento, Recebe E-mail Marketing, Recebe SMS Marketing, Status de agendamento</p>", co_sessao = "11", st_situacao = "N", dt_atualizado = "2019-03-27 14:37:30" where co_historia = 148;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-03-27 14:37:30", "148");

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I", no_servico = "Podologia com limpeza dos pés", nu_duracao = "60", ds_descricao = "Podologia com limpeza dos pés: corte, polimento, limpeza, 
        debastamento das calosidades, esfoliação dos pés e hidratação profunda.", co_categoria_servico = "13", st_assistente = "S" where co_servico = 33;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("33", "Atualizado", "39.90", "2019-03-27 14:52:41", "8");

