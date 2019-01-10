<?php
include_once 'library/Partial/topo_inicial.php';
?>
    <!-- start: LOGIN BOX -->
    <div class="box-login" style="padding: 10px 20px;">
        <h3>Recuperar Senha</h3>
        <p>
            Por Favor! Entre com o E-Mail para recuperar sua senha.
        </p>
        <form class="form-login" action="../Index/RecuperarSenha" method="post" id="RecuperarSenha" name="RecuperarSenha">
            <?php
            if (!empty($visivel)):
                Notificacoes::mesagens($msg, $class);
            endif;
            ?>
            <fieldset>
                <div class="form-group">
							<span class="input-icon">
								<input type="text" class="form-control email ob" name="ds_email" id="ds_email" placeholder="E-Mail">
								<i class="fa fa-envelope"></i> </span>
                </div>
                <div class="new-account" style="float: left;">
                    <a href="<?= PASTAADMIN; ?>Index/Acessar" class="register">
                        Voltar ao Login
                    </a>
                </div>
                <div class="form-actions" style="float: right;">
                    <button type="submit" class="btn btn-success pull-right">
                        Recuperar <i class="fa fa-arrow-circle-right"></i>
                    </button>
                </div>
            </fieldset>
        </form>
    </div>
<?php
include_once 'library/Partial/rodape_inicial.php';
//?>