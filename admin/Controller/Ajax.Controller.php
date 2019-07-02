<?php
/* 
 * Controller résponsavel para receber e passar dados para controller responsável.
 */
include "../../library/Config.inc.php";

if (isset($_REQUEST['acao'])) {

    switch ($_REQUEST['acao']) {

////////////////////////////////////////////////////////////////////////
/////////////////// PARTICULARIDADES DO SISTEMA ////////////////////////
//////////////////////////////////////////////////////////////////////// 
        case 'getReferenciaPagamentoAssinante':
            $coPlano = $_REQUEST[CO_PLANO];
            echo Assinante::getReferenciaPagamentoAssinante($coPlano);
            break;
        case 'DesativarServico':
            $coServico = $_REQUEST[CO_SERVICO];
            echo Servico::DesativarServico($coServico);
            break;
        case 'AtivarServico':
            $coServico = $_REQUEST[CO_SERVICO];
            echo Servico::AtivarServico($coServico);
            break;
        case 'CarregaValorServico':
            $coServico = $_REQUEST[CO_SERVICO];
            $data[NU_VALOR] = Servico::GetPrecoServico($coServico);
            echo json_encode($data);
            break;
        case 'CarregaAgendamentos':
            $controller = $_REQUEST['controller'];
            $acao = $_REQUEST['acao'];
            $objeto = new $controller();
            $data = $objeto->$acao();
            echo json_encode($data);
            break;

    }
} // FIM SWITCH