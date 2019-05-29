UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 35;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("35", "2019-05-29 10:46:38", "2019-05-29 10:46:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("35", "2019-05-29 10:46:38", "2019-05-29 10:46:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("35", "2019-05-29 10:46:38", "2019-05-29 10:46:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "3", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("46", "2019-05-29 10:46:38", "2019-05-29 10:46:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("46", "2019-05-29 10:46:38", "2019-05-29 10:46:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("46", "2019-05-29 10:46:38", "2019-05-29 10:46:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "19");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("47", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "1", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("47", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "2", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("47", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "3", "0");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "3", co_profissional = "19" where co_servico_profissional = 35;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("35", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "1", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("35", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "2", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("35", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "3", "0");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "3", co_profissional = "19" where co_servico_profissional = 46;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("46", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("46", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("46", "2019-05-29 10:59:04", "2019-05-29 10:59:04", "3", "10");

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 10;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 6;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 4;

