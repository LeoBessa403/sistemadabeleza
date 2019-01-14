<?php

/**
 * Modulo.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class ModuloEntidade extends AbstractEntidade
{
	const TABELA = 'TB_MODULO';
	const ENTIDADE = 'ModuloEntidade';
	const CHAVE = CO_MODULO;

	private $co_modulo;
	private $no_modulo;
	private $ds_descricao;
	private $dt_cadastro;
	private $dt_lancamento;
	private $co_plano_modulo;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_MODULO,
			NO_MODULO,
			DS_DESCRICAO,
			DT_CADASTRO,
			DT_LANCAMENTO,
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
	* @return int $co_modulo
    */
	public function getCoModulo()
    {
        return $this->co_modulo;
    }

	/**
	* @param $co_modulo
    * @return mixed
    */
	public function setCoModulo($co_modulo)
    {
        return $this->co_modulo = $co_modulo;
    }

	/**
	* @return mixed $no_modulo
    */
	public function getNoModulo()
    {
        return $this->no_modulo;
    }

	/**
	* @param $no_modulo
    * @return mixed
    */
	public function setNoModulo($no_modulo)
    {
        return $this->no_modulo = $no_modulo;
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
	* @return mixed $dt_lancamento
    */
	public function getDtLancamento()
    {
        return $this->dt_lancamento;
    }

	/**
	* @param $dt_lancamento
    * @return mixed
    */
	public function setDtLancamento($dt_lancamento)
    {
        return $this->dt_lancamento = $dt_lancamento;
    }

	/**
	* @return PlanoModuloEntidade $co_plano_modulo
     */
	public function getCoPlanoModulo()
    {
        return $this->co_plano_modulo;
    }

	/**
     * @param $co_plano_modulo
     * @return mixed
     */
	public function setCoPlanoModulo($co_plano_modulo)
    {
        return $this->co_plano_modulo = $co_plano_modulo;
    }

}