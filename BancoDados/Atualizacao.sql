INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("4", "2019-07-22 10:08:10", "7", "2019-07-19 07:00:00", "2019-07-19 07:30:00", "29.90", "30", "Finalizado", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("9", "31", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("9", "9", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("9", "9", "15", "2");

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "GRE WRTH RT" where co_profissional = 15;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "e gwrehrjwytjh" where co_profissional = 9;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "j ryuk jtrwh twr" where co_profissional = 19;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 9;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 21;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 18;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "G WE WRTH W" where co_profissional = 18;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 15;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 18;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 16;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 19;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 20;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "4hrt h rth" where co_profissional = 15;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "ytj rt rt rt" where co_profissional = 16;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 15;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 16;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "g regerg" where co_profissional = 9;

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "rth rth" where co_profissional = 16;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 16;

UPDATE TB_PROFISSIONAL SET st_status = "A", ds_motivo = "" where co_profissional = 9;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 7;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

INSERT INTO TB_ENDERECO (ds_endereco, ds_complemento, ds_bairro, nu_cep, no_cidade, sg_uf) VALUES ("", "", "", "", "", "");

INSERT INTO TB_CONTATO (nu_tel1, nu_tel2, nu_tel3, nu_tel_0800, ds_email, ds_site, ds_facebook, ds_twitter, ds_instagram) VALUES ("6199322555", "", "", "", "greggh@gd.com", "", "", "", "");

INSERT INTO TB_PESSOA (nu_cpf, no_pessoa, nu_rg, dt_cadastro, dt_nascimento, st_sexo, co_imagem, co_contato, co_endereco) VALUES ("12345678909", "Jose Arnaldo", "", "2019-07-22 11:22:47", "2002-07-04", "M", "", "93", "107");

INSERT INTO TB_CLIENTE (dt_cadastro, st_status, no_apelido, ds_observacao, st_receber_email_agendamento, st_lembrete_horario_agendamento, st_sms_marketing, st_email_marketing, nu_como_conheceu, co_pessoa, co_assinante) VALUES ("2019-07-22 11:22:47", "A", "", "", "S", "S", "S", "S", "1", "81", "11");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-22 11:23:39", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("6", "2019-07-22 11:23:39", "2", "2019-07-22 09:40:00", "2019-07-22 11:40:00", "172.30", "120", "fwe weqfb", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("10", "3", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("10", "10", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("10", "10", "19", "2");

DELETE FROM TB_AUSENCIA where co_ausencia = "1";

