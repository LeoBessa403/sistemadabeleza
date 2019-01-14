<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Assinante
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Assinante
                        <small>Listar Assinante</small>
                        <?php Valida::geraBtnNovo(); ?>
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
                        Assinantes
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Assinante");
                        $arrColunas = array('Assinante', 'Responsável', 'E-mail', 'Status Assinante', 'Expiração', 'Status Plano', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var AssinanteEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Assinante/CadastroAssinante/' .
                                Valida::GeraParametro(CO_ASSINANTE . "/" . $res->getCoAssinante()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';
                            if (!empty($res->getCoPlanoAssinanteAssinatura())) {
                                $acao .= ' <a href="' . PASTAADMIN . 'Assinante/HistoricoAssinante/' .
                                    Valida::GeraParametro(CO_ASSINANTE . "/" . $res->getCoAssinante()) . '" 
                                class="btn btn-med-grey tooltips" 
                                    data-original-title="Histórico do Assinante" data-placement="top">
                                     <i class="clip-folder-open"></i>
                                 </a>';
                            }
                            $acao .= ' <a href="' . PASTAADMIN . 'Assinante/PagamentoAssinante/' .
                                Valida::GeraParametro(CO_ASSINANTE . "/" . $res->getCoAssinante()) . '" 
                        class="btn btn-warning tooltips" data-original-title="Pagamentos do Assinante" data-placement="top">
                                     <i class="fa fa-money"></i>
                                 </a>';
                            if (!empty($res->getCoAssinanteMatriz())) {
                                if (!empty($res->getCoUnicoAssinanteMatriz())) {
                                    $acao .= ' <a href="' . PASTAADMIN . 'Assinante/FilialAssinante/' .
                                        Valida::GeraParametro(CO_ASSINANTE . "/" . $res->getCoAssinante()) . '" 
                                class="btn btn-green tooltips" 
                                    data-original-title="Filiais do Assinante" data-placement="top">
                                     <i class="clip-tree"></i>
                                 </a>';
                                }
                            }
                            $statusSis = AssinanteService::getStatusAssinante(Valida::DataShow($res->getDtExpiracao()));
                            $empresa = ($res->getCoEmpresa()) ? $res->getCoEmpresa()->getNoFantasia() : '';
                            $grid->setColunas($empresa);
                            $grid->setColunas($res->getCoPessoa()->getNoPessoa());
                            $grid->setColunas($res->getCoPessoa()->getCoContato()->getDsEmail());
                            $grid->setColunas(FuncoesSistema::StatusLabel($res->getStStatus()), 2);
                            $grid->setColunas(Valida::DataShow($res->getDtExpiracao()), 2);
                            $grid->setColunas(FuncoesSistema::getLabelStatusPlano($statusSis), 2);
                            $grid->setColunas($acao, 4);
                            $grid->criaLinha($res->getCoAssinante());
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->