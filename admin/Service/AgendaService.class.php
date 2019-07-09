<?php

/**
 * AgendaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AgendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New AgendaModel();
    }

    public function PesquisaAgendamentos($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAgendamentos($Condicoes);
    }

    /**
     * @param $dados
     * @return array|AssinanteValidador
     */
    public function salvaAgendamentoAjax($dados)
    {
        $dados = Valida::montaArrayAjax($dados);

        /** @var StatusAgendaService $statusAgendaService */
        $statusAgendaService = $this->getService(STATUS_AGENDA_SERVICE);
//        /** @var PessoaService $pessoaService */
//        $pessoaService = $this->getService(PESSOA_SERVICE);
//        /** @var ClienteService $clienteService */
//        $clienteService = $this->getService(CLIENTE_SERVICE);
//        /** @var ImagemService $imagemService */
//        $imagemService = $this->getService(IMAGEM_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        $agendaValidador = new AgendaValidador();
        /** @var AgendaValidador $validador */
        $validador = $agendaValidador->validarAgendamento($dados);
        if ($validador[SUCESSO]) {

            if (!empty($dados[CO_AGENDA])) {
                $statusAgenda[CO_AGENDA] = $dados[CO_AGENDA];
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $agenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $agenda[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $statusAgenda[CO_AGENDA] = $this->Salva($agenda);
                $session->setSession(MENSAGEM, CADASTRADO);
            }

            $statusAgenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $statusAgenda[ST_STATUS] = $dados[ST_STATUS];
            $statusAgenda[DT_INICIO_AGENDA] = Valida::DataDB($dados['dt_agenda'] . ' ' .
                $dados['nu_hora_inicio_agenda'] . ':00');
            $statusAgenda[DT_FIM_AGENDA] = Valida::DataDB($dados['dt_agenda'] . ' ' .
                $dados['nu_hora_fim_agenda'] . ':00');
            $statusAgenda[NU_VALOR] = $dados[NU_VALOR];
            $statusAgenda[NU_DURACAO] = $dados[NU_DURACAO];
            $statusAgenda[DS_OBSERVACAO] = $dados[DS_OBSERVACAO];
            $statusAgenda[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();
            $statusAgenda[CO_CLIENTE] = $dados[CO_CLIENTE];
            $statusAgendaServico[CO_STATUS_AGENDA] = $statusAgendaService->Salva($statusAgenda);
            $PDO->commit();
            return $statusAgendaServico;
        } else {
            $retorno = $validador;
        }

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            Notificacoes::geraMensagem(
                $validador[MSG],
                TiposMensagemEnum::ALERTA
            );
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

}