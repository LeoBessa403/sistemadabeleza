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
                                        <label class="col-sm-3 control-label">
                                            full_name <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="full_name" name="full_name"
                                                   placeholder="Text Field">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Phone Number <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="phone" name="phone"
                                                   placeholder="Text Field">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Gender <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <label class="radio-inline">
                                                <input type="radio" class="grey" value="f" name="gender"
                                                       id="gender_female">
                                                Female
                                            </label>
                                            <label class="radio-inline">
                                                <input type="radio" class="grey" value="m" name="gender"
                                                       id="gender_male">
                                                Male
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Address <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="address" name="address"
                                                   placeholder="Text Field">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            Country <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <select class="form-control" id="country" name="country">
                                                <option value="">&nbsp;</option>
                                                <option value="Country 1">Country 1</option>
                                                <option value="Country 2">Country 2</option>
                                                <option value="Country 3">Country 3</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-3 control-label">
                                            City <span class="symbol"></span>
                                        </label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="city" name="city"
                                                   placeholder="Text Field">
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
                                <div id="step-4">
                                    <h2 class="StepTitle"> Facilidades e Benefícios
                                        <small>Informações das Facilidades e Benefícios</small>
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
                                <div id="step-5">
                                    <h2 class="StepTitle">Funcionamento
                                        <small>Informações do horário de funcionamento</small>
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