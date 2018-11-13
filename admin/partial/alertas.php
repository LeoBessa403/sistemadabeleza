<?php
if ($user[md5(ST_TROCA_SENHA)] == SimNaoEnum::NAO && empty($session->CheckSession(ST_TROCA_SENHA)) &&
    UrlAmigavel::$action == 'Index' && UrlAmigavel::$controller == 'Index') {

    $dados['titulo'] = 'Cadastro Ativado com Sucesso!';
    $dados['mensagem'] = '<p>Para trocar sua senha acesseo link <a href="' . PASTAADMIN . 'Usuario/TrocaSenhaUsuario"
                                                               style="color:#ccc">TROCAR SENHA</a>, para sua maior segurança</p>';
    $dados['tipo'] = 'success';
    Notificacoes::notificacao($dados);

}
if ($user[md5('status_sistema')] == StatusSistemaEnum::PENDENTE) {
    $difDatas = Valida::CalculaDiferencaDiasData(date('d/m/Y'), $user[md5(DT_EXPIRACAO)]);

    $dados['titulo'] = 'Sistema Expirado!';
    $dados['mensagem'] = '<p>Sua assinatura está expirada em ' . $difDatas * -1 . ' Dia(s)</b>, click no link para
    renovar sua assinatura. Expirado Em ' . $user[md5(DT_EXPIRACAO)] . '</p>';
    $dados['tipo'] = 'danger';
    Notificacoes::notificacao($dados);
}
if ($session->CheckSession(MENSAGEM)):
    if ($session::getSession(MENSAGEM) == CADASTRADO):
        Notificacoes::cadastrado();
    elseif ($session::getSession(MENSAGEM) == ATUALIZADO):
        Notificacoes::atualizado();
    elseif ($session::getSession(MENSAGEM) == DELETADO):
        Notificacoes::deletado();
    else:
        Notificacoes::mesagens($session::getSession(MENSAGEM));
    endif;
    $session->FinalizaSession(MENSAGEM);
endif;
