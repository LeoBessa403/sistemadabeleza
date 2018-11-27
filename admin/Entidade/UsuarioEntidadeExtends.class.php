<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class UsuarioEntidadeExtends extends AbstractEntidade
{
    private $co_assinante;
    private $co_profissional;

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

    /**
     * @return ProfissionalEntidade $co_profissional
     */
    public function getCoProfissional()
    {
        return $this->co_profissional;
    }

    /**
     * @param $co_profissional
     * @return mixed
     */
    public function setCoProfissional($co_profissional)
    {
        $this->co_profissional = $co_profissional;
    }

}