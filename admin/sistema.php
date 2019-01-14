<?php
include_once 'library/Partial/Admin/topo_admin.php';
?>
<!-- start: MAIN NAVIGATION MENU -->
<!-- MONTA MENU -->
<?php
$menu = array(
    "Configuracao" => array("clip-settings", "Listar Dia Especial Configuracao", "Cadastro Dia Especial Configuracao",
        "Formas De Pagamento Configuracao", "Cliente Configuracao", "Agendamento Configuracao",
        "Motivo Desconto Configuracao"),
    "Profissional" => array("clip-user", "Listar Profissional", "Cadastro Profissional"),
);
$url->GeraMenu($menu);
?>
<?php
include_once 'library/Partial/Admin/rodape_admin.php';
?>
