<?php

/**
 * PagamentoBandeiraCartaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PagamentoBandeiraCartaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PagamentoBandeiraCartaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PagamentoBandeiraCartaoModel();
    }


}