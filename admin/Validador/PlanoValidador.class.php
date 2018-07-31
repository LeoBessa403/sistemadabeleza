<?php

/**
 * PlanoValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PlanoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarProduto($dados, $files)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_PRODUTO], 6, 'Produto'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NU_CODIGO_INTERNO], 1, 'Código do Produto'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_FABRICANTE], 'Fabricante do Produto'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_CATEGORIA], 'Categoria do Produto'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_UNIDADE_VENDA], 'Unidade de Venda'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_PRECO_VENDA], AbstractValidador::VALIDACAO_MOEDA, 'Valor de Venda'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_DESCRICAO], 5, 'Descrição do Produto'
        );

        return $this->MontaRetorno($this->retorno);
    }
}