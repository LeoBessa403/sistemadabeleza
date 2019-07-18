<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Agenda
                        </a>
                    </li>
                    <li class="active">
                        Agendamento
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Agenda</h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <?php include_once 'CadastroAgendamento.View.php' ?>
                    <?php include_once 'ListarAgendamento.View.php' ?>
                    <?php include_once 'CancelaAgendamento.View.php' ?>
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Agendamentos
                    </div>
                    <div class="panel-body">
                        <div class="col-md-3">
                        </div>
                        <div class="alert alert-block alert-warning fade in col-md-6"
                             style="margin-bottom: -35px;">
                            <h4 class="alert-heading"><i class="fa fa-calendar"></i> Status Agendamento</h4>
                            <?php
                            foreach (StatusAgendamentoEnum::$descricao as $chave => $desc) {
                                if ($chave != StatusAgendamentoEnum::DELETADO) {
                                    echo '<span class="label-' . StatusAgendamentoEnum::$cores[$chave] . '">';
                                    echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> ' . $desc . ' / ';
                                }
                            }
                            ?>
                        </div>
                        <div class="col-md-push-12">
                            <div id='calendar'></div>
                            <input id="metodo" name="metodo"
                                   value="<?= UrlAmigavel::$controller . '/CarregaAgendamentos'; ?>" type="hidden">
                        </div>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->