<?php

/**
 * BancoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  BancoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(BancoEntidade::ENTIDADE);
        $this->ObjetoModel = New BancoModel();
    }

    public static function montaComboBancos()
    {
        /** @var BancoService $bancoService */
        $bancoService = new BancoService();
        $bancos = $bancoService->PesquisaTodos();
        /** @var BancoEntidade $banco */
        foreach ($bancos as $banco) {
            $comboBancos[$banco->getCoBanco()] = $banco->getNoBanco();
        }
        $comboBancos[""] = Mensagens::MSG_SEM_ITEM_SELECIONADO;
        $comboBancos = array_reverse($comboBancos);
        return $comboBancos;
    }
}