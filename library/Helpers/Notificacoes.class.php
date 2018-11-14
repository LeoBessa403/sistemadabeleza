<?php

/**
 * Notificacoes.class [ HELPER ]
 * Classe responável por gerar as Notificações!
 *
 * @copyright (c) 2014, Leo Bessa
 */
class Notificacoes
{
    public static function notificacao($dados)
    {
        echo '<div id="gritter-notice-wrapper" class="top-right gritter-'.$dados['tipo'].' fadeIn gritter-notificacao">
            <div id="gritter-item-8" class="gritter-item-wrapper my-sticky-class" role="alert">
                <div class="gritter-item"><a class="gritter-close circle-img" href="#">X</a>
                    <img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                    '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '"
                                class="circle-img" />
                    <div class="gritter-with-image"><span class="gritter-title">'.$dados['titulo'].'</span>
                        '.$dados['mensagem'].'
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>';
    }

    public static function cadastrado()
    {
        echo '<div id="gritter-notice-wrapper" class="top-right gritter-success fadeIn gritter-aviso">
            <div id="gritter-item-8" class="gritter-item-wrapper my-sticky-class" role="alert">
                <div class="gritter-item">
                    <img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                    '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '"
                                class="circle-img" />
                    <div class="gritter-with-image"><span class="gritter-title">Cadastrado com Sucesso!</span>
                        <p>'.Mensagens::OK_SALVO.'</p>
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>';
    }

    public static function atualizado()
    {
        echo '<div id="gritter-notice-wrapper" class="top-right gritter-info fadeIn gritter-aviso">
            <div id="gritter-item-8" class="gritter-item-wrapper my-sticky-class" role="alert">
                <div class="gritter-item">
                    <img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                    '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '"
                                class="circle-img" />
                    <div class="gritter-with-image"><span class="gritter-title">Atualizado com Sucesso!</span>
                         <p>'.Mensagens::OK_ATUALIZADO.'</p>
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>';
    }

    public static function deletado()
    {
        echo '<div id="gritter-notice-wrapper" class="top-right gritter-danger fadeIn gritter-aviso">
            <div id="gritter-item-8" class="gritter-item-wrapper my-sticky-class" role="alert">
                <div class="gritter-item">
                    <img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                    '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '"
                                class="circle-img" />
                    <div class="gritter-with-image"><span class="gritter-title">Deletado com Sucesso!</span>
                         <p>'.Mensagens::OK_DELETADO.'</p>
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>';
    }

    public static function mesagens($dados, $typo = 3)
    {
        $class = ($typo == 1 ? "success" : ($typo == 2 ? "info" : ($typo == 3 ? "warning" : "danger")));
        $label = ($typo == 1 ? "SUCESSO" : ($typo == 2 ? "INFORMATIVO" : ($typo == 3 ? "ALERTA" : "ERRO")));
        echo '<div id="gritter-notice-wrapper" class="top-right gritter-' . $class . ' fadeIn gritter-notificacao">
            <div class="gritter-item-wrapper my-sticky-class" role="alert">
                <div class="gritter-item"><a class="gritter-close circle-img" href="#">X</a>
                    <img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                    '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '"
                                class="circle-img" />
                    <div class="gritter-with-image"><span class="gritter-title">' . $label . '</span>
                        '.$dados.'
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>';
    }
}