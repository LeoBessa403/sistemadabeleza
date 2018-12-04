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
            ->finalizaAba(true);

        return $formulario->finalizaForm();
    }
}
