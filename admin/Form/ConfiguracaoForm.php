<?php

/**
 * ConfiguracaoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ConfiguracaoForm
{
    public static function ConfigCliente($res = false)
    {
        $id = "configCliente";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Marcar Serviço")
            ->setClasses($res[ST_MARCA_SERVICO])
            ->setId(ST_MARCA_SERVICO)
            ->setType("checkbox")
            ->setInfo('Aceita que o cliente marque serviço pelo site?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $options = [0 => "0", 1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 10 => 10, 200 => 'Sem Limite'];
        $formulario
            ->setType("select")
            ->setId(NU_AUSENCIA)
            ->setClasses("ob")
            ->setOptions($options)
            ->setTamanhoInput(12)
            ->setLabel("Número de Ausência")
            ->setInfo('Número de ausências do cliente aceitáveis pra marcar serviço pelo site')
            ->CriaInpunt();

        if (!empty($res[CO_CONFIG_CLIENTE])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CONFIG_CLIENTE)
                ->setValues($res[CO_CONFIG_CLIENTE])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function ConfigAgendamento($res = false)
    {
        $id = "configAgendamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Agendar pelo Site")
            ->setClasses($res[ST_AGENDAMENTO_SITE])
            ->setId(ST_AGENDAMENTO_SITE)
            ->setType("checkbox")
            ->setInfo('Aceita que o cliente agende serviços pelo site?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Receber E-mail de Agendamento")
            ->setClasses($res[ST_RECEBER_EMAIL_AGENDAMENTO])
            ->setId(ST_RECEBER_EMAIL_AGENDAMENTO)
            ->setType("checkbox")
            ->setInfo('Receber E-mail de Agendamento feito pelo site?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setLabel("Enviar E-mail de Confirmação")
            ->setClasses($res[ST_ENVIAR_EMAIL_CONFIRMACAO])
            ->setId(ST_ENVIAR_EMAIL_CONFIRMACAO)
            ->setType("checkbox")
            ->setInfo('Enviar E-mail de Confirmação de agendamento confirmado?')
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_ANTECEDENCIA_AGENDAMENTO)
            ->setClasses("numero")
            ->setIcon("clip-clock-2")
            ->setLabel("Intervalo em minutos")
            ->setInfo('Intervalo entre agendamentos dos clientes')
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $options = [1 => "Sem Restrições", 2 => "1 Dia", 3 => "3 Dias", 4 => "7 Dias", 5 => "15 dias", 6 => "1 mês"];
        $formulario
            ->setType("select")
            ->setId(NU_INTERVALO)
            ->setClasses("ob")
            ->setOptions($options)
            ->setTamanhoInput(6)
            ->setLabel("Antecedência no Agendamento")
            ->CriaInpunt();

        $status = ["" => Mensagens::MSG_SEM_ITEM_SELECIONADO,
            StatusAgendamento::AGENDADO => StatusAgendamento::getDescricaoValor(StatusAgendamento::AGENDADO),
            StatusAgendamento::CONFIRMADO => StatusAgendamento::getDescricaoValor(StatusAgendamento::CONFIRMADO)];
        $formulario
            ->setId(ST_STATUS_AGENDAMENTO_SITE)
            ->setLabel("Status Agendamento")
            ->setClasses("ob")
            ->setInfo("Status do Agendamento realizado pelo site")
            ->setType("select")
            ->setTamanhoInput(12)
            ->setOptions($status)
            ->CriaInpunt();

        if (!empty($res[CO_CONFIG_AGENDAMENTO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CONFIG_AGENDAMENTO)
                ->setValues($res[CO_CONFIG_AGENDAMENTO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }


}
