DELETE FROM TB_AUSENCIA where co_ausencia = "3";

UPDATE TB_AUSENCIA SET co_ausencia = "2", dt_inicio = "2019-01-01 06:00:00", dt_fim = "2019-01-01 20:00:00", tp_ausencia = "5", ds_observacao = "so pra ver essa folga", co_profissional = "19", co_usuario = "8" where co_ausencia = 2;

INSERT INTO TB_AUSENCIA (dt_inicio, dt_fim, tp_ausencia, ds_observacao, dt_cadastro, co_profissional, co_usuario) VALUES ("2019-01-01 06:00:00", "2019-01-01 03:22:00", "4", "BMCGHM", "2019-01-28 12:59:16", "15", "8");

DELETE FROM TB_AUSENCIA where CO_AUSENCIA = "4";

DELETE FROM TB_AUSENCIA where CO_AUSENCIA = "4";

INSERT INTO TB_PERFIL (no_perfil) VALUES ("TESTE 33369");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("4", "26");

INSERT INTO TB_PERFIL (no_perfil) VALUES ("TESTE");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("5", "22");

INSERT INTO TB_PERFIL (no_perfil) VALUES ("TESTE");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil, co_funcionalidade) VALUES ("6", "23");

DELETE FROM TB_PERFIL where co_perfil = "6";

