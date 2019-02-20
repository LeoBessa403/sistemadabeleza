<?php

/**
 * Constantes.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2018, Leo Bessa
 */

// CONSTANTES
define('CO_TIPO_PAGAMENTO', 'co_tipo_pagamento');
define('NO_TIPO_PAGAMENTO', 'no_tipo_pagamento');
define('CO_FACILIDADE_PAGAMENTO', 'co_facilidade_pagamento');
define('CO_FACILIDADE_BENEFICIO', 'co_facilidade_beneficio');
define('TP_ESTABELECIMENTO', 'tp_estabelecimento');
define('TP_ATENDIMENTO', 'tp_atendimento');
define('TP_GENERO_ESPECIALIZADO', 'tp_genero_especializado');
define('TP_ESTACIONAMENTO', 'tp_estacionamento');
define('ST_LANCHONETE', 'st_lanchonete');
define('ST_TELEVISAO', 'st_televisao');
define('ST_WIFI', 'st_wifi');
define('ST_ACESSO_DEFICIENTE', 'st_acesso_deficiente');
define('ST_JOGOS', 'st_jogos');
define('CO_FUNCIONAMENTO', 'co_funcionamento');
define('NU_DIA_SEMANA', 'nu_dia_semana');
define('NU_HORA_ABERTURA', 'nu_hora_abertura');
define('NU_HORA_FECHAMENTO', 'nu_hora_fechamento');
define('NU_ALMOCO_INICIO', 'nu_almoco_inicio');
define('NU_ALMOCO_FINAL', 'nu_almoco_final');
define('NU_INTERVALO_INICIO', 'nu_intervalo_inicio');
define('NU_INTERVALO_FINAL', 'nu_intervalo_final');
define('CO_IMAGEM_ASSINANTE', 'co_imagem_assinante');
define('CO_DIA_ESPECIAL', 'co_dia_especial');
define('DT_DIA', 'dt_dia');
define('DS_MOTIVO', 'ds_motivo');
define('CO_FERIADO', 'co_feriado');
define('DT_FERIADO', 'dt_feriado');
define('CO_BANDEIRA_CARTAO', 'co_bandeira_cartao');
define('NO_BANDEIRA_CARTAO', 'no_bandeira_cartao');
define('CO_TAXA_CARTAO', 'NU_INTERVALO_FINAL');
define('NU_TAXA_CARTAO', 'nu_taxa_cartao');
define('NU_TAXA_ANTECIPACAO', 'nu_taxa_antecipacao');
define('CO_PAGAMENTO_BANDEIRA_CARTAO', 'co_pagamento_bandeira_cartao');
define('CO_CONFIG_AGENDAMENTO', 'co_config_agendamento');
define('NU_INTERVALO', 'nu_intervalo');
define('ST_STATUS_AGENDAMENTO_SITE', 'st_status_agendamento_site');
define('NU_ANTECEDENCIA_AGENDAMENTO', 'nu_antecedencia_agendamento');
define('ST_RECEBER_EMAIL_AGENDAMENTO', 'st_receber_email_agendamento');
define('ST_ENVIAR_EMAIL_CONFIRMACAO', 'st_enviar_email_confirmacao');
define('CO_MOTIVO_DESCONTO', 'co_motivo_desconto');
define('DS_MOTIVO_DESCONTO', 'ds_motivo_desconto');
define('CO_MOTIVO_DESCONTO_ASSINANTE', 'co_motivo_desconto_assinante');
define('ST_STATUS_DESCONTO', 'st_status_desconto');
define('ST_REFLETE_DESCONTO_COMISSAO', 'st_reflete_desconto_comissao');
define('CO_CARGO', 'co_cargo');
define('NO_CARGO', 'no_cargo');
define('CO_PROFISSIONAL_CARGO', 'co_profissional_cargo');
define('CO_PROFISSIONAL', 'co_profissional');
define('DS_COR_AGENDA', 'ds_cor_agenda');
define('ST_ASSISTENTE', 'st_assistente');
define('DS_SOBRE', 'ds_sobre');
define('NO_APELIDO', 'no_apelido');
define('ST_AGENDA', 'st_agenda');
define('ST_AGENDA_ONLINE', 'st_agenda_online');
define('NU_ORDEM_AGENDA', 'nu_ordem_agenda');
define('TP_CONTRATACAO', 'tp_contratacao');
define('DT_ADMISSAO', 'dt_admissao');
define('DT_DEMISSAO', 'dt_demissao');
define('CO_CONTA_BANCARIA', 'co_conta_bancaria');
define('NU_AGENCIA', 'nu_agencia');
define('NU_CONTA', 'nu_conta');
define('NU_BANCO', 'nu_banco');
define('TP_CONTA', 'tp_conta');
define('CO_JORNADA_TRABALHO', 'co_jornada_trabalho');
define('CO_BANCO', 'co_banco');
define('NO_BANCO', 'no_banco');
define('CO_AUSENCIA', 'co_ausencia');
define('DT_INICIO', 'dt_inicio');
define('DT_FIM', 'dt_fim');
define('TP_AUSENCIA', 'tp_ausencia');
define('CO_CLIENTE', 'co_cliente');
define('ST_LEMBRETE_HORARIO_AGENDAMENTO', 'st_lembrete_horario_agendamento');
define('ST_SMS_MARKETING', 'st_sms_marketing');
define('ST_EMAIL_MARKETING', 'st_email_marketing');
define('NU_COMO_CONHECEU', 'nu_como_conheceu');
define('CO_CONFIG_PROFISSIONAL', 'co_config_profissional');
define('ST_RECEBE_EMAIL_FATURAMENTO', 'st_recebe_email_faturamento');
define('NU_PERIODO_AGENDA', 'nu_periodo_agenda');
define('ST_EDICAO_SERVICOS', 'st_edicao_servicos');
define('ST_EDICAO_ATENDIMENTO', 'st_edicao_atendimento');
define('CO_CATEGORIA_SERVICO', 'co_categoria_servico');
define('NO_CATEGORIA_SERVICO', 'no_categoria_servico');



// SERVICES
define('TIPO_PAGAMENTO_SERVICE', 'TipoPagamentoService');
define('FACILIDADE_PAGAMENTO_SERVICE', 'FacilidadePagamentoService');
define('FACILIDADE_BENEFICIO_SERVICE', 'FacilidadeBeneficioService');
define('FUNCIONAMENTO_SERVICE', 'FuncionamentoService');
define('DIA_ESPECIAL_SERVICE', 'DiaEspecialService');
define('FERIADO_SERVICE', 'FeriadoService');
define('BANDEIRA_CARTAO_SERVICE', 'BandeiraCartaoService');
define('TAXA_CARTAO_SERVICE', 'TaxaCartaoService');
define('PAGAMENTO_BANDEIRA_CARTAO_SERVICE', 'PagamentoBandeiraCartaoService');
define('CO_CONFIG_CLIENTE', 'co_config_cliente');
define('ST_MARCA_SERVICO', 'st_marca_servico');
define('NU_AUSENCIA', 'nu_ausencia');
define('CONFIG_CLIENTE_SERVICE', 'ConfigClienteService');
define('CONFIG_AGENDAMENTO_SERVICE', 'ConfigAgendamentoService');
define('MOTIVO_DESCONTO_SERVICE', 'MotivoDescontoService');
define('MOTIVO_DESCONTO_ASSINANTE_SERVICE', 'MotivoDescontoAssinanteService');
define('CARGO_SERVICE', 'CargoService');
define('PROFISSIONAL_CARGO_SERVICE', 'ProfissionalCargoService');
define('PROFISSIONAL_SERVICE', 'ProfissionalService');
define('CONTA_BANCARIA_SERVICE', 'ContaBancariaService');
define('JORNADA_TRABALHO_SERVICE', 'JornadaTrabalhoService');
define('BANCO_SERVICE', 'BancoService');
define('AUSENCIA_SERVICE', 'AusenciaService');
define('CLIENTE_SERVICE', 'ClienteService');
define('CONFIG_PROFISSIONAL_SERVICE', 'ConfigProfissionalService');
define('CATEGORIA_SERVICO_SERVICE', 'CategoriaServicoService');
