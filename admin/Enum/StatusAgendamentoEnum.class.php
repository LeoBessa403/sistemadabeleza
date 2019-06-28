<?php

/**
 * Class TipoPagamento
 */
class StatusAgendamentoEnum extends AbstractEnum
{
    const AGENDADO = 1;
    const CONFIRMADO  = 2;
    const AGUARDANDO = 3;
    const EM_ATENDIMENTO = 4;
    const CANCELADO = 5;
    const FALTOU = 6;
    const FINALIZADO = 7;

    public static $descricao = [
        StatusAgendamentoEnum::AGENDADO => 'Agendado',
        StatusAgendamentoEnum::CONFIRMADO => 'Confirmado',
        StatusAgendamentoEnum::AGUARDANDO => 'Aguardando',
        StatusAgendamentoEnum::EM_ATENDIMENTO => 'Em Atendimento',
        StatusAgendamentoEnum::CANCELADO => 'Cancelado',
        StatusAgendamentoEnum::FALTOU => 'Faltou',
        StatusAgendamentoEnum::FINALIZADO => 'Finalizado',
    ];

    public static $cores = [
        StatusAgendamentoEnum::AGENDADO => 'success',
        StatusAgendamentoEnum::CONFIRMADO => 'teal',
        StatusAgendamentoEnum::AGUARDANDO => 'info',
        StatusAgendamentoEnum::EM_ATENDIMENTO => 'teal',
        StatusAgendamentoEnum::CANCELADO => 'danger',
        StatusAgendamentoEnum::FALTOU => 'black',
        StatusAgendamentoEnum::FINALIZADO => 'green',
    ];
}
