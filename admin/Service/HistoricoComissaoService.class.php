<?php

/**
 * HistoricoComissaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  HistoricoComissaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(HistoricoComissaoEntidade::ENTIDADE);
        $this->ObjetoModel = New HistoricoComissaoModel();
    }


}