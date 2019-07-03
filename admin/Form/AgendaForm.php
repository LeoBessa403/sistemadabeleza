<?php

/**
 * AgendaForm [ FORM ]
 * @copyright (c) 2019, Leo Bessa
 */
class AgendaForm
{
    public static function CadastroAgendamento($res = false)
    {
        $id = "CadastroCortesiaServico";

        $formulario = new Form($id, '#',
            "Cadastrar", 12);
        $formulario->setValor($res);

        $options = StatusAgendamentoEnum::$descricao;
        unset($options[StatusAgendamentoEnum::DELETADO]);
        $formulario
            ->setId(ST_STATUS)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Status Agendamento")
            ->setTamanhoInput(3)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $options = ClienteService::clientesCombo();
        $formulario
            ->setId(CO_CLIENTE)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Cliente")
            ->setTamanhoInput(9)
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();

        $options = ServicoService::servicosCombo();
        $formulario
            ->setId(CO_SERVICO)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Serviços")
            ->setTamanhoInput(12)
            ->setClasses("ob multipla")
            ->setOptions($options)
            ->CriaInpunt();

        $options = PacoteServService::pacotesCombo();
        $formulario
            ->setId(CO_PACOTE_SERV)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Pacotes")
            ->setTamanhoInput(12)
            ->setClasses("ob multipla")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(DT_AGENDA)
            ->setTamanhoInput(3)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Inicio")
            ->CriaInpunt();

        $formulario
            ->setId(NU_DURACAO)
            ->setTamanhoInput(3)
            ->setClasses("numero ob")
            ->setInfo("Duração dos Serviços em minutos")
            ->setLabel("Duração")
            ->CriaInpunt();

        $formulario
            ->setId(NU_HORA_INICIO_AGENDA)
            ->setTamanhoInput(3)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario de Início")
            ->CriaInpunt();

        $formulario
            ->setId(NU_HORA_FIM_AGENDA)
            ->setTamanhoInput(3)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario de Término")
            ->CriaInpunt();

        $formulario
            ->setType(TiposCampoEnum::TEXTAREA)
            ->setId(DS_OBSERVACAO)
            ->setClasses("ob")
            ->setTamanhoInput(12)
            ->setLabel("Observação")
            ->CriaInpunt();


        if (!empty($res[CO_CORTESIA])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_CORTESIA)
                ->setValues($res[CO_CORTESIA])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm(false, false);
    }

    public static function Pesquisar()
    {
        $id = "pesquisaCliente";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, "Pesquisa", 12);

        $formulario
            ->setId(NO_PESSOA)
            ->setIcon("clip-user-6")
            ->setTamanhoInput(6)
            ->setLabel("Nome do Cliente")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $formulario
            ->setId(NO_APELIDO)
            ->setIcon("clip-user-6")
            ->setTamanhoInput(6)
            ->setLabel("Apelido")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $meses = DiasEnum::$montaComboMes;
        $formulario
            ->setId('mes_aniversariante')
            ->setLabel("Aniversariante do Mês")
            ->setTamanhoInput(6)
            ->setClasses("multipla")
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($meses)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "M" => "Masculino", "F" => "Feminino");
        $formulario
            ->setLabel("Sexo")
            ->setId(ST_SEXO)
            ->setTamanhoInput(6)
            ->setType(TiposCampoEnum::SELECT)
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
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Estado")
            ->setTamanhoInput(6)
            ->setOptions($options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Recebe E-mail Agendamento")
            ->setId(ST_RECEBER_EMAIL_AGENDAMENTO)
            ->setTamanhoInput(6)
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Lembrete Horário de Agendamento")
            ->setId(ST_LEMBRETE_HORARIO_AGENDAMENTO)
            ->setTamanhoInput(6)
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Recebe E-mail Marketing")
            ->setId(ST_EMAIL_MARKETING)
            ->setType(TiposCampoEnum::SELECT)
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Recebe SMS Marketing")
            ->setId(ST_SMS_MARKETING)
            ->setType(TiposCampoEnum::SELECT)
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();


        return $formulario->finalizaFormPesquisaAvancada();
    }
}
