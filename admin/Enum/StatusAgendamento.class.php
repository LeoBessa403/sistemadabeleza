<?php

/**
 * Class FuncionamentoEnum
 */
class StatusAgendamento extends AbstractEnum
{
    const AGENDADO = 1;
    const CONFIRMADO = 2;
    const AGUARDANDO = 3;
    const EM_ATENDIMENTO = 4;
    const CANCELADO = 5;
    const FALTOU = 6;
    const FINALIZADO = 7;

    public static $descricao = [
        StatusAgendamento::AGENDADO => 'Agendado',
        StatusAgendamento::CONFIRMADO => 'Confirmado',
        StatusAgendamento::AGUARDANDO => 'Aguardando',
        StatusAgendamento::EM_ATENDIMENTO => 'Em Atendimento',
        StatusAgendamento::CANCELADO => 'Cancelado',
        StatusAgendamento::FALTOU => 'Faltou',
        StatusAgendamento::FINALIZADO => 'Finalizado',
    ];
}
