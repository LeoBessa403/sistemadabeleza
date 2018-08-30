<?php

/**
 * ImagemAssinanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ImagemAssinanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ImagemAssinanteEntidade::ENTIDADE);
        $this->ObjetoModel = New ImagemAssinanteModel();
    }


}