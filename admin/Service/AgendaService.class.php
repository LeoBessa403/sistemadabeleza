<?php

/**
 * AgendaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AgendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New AgendaModel();
    }

    public function PesquisaAgendamentos($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAgendamentos($Condicoes);
    }

}