<?php

/**
 * JornadaTrabalhoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  JornadaTrabalhoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(JornadaTrabalhoEntidade::ENTIDADE);
        $this->ObjetoModel = New JornadaTrabalhoModel();
    }


}