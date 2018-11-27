<?php

class Profissional extends AbstractController
{
    public $result;

    public function ListarProfissional()
    {
        /** @var ProfissionalService $profissionalService */
        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
        $this->result = $profissionalService->PesquisaTodos([
            TP_PROFISSIONAL => ProfissionalEnum::MATRIZ,
        ]);
    }

    public function CadastroProfissional()
    {
        /** @var ProfissionalService $profissionalService */
        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);

        if (!empty($_POST)):
            $retorno = $profissionalService->salvaDadosComplementaresProfissional($_POST, $_FILES);
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
        /** @var ProfissionalEntidade $profissional */
        $profissional = $profissionalService->getProfissionalLogado();

        $this->contato = $contatoService->PesquisaUmRegistro($profissional->getCoEmpresa()->getCoContato());
        $this->endereco = $enderecoService->PesquisaUmRegistro($profissional->getCoEmpresa()->getCoEndereco());
        if (!$this->endereco) {
            $endereco[DS_ENDERECO] = '';
            $coEndereco = $enderecoService->Salva($endereco);
            $this->endereco = $enderecoService->PesquisaUmRegistro($coEndereco);
            $empresa[CO_ENDERECO] = $coEndereco;
            $empresaService->Salva($empresa, $profissional->getCoEmpresa()->getCoEmpresa());
        }
        $this->facilidade = $profissional->getCoFacilidadeBeneficio();
        if (!$this->facilidade) {
            $facilidad[TP_ESTABELECIMENTO] = 0;
            $facilidad[CO_PROFISSIONAL] = ProfissionalService::getCoProfissionalLogado();
            $cofacilidad = $facilidadeBeneficioService->Salva($facilidad);
            $this->facilidade = $facilidadeBeneficioService->PesquisaUmRegistro($cofacilidad);
        }
        $this->funcionamento = $profissional->getCoFuncionamento();
        if (!$this->funcionamento) {
            $funcionamento[CO_PROFISSIONAL] = ProfissionalService::getCoProfissionalLogado();
            $funcionamento[NU_HORA_ABERTURA] = '08:00';
            $funcionamento[NU_HORA_FECHAMENTO] = '18:00';
            for ($i = 1; $i < 6; $i++) {
                $funcionamento[NU_DIA_SEMANA] = $i;
                $funcionamentoService->Salva($funcionamento);
            }
            $this->funcionamento = $facilidadeBeneficioService->PesquisaUmQuando([
                CO_PROFISSIONAL => ProfissionalService::getCoProfissionalLogado()
            ]);
        }
        $this->logo = '';
        $this->imagem_logo = '';
        if (!empty($profissional->getCoImagemProfissional())) {
            $this->imagem_logo = $profissional->getLogoImagemProfissional()->getCoImagem()->getCoImagem();
            $this->logo = "Profissional/Profissional-" . ProfissionalService::getCoProfissionalLogado() . "/" .
                $profissional->getLogoImagemProfissional()->getCoImagem()->getDsCaminho();
        }
        $this->profissional = $profissional;
    }

}
   