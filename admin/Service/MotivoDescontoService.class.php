<?php

/**
 * MotivoDescontoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  MotivoDescontoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(MotivoDescontoEntidade::ENTIDADE);
        $this->ObjetoModel = New MotivoDescontoModel();
    }


}