<?php

class Assinante extends AbstractController
{
    public $result;
    public $assinante;
    public $endereco;
    public $contato;
    public $facilidade;
    public $funcionamento;
    public $logo;
    public $imagem_logo;

    public function ListarAssinante()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        $this->result = $assinanteService->PesquisaTodos([
            TP_ASSINANTE => AssinanteEnum::MATRIZ,
        ]);
    }

    public function FilialAssinante()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        $coAssinante = UrlAmigavel::PegaParametro(CO_ASSINANTE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->PesquisaUmRegistro($coAssinante);
        $filiais = $assinante->getCoUnicoAssinanteMatriz()->getCoAssinanteFilial();
        $coAssinanteFilial = [];
        /** @var AssinanteFilialEntidade $filial */
        foreach ($filiais as $filial) {
            $coAssinanteFilial[] = $filial->getCoAssinante();
        }
        /** @var AssinanteEntidade $this ->result */
        $this->result = $assinanteService->PesquisaTodos([
            CO_ASSINANTE => implode(', ', $coAssinanteFilial)
        ]);
    }

    public function CadastroAssinante()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        $id = "cadastroAssinante";

        if (!empty($_POST[$id])):
            $retorno = $assinanteService->salvaAssinante($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarAssinante/');
            }
        endif;

        $coAssinante = UrlAmigavel::PegaParametro(CO_ASSINANTE);
        $res = [];
        if ($coAssinante) {
            /** @var AssinanteEntidade $assinante */
            $assinante = $assinanteService->PesquisaUmRegistro($coAssinante);
            $res[NO_PESSOA] = $assinante->getCoPessoa()->getNoPessoa();
            $res[NO_FANTASIA] = $assinante->getCoEmpresa()->getNoFantasia();
            $res[NU_TEL1] = $assinante->getCoPessoa()->getCoContato()->getNuTel1();
            $res[DS_EMAIL] = $assinante->getCoPessoa()->getCoContato()->getDsEmail();
            $res[CO_ASSINANTE] = $assinante->getCoAssinante();
            $res[CO_ASSINANTE_MATRIZ] = $assinante->getCoMeuAssinanteMatriz();
            $res[CO_ASSINANTE_FILIAL] = $assinante->getFiliaisMatriz();

        }
        $this->form = AssinanteForm::Cadastrar($res);
    }

    public function HistoricoAssinante()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);

        $coAssinante = UrlAmigavel::PegaParametro(CO_ASSINANTE);
        if ($coAssinante) {
            /** @var AssinanteEntidade $assinante */
            $this->assinante = $assinanteService->PesquisaUmRegistro($coAssinante);
        } else {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/AssinanteNaoEncontrado/');
        }
    }

    public function PagamentoAssinante()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var PlanoAssinanteAssinaturaService $PlanoAssinanteAssinaturaService */
        $PlanoAssinanteAssinaturaService = $this->getService(PLANO_ASSINANTE_ASSINATURA_SERVICE);
        $id = "cadastroAssinante";

        if (!empty($_POST[$id])):
            $retorno = $PlanoAssinanteAssinaturaService->salvaPagamentoAssinante($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarAssinante/');
            }
        endif;

        $coAssinante = UrlAmigavel::PegaParametro(CO_ASSINANTE);
        $res = [];
        if ($coAssinante) {
            /** @var AssinanteEntidade $assinante */
            $assinante = $assinanteService->PesquisaUmRegistro($coAssinante);
            $res[CO_ASSINANTE] = $coAssinante;
            $res[DT_EXPIRACAO] = Valida::DataShow($assinante->getDtExpiracao());
        } else {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/AssinanteNaoEncontrado/');
        }
        $this->form = AssinanteForm::Pagamento($res);
    }

    public function DadosComplementaresAssinante()
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

        $this->contato = $contatoService->PesquisaUmRegistro($assinante->getCoEmpresa()->getCoContato());
        $this->endereco = $enderecoService->PesquisaUmRegistro($assinante->getCoEmpresa()->getCoEndereco());
        if (!$this->endereco) {
            $endereco[DS_ENDERECO] = '';
            $coEndereco = $enderecoService->Salva($endereco);
            $this->endereco = $enderecoService->PesquisaUmRegistro($coEndereco);
            $empresa[CO_ENDERECO] = $coEndereco;
            $empresaService->Salva($empresa, $assinante->getCoEmpresa()->getCoEmpresa());
        }
        $this->facilidade = $assinante->getCoFacilidadeBeneficio();
        if (!$this->facilidade) {
            $facilidad[TP_ESTABELECIMENTO] = 0;
            $facilidad[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
            $cofacilidad = $facilidadeBeneficioService->Salva($facilidad);
            $this->facilidade = $facilidadeBeneficioService->PesquisaUmRegistro($cofacilidad);
        }
        $this->funcionamento = $assinante->getCoFuncionamento();
        if (!$this->funcionamento) {
            $funcionamento[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
            $funcionamento[NU_HORA_ABERTURA] = '08:00';
            $funcionamento[NU_HORA_FECHAMENTO] = '18:00';
            for ($i = 1; $i < 6; $i++) {
                $funcionamento[NU_DIA_SEMANA] = $i;
                $funcionamentoService->Salva($funcionamento);
            }
            $this->funcionamento = $facilidadeBeneficioService->PesquisaUmQuando([
                CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
            ]);
        }
        $this->logo = '';
        $this->imagem_logo = '';
        if (!empty($assinante->getCoImagemAssinante())) {
            $this->imagem_logo = $assinante->getLogoImagemAssinante()->getCoImagem()->getCoImagem();
            $this->logo = "Assinante/Assinante-" . AssinanteService::getCoAssinanteLogado() . "/" .
                $assinante->getLogoImagemAssinante()->getCoImagem()->getDsCaminho();
        }
        $this->assinante = $assinante;
    }

}
   