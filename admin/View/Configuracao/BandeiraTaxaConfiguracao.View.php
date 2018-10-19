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
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        $arrColunas = array('Aceita', 'Bandeira', 'Taxa do Cartão', 'Taxa de Antecipação', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        $bandeiras = array_reverse($bandeiras);
                        /** @var BandeiraCartaoEntidade $bandeira */
                        foreach ($bandeiras as $bandeira) :
                            $acao = '';
                            $aceita = '<input type="checkbox" class="square-green"
                                          value="" id="bandeira-taxa-' . $bandeira->getCoBandeiraCartao() . '"
                                          name="bandeira-taxa[' . $bandeira->getCoBandeiraCartao() . ']"/>';
                            $taxa = '<div class="col-md-4 input-group bandeira-taxa-' . $bandeira->getCoBandeiraCartao() . '">
                                    <input type="text" class="form-control porcentagem"
                                          placeholder="0,00" id="bandeira-taxa-' . $bandeira->getCoBandeiraCartao() . '"
                                          value="" name="bandeira-taxa[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';
                            $taxaAntec = '<div class="col-md-4 input-group bandeira-taxaAntec-' . $bandeira->getCoBandeiraCartao() . '">
                                    <input type="text" class="form-control porcentagem"
                                          placeholder="0,00" id="bandeira-taxaAntec-' . $bandeira->getCoBandeiraCartao() . '"
                                           value="" name="bandeira-taxaAntec[' . $bandeira->getCoBandeiraCartao() . ']"/>
                                          <span class="input-group-addon" style="height: 34px;">
                                    %</span></div>';

                            $grid->setColunas($aceita, 1);
                            $grid->setColunas($bandeira->getNoBandeiraCartao());
                            $grid->setColunas($taxa);
                            $grid->setColunas($taxaAntec);
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($bandeira->getCoBandeiraCartao());
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