<?php

class Configuracao extends AbstractController
{
    public $result;
    public $feriados;
    public $bandeiras;
    public $dadosTipoPagamento;
    public $taxasCartDeb;
    public $taxasCartCred;
    public $pagBandCartao;

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
                foreach ($_POST[CO_TIPO_PAGAMENTO] as $tipoPagamento) {
                    if ($tipoPagamento == TipoPagamentoEnum::CARTAO_CREDITO ||
                        $tipoPagamento == TipoPagamentoEnum::CARTAO_DEBITO) {
                        Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/BandeiraTaxaConfiguracao/');
                    }
                }
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
            }
        endif;

        $res = [];
        $res[CO_FACILIDADE_BENEFICIO] = $assinante->getCoFacilidadeBeneficio()->getCoFacilidadeBeneficio();
        if ($res[CO_FACILIDADE_BENEFICIO]) {
            /** @var FacilidadeBeneficioEntidade $FacilidadeBeneficio */
            $FacilidadeBeneficio = $facilidadeBeneficioService->PesquisaUmRegistro($res[CO_FACILIDADE_BENEFICIO]);

            $facPag = [];
            if (!empty($FacilidadeBeneficio->getCoFacilidadePagamento())) {
                /** @var FacilidadePagamentoEntidade $FacilidadePag */
                foreach ($FacilidadeBeneficio->getCoFacilidadePagamento() as $FacilidadePag) {
                    $facPag[] = $FacilidadePag->getCoTipoPagamento()->getCoTipoPagamento();
                }
            }
            $res[CO_TIPO_PAGAMENTO] = $facPag;
        }
        $this->form = FormasDePagamentoForm::Cadastrar($res);
    }


    public function BandeiraTaxaConfiguracao()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var FacilidadePagamentoService $facilidadePagamentoService */
        $facilidadePagamentoService = $this->getService(FACILIDADE_PAGAMENTO_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $session = new Session();

        /** @var PagamentoBandeiraCartaoService $pagamentoBandeiraCartaoService */
        $pagamentoBandeiraCartaoService = $this->getService(PAGAMENTO_BANDEIRA_CARTAO_SERVICE);

        if (isset($_POST["bandeira-taxa-deb"]) || isset($_POST["bandeira-taxa-cred"])):
            $retorno = $pagamentoBandeiraCartaoService->salvaPagamentoBandeiraCartao($_POST,
                $assinante->getCoFacilidadeBeneficio()->getCoFacilidadePagamento());
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
            }
        endif;

        $facilidadesPagamentos = $assinante->getCoFacilidadeBeneficio()->getCoFacilidadePagamento();
        /** @var FacilidadePagamentoEntidade $tipoPagamento */
        $dadosTipoPagamento = [
            TipoPagamentoEnum::CARTAO_CREDITO => null,
            TipoPagamentoEnum::CARTAO_DEBITO => null
        ];

        $taxasCartDeb = [];
        $taxasCartCred = [];
        /** @var FacilidadePagamentoEntidade $facilidadePagamentos */
        foreach ($facilidadesPagamentos as $facilidadePagamentos) {
            if ($facilidadePagamentos->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_DEBITO) {
                $dadosTipoPagamento[TipoPagamentoEnum::CARTAO_DEBITO] = true;
                /** @var FacilidadePagamentoEntidade $facPagamento */
                $facPagamento = $facilidadePagamentoService->PesquisaUmRegistro(
                    $facilidadePagamentos->getCoFacilidadePagamento());
                if ($facPagamento->getCoPagamentoBandeiraCartao()) {
                    /** @var PagamentoBandeiraCartaoEntidade $pagBandCartao */
                    foreach ($facPagamento->getCoPagamentoBandeiraCartao() as $pagBandCartao) {
                        $bandCartao = $pagBandCartao->getCoBandeiraCartao()->getCoBandeiraCartao();
                        $taxasCartDeb[$bandCartao][NU_TAXA_CARTAO] = Valida::FormataMoeda(
                            $pagBandCartao->getCoUltimaTaxaCartao()->getNuTaxaCartao());
                        $taxasCartDeb[$bandCartao][CO_PAGAMENTO_BANDEIRA_CARTAO] =
                            $pagBandCartao->getCoPagamentoBandeiraCartao();
                    }
                }
            }
            if ($facilidadePagamentos->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_CREDITO) {
                $dadosTipoPagamento[TipoPagamentoEnum::CARTAO_CREDITO] = true;
                /** @var FacilidadePagamentoEntidade $facPagamento */
                $facPagamento = $facilidadePagamentoService->PesquisaUmRegistro(
                    $facilidadePagamentos->getCoFacilidadePagamento());
                if ($facPagamento->getCoPagamentoBandeiraCartao()) {
                    /** @var PagamentoBandeiraCartaoEntidade $pagBandCartao */
                    foreach ($facPagamento->getCoPagamentoBandeiraCartao() as $pagBandCartao) {
                        $bandCartao = $pagBandCartao->getCoBandeiraCartao()->getCoBandeiraCartao();
                        $taxasCartCred[$bandCartao][NU_TAXA_CARTAO] = Valida::FormataMoeda(
                            $pagBandCartao->getCoUltimaTaxaCartao()->getNuTaxaCartao());
                        $taxasCartCred[$bandCartao][NU_TAXA_ANTECIPACAO] = Valida::FormataMoeda(
                            $pagBandCartao->getCoUltimaTaxaCartao()->getNuTaxaAntecipacao());
                        $taxasCartCred[$bandCartao][CO_PAGAMENTO_BANDEIRA_CARTAO] =
                            $pagBandCartao->getCoPagamentoBandeiraCartao();
                    }
                }
            }
        }
        if (!$dadosTipoPagamento[TipoPagamentoEnum::CARTAO_CREDITO] &&
            !$dadosTipoPagamento[TipoPagamentoEnum::CARTAO_DEBITO]) {
            $session->setSession(MENSAGEM,
                'Inclusão apenas de taxas para tipos de pagamento aceito com Cartões de Débito e/ou Crédito');
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormasDePagamentoConfiguracao/');
        }

        /** @var BandeiraCartaoService $bandeiraCartaoService */
        $bandeiraCartaoService = $this->getService(BANDEIRA_CARTAO_SERVICE);
        $this->bandeiras = $bandeiraCartaoService->PesquisaTodos();

        $this->dadosTipoPagamento = $dadosTipoPagamento;
        $this->taxasCartCred = $taxasCartCred;
        $this->taxasCartDeb = $taxasCartDeb;
    }

    public function HistoricoTaxaCartaoDebito()
    {
        /** @var PagamentoBandeiraCartaoService $pagamentoBandeiraCartaoService */
        $pagamentoBandeiraCartaoService = $this->getService(PAGAMENTO_BANDEIRA_CARTAO_SERVICE);

        $coPagBandCartao = UrlAmigavel::PegaParametro(CO_PAGAMENTO_BANDEIRA_CARTAO);
        if ($coPagBandCartao) {
            /** @var PlanoEntidade $plano */
            $this->pagBandCartao = $pagamentoBandeiraCartaoService->PesquisaUmRegistro($coPagBandCartao);
        } else {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/TaxasCartaoDebitoNaoEncontrado/');
        }
    }


    public function HistoricoTaxaCartaoCredito()
    {
        /** @var PagamentoBandeiraCartaoService $pagamentoBandeiraCartaoService */
        $pagamentoBandeiraCartaoService = $this->getService(PAGAMENTO_BANDEIRA_CARTAO_SERVICE);

        $coPagBandCartao = UrlAmigavel::PegaParametro(CO_PAGAMENTO_BANDEIRA_CARTAO);
        if ($coPagBandCartao) {
            /** @var PlanoEntidade $plano */
            $this->pagBandCartao = $pagamentoBandeiraCartaoService->PesquisaUmRegistro($coPagBandCartao);
        } else {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/TaxasCartaoCreditoNaoEncontrado/');
        }
    }

}
   