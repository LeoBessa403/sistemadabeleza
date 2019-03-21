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
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Serviço
                        <small>Listar Serviço</small>
                        <?php Valida::geraBtnNovo('Cadastrar Serviço', 'CadastroServico'); ?>
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
                        Categoria Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Servico");
                        $arrColunas = array('Atende', 'Foto', 'Serviço', 'Categoria', 'Descrição', 'Valor R$', 'Observação', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var CategoriaServicoEntidade $res */
                        foreach ($result as $res):
                            if (!$coCategoriaServico || ($coCategoriaServico && $coCategoriaServico == $res->getCoCategoriaServico())) {
                                /** @var ServicoEntidade $servico */
                                foreach ($res->getCoServico() as $servico):
                                    $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroServico/' .
                                        Valida::GeraParametro(CO_SERVICO . "/" . $servico->getCoServico()) . '" class="btn btn-primary tooltips"
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';
                                    $tamanhoImg = 85;
                                    if ($servico->getCoImagem() && (file_exists(PASTA_UPLOADS . $servico->getCoImagem()->getDsCaminho()))) {
                                        $imagem = Valida::GetMiniatura(
                                            $servico->getCoImagem()->getDsCaminho(),
                                            $servico->getNoServico(), $tamanhoImg, $tamanhoImg,
                                            "circle-img", 1
                                        );
                                    } else {
                                        $imagem = Valida::getSemImg($tamanhoImg);
                                    }
                                    $campoAtende = ($servico->getStStatus() == StatusAcessoEnum::ATIVO)
                                        ? '<a class="btn btn-green servico-ativo" href="#"
                                    id="' . ST_STATUS . $servico->getCoServico() . '">
                                <i class="glyphicon glyphicon-ok-sign" ></i></a>'
                                        : '<a class="btn btn-bricky servico-desativo" href="#"
                                    id="' . ST_STATUS . $servico->getCoServico() . '">
                                <i class="glyphicon glyphicon-remove-circle" ></i></a>';

                                    $grid->setColunas($campoAtende, 1);
                                    $grid->setColunas($imagem, 1);
                                    $grid->setColunas($servico->getNoServico());
                                    $grid->setColunas($res->getNoCategoriaServico());
                                    $grid->setColunas(Valida::Resumi($servico->getDsDescricao(), 300));
                                    $grid->setColunas($servico->getCoUltimoPrecoServico()->getNuValor());
                                    $grid->setColunas($servico->getCoUltimoPrecoServico()->getDsObservacao());
                                    $grid->setColunas($acao, 2);
                                    $grid->criaLinha($servico->getCoServico());
                                endforeach;
                            }
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