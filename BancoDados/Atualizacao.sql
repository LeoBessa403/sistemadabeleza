UPDATE TB_HISTORIA SET ds_titulo = "Valida Profissonal e assistente por serviço", ds_observacao = "<p>Valida Profissonal e assistente por servi&ccedil;o e carrega as combos dependentes</p>", co_sessao = "17", st_situacao = "I", dt_atualizado = "2019-07-24 12:15:11" where co_historia = 197;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-07-24 12:15:11", "197");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-24 12:16:15", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("8", "2019-07-24 12:16:15", "7", "2019-07-24 06:40:00", "2019-07-24 07:10:00", "55.44", "30", "gs dgr ger", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("121", "41", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("77", "121", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("77", "121", "15", "2");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Validações dos botões", "<p>Valida&ccedil;&otilde;es dos bot&otilde;es da tela de visualizar agendamento</p>", "17", "N", "2019-07-24 12:18:17", "2019-07-24 12:18:17");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("5", "5"_restante, "2019-07-24 12:18:17", "203");

INSERT INTO TB_HISTORIA (ds_titulo, ds_observacao, co_sessao, st_situacao, dt_atualizado, dt_cadastro) VALUES ("Botão Finalizar agendamento", "<p>Realizar a finaliza&ccedil;&atilde;o do agendamento</p>", "17", "N", "2019-07-25 13:10:27", "2019-07-25 13:10:27");

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-25 13:10:27", "204");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-25 13:14:26", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("9", "2019-07-25 13:14:26", "2", "2019-07-25 09:30:00", "2019-07-25 09:40:00", "39.99", "10", "iuluilui", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("122", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("78", "122", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("78", "122", "19", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("9", "2019-07-25 13:28:49", "7", "2019-07-25 09:30:00", "2019-07-25 09:40:00", "39.99", "10", "iuluilui", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("123", "30", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("79", "123", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("79", "123", "19", "2");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-25 13:30:20", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("10", "2019-07-25 13:30:20", "3", "2019-07-25 12:10:00", "2019-07-25 12:20:00", "39.99", "10", " fgqerqgqre", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("124", "30", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("80", "124", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("80", "124", "19", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("10", "2019-07-25 13:30:59", "7", "2019-07-25 12:10:00", "2019-07-25 12:20:00", "39.99", "10", " fgqerqgqre", "8", "3");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("125", "30", "3");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("81", "125", "9", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("81", "125", "19", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Botão Finalizar agendamento", ds_observacao = "<p>Realizar a finaliza&ccedil;&atilde;o do agendamento</p>", co_sessao = "17", st_situacao = "C", dt_atualizado = "2019-07-25 13:55:40" where co_historia = 204;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-07-25 13:55:40", "204");

INSERT INTO TB_AGENDA (dt_cadastro, co_assinante) VALUES ("2019-07-25 14:01:49", "11");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("11", "2019-07-25 14:01:49", "1", "2019-07-25 11:50:00", "2019-07-25 12:50:00", "39.90", "60", " gerg r43 ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("126", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("82", "126", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("82", "126", "15", "2");

INSERT INTO TB_STATUS_AGENDA (co_agenda, dt_cadastro, st_status, dt_inicio_agenda, dt_fim_agenda, nu_valor, nu_duracao, ds_observacao, co_usuario, co_cliente) VALUES ("11", "2019-07-25 14:03:59", "3", "2019-07-25 11:50:00", "2019-07-25 12:50:00", "39.90", "60", " gerg r43 ", "8", "2");

INSERT INTO TB_STATUS_AGENDA_SERVICO (co_status_agenda, co_servico, st_status) VALUES ("127", "24", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("83", "127", "15", "1");

INSERT INTO TB_STATUS_AGENDA_PROFISSIONAL (co_status_agenda_servico, co_status_agenda, co_profissional, tp_profissional) VALUES ("83", "127", "15", "2");

UPDATE TB_HISTORIA SET ds_titulo = "Validações dos botões", ds_observacao = "<p>Valida&ccedil;&otilde;es dos bot&otilde;es da tela de visualizar agendamento</p>", co_sessao = "17", st_situacao = "C", dt_atualizado = "2019-07-25 14:05:45" where co_historia = 203;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("3", "3"_restante, "2019-07-25 14:05:45", "203");

INSERT INTO TB_HISTORICO_COMISSAO (co_config_comissao, st_taxa_antecipacao, st_taxa_administrativa, st_taxa_cartao_credito, st_taxa_cartao_debito, st_recebimento_pre_venda, nu_forma_comissao, dt_valido, dt_cadastro, co_usuario) VALUES ("1", "N", "S", "S", "S", "S", "4", "2019-07-25", "2019-07-25 14:13:51", "8");

INSERT INTO TB_PERCENTUAL_COMISSAO (dt_cadastro, dt_atualizado, co_historico_comissao, nu_tipo_comissao, nu_comissao) VALUES ("2019-07-25 14:13:51", "2019-07-25 14:13:51", "19", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (dt_cadastro, dt_atualizado, co_historico_comissao, nu_tipo_comissao, nu_comissao) VALUES ("2019-07-25 14:13:51", "2019-07-25 14:13:51", "19", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (dt_cadastro, dt_atualizado, co_historico_comissao, nu_tipo_comissao, nu_comissao) VALUES ("2019-07-25 14:13:51", "2019-07-25 14:13:51", "19", "3", "10");

UPDATE TB_PROFISSIONAL SET st_status = "I", ds_motivo = "ytj ytjyt j" where co_profissional = 18;

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "21");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("62", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("62", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("62", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("63", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("63", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("63", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "19");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("64", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("64", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("64", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("65", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("65", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("65", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "15");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("66", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("66", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("66", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("67", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("67", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("67", "2019-07-25 14:20:20", "2019-07-25 14:20:20", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "21");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "3", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "19");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "1", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "2", "0");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "3", "0");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "3", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "15");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:36:55", "2019-07-25 14:36:55", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 68;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 69;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 70;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 71;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "1", "45");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "2", "35");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "3", "25");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 72;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 73;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:41:23", "2019-07-25 14:41:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 68;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("68", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 69;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("69", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 70;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("70", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 71;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "1", "45");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "2", "35");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "3", "25");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 72;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("72", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 73;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:47:17", "2019-07-25 14:47:17", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "41", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "30", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "31", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "22", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "23", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "24", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "25", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "21", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "19", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "20", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "18", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "14", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "15", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "16", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("87", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("87", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("87", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "16", co_profissional = "16" where co_servico_profissional = 71;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "45");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "35");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "25");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "4", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "5", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("89", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("89", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("89", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "7", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("90", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("90", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("90", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "8", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("91", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("91", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("91", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "11", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("92", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("92", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("92", "2019-07-25 14:54:34", "2019-07-25 14:54:34", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "41", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "30", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "31", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "22", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "23", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "24", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "25", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "21", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "19", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "20", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 14:55:13", "2019-07-25 14:55:13", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "18", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "14", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "15", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "16", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("106", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("106", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("106", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "16", co_profissional = "9" where co_servico_profissional = 73;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "4", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "5", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("108", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("108", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("108", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "7", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("109", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("109", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("109", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "8", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("110", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("110", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("110", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "11", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("111", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("111", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("111", "2019-07-25 14:55:14", "2019-07-25 14:55:14", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 74;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 75;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 76;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 77;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 78;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 79;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 80;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 81;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 82;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 83;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 84;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 85;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 86;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 71;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "3", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("112", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("112", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("112", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "3", co_profissional = "16" where co_servico_profissional = 88;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "3", co_profissional = "16" where co_servico_profissional = 89;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("89", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("89", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("89", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "3", co_profissional = "16" where co_servico_profissional = 90;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("90", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("90", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("90", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "3", co_profissional = "16" where co_servico_profissional = 91;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("91", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("91", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("91", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N", co_servico = "3", co_profissional = "16" where co_servico_profissional = 92;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("92", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("92", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("92", "2019-07-25 14:56:58", "2019-07-25 14:56:58", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 74;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 75;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 76;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 77;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 78;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 79;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 80;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 81;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 82;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 83;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 84;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 85;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 86;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 71;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "N" where co_servico_profissional = 88;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "4", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("113", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("113", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("113", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "5", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("114", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("114", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("114", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "7", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("115", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("115", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("115", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "8", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("116", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("116", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("116", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("N", "11", "16");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("117", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("117", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("117", "2019-07-25 15:04:38", "2019-07-25 15:04:38", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 74;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("74", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 75;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("75", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 76;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("76", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 77;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("77", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 78;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("78", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 79;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("79", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 80;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("80", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 81;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("81", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 82;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("82", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 83;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("83", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 84;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("84", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 85;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("85", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 86;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("86", "2019-07-25 15:04:59", "2019-07-25 15:04:59", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 71;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("71", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 88;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("88", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 113;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("113", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("113", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("113", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 114;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("114", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("114", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("114", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 115;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("115", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("115", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("115", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 116;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("116", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("116", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("116", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 117;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("117", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("117", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("117", "2019-07-25 15:05:00", "2019-07-25 15:05:00", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 93;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 94;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 95;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 96;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 97;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 98;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 99;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 100;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 101;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 102;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 103;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 104;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 105;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 73;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "3", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("118", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("118", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("118", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "3", co_profissional = "9" where co_servico_profissional = 107;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "3", co_profissional = "9" where co_servico_profissional = 108;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("108", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("108", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("108", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "3", co_profissional = "9" where co_servico_profissional = 109;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("109", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("109", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("109", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "3", co_profissional = "9" where co_servico_profissional = 110;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("110", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("110", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("110", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S", co_servico = "3", co_profissional = "9" where co_servico_profissional = 111;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("111", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("111", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("111", "2019-07-25 15:05:23", "2019-07-25 15:05:23", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 93;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("93", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 94;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("94", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 95;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("95", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 96;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("96", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 97;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("97", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 98;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("98", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 99;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("99", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 100;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("100", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 101;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("101", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 102;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("102", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 103;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("103", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 104;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("104", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 105;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("105", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 73;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("73", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

UPDATE TB_SERVICO_PROFISSIONAL SET st_status = "S" where co_servico_profissional = 107;

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("107", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "4", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("119", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("119", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("119", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "5", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("120", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("120", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("120", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "7", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("121", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("121", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("121", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "8", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("122", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("122", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("122", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

INSERT INTO TB_SERVICO_PROFISSIONAL (st_status, co_servico, co_profissional) VALUES ("S", "11", "9");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("123", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("123", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico_profissional, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("123", "2019-07-25 15:06:08", "2019-07-25 15:06:08", "3", "10");

INSERT INTO TB_HISTORICO_COMISSAO (co_config_comissao, st_taxa_antecipacao, st_taxa_administrativa, st_taxa_cartao_credito, st_taxa_cartao_debito, st_recebimento_pre_venda, nu_forma_comissao, dt_valido, dt_cadastro, co_usuario) VALUES ("1", "N", "S", "S", "S", "S", "2", "2019-07-25", "2019-07-25 15:06:35", "8");

INSERT INTO TB_PERCENTUAL_COMISSAO (dt_cadastro, dt_atualizado, co_historico_comissao, nu_tipo_comissao, nu_comissao) VALUES ("2019-07-25 15:06:35", "2019-07-25 15:06:35", "20", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (dt_cadastro, dt_atualizado, co_historico_comissao, nu_tipo_comissao, nu_comissao) VALUES ("2019-07-25 15:06:35", "2019-07-25 15:06:35", "20", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (dt_cadastro, dt_atualizado, co_historico_comissao, nu_tipo_comissao, nu_comissao) VALUES ("2019-07-25 15:06:35", "2019-07-25 15:06:35", "20", "3", "10");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("3", "2019-07-25 15:08:46", "2019-07-25 15:08:46", "1", "30");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("3", "2019-07-25 15:08:46", "2019-07-25 15:08:46", "2", "20");

INSERT INTO TB_PERCENTUAL_COMISSAO (co_servico, dt_cadastro, dt_atualizado, nu_tipo_comissao, nu_comissao) VALUES ("3", "2019-07-25 15:08:46", "2019-07-25 15:08:46", "3", "10");

