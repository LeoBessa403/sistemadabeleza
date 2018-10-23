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

    public function salvaPagamentoBandeiraCartao($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        debug($dados);
        $facilidadePagamentoValidador = new FacilidadePagamentoValidador();
        /** @var FacilidadePagamentoValidador $validador */
        $validador = $facilidadePagamentoValidador->validarFacilidadePagamento($dados);
        if ($validador[SUCESSO]) {
            $facPagamento[CO_FACILIDADE_BENEFICIO] = $dados[CO_FACILIDADE_BENEFICIO];
            $this->DeletaQuando($facPagamento);
            $facilidadePagamento[CO_FACILIDADE_BENEFICIO] = $dados[CO_FACILIDADE_BENEFICIO];
            foreach ($dados[CO_TIPO_PAGAMENTO] as $coTipoPagamento) {
                $facilidadePagamento[CO_TIPO_PAGAMENTO] = $coTipoPagamento;
                $this->Salva($facilidadePagamento);
            }
            $session->setSession(MENSAGEM, ATUALIZADO);
            $retorno[SUCESSO] = true;

            if ($retorno[SUCESSO]) {
                $retorno[SUCESSO] = true;
            } else {
                $session->setSession(MENSAGEM, 'Não foi possível realizar a ação');
                $retorno[SUCESSO] = false;
            }
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

}