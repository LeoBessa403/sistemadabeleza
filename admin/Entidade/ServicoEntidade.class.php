<?php

/**
 * Servico.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class ServicoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_SERVICO';
	const ENTIDADE = 'ServicoEntidade';
	const CHAVE = CO_SERVICO;

	private $co_servico;
	private $dt_cadastro;
	private $st_status;
	private $no_servico;
	private $nu_duracao;
	private $ds_descricao;
	private $co_categoria_servico;
	private $co_preco_servico;
    private $co_imagem;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_SERVICO,
			DT_CADASTRO,
			ST_STATUS,
			NO_SERVICO,
			NU_DURACAO,
			DS_DESCRICAO,
			CO_CATEGORIA_SERVICO,
			CO_IMAGEM,
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
	* @return int $co_servico
    */
	public function getCoServico()
    {
        return $this->co_servico;
    }

	/**
	* @param $co_servico
    * @return mixed
    */
	public function setCoServico($co_servico)
    {
        return $this->co_servico = $co_servico;
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
	* @return mixed $no_servico
    */
	public function getNoServico()
    {
        return $this->no_servico;
    }

	/**
	* @param $no_servico
    * @return mixed
    */
	public function setNoServico($no_servico)
    {
        return $this->no_servico = $no_servico;
    }

	/**
	* @return mixed $nu_duracao
    */
	public function getNuDuracao()
    {
        return $this->nu_duracao;
    }

	/**
	* @param $nu_duracao
    * @return mixed
    */
	public function setNuDuracao($nu_duracao)
    {
        return $this->nu_duracao = $nu_duracao;
    }

	/**
	* @return mixed $ds_descricao
    */
	public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

	/**
	* @param $ds_descricao
    * @return mixed
    */
	public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

	/**
	* @return CategoriaServicoEntidade $co_categoria_servico
    */
	public function getCoCategoriaServico()
    {
        return $this->co_categoria_servico;
    }

	/**
	* @param $co_categoria_servico
    * @return mixed
    */
	public function setCoCategoriaServico($co_categoria_servico)
    {
        return $this->co_categoria_servico = $co_categoria_servico;
    }

	/**
	* @return PrecoServicoEntidade $co_preco_servico
     */
	public function getCoPrecoServico()
    {
        return $this->co_preco_servico;
    }

	/**
     * @param $co_preco_servico
     * @return mixed
     */
	public function setCoPrecoServico($co_preco_servico)
    {
        return $this->co_preco_servico = $co_preco_servico;
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
     * @return PrecoServicoEntidade $co_preco_servico
     */
    public function getCoUltimoPrecoServico()
    {
        return $this->ultimo($this->getCoPrecoServico());
    }

}