<style>
    table {
        margin-bottom: 30px;
    }

    td, th {
        padding: 8px;
    }

    .icheckbox_square-green {
        margin: 0 !important;
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
                            Bandeiras / Taxas
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Bandeiras / Taxas
                        <small>Listar Bandeiras / Taxas</small>
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
                        Bandeiras / Taxas
                    </div>
                    <?php
                    if ($dadosTipoPagamento[TipoPagamentoEnum::CARTAO_DEBITO]) {
                        ?>
                        <div class="panel-body">
                            <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                                  role="form" class="formulario"
                                  method="post" enctype="multipart/form-data"
                                  id="BandeiraTaxaDebito" name="BandeiraTaxaDebito">
                                <h2>Taxas Cartões de Débito</h2>
                                <?php
                                $bandeiras = array_reverse($bandeiras);
                                Modal::load();
                                $arrColunas = array('Aceita', 'Bandeira', 'Taxa do Cartão', 'Ações');
                                $grid = new Grid();
                                $grid->setColunasIndeces($arrColunas);
                                $grid->criaGrid();
                                $bandeiras = array_reverse($bandeiras);
                                /** @var BandeiraCartaoEntidade $bandeira */
                                foreach ($bandeiras as $bandeira) :

                                    $aceita = '<div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class=\'fa fa-check fa-white\'></i>"
                                                 data-off-label="<i class=\'fa fa-times fa-white\'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="aceite-bandeira-taxa-deb-' . $bandeira->getCoBandeiraCartao() . '"
                                                       name="bandeira-taxa-deb[' . $bandeira->getCoBandeiraCartao() . ']" 
                                                       class="aceite-deb" title=""/>
                                            </div>';

                                    $taxa = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porcentagem"
                                          placeholder="0,00" id="bandeira-taxa-deb-' . $bandeira->getCoBandeiraCartao() . '"
                                          value="" name="bandeira-taxa-deb[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';

                                    $nomeBandeira = '<img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME .
                                        'library/Imagens/' . Valida::ValNome($bandeira->getNoBandeiraCartao()) . '.png' .
                                        '&w=80&h=50" alt="' . $bandeira->getNoBandeiraCartao() .
                                        '" title="' . $bandeira->getNoBandeiraCartao() . '" />';

                                    $acao = ' <a href="' . PASTAADMIN . 'Configuracao/HistoricoCartao/' .
                                        Valida::GeraParametro(CO_BANDEIRA_CARTAO . "/" . $bandeira->getCoBandeiraCartao()) . '" 
                                        class="btn btn-med-grey tooltips" 
                                            data-original-title="Histórico de taxas da bandeira" data-placement="top">
                                             <i class="clip-folder-open"></i>
                                         </a>';

                                    $grid->setColunas($aceita, 1);
                                    $grid->setColunas($nomeBandeira . ' - ' . $bandeira->getNoBandeiraCartao());
                                    $grid->setColunas($taxa, 4);
                                    $grid->setColunas($acao, 2);
                                    $grid->criaLinha($bandeira->getCoBandeiraCartao());
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
                        <?php
                    }
                    if ($dadosTipoPagamento[TipoPagamentoEnum::CARTAO_CREDITO]) {
                        ?>
                        <div class="panel-body">
                            <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                                  role="form" class="formulario"
                                  method="post" enctype="multipart/form-data"
                                  id="BandeiraTaxaCredito" name="BandeiraTaxaCredito">
                                <h2>Taxas Cartões de Crédito</h2>
                                <?php
                                Modal::load();
                                $arrColunas = array('Aceita', 'Bandeira', 'Taxa do Cartão', 'Taxa de Antecipação', 'Ações');
                                $grid = new Grid();
                                $grid->setColunasIndeces($arrColunas);
                                $grid->criaGrid();
                                /** @var BandeiraCartaoEntidade $bandeira */
                                foreach ($bandeiras as $bandeira) :
                                    $aceita = '<div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class=\'fa fa-check fa-white\'></i>"
                                                 data-off-label="<i class=\'fa fa-times fa-white\'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="aceite-bandeira-taxa-cred-' . $bandeira->getCoBandeiraCartao() . '"
                                                       name="bandeira-taxa-cred[' . $bandeira->getCoBandeiraCartao() . ']" 
                                                       class="aceite-cred" title=""/>
                                            </div>';

                                    $taxa = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porcentagem"
                                          placeholder="0,00" id="bandeira-taxa-cred-' . $bandeira->getCoBandeiraCartao() . '"
                                          value="" name="bandeira-taxa-cred[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';
                                    $taxaAntec = '<div class="col-md-12 input-group">
                                    <input type="text" class="form-control porcentagem"
                                          placeholder="0,00" id="bandeira-taxaAntec-cred-' . $bandeira->getCoBandeiraCartao() . '"
                                           value="" name="bandeira-taxaAntec-cred[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';

                                    $nomeBandeira = '<img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME .
                                        'library/Imagens/' . Valida::ValNome($bandeira->getNoBandeiraCartao()) . '.png' .
                                        '&w=80&h=50" alt="' . $bandeira->getNoBandeiraCartao() .
                                        '" title="' . $bandeira->getNoBandeiraCartao() . '" />';

                                    $acao = ' <a href="' . PASTAADMIN . 'Configuracao/HistoricoCartao/' .
                                        Valida::GeraParametro(CO_BANDEIRA_CARTAO . "/" . $bandeira->getCoBandeiraCartao()) . '" 
                                        class="btn btn-med-grey tooltips" 
                                            data-original-title="Histórico de taxas da bandeira" data-placement="top">
                                             <i class="clip-folder-open"></i>
                                         </a>';

                                    $grid->setColunas($aceita, 1);
                                    $grid->setColunas($nomeBandeira . ' - ' . $bandeira->getNoBandeiraCartao());
                                    $grid->setColunas($taxa, 4);
                                    $grid->setColunas($taxaAntec, 4);
                                    $grid->setColunas($acao, 2);
                                    $grid->criaLinha($bandeira->getCoBandeiraCartao());
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
                    <?php } ?>
                </div>
                <div class="col-sm-2 col-sm-offset-11">
                    <!-- end: DYNAMIC TABLE PANEL -->
                    <?php Valida::geraBtnVoltar('Configuracao/FormasDePagamentoConfiguracao/'); ?>
                </div>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->