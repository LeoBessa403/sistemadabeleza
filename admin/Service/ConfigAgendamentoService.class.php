<?php

/**
 * ConfigAgendamentoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ConfigAgendamentoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigAgendamentoEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigAgendamentoModel();
    }


}