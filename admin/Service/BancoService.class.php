<?php

/**
 * BancoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  BancoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(BancoEntidade::ENTIDADE);
        $this->ObjetoModel = New BancoModel();
    }


}