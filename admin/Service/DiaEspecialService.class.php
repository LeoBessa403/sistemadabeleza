<?php

/**
 * DiaEspecialService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  DiaEspecialService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(DiaEspecialEntidade::ENTIDADE);
        $this->ObjetoModel = New DiaEspecialModel();
    }


}