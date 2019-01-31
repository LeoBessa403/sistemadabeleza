<?php

/**
 * HistoriaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  HistoriaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(HistoriaEntidade::ENTIDADE);
        $this->ObjetoModel = New HistoriaModel();
    }

    public static function SituacaoHistoria()
    {
        return StatusHistoriaEnum::$descricao;
    }

    public static function comboEsforco()
    {
        $ComboEstados =
            array(
                "" => "Selecione o esforço",
                "1" => "1",
                "3" => "3",
                "5" => "5",
                "8" => "8",
                "13" => "13",
                "20" => "20",
                "30" => "30",
                "40" => "40",
            );
        return $ComboEstados;
    }

    public function salvaHistoria($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $historiaValidador = new HistoriaValidador();
        /** @var HistoriaValidador $validador */
        $validador = $historiaValidador->validarHistoria($dados);
        if ($validador[SUCESSO]) {
            $historia[DS_TITULO] = trim($dados[DS_TITULO]);
            $historia[DS_OBSERVACAO] = trim($dados[DS_OBSERVACAO]);
            $historia[CO_SESSAO] = $dados[CO_SESSAO];
            $historia[ST_SITUACAO] = $this->getSituacaoHistoria($dados);
            $historia[NU_ESFORCO] = $dados[NU_ESFORCO][0];
            $historia[NU_ESFORCO_RESTANTE] = $dados[NU_ESFORCO_RESTANTE];
            $historia[DT_ATUALIZADO] = Valida::DataHoraAtualBanco();

            if (!empty($_POST[CO_HISTORIA])):
                $coHistoria = $dados[CO_HISTORIA];
                $retorno[SUCESSO] = $this->Salva($historia, $coHistoria);
            else:
                $historia[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $retorno[SUCESSO] = $this->Salva($historia);
            endif;
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

    public function getSituacaoHistoria($dados)
    {
        $sit = StatusHistoriaEnum::INICIADA;
        if ($dados[NU_ESFORCO_RESTANTE] == 0) {
            $sit = StatusHistoriaEnum::CONCLUIDA;
        } elseif ($dados[NU_ESFORCO_RESTANTE] == $dados[NU_ESFORCO][0]) {
            $sit = StatusHistoriaEnum::NAO_INICIADA;
        }
        return $sit;
    }

    public function motaGraficoEvolucao($Condicoes)
    {
        /** @var AuditoriaService $auditoriaService */
        $auditoriaService = $this->getService(AUDITORIA_SERVICE);
        $evolucao = $auditoriaService->PesquisaEvolucaoEsforco($Condicoes);
        $graficoEvolucao = [];
        $esforcoHistoria = [];
        $esforcoRestanteHistoria = [];
        $esforco = 0;
        $esforcoRestante = 0;
        foreach ($evolucao as $item) {
            if ($item[DS_CAMPO] == NU_ESFORCO) {
                if ($item[DS_ITEM_ANTERIOR] == '') {
                    $esforco = $esforco + $item[DS_ITEM_ATUAL];
                    $esforcoHistoria[$item[CO_REGISTRO]] = $item[DS_ITEM_ATUAL];
                } elseif ($esforcoHistoria[$item[CO_REGISTRO]] != $item[DS_ITEM_ATUAL]) {
                    $esforco = $esforco + $item[DS_ITEM_ATUAL] - $esforcoHistoria[$item[CO_REGISTRO]];
                    $esforcoHistoria[$item[CO_REGISTRO]] = $item[DS_ITEM_ATUAL];
                }
                $graficoEvolucao[Valida::DataShow($item[DT_REALIZADO])][NU_ESFORCO] = $esforco;
            } else {
                if ($item[DS_ITEM_ANTERIOR] == '') {
                    $esforcoRestante = $esforcoRestante + $item[DS_ITEM_ATUAL];
                    $esforcoRestanteHistoria[$item[CO_REGISTRO]] = $item[DS_ITEM_ATUAL];
                } elseif ($esforcoRestanteHistoria[$item[CO_REGISTRO]] != $item[DS_ITEM_ATUAL]) {
                    $esforcoRestante = $esforcoRestante + $item[DS_ITEM_ATUAL] - $esforcoRestanteHistoria[$item[CO_REGISTRO]];
                    $esforcoRestanteHistoria[$item[CO_REGISTRO]] = $item[DS_ITEM_ATUAL];
                }
                $graficoEvolucao[Valida::DataShow($item[DT_REALIZADO])][NU_ESFORCO_RESTANTE] = $esforcoRestante;
            }
        }
        $graficoEvolucaoEsforco = array("['Data','Esforço','Esforço Restante']");
        foreach ($graficoEvolucao as $data => $esforcos) {
            $graficoEvolucaoEsforco[] = "['" . $data . "'," . $esforcos[NU_ESFORCO] . "," . $esforcos[NU_ESFORCO_RESTANTE] . "]";
        }
        $grafico = new Grafico(Grafico::LINHA, "Controle de Esforços", "div_esforco");
        $grafico->SetDados($graficoEvolucaoEsforco);
        $grafico->GeraGrafico();


        $graficoEvolucaoPercentual = array("['Data','Percentual (%)']");
        foreach ($graficoEvolucao as $data => $esforcos) {
            $perc = number_format((1 - ($esforcos[NU_ESFORCO_RESTANTE] / $esforcos[NU_ESFORCO])) * 100, 2, '.', '');
            $graficoEvolucaoPercentual[] = "['" . $data . "'," . $perc . "]";
        }
        $grafico = new Grafico(Grafico::LINHA, "Evolução do Sistema", "div_percentual_evolucao");
        $grafico->SetDados($graficoEvolucaoPercentual);
        $grafico->GeraGrafico();
    }


}