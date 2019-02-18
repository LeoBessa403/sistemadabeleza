<?php
$linhas = fopen('versao.txt', "a+");
$versoes = fgets($linhas);
$versao = explode('//', $versoes);
?>
<h6 style="float: left;">Versão: <?= $versao[2]; ?></h6>