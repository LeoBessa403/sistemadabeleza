<?php

/**
 * FacilidadeBeneficioService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FacilidadeBeneficioService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FacilidadeBeneficioEntidade::ENTIDADE);
        $this->ObjetoModel = New FacilidadeBeneficioModel();
    }

    public function salvaFacilidadesAssinante($dados)
    {
        debug($dados);
        $facilidades[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $facilidades[TP_ESTABELECIMENTO] = $dados[TP_ESTABELECIMENTO];
        $facilidades[TP_ATENDIMENTO] = $dados[TP_ATENDIMENTO];
        $facilidades[TP_GENERO_ESPECIALIZADO] = $dados[TP_GENERO_ESPECIALIZADO];
        $facilidades[TP_ESTACIONAMENTO] = $dados[TP_ESTACIONAMENTO];
        $facilidades[ST_LANCHONETE] = FuncoesSistema::retornoCheckbox($dados, ST_LANCHONETE);
        $facilidades[ST_TELEVISAO] = FuncoesSistema::retornoCheckbox($dados, ST_TELEVISAO);
        $facilidades[ST_WIFI] = FuncoesSistema::retornoCheckbox($dados, ST_WIFI);
        $facilidades[ST_ACESSO_DEFICIENTE] = FuncoesSistema::retornoCheckbox($dados, ST_ACESSO_DEFICIENTE);
        $facilidades[ST_JOGOS] = FuncoesSistema::retornoCheckbox($dados, ST_JOGOS);
        $retorno[SUCESSO] = $this->Salva($facilidades);
        return $retorno;
    }

}