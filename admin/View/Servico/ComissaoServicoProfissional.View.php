<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Comissão
                        </a>
                    </li>
                    <li class="active">
                        Serviço / Profissional
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Comissão
                        <small> Serviço / Profissional</small>
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
                        Comissão
                    </div>
                    <div class="panel-body">
                        <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                              role="form" class="formulario" method="post" enctype="multipart/form-data"
                              id="ComissaoServicoProfissional" name="ComissaoServicoProfissional">
                            <h2>Comissões do Serviço: <?= $servico; ?></h2>
                            <?php
                            Modal::load();
                            $arrColunas = array('Profissional',
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::UNICO_PROFISSIONAL],
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::COM_ASSISTENTE],
                                TipoComissaoEnum::$descricao[TipoComissaoEnum::ASSISTENTE]);
                            $grid = new Grid();
                            $grid->setColunasIndeces($arrColunas);
                            $grid->criaGrid();
                            foreach ($profissionais as $profissional) :
                                $grid->setColunas($profissional[NO_PESSOA]);
                                foreach (TipoComissaoEnum::$descricao as $chave => $descricao) {
                                    $campo = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porc-int"
                                          placeholder="0" id="' . NU_TIPO_COMISSAO . $chave . '-' .
                                        $profissional[CO_PROFISSIONAL] . '" value="' .
                                        $profissional[NU_TIPO_COMISSAO . $chave] . '" 
                                            name="' . NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE . '[' .
                                        $profissional[CO_PROFISSIONAL] . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">%</span></div>';
                                    $grid->setColunas($campo,3);
                                }
                                $grid->criaLinha($profissional[CO_PROFISSIONAL]);
                            endforeach;
                            $grid->finalizaGrid();
                            ?>
                            <div class="form-group">
                                <div class="col-sm-2 col-sm-offset-10">
                                    <button type="submit" class="btn btn-success btn-block">
                                        Salvar <i class="fa fa-arrow-circle-right"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-2 col-sm-offset-11">
                    <!-- end: DYNAMIC TABLE PANEL -->
                    <?php Valida::geraBtnVoltar('Servico/ComissaoServicoProfissional/'); ?>
                </div>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->