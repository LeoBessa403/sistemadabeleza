<?php
/* 
 * Controller résponsavel para receber e passar dados para controller responsável.
 */
include "../../library/Config.inc.php";

if (isset($_GET['valida'])) {

    switch ($_GET['valida']) {

////////////////////////////////////////////////////////////////////////
/////////////////// PARTICULARIDADES DO SISTEMA ////////////////////////
//////////////////////////////////////////////////////////////////////// 
        case 'getReferenciaPagamentoAssinante':
            $coPlano = $_GET[CO_PLANO];
            echo Assinante::getReferenciaPagamentoAssinante($coPlano);
            break;
        case 'DesativarServico':
            $coServico = $_GET[CO_SERVICO];
            echo Servico::DesativarServico($coServico);
            break;
        case 'AtivarServico':
            $coServico = $_GET[CO_SERVICO];
            echo Servico::AtivarServico($coServico);
            break;

    }
} // FIM SWITCH