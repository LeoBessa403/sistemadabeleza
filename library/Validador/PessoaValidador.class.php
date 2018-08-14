<?php

/**
 * PessoaValidador [ VALIDATOR ]
 * @copyright (c) 2017, Leo Bessa
 */
class  PessoaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarCPF($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_CPF], AbstractValidador::VALIDACAO_CPF, 'CPF'
        );
        return $this->MontaRetorno($this->retorno);
    }

    public function validarEmail($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DS_EMAIL], AbstractValidador::VALIDACAO_EMAIL, 'E-Mail'
        );
        return $this->MontaRetorno($this->retorno);
    }
}