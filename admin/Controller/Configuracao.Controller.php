<?php

class Configuracao extends AbstractController
{
    public $result;
    public $feriados;
    public $plano;

    public function ListarDiaEspecialConfiguracao()
    {
        /** @var FeriadoService $feriadoService */
        $feriadoService = $this->getService(FERIADO_SERVICE);
        $this->feriados = $feriadoService->PesquisaTodos();

        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $this->result = $diaEspecialService->PesquisaTodos();
    }

    public function CadastroDiaEspecialConfiguracao()
    {
        /** @var DiaEspecialService $diaEspecialService */
        $diaEspecialService = $this->getService(DIA_ESPECIAL_SERVICE);
        $id = "CadastroDiaEspecial";

        if (!empty($_POST[$id])):
            $retorno = $diaEspecialService->salvaDiaEspecial($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarDiaEspecialConfiguracao/');
            }
        endif;

        $coDiaEspecial = UrlAmigavel::PegaParametro(CO_DIA_ESPECIAL);
        if ($coDiaEspecial) {
            /** @var DiaEspecialEntidade $plano */
            $plano = $diaEspecialService->PesquisaUmRegistro($coDiaEspecial);
//            $res[NO_PLANO] = $plano->getNoPlano();
//            $res[NU_MES_ATIVO] = $plano->getNuMesAtivo();
//            $res[DS_OBSERVACAO] = $plano->getCoUltimoPlanoAssinante()->getDsObservacao();
//            $res[NU_VALOR] = Valida::FormataMoeda($plano->getCoUltimoPlanoAssinante()->getNuValor());
//            $modulos = [];
//            /** @var PlanoModuloEntidade $ModuloEntidade */
//            foreach ($plano->getCoPlanoModulo() as $ModuloEntidade) {
//                $modulos[] = $ModuloEntidade->getCoModulo()->getCoModulo();
//            }
//            $res[CO_MODULO] = $modulos;
//            $res[CO_PLANO] = $plano->getCoPlano();
//            $res[ST_STATUS] = ($plano->getStStatus() == 'A')
//                ? 'checked' : '';
        }
        $this->form = DiaEspecialForm::Cadastrar();
    }

}
   