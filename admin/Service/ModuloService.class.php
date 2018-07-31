<?php

/**
 * ModuloService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ModuloService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ModuloEntidade::ENTIDADE);
        $this->ObjetoModel = New ModuloModel();
    }

    public static function montaComboModulos()
    {
        /** @var ModuloService $moduloService */
        $moduloService = new ModuloService();

        $modulos = $moduloService->PesquisaTodos();
        $todosMds = array();
        /** @var ModuloEntidade $modulo */
        foreach ($modulos as $modulo) :
            $todosMds[$modulo->getCoModulo()] = $modulo->getNoModulo();
        endforeach;
        return $todosMds;
    }
}