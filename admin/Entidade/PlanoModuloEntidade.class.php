<?php

/**
 * PlanoModulo.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class PlanoModuloEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PLANO_MODULO';
	const ENTIDADE = 'PlanoModuloEntidade';
	const CHAVE = CO_PLANO_MODULO;

	private $co_plano_modulo;
	private $co_plano;
	private $co_modulo;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PLANO_MODULO,
			CO_PLANO,
			CO_MODULO,
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
	* @return int $co_plano_modulo
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

	/**
	* @return PlanoEntidade $co_plano
    */
	public function getCoPlano()
    {
        return $this->co_plano;
    }

	/**
	* @param $co_plano
    * @return mixed
    */
	public function setCoPlano($co_plano)
    {
        return $this->co_plano = $co_plano;
    }

	/**
	* @return ModuloEntidade $co_modulo
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

}