<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Serviço
                        </a>
                    </li>
                    <li class="active">
                        Promoção
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Serviço
                        <small>Promoção Serviço</small>
                        <?php Valida::geraBtnNovo('Cadastro de Promoção', 'CadastroPromocaoServico'); ?>
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
                        Promoção Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        ?>
                        <h2>
                            <small>Promoções Cadastradas</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Promocao");
                        $arrColunas = array('Título', 'Valor R$', 'Status', 'Período', 'horário', 'Dias', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var PromocaoEntidade $promocao */
                        foreach ($result as $promocao):
                            debug($promocao,1);
//                            $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroPromocaoServico/' .
//                                Valida::GeraParametro(CO_PACOTE_SERV . "/" . $promocao->getCoPromocao()) . '" class="btn btn-primary tooltips"
//                                    data-original-title="Editar Registro" data-placement="top">
//                                     <i class="fa fa-clipboard"></i></a>';
//
//                            $acao .= ' <a href="' . PASTAADMIN . 'Servico/HistoricoPromocaoServico/' .
//                                Valida::GeraParametro(CO_PACOTE_SERV . "/" . $promocao->getCoPromocao()) . '"
//                                        class="btn btn-med-grey tooltips"
//                                            data-original-title="Histórico de Promoção de serviços" data-placement="top">
//                                             <i class="clip-folder-open"></i>
//                                         </a>';
//                            $atendi = '';
//                            $dias = explode(', ', $promocao->getCoUltimoPrecoPromocao()->getNuDiaSemana());
//                            foreach ($dias as $dia) {
//                                $atendi .= DiasEnum::getDescricaoValor($dia) . ', ';
//                            }
//                            $grid->setColunas($promocao->getNoTitulo());
//                            $grid->setColunas($promocao->getCoUltimoPrecoPromocao()->getNuValor(), 1);
//                            $grid->setColunas(
//                                Valida::SituacaoAtivoInativo($promocao->getCoUltimoPrecoPromocao()->getStStatus())
//                                , 1);
//                            $grid->setColunas(Valida::DataShow($promocao->getCoUltimoPrecoPromocao()->getDtInicio())
//                                . ' a ' . Valida::DataShow($promocao->getCoUltimoPrecoPromocao()->getDtFim()));
//                            $grid->setColunas($promocao->getCoUltimoPrecoPromocao()->getNuHoraAbertura() . ' a ' .
//                                $promocao->getCoUltimoPrecoPromocao()->getNuHoraFechamento());
//                            $grid->setColunas($atendi);
//                            $grid->setColunas($acao, 2);
//                            $grid->criaLinha($promocao->getCoPromocao());
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