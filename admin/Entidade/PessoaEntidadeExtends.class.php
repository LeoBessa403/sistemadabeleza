<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class PessoaEntidadeExtends extends AbstractEntidade
{
    private $co_empresa;
    private $co_imagem;
    private $co_assinante;


    /**
     * @return EmpresaEntidade $co_empresa
     */
    public function getCoEmpresa()
    {
        return $this->co_empresa;
    }

    /**
     * @param $co_empresa
     * @return mixed
     */
    public function setCoEmpresa($co_empresa)
    {
        return $this->co_empresa = $co_empresa;
    }

    /**
     * @return ImagemEntidade $co_imagem
     */
    public function getCoImagem()
    {
        return $this->co_imagem;
    }

    /**
     * @param $co_imagem
     * @return mixed
     */
    public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
    }

    /**
     * @return mixed
     */
    public function getCoAssinante()
    {
        return $this->co_assinante;
    }

    /**
     * @param mixed $co_assinante
     */
    public function setCoAssinante($co_assinante)
    {
        $this->co_assinante = $co_assinante;
    }

}