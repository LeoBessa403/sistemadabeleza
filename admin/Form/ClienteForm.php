<?php

/**
 * ClienteForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ClienteForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroCliente";

        $formulario = new FormAssistente($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            null, null, "Cadastro de Clientes");
        $formulario->setValor($res);

        // Aba 1
        $formulario
            ->criaAba("Cliente", "Informações Pessoais");

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
            ->setId(DS_OBSERVACAO)
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
            ->criaAba("Configurações", "Configurações do cliente");

        $conhecer = ComoConheceuEnum::$descricao;
        $formulario
            ->setId(NU_COMO_CONHECEU)
            ->setLabel("Como nos Conheceu")
            ->setType("select")
            ->setOptions($conhecer)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Recebe E-mail Agendamento")
            ->setClasses($res[ST_RECEBER_EMAIL_AGENDAMENTO])
            ->setId(ST_RECEBER_EMAIL_AGENDAMENTO)
            ->setType("checkbox")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Lembrete Horário de Agendamento")
            ->setClasses($res[ST_LEMBRETE_HORARIO_AGENDAMENTO])
            ->setId(ST_LEMBRETE_HORARIO_AGENDAMENTO)
            ->setType("checkbox")
            ->setInfo("Receberar um SMS e E-mail pra lembrar do Agendamento")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Recebe E-mail Marketing")
            ->setClasses($res[ST_EMAIL_MARKETING])
            ->setId(ST_EMAIL_MARKETING)
            ->setType("checkbox")
            ->setOptions($label_options2)
            ->CriaInpunt();


        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Recebe SMS Marketing")
            ->setClasses($res[ST_SMS_MARKETING])
            ->setId(ST_SMS_MARKETING)
            ->setType("checkbox")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->finalizaAba(true);


        if (!empty($res[CO_CLIENTE])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CLIENTE)
                ->setValues($res[CO_CLIENTE])
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
                ->setId(CO_IMAGEM)
                ->setValues($res[CO_IMAGEM])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
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
//
//        $formulario
//            ->setId(NU_VALOR)
//            ->setTamanhoInput(6)
//            ->setIntervalo('150-260')
//            ->setType("slider")
//            ->setLabel("Valor R$")
//            ->CriaInpunt();

        $meses = DiasEnum::$montaComboMes;
        $formulario
            ->setId('mes_aniversariante')
            ->setLabel("Aniversariante do Mês")
            ->setTamanhoInput(6)
            ->setClasses("multipla")
            ->setType("select")
            ->setOptions($meses)
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

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Recebe E-mail Agendamento")
            ->setId(ST_RECEBER_EMAIL_AGENDAMENTO)
            ->setTamanhoInput(6)
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Lembrete Horário de Agendamento")
            ->setId(ST_LEMBRETE_HORARIO_AGENDAMENTO)
            ->setTamanhoInput(6)
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Recebe E-mail Marketing")
            ->setId(ST_EMAIL_MARKETING)
            ->setType("select")
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Recebe SMS Marketing")
            ->setId(ST_SMS_MARKETING)
            ->setType("select")
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();


        return $formulario->finalizaFormPesquisaAvancada();
    }
}
