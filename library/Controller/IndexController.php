<?php

class IndexController extends AbstractController
{
    public function Index()
    {
        /** @var ProjetoService $projetoService */
        $projetoService = $this->getService(PROJETO_SERVICE);
        $projetos = $projetoService->PesquisaTodos();

        /** @var ModuloService $moduloService */
        $moduloService = $this->getService(MODULO_SERVICE);
        $modulos = $moduloService->PesquisaTodos();

        /** @var SessaoService $sessaoService */
        $sessaoService = $this->getService(SESSAO_SERVICE);
        $sessaos = $sessaoService->PesquisaTodos();

        /** @var HistoriaService $historiaService */
        $historiaService = $this->getService(HISTORIA_SERVICE);
        $historias = $historiaService->PesquisaTodos();

        /** @var AnotacaoService $anotacaoService */
        $anotacaoService = $this->getService(ANOTACAO_SERVICE);
        $anotacaos = $anotacaoService->PesquisaTodos();


        $dados['projetosCadastrados'] = count($projetos);
        $dados['modulosCadastrados'] = count($modulos);
        $dados['sessaosCadastradas'] = count($sessaos);
        $dados['historiasCadastradas'] = count($historias);
        $dados['anotacaosCadastradas'] = count($anotacaos);

        return $dados;
    }

}