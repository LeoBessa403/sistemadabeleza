UPDATE TB_SERVICO SET st_status = "A" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 35;

INSERT INTO TB_ENDERECO (ds_endereco, ds_complemento, ds_bairro, nu_cep, no_cidade, sg_uf) VALUES ("", "", "", "", "", "");

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("65465465116", "", "", "", "fweffrgr@grge.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_imagem, co_contato, co_endereco) VALUES ("", "LEO BESSA usuário externo", "", "2019-05-09 17:45:14", "2001-05-10", "M", "", "92", "106");

INSERT INTO TB_CLIENTE (dt_cadastro, st_status, no_apelido, ds_observacao, st_receber_email_agendamento, st_lembrete_horario_agendamento, st_sms_marketing, st_email_marketing, nu_como_conheceu, co_pessoa, co_assinante) VALUES ("2019-05-09 17:45:14", "A", "", "", "S", "S", "S", "S", "1", "80", "11");

UPDATE TB_HISTORIA SET ds_titulo = "Pesquisa Avançada dos Clientes", ds_observacao = "<p>Pesquisa Avan&ccedil;ada dos Clientes nome, apelido, anivers&aacute;rio do m&ecirc;s semana, sexo, cidade e UF,&nbsp; Recebe E-mail Agendamento, Lembrete Hor&aacute;rio de Agendamento, Recebe E-mail Marketing, Recebe SMS Marketing, Status de agendamento</p>", co_sessao = "11", st_situacao = "I", dt_atualizado = "2019-05-09 17:52:34" where co_historia = 148;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("20", "20"_restante, "2019-05-09 17:52:34", "148");

