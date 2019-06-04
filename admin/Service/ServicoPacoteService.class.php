<?php

/**
 * ServicoPacoteService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ServicoPacoteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ServicoPacoteEntidade::ENTIDADE);
        $this->ObjetoModel = New ServicoPacoteModel();
    }


}