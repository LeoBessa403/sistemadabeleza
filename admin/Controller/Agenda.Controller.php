<?php

class Agenda extends AbstractController
{
    public $result;
    public $form;
    public $jornada;

    public function CarregaAgendamentos()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        $Condicoes['age.'.CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $Condicoes['stpro.'.TP_PROFISSIONAL] = 1;
        $Condicoes['stpro2.'.TP_PROFISSIONAL] = 2;

        $agendas =  $agendaService->PesquisaAgendamentos($Condicoes);

        $eventos = [];
        foreach ($agendas as $agenda){
            $eve = array(
                'id' => (int)$agenda[CO_AGENDA],
                'title' => "Profissional: ". $agenda['profissional'] . "\nAssistente: ". $agenda['assistente'] .
                    "\nCliente: ". $agenda['cliente']. "\nServiço: ".$agenda[NO_SERVICO],
                'start' => Valida::DataShow( $agenda[DT_INICIO_AGENDA] ,'Y-m-d H:i'),
                'end' => Valida::DataShow($agenda[DT_FIM_AGENDA] ,'Y-m-d H:i'),
                'className' => 'label-'. StatusAgendamentoEnum::$cores[$agenda[ST_STATUS]],
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
    }

    public function ListarClientePesquisaAvancada()
    {
        echo ClienteForm::Pesquisar();
    }

    public function CadastroCliente()
    {
        /** @var ClienteService $clienteService */
        $clienteService = $this->getService(CLIENTE_SERVICE);

        if (!empty($_POST)):
            $retorno = $clienteService->salvaCliente($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Cliente/ListarCliente/');
            }
        endif;

        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);

        $coCliente = UrlAmigavel::PegaParametro(CO_CLIENTE);
        if ($coCliente) {
            /** @var ClienteService $clienteService */
            $clienteService = $this->getService(CLIENTE_SERVICE);
            /** @var ClienteEntidade $cliente */
            $cliente = $clienteService->PesquisaUmRegistro($coCliente);
            // Aba 1
            $res = $pessoaService->getArrayDadosPessoa($cliente->getCoPessoa(), []);
            $res[NO_APELIDO] = $cliente->getNoApelido();
            $res[DS_OBSERVACAO] = $cliente->getDsObservacao();
            // Carrega a Imagem de perfil
            $foto = null;
            if (!empty($cliente->getCoPessoa()->getCoImagem()) &&
                (file_exists(PASTA_RAIZ . "uploads/clientes/" . $cliente->getCoPessoa()->getCoImagem()->getDsCaminho()))) {
                $foto = "clientes/" . $cliente->getCoPessoa()->getCoImagem()->getDsCaminho();
            }
            $res[DS_CAMINHO] = $foto;

            // Aba 2
            /** @var EnderecoEntidade $endereco */
            $endereco = $enderecoService->PesquisaUmRegistro(
                $cliente->getCoPessoa()->getCoEndereco()->getCoEndereco()
            );
            $res = $enderecoService->getArrayDadosEndereco($endereco, $res);


            // Aba 3
            /** @var ContatoEntidade $contato */
            $contato = $contatoService->PesquisaUmRegistro(
                $cliente->getCoPessoa()->getCoContato()->getCoContato()
            );
            $res = $contatoService->getArrayDadosContato($contato, $res);


            // Aba 4
            $res[ST_RECEBER_EMAIL_AGENDAMENTO] = ($cliente->getStReceberEmailAgendamento() == 'S')
                ? 'checked' : '';
            $res[ST_LEMBRETE_HORARIO_AGENDAMENTO] = ($cliente->getStLembreteHorarioAgendamento() == 'S')
                ? 'checked' : '';
            $res[ST_EMAIL_MARKETING] = ($cliente->getStEmailMarketing() == 'S')
                ? 'checked' : '';
            $res[ST_SMS_MARKETING] = ($cliente->getStSmsMarketing() == 'S')
                ? 'checked' : '';
            $res[NU_COMO_CONHECEU] = $cliente->getNuComoConheceu();


            // Inicia parametros para edição
            $res[CO_CLIENTE] = $cliente->getCoCliente();
            $res[CO_ENDERECO] = $cliente->getCoPessoa()->getCoEndereco()->getCoEndereco();
            $res[CO_CONTATO] = $cliente->getCoPessoa()->getCoContato()->getCoContato();
            $res[CO_PESSOA] = $cliente->getCoPessoa()->getCoPessoa();
            $res[CO_IMAGEM] = ($cliente->getCoPessoa()->getCoImagem())
                ? $cliente->getCoPessoa()->getCoImagem()->getCoImagem() : null;

        } else {
            // Inicia elementos do Form
            $res[ST_RECEBER_EMAIL_AGENDAMENTO] = 'checked';
            $res[ST_LEMBRETE_HORARIO_AGENDAMENTO] = 'checked';
            $res[ST_EMAIL_MARKETING] = 'checked';
            $res[ST_SMS_MARKETING] = 'checked';
        }


        $this->form = ClienteForm::Cadastrar($res);
    }

}