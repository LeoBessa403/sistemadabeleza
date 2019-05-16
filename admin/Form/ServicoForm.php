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
            ->setType(TiposCampoEnum::CHECKBOX)
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
                ->setType(TiposCampoEnum::HIDDEN)
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
            ->setLabel("Status do Serviço")
            ->setClasses($res[ST_STATUS])
            ->setId(ST_STATUS)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setTamanhoInput(6)
            ->setInfo("Ativo ou Inativo?")
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Precisa de Assistente?")
            ->setClasses($res[ST_ASSISTENTE])
            ->setId(ST_ASSISTENTE)
            ->setType(TiposCampoEnum::CHECKBOX)
            ->setTamanhoInput(6)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $formulario
            ->setId(NO_SERVICO)
            ->setClasses("ob")
            ->setInfo("O Nome para o serviço")
            ->setLabel("Serviço")
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR)
            ->setClasses("moeda ob")
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
            ->setType(TiposCampoEnum::SELECT)
            ->setClasses("ob")
            ->setTamanhoInput(6)
            ->setLabel("Categoria do Serviço")
            ->setOptions($options)
            ->CriaInpunt();

        $ob = ' ob';
        if (!empty($res[CO_IMAGEM])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_IMAGEM)
                ->setValues($res[CO_IMAGEM])
                ->CriaInpunt();

            $ob = '';
        endif;

        $formulario
            ->setId(DS_CAMINHO)
            ->setType(TiposCampoEnum::SINGLEFILE)
            ->setClasses($ob)
            ->setTamanhoInput(12)
            ->setLabel("Foto do Serviço")
            ->CriaInpunt();

        $formulario
            ->setType(TiposCampoEnum::TEXTAREA)
            ->setId(DS_DESCRICAO)
            ->setClasses("ob")
            ->setTamanhoInput(12)
            ->setLabel("Descrição")
            ->CriaInpunt();

        if (!empty($res[CO_SERVICO])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_SERVICO)
                ->setValues($res[CO_SERVICO])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm('Servico/ListarServico');
    }

    public static function ComissaoServico($res = false)
    {
        $id = "configComissao";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $formulario
            ->setId(NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL)
            ->setClasses("porc-int ob")
            ->setLabel("Único Profissional")
            ->setIcon("%", 'dir')
            ->setInfo('Comissão quando for Único Profissional.')
            ->setTamanhoInput(4)
            ->CriaInpunt();

        $formulario
            ->setId(NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE)
            ->setClasses("porc-int ob")
            ->setIcon("%", 'dir')
            ->setLabel("Com Assistente")
            ->setInfo('Comissão quando for Com Assistente.')
            ->setTamanhoInput(4)
            ->CriaInpunt();

        $formulario
            ->setId(NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE)
            ->setClasses("porc-int ob")
            ->setIcon("%", 'dir')
            ->setLabel("Assistente")
            ->setInfo('Comissão quando for O Assistente.')
            ->setTamanhoInput(4)
            ->CriaInpunt();


        if (!empty($res[CO_SERVICO])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_SERVICO)
                ->setValues($res[CO_SERVICO])
                ->CriaInpunt();

        endif;

        if (!empty($res[CO_PROFISSIONAL])):
            $formulario
                ->setType(TiposCampoEnum::HIDDEN)
                ->setId(CO_PROFISSIONAL)
                ->setValues($res[CO_PROFISSIONAL])
                ->CriaInpunt();

        endif;

        return $formulario->finalizaForm();
    }


    public static function Pesquisar($resultPreco)
    {
        $id = "pesquisaServico";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, "Pesquisa", 12);

        $formulario
            ->setId(NO_SERVICO)
            ->setTamanhoInput(6)
            ->setLabel("Nome do Serviço")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setTamanhoInput(6)
            ->setLabel("Contém na Descrição")
            ->CriaInpunt();

        $options = CategoriaServicoService::categoriasServicoCombo();
        $formulario
            ->setId(CO_CATEGORIA_SERVICO)
            ->setType(TiposCampoEnum::SELECT)
            ->setLabel("Categoria do Serviço")
            ->setTamanhoInput(6)
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR)
            ->setTamanhoInput(6)
            ->setIntervalo($resultPreco)
            ->setType(TiposCampoEnum::SLIDER)
            ->setLabel("Valor R$")
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "A" => "Ativo", "I" => "Inativo");
        $formulario
            ->setLabel("Status do Serviço")
            ->setId(ST_STATUS)
            ->setTamanhoInput(6)
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Assistente")
            ->setId(ST_ASSISTENTE)
            ->setTamanhoInput(6)
            ->setType(TiposCampoEnum::SELECT)
            ->setOptions($label_options)
            ->CriaInpunt();


        return $formulario->finalizaFormPesquisaAvancada();
    }
}
