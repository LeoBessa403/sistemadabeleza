<?php

class Servico extends AbstractController
{
    public $result;
    public $form;
    public $jornada;
    public $coCategoriaServico;

    public function ListarCategoriaServico()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);
        $this->result = $this->getCategorias();
        if (empty($this->result)) {
            $categoriaServicoService->salvaCategoriaServicoInicial();
            $this->result = $this->getCategorias();
        }
    }


    public function ListarServico()
    {
        $this->coCategoriaServico = UrlAmigavel::PegaParametro(CO_CATEGORIA_SERVICO);
        $this->result = $this->getCategorias();
    }

    public function getCategorias()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);
        return $categoriaServicoService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
        ]);
    }

    public function CadastroCategoriaServico()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);

        if (!empty($_POST)):
            $retorno = $categoriaServicoService->salvaCategoriaServico($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Servico/ListarCategoriaServico/');
            }
        endif;

        $coCategoriaServico = UrlAmigavel::PegaParametro(CO_CATEGORIA_SERVICO);
        if ($coCategoriaServico) {
            /** @var CategoriaServicoService $categoriaServicoService */
            $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);
            /** @var CategoriaServicoEntidade $categoriaServico */
            $categoriaServico = $categoriaServicoService->PesquisaUmRegistro($coCategoriaServico);

            $res[ST_STATUS] = ($categoriaServico->getStStatus() == StatusUsuarioEnum::ATIVO)
                ? 'checked' : '';
            $res[NO_CATEGORIA_SERVICO] = $categoriaServico->getNoCategoriaServico();
            $res[CO_CATEGORIA_SERVICO] = $categoriaServico->getCoCategoriaServico();

        } else {
            // Inicia elementos do Form
            $res[ST_STATUS] = 'checked';
        }


        $this->form = ServicoForm::CadastrarCategoria($res);
    }

    public function CadastroServico()
    {
        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);

        if (!empty($_POST)):
            $retorno = $servicoService->salvaServico($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Servico/ListarServico/');
            }
        endif;

        $coServico = UrlAmigavel::PegaParametro(CO_SERVICO);
        if ($coServico) {
            /** @var ServicoEntidade $servico */
            $servico = $servicoService->PesquisaUmRegistro($coServico);
            $res[ST_STATUS] = ($servico->getStStatus() == StatusUsuarioEnum::ATIVO)
                ? 'checked' : '';
            $res[ST_ASSISTENTE] = ($servico->getStAssistente() == SimNaoEnum::SIM)
                ? 'checked' : '';
            $res[CO_CATEGORIA_SERVICO] = $servico->getCoCategoriaServico()->getCoCategoriaServico();
            $res[NO_SERVICO] = $servico->getNoServico();
            $res[NU_VALOR] = Valida::FormataMoeda($servico->getCoUltimoPrecoServico()->getNuValor());
            $res[NU_DURACAO] = $servico->getNuDuracao();
            $res[DS_DESCRICAO] = $servico->getDsDescricao();
            $res[CO_SERVICO] = $servico->getCoServico();
            $noPasta = "Servico/Assinante-" . AssinanteService::getCoAssinanteLogado().'/';

            // Carrega a Imagem do Serviço
            $foto = null;
            if (!empty($servico->getCoImagem())){
                if (file_exists(PASTA_UPLOADS . $servico->getCoImagem()->getDsCaminho())) {
                    $foto =  $servico->getCoImagem()->getDsCaminho();
                }elseif (file_exists(PASTA_UPLOADS . $noPasta . $servico->getCoImagem()->getDsCaminho())) {
                    $foto =  $noPasta . $servico->getCoImagem()->getDsCaminho();
                }
                $res[CO_IMAGEM] = $servico->getCoImagem()->getCoImagem();
            }
            $res[DS_CAMINHO] = $foto;

        } else {
            // Inicia elementos do Form
            $res[ST_STATUS] = 'checked';
            $res[ST_ASSISTENTE] = '';
        }


        $this->form = ServicoForm::Cadastrar($res);
    }

    public static function DesativarServico($coServico)
    {
        /** @var ServicoService $servicoService */
        $servicoService = static::getService(SERVICO_SERVICE);
        return $servicoService->desativarServico($coServico);
    }

    public static function AtivarServico($coServico)
    {
        /** @var ServicoService $servicoService */
        $servicoService = static::getService(SERVICO_SERVICE);
        return $servicoService->ativarServico($coServico);
    }

}