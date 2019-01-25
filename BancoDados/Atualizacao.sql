INSERT INTO TB_FUNCIONALIDADE (no_funcionalidade, st_status) VALUES ("Ausência Profissional", "A");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("25", "2");

INSERT INTO TB_FUNCIONALIDADE (no_funcionalidade, ds_action, st_status) VALUES ("Ausência Profissional", "AusenciaProfissional", "A");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("26", "2");

INSERT INTO TB_DIA_ESPECIAL (dt_dia, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento, ds_motivo, co_assinante) VALUES ("2019-01-31", "4", "09:00", "14:00", "Dia especial", "11");

INSERT INTO TB_PERFIL (no_perfil) VALUES ("mEU pERFIL");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("19", "23");

UPDATE TB_ENDERECO SET co_endereco = "87", ds_endereco = "Rua Ipanema", ds_complemento = "complemento novo", ds_bairro = "Ypiranga", nu_cep = "72879282", no_cidade = "Valparaíso de Goiás", sg_uf = "GO" where co_endereco = 87;

UPDATE TB_CONTATO SET co_contato = "73", nu_tel1 = "45654665165", nu_tel2 = "57712572758", nu_tel3 = "", nu_tel_0800 = "", ds_email = "rgr@grge.com", ds_site = "", ds_facebook = "link face 2", ds_twitter = "link twitter 2", ds_instagram = "link insta 2" where co_contato = 73;

UPDATE TB_PESSOA SET co_pessoa = "68", nu_cpf = "01304694160", no_pessoa = "Maria Karlene", nu_rg = "2346", dt_nascimento = "1999-12-14", st_sexo = "F", co_contato = "73", co_endereco = "87" where co_pessoa = 68;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "35", nu_agencia = "2399", nu_conta = "22982-7", tp_conta = "CS", co_banco = "1" where co_conta_bancaria = 35;

UPDATE TB_PROFISSIONAL SET co_profissional = "16", ds_cor_agenda = "#A54A7B", st_assistente = "N", ds_sobre = "Eu sou a kaka", no_apelido = "Kaka", st_agenda = "S", st_agenda_online = "S"_online, st_status = "", nu_ordem_agenda = "1", tp_contratacao = "3", dt_admissao = "2018-12-04", dt_demissao = "", co_imagem = "33", co_pessoa = "68", co_conta_bancaria = "35" where co_profissional = 16;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (16);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("16", "A", "2019-01-25", "31");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("16", "A", "2019-01-25", "26");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("16", "A", "2019-01-25", "21");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (16);

INSERT INTO TB_FUNCIONALIDADE (no_funcionalidade, ds_action, st_status) VALUES ("Cadastro Ausência Profissional", "CadastroAusenciaProfissional", "A");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("27", "2");

DELETE FROM TB_PERFIL where co_perfil = "19";

