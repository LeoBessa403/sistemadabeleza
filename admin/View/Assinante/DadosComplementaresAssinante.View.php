<style>
    table {
        margin-bottom: 30px;
    }

    td, th {
        padding: 8px;
    }

    .icheckbox_square-purple {
        margin: 0 !important;
    }
</style>
<?php
/** @var AssinanteEntidade $assinanteEdit */
$assinanteEdit = $assinante;
?>
<div class="main-content">
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Assinante
                        </a>
                    </li>
                    <li class="active">
                        Dados Complementares
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Assinante
                        <small> Dados Complementares</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        Modal::load();
        ?>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Dados Complementares
                    </div>
                    <div class="panel-body">
                        <form action="<?= HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action; ?>"
                              role="form" class="smart-wizard form-horizontal formulario"
                              method="post" enctype="multipart/form-data"
                              id="DadosComplementaresAssinante" name="DadosComplementaresAssinante">
                            <div id="wizard" class="swMain">
                                <ul>
                                    <li>
                                        <a href="#step-1" class="selected">
                                            <div class="stepNumber">1</div>
                                            <span class="stepDesc"> Empresa <br/>
                                                <small>Informações básicas</small>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#step-2">
                                            <div class="stepNumber">2</div>
                                            <span class="stepDesc"> Endereço<br/>
												<small>Informações de Endereço</small>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#step-3">
                                            <div class="stepNumber">3</div>
                                            <span class="stepDesc"> Contatos<br/>
												<small>Informações de Contatos</small>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#step-4">
                                            <div class="stepNumber">4</div>
                                            <span class="stepDesc"> Facilidades e Benefícios<br/>
												<small>Informações das Facilidades e Benefícios</small>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#step-5">
                                            <div class="stepNumber">5</div>
                                            <span class="stepDesc"> Funcionamento<br/>
												<small>Informações do horário de funcionamento</small>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#step-6">
                                            <div class="stepNumber">6</div>
                                            <span class="stepDesc"> Fotos<br/>
												<small>Fotos do Estabelecimento</small>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                                <div class="progress progress-striped active progress-sm">
                                    <div aria-valuemax="100" aria-valuemin="0" role="progressbar"
                                         class="progress-bar progress-bar-success step-bar">
                                        <span class="sr-only"> 0% Complete (success)</span>
                                    </div>
                                </div>
                                <div id="step-1">
                                    <h2 class="StepTitle">Empresa
                                        <small>Informações básicas</small>
                                    </h2>
                                    <div class="form-group">
                                        <label for="<?= NO_PESSOA; ?>" class="col-sm-3 control-label">
                                            Responsável <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_PESSOA; ?>"
                                                   name="<?= NO_PESSOA; ?>"
                                                   value="<?= $assinanteEdit->getCoPessoa()->getNoPessoa(); ?>"
                                                   placeholder="Nome do Responsável pela empresa">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NO_FANTASIA; ?>" class="col-sm-3 control-label">
                                            Nome Fantasia <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_FANTASIA; ?>"
                                                   name="<?= NO_FANTASIA; ?>"
                                                   value="<?= $assinanteEdit->getCoEmpresa()->getNoFantasia(); ?>"
                                                   placeholder="Nome do Estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NO_EMPRESA; ?>" class="col-sm-3 control-label">
                                            Razão Social
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_EMPRESA; ?>"
                                                   name="<?= NO_EMPRESA; ?>"
                                                   value="<?= $assinanteEdit->getCoEmpresa()->getNoEmpresa(); ?>"
                                                   placeholder="Nome da Empresa">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NU_CNPJ; ?>" class="col-sm-3 control-label">
                                            CNPJ
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control cnpj" id="<?= NU_CNPJ; ?>"
                                                   name="<?= NU_CNPJ; ?>"
                                                   value="<?= $assinanteEdit->getCoEmpresa()->getNuCnpj(); ?>"
                                                   placeholder="Número do CNPJ">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NU_INSC_ESTADUAL; ?>" class="col-sm-3 control-label">
                                            Inscrição Estadual
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NU_INSC_ESTADUAL; ?>"
                                                   name="<?= NU_INSC_ESTADUAL; ?>"
                                                   value="<?= $assinanteEdit->getCoEmpresa()->getNuInscEstadual(); ?>"
                                                   placeholder="Número da Inscrição Estadual">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_DESCRICAO; ?>" class="col-sm-3 control-label">
                                            Descrição
                                        </label>
                                        <div class="col-sm-7">
                                            <textarea class="form-control tel" id="<?= DS_DESCRICAO; ?>"
                                                      name="<?= DS_DESCRICAO; ?>"
                                                      placeholder="Descrição da sua empresa">
                                                <?= $assinanteEdit->getCoEmpresa()->getDsObservacao(); ?>
                                            </textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-8">
                                            <button id="1" class="btn btn-primary next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-2">
                                    <?php
                                        /** @var EnderecoEntidade $endereco */
                                        $enderecoEdit =  $endereco;
                                    ?>
                                    <h2 class="StepTitle">Endereço
                                        <small>Informações de Endereço</small>
                                    </h2>
                                    <div class="form-group">
                                        <label for="<?= NU_CEP; ?>" class="col-sm-3 control-label">
                                            CEP
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control cep" id="<?= NU_CEP; ?>"
                                                   name="<?= NU_CEP; ?>"
                                                   value="<?= $enderecoEdit->getNuCep(); ?>"
                                                   placeholder="CEP do estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_ENDERECO; ?>" class="col-sm-3 control-label">
                                            Endereço
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= DS_ENDERECO; ?>"
                                                   name="<?= DS_ENDERECO; ?>"
                                                   value="<?= $enderecoEdit->getDsEndereco(); ?>"
                                                   placeholder="Endereço do estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_COMPLEMENTO; ?>" class="col-sm-3 control-label">
                                            Complemento
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= DS_COMPLEMENTO; ?>"
                                                   name="<?= DS_COMPLEMENTO; ?>"
                                                   value="<?= $enderecoEdit->getDsComplemento(); ?>"
                                                   placeholder="Complemento do endereço">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_BAIRRO; ?>" class="col-sm-3 control-label">
                                            Bairro
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= DS_BAIRRO; ?>"
                                                   name="<?= DS_BAIRRO; ?>"
                                                   value="<?= $enderecoEdit->getDsBairro(); ?>"
                                                   placeholder="Bairro do estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NO_CIDADE; ?>" class="col-sm-3 control-label">
                                            Cidade
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_CIDADE; ?>"
                                                   name="<?= NO_CIDADE; ?>"
                                                   value="<?= $enderecoEdit->getNoCidade(); ?>"
                                                   placeholder="Cidade do estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= SG_UF; ?>" class="col-sm-3 control-label">
                                            Estado
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="<?= SG_UF; ?>" name="<?= SG_UF; ?>">
                                                <option value="">&nbsp;Selecione um estado</option>
                                                <?php
                                                $options = EnderecoService::montaComboEstadosDescricao();
                                                foreach ($options as $sg => $estado) {
                                                    $selectedEstado = ($enderecoEdit->getSgUf() == $sg)
                                                        ? 'selected="selected"' : '';
                                                    echo '<option value="' . $sg . '" ' . $selectedEstado . '>' . $estado . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-light-grey back-step btn-block">
                                                <i class="fa fa-circle-arrow-left"></i> Voltar
                                            </button>
                                        </div>
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-primary next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-3">
                                    <h2 class="StepTitle">Contatos
                                        <small>Informações de Contatos</small>
                                    </h2>
                                    <?php
                                    /** @var ContatoEntidade $contato */
                                    $contatoEdit =  $contato;
                                    ?>
                                    <div class="form-group">
                                        <label for="<?= NU_TEL1; ?>" class="col-sm-3 control-label">
                                            Telefone (WhatsApp) <span class="symbol  required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control tel" id="<?= NU_TEL1; ?>"
                                                   name="<?= NU_TEL1; ?>"
                                                   value="<?= $contatoEdit->getNuTel1(); ?>"
                                                   placeholder="Número do contato com WhatsApp">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NU_TEL2; ?>" class="col-sm-3 control-label">
                                            Telefone 2
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control tel" id="<?= NU_TEL2; ?>"
                                                   name="<?= NU_TEL2; ?>"
                                                   value="<?= $contatoEdit->getNuTel2(); ?>"
                                                   placeholder="Número do contato do estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_EMAIL; ?>" class="col-sm-3 control-label">
                                            E-mail <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control email" id="<?= DS_EMAIL; ?>"
                                                   name="<?= DS_EMAIL; ?>"
                                                   value="<?= $contatoEdit->getDsEmail(); ?>"
                                                   placeholder="E-mail para contato">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_SITE; ?>" class="col-sm-3 control-label">
                                            Site
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= DS_SITE; ?>"
                                                   name="<?= DS_SITE; ?>"
                                                   value="<?= $contatoEdit->getDsSite(); ?>"
                                                   placeholder="Site da empresa">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-light-grey back-step btn-block">
                                                <i class="fa fa-circle-arrow-left"></i> Voltar
                                            </button>
                                        </div>
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-primary next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-4">
                                    <h2 class="StepTitle"> Facilidades e Benefícios
                                        <small>Informações das Facilidades e Benefícios</small>
                                    </h2>
                                    <div class="form-group">
                                        <label for="<?= TP_ESTABELECIMENTO; ?>" class="col-sm-3 control-label">
                                            Tipo de estabelecimento <span class="symbol required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="<?= TP_ESTABELECIMENTO; ?>"
                                                    name="<?= TP_ESTABELECIMENTO; ?>">
                                                <option value="">Selecione um item</option>
                                                <?php
                                                foreach (TipoEstabelecimentoEnum::$descricao as $tipo => $desc) {
                                                    $selectedTipoEstab = ($enderecoEdit->getSgUf() == $sg)
                                                        ? 'selected="selected"' : '';
                                                    echo '<option value="' . $tipo . '" ' . $selectedTipoEstab . '>' . $desc . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= TP_ATENDIMENTO; ?>" class="col-sm-3 control-label">
                                            Atendimento
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="<?= TP_ATENDIMENTO; ?>"
                                                    name="<?= TP_ATENDIMENTO; ?>">
                                                <option value="">Selecione um item</option>
                                                <?php
                                                foreach (TipoAtendimentoEnum::$descricao as $tipo => $desc) {
                                                    echo '<option value="' . $tipo . '">' . $desc . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= TP_GENERO_ESPECIALIZADO; ?>" class="col-sm-3 control-label">
                                            Genero Especializado
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="<?= TP_GENERO_ESPECIALIZADO; ?>"
                                                    name="<?= TP_GENERO_ESPECIALIZADO; ?>">
                                                <option value="">Selecione um item</option>
                                                <?php
                                                foreach (TipoGeneroEspecializadoEnum::$descricao as $tipo => $desc) {
                                                    echo '<option value="' . $tipo . '">' . $desc . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= TP_ESTACIONAMENTO; ?>" class="col-sm-3 control-label">
                                            Estacionamento
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="<?= TP_ESTACIONAMENTO; ?>"
                                                    name="<?= TP_ESTACIONAMENTO; ?>">
                                                <option value="">Selecione um item</option>
                                                <?php
                                                foreach (TipoEstacionamentoEnum::$descricao as $tipo => $desc) {
                                                    echo '<option value="' . $tipo . '">' . $desc . '</option>';
                                                }
                                                ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= ST_LANCHONETE; ?>" class="col-sm-3 control-label">
                                            Lanchonete
                                        </label>
                                        <div class="col-sm-7">
                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_LANCHONETE; ?>"
                                                       name="<?= ST_LANCHONETE; ?>" class="" title=""/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= ST_TELEVISAO; ?>" class="col-sm-3 control-label">
                                            Televisão
                                        </label>
                                        <div class="col-sm-7">
                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_TELEVISAO; ?>"
                                                       name="<?= ST_TELEVISAO; ?>" class="" title=""/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= ST_WIFI; ?>" class="col-sm-3 control-label">
                                            Wi-Fi
                                        </label>
                                        <div class="col-sm-7">
                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_WIFI; ?>"
                                                       name="<?= ST_WIFI; ?>" class="" title=""/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= ST_ACESSO_DEFICIENTE; ?>" class="col-sm-3 control-label">
                                            Acesso Deficiente
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_ACESSO_DEFICIENTE; ?>"
                                                       name="<?= ST_ACESSO_DEFICIENTE; ?>" class="" title=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= ST_JOGOS; ?>" class="col-sm-3 control-label">
                                            Jogos
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_JOGOS; ?>"
                                                       name="<?= ST_JOGOS; ?>" class="" title=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-light-grey back-step btn-block">
                                                <i class="fa fa-circle-arrow-left"></i> Voltar
                                            </button>
                                        </div>
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-primary next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-5">
                                    <h2 class="StepTitle">Funcionamento
                                        <small>Informações do horário de funcionamento</small>
                                    </h2>
                                    <div class="form-group col-sm-12">
                                        <div class="col-sm-12">


                                            <table class="table-striped table-bordered table-hover table-full-width"
                                                   id="nova" style="width: 100%" cellpadding="5" cellspacing="5">
                                                <thead>
                                                <tr style="background-color: #99ccff; color: #000;" role="row">
                                                    <th>Atende</th>
                                                    <th>Dia da Semana</th>
                                                    <th>Abertura</th>
                                                    <th>Fechamento</th>
                                                </tr>
                                                </thead>
                                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                                <?php
                                                foreach (DiasEnum::$descricao as $numero => $dia) {
                                                    $check = ($numero < 6) ? ' checked="checked"' : null;
                                                    $abertura = ($numero < 6) ? '08:00' : null;
                                                    $fechamento = ($numero < 6) ? '18:00' : null;
                                                    ?>
                                                    <tr class="linha-tabela odd">
                                                        <td>
                                                            <label for="<?= NU_DIA_SEMANA; ?><?= $numero; ?>"></label>
                                                            <input type="checkbox" <?= $check; ?>
                                                                   class="square-purple"
                                                                   value="" id="<?= NU_DIA_SEMANA; ?><?= $numero; ?>"
                                                                   name="<?= NU_DIA_SEMANA; ?>[<?= $numero; ?>]"/>
                                                        </td>
                                                        <td><?= $dia; ?></td>
                                                        <td>
                                                            <input type="text" class="form-control horas"
                                                                   id="<?= NU_HORA_ABERTURA; ?><?= $numero; ?>"
                                                                   name="<?= NU_HORA_ABERTURA; ?>[<?= $numero; ?>]"
                                                                   value="<?= $abertura; ?>"
                                                                   placeholder="Horário de Abertura do dia">
                                                        </td>
                                                        <td>
                                                            <input type="text" class="form-control horas"
                                                                   id="<?= NU_HORA_FECHAMENTO; ?><?= $numero; ?>"
                                                                   name="<?= NU_HORA_FECHAMENTO; ?>[<?= $numero; ?>]"
                                                                   value="<?= $fechamento; ?>"
                                                                   placeholder="Horário de Fechamento do dia">
                                                        </td>
                                                    </tr>
                                                <?php } ?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-light-grey back-step btn-block">
                                                <i class="fa fa-circle-arrow-left"></i> Voltar
                                            </button>
                                        </div>
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-primary next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-6">
                                    <h2 class="StepTitle">Fotos
                                        <small>Fotos do Estabelecimento</small>
                                    </h2>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label for="ds_caminho" class="control-label"> Foto Principal /
                                                Logo</label>
                                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                                <div class="fileupload-new thumbnail"
                                                     style="width: 150px; height: 150px;">
                                                    <img src="<?= HOME; ?>library/Helpers/Timthumb.class.php?src=<?= HOME; ?>library/Imagens/sem-foto.jpg&amp;w=150&amp;h=150"
                                                         alt="Pre Carregamento" title="Pre Carregamento"></div>
                                                <div class="fileupload-preview fileupload-exists thumbnail"
                                                     style="max-width: 150px; max-height: 150px; line-height: 20px;"></div>
                                                <div class="user-edit-image-buttons">
                                                    <span class="btn btn-success btn-file"><span
                                                                class="fileupload-new"><i
                                                                    class="fa fa-folder-open-o"></i> Abrir Arquivo</span>
                                                    <span class="fileupload-exists"><i class="fa fa-folder-open-o"></i> Trocar</span>
                                                            <input class="file-input " id="ds_caminho" name="ds_caminho"
                                                                   type="file">
                                                    </span>
                                                    <a href="#" class="btn fileupload-exists btn-bricky"
                                                       data-dismiss="fileupload">
                                                        <i class="fa fa-trash-o"></i> Remover
                                                    </a>
                                                </div>
                                            </div>
                                            <span class="help-block" id="ds_caminho-info"><i
                                                        class="fa fa-info-circle"></i> Foto da fachada do estabelecimento</span>
                                        </div>
                                        <div class="col-sm-6" style="margin-top: 30px;">
                                            <label for="<?= CO_IMAGEM_ASSINANTE; ?>" class="control-label">
                                                Galeria de Fotos do Estabelecimento</label>
                                            <div class="fileupload fileupload-new" data-provides="fileupload"
                                                 style="margin-bottom: 0px;">
                                                <div class="input-group">
                                                    <div class="form-control uneditable-input">
                                                        <i class="fa fa-file fileupload-exists"></i>
                                                        <span class="fileupload-preview"></span>
                                                    </div>
                                                    <div class="input-group-btn">
                                                        <div class="btn btn-dark-grey btn-file">
                                                            <span class="fileupload-new"><i
                                                                        class="fa fa-folder-open-o"></i> Carregar Fotos</span>
                                                            <span class="fileupload-exists"><i
                                                                        class="fa fa-folder-open-o"></i> Trocar</span>
                                                            <input multiple="multiple" class="file-input multipla"
                                                                   placeholder="5" id="<?= CO_IMAGEM_ASSINANTE; ?>"
                                                                   name="<?= CO_IMAGEM_ASSINANTE; ?>[]" type="file">
                                                        </div>
                                                        <a href="#" class="btn btn-bricky fileupload-exists"
                                                           data-dismiss="fileupload">
                                                            <i class="fa fa-trash-o"></i> Remover
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <span class="help-block" id="<?= CO_IMAGEM_ASSINANTE; ?>-info"><i
                                                        class="fa fa-info-circle"></i> Pode enviar até 5 Fotos</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button class="btn btn-light-grey back-step btn-block">
                                                <i class="fa fa-circle-arrow-left"></i> Voltar
                                            </button>
                                        </div>
                                        <div class="col-sm-2 col-sm-offset-3">
                                            <button type="submit" class="btn btn-success btn-block">
                                                Salvar <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->