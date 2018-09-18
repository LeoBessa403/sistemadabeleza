<?php

/**
 * PessoaService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  PessoaService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(PessoaEntidade::ENTIDADE);
    }

    /**
     * @param PessoaEntidade $pessoa
     * @param array $dados
     * @return array
     */
    public function getArrayDadosPessoa(PessoaEntidade $pessoa, array $dados)
    {
        $dados[CO_PESSOA] = $pessoa->getCoPessoa();
        $dados[NU_CPF] = Valida::MascaraCpf($pessoa->getNuCpf());
        $dados[NU_RG] = $pessoa->getNuRg();
        $dados[DT_NASCIMENTO] = Valida::DataShow($pessoa->getDtNascimento());
        $dados[ST_SEXO] = $pessoa->getStSexo();
        $dados[NO_PESSOA] = $pessoa->getNoPessoa();

        return $dados;
    }

    public function salvaPessoaAssinante($dados)
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $pessoa[NO_PESSOA] = strtoupper(trim($dados[NO_PESSOA]));
        $retorno[SUCESSO] = $this->Salva($pessoa, $assinante->getCoPessoa()->getCoPessoa());

        return $retorno;
    }
}