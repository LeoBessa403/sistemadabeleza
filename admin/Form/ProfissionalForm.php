<?php

/**
 * ProfissionalForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class ProfissionalForm
{
    public static function Cadastrar($res = false)
    {
        $id = "cadastroProfissional";

        $formulario = new FormAssistente($id, "Cadastro de profissionais");
        $formulario->setValor($res);

        $formulario
            ->criaAba("Profissonal", "Informações Pessoais");

        $formulario
            ->setId(NO_FANTASIA)
            ->setClasses("ob")
            ->setLabel("Nome do Estabelecimento")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob")
            ->setLabel("Nome do Responsável")
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

        $formulario
            ->finalizaAba();


        $formulario
            ->criaAba("Novo", "Informações Pessoais");

        $formulario
            ->setId(NO_FANTASIA)
            ->setClasses("ob")
            ->setLabel("Nome do Estabelecimento")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob")
            ->setLabel("Nome do Responsável")
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

        $formulario
            ->finalizaAba();


        $formulario
            ->criaAba("teste 2", "Informações Pessoais");

        $formulario
            ->setId(NO_FANTASIA)
            ->setClasses("ob")
            ->setLabel("Nome do Estabelecimento")
            ->setTamanhoInput(12)
            ->CriaInpunt();

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob")
            ->setLabel("Nome do Responsável")
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

        $formulario
            ->finalizaAba(true);

        return $formulario->finalizaForm();
    }

    public static function Pagamento($res = false)
    {
        $id = "cadastroAssinante";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $formulario
            ->setId(DT_EXPIRACAO)
            ->setTamanhoInput(4)
            ->setClasses("disabilita")
            ->setIcon("clip-calendar-3")
            ->setInfo("Data de termino")
            ->setLabel("Data de Expiração")
            ->CriaInpunt();

        $formulario
            ->setId(NU_FILIAIS)
            ->setClasses("ob numero")
            ->setLabel("Número de Filiais")
            ->setTamanhoInput(4)
            ->CriaInpunt();

        $formulario
            ->setId(NU_PROFISSIONAIS)
            ->setClasses("ob numero")
            ->setLabel("Número de Profissionais")
            ->setInfo("Prof. total com filiais")
            ->setTamanhoInput(4)
            ->CriaInpunt();

        $options = PlanoService::montaComboPlanosAtivos();
        $formulario
            ->setId(CO_PLANO)
            ->setType("select")
            ->setLabel("Plano")
            ->setClasses("ob")
            ->setOptions($options)
            ->CriaInpunt();


        if (!empty($res[CO_ASSINANTE])):
            $formulario
                ->setType("hidden")
                ->setId(CO_ASSINANTE)
                ->setValues($res[CO_ASSINANTE])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

}
