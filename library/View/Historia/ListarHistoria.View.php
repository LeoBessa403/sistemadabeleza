<style>
    .btn-dark-grey{
        position: absolute;
        margin-left: 3px;
    }
    .qtd{
        float: right;
        top: -6px;
        left: -4px;
        position: relative;
        z-index: 9999 !important;
    }
</style>
<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Historia
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Historia
                        <small>Listar Historia</small>
                        <?php Valida::geraBtnNovo(Valida::GeraParametro(CO_SESSAO . '/' . $coSessao)); ?>
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
                        Historias do modulo
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::deletaRegistro("Historia");
                        Modal::confirmacao("confirma_Historia");
                        $arrColunas = array('Nome da Historia', 'Atualizado em', 'Situação', 'Esforço', 'Esf. Restante',
                            'Progresso', 'Sessão', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var HistoriaEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Historia/CadastroHistoria/' .
                                Valida::GeraParametro(CO_HISTORIA . "/" . $res->getCoHistoria()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a> ';
                            if (!empty($res->getCoAnotacao())) {
                                $acao .= ' <span class="qtd badge badge-danger"> '.count($res->getCoAnotacao()).' </span>';
                            }
                            $acao .= ' <a href="' . PASTAADMIN . 'Anotacao/ListarAnotacao/' .
                                Valida::GeraParametro(CO_HISTORIA . "/" . $res->getCoHistoria()) . '" 
                                class="btn btn-dark-grey tooltips" 
                                    data-original-title="Anotação da Historia" data-placement="top">
                                     <i class="clip-stack-empty"></i>
                                 </a>';
                            $dados['esforco'] = $res->getNuEsforco();
                            $dados['esforcoRestante'] = $res->getNuEsforcoRestante();
                            $barra = FuncoesSistema::getBarraProgresso($dados);
                            $barra = $barra['barra'];

                            $grid->setColunas($res->getDsTitulo());
                            $grid->setColunas(Valida::DataShow($res->getDtAtualizado(),'d/m/Y H:i'));
                            $grid->setColunas(FuncoesSistema::SituacaoHistoria($res->getStSituacao()));
                            $grid->setColunas($res->getNuEsforco());
                            $grid->setColunas($res->getNuEsforcoRestante());
                            $grid->setColunas($barra);
                            $grid->setColunas($res->getCoSessao()->getNoSessao());
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoHistoria());
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <div class="pull-right">
                    <!-- end: DYNAMIC TABLE PANEL -->
                    <?php Valida::geraBtnVoltar('Sessao/ListarSessao/' . Valida::GeraParametro(
                            CO_MODULO . "/" . $coModulo)); ?>
                </div>
                <br><br><br>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->