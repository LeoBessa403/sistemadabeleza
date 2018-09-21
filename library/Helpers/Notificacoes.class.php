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

    public static function mesagens($dados)
    {
        echo '<div id="gritter-notice-wrapper" class="top-right gritter-warning fadeIn gritter-notificacao">
            <div id="gritter-item-8" class="gritter-item-wrapper my-sticky-class" role="alert">
                <div class="gritter-item"><a class="gritter-close circle-img" href="#">X</a>
                    <img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                    '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '"
                                class="circle-img" />
                    <div class="gritter-with-image"><span class="gritter-title">Aviso!</span>
                        '.$dados.'
                    </div>
                    <div style="clear:both"></div>
                </div>
            </div>
        </div>';
    }
}