<?php

/**
 * ConfiguracaoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ConfiguracaoForm
{
    public static function ConfigCliente($res = false)
    {
        $id = "cadastroPlano";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Plano Ativo")
            ->setClasses($res[ST_STATUS])
            ->setId(ST_STATUS)
            ->setType("checkbox")
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR)
            ->setClasses("numero ob")
            ->setLabel("Número de Ausência")
            ->setInfo('Número de Ausencias aceitaveis pra marcar serviço pelo site')
            ->CriaInpunt();


        if (!empty($res[CO_PLANO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PLANO)
                ->setValues($res[CO_PLANO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }


}
