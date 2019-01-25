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

        $coProfissional = UrlAmigavel::PegaParametro(CO_PROFISSIONAL);
        if ($coProfissional) {
            /** @var ProfissionalService $profissionalService */
            $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
            /** @var ProfissionalEntidade $profissional */
            $profissional = $profissionalService->PesquisaUmRegistro($coProfissional);
            // Aba 1
            $res = $pessoaService->getArrayDadosPessoa($profissional->getCoPessoa(), []);
            $res[NO_APELIDO] = $profissional->getNoApelido();
            $res[DS_SOBRE] = $profissional->getDsSobre();
            // Carrega a Imagem de perfil
            $foto = null;
            if (!empty($profissional->getCoImagem()) &&
                (file_exists(PASTA_RAIZ . "uploads/usuarios/" . $profissional->getCoImagem()->getDsCaminho()))) {
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
            $res[DT_ADMISSAO] = ($profissional->getDtAdmissao()) ? Valida::DataShow($profissional->getDtAdmissao()) : null;
            $res[NU_ORDEM_AGENDA] = $profissional->getNuOrdemAgenda();
            $res[DS_COR_AGENDA] = $profissional->getDsCorAgenda();


            // Aba 5
            $res = $contaBancariaService->getArrayDadosContaBancaria($profissional->getCoContaBancaria(), $res);


            // Aba 6
            $res['jornada'] = $profissional->getCoJornadaTrabalho();


            // Inicia parametros para edição
            $res[CO_PROFISSIONAL] = $profissional->getCoProfissional();
            $res[CO_ENDERECO] = $profissional->getCoPessoa()->getCoEndereco()->getCoEndereco();
            $res[CO_CONTATO] = $profissional->getCoPessoa()->getCoContato()->getCoContato();
            $res[CO_PESSOA] = $profissional->getCoPessoa()->getCoPessoa();
            $res[CO_CONTA_BANCARIA] = ($profissional->getCoContaBancaria())
                ? $profissional->getCoContaBancaria()->getCoContaBancaria() : null;
            $res[CO_IMAGEM] = ($profissional->getCoImagem())
                ? $profissional->getCoImagem()->getCoImagem() : null;

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

    public function AusenciaProfissional()
    {
        /** @var AusenciaService $ausenciaService */
        $ausenciaService = $this->getService(AUSENCIA_SERVICE);
        $this->result = $ausenciaService->PesquisaAvancada([
            "prof." . CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
        ]);
    }

    public function CadastroAusenciaProfissional()
    {
        /** @var PlanoService $planoService */
        $planoService = $this->getService(PLANO_SERVICE);
        $id = "cadastroPlano";

        if (!empty($_POST[$id])):
            $retorno = $planoService->salvaPlano($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarPlano/');
            }
        endif;

        $coPlano = UrlAmigavel::PegaParametro(CO_PLANO);
        $res[ST_STATUS] = "checked";
        if ($coPlano) {
            /** @var PlanoEntidade $plano */
            $plano = $planoService->PesquisaUmRegistro($coPlano);
            $res[NO_PLANO] = $plano->getNoPlano();
            $res[NU_MES_ATIVO] = $plano->getNuMesAtivo();
            $res[DS_OBSERVACAO] = $plano->getCoUltimoPlanoAssinante()->getDsObservacao();
            $res[NU_VALOR] = Valida::FormataMoeda($plano->getCoUltimoPlanoAssinante()->getNuValor());
            $modulos = [];
            /** @var PlanoModuloEntidade $ModuloEntidade */
            foreach ($plano->getCoPlanoModulo() as $ModuloEntidade) {
                $modulos[] = $ModuloEntidade->getCoModulo()->getCoModulo();
            }
            $res[CO_MODULO] = $modulos;
            $res[CO_PLANO] = $plano->getCoPlano();
            $res[ST_STATUS] = ($plano->getStStatus() == 'A')
                ? 'checked' : '';
        }
        $this->form = PlanoForm::Cadastrar($res);
    }

}
   