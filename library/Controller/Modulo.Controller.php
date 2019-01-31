<?php

class Modulo extends AbstractController
{
    public $result;
    public $coProjeto;
    public $coModulo;
    public $noModulo;

    public function ListarModulo()
    {
        $this->coProjeto = 1;
        /** @var ModuloService $moduloService */
        $moduloService = $this->getService(MODULO_SERVICE);
        $this->result = $moduloService->PesquisaTodos([
            CO_PROJETO => $this->coProjeto
        ]);
    }

    public function CadastroModulo()
    {
        /** @var ModuloService $moduloService */
        $moduloService = $this->getService(MODULO_SERVICE);

        $id = "cadastroModulo";

        if (!empty($_POST[$id])):
            $retorno = $moduloService->salvaModulo($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller .
                    '/ListarModulo/' . Valida::GeraParametro(CO_PROJETO . "/" . $_POST[CO_PROJETO]));
            }
        endif;

        $coModulo = UrlAmigavel::PegaParametro(CO_MODULO);
        $res = [];
        if ($coModulo) {
            /** @var ModuloEntidade $modulo */
            $modulo = $moduloService->PesquisaUmRegistro($coModulo);
            $res[CO_MODULO] = $modulo->getCoModulo();
            $res[NO_MODULO] = $modulo->getNoModulo();
            $res[CO_PROJETO] = $modulo->getCoProjeto()->getCoProjeto();
            $res[NO_PROJETO] = $modulo->getCoProjeto()->getNoProjeto();
        } else {
            /** @var ProjetoService $projetoService */
            $projetoService = $this->getService(PROJETO_SERVICE);

            $coProjeto = UrlAmigavel::PegaParametro(CO_PROJETO);
            /** @var ProjetoEntidade $projeto */
            $projeto = $projetoService->PesquisaUmRegistro($coProjeto);
            $res[CO_PROJETO] = $projeto->getCoProjeto();
            $res[NO_PROJETO] = $projeto->getNoProjeto();
        }
        $this->form = ModuloForm::Cadastrar($res);
    }

    public function EstatisticaModulo()
    {
        $dados['esforco'] = 0;
        $dados['esforcoRestante'] = 0;
        /** @var HistoriaService $historiaService */
        $historiaService = $this->getService(HISTORIA_SERVICE);
        /** @var ModuloService $moduloService */
        $moduloService = $this->getService(MODULO_SERVICE);
        $coModulo = UrlAmigavel::PegaParametro(CO_MODULO);
        $Condicoes = [];
        /** @var ProjetoEntidade $projeto */
        $modulo = $moduloService->PesquisaUmRegistro($coModulo);
        /** @var ModuloEntidade $modulo */
        if (!empty($modulo->getCoSessao())) {
            /** @var SessaoEntidade $sessao */
            foreach ($modulo->getCoSessao() as $sessao) {
                if (!empty($sessao->getCoHistoria())) {
                    /** @var HistoriaEntidade $historia */
                    foreach ($sessao->getCoHistoria() as $historia) {
                        $dados['esforco'] = $dados['esforco'] + $historia->getNuEsforco();
                        $dados['esforcoRestante'] = $dados['esforcoRestante'] + $historia->getNuEsforcoRestante();
                        $Condicoes[CO_REGISTRO][] = $historia->getCoHistoria();
                    }
                }
            }
        }
        $historiaService->motaGraficoEvolucao($Condicoes);
        $this->coProjeto = $modulo->getCoProjeto()->getCoProjeto();
        $this->dados = $dados;
        $this->noModulo = $modulo->getNoModulo();
    }

}
   