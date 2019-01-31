<?php

/**
 * Historia.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class HistoriaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_HISTORIA';
	const ENTIDADE = 'HistoriaEntidade';
	const CHAVE = CO_HISTORIA;

	private $co_historia;
	private $ds_titulo;
	private $ds_observacao;
	private $dt_cadastro;
	private $dt_atualizado;
	private $st_situacao;
	private $nu_esforco;
	private $nu_esforco_restante;
	private $co_sessao;
	private $co_anotacao;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_HISTORIA,
			DS_TITULO,
			DS_OBSERVACAO,
			DT_CADASTRO,
			DT_ATUALIZADO,
			ST_SITUACAO,
			NU_ESFORCO,
			NU_ESFORCO_RESTANTE,
			CO_SESSAO,
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
	* @return int $co_historia
    */
	public function getCoHistoria()
    {
        return $this->co_historia;
    }

	/**
	* @param $co_historia
    * @return mixed
    */
	public function setCoHistoria($co_historia)
    {
        return $this->co_historia = $co_historia;
    }

	/**
	* @return mixed $ds_titulo
    */
	public function getDsTitulo()
    {
        return $this->ds_titulo;
    }

	/**
	* @param $ds_titulo
    * @return mixed
    */
	public function setDsTitulo($ds_titulo)
    {
        return $this->ds_titulo = $ds_titulo;
    }

	/**
	* @return mixed $ds_observacao
    */
	public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

	/**
	* @param $ds_observacao
    * @return mixed
    */
	public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
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
	* @return mixed $dt_atualizado
    */
	public function getDtAtualizado()
    {
        return $this->dt_atualizado;
    }

	/**
	* @param $dt_atualizado
    * @return mixed
    */
	public function setDtAtualizado($dt_atualizado)
    {
        return $this->dt_atualizado = $dt_atualizado;
    }

	/**
	* @return mixed $st_situacao
    */
	public function getStSituacao()
    {
        return $this->st_situacao;
    }

	/**
	* @param $st_situacao
    * @return mixed
    */
	public function setStSituacao($st_situacao)
    {
        return $this->st_situacao = $st_situacao;
    }

	/**
	* @return mixed $nu_esforco
    */
	public function getNuEsforco()
    {
        return $this->nu_esforco;
    }

	/**
	* @param $nu_esforco
    * @return mixed
    */
	public function setNuEsforco($nu_esforco)
    {
        return $this->nu_esforco = $nu_esforco;
    }

	/**
	* @return NuEsforrestanteEntidade $nu_esforco_restante
    */
	public function getNuEsforcoRestante()
    {
        return $this->nu_esforco_restante;
    }

	/**
	* @param $nu_esforco_restante
    * @return mixed
    */
	public function setNuEsforcoRestante($nu_esforco_restante)
    {
        return $this->nu_esforco_restante = $nu_esforco_restante;
    }

	/**
	* @return SessaoEntidade $co_sessao
    */
	public function getCoSessao()
    {
        return $this->co_sessao;
    }

	/**
	* @param $co_sessao
    * @return mixed
    */
	public function setCoSessao($co_sessao)
    {
        return $this->co_sessao = $co_sessao;
    }

	/**
	* @return AnotacaoEntidade $co_anotacao
     */
	public function getCoAnotacao()
    {
        return $this->co_anotacao;
    }

	/**
     * @param $co_anotacao
     * @return mixed
     */
	public function setCoAnotacao($co_anotacao)
    {
        return $this->co_anotacao = $co_anotacao;
    }

}