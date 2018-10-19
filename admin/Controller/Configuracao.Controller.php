<?php

class Configuracao extends AbstractController
{
    public $result;
    public $feriados;
    public $bandeiras;

    public function ListarDiaEspecialConfiguracao()
    {
        /** @var FeriadoService $feriadoService */
        $feriadoService = $this->getService(FERIADO_SERVICE);
        $this->feriados = $feriadoService->PesquisaTodos();

        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $this->result = $diaEspecialService->PesquisaTodos();
    }

    public function CadastroDiaEspecialConfiguracao()
    {
        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $id = "CadastroDiaEspecial";

        if (!empty($_POST[$id])):
            $retorno = $diaEspecialService->salvaDiaEspecial($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarDiaEspecialConfiguracao/');
            }
        endif;

        $coDiaEspecial = UrlAmigavel::PegaParametro(CO_DIA_ESPECIAL);
        $res = [];
        if ($coDiaEspecial) {
            /** @var DiaEspecialEntidade $diaEspecial */
            $diaEspecial = $diaEspecialService->PesquisaUmRegistro($coDiaEspecial);
            $res[DT_DIA] = Valida::DataShow($diaEspecial->getDtDia());
            $res[NU_HORA_ABERTURA] = $diaEspecial->getNuHoraAbertura();
            $res[NU_HORA_FECHAMENTO] = $diaEspecial->getNuHoraFechamento();
            $res[DS_MOTIVO] = $diaEspecial->getDsMotivo();
            $res[CO_DIA_ESPECIAL] = $diaEspecial->getCoDiaEspecial();
        }
        $this->form = DiaEspecialForm::Cadastrar($res);
    }

    public function FormasDePagamentoConfiguracao()
    {
        /** @var FacilidadePagamentoService $facilidadePagamentoService */
        $facilidadePagamentoService = $this->getService(FACILIDADE_PAGAMENTO_SERVICE);
        /** @var FacilidadeBeneficioService $facilidadeBeneficioService */
        $facilidadeBeneficioService = $this->getService(FACILIDADE_BENEFICIO_SERVICE);
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $id = "FormasDePagamento";

        if (!empty($_POST[$id])):
            $retorno = $facilidadePagamentoService->salvaFacilidadePagamento($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
            }
        endif;

        $res = [];
        $res[CO_FACILIDADE_BENEFICIO] = $assinante->getCoFacilidadeBeneficio()->getCoFacilidadeBeneficio();
        if ($res[CO_FACILIDADE_BENEFICIO]) {
            /** @var FacilidadeBeneficioEntidade $FacilidadeBeneficio */
            $FacilidadeBeneficio = $facilidadeBeneficioService->PesquisaUmRegistro($res[CO_FACILIDADE_BENEFICIO]);

            $facPag = [];
            if(!empty($FacilidadeBeneficio->getCoFacilidadePagamento())){
                /** @var FacilidadePagamentoEntidade $FacilidadePag */
                foreach ($FacilidadeBeneficio->getCoFacilidadePagamento() as $FacilidadePag){
                    $facPag[] = $FacilidadePag->getCoTipoPagamento()->getCoTipoPagamento();
                }
            }
            $res[CO_TIPO_PAGAMENTO] = $facPag;
        }
        $this->form = FormasDePagamentoForm::Cadastrar($res);
    }


    public function BandeiraTaxaConfiguracao()
    {
        /** @var BandeiraCartaoService $bandeiraCartaoService */
        $bandeiraCartaoService = $this->getService(BANDEIRA_CARTAO_SERVICE);
        $this->bandeiras = $bandeiraCartaoService->PesquisaTodos();

        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $this->result = $diaEspecialService->PesquisaTodos();
    }


}
   