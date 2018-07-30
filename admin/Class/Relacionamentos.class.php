<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2018, Leo Bessa
 */

class Relacionamentos
{

	public static function getRelacionamentos(){
    		return array(
			(EmpresaEntidade::TABELA) => Array(
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_ENDERECO) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'EnderecoEntidade',
					('Tipo') => '1',
				),
				(CO_CONTATO) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'ContatoEntidade',
					('Tipo') => '1',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
			),
			(PessoaEntidade::TABELA) => Array(
				(CO_EMPRESA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
			),
			(EnderecoEntidade::TABELA) => Array(
				(CO_EMPRESA) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
			),
			(ContatoEntidade::TABELA) => Array(
				(CO_EMPRESA) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
			),
			(ImagemEntidade::TABELA) => Array(
				(CO_EMPRESA) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'EmpresaEntidade',
					('Tipo') => '1',
				),
			),
		);
}
}