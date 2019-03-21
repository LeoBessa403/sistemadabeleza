<?php

/**
 * ServicoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ServicoForm
{
    public static function CadastrarCategoria($res = false)
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

    public static function Cadastrar($res = false)
    {
        $id = "CadastroServico";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);


        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Status da Categoria")
            ->setClasses($res[ST_STATUS])
            ->setId(ST_STATUS)
            ->setType("checkbox")
            ->setTamanhoInput(12)
            ->setInfo("Ativo ou Inativo?")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NO_SERVICO)
//            ->setClasses("ob")
            ->setInfo("O Nome para o serviço")
            ->setLabel("Serviço")
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR)
//            ->setClasses("moeda ob")
            ->setLabel("Preço R$")
            ->setTamanhoInput(3)
            ->CriaInpunt();

        $formulario
            ->setId(NU_DURACAO)
            ->setTamanhoInput(3)
            ->setClasses("numero ob")
            ->setInfo("Duração do Serviço em minutos")
            ->setLabel("Duração")
            ->CriaInpunt();

        $options = CategoriaServicoService::categoriasServicoCombo();
        $formulario
            ->setId(CO_CATEGORIA_SERVICO)
            ->setType("select")
//            ->setClasses("ob")
            ->setTamanhoInput(6)
            ->setLabel("Categoria do Serviço")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO)
            ->setType("singlefile")
            ->setClasses("ob")
            ->setTamanhoInput(12)
            ->setLabel("Foto do Serviço")
            ->CriaInpunt();

        $formulario
            ->setType("textarea")
            ->setId(DS_DESCRICAO)
//            ->setClasses("ob")
            ->setTamanhoInput(12)
            ->setLabel("Descrição")
            ->CriaInpunt();

        if (!empty($res[CO_SERVICO])):
            $formulario
                ->setType("hidden")
                ->setId(CO_SERVICO)
                ->setValues($res[CO_SERVICO])
                ->CriaInpunt();

        $formulario
                ->setType("hidden")
                ->setId(CO_IMAGEM)
                ->setValues($res[CO_IMAGEM])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm('Servico/ListarServico');
    }
}
