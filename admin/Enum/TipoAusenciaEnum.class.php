<?php

/**
 * Class TipoAusencia
 */
class TipoAusenciaEnum extends AbstractEnum
{
    const ALMOCO = 1;
    const AUSENCIA_MEDICA = 2;
    const FALTA = 3;
    const FERIAS = 4;
    const FOLGA = 5;
    const LANCHE = 6;
    const ESTUDO = 7;
    const OUTROS = 8;

    public static $descricao = [
        TipoAusenciaEnum::ALMOCO => 'Almo�o',
        TipoAusenciaEnum::AUSENCIA_MEDICA => 'Aus�ncia M�dica',
        TipoAusenciaEnum::FALTA => 'Falta',
        TipoAusenciaEnum::FERIAS => 'F�rias',
        TipoAusenciaEnum::FOLGA => 'Falga',
        TipoAusenciaEnum::LANCHE => 'Lanche',
        TipoAusenciaEnum::ESTUDO => 'Estudos',
        TipoAusenciaEnum::OUTROS => 'Outros',
    ];
}
