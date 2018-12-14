<?php

/**
 * ContaBancariaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ContaBancariaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ContaBancariaEntidade::ENTIDADE);
        $this->ObjetoModel = New ContaBancariaModel();
    }

    /**
     * @param ContaBancariaEntidade $contaBancaria
     * @param array $dados
     * @return array
     */
    public function getArrayDadosContaBancaria(ContaBancariaEntidade $contaBancaria, array $dados)
    {
        $dados[CO_CONTA_BANCARIA] = $contaBancaria->getCoContaBancaria();
        $dados[CO_BANCO] = $contaBancaria->getCoBanco()->getCoBanco();
        $dados[NU_AGENCIA] = $contaBancaria->getNuAgencia();
        $dados[NU_CONTA] = $contaBancaria->getNuConta();
        $dados[TP_CONTA] = $contaBancaria->getTpConta();

        return $dados;
    }
}