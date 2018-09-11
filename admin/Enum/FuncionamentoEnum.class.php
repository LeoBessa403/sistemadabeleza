<?php

/**
 * Class FuncionamentoEnum
 */
class FuncionamentoEnum extends AbstractEnum
{
    const SEG_SEG = 1;
    const SEG_SEX = 2;
    const SEG_SAB = 3;
    const SAB_DOM_FER = 4;
    const SAB_DOM = 5;
    const DOM_FER = 6;
    const SABADO = 7;
    const DOMINGO = 8;
    const FERIADO = 9;

    public static $descricao = [
        FuncionamentoEnum::SEG_SEG => 'Segunda a Segunda',
        FuncionamentoEnum::SEG_SEX => 'Segunda a Sexta',
        FuncionamentoEnum::SEG_SAB => 'Segunda a Sábado',
        FuncionamentoEnum::SAB_DOM_FER => 'Sábado, Domingo e Feriado',
        FuncionamentoEnum::SAB_DOM => 'Sábado e Domingo',
        FuncionamentoEnum::DOM_FER => 'Domingo e Feriado',
        FuncionamentoEnum::SABADO => 'Sábado',
        FuncionamentoEnum::DOMINGO => 'Domingo',
        FuncionamentoEnum::FERIADO => 'Feriado',
    ];
}
