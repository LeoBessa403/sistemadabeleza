<?php

/**
 * ProfissionalCargoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProfissionalCargoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProfissionalCargoEntidade::ENTIDADE);
        $this->ObjetoModel = New ProfissionalCargoModel();
    }

    /**
     * @param $dados
     * @param null $coProfissional
     * @return mixed
     */
    public function salvaProfissionalCargo($dados, $coProfissional)
    {
        $this->DeletaQuando([
            CO_PROFISSIONAL => $coProfissional
        ]);
        $retorno = false;
        $profissionalCargo[CO_PROFISSIONAL] = $coProfissional;
        $profissionalCargo[ST_STATUS] = StatusUsuarioEnum::ATIVO;
        $profissionalCargo[DT_CADASTRO] = Valida::DataAtualBanco();
        foreach ($dados[CO_CARGO] as $cargo) {
            $profissionalCargo[CO_CARGO] = $cargo;
            $retorno = $this->Salva($profissionalCargo);
        }
        return $retorno;
    }
}