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
            /** @var AssinanteEntidade $assinante */
            $assinante = $assinanteService->PesquisaUmRegistro($coAssinante);
            $res[NO_PESSOA] = $assinante->getCoPessoa()->getNoPessoa();
            $res[NO_FANTASIA] = $assinante->getCoEmpresa()->getNoFantasia();
            $res[NU_TEL1] = $assinante->getCoPessoa()->getCoContato()->getNuTel1();
            $res[DS_EMAIL] = $assinante->getCoPessoa()->getCoContato()->getDsEmail();
            $res[CO_ASSINANTE] = $assinante->getCoAssinante();
            $res[CO_ASSINANTE_MATRIZ] = ($assinante->getCoAssinanteMatriz())
                ? $assinante->getCoAssinanteMatriz()->getCoAssinante() : null;
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
   