UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-14 17:50:10", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_IMAGEM SET ds_caminho = "jose-arnaldo-5c3ce7f2edaa9.jpg" where co_imagem = 37;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-14 17:50:10", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (20);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "31");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "29");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "27");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (20);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "2", "05:00", "18:04");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "3", "05:00", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "4", "04:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "6", "03:44", "19:11");

