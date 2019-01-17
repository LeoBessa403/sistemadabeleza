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

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-14 17:54:33", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-14 17:54:33", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (20);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "15");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "4");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "2");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (20);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "1", "05:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "3", "05:00", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "4", "04:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "6", "03:44", "19:11");

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-14 17:55:04", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-14 17:55:04", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (20);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "15");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "4");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-14", "2");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (20);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "1", "05:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "3", "05:00", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "4", "04:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "6", "03:44", "19:11");

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:39:51", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:39:51", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (20);

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:42:55", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:42:55", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:43:40", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:43:40", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:44:27", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:44:27", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:44:42", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:44:42", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:49:59", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:49:59", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:50:20", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:50:20", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:50:59", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:50:59", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:51:21", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:51:21", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-15", "34");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-15", "15");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "1", "05:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "2", "05:00", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "4", "04:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "6", "03:44", "19:11");

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:52:29", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:52:29", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

UPDATE TB_ENDERECO SET co_endereco = "95", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "Casa 28", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 95;

UPDATE TB_CONTATO SET co_contato = "81", nu_tel1 = "61993003405", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 81;

UPDATE TB_PESSOA SET co_pessoa = "76", nu_cpf = "22322191191", no_pessoa = "Jose Arnaldo", nu_rg = "2346", dt_cadastro = "2019-01-15 09:52:46", dt_nascimento = "1959-06-05", st_sexo = "M", co_contato = "81", co_endereco = "95" where co_pessoa = 76;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "42", nu_agencia = "23992", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 42;

UPDATE TB_PROFISSIONAL SET co_profissional = "20", dt_cadastro = "2019-01-15 09:52:46", ds_cor_agenda = "#B5A5D6", st_assistente = "S", ds_sobre = "Representante comercial da Bartofil", no_apelido = "Bigode", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "4", dt_admissao = "2018-12-17", dt_demissao = "", co_imagem = "37", co_pessoa = "76", co_conta_bancaria = "42" where co_profissional = 20;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (20);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-15", "30");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("20", "A", "2019-01-15", "18");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (20);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "4", "04:44", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "5", "04:44", "18:04");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "6", "03:44", "19:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "7", "03:44", "14:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("20", "8", "02:23", "21:23");

UPDATE TB_PESSOA SET no_pessoa = "LEO BESSA", dt_nascimento = "" where co_pessoa = 15;

UPDATE TB_EMPRESA SET no_empresa = "TESTE 01 RAZãO 33", no_fantasia = "MEU SALãO 33", nu_cnpj = "07844665000120", nu_insc_estadual = "4354366433", ds_observacao = "vev v33" where co_empresa = 12;

UPDATE TB_ENDERECO SET ds_endereco = "QR 403 Conjunto 10 33", ds_complemento = "Casa 28 33", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília 33", sg_uf = "AP" where co_endereco = 29;

UPDATE TB_EMPRESA SET co_endereco = "29" where co_empresa = 12;

UPDATE TB_CONTATO SET nu_tel1 = "33333333333", nu_tel2 = "44444444444", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leo@mail.com", ds_site = "3333333", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 15;

DELETE FROM TB_FACILIDADE_BENEFICIO where co_assinante in (11);

INSERT INTO TB_FACILIDADE_BENEFICIO (co_assinante, tp_estabelecimento, tp_atendimento, tp_genero_especializado, tp_estacionamento, st_lanchonete, st_televisao, st_wifi, st_acesso_deficiente, st_jogos) VALUES ("11", "1", "1", "1", "1", "S", "S", "N", "N", "S");

DELETE FROM TB_FUNCIONAMENTO where co_assinante in (11);

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "1", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "2", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "3", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "4", "04:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "5", "04:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "6", "03:44", "19:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "7", "03:44", "14:11");

UPDATE TB_IMAGEM SET ds_caminho = "fp-meu-salao-33-11-5c3f0b4c4da42.jpg" where co_imagem = 14;

UPDATE TB_IMAGEM_ASSINANTE SET co_assinante = "11", co_imagem = "1" where co_imagem_assinante = 14;

UPDATE TB_PESSOA SET no_pessoa = "LEO BESSA", dt_nascimento = "" where co_pessoa = 15;

UPDATE TB_EMPRESA SET no_empresa = "TESTE 01 RAZãO 33", no_fantasia = "MEU SALãO 33", nu_cnpj = "07844665000120", nu_insc_estadual = "4354366433", ds_observacao = "vev v33" where co_empresa = 12;

UPDATE TB_ENDERECO SET ds_endereco = "QR 403 Conjunto 10 33", ds_complemento = "Casa 28 33", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília 33", sg_uf = "AP" where co_endereco = 29;

UPDATE TB_EMPRESA SET co_endereco = "29" where co_empresa = 12;

UPDATE TB_CONTATO SET nu_tel1 = "33333333333", nu_tel2 = "44444444444", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leo@mail.com", ds_site = "3333333", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 15;

DELETE FROM TB_FACILIDADE_BENEFICIO where co_assinante in (11);

INSERT INTO TB_FACILIDADE_BENEFICIO (co_assinante, tp_estabelecimento, tp_atendimento, tp_genero_especializado, tp_estacionamento, st_lanchonete, st_televisao, st_wifi, st_acesso_deficiente, st_jogos) VALUES ("11", "1", "1", "1", "1", "S", "S", "N", "N", "S");

DELETE FROM TB_FUNCIONAMENTO where co_assinante in (11);

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "1", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "2", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "3", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "4", "04:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "5", "04:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "6", "03:44", "19:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "7", "03:44", "14:11");

UPDATE TB_PESSOA SET no_pessoa = "LEO BESSA", dt_nascimento = "" where co_pessoa = 15;

UPDATE TB_EMPRESA SET no_empresa = "TESTE 01 RAZãO 33", no_fantasia = "MEU SALãO 33", nu_cnpj = "07844665000120", nu_insc_estadual = "4354366433", ds_observacao = "vev v33" where co_empresa = 12;

UPDATE TB_ENDERECO SET ds_endereco = "QR 403 Conjunto 10 33", ds_complemento = "Casa 28 33", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília 33", sg_uf = "AP" where co_endereco = 29;

UPDATE TB_EMPRESA SET co_endereco = "29" where co_empresa = 12;

UPDATE TB_CONTATO SET nu_tel1 = "33333333333", nu_tel2 = "44444444444", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leo@mail.com", ds_site = "3333333", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 15;

DELETE FROM TB_FACILIDADE_BENEFICIO where co_assinante in (11);

INSERT INTO TB_FACILIDADE_BENEFICIO (co_assinante, tp_estabelecimento, tp_atendimento, tp_genero_especializado, tp_estacionamento, st_lanchonete, st_televisao, st_wifi, st_acesso_deficiente, st_jogos) VALUES ("11", "1", "1", "1", "1", "S", "S", "N", "N", "S");

DELETE FROM TB_FUNCIONAMENTO where co_assinante in (11);

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "1", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "2", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "3", "05:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "4", "04:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "5", "04:44", "18:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "6", "03:44", "19:11");

INSERT INTO TB_FUNCIONAMENTO (co_assinante, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("11", "7", "03:44", "14:11");

INSERT INTO TB_ENDERECO (ds_endereco, ds_complemento, ds_bairro, nu_cep, no_cidade, sg_uf) VALUES ("QR 403 Conjunto 10", "", "Samambaia Norte (Samambaia)", "72319111", "Brasília", "DF");

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("61321315165", "", "", "", "ukyuk@yth.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_contato, co_endereco) VALUES ("12345678909", "novo profissional", "", "2019-01-17 13:46:58", "2019-01-09", "M", "83", "97");

INSERT INTO TB_CONTA_BANCARIA (nu_agencia, nu_conta, tp_conta, co_banco) VALUES ("2399", "22982-7", "CC", "104");

INSERT INTO TB_USUARIO (co_assinante, co_pessoa, ds_senha, ds_code, st_status, dt_cadastro) VALUES ("11", "78", "KWA4XDQ4", "UzFkQk5GaEVVVFE9", "I", "2019-01-17 13:46:59");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novo-profissional-5c40a3742c6af.jpg");

INSERT INTO TB_PROFISSIONAL (dt_cadastro, ds_cor_agenda, st_assistente, ds_sobre, no_apelido, st_agenda, st_agenda_online, st_status, nu_ordem_agenda, tp_contratacao, dt_admissao, dt_demissao, co_imagem, co_pessoa, co_assinante, co_conta_bancaria, co_usuario) VALUES ("2019-01-17 13:46:58", "#D6A5BD", "S", "", "", "N", "N"_online, "A", "2", "3", "2019-01-09", "", "39", "78", "11", "44", "51");

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (22);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("22", "A", "2019-01-17", "34");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("22", "A", "2019-01-17", "31");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("22", "A", "2019-01-17", "3");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (22);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("22", "2", "05:44", "18:04");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("22", "3", "05:44", "18:04");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("22", "4", "23:33", "18:11");

UPDATE TB_ENDERECO SET co_endereco = "97", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 97;

UPDATE TB_CONTATO SET co_contato = "83", nu_tel1 = "61321315165", nu_tel2 = "", nu_tel3 = "", nu_tel_0800 = "", ds_email = "ukyuk@yth.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 83;

UPDATE TB_PESSOA SET co_pessoa = "78", nu_cpf = "12345678909", no_pessoa = "novo profissional", nu_rg = "", dt_cadastro = "2019-01-17 13:53:34", dt_nascimento = "--", st_sexo = "M", co_contato = "83", co_endereco = "97" where co_pessoa = 78;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "44", nu_agencia = "2399", nu_conta = "22982-7", tp_conta = "CC", co_banco = "104" where co_conta_bancaria = 44;

UPDATE TB_PROFISSIONAL SET co_profissional = "22", dt_cadastro = "2019-01-17 13:53:34", ds_cor_agenda = "#D6A5BD", st_assistente = "S", ds_sobre = "", no_apelido = "", st_agenda = "N", st_agenda_online = "N"_online, st_status = "", nu_ordem_agenda = "2", tp_contratacao = "3", dt_admissao = "2019-01-09", dt_demissao = "", co_imagem = "39", co_pessoa = "78", co_conta_bancaria = "44" where co_profissional = 22;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (22);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("22", "A", "2019-01-17", "34");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("22", "A", "2019-01-17", "31");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("22", "A", "2019-01-17", "3");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (22);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("22", "2", "05:44", "18:04");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("22", "3", "05:44", "18:04");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("22", "4", "23:33", "18:11");

