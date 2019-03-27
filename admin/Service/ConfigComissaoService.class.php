<?php

/**
 * ConfigComissaoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ConfigComissaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ConfigComissaoEntidade::ENTIDADE);
        $this->ObjetoModel = New ConfigComissaoModel();
    }


}