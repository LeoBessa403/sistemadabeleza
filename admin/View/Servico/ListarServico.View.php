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
                        if ($tipoComissao) { ?>
                            <div class="alert alert-block alert-warning fade in col-md-3">
                                <h4 class="alert-heading"><i class="fa fa-calendar"></i> Legenda</h4>
                                <b>UP: Comissão quando for Único Profissional.</b><br>
                                <b>CA: Comissão quando for Com Assistente.</b><br>
                                <b>FA: Comissão quando for O Assistente.</b><br>
                            </div>
                            <?php
                        }
                        Modal::load();
                        Modal::confirmacao("confirma_Servico");
                        $arrColunas = array('Atende', 'Foto', 'Serviço', 'Categoria', 'Descrição', 'Valor R$', 'Assistente', 'Observação', 'Ações');
                        if ($tipoComissao) {
                            $arrColunas = array('Atende', 'Foto', 'Serviço', 'Categoria', 'Descrição', 'Valor R$',
                                'Comissão', 'Assistente', 'Observação', 'Ações');
                        }
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        $noPasta = "Servico/Assinante-" . AssinanteService::getCoAssinanteLogado() . '/';
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
                                    $botao = 1;
                                    if ($tipoComissao) {
                                        $botao = 2;
                                        $acao .= ' <a href="' . PASTAADMIN . 'Servico/ComissaoServico/' .
                                            Valida::GeraParametro(CO_SERVICO . "/" . $servico->getCoServico()) . '" 
                                                class="btn btn-success tooltips" data-original-title="Comissão do Serviço" 
                                                data-placement="top"> <i class="fa fa-money"></i> </a>';
                                        $comiss = '';
                                        if ($servico->getCoPercentualComissao()) {
                                            $comissao2 = [];
                                            /** @var PercentualComissaoEntidade $percent */
                                            foreach ($servico->getCoPercentualComissao() as $percent){
                                                $comissao2[$percent->getNuTipoComissao()] = $percent->getNuComissao();
                                            }
                                            $comiss = 'UP: <b>' . $comissao2[TipoComissaoEnum::UNICO_PROFISSIONAL] . '%</b><br>';
                                            $comiss .= 'CA: <b>' . $comissao2[TipoComissaoEnum::COM_ASSISTENTE] . '%</b><br>';
                                            $comiss .= 'FA: <b>' . $comissao2[TipoComissaoEnum::ASSISTENTE] . '%</b>';
                                        } else {
                                            $comiss = 'UP: <b>' . $comissao[TipoComissaoEnum::UNICO_PROFISSIONAL] . '%</b><br>';
                                            $comiss .= 'CA: <b>' . $comissao[TipoComissaoEnum::COM_ASSISTENTE] . '%</b><br>';
                                            $comiss .= 'FA: <b>' . $comissao[TipoComissaoEnum::ASSISTENTE] . '%</b>';
                                        }
                                    }
                                    $tamanhoImg = 85;
                                    if ($servico->getCoImagem()) {
                                        $caminho = '';
                                        if (file_exists(PASTA_UPLOADS . $servico->getCoImagem()->getDsCaminho())) {
                                            $caminho = $servico->getCoImagem()->getDsCaminho();
                                        } elseif (file_exists(PASTA_UPLOADS . $noPasta . $servico->getCoImagem()->getDsCaminho())) {
                                            $caminho = $noPasta . $servico->getCoImagem()->getDsCaminho();
                                        }
                                        $imagem = Valida::GetMiniatura(
                                            $caminho,
                                            $servico->getNoServico(), $tamanhoImg, $tamanhoImg,
                                            "circle-img", 1
                                        );
                                    } else {
                                        $imagem = Valida::getSemImg($tamanhoImg);
                                    }
                                    $campoAtende = ($servico->getStStatus() == StatusAcessoEnum::ATIVO)
                                        ? '<buttom class="btn btn-green servico" href="#" data-acao="DesativarServico"
                                    id="' . ST_STATUS . $servico->getCoServico() . '">
                                <i class="glyphicon glyphicon-ok-sign" ></i></buttom>'
                                        : '<buttom class="btn btn-bricky servico" href="#"  data-acao="AtivarServico"
                                    id="' . ST_STATUS . $servico->getCoServico() . '">
                                <i class="glyphicon glyphicon-remove-circle" ></i></buttom>';

                                    $grid->setColunas($campoAtende, 1);
                                    $grid->setColunas($imagem, 1);
                                    $grid->setColunas($servico->getNoServico());
                                    $grid->setColunas($res->getNoCategoriaServico());
                                    $grid->setColunas(Valida::Resumi($servico->getDsDescricao(), 300));
                                    $grid->setColunas($servico->getCoUltimoPrecoServico()->getNuValor());
                                    if ($tipoComissao) {
                                        $grid->setColunas($comiss);
                                    }
                                    $grid->setColunas(Valida::SituacaoSimNao($servico->getStAssistente()));
                                    $grid->setColunas($servico->getCoUltimoPrecoServico()->getDsObservacao());
                                    $grid->setColunas($acao, $botao);
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