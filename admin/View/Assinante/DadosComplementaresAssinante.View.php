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
                        <form action="#" role="form" class="smart-wizard form-horizontal" id="form">
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
                                        <label for="<?= NO_EMPRESA; ?>" class="col-sm-3 control-label">
                                            Razão Social
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_EMPRESA; ?>"
                                                   name="<?= NO_EMPRESA; ?>"
                                                   placeholder="Nome da Empresa">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NO_FANTASIA; ?>" class="col-sm-3 control-label">
                                            Nome Fantasia <span class="symbol  required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_FANTASIA; ?>"
                                                   name="<?= NO_FANTASIA; ?>"
                                                   placeholder="Nome do Estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NO_PESSOA; ?>" class="col-sm-3 control-label">
                                            Responsável <span class="symbol  required"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="<?= NO_PESSOA; ?>"
                                                   name="<?= NO_PESSOA; ?>"
                                                   placeholder="Nome do Responsável pela empresa">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= NU_CNPJ; ?>" class="col-sm-3 control-label">
                                            CNPJ
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control cnpj" id="<?= NU_CNPJ; ?>"
                                                   name="<?= NU_CNPJ; ?>"
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
                                                   placeholder="Número da Inscrição Estadual">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_DESCRICAO; ?>" class="col-sm-3 control-label">
                                            Descrição
                                        </label>
                                        <div class="col-sm-7">
                                            <textarea type="text" class="form-control tel" id="<?= DS_DESCRICAO; ?>"
                                                      name="<?= DS_DESCRICAO; ?>"
                                                      placeholder="Descrição da sua empresa"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-2 col-sm-offset-8">
                                            <button id="1" class="btn btn-success next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-2">
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
                                                    echo '<option value="' . $sg . '">' . $estado . '</option>';
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
                                            <button class="btn btn-success next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div id="step-3">
                                    <h2 class="StepTitle">Contatos
                                        <small>Informações de Contatos</small>
                                    </h2>
                                    <div class="form-group">
                                        <label for="<?= NU_TEL1; ?>" class="col-sm-3 control-label">
                                            Telefone (WhatsApp)
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control tel" id="<?= NU_TEL1; ?>"
                                                   name="<?= NU_TEL1; ?>"
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
                                                   placeholder="Número do contato do estabelecimento">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="<?= DS_EMAIL; ?>" class="col-sm-3 control-label">
                                            E-mail
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control email" id="<?= DS_EMAIL; ?>"
                                                   name="<?= DS_EMAIL; ?>"
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
                                            <button class="btn btn-success next-step btn-block">
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
                                            Tipo de estabelecimento
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="<?= TP_ESTABELECIMENTO; ?>"
                                                    name="<?= TP_ESTABELECIMENTO; ?>">
                                                <option value="">Selecione um item</option>
                                                <?php
                                                foreach (TipoEstabelecimentoEnum::$descricao as $tipo => $desc) {
                                                    echo '<option value="' . $tipo . '">' . $desc . '</option>';
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
                                        <label class="col-sm-3 control-label">
                                            Lanchonete
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_LANCHONETE; ?>"
                                                       name="<?= ST_LANCHONETE; ?>" class=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Televisão
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_TELEVISAO; ?>"
                                                       name="<?= ST_TELEVISAO; ?>" class=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Wi-Fi
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_WIFI; ?>"
                                                       name="<?= ST_WIFI; ?>" class=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Acesso Deficiente
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_ACESSO_DEFICIENTE; ?>"
                                                       name="<?= ST_ACESSO_DEFICIENTE; ?>" class=""/>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Jogos
                                        </label>
                                        <div class="col-sm-7">

                                            <div id="change-color-switch" class="make-switch"
                                                 data-on-label="<i class='fa fa-check fa-white'></i>"
                                                 data-off-label="<i class='fa fa-times fa-white'></i>"
                                                 data-on="success"
                                                 data-off="danger">
                                                <input type="checkbox" id="<?= ST_JOGOS; ?>"
                                                       name="<?= ST_JOGOS; ?>" class=""/>
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
                                            <button class="btn btn-success next-step btn-block">
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
                                        <div class="form-group">
                                            <label for="<?= TP_ESTACIONAMENTO; ?>" class="col-sm-1 control-label">
                                                Aberto de
                                            </label>
                                            <div class="col-sm-3">
                                                <select class="form-control" id="<?= NU_DIA_SEMANA; ?>"
                                                        name="<?= NU_DIA_SEMANA; ?>">
                                                    <option value="">Selecione Dias Abertos</option>
                                                    <?php
                                                    foreach (FuncionamentoEnum::$descricao as $tipo => $desc) {
                                                        echo '<option value="' . $tipo . '">' . $desc . '</option>';
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <label class="col-sm-1 control-label">
                                                Abertura
                                            </label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control horas"
                                                       id="<?= NU_HORA_ABERTURA; ?>"
                                                       name="<?= NU_HORA_ABERTURA; ?>"
                                                       placeholder="Horário de Abertura">
                                            </div>
                                            <label class="col-sm-1 control-label">
                                                Fechamento
                                            </label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control horas"
                                                       id="<?= NU_HORA_FECHAMENTO; ?>"
                                                       name="<?= NU_HORA_FECHAMENTO; ?>"
                                                       placeholder="Horário de Fechamento">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group col-sm-12" style="margin-top: 20px;">
                                        <div class="form-group">
                                            <label for="<?= TP_ESTACIONAMENTO; ?>" class="col-sm-1 control-label">
                                                Aberto de
                                            </label>
                                            <div class="col-sm-3">
                                                <select class="form-control" id="<?= NU_DIA_SEMANA; ?>"
                                                        name="<?= NU_DIA_SEMANA; ?>">
                                                    <option value="">Selecione Dias Abertos</option>
                                                    <?php
                                                    foreach (FuncionamentoEnum::$descricao as $tipo => $desc) {
                                                        echo '<option value="' . $tipo . '">' . $desc . '</option>';
                                                    }
                                                    ?>
                                                </select>
                                            </div>
                                            <label class="col-sm-1 control-label">
                                                Abertura
                                            </label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control horas"
                                                       id="<?= NU_HORA_ABERTURA; ?>"
                                                       name="<?= NU_HORA_ABERTURA; ?>"
                                                       placeholder="Horário de Abertura">
                                            </div>
                                            <label class="col-sm-1 control-label">
                                                Fechamento
                                            </label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control horas"
                                                       id="<?= NU_HORA_FECHAMENTO; ?>"
                                                       name="<?= NU_HORA_FECHAMENTO; ?>"
                                                       placeholder="Horário de Fechamento">
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
                                            <button class="btn btn-success next-step btn-block">
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
                                        <label class="col-sm-3 control-label">
                                            Card Holder Name <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="card_name" name="card_name"
                                                   placeholder="Text Field">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Card Number <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="card_number" name="card_number"
                                                   placeholder="Text Field">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            CVC <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-4">
                                            <input type="text" class="form-control" id="card_cvc" name="card_cvc"
                                                   placeholder="Text Field">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Expiration(MM/YYYY) <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-4">
                                            <div class="row">
                                                <div class="col-sm-4">
                                                    <select class="form-control" id="card_expiry_mm"
                                                            name="card_expiry_mm">
                                                        <option value="">MM</option>
                                                        <option value="01">1</option>
                                                        <option value="02">2</option>
                                                        <option value="03">3</option>
                                                        <option value="04">4</option>
                                                        <option value="05">5</option>
                                                        <option value="06">6</option>
                                                        <option value="07">7</option>
                                                        <option value="08">8</option>
                                                        <option value="09">9</option>
                                                        <option value="10">10</option>
                                                        <option value="11">11</option>
                                                        <option value="12">12</option>
                                                    </select>
                                                </div>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control" name="card_expiry_yyyy"
                                                           id="card_expiry_yyyy" placeholder="YYYY">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Payment Options <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" class="grey" value="" name="payment"
                                                           id="payment1">
                                                    Auto-Pay with this Credit Card
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" class="grey" value="" name="payment"
                                                           id="payment2">
                                                    Email me monthly billing
                                                </label>
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
                                            <button class="btn btn-success next-step btn-block">
                                                Próximo <i class="fa fa-arrow-circle-right"></i>
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