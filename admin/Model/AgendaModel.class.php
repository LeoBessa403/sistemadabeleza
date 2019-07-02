<?php

/**
 * AgendaModel.class [ MODEL ]
 * @copyright (c) 2019, Leo Bessa
 */
class  AgendaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
    }

    public function PesquisaAgendamentos($Condicoes)
    {
        $tabela = AgendaEntidade::TABELA . " age" .
            " inner join " . StatusAgendaEntidade::TABELA . " stag" .
            " on cat." . CategoriaServicoEntidade::CHAVE . " = ser." . CategoriaServicoEntidade::CHAVE .
            " inner join " . PrecoServicoEntidade::TABELA . " pre" .
            " on ser." . ServicoEntidade::CHAVE . " = pre." . ServicoEntidade::CHAVE;



        $campos = FuncionalidadeEntidade::CHAVE;
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar( PerfilFuncionalidadeEntidade::TABELA, $where, null, $campos);
        return $pesquisa->getResult();
    }

}