<?php

/**
 * ProfissionalCargoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProfissionalCargoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProfissionalCargoEntidade::ENTIDADE);
        $this->ObjetoModel = New ProfissionalCargoModel();
    }


}