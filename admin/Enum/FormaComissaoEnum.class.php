<?php

/**
 * Class FomraComissaoEnum
 */
class FomraComissaoEnum extends AbstractEnum
{
    const GERAL = 1;
    const SERVICO = 2;
    const PROFISSIONAL = 3;
    const SERVICO_PROFISSIONAL = 4;

    public static $descricao = [
        FomraComissaoEnum::GERAL => 'Geral',
        FomraComissaoEnum::SERVICO => 'Por Serviço',
        FomraComissaoEnum::PROFISSIONAL => 'Por Profissional',
        FomraComissaoEnum::SERVICO_PROFISSIONAL => 'Por Serviço/Profissional',
    ];
}
