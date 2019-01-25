<?php

/**
 * AusenciaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AusenciaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AusenciaEntidade::ENTIDADE);
        $this->ObjetoModel = New AusenciaModel();
    }


}