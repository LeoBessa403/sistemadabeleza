<?php

/**
 * FormasDePagamentoForm [ FORM ]
 * @copyright (c) 2018, Leo Bessa
 */
class FormasDePagamentoForm
{
    public static function Cadastrar($res = false)
    {
        $id = "FormasDePagamento";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Cadastrar", 6);
        $formulario->setValor($res);

        $todasFormas = TipoPagamentoService::montaComboFormasDePagamento();
        $formulario
            ->setId(CO_TIPO_PAGAMENTO)
            ->setLabel("Formas De Pagamento")
            ->setClasses("multipla")
            ->setInfo("Selecione todas as formas de pagamentos aceitas.")
            ->setType("select")
            ->setOptions($todasFormas)
            ->CriaInpunt();

        return $formulario->finalizaForm('Configuracao/FormasDePagamentoConfiguracao');
    }


}
