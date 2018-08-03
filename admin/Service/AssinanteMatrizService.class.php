<?php

/**
 * AssinanteMatrizService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AssinanteMatrizService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AssinanteMatrizEntidade::ENTIDADE);
        $this->ObjetoModel = New AssinanteMatrizModel();
    }


}