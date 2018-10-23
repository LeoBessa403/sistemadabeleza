<?php

/**
 * PagamentoBandeiraCartaoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PagamentoBandeiraCartaoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PagamentoBandeiraCartaoEntidade::ENTIDADE);
        $this->ObjetoModel = New PagamentoBandeiraCartaoModel();
    }

    public function salvaPagamentoBandeiraCartao($dados, $facilidadesPagamento)
    {
        /** @var TaxaCartaoService $taxaCartaoService */
        $taxaCartaoService = $this->getService(TAXA_CARTAO_SERVICE);
        $session = new Session();
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        /** @var FacilidadePagamentoEntidade $facilidadePagamento */
        foreach ($facilidadesPagamento as $facilidadePagamento) {
            if ($facilidadePagamento->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_DEBITO) {
                $cartDeb[CO_FACILIDADE_PAGAMENTO] = $facilidadePagamento->getCoFacilidadePagamento();
            }
            if ($facilidadePagamento->getCoTipoPagamento() == TipoPagamentoEnum::CARTAO_CREDITO) {
                $cartCred[CO_FACILIDADE_PAGAMENTO] = $facilidadePagamento->getCoFacilidadePagamento();
            }
        }

        $PDO->beginTransaction();
        if (!empty($dados["bandeira-taxa-deb"])) {
            $taxaCartDeb[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            foreach ($dados["bandeira-taxa-deb"] as $bandeiraCartao => $taxaCartao) {
                if($taxaCartao){
                    $cartDeb[CO_BANDEIRA_CARTAO] = $bandeiraCartao;
                    $taxaCartDeb[CO_PAGAMENTO_BANDEIRA_CARTAO] = $this->Salva($cartDeb);
                    $taxaCartDeb[NU_TAXA_CARTAO] = Valida::FormataMoedaBanco($taxaCartao);
                    $retorno[SUCESSO] = $taxaCartaoService->Salva($taxaCartDeb);
                }
            }
        }

        if (!empty($dados["bandeira-taxa-cred"])) {
            $taxaCartCred[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            foreach ($dados["bandeira-taxa-cred"] as $bandeiraCartao => $taxaCartao) {
                if($taxaCartao){
                    $cartCred[CO_BANDEIRA_CARTAO] = $bandeiraCartao;
                    $taxaCartCred[CO_PAGAMENTO_BANDEIRA_CARTAO] = $this->Salva($cartCred);
                    $taxaCartCred[NU_TAXA_CARTAO] = Valida::FormataMoedaBanco($taxaCartao);
                    $taxaCartCred[NU_TAXA_ANTECIPACAO] = Valida::FormataMoedaBanco($dados["bandeira-taxaAntec-cred"][$bandeiraCartao]);
                    $retorno[SUCESSO] = $taxaCartaoService->Salva($taxaCartCred);
                }
            }
        }

        if ($retorno[SUCESSO]) {
            $session->setSession(MENSAGEM, ATUALIZADO);
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $session->setSession(MENSAGEM, 'Não foi possível realizar a ação');
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }
        return $retorno;
    }

}