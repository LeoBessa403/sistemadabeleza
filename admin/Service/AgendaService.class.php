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
        /** @var StatusAgendaServicoService $statusAgendaServicoService */
        $statusAgendaServicoService = $this->getService(STATUS_AGENDA_SERVICO_SERVICE);
        /** @var StatusAgendaProfissionalService $statusAgendaProfissionalService */
        $statusAgendaProfissionalService = $this->getService(STATUS_AGENDA_PROFISSIONAL_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
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
                $retorno[MSG] = ATUALIZADO;
            } else {
                $agenda[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $agenda[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $statusAgenda[CO_AGENDA] = $this->Salva($agenda);
                $retorno[MSG] = CADASTRADO;
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

            $statusAgendaServico[CO_SERVICO] = $dados[CO_SERVICO];

            switch ($statusAgenda[ST_STATUS]) {
                case StatusAgendamentoEnum::EM_ATENDIMENTO:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::INICIADO;
                    break;
                case StatusAgendamentoEnum::FINALIZADO:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::CONCLUIDO;
                    break;
                default:
                    $statusAgendaServico[ST_STATUS] = StatusAtendimentoEnum::NAO_INICIADO;
                    break;
            }

            $statusAgendaProfissional[CO_STATUS_AGENDA_SERVICO] = $statusAgendaServicoService->Salva($statusAgendaServico);
            $statusAgendaProfissional[CO_STATUS_AGENDA] = $statusAgendaServico[CO_STATUS_AGENDA];

            if (!empty($dados[CO_PROFISSIONAL])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $dados[CO_PROFISSIONAL];
                $statusAgendaProfissional[TP_PROFISSIONAL] = 1;
                $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
            }

            if (!empty($dados['co_assistente'])) {
                $statusAgendaProfissional[CO_PROFISSIONAL] = $dados['co_assistente'];
                $statusAgendaProfissional[TP_PROFISSIONAL] = 2;
                $retorno[SUCESSO] = $statusAgendaProfissionalService->Salva($statusAgendaProfissional);
            }
        } else {
            $retorno = $validador;
        }

        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $retorno[MSG] = $validador[MSG];
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

    public function getAgendaAjax($Condicoes)
    {
        return $this->ObjetoModel->getAgendaAjax($Condicoes);
    }

}