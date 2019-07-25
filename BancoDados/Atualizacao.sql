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

