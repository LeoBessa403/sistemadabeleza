<?php

/**
 * AssinanteValidador [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AssinanteValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarAssinante($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_PESSOA], 1, 'Nome Completo'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_TEL1], AbstractValidador::VALIDACAO_TEL, 'Telefone Celular'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DS_EMAIL], AbstractValidador::VALIDACAO_EMAIL, 'Email'
        );

        return $this->MontaRetorno($this->retorno);
    }

    public function validarDadosComplementaresAssinante($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NO_PESSOA], AbstractValidador::VALIDACAO_NOME, 'Responsável'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[NO_PESSOA], 2, 'Nome Fantasia'
        );
        if(!empty($dados[NU_CNPJ])){
            $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
                $dados[NU_CNPJ], AbstractValidador::VALIDACAO_CNPJ, 'CNPJ'
            );
        }
        $this->retorno[DADOS][] = $this->ValidaCampoValido(
            $dados[NU_TEL1], AbstractValidador::VALIDACAO_TEL, 'Telefone Responsável'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoValido(
            $dados[NU_TEL2], AbstractValidador::VALIDACAO_TEL, 'Telefone do Estabelecimento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoValido(
            $dados[DS_EMAIL], AbstractValidador::VALIDACAO_EMAIL, 'E-mail'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[TP_ESTABELECIMENTO], 'Tipo de estabelecimento'
        );
        return $this->MontaRetorno($this->retorno);
    }
}