<?php

/**
 * ConfigClienteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ConfigClienteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigClienteEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigClienteModel();
    }


}