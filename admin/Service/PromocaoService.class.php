<?php

/**
 * PromocaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PromocaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PromocaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PromocaoModel();
    }


}