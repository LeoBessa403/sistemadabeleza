<?php

/**
 * AssinanteMatrizService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AssinanteMatrizService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AssinanteMatrizEntidade::ENTIDADE);
        $this->ObjetoModel = New AssinanteMatrizModel();
    }

    public function salvaAssinanteMatriz($dados, $coAssinante)
    {
        /** @var AssinanteFilialService $assinanteFilialService */
        $assinanteFilialService = $this->getService(ASSINANTE_FILIAL_SERVICE);

        if (!empty($dados[CO_ASSINANTE])):
            $assinMatriz[CO_ASSINANTE] = $dados[CO_ASSINANTE_MATRIZ][0];
            $assinMatriz[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $assinFilial[CO_ASSINANTE_MATRIZ] = $this->Salva($assinMatriz);
            $assinFilial[CO_ASSINANTE] = $coAssinante;
            $assinFilial[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $retorno[SUCESSO] = $assinanteFilialService->Salva($assinFilial);
        endif;
    }
}