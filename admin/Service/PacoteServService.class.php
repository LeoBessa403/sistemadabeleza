<?php

/**
 * PacoteServService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PacoteServService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PacoteServEntidade::ENTIDADE);
        $this->ObjetoModel = New PacoteServModel();
    }


}