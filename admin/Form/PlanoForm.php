<?php

/**
 * ProdutoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class PlanoForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroPlano";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $formulario
            ->setId(NO_PLANO)
            ->setLabel("Plano")
            ->setClasses("ob")
            ->CriaInpunt();

        $label_options = PlanoService::montaComboMesesAtivos();
        $formulario
            ->setLabel("Meses Ativo")
            ->setId(NU_MES_ATIVO)
            ->setType("select")
            ->setClasses("ob")
            ->setTamanhoInput(8)
            ->setOptions($label_options)
            ->setInfo("Número de meses que o plano ficarar ativo")
            ->CriaInpunt();


        $formulario
            ->setId(NU_VALOR)
            ->setClasses("moeda ob")
            ->setLabel("Valor R$")
            ->setTamanhoInput(4)
            ->CriaInpunt();

        $formulario
            ->setId(CO_MODULO)
            ->setAutocomplete(
                ModuloEntidade::TABELA,
                NO_MODULO,
                ModuloEntidade::CHAVE
            )
            ->setType("select")
            ->setLabel("Módulos do plano")
            ->setClasses("ob multipla")
            ->CriaInpunt();

        $formulario
            ->setType("textarea")
            ->setId(DS_OBSERVACAO)
            ->setLabel("Observação")
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
   