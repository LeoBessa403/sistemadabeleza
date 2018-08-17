<?php

/**
 * Class TipoPagamento
 */
class StatusSistemaEnum extends AbstractEnum
{
    const ATIVO = 'A';
    const EXPIRANDO = 'E';
    const PENDENTE = 'P';
    const BLOQUEADO = 'B';

    public static $descricao = [
        StatusSistemaEnum::ATIVO => 'Ativo',
        StatusSistemaEnum::EXPIRANDO => 'Expirando',
        StatusSistemaEnum::PENDENTE => 'Pendente',
        StatusSistemaEnum::BLOQUEADO => 'Bloqueado'
    ];
}
