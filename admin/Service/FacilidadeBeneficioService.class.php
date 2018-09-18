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
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $contato = $this->getDados($dados, ContatoEntidade::ENTIDADE);
        $retorno[SUCESSO] = $this->Salva($contato, $assinante->getCoPessoa()->getCoContato());
        return $retorno;
    }

}