<?php

class Agenda extends AbstractController
{
    public $result;
    public $form;
    public $formCancela;
    public $jornada;

    public function CarregaAgendamentos()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        $Condicoes['age.' . CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

        $agendas = $agendaService->PesquisaAgendamentos($Condicoes);

        $eventos = [];
        foreach ($agendas as $agenda) {
            $eve = array(
                'id' => (int)$agenda[CO_AGENDA],
                'title' => "Profissional: " . $agenda['profissional'] . "\nAssistente: " . $agenda['assistente'] .
                    "\nCliente: " . $agenda['cliente'] . "\nServiço: " . $agenda[NO_SERVICO],
                'start' => Valida::DataShow($agenda[DT_INICIO_AGENDA], 'Y-m-d H:i'),
                'end' => Valida::DataShow($agenda[DT_FIM_AGENDA], 'Y-m-d H:i'),
                'className' => 'label-' . StatusAgendamentoEnum::$cores[$agenda[ST_STATUS]],
                'allDay' => false
            );
            $eventos[] = $eve;
        }
        return $eventos;
    }

    public function Agendamento($dados = null)
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        if ($dados):
            return $agendaService->salvaAgendamentoAjax($dados);
        endif;
        // Inicia elementos do Form
        $res[ST_STATUS] = 'checked';
        $this->form = AgendaForm::CadastroAgendamento($res);
        $this->formCancela = AgendaForm::CancelaAgendamento();
    }

    public static function GetAgendaAjax($coAgenda)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        $Condicoes['age.' . CO_AGENDA] = $coAgenda;
        $dados = $agendaService->getAgendaAjax($Condicoes);
        $dados[NU_VALOR] = Valida::FormataMoeda($dados[NU_VALOR]);
        $dados['dia'] = Valida::DataShow($dados[DT_INICIO_AGENDA], "d/m/Y");
        $dados['inicio'] = Valida::DataShow($dados[DT_INICIO_AGENDA], "H:i");
        $dados['fim'] = Valida::DataShow($dados[DT_FIM_AGENDA], "H:i");
        return $dados;
    }

    public static function CancelaAgendamento($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        $dados = $agendaService->CancelaAgendamento($dados);

        return $dados;
    }

}