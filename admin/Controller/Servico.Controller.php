<?php

class Servico extends AbstractController
{
    public $result;
    public $form;
    public $jornada;

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


        $this->form = ServicoForm::Cadastrar($res);
    }

}