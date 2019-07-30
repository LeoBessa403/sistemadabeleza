UPDATE TB_SERVICO SET st_status = "A", no_servico = "Podologia com limpeza dos pés", nu_duracao = "60", ds_descricao = "Podologia com limpeza dos pés: corte, polimento, limpeza, 
        debastamento das calosidades, esfoliação dos pés e hidratação profunda.", co_categoria_servico = "13", st_assistente = "S" where co_servico = 33;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("33", "Atualizado", "39.90", "2019-07-30 10:23:03", "8");

