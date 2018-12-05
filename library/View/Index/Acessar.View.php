<!DOCTYPE html>
<!-- Template Name: Clip-One - Responsive Admin Template build with Twitter Bootstrap 3.x Version: 1.4 Author: ClipTheme -->
<!--[if IE 8]>
<html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]>
<html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->
<head>
    <title>SISTEMA | <?= DESC_SIS; ?></title>
    <!-- start: META -->
    <meta charset="utf-8"/>
    <!--[if IE]>
    <meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1"/><![endif]-->
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- end: META -->
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>fonts/style.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/main-responsive.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/main.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/iCheck/skins/all.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.css">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>css/theme_navy.css" type="text/css" id="skin_color">
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/css3-animation/animations.css">
    <!--[if IE 7]>
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome-ie7.min.css">
    <!--[if IE 7]>
        <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/font-awesome/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!-- start: CSS REQUIRED Gritter -->
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/gritter/css/jquery.gritter.css">
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="shortcut icon" href="<?= PASTASITE; ?>img/favicon.ico"/>
    <!-- end: MAIN CSS -->
    <!-- start: CSS REQUIRED FOR SELECT -->
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/select2/select2.css">
    <!-- start: CSS REQUIRED FOR CHECK -->
    <link rel="stylesheet"
          href="<?= PASTAADMIN; ?>plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
    <![endif]-->
    <!-- end: MAIN CSS -->
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body class="login example1">
<div class="main-login col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3" style="padding: 20px 50px;">
    <div class="logo" style="text-shadow: 1px 1px 2px #0e0e0e; font-size: 30px;">
        <?= DESC_SIS; ?>
    </div>
    <!-- start: LOGIN BOX -->
    <div class="box-login" style="padding: 10px 20px;">
        <h3>Entre com sua Conta</h3>
        <p>
            Por Favor! Entre com login e senha.
        </p>
        <form class="form-login" action="../Logar" method="post">
            <fieldset>
                <div class="form-group">
							<span class="input-icon">
								<input type="text" class="form-control email" name="ds_email" id="ds_email"
                                       placeholder="E-Mail">
								<i class="fa fa-envelope"></i> </span>
                </div>
                <div class="form-group form-actions">
							<span class="input-icon">
								<input type="password" class="form-control password" name="ds_senha" id="ds_senha"
                                       placeholder="Senha">
								<i class="fa fa-lock"></i>
                </div>
                <div class="form-actions">
                    <input type="hidden" name="logar_sistema" id="logar_sistema" value="logar"/>
                    <label for="remember" class="checkbox-inline">
                        <input type="checkbox" class="grey remember" id="remember" name="remember">
                        Lembrar de Mim
                    </label>
                    <button type="submit" class="btn btn-success pull-right">
                        LOGAR <i class="fa fa-arrow-circle-right"></i>
                    </button>
                </div>
                <div class="new-account">
                    Você não tem Conta?
                    <a href="<?= PASTAADMIN; ?>Index/RecuperarSenha" class="register" style="float: right;">
                        Recuperar Senha
                    </a>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="al-center logo" style="width: 100%">
        <a style="color: #000000;" class="btn btn-beige" href="<?= PASTASITE; ?>">
            Voltar ao Site
        </a>
    </div>
    <!-- end: COPYRIGHT -->
</div>
<!-- start: MAIN JAVASCRIPTS -->
<!-- start: MAIN JAVASCRIPTS -->
<!--[if lt IE 9]>
<script src="<?= PASTAADMIN; ?>plugins/respond.min.js"></script>
<script src="<?= PASTAADMIN; ?>plugins/excanvas.min.js"></script>
<script type="text/javascript" src="<?= INCLUDES;?>jquery-1.10.2.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="<?= INCLUDES; ?>jquery-2.0.3.js"></script>
<!--<![endif]-->
<?= '<script type="text/javascript">
                        function constantes(){    
                                var dados = {
                                    "HOME" : "' . HOME . '",
                                    "INATIVO" : "' . INATIVO . '",
                                    "PASTAUPLOADS" : "' . PASTAUPLOADS . '"                                        
                                    };
                                return dados;
                        }
                </script>'; ?>
<!--<script src="<?= PASTAADMIN; ?>plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>-->
<script src="<?= INCLUDES; ?>jquery-ui.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery.mask.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery.maskMoney.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>validacoes.js"></script>
<script src="<?= PASTAADMIN; ?>plugins/select2/select2.min.js"></script>
<script src="<?= PASTAADMIN; ?>js/Funcoes.js"></script>
<?php Notificacoes::mesagens($msg, $class); ?>
<script>
    jQuery(document).ready(function () {
        Funcoes.init();
    });
</script>
</body>
</html>