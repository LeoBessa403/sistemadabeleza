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


}