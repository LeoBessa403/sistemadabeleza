<?php
include_once 'library/Partial/Admin/topo_admin.php';
?>
<!-- start: MAIN NAVIGATION MENU -->
<!-- MONTA MENU -->
<?php
$menu = array(
    "Assinante" => array("clip-user-5", "Listar Assinante", "Cadastro Assinante", "Dados Complementares Assinante"),
    "Configuracao" => array("clip-settings", "Listar Dia Especial Configuracao", "Cadastro Dia Especial Configuracao",
        "Formas De Pagamento Configuracao", "Cliente Configuracao", "Agendamento Configuracao",
        "Motivo Desconto Configuracao"),
    "Profissional" => array("clip-user", "Listar Profissional", "Cadastro Profissional"),
    "Plano" => array("clip-banknote", "Listar Plano", "Cadastro Plano"),
    "Visita" => array("clip-airplane", "Listar Visita"),
    "Usuario" => array("fa fa-group", "Meu Perfil Usuario", "Listar Usuario", "Cadastro Usuario", "Troca Senha Usuario"),
    "Perfil" => array("clip-stack-empty", "Listar Perfil", "Cadastro Perfil"),
    "Funcionalidade" => array("fa fa-outdent", "Listar Funcionalidade", "Cadastro Funcionalidade"),
    "Acesso" => array("clip-connection-2", "Listar Acesso"),
    "Auditoria" => array("fa fa-crosshairs", "Listar Auditoria"),
);
$url->GeraMenu($menu);
?>
<?php
include_once 'library/Partial/Admin/rodape_admin.php';
?>
