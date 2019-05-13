UPDATE TB_SERVICO SET st_status = "I", no_servico = "Corte Tesoura", nu_duracao = "30", ds_descricao = "Corte: O corte na tesoura irá deixar você com o visual renovado.", co_categoria_servico = "5", st_assistente = "N" where co_servico = 4;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("4", "Atualizado", "26.00", "2019-05-13 14:07:01", "8");

