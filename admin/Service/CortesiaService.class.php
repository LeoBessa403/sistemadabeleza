<?php

/**
 * CortesiaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  CortesiaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CortesiaEntidade::ENTIDADE);
        $this->ObjetoModel = New CortesiaModel();
    }


}