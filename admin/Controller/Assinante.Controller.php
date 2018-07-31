<?php

class Assinante extends AbstractController
{
    public $result;
    public $assinante;

    public function ListarAssinante()
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        $this->result = $assinanteService->PesquisaTodos();
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
//            /** @var AssinanteEntidade $assinante */
//            $assinante = $assinanteService->PesquisaUmRegistro($coAssinante);
//            $res[NO_ASSINANTE] = $assinante->getNoAssinante();
//            $res[NU_MES_ATIVO] = $assinante->getNuMesAtivo();
//            $res[DS_OBSERVACAO] = $assinante->getCoUltimoAssinanteAssinante()->getDsObservacao();
//            $res[NU_VALOR] = Valida::FormataMoeda($assinante->getCoUltimoAssinanteAssinante()->getNuValor());
//            $modulos = [];
//            /** @var AssinanteModuloEntidade $ModuloEntidade */
//            foreach ($assinante->getCoAssinanteModulo() as $ModuloEntidade) {
//                $modulos[] = $ModuloEntidade->getCoModulo()->getCoModulo();
//            }
//            $res[CO_MODULO] = $modulos;
//            $res[CO_ASSINANTE] = $assinante->getCoAssinante();
//            $res[ST_STATUS] = ($assinante->getStStatus() == 'A')
//                ? 'checked' : '';
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

}
   