<?php

class Gestao extends AbstractController
{
    public $result;
    public $form;

    function GerarEntidadesGestao()
    {
        if (!empty($_POST)) {
            new GerarEntidades($_POST[NO_TABELA]);
            Notificacoes::geraMensagem('Arquivos Gerados com Sucesso.', TiposMensagemEnum::SUCESSO);
            Redireciona(ADMIN . "/" . CONTROLLER_INICIAL_ADMIN . "/" . ACTION_INICIAL_ADMIN);
        }
        $this->form = GestaoForm::Gerar();
    }

    function GerarBackupGestao()
    {
        if (!empty($_POST)) {
            $back = (!empty($_POST[ST_STATUS])) ? SimNaoEnum::SIM : SimNaoEnum::NAO;
            if ($back == SimNaoEnum::SIM) {
                new Backup(false);
                Notificacoes::geraMensagem('BackUp do banco do ' .
                    DESC . ' gerado com Sucesso.', TiposMensagemEnum::SUCESSO);
                Redireciona(ADMIN . "/" . CONTROLLER_INICIAL_ADMIN . "/" . ACTION_INICIAL_ADMIN);
            } else {
                Notificacoes::geraMensagem('É preciso sinalizar com SIM para realizar o BackUp do banco do ' .
                    DESC_SIS . '.', TiposMensagemEnum::ALERTA);
            }
        }
        $this->form = GestaoForm::GerarBackup();
    }


}
