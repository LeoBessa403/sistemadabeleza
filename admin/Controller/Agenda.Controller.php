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
            if($agenda[ST_STATUS] != StatusAgendamentoEnum::DELETADO){
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
        $this->formCancela = AgendaForm::DeletarAgendamento();
    }

    public static function GetAgendaAjax($coAgenda)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        $Condicoes['age.' . CO_AGENDA] = $coAgenda;
        $dados = $agendaService->PesquisaAgendamentos($Condicoes, 'cli.co_cliente, pro.co_profissional, 
        pro2.co_profissional as co_assistente, stag.nu_valor, stag.nu_duracao, stag.ds_observacao, ser.co_servico');
        $dados = $dados[0];
        $dados[NU_VALOR] = Valida::FormataMoeda($dados[NU_VALOR]);
        $dados['dia'] = Valida::DataShow($dados[DT_INICIO_AGENDA], "d/m/Y");
        $dados['inicio'] = Valida::DataShow($dados[DT_INICIO_AGENDA], "H:i");
        $dados['fim'] = Valida::DataShow($dados[DT_FIM_AGENDA], "H:i");
        return $dados;
    }

    public static function DeletarAgendamento($dados)
    {
        /** @var AgendaService $agendaService */
        $agendaService = static::getServiceStatic(AGENDA_SERVICE);
        return $agendaService->DeletarAgendamento($dados);
    }

}