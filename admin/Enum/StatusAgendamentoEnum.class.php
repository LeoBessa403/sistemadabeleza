<?php

/**
 * Class FuncionamentoEnum
 */
class StatusAgendamentoEnum extends AbstractEnum
{
    const AGENDADO = 1;
    const AGUARDANDO = 2;
    const CONFIRMADO = 3;
    const EM_ATENDIMENTO = 4;
    const CANCELADO = 5;
    const FALTOU = 6;
    const FINALIZADO = 7;

    public static $descricao = [
        StatusAgendamentoEnum::AGENDADO => 'Agendado',
        StatusAgendamentoEnum::AGUARDANDO => 'Aguardando',
        StatusAgendamentoEnum::CONFIRMADO => 'Confirmado',
        StatusAgendamentoEnum::EM_ATENDIMENTO => 'Em Atendimento',
        StatusAgendamentoEnum::CANCELADO => 'Cancelado',
        StatusAgendamentoEnum::FALTOU => 'Faltou',
        StatusAgendamentoEnum::FINALIZADO => 'Finalizado',
    ];
}
