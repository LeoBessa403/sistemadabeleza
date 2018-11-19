<?php

/**
 * Constantes.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2018, Leo Bessa
 */

// CONSTANTES
define('CO_EMPRESA', 'co_empresa');
define('NO_EMPRESA', 'no_empresa');
define('NO_FANTASIA', 'no_fantasia');
define('NU_CNPJ', 'nu_cnpj');
define('NU_INSC_ESTADUAL', 'nu_insc_estadual');
define('DS_OBSERVACAO', 'ds_observacao');
define('CO_MODULO', 'co_modulo');
define('NO_MODULO', 'no_modulo');
define('DT_LANCAMENTO', 'dt_lancamento');
define('CO_PLANO', 'co_plano');
define('NO_PLANO', 'no_plano');
define('NU_MES_ATIVO', 'nu_mes_ativo');
define('CO_PLANO_ASSINANTE', 'co_plano_assinante');
define('NU_VALOR', 'nu_valor');
define('CO_PLANO_MODULO', 'co_plano_modulo');
define('CO_PLANO_ASSINANTE_ASSINATURA', 'co_plano_assinante_assinatura');
define('DT_EXPIRACAO', 'dt_expiracao');
define('NU_VALOR_ASSINATURA', 'nu_valor_assinatura');
define('NU_PROFISSIONAIS', 'nu_profissionais');
define('CO_ASSINANTE', 'co_assinante');
define('CO_ASSINANTE_MATRIZ', 'co_assinante_matriz');
define('CO_ASSINANTE_FILIAL', 'co_assinante_filial');
define('TP_ASSINANTE', 'tp_assinante');
define('NU_FILIAIS', 'nu_filiais');
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
define('CO_IMAGEM_ASSINANTE', 'co_imagem_assinante');
define('CO_DIA_ESPECIAL', 'co_dia_especial');
define('DT_DIA', 'dt_dia');
define('DS_MOTIVO', 'ds_motivo');
define('CO_FERIADO', 'co_feriado');
define('DT_FERIADO', 'dt_feriado');
define('CO_BANDEIRA_CARTAO', 'co_bandeira_cartao');
define('NO_BANDEIRA_CARTAO', 'no_bandeira_cartao');
define('CO_TAXA_CARTAO', 'co_taxa_cartao');
define('NU_TAXA_CARTAO', 'nu_taxa_cartao');
define('NU_TAXA_ANTECIPACAO', 'nu_taxa_antecipacao');
define('CO_PAGAMENTO_BANDEIRA_CARTAO', 'co_pagamento_bandeira_cartao');
define('CO_CONFIG_AGENDAMENTO', 'co_config_agendamento');
define('ST_AGENDAMENTO_SITE', 'st_agendamento_site');
define('NU_INTERVALO', 'nu_intervalo');
define('ST_STATUS_AGENDAMENTO_SITE', 'st_status_agendamento_site');
define('NU_ANTECEDENCIA_AGENDAMENTO', 'nu_antecedencia_agendamento');
define('ST_RECEBER_EMAIL_AGENDAMENTO', 'st_receber_email_agendamento');
define('ST_ENVIAR_EMAIL_CONFIRMACAO', 'st_enviar_email_confirmacao');


// SERVICES
define('EMPRESA_SERVICE', 'EmpresaService');
define('MODULO_SERVICE', 'ModuloService');
define('PLANO_SERVICE', 'PlanoService');
define('PLANO_ASSINANTE_SERVICE', 'PlanoAssinanteService');
define('PLANO_MODULO_SERVICE', 'PlanoModuloService');
define('PLANO_ASSINANTE_ASSINATURA_SERVICE', 'PlanoAssinanteAssinaturaService');
define('ASSINANTE_SERVICE', 'AssinanteService');
define('ASSINANTE_MATRIZ_SERVICE', 'AssinanteMatrizService');
define('ASSINANTE_FILIAL_SERVICE', 'AssinanteFilialService');
define('TIPO_PAGAMENTO_SERVICE', 'TipoPagamentoService');
define('FACILIDADE_PAGAMENTO_SERVICE', 'FacilidadePagamentoService');
define('FACILIDADE_BENEFICIO_SERVICE', 'FacilidadeBeneficioService');
define('FUNCIONAMENTO_SERVICE', 'FuncionamentoService');
define('IMAGEM_ASSINANTE_SERVICE', 'ImagemAssinanteService');
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
