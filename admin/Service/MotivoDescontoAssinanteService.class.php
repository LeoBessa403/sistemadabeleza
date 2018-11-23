<?php

/**
 * MotivoDescontoAssinanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  MotivoDescontoAssinanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(MotivoDescontoAssinanteEntidade::ENTIDADE);
        $this->ObjetoModel = New MotivoDescontoAssinanteModel();
    }


}