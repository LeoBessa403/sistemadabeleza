<?php

/**
 * Assinante.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AssinanteEntidade extends AbstractEntidade
{
    const TABELA = 'TB_ASSINANTE';
    const ENTIDADE = 'AssinanteEntidade';
    const CHAVE = CO_ASSINANTE;

    private $co_assinante;
    private $dt_cadastro;
    private $dt_expiracao;
    private $st_status;
    private $tp_assinante;
    private $co_empresa;
    private $co_pessoa;
    private $co_plano_assinante_assinatura;
    private $co_assinante_matriz;
    private $co_assinante_filial;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_ASSINANTE,
            DT_CADASTRO,
            DT_EXPIRACAO,
            ST_STATUS,
            TP_ASSINANTE,
            CO_EMPRESA,
            CO_PESSOA,
        ];
    }

    /**
     * @return array $relacionamentos
     */
    public static function getRelacionamentos()
    {
        $relacionamentos = Relacionamentos::getRelacionamentos();
        return $relacionamentos[static::TABELA];
    }


    /**
     * @return int $co_assinante
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
     * @return mixed $dt_cadastro
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param $dt_cadastro
     * @return mixed
     */
    public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

    /**
     * @return mixed $dt_expiracao
     */
    public function getDtExpiracao()
    {
        return $this->dt_expiracao;
    }

    /**
     * @param $dt_expiracao
     * @return mixed
     */
    public function setDtExpiracao($dt_expiracao)
    {
        return $this->dt_expiracao = $dt_expiracao;
    }

    /**
     * @return mixed $st_status
     */
    public function getStStatus()
    {
        return $this->st_status;
    }

    /**
     * @param $st_status
     * @return mixed
     */
    public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
    }

    /**
     * @return mixed
     */
    public function getTpAssinante()
    {
        return $this->tp_assinante;
    }

    /**
     * @param mixed $tp_assinante
     */
    public function setTpAssinante($tp_assinante)
    {
        $this->tp_assinante = $tp_assinante;
    }

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
     * @return PessoaEntidade $co_pessoa
     */
    public function getCoPessoa()
    {
        return $this->co_pessoa;
    }

    /**
     * @param $co_pessoa
     * @return mixed
     */
    public function setCoPessoa($co_pessoa)
    {
        return $this->co_pessoa = $co_pessoa;
    }

    /**
     * @return PlanoAssinanteAssinaturaEntidade $co_plano_assinante_assinatura
     */
    public function getCoPlanoAssinanteAssinatura()
    {
        return $this->co_plano_assinante_assinatura;
    }

    /**
     * @param $co_plano_assinante_assinatura
     * @return mixed
     */
    public function setCoPlanoAssinanteAssinatura($co_plano_assinante_assinatura)
    {
        return $this->co_plano_assinante_assinatura = $co_plano_assinante_assinatura;
    }

    /**
     * @return AssinanteMatrizEntidade $co_assinante_matriz
     */
    public function getCoAssinanteMatriz()
    {
        return $this->co_assinante_matriz;
    }

    /**
     * @param $co_assinante_matriz
     * @return mixed
     */
    public function setCoAssinanteMatriz($co_assinante_matriz)
    {
        $this->co_assinante_matriz = $co_assinante_matriz;
    }

    /**
     * @return AssinanteFilialEntidade $co_assinante_filial
     */
    public function getCoAssinanteFilial()
    {
        return $this->co_assinante_filial;
    }

    /**
     * @param $co_assinante_filial
     * @return mixed
     */
    public function setCoAssinanteFilial($co_assinante_filial)
    {
        $this->co_assinante_filial = $co_assinante_filial;
    }

}