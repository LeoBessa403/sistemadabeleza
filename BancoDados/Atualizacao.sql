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

INSERT INTO TB_CONTROLLER (no_controller, ds_class_icon) VALUES ("NovaController", "fa fa-group");

INSERT INTO TB_FUNCIONALIDADE (no_funcionalidade, ds_action, st_menu, co_controller, st_status) VALUES ("Nova Fun", "NovaFun", "S", "10", "A");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Nova Fun", ds_action = "NovaFun", st_menu = "N", co_controller = "10" where co_funcionalidade = 28;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (28);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Nova Fun2", ds_action = "NovaFun2", st_menu = "S", co_controller = "3" where co_funcionalidade = 28;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (28);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Nova Fun2", ds_action = "NovaFun2", st_menu = "S", co_controller = "2" where co_funcionalidade = 28;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (28);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "2");

INSERT INTO TB_CONTROLLER (no_controller, ds_class_icon) VALUES ("NovaControllerTeste", "fa fa-group");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Nova Fun22", ds_action = "NovaFun22", st_menu = "S", co_controller = "11" where co_funcionalidade = 28;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (28);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("28", "2");

INSERT INTO TB_CONTROLLER (no_controller, ds_class_icon) VALUES ("Profissional", "clip-user");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Cadastro Ausência Profissional", ds_action = "CadastroAusenciaProfissional", st_menu = "S", co_controller = "12" where co_funcionalidade = 27;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (27);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("27", "2");

INSERT INTO TB_CONTROLLER (no_controller, ds_class_icon) VALUES ("Configuracao", "clip-settings");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Manter Motivo Desconto", ds_action = "MotivoDescontoConfiguracao", st_menu = "S", co_controller = "13" where co_funcionalidade = 22;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (22);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("22", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Configuração de Agendamento", ds_action = "AgendamentoConfiguracao", st_menu = "S", co_controller = "13" where co_funcionalidade = 21;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (21);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("21", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Configuração de Cliente", ds_action = "ClienteConfiguracao", st_menu = "S", co_controller = "13" where co_funcionalidade = 20;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (20);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("20", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Historico Taxa Cartao Crédito", ds_action = "HistoricoTaxaCartaoCredito", st_menu = "N", co_controller = "13" where co_funcionalidade = 19;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (19);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("19", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Historico Taxa Cartao Debito", ds_action = "HistoricoTaxaCartaoDebito", st_menu = "N", co_controller = "13" where co_funcionalidade = 18;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (18);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("18", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Bandeiras e Taxas", ds_action = "BandeiraTaxaConfiguracao", st_menu = "N", co_controller = "13" where co_funcionalidade = 17;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (17);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("17", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Formas De Pagamento", ds_action = "FormasDePagamentoConfiguracao", st_menu = "S", co_controller = "13" where co_funcionalidade = 16;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (16);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("16", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Cadastro Dia Especial", ds_action = "CadastroDiaEspecialConfiguracao", st_menu = "N", co_controller = "13" where co_funcionalidade = 15;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (15);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("15", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Listar Dia Especial", ds_action = "DiaEspecialConfiguracao", st_menu = "S", co_controller = "13" where co_funcionalidade = 14;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (14);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("14", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Dados Complementares Assinante", ds_action = "DadosComplementaresAssinante", st_menu = "S", co_controller = "9" where co_funcionalidade = 13;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (13);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("13", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Troca Senha Usuario", ds_action = "TrocaSenhaUsuario", st_menu = "S", co_controller = "6" where co_funcionalidade = 12;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (12);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("12", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("12", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Funcionalidade Cadastrar", ds_action = "CadastroFuncionalidade", st_menu = "S", co_controller = "4" where co_funcionalidade = 10;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (10);

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Funcionalidade Listar", ds_action = "ListarFuncionalidade", st_menu = "S", co_controller = "4" where co_funcionalidade = 9;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (9);

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Perfil Cadastrar", ds_action = "CadastroPerfil", st_menu = "S", co_controller = "5" where co_funcionalidade = 8;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (8);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("8", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Perfil Listar", ds_action = "ListarPerfil", st_menu = "S", co_controller = "5" where co_funcionalidade = 7;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (7);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("7", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Meu Usuario", ds_action = "MeuPerfilUsuario", st_menu = "S", co_controller = "6" where co_funcionalidade = 6;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (6);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("6", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("6", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Usuario Listar", ds_action = "ListarUsuario", st_menu = "S", co_controller = "6" where co_funcionalidade = 5;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (5);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("5", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Usuario Cadastrar", ds_action = "CadastroUsuario", st_menu = "N", co_controller = "6" where co_funcionalidade = 4;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (4);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("4", "2");

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Auditoria Detalhar", ds_action = "DetalharAuditoria", st_menu = "S", co_controller = "2" where co_funcionalidade = 3;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (3);

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Auditoria Listar", ds_action = "ListarAuditoria", st_menu = "S", co_controller = "2" where co_funcionalidade = 2;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (2);

UPDATE TB_FUNCIONALIDADE SET no_funcionalidade = "Troca Senha Usuario", ds_action = "TrocaSenhaUsuario", st_menu = "S", co_controller = "6" where co_funcionalidade = 12;

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (12);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("12", "3");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("12", "2");

