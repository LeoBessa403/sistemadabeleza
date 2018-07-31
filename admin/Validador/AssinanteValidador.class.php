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
}