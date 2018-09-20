<?php

/**
 * Class FuncionamentoEnum
 */
class DiasEnum extends AbstractEnum
{
    const SEGUNDA= 1;
    const TERCA = 2;
    const QUARTA = 3;
    const QUINTA = 4;
    const SEXTA = 5;
    const SABADO = 6;
    const DOMINGO = 7;
    const FERIADO = 8;

    public static $descricao = [
        DiasEnum::SEGUNDA => 'Segunda',
        DiasEnum::TERCA => 'Terça',
        DiasEnum::QUARTA => 'Quarta',
        DiasEnum::QUINTA => 'Quinta',
        DiasEnum::SEXTA => 'Sexta',
        DiasEnum::SABADO => 'Sábado',
        DiasEnum::DOMINGO => 'Domingo',
        DiasEnum::FERIADO => 'Feriado',
    ];
}
