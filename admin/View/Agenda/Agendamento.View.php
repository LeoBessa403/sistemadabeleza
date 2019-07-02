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
                    <!--  MODAL FORM DE CADASTRO E EDIÇÃO -->
                    <div class="modal fade in modal-overflow j_cadastro" id="novoAgendamento" tabindex="-1"
                         role="dialog" aria-hidden="true">
                        <div class="modal-header btn-light-grey">
                            <button type="button" class="close cancelar" data-dismiss="modal" aria-hidden="true">
                                X
                            </button>
                            <h4 class="modal-title">Cadastro Agendamento</h4>
                        </div>
                        <div class="modal-body" style="padding: 0;">
                            <?= $form; ?>
                        </div>
                    </div>
                    <a data-toggle="modal" role="button" href="#novoAgendamento" id="j_cadastro"></a>

                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Agendamentos
                    </div>
                    <div class="panel-body">
                        <div class="alert alert-block alert-warning fade in col-md-6" style="min-width: 20px;">
                            <h4 class="alert-heading"><i class="fa fa-calendar"></i> Status Agendamento</h4>
                            <?php
                            foreach (StatusAgendamentoEnum::$descricao as $chave => $desc) {
                                echo '<span  style="width: 20px;" class="label-' . StatusAgendamentoEnum::$cores[$chave] . '">';
                                echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> ' . $desc . ' / ';
                            }
                            ?>
                        </div>
                        <div class="col-sm-12">
                            <div id='calendar'></div>
                            <input id="acao" name="acao"
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