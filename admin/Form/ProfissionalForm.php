<?php

/**
 * ProfissionalForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ProfissionalForm
{
    public static function Cadastrar($res = false, $comboProfissionais)
    {
        $id = "cadastroProfissional";

        $formulario = new FormAssistente($id, null, null, null, "Cadastro de profissionais");
        $formulario->setValor($res);

        // Aba 1
        $formulario
            ->criaAba("Profissonal", "Informações Pessoais");

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf")
            ->setLabel("CPF")
            ->CriaInpunt();

        $formulario
            ->setId(NU_RG)
            ->setTamanhoInput(6)
            ->setClasses("numero")
            ->setLabel("RG")
            ->CriaInpunt();

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob nome")
            ->setInfo("O Nome deve ser Completo Mínimo de 10 Caracteres")
            ->setLabel("Nome Completo")
            ->CriaInpunt();

        $formulario
            ->setId(NO_APELIDO)
            ->setInfo("Como gosta de ser chamado")
            ->setLabel("Apelido")
            ->CriaInpunt();

        $formulario
            ->setId(DT_NASCIMENTO)
            ->setClasses("data ob")
            ->setLabel("Nascimento")
            ->setInfo("Data de Nascimento")
            ->CriaInpunt();

        $cargos = CargoService::montaComboCargos();
        $formulario
            ->setId(CO_CARGO)
            ->setLabel("Cargo")
            ->setClasses("multipla ob")
            ->setInfo("Cargos exercidos pelo profissional")
            ->setType("select")
            ->setOptions($cargos)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "M" => "Masculino", "F" => "Feminino");
        $formulario
            ->setLabel("Sexo")
            ->setId(ST_SEXO)
            ->setClasses("ob")
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO)
            ->setType("singlefile")
            ->setLabel("Foto do Perfil")
            ->CriaInpunt();

        $formulario
            ->setType("textarea")
            ->setId(DS_SOBRE)
            ->setLabel("Sobre")
            ->CriaInpunt();

        $formulario
            ->finalizaAba();

        // Aba 2
        $formulario
            ->criaAba("Endereço", "Informações de Endereço");

        $formulario
            ->setId(NU_CEP)
            ->setLabel("CEP")
            ->setClasses("cep")
            ->CriaInpunt();

        $formulario
            ->setId(DS_ENDERECO)
            ->setIcon("clip-home-2")
            ->setLabel("Endereço")
            ->CriaInpunt();

        $formulario
            ->setId(DS_COMPLEMENTO)
            ->setLabel("Complemento")
            ->CriaInpunt();

        $formulario
            ->setId(DS_BAIRRO)
            ->setLabel("Bairro")
            ->CriaInpunt();

        $formulario
            ->setId(NO_CIDADE)
            ->setLabel("Cidade")
            ->CriaInpunt();

        $options = EnderecoService::montaComboEstadosDescricao();
        $formulario
            ->setId(SG_UF)
            ->setType("select")
            ->setLabel("Estado")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->finalizaAba();

        // Aba 3
        $formulario
            ->criaAba("Contatos", "Informações de Contatos");

        $formulario
            ->setId(NU_TEL1)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone (WhatsApp)")
            ->setClasses("tel ob")
            ->CriaInpunt();

        $formulario
            ->setId(NU_TEL2)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone Celular 2")
            ->setClasses("tel")
            ->CriaInpunt();

        $formulario
            ->setId(DS_EMAIL)
            ->setIcon("fa-envelope fa")
            ->setClasses("email ob")
            ->setLabel("Email")
            ->CriaInpunt();

        $formulario
            ->setId(DS_FACEBOOK)
            ->setIcon("fa-facebook fa")
            ->setLabel("Facebook")
            ->CriaInpunt();

        $formulario
            ->setId(DS_INSTAGRAM)
            ->setIcon("fa-instagram fa")
            ->setLabel("Instagram")
            ->CriaInpunt();

        $formulario
            ->setId(DS_TWITTER)
            ->setIcon("fa-twitter fa")
            ->setLabel("Twitter")
            ->CriaInpunt();

        $formulario
            ->finalizaAba();

        // Aba 4
        $formulario
            ->criaAba("Configurações", "Configurações do profissional");

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Assistente")
            ->setClasses($res[ST_ASSISTENTE])
            ->setId(ST_ASSISTENTE)
            ->setInfo("Trabalha como assistente")
            ->setType("checkbox")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Possui agenda")
            ->setClasses($res[ST_AGENDA])
            ->setId(ST_AGENDA)
            ->setType("checkbox")
            ->setInfo("Tem agenda no sistema de atendimento")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Mostra agenda on line")
            ->setClasses($res[ST_AGENDA_ONLINE])
            ->setId(ST_AGENDA_ONLINE)
            ->setType("checkbox")
            ->setInfo("Pode mostrar a agenda on line")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $contratacoes = TipoContratacaoEnum::$descricao;
        $formulario
            ->setId(TP_CONTRATACAO)
            ->setLabel("Tipo de Contratação")
            ->setType("select")
            ->setOptions($contratacoes)
            ->CriaInpunt();

        $formulario
            ->setId(DT_ADMISSAO)
            ->setClasses("data")
            ->setLabel("Data da Admissão")
            ->setInfo("Data de contratação")
            ->CriaInpunt();

        $formulario
            ->setLabel("Ordem da agenda")
            ->setId(NU_ORDEM_AGENDA)
            ->setInfo("Número da ordem de paresentação na agenda")
            ->setType("select")
            ->setOptions($comboProfissionais)
            ->CriaInpunt();

        $formulario
            ->setId(DS_COR_AGENDA)
            ->setType("color")
            ->setLabel("Cor da agenda")
            ->setInfo("que da agenda do profissional")
            ->CriaInpunt();

        $formulario
            ->finalizaAba();


        // Aba 5
        $formulario
            ->criaAba("Conta Bancária", "Dados bancários");

        $bancos = BancoService::montaComboBancos();
        $formulario
            ->setId(CO_BANCO)
            ->setLabel("Banco")
            ->setType("select")
            ->setOptions($bancos)
            ->CriaInpunt();

        $formulario
            ->setId(NU_AGENCIA)
            ->setIcon("clip-home-2")
            ->setClasses("numero")
            ->setInfo("Somente números com digito")
            ->setLabel("Agência")
            ->CriaInpunt();

        $formulario
            ->setId(NU_CONTA)
            ->setIcon("fa-dollar fa")
            ->setInfo("Com digito")
            ->setLabel("Conta")
            ->CriaInpunt();

        $contas = TipoContaEnum::$descricao;
        $contas[""] = Mensagens::MSG_SEM_ITEM_SELECIONADO;
        $formulario
            ->setId(TP_CONTA)
            ->setLabel("Tipo de Conta")
            ->setType("select")
            ->setOptions(array_reverse($contas))
            ->CriaInpunt();

        $formulario
            ->finalizaAba();


        // Aba 6
        $formulario
            ->criaAba("Jornada de trabalho", "Horários e dias de atendimento do profissional", 10);

        $grid = new GridAssistente();
        $arrColunas = array('Atende', 'Dia da Semana', 'Inicio', 'Termino', 'Almoço Início(Opcional)',
            'Almoço Termino(Opcional)', 'Intervalo Início(Opcional)', 'Intervalo Final(Opcional)');
        $grid->setColunasIndeces($arrColunas);
        $grid->criaGrid('nova');

        $jornadas = $res['jornada'];
        foreach (DiasEnum::$descricao as $numero => $dia) {
            $check = null;
            $abertura = null;
            $fechamento = null;
            $almocoInicio = null;
            $almocoFinal = null;
            $intervaloInicio = null;
            $intervaloFinal = null;
            if ($jornadas) {
                /** @var JornadaTrabalhoEntidade $jornada */
                foreach ($jornadas as $jornada) {
                    if ($jornada->getNuDiaSemana() == $numero) {
                        $check = ' checked="checked"';
                        $abertura = $jornada->getNuHoraAbertura();
                        $fechamento = $jornada->getNuHoraFechamento();
                        $almocoInicio = $jornada->getNuAlmocoInicio();
                        $almocoFinal = $jornada->getNuAlmocoFinal();
                        $intervaloInicio = $jornada->getNuIntervaloInicio();
                        $intervaloFinal = $jornada->getNuIntervaloFinal();
                    }
                }
            }
            $campoAtende = '<input type="checkbox" ' . $check . '
                           class="square-purple"
                           value="" id="' . NU_DIA_SEMANA . $numero . '"
                           name="' . NU_DIA_SEMANA . '[' . $numero . ']"/>';


            $campoAbertura = '<input type="text" class="form-control horas"
                           id="' . NU_HORA_ABERTURA . $numero . '"
                           name="' . NU_HORA_ABERTURA . '[' . $numero . ']"
                           value="' . $abertura . '"
                           placeholder="Início do atendimento">';

            $campoFechamento = '<input type="text" class="form-control horas"
               id="' . NU_HORA_FECHAMENTO . $numero . '"
               name="' . NU_HORA_FECHAMENTO . '[' . $numero . ']"
               value="' . $fechamento . '"
               placeholder="Termino do atendimento">';


            $campoAlmocoInicio = '<input type="text" class="form-control horas"
                           id="' . NU_ALMOCO_INICIO . $numero . '"
                           name="' . NU_ALMOCO_INICIO . '[' . $numero . ']"
                           value="' . $almocoInicio . '"
                           placeholder="Início do Almoço">';

            $campoAlmocoFinal = '<input type="text" class="form-control horas"
               id="' . NU_ALMOCO_FINAL . $numero . '"
               name="' . NU_ALMOCO_FINAL . '[' . $numero . ']"
               value="' . $almocoFinal . '"
               placeholder="Termino do Almoço">';


            $campoIntervaloInicio = '<input type="text" class="form-control horas"
                           id="' . NU_INTERVALO_INICIO . $numero . '"
                           name="' . NU_INTERVALO_INICIO . '[' . $numero . ']"
                           value="' . $intervaloInicio . '"
                           placeholder="Início do Intervalo">';

            $campoIntervaloFinal = '<input type="text" class="form-control horas"
               id="' . NU_INTERVALO_FINAL . $numero . '"
               name="' . NU_INTERVALO_FINAL . '[' . $numero . ']"
               value="' . $intervaloFinal . '"
               placeholder="Termino do Intervalo">';

            $grid->setColunas($campoAtende);
            $grid->setColunas($dia);
            $grid->setColunas($campoAbertura);
            $grid->setColunas($campoFechamento);
            $grid->setColunas($campoAlmocoInicio);
            $grid->setColunas($campoAlmocoFinal);
            $grid->setColunas($campoIntervaloInicio);
            $grid->setColunas($campoIntervaloFinal);
            $grid->criaLinha($numero);
        }
        $gridAssitente = $grid->finalizaGrid();

        $formulario
            ->finalizaAba(true, $gridAssitente);

        if (!empty($res[CO_PROFISSIONAL])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PROFISSIONAL)
                ->setValues($res[CO_PROFISSIONAL])
                ->CriaInpunt();
            $formulario
                ->setType("hidden")
                ->setId(CO_ENDERECO)
                ->setValues($res[CO_ENDERECO])
                ->CriaInpunt();
            $formulario
                ->setType("hidden")
                ->setId(CO_CONTATO)
                ->setValues($res[CO_CONTATO])
                ->CriaInpunt();
            $formulario
                ->setType("hidden")
                ->setId(CO_PESSOA)
                ->setValues($res[CO_PESSOA])
                ->CriaInpunt();
            $formulario
                ->setType("hidden")
                ->setId(CO_CONTA_BANCARIA)
                ->setValues($res[CO_CONTA_BANCARIA])
                ->CriaInpunt();
            $formulario
                ->setType("hidden")
                ->setId(CO_IMAGEM)
                ->setValues($res[CO_IMAGEM])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function CadastrarAusencia($res)
    {
        $id = "cadastroAusencia";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Salvar", 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $profissionais = ProfissionalService::PesquisaProfissionaisCombo();
        $formulario
            ->setId(CO_PROFISSIONAL)
            ->setLabel("Profissional")
            ->setClasses("ob")
            ->setType("select")
            ->setOptions($profissionais)
            ->CriaInpunt();

        $formulario
            ->setId(DT_INICIO)
            ->setTamanhoInput(3)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Inicio")
            ->CriaInpunt();

        $formulario
            ->setId("hr_inicio")
            ->setTamanhoInput(3)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario Inicial")
            ->CriaInpunt();

        $formulario
            ->setId(DT_FIM)
            ->setTamanhoInput(3)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Termino")
            ->CriaInpunt();

        $formulario
            ->setId("hr_fim")
            ->setTamanhoInput(3)
            ->setPlace("Formato 24Hrs")
            ->setClasses("horas ob")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario Final")
            ->CriaInpunt();

        $options = TipoAusenciaEnum::$descricao;
        $formulario
            ->setId(TP_AUSENCIA)
            ->setType("select")
            ->setLabel("Tipo de Ausência")
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(DS_OBSERVACAO)
            ->setType("textarea")
            ->setLabel("Obserevação")
            ->CriaInpunt();


        if (!empty($res[CO_AUSENCIA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_AUSENCIA)
                ->setValues($res[CO_AUSENCIA])
                ->CriaInpunt();
        endif;


        return $formulario->finalizaForm('Profissional/AusenciaProfissional');
    }

    public static function Pesquisar()
    {
        $id = "pesquisaProfissional";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, "Pesquisa", 12);

        $formulario
            ->setId(NO_PESSOA)
            ->setIcon("clip-user-6")
            ->setTamanhoInput(6)
            ->setLabel("Nome do Profissional")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $bancos = BancoService::montaComboBancos();
        $formulario
            ->setId(CO_BANCO)
            ->setLabel("Banco")
            ->setType("select")
            ->setTamanhoInput(6)
            ->setOptions($bancos)
            ->CriaInpunt();

        $cargos = CargoService::montaComboCargos();
        $formulario
            ->setId(CO_CARGO)
            ->setLabel("Cargo")
            ->setTamanhoInput(6)
            ->setClasses("multipla")
            ->setInfo("Cargos exercidos pelo profissional")
            ->setType("select")
            ->setOptions($cargos)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "M" => "Masculino", "F" => "Feminino");
        $formulario
            ->setLabel("Sexo")
            ->setId(ST_SEXO)
            ->setTamanhoInput(6)
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(NO_CIDADE)
            ->setTamanhoInput(6)
            ->setLabel("Cidade")
            ->CriaInpunt();

        $options = EnderecoService::montaComboEstadosDescricao();
        $formulario
            ->setId(SG_UF)
            ->setType("select")
            ->setLabel("Estado")
            ->setTamanhoInput(6)
            ->setOptions($options)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Assistente")
            ->setId(ST_ASSISTENTE)
            ->setTamanhoInput(4)
            ->setInfo("Trabalha como assistente")
            ->setType("checkbox")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Possui agenda")
            ->setId(ST_AGENDA)
            ->setTamanhoInput(4)
            ->setType("checkbox")
            ->setInfo("Tem agenda no sistema de atendimento")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Mostra agenda on line")
            ->setId(ST_AGENDA_ONLINE)
            ->setType("checkbox")
            ->setTamanhoInput(4)
            ->setInfo("Pode mostrar a agenda on line")
            ->setOptions($label_options2)
            ->CriaInpunt();


        return $formulario->finalizaFormPesquisaAvancada();
    }
}
