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
//        /** @var FacilidadeBeneficioEntidade $facilidade */
//        $facilidade = $assinante->getCoFacilidadeBeneficio();
//        if (!$facilidade) {
//            $facilidad[TP_ESTABELECIMENTO] = 0;
//            $facilidad[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
//            $cofacilidad = $facilidadeBeneficioService->Salva($facilidad);
//            /** @var FacilidadeBeneficioEntidade $facilidade */
//            $facilidade = $facilidadeBeneficioService->PesquisaUmRegistro($cofacilidad);
//        }
//        $res[ST_LANCHONETE] = ($facilidade->getStLanchonete() == 'S')
//            ? 'checked' : '';
//        $res[ST_TELEVISAO] = ($facilidade->getStTelevisao() == 'S')
//            ? 'checked' : '';
//        $res[ST_WIFI] = ($facilidade->getStWifi() == 'S')
//            ? 'checked' : '';
//        $res[ST_ACESSO_DEFICIENTE] = ($facilidade->getStAcessoDeficiente() == 'S')
//            ? 'checked' : '';
//        $res[ST_JOGOS] = ($facilidade->getStJogos() == 'S')
//            ? 'checked' : '';
//        $res[TP_ESTABELECIMENTO] = $facilidade->getTpEstabelecimento();
//        $res[TP_ATENDIMENTO] = $facilidade->getTpAtendimento();
//        $res[TP_GENERO_ESPECIALIZADO] = $facilidade->getTpGeneroEspecializado();
//        $res[TP_ESTACIONAMENTO] = $facilidade->getTpEstacionamento();


            // Aba 5
            $res = $contaBancariaService->getArrayDadosContaBancaria($profissional->getCoContaBancaria(), $res);


//        // Aba 6
//            $funcionamento = $assinante->getCoFuncionamento();
//        if (!$funcionamento) {
//            $funcionamento[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
//            $funcionamento[NU_HORA_ABERTURA] = '08:00';
//            $funcionamento[NU_HORA_FECHAMENTO] = '18:00';
//            for ($i = 1; $i < 6; $i++) {
//                $funcionamento[NU_DIA_SEMANA] = $i;
//                $funcionamentoService->Salva($funcionamento);
//            }
//            $funcionamento = $funcionamentoService->PesquisaUmQuando([
//                CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
//            ]);
//        }


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
   