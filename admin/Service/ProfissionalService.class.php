<?php

/**
 * ProfissionalService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProfissionalService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProfissionalEntidade::ENTIDADE);
        $this->ObjetoModel = New ProfissionalModel();
    }


}