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
                    <?php include_once 'DeletarAgendamento.View.php' ?>
                    <?php include_once 'LegendaAgendamento.View.php' ?>
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Agendamentos
                    </div>
                    <div class="panel-body">
                        <div class="col-md-push-12">
                            <div id='calendar'></div>
                            <input id="metodo" name="metodo"
                                   value="<?= UrlAmigavel::$controller . '/CarregaAgendamentos'; ?>" type="hidden">
                            <div id="grid">
                                <div class="pull-right">
                                    <?php Valida::geraBtn('', '',
                                        'btn-success', 'novaAgenda', 'fa fa-plus'); ?>
                                    <?php Valida::geraBtn('', '',
                                        'btn-warning', 'j_legendas', 'fa fa-align-left'); ?>
                                    <?php Valida::geraBtn('', '',
                                        'btn-light-grey', 'j_pesquisa', 'fa fa-cog'); ?>
                                    <div class="btn-group btn-group-sm">
                                        <?php Valida::geraBtn('', '',
                                            'btn-primary', 'carregaCalendar', 'fa fa-calendar'); ?>
                                        <?php Valida::geraBtn('', '',
                                            'btn-primary active', '', 'fa fa-list'); ?>
                                    </div>
                                </div>
                                <?php
                                $grid = new Grid();
                                ?>
                                <!--  MODAL PESQUISA AVANÇADA -->
                                <div class="modal fade in modal-overflow j_pesquisar" id="pesquisaAgendamento"
                                     tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-header btn-light-grey">
                                        <button type="button" class="close cancelar" data-dismiss="modal"
                                                aria-hidden="true">
                                            X
                                        </button>
                                        <h4 class="modal-title">Pesquisa Avançada</h4>
                                    </div>
                                    <div class="modal-body" style="padding: 0;">
                                        <?= $form; ?>
                                    </div>
                                </div>
                                <a data-toggle="modal" role="button" href="#pesquisaAgendamento" id="j_pesquisar"></a>
                                <h2>
                                    <small>Agendamentos Cadastrados</small>
                                </h2>
                                <?php
                                $arrColunas = array('Cliente', 'Data', 'Período', 'Profissional', 'Assistente', 'Serviço', 'Status', 'Ações');
                                $grid = new Grid();
                                $grid->setColunasIndeces($arrColunas);
                                $grid->criaGrid();
                                $result = array_reverse($result);
                                foreach ($result as $res):
                                    $acao = '<button class="btn btn-primary tooltips btn-visualizar" data-co-agenda="' . $res[CO_AGENDA] . '" 
                                    data-original-title="Visualizar Agendamento" data-placement="top">
                                     <i class="clip-eye"></i>
                                 </button>';

                                    $label = '<span class="circle-img label-' . StatusAgendamentoEnum::$cores[$res['st_status']] . '">&nbsp;&nbsp;&nbsp;&nbsp;</span> ';
                                    $grid->setColunas(Valida::Resumi($res['cliente'], 30), 3);
                                    $grid->setColunas(Valida::DataShow($res['dt_inicio_agenda'], 'd/m/Y'), 1);
                                    $grid->setColunas(Valida::DataShow($res['dt_inicio_agenda'], 'H:i')
                                        . ' a ' . Valida::DataShow($res['dt_fim_agenda'], 'H:i'), 1);
                                    $grid->setColunas(Valida::Resumi($res['profissional'], 30), 3);
                                    $grid->setColunas(Valida::Resumi($res['assistente'], 30), 3);
                                    $grid->setColunas($res['no_servico'], 3);
                                    $grid->setColunas($label . StatusAgendamentoEnum::$descricao[$res['st_status']], 1);
                                    $grid->setColunas($acao, 1);
                                    $grid->criaLinha($res[CO_AGENDA]);
                                endforeach;
                                $grid->finalizaGrid();
                                ?>
                            </div>

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