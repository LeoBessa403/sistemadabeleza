<?php

/**
 * ServicoValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ServicoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarServico($dados, $files)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_SERVICO], 5, 'Nome Completo'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_VALOR], AbstractValidador::VALIDACAO_MOEDA, 'Preço'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_DURACAO], AbstractValidador::VALIDACAO_NUMERO, 'Duração'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_CATEGORIA_SERVICO], 'Categoria do Serviço'
        );
       $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_DESCRICAO], 5, 'Descrição'
        );
        if (empty($dados[CO_IMAGEM])) {
            $this->retorno[DADOS][] = $this->ValidaCampoArquivo(
                $files[DS_CAMINHO], 'Foto do Serviço'
            );
        }
        return $this->MontaRetorno($this->retorno);
    }
}