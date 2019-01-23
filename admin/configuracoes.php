<?php

function servidor_inicial()
{
    if ($_SERVER['HTTP_HOST'] == 'localhost') {
        $config = array(
            'HOME' => 'http://localhost/sistemadabeleza/',
            'HOST' => 'localhost',
            'USER' => 'root',
            'PASS' => '',
            'DBSA' => 'sistem25_dabelez',
            'DEBUG' => true,
            'PROD' => false
        );
    } else {
        $config = array(
            'HOME' => 'https://sistemadabeleza.com.br/',
            'HOST' => 'localhost',
            'USER' => 'sistem25_dabelez',
            'PASS' => 'Admin101*',
            'DBSA' => 'sistem25_dabelez',
            'DEBUG' => false,
            'PROD' => true
        );
    }

    define('HOME', $config['HOME']);
    define('HOST', $config['HOST']);
    define('USER', $config['USER']);
    define('PASS', $config['PASS']);
    define('DBSA', $config['DBSA']);
    define('DEBUG', $config['DEBUG']);
    define('PROD', $config['PROD']);

    //////////////////////////////////////////////
    // ******* CONFIGURAÇÕES DO SITE ********** //
    //////////////////////////////////////////////

    include_once 'library/Config.Padrao.php';

    if (defined('TEM_SITE') == false) {
        // PROJETO POSSUI SITE
        define('TEM_SITE', FALSE);
        // PROJETO POSSUI MODULO ASSINANTE
        define('MODULO_ASSINANTE', TRUE);
        // LOGAR COM EMAIL OU CPF
        define('LOGAR_EMAIL', TRUE);
        // TABELA PARA ARMAZENAR OS DADOS PARA AUDITORIA
        define('TABELA_AUDITORIA', TRUE);
        // Título do Site
        define('DESC', 'Sistema da Beleza');
        // Título do Sistema
        define('DESC_SIS', 'SisBela');
        // CONTROLLER INICIAL DO SITE
        define('CONTROLLER_INICIAL_SITE', 'IndexWeb');
        // AÇÃO INICIAL DO SITE
        define('ACTION_INICIAL_SITE', 'Index');
        // CONTROLLER INICIAL DO ADMIN
        define('CONTROLLER_INICIAL_ADMIN', 'Index');
        // AÇÃO INICIAL DO ADMIN
        define('ACTION_INICIAL_ADMIN', 'Index');
        // Tabela de pesquisa de usuário para validação
        define('TABLE_USER', 'tb_usuario');
        // Campo da senha na Tabela de pesquisa de usuário para validação
        define('CAMPO_PASS', 'ds_code');
        // Campo do ID (Chave Primaria) na Tabela de pesquisa de usuário para validação
        define('CAMPO_ID', 'co_usuario');
        // Campo do Perfil na Tabela de pesquisa de usuário para validação dos perfis
        // (Ex.: cadastrante, administrador, pesquisador) Sepmre separados por (, )
        define('CAMPO_PERFIL', 'ds_perfil');
        // Atribui o nome da Sessão do usuario Logado no sitema
        define('SESSION_USER', 'user_sistema_beleza');
        // Tempo de Inativadade Máximo em Minutos, aceito para deslogar do Sistema.
        define('INATIVO', 30);
        // A frequencia em dias para realizar o BACKUP NO BANCO DE DADOS
        define('BACKUP', 5);
        // TAMANHO PADRÃO DO WIDTH DAS IAMGENS A SEREM CARREGADAS
        define('TAMANHO', 800);
        // NÚMERO PADRÃO DE ENVIO DO WHATSAPP
        define('WHATSAPP', '5561993704240');
        // DESCRIÇÃO PADRÃO DO SITE
        define('DESC_SITE', 'Sistema de gestão do ramo de beleza');
        // TÍTULO PADRÃO DO SITE
        define('TITULO_SITE', 'Sistema de gestão do ramo de beleza');
        // CONTROLLERS PARA GERAR O SEO DIFERENCIADO
        define('CONTROLLER_SEO', '');
        // NÚMERO DE IMAGENS DE BACKGROUND DA TELA INICIAL DO SISTEMA
        define('NUM_BG_IMAGENS', 50);

        //////////////////////////////////////////////
        // ******* CONFIGURAÇÕES DE EMAIL ********** //
        //////////////////////////////////////////////

        define('HOST_EMAIL', 'mail.bicalhorefrigeracao.com');
        define('PORTA_EMAIL', 25);
        define('USER_EMAIL', 'contato@bicalhorefrigeracao.com');
        define('PASS_EMAIL', 'bicalho10*');

        //////////////////////////////////////////////
        // *********** GOOGLE ANALITCS  *********** //
        //////////////////////////////////////////////
        define('ID_ANALITCS', FALSE);
    }


    include_once('Class/Constantes.class.php');
    if (file_exists('library/Constantes.class.php')):
        include_once "library/Constantes.class.php";
    else:
        include_once "../../library/Constantes.class.php";
    endif;

}
