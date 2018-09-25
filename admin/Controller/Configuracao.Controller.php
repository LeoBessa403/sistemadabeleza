<?php

class Configuracao extends AbstractController
{
    public $result;
    public $feriados;

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
        $this->form = FormasDePagamentoForm::Cadastrar($res);
    }

}
   