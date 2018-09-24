<?php

/**
 * DiaEspecialService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  DiaEspecialService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(DiaEspecialEntidade::ENTIDADE);
        $this->ObjetoModel = New DiaEspecialModel();
    }

    public function salvaDiaEspecial($dados)
    {
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $diaEspecialValidador = new DiaEspecialValidador();
        /** @var DiaEspecialValidador $validador */
        $validador = $diaEspecialValidador->validarDiaEspecial($dados);
        if ($validador[SUCESSO]) {
            $diaEspecial[DT_DIA] = Valida::DataDBDate($dados[DT_DIA]);
            $diaEspecial[NU_DIA_SEMANA] = DiasEnum::getValorDescricao(Valida::DataDiaDaSemana($diaEspecial[DT_DIA]));
            $diaEspecial[NU_HORA_ABERTURA] = $dados[NU_HORA_ABERTURA];
            $diaEspecial[NU_HORA_FECHAMENTO] = $dados[NU_HORA_FECHAMENTO];
            $diaEspecial[DS_MOTIVO] = trim($dados[DS_MOTIVO]);
            $diaEspecial[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();

            if (!empty($_POST[CO_DIA_ESPECIAL])):
                $coDiaEspecial = $dados[CO_DIA_ESPECIAL];
                $retorno[SUCESSO] = $this->Salva($diaEspecial, $coDiaEspecial);
                $session->setSession(MENSAGEM, ATUALIZADO);
            else:
                $retorno[SUCESSO] = $this->Salva($diaEspecial);
                $session->setSession(MENSAGEM, CADASTRADO);
            endif;

            if ($retorno[SUCESSO]) {
                $retorno[SUCESSO] = true;
            } else {
                $session->setSession(MENSAGEM, 'Não foi possível realizar a ação');
                $retorno[SUCESSO] = false;
            }
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

}