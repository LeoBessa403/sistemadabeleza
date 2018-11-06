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


}
