DELETE FROM TB_PERFIL where co_perfil = "4";

INSERT INTO TB_PERFIL_ASSINANTE (no_perfil, co_assinante, st_status) VALUES ("TESTE 33", "11", "A");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil_assinante, co_funcionalidade) VALUES ("1", "48");

UPDATE TB_PERFIL_ASSINANTE SET no_perfil = "Profissional", co_assinante = "11", st_status = "A" where co_perfil_assinante = 1;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_perfil_assinante in (1);

UPDATE TB_PERFIL_ASSINANTE SET no_perfil = "Profissional", co_assinante = "11", st_status = "A" where co_perfil_assinante = 1;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_perfil_assinante in (1);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_perfil_assinante, co_funcionalidade) VALUES ("1", "49");

