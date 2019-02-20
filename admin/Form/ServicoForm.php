<?php

/**
 * ServicoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ServicoForm
{
    public static function Cadastrar($res = false)
    {
        $id = "CadastroCategoriaServico";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);


        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Status da Categoria")
            ->setClasses($res[ST_STATUS])
            ->setId(ST_STATUS)
            ->setType("checkbox")
            ->setInfo("Ativa ou Inativa?")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NO_CATEGORIA_SERVICO)
            ->setClasses("ob")
            ->setLabel("Nome da Categoria")
            ->CriaInpunt();

        if (!empty($res[CO_CATEGORIA_SERVICO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CATEGORIA_SERVICO)
                ->setValues($res[CO_CATEGORIA_SERVICO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm('Servico/ListarCategoriaServico');
    }
}
