<?php

/**
 * PagamentoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PagamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PagamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New PagamentoModel();
    }


}