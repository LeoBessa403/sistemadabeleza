<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class UsuarioEntidadeExtends extends AbstractEntidade
{

    private $co_profissional;
    private $co_ausencia;
    private $co_preco_pacote;

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

    /**
     * @return AusenciaEntidade $co_ausencia
     */
    public function getCoAusencia()
    {
        return $this->co_ausencia;
    }

    /**
     * @param mixed $co_ausencia
     */
    public function setCoAusencia($co_ausencia)
    {
        $this->co_ausencia = $co_ausencia;
    }

    /**
     * @return PrecoPacoteEntidade $co_preco_pacote
     */
    public function getCoPrecoPacote()
    {
        return $this->co_preco_pacote;
    }

    /**
     * @param mixed $co_preco_pacote
     */
    public function setCoPrecoPacote($co_preco_pacote)
    {
        $this->co_preco_pacote = $co_preco_pacote;
    }

}