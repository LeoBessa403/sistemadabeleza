<?php

/**
 * CargoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CargoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CargoEntidade::ENTIDADE);
        $this->ObjetoModel = New CargoModel();
    }


}