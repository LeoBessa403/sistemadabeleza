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

    }
} // FIM SWITCH