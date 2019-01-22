<?php

class GestaoForm
{

    public static function Gerar()
    {
        $id = "gestaoGerarEntidades";

        $formulario = new Form($id, null, 'Gerar');

        $tabelas = AuditoriaService::PesquisaTabelasCombo();
        $formulario
            ->setId(NO_TABELA)
            ->setLabel("Entidades")
            ->setClasses("multipla")
            ->setInfo("Pode selecionar várias TABELAS.")
            ->setType("select")
            ->setOptions($tabelas)
            ->CriaInpunt();

        return $formulario->finalizaForm();
    }

    public static function GerarBackup()
    {
        $id = "GerarBackup";

        $formulario = new Form($id, null, 'Gerar');

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Gerar Backup")
            ->setId(ST_STATUS)
            ->setType("checkbox")
            ->setTamanhoInput(12)
            ->setOptions($label_options2)
            ->CriaInpunt();

        return $formulario->finalizaForm();
    }

    public static function Config()
    {
        $id = "GerarBackup";

        $formulario = new Form($id, null, 'Gerar');

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Projeto possui site?")
            ->setId('TEM_SITE')
            ->setType("checkbox")
            ->setTamanhoInput(3)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Modulo assinante?")
            ->setId('MODULO_ASSINANTE')
            ->setType("checkbox")
            ->setTamanhoInput(3)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Logar com email?")
            ->setId('LOGAR_EMAIL')
            ->setType("checkbox")
            ->setTamanhoInput(3)
            ->setOptions($label_options2)
            ->CriaInpunt();

        $label_options2 = array("<i class='fa fa-check fa-white'></i>", "<i class='fa fa-times fa-white'></i>", "verde", "vermelho");
        $formulario
            ->setLabel("Tabela para auditoria?")
            ->setId('TABELA_AUDITORIA')
            ->setType("checkbox")
            ->setTamanhoInput(3)
            ->setOptions($label_options2)
            ->CriaInpunt();

        return $formulario->finalizaForm();
    }
}
?>
   