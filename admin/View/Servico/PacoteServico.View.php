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
                        Pacote
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Serviço
                        <small>Pacote Serviço</small>
                        <?php Valida::geraBtnNovo('Cadastro de Pacote', 'CadastroPacoteServico'); ?>
                        <!--    CRIAR BOTÃO E MODAL PRO FORMUÇÁRIO AJAX    -->
                        <?php //Modal::Cadastro("CadastroPacoteServico",'Cadastro de Pacote'); ?>
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
                        Pacote Serviço
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        ?>
                        <h2>
                            <small>Pacotes Cadastrados</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Servico");
                        $arrColunas = array('Atende', 'Foto', 'Serviço', 'Categoria', 'Descrição', 'Valor R$',
                            'Assistente', 'Status', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var ServicoEntidade $servico */
                        foreach ($result as $servico):
//                            $acao = '<a href="' . PASTAADMIN . 'Servico/CadastroServico/' .
//                                Valida::GeraParametro(CO_SERVICO . "/" . $servico->getCoServico()) . '" class="btn btn-primary tooltips"
//                                    data-original-title="Editar Registro" data-placement="top">
//                                     <i class="fa fa-clipboard"></i></a>';
//                            $botao = 1;
//                            if ($tipoComissao) {
//                                $botao = 2;
//                                $comiss = '';
//
//                                if ($tipoComissao ==
//                                    FormaComissaoEnum::$descricao[FormaComissaoEnum::SERVICO_PROFISSIONAL]) {
//
//                                    $acao .= ' <a href="' . PASTAADMIN . 'Servico/ComissaoServicoProfissional/' .
//                                        Valida::GeraParametro(CO_SERVICO . "/" . $servico->getCoServico()) . '"
//                                                class="btn btn-success tooltips" data-original-title="Comissões dos Profissional para o Serviço"
//                                                data-placement="top"> <i class="fa fa-money"></i></a>';
//
//                                } else {
//                                    $acao .= ' <a href="' . PASTAADMIN . 'Servico/ComissaoServico/' .
//                                        Valida::GeraParametro(CO_SERVICO . "/" . $servico->getCoServico()) . '"
//                                                class="btn btn-success tooltips" data-original-title="Comissão do Serviço"
//                                                data-placement="top"> <i class="fa fa-money"></i></a>';
//
//                                    if ($servico->getCoPercentualComissao()) {
//                                        $comissao2 = [];
//                                        /** @var PercentualComissaoEntidade $percent */
//                                        foreach ($servico->getCoPercentualComissao() as $percent) {
//                                            $comissao2[$percent->getNuTipoComissao()] = $percent->getNuComissao();
//                                        }
//                                        $comiss = 'UP: <b>' . $comissao2[TipoComissaoEnum::UNICO_PROFISSIONAL] . '%</b><br>';
//                                        $comiss .= 'CA: <b>' . $comissao2[TipoComissaoEnum::COM_ASSISTENTE] . '%</b><br>';
//                                        $comiss .= 'OA: <b>' . $comissao2[TipoComissaoEnum::ASSISTENTE] . '%</b>';
//                                    } else {
//                                        $comiss = 'UP: <b>' . $comissao[TipoComissaoEnum::UNICO_PROFISSIONAL] . '%</b><br>';
//                                        $comiss .= 'CA: <b>' . $comissao[TipoComissaoEnum::COM_ASSISTENTE] . '%</b><br>';
//                                        $comiss .= 'OA: <b>' . $comissao[TipoComissaoEnum::ASSISTENTE] . '%</b>';
//                                    }
//                                }
//                            }
//                            $tamanhoImg = 85;
//                            if ($servico->getCoImagem()) {
//                                $caminho = '';
//                                if (file_exists(PASTA_UPLOADS . $servico->getCoImagem()->getDsCaminho())) {
//                                    $caminho = $servico->getCoImagem()->getDsCaminho();
//                                } elseif (file_exists(PASTA_UPLOADS . $noPasta . $servico->getCoImagem()->getDsCaminho())) {
//                                    $caminho = $noPasta . $servico->getCoImagem()->getDsCaminho();
//                                }
//                                $imagem = Valida::GetMiniatura(
//                                    $caminho,
//                                    $servico->getNoServico(), $tamanhoImg, $tamanhoImg,
//                                    "circle-img", 1
//                                );
//                            } else {
//                                $imagem = Valida::getSemImg($tamanhoImg);
//                            }
//                            $campoAtende = ($servico->getStStatus() == StatusAcessoEnum::ATIVO)
//                                ? '<buttom class="btn btn-green servico" href="#" data-acao="DesativarServico"
//                                    id="' . ST_STATUS . $servico->getCoServico() . '">
//                                <i class="glyphicon glyphicon-ok-sign" ></i></buttom>'
//                                : '<buttom class="btn btn-bricky servico" href="#"  data-acao="AtivarServico"
//                                    id="' . ST_STATUS . $servico->getCoServico() . '">
//                                <i class="glyphicon glyphicon-remove-circle" ></i></buttom>';
//
//                            $grid->setColunas($campoAtende, 1);
//                            $grid->setColunas($imagem, 1);
//                            $grid->setColunas($servico->getNoServico());
//                            $grid->setColunas($servico->getCoCategoriaServico()->getNoCategoriaServico());
//                            $grid->setColunas(Valida::Resumi($servico->getDsDescricao(), 300));
//                            $grid->setColunas($servico->getCoUltimoPrecoServico()->getNuValor());
//                            if ($tipoComissao == FormaComissaoEnum::SERVICO) {
//                                $grid->setColunas($comiss);
//                            }
//                            $grid->setColunas(Valida::SituacaoSimNao($servico->getStAssistente()));
//                            $grid->setColunas($servico->getCoUltimoPrecoServico()->getDsObservacao());
//                            $grid->setColunas($acao, $botao);
//                            $grid->criaLinha($servico->getCoServico());
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