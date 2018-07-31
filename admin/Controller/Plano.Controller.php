<?php

class Plano extends AbstractController
{
    public $result;
    public $plano;

    function ListarPlano()
    {
        /** @var PlanoService $planoService */
        $planoService = $this->getService(PLANO_SERVICE);

        $this->result = $planoService->PesquisaTodos();
    }

    function CadastroPlano()
    {
        /** @var PlanoService $planoService */
        $planoService = $this->getService(PLANO_SERVICE);
        $id = "cadastroPlano";

        if (!empty($_POST[$id])):
            $retorno = $planoService->salvaPlano($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarPlano/');
            }
        endif;

        $coPlano = UrlAmigavel::PegaParametro(CO_PLANO);
        $res = [];
        if ($coPlano) {
            /** @var PlanoEntidade $plano */
            $plano = $planoService->PesquisaUmRegistro($coPlano);
//            $res = $planoService->getArrayDadosPlano($plano, $res);
        }
        $this->form = PlanoForm::Cadastrar($res);
    }

}
   