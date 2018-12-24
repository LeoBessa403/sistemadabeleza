<?php
ob_start();
$url = new UrlAmigavel();
$back = new Backup();
//$entidade = new GerarEntidades([
//        'TB_CARGO', 'TB_PROFISSIONAL_CARGO', 'TB_PROFISSIONAL', 'TB_CONTA_BANCARIA'
//]);
if (in_array(UrlAmigavel::$action, UrlAmigavel::$ACESSO_PERMITIDO)):
    $url->pegaControllerAction();
    exit;
endif;
$valida = new ValidaUsuario();
$valida->validacao();
$compara = strstr(UrlAmigavel::$action, 'Exporta');
if ($compara != null):
    $url->pegaControllerAction();
    exit;
endif;
/** @var Session $session */
$session = new Session();
/** @var Session $us */
$us = $_SESSION[SESSION_USER];
$user = $us->getUser();
?>
    <!DOCTYPE html>
    <!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.3 Author: ClipTheme -->
    <!--[if IE 8]>
    <html class="ie8 no-js" lang="en"><![endif]-->
    <!--[if IE 9]>
    <html class="ie9 no-js" lang="en"><![endif]-->
    <!--[if !IE]><!-->
    <html lang="en" class="no-js">
    <!--<![endif]-->
    <!-- start: HEAD -->
    <head>
        <title>SISTEMA | <?= DESC_SIS; ?></title>
        <!-- start: META -->
        <meta charset="utf-8"/>
        <!--[if IE]>
        <meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1"/><![endif]-->
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta content="" name="description"/>
        <meta content="" name="author"/>
        <!-- end: META -->
        <!-- start: MAIN CSS -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>fonts/style.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/main-responsive.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/main.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/iCheck/skins/all.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/theme_navy.css" type="text/css" id="skin_color">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/css3-animation/animations.css">
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/print.css" type="text/css" media="print"/>
        <!--[if IE 7]>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome-ie7.min.css">
        <![endif]-->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->

        <!-- end: MAIN CSS -->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"
              type="text/css"/>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-modal/css/bootstrap-modal.css"
              type="text/css"/>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/fullcalendar/fullcalendar/fullcalendar.css">
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <!-- start: CSS REQUIRED FOR DATAPICKER -->
        <link rel="stylesheet" href="<?= INCLUDES; ?>Jcalendar.css">
        <!-- CSS paleta de cores       -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
        <!-- start: CSS REQUIRED FOR SELECT -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/select2/select2.css">
        <!-- start: CSS REQUIRED FOR UPLOAD -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
        <!-- start: CSS REQUIRED FOR CHECK -->
        <link rel="stylesheet"
              href="<?= PASTAADMIN; ?>plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
        <!-- start: CSS REQUIRED FOR CHECK -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/DataTables/media/css/DT_bootstrap.css">
        <!-- start: CSS REQUIRED Gritter -->
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/gritter/css/jquery.gritter.css">
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="shortcut icon" href="<?= PASTASITE; ?>img/favicon.ico"/>
        <!-- SCRIPT GERAR GRAFICOS -->
        <script type="text/javascript" src="<?= HOME; ?>library/Helpers/includes/gera-grafico.js"></script>
    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body>
    <!-- start: HEADER -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <!-- start: TOP NAVIGATION CONTAINER -->
        <div class="container">
            <div class="navbar-header">
                <!-- start: RESPONSIVE MENU TOGGLER -->
                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="clip-list-2"></span>
                </button>
                <!-- end: RESPONSIVE MENU TOGGLER -->
                <!-- start: LOGO -->
                <a  style="color: white; text-shadow: 1px 1px 2px #fefefe; font-size: 30px;" class="navbar-brand" href="<?= PASTAADMIN; ?>Index/Index">
                    <?= FuncoesSistema::getImgSistema(35) . DESC_SIS; ?>
                </a>
                <!-- end: LOGO -->
            </div>
            <div class="navbar-tools">
                <!-- start: TOP NAVIGATION MENU -->
                <ul class="nav navbar-right">
                    <!-- USER DROPDOWN -->
                    <?php include_once PARTIAL_ADMIN . 'user_dropdown.php'; ?>
                    <!-- Inclusão do Partial de Notificações  -->
                    <?php include_once PARTIAL_ADMIN . 'notificacoes.php'; ?>
                    <!-- Inclusão do Partial de Perfis  -->
                    <?php include_once PARTIAL_ADMIN . 'perfis.php'; ?>
                    <li class="dropdown">
                        <a href="<?= PASTAADMIN; ?>login/deslogar/desloga/10" title="Sair do Sistema" tabindex="1">
                            <i class="clip-exit" title="Sair do Sistema"></i>
                        </a>
                    </li>
                </ul>
                <!-- end: TOP NAVIGATION MENU -->
            </div>
        </div>
        <!-- end: TOP NAVIGATION CONTAINER -->
    </div>
    <!-- end: HEADER -->
    <!-- start: MAIN CONTAINER -->
    <div class="main-container">
        <div class="navbar-content">
            <!-- start: SIDEBAR -->
            <div class="main-navigation navbar-collapse collapse">
                <!-- start: MAIN MENU TOGGLER BUTTON -->
                <div class="navigation-toggler">
                    <i class="clip-chevron-left"></i>
                    <i class="clip-chevron-right"></i>
                </div>
                <!-- end: MAIN MENU TOGGLER BUTTON -->
                <!-- start: MAIN NAVIGATION MENU -->
                <?php
                $menu = array(
                    "Assinante" => array("clip-user-5", "Listar Assinante", "Cadastro Assinante", "Dados Complementares Assinante"),
                    "Configuracao" => array("clip-settings", "Listar Dia Especial Configuracao", "Cadastro Dia Especial Configuracao",
                        "Formas De Pagamento Configuracao", "Cliente Configuracao", "Agendamento Configuracao",
                        "Motivo Desconto Configuracao"),
                    "Profissional" => array("clip-user", "Listar Profissional", "Cadastro Profissional"),
                    "Plano" => array("clip-banknote", "Listar Plano", "Cadastro Plano"),
                    "Visita" => array("clip-airplane", "Listar Visita"),
                    "Usuario" => array("fa fa-group", "Meu Perfil Usuario", "Listar Usuario", "Cadastro Usuario", "Troca Senha Usuario"),
                    "Perfil" => array("clip-stack-empty", "Listar Perfil", "Cadastro Perfil"),
                    "Funcionalidade" => array("fa fa-outdent", "Listar Funcionalidade", "Cadastro Funcionalidade"),
                    "Acesso" => array("clip-connection-2", "Listar Acesso"),
                    "Auditoria" => array("fa fa-crosshairs", "Listar Auditoria"),
                );
                $url->GeraMenu($menu);
                ?>
                <!-- end: MAIN NAVIGATION MENU -->
            </div>
            <!-- end: SIDEBAR -->
        </div>
        <!-- start: PAGE -->
        <?php
        $url->pegaControllerAction();
        ?>
        <!-- end: PAGE -->
    </div>
    <!-- end: MAIN CONTAINER -->
    <!-- start: FOOTER -->
    <div class="footer clearfix">
        <div class="footer-inner">
            <?php include_once PARTIAL_ADMIN . 'controle_versao.php'; ?>
        </div>
        <div class="footer-items">
            <span class="go-top"><i class="clip-chevron-up"></i></span>
        </div>
    </div>
    <!-- end: FOOTER -->
    <!-- start: MAIN JAVASCRIPTS -->
    <!--[if lt IE 9]>
    <script src="<?= PASTAADMIN; ?>plugins/respond.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/excanvas.min.js"></script>
    <script type="text/javascript" src="<?= INCLUDES;?>jquery-1.10.2.js"></script>
    <![endif]-->
    <!--[if gte IE 9]><!-->
    <script src="<?= INCLUDES; ?>jquery-2.0.3.js"></script>
    <!--<![endif]-->
    <script src="<?= INCLUDES; ?>jquery-ui.js"></script>
    <script type="text/javascript" src="<?= INCLUDES; ?>jquery.mask.js"></script>
    <script type="text/javascript" src="<?= INCLUDES; ?>jquery.maskMoney.js"></script>
    <?= '<script type="text/javascript">
                        function constantes(){    
                                var dados = {
                                    "HOME" : "' . HOME . '",
                                    "INATIVO" : "' . INATIVO . '",
                                    "PASTAUPLOADS" : "' . PASTAUPLOADS . '" ,                                       
                                    "AMBIENTE" : "ADMIN"                                      
                                    };
                                return dados;
                        }
                </script>'; ?>
    <script type="text/javascript" src="<?= INCLUDES; ?>validacoes.js"></script>

    <script src="<?= PASTAADMIN; ?>plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/blockUI/jquery.blockUI.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/iCheck/jquery.icheck.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery-cookie/jquery.cookie.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
    <script src="<?= PASTAADMIN; ?>js/main.js"></script>
    <script src="<?= PASTAADMIN; ?>js/ui-animation.js"></script>
    <!-- end: MAIN JAVASCRIPTS -->
    <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script src="<?= PASTAADMIN; ?>plugins/flot/jquery.flot.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/flot/jquery.flot.pie.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/flot/jquery.flot.resize.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery.sparkline/jquery.sparkline.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
    <script src="<?= PASTAADMIN; ?>js/index.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/select2/select2.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/bootstrap-switch/static/js/bootstrap-switch.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/DataTables/media/js/jquery.dataTables.min.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/DataTables/media/js/DT_bootstrap.js"></script>
    <script src="<?= PASTAADMIN; ?>js/table-data.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/ckeditor/ckeditor.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/ckeditor/adapters/jquery.js"></script>
    <script src="<?= PASTAADMIN; ?>js/Funcoes.js"></script>
    <script src="<?= PASTAADMIN; ?>js/FullCalendar.js"></script>
    <script src="<?= PASTAADMIN; ?>plugins/jQuery-Smart-Wizard/js/jquery.smartWizard.js"></script>
    <script src="<?= PASTAADMIN; ?>js/form-wizard.js"></script>
    <?php carregaJs($url); ?>
    <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
    <script>
        jQuery(document).ready(function () {
            Funcoes.init();
            Main.init();
            TableData.init();
            Calendar.init();
            FormWizard.init();
            Index.init();
        });
    </script>
    <!-- Carrega DIVs dos Alertas e Notificações   -->
    <?php include_once PARTIAL_ADMIN . 'alertas.php'; ?>
    </body>
    <!-- end: BODY -->
    </html>
<?php
ob_end_flush();