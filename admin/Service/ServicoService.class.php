<?php

/**
 * ServicoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ServicoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ServicoEntidade::ENTIDADE);
        $this->ObjetoModel = New ServicoModel();
    }


}