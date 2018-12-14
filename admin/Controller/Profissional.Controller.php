<?php

class Profissional extends AbstractController
{
    public $result;
    public $form;
    public $jornada;

    public function ListarProfissional()
    {
        /** @var ProfissionalService $profissionalService */
        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
        $this->result = $profissionalService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
        ]);
    }

    public function CadastroProfissional()
    {
        /** @var ProfissionalService $profissionalService */
        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);

        if (!empty($_POST)):
            $retorno = $profissionalService->salvaProfisssional($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Profissional/ListarProfissional/');
            }
        endif;

        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);
        /** @var ContaBancariaService $contaBancariaService */
        $contaBancariaService = $this->getService(CONTA_BANCARIA_SERVICE);
        /** @var FuncionamentoService $funcionamentoService */
        $funcionamentoService = $this->getService(FUNCIONAMENTO_SERVICE);
        /** @var AssinanteEntidade $assinante */


        // Inicia elementos do Form
        $res['jornada'] = [];
        $res[ST_ASSISTENTE] = '';
        $res[ST_AGENDA] = '';
        $res[ST_AGENDA_ONLINE] = '';


        $coProfissional = UrlAmigavel::PegaParametro(CO_PROFISSIONAL);
        if ($coProfissional) {
            /** @var ProfissionalService $profissionalService */
            $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
            /** @var ProfissionalEntidade $profissional */
            $profissional = $profissionalService->PesquisaUmRegistro($coProfissional);
            // Aba 1
            $res = $pessoaService->getArrayDadosPessoa($profissional->getCoPessoa(), $res);
            $res[NO_APELIDO] = $profissional->getNoApelido();
            $res[DS_SOBRE] = $profissional->getDsSobre();
            // Carrega a Imagem de perfil
            $foto = '';
            if (!empty($profissional->getCoImagem())) {
                $foto = "usuarios/" . $profissional->getCoImagem()->getDsCaminho();
            }
            $res[DS_CAMINHO] = $foto;
            // Carrega os cargos
            $cargos = [];
            if (!empty($profissional->getCoProfissionalCargo())) {
                /** @var ProfissionalCargoEntidade $cargo */
                foreach ($profissional->getCoProfissionalCargo() as $cargo) {
                    $cargos[] = $cargo->getCoCargo()->getCoCargo();
                }
            }
            $res[CO_CARGO] = $cargos;


            // Aba 2
            /** @var EnderecoEntidade $endereco */
            $endereco = $enderecoService->PesquisaUmRegistro(
                $profissional->getCoPessoa()->getCoEndereco()->getCoEndereco()
            );
            $res = $enderecoService->getArrayDadosEndereco($endereco, $res);


            // Aba 3
            /** @var ContatoEntidade $contato */
            $contato = $contatoService->PesquisaUmRegistro(
                $profissional->getCoPessoa()->getCoContato()->getCoContato()
            );
            $res = $contatoService->getArrayDadosContato($contato, $res);

            // Aba 4
            $res[ST_ASSISTENTE] = ($profissional->getStAssistente() == 'S')
                ? 'checked' : '';
            $res[ST_AGENDA] = ($profissional->getStAgenda() == 'S')
                ? 'checked' : '';
            $res[ST_AGENDA_ONLINE] = ($profissional->getStAgendaOnline() == 'S')
                ? 'checked' : '';
            $res[TP_CONTRATACAO] = $profissional->getTpContratacao();
            $res[DT_ADMISSAO] = Valida::DataShow($profissional->getDtAdmissao());
            $res[NU_ORDEM_AGENDA] = $profissional->getNuOrdemAgenda();
            $res[DS_COR_AGENDA] = $profissional->getDsCorAgenda();


            // Aba 5
            $res = $contaBancariaService->getArrayDadosContaBancaria($profissional->getCoContaBancaria(), $res);


//          // Aba 6
            $res['jornada'] = $profissional->getCoJornadaTrabalho();


        } else {
            // Inicia elementos do Form
            $res['jornada'] = [];
            $res[ST_ASSISTENTE] = '';
            $res[ST_AGENDA] = '';
            $res[ST_AGENDA_ONLINE] = '';
        }


        $comboProfissionais = $assinanteService->getComboNuProfissionais();

        $this->form = ProfissionalForm::Cadastrar($res, $comboProfissionais);
    }

}
   