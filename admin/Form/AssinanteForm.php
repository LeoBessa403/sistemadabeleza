<?php

/**
 * AssinanteForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class AssinanteForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroAssinante";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob")
            ->setLabel("Nome Completo")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NU_TEL1)
            ->setTamanhoInput(4)
            ->setIcon("fa fa-mobile-phone")
            ->setLabel("Telefone Celular")
            ->setInfo("Com <i class=\"fa fa-whatsapp\" style='color: green;' '></i> WhatSapp")
            ->setClasses("tel ob")
            ->CriaInpunt();

        $formulario
            ->setId(DS_EMAIL)
            ->setIcon("fa-envelope fa")
            ->setClasses("email ob")
            ->setLabel("Email")
            ->setTamanhoInput(8)
            ->CriaInpunt();

//        $formulario
//            ->setId(CO_MODULO)
//            ->setAutocomplete(
//                ModuloEntidade::TABELA,
//                NO_MODULO,
//                ModuloEntidade::CHAVE
//            )
//            ->setType("select")
//            ->setLabel("Módulos do plano")
//            ->setClasses("ob multipla")
//            ->CriaInpunt();


        if (!empty($res[CO_ASSINANTE])):
            $formulario
                ->setType("hidden")
                ->setId(CO_ASSINANTE)
                ->setValues($res[CO_ASSINANTE])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function Pesquisar()
    {
        $id = "pesquisaProduto";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Pesquisa", 12);

        $formulario
            ->setId(NO_PRODUTO)
            ->setLabel("Produto")
            ->setInfo("Título do Produto")
            ->CriaInpunt();

        $checked = "checked";
        $label_options2 = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Produto com Estoque?")
            ->setClasses($checked)
            ->setId(NU_ESTOQUE)
            ->setType("checkbox")
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NU_CODIGO_INTERNO)
            ->setLabel("Código do Produto")
            ->setTamanhoInput(6)
            ->setClasses("numero")
            ->CriaInpunt();

        $formulario
            ->setId(CO_FABRICANTE)
            ->setAutocomplete(
                FabricanteEntidade::TABELA,
                NO_FABRICANTE,
                FabricanteEntidade::CHAVE
            )
            ->setType("select")
            ->setLabel("Fabricante do Produto")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(CO_CATEGORIA)
            ->setAutocomplete(
                CategoriaEntidade::TABELA,
                NO_CATEGORIA,
                CategoriaEntidade::CHAVE
            )
            ->setType("select")
            ->setLabel("Categoria do Produto")
            ->setTamanhoInput(6)
            ->CriaInpunt();

//        $formulario
//            ->setId(NU_PRECO_VENDA)
//            ->setLabel("Valor de Venda")
//            ->setTamanhoInput(6)
//            ->setClasses("moeda")
//            ->CriaInpunt();
//
//        $formulario
//            ->setId(NU_PRECO_VENDA.'2')
//            ->setLabel("Valor de Venda")
//            ->setTamanhoInput(6)
//            ->setClasses("moeda")
//            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}

?>
   