<?php

/**
 * TaxaCartaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TaxaCartaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TaxaCartaoEntidade::ENTIDADE);
        $this->ObjetoModel = New TaxaCartaoModel();
    }

    public function salvaTaxaCartao($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        debug($dados);


        $retorno[SUCESSO] = true;

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $session->setSession(MENSAGEM, ATUALIZADO);
        } else {
            $session->setSession(MENSAGEM, 'Não foi possível realizar a ação');
            $retorno[SUCESSO] = false;
        }
        return $retorno;
    }

}