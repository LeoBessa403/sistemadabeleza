<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Cliente
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Cliente
                        <small>Listar Cliente</small>
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
                        Profissionais
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Clientes');
                        ?>
                        <h2>
                            <small>Clientes Cadastrados</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::confirmacao("confirma_Cliente");
                        $arrColunas = array('Foto', 'Cliente', 'Aniversário', 'Telefone', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var ClienteEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Cliente/CadastroCliente/' .
                                Valida::GeraParametro(CO_CLIENTE . "/" . $res->getCoCliente()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';

                            $tamanhoImg = 60;
                            $noPessoa = Valida::ValNome($res->getCoPessoa()->getNoPessoa());
                            if ($res->getCoPessoa()->getCoImagem() && (file_exists(PASTA_UPLOADS . "clientes/"
                                    . $res->getCoPessoa()->getCoImagem()->getDsCaminho()))) {
                                $imagem = Valida::GetMiniatura(
                                    'clientes/' . $res->getCoPessoa()->getCoImagem()->getDsCaminho(),
                                    $noPessoa, $tamanhoImg, $tamanhoImg, "circle-img"
                                );
                            } else {
                                if ($res->getCoPessoa()->getStSexo() == "M"):
                                    $fotoPerfil = "avatar-homem.jpg";
                                else:
                                    $fotoPerfil = "avatar-mulher.jpg";
                                endif;

                                $imagem = '<img src="' . TIMTHUMB . '?src=' . HOME .
                                    'library/Imagens/' . $fotoPerfil . '&w=' . $tamanhoImg . '&h=' . $tamanhoImg . '" 
                                alt="' . $noPessoa . '" title="' . $noPessoa . '" 
                                class="circle-img" />';
                            }
                            $grid->setColunas($imagem, 1);
                            $grid->setColunas($res->getCoPessoa()->getNoPessoa());
                            $grid->setColunas(Valida::getAniversario($res->getCoPessoa()->getDtNascimento()), 3);
                            $grid->setColunas(Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel1()), 3);
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoCliente());
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