<?php

/**
 * ServicoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  ServicoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ServicoEntidade::ENTIDADE);
        $this->ObjetoModel = New ServicoModel();
    }

    /**
     * @param $coServico
     * @return bool
     */
    public function ativarServico($coServico)
    {
        return $this->mudarStatusServico($coServico, StatusUsuarioEnum::ATIVO);
    }

    /**
     * @param $coServico
     * @return bool
     */
    public function desativarServico($coServico)
    {
        return $this->mudarStatusServico($coServico, StatusUsuarioEnum::INATIVO);
    }

    /**
     * @param $coServico
     * @param $stStatus
     * @return bool
     */
    private function mudarStatusServico($coServico, $stStatus)
    {
        $retorno =  false;
        $dados = [
            ST_STATUS => $stStatus
        ];
        $coServi = $this->Salva($dados, $coServico);
        if ($coServi) {
            $retorno = true;
        }
        return $retorno;
    }

}