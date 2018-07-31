<?php

/**
 * PlanoModuloService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PlanoModuloService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PlanoModuloEntidade::ENTIDADE);
        $this->ObjetoModel = New PlanoModuloModel();
    }


}