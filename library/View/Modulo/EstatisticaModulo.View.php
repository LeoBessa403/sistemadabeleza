<div class="main-content">
    <!-- end: SPANEL CONFIGURATION MODAL FORM -->
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-home-3"></i>
                        <a href="#">
                            Início
                        </a>
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Estatísticas do Modulo
                        <small><b><?= $noModulo; ?></b></small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Dados Extimados restantes
                    </div>
                    <div class="panel-body">
                        <?php include_once PASTA_RAIZ . ADMIN . '/partial/template_estatistica.php'; ?>
                    </div>
                </div>
                <div class="pull-right">
                    <!-- end: DYNAMIC TABLE PANEL -->
                    <?php Valida::geraBtnVoltar('Modulo/ListarModulo/' . Valida::GeraParametro(
                            CO_PROJETO . "/" . $coProjeto)); ?>
                </div>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE HEADER -->
    </div>
</div>
