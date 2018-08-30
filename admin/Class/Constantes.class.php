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
    define('NU_ESTABELECIMENTO', 'nu_estabelecimento');
    define('NU_ATENDIMENTO', 'nu_atendimento');
    define('NU_GENERO_ESPECIALIZADO', 'nu_genero_especializado');
    define('NU_ESTACIONAMENTO', 'nu_estacionamento');
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
