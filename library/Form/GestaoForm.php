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

        $formulario
            ->setId('DESC')
            ->setLabel("Nome do Sistema")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('DESC_SIS')
            ->setLabel("Sigla do Sistema")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('CONTROLLER_INICIAL_ADMIN')
            ->setLabel("Controller inicial do admin")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('ACTION_INICIAL_ADMIN')
            ->setLabel("Ação inicial do admin")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('CONTROLLER_INICIAL_SITE')
            ->setLabel("Controller inicial do site")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('ACTION_INICIAL_SITE')
            ->setLabel("Ação inicial do site")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('TABLE_USER')
            ->setLabel("Tabela de usuário para validação")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('CAMPO_PASS')
            ->setLabel("Campo da senha na Tabela")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('CAMPO_ID')
            ->setLabel("Chave Primaria na Tabela de usuário")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('CAMPO_PERFIL')
            ->setLabel("Campo do Perfil na Tabela de usuário")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('SESSION_USER')
            ->setLabel("Nome da Sessão do usuário Logado")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('INATIVO')
            ->setLabel("Tempo de Inativadade Máximo em Minutos")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('BACKUP')
            ->setLabel("Dias para realizar o BACKUP NO BANCO")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('TAMANHO')
            ->setLabel("Tamanho padrão do width das iamgens")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('WHATSAPP')
            ->setLabel("Número padrão de envio do WhatsApp")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('DESC_SITE')
            ->setLabel("Descrição padrão do site")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('TITULO_SITE')
            ->setLabel("Título padrão do site")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId('NUM_BG_IMAGENS')
            ->setLabel("Número de imagens")
            ->setClasses('numero')
            ->setTamanhoInput(6)
            ->setInfo("backgrounds da tela inicial do sistema")
            ->CriaInpunt();

        $formulario
            ->setId('CONTROLLER_SEO')
            ->setLabel("Controllers para gerar o seo diferenciado")
            ->setInfo('Separador por vírguila')
            ->CriaInpunt();

        return $formulario->finalizaForm();
    }
}
?>
   