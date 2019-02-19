<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Profissional
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Profissional
                        <small>Listar Profissional</small>
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
                        Modal::load();
                        Modal::confirmacao("confirma_Profissional");
                        Modal::DesativarProfissional("DesativarProfissional");
                        Modal::AtivarProfissional("AtivarProfissional");
                        $arrColunas = array('Foto', 'Profissional', 'Telefone', 'Nascimento', 'Cargo', 'Assistente', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var ProfissionalEntidade $res */
                        foreach ($result as $res):

                            $acao = '<a href="' . PASTAADMIN . 'Profissional/CadastroProfissional/' .
                                Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>';
                            if ($res->getStStatus() == StatusAcessoEnum::ATIVO) {
                                $acao .= ' <a data-toggle="modal" role="button" class="btn btn-danger tooltips acao" 
                                            id="' . $res->getCoProfissional() . '" data-msg-restricao="MSG03"
                                           href="#DesativarProfissional" data-original-title="Desativar Profissional" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Profissional/DesativarProfissional/' .
                                    Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '">
                                            <i class="fa fa-lock"></i>
                                        </a>';
                            } else {
                                $acao .= ' <a data-toggle="modal" role="button" class="btn btn-green tooltips acao" 
                                            id="' . $res->getCoProfissional() . '" data-msg-restricao="MSG03"
                                           href="#AtivarProfissional" data-original-title="Ativar Profissional" data-placement="top"
                                           data-url-action="' . PASTAADMIN . 'Profissional/AtivarProfissional/' .
                                    Valida::GeraParametro(CO_PROFISSIONAL . "/" . $res->getCoProfissional()) . '">
                                            <i class="fa fa-unlock-alt"></i>
                                        </a>';
                            }
                            $cargos = [];
                            /** @var ProfissionalCargoEntidade $cargoProf */
                            foreach ($res->getCoProfissionalCargo() as $cargoProf) {
                                $cargos[] = $cargoProf->getCoCargo()->getNoCargo();
                            }
                            $tamanhoImg = 60;
                            $noPessoa = Valida::ValNome($res->getCoPessoa()->getNoPessoa());
                            if ($res->getCoImagem() && (file_exists(PASTA_UPLOADS . "usuarios/" . $res->getCoImagem()->getDsCaminho()))) {
                                $imagem = Valida::GetMiniatura(
                                    'usuarios/' . $res->getCoImagem()->getDsCaminho(),
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
                            $grid->setColunas(Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel1()), 2);
                            $grid->setColunas(Valida::DataShow($res->getCoPessoa()->getDtNascimento()), 2);
                            $grid->setColunas(implode(', ', $cargos));
                            $grid->setColunas(Valida::SituacaoSimNao($res->getStAssistente()), 2);
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoProfissional());
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