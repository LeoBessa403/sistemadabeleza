<?php

/**
 * MotivoDescontoAssinanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  MotivoDescontoAssinanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(MotivoDescontoAssinanteEntidade::ENTIDADE);
        $this->ObjetoModel = New MotivoDescontoAssinanteModel();
    }

    public function iniciaMotivoDescontoAssinante()
    {
        $motivos = MotivoDescontoService::montaComboMotivosDesconto();
        $motivoDesc[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

        /** @var MotivoDescontoEntidade $descMotivo */
        foreach ($motivos as $motivo => $descMotivo) {
            $motivoDesc[CO_MOTIVO_DESCONTO] = $motivo;
            $motivoDesc[ST_STATUS_DESCONTO] = SimNaoEnum::NAO;
            $motivoDesc[ST_REFLETE_DESCONTO_COMISSAO] = SimNaoEnum::NAO;
            $motivoDesc[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $this->Salva($motivoDesc);
        }

        return $motivos;
    }
}