<?php

/**
 * ServicoProfissionalService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ServicoProfissionalService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ServicoProfissionalEntidade::ENTIDADE);
        $this->ObjetoModel = New ServicoProfissionalModel();
    }

}