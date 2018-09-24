<?php

class Configuracao extends AbstractController
{
    public $result;
    public $plano;

    public function ListarDiaEspecialConfiguracao()
    {
        /** @var PlanoService $planoService */
        $planoService = $this->getService(PLANO_SERVICE);
        $this->result = $planoService->PesquisaTodos();
    }

    public function CadastroDiaEspecialConfiguracao()
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
        $res[ST_STATUS] = "checked";
        if ($coPlano) {
            /** @var PlanoEntidade $plano */
            $plano = $planoService->PesquisaUmRegistro($coPlano);
            $res[NO_PLANO] = $plano->getNoPlano();
            $res[NU_MES_ATIVO] = $plano->getNuMesAtivo();
            $res[DS_OBSERVACAO] = $plano->getCoUltimoPlanoAssinante()->getDsObservacao();
            $res[NU_VALOR] = Valida::FormataMoeda($plano->getCoUltimoPlanoAssinante()->getNuValor());
            $modulos = [];
            /** @var PlanoModuloEntidade $ModuloEntidade */
            foreach ($plano->getCoPlanoModulo() as $ModuloEntidade) {
                $modulos[] = $ModuloEntidade->getCoModulo()->getCoModulo();
            }
            $res[CO_MODULO] = $modulos;
            $res[CO_PLANO] = $plano->getCoPlano();
            $res[ST_STATUS] = ($plano->getStStatus() == 'A')
                ? 'checked' : '';
        }
        $this->form = PlanoForm::Cadastrar($res);
    }

}
   