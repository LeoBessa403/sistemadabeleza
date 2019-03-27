<?php

/**
 * PercentualComissaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PercentualComissaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PercentualComissaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PercentualComissaoModel();
    }


}