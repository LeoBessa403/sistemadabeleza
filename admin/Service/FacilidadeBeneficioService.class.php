<?php

/**
 * FacilidadeBeneficioService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FacilidadeBeneficioService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FacilidadeBeneficioEntidade::ENTIDADE);
        $this->ObjetoModel = New FacilidadeBeneficioModel();
    }


}