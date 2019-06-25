<?php

/**
 * Class TipoPagamento
 */
class StatusCortesiaEnum extends AbstractEnum
{
    const ATIVA = 1;
    const INATIVA = 2;
    const VENCIDA = 3;
    const AGENDADA = 4;
    const AGUARDANDO = 5;
    const EM_ATENDIMENTO = 6;
    const CANCELADA = 7;
    const FALTOU = 8;
    const FINALIZADA = 9;

    public static $descricao = [
        StatusCortesiaEnum::ATIVA => 'Ativa',
        StatusCortesiaEnum::INATIVA => 'Inativa',
        StatusCortesiaEnum::VENCIDA => 'Vencida',
        StatusCortesiaEnum::AGENDADA => 'Agendada',
        StatusCortesiaEnum::AGUARDANDO => 'Aguardando',
        StatusCortesiaEnum::EM_ATENDIMENTO => 'Em Atendimento',
        StatusCortesiaEnum::CANCELADA => 'Cancelada',
        StatusCortesiaEnum::FALTOU => 'Faltou',
        StatusCortesiaEnum::FINALIZADA => 'Finalizada',
    ];
}
