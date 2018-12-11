<?php

class Profissional extends AbstractController
{
    public $result;
    public $form;
    public $jornada;

    public function ListarProfissional()
    {
//        /** @var ProfissionalService $profissionalService */
//        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
//        $this->result = $profissionalService->PesquisaTodos([
//            TP_PROFISSIONAL => ProfissionalEnum::MATRIZ,
//        ]);
    }

    public function CadastroProfissional()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);

        if (!empty($_POST)):
            $retorno = $assinanteService->salvaDadosComplementaresAssinante($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Index/Index/');
            }
        endif;

        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var EmpresaService $empresaService */
        $empresaService = $this->getService(EMPRESA_SERVICE);
        /** @var FacilidadeBeneficioService $facilidadeBeneficioService */
        $facilidadeBeneficioService = $this->getService(FACILIDADE_BENEFICIO_SERVICE);
        /** @var FuncionamentoService $funcionamentoService */
        $funcionamentoService = $this->getService(FUNCIONAMENTO_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();


        // Aba 1
//        $res[NO_PESSOA] = $assinante->getCoPessoa()->getNoPessoa();
//        $res[NO_FANTASIA] = $assinante->getCoEmpresa()->getNoFantasia();
//        $res[NO_EMPRESA] = $assinante->getCoEmpresa()->getNoEmpresa();
//        $res[NU_CNPJ] = $assinante->getCoEmpresa()->getNuCnpj();
//        $res[NU_INSC_ESTADUAL] = $assinante->getCoEmpresa()->getNuInscEstadual();
//        $res[DS_OBSERVACAO] = $assinante->getCoEmpresa()->getDsObservacao();


        // Aba 2
//        /** @var EnderecoEntidade $endereco */
//        $endereco = $enderecoService->PesquisaUmRegistro($assinante->getCoEmpresa()->getCoEndereco());
//        if (!$endereco) {
//            $end[DS_ENDERECO] = '';
//            $coEndereco = $enderecoService->Salva($end);
//            /** @var EnderecoEntidade $endereco */
//            $endereco = $enderecoService->PesquisaUmRegistro($coEndereco);
//            $empresa[CO_ENDERECO] = $coEndereco;
//            $empresaService->Salva($empresa, $assinante->getCoEmpresa()->getCoEmpresa());
//        }
//        $res = $enderecoService->getArrayDadosEndereco($endereco, $res);


        // Aba 3
//        /** @var ContatoEntidade $contato */
//        $contato = $contatoService->PesquisaUmRegistro($assinante->getCoEmpresa()->getCoContato());
//        $res = $contatoService->getArrayDadosContato($contato, $res);

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


//        // Aba 5
//        $funcionamento = $assinante->getCoFuncionamento();
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
        $res['jornada'] = [];
        $res[ST_ASSISTENTE] = '';
        $res[ST_AGENDA] = '';
        $res[ST_AGENDA_ONLINE] = '';


//        // Aba 6
//        $logo = '';
//        $imagem_logo = '';
//        if (!empty($assinante->getCoImagemAssinante())) {
//            $imagem_logo = $assinante->getLogoImagemAssinante()->getCoImagem()->getCoImagem();
//            $logo = "Assinante/Assinante-" . AssinanteService::getCoAssinanteLogado() . "/" .
//                $assinante->getLogoImagemAssinante()->getCoImagem()->getDsCaminho();
//        }
//        $res[DS_CAMINHO] = $logo;
//        $res['imagem_logo'] = $imagem_logo;

        $comboProfissionais = $assinanteService->getComboNuProfissionais();

        $this->form = ProfissionalForm::Cadastrar($res, $comboProfissionais);
    }

}
   