<?php

/**
 * FuncionamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FuncionamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FuncionamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New FuncionamentoModel();
    }


}