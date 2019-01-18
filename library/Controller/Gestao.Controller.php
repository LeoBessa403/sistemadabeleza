<?php

class Gestao extends AbstractController
{
    public $result;
    public $form;

    function GerarEntidadesGestao()
    {
        if (!empty($_POST)) {
            new GerarEntidades($_POST[NO_TABELA]);
            Notificacoes::geraMensagem('Arquivos Gerados com Sucesso.',TiposMensagemEnum::SUCESSO);
        }
        $this->form = GestaoForm::Gerar();
    }


}
