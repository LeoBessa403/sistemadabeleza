<?php

/**
 * PlanoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PlanoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PlanoEntidade::ENTIDADE);
        $this->ObjetoModel = New PlanoModel();
    }

    public function salvaPlano($dados)
    {
        /** @var PlanoModuloService $PlanoModuloService */
        $PlanoModuloService = $this->getService(PLANO_MODULO_SERVICE);
        /** @var PlanoAssinanteService $PlanoAssinanteService */
        $PlanoAssinanteService = $this->getService(PLANO_ASSINANTE_SERVICE);
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $planoValidador = new PlanoValidador();
        /** @var PlanoValidador $validador */
        $validador = $planoValidador->validarPlano($dados);
        if ($validador[SUCESSO]) {
            $plano[NO_PLANO] = trim($dados[NO_PLANO]);
            $plano[NU_MES_ATIVO] = $dados[NU_MES_ATIVO][0];
            $planoAssinante[DS_OBSERVACAO] = trim($dados[DS_OBSERVACAO]);
            $planoAssinante[NU_VALOR] = Valida::FormataMoedaBanco($_POST[NU_VALOR]);
            $planoAssinante[DT_CADASTRO] = Valida::DataHoraAtualBanco();

            if (!empty($_POST[CO_PLANO])):
                $coPlano = $dados[CO_PLANO];
                $this->Salva($plano, $coPlano);
            else:
                $plano[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $coPlano = $this->Salva($plano);
            endif;

            $planoModulo[CO_PLANO] = $coPlano;
            $planoAssinante[CO_PLANO] = $coPlano;
            $ok = $PlanoModuloService->DeletaQuando($planoModulo);
            if ($ok) {
                if (!empty($dados[CO_MODULO])) {
                    foreach ($dados[CO_MODULO] as $modulo) {
                        $planoModulo[CO_MODULO] = $modulo;
                        $PlanoModuloService->Salva($planoModulo);
                    }
                }
            }
            $retorno[SUCESSO] = $PlanoAssinanteService->Salva($planoAssinante);
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

    public static function montaComboMesesAtivos()
    {
        $todosMesAt = [
            1 => 1,
            3 => 3,
            6 => 6,
            12 => 2,
            24 => 24,
        ];
        return $todosMesAt;
    }

}