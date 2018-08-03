<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class UsuarioEntidadeExtends extends AbstractEntidade
{
    private $co_assinante;

    /**
     * @return AssinanteEntidade $co_assinante
     */
    public function getCoAssinante()
    {
        return $this->co_assinante;
    }

    /**
     * @param $co_assinante
     * @return mixed
     */
    public function setCoAssinante($co_assinante)
    {
        return $this->co_assinante = $co_assinante;
    }

}