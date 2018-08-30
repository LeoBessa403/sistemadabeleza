<?php

/**
 * FacilidadePagamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FacilidadePagamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FacilidadePagamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New FacilidadePagamentoModel();
    }


}