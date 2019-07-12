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
        $Condicoes['stpro.'.TP_PROFISSIONAL] = 1;
        $Condicoes['stpro2.'.TP_PROFISSIONAL] = 2;
        $tabela = "tb_agenda age
                      INNER JOIN tb_status_agenda stag
                        ON age.co_agenda = stag.co_agenda
                      INNER JOIN tb_status_agenda_servico stser
                        ON stag.co_status_agenda = stser.co_status_agenda
                      INNER JOIN tb_status_agenda_profissional stpro
                        ON stser.co_status_agenda_servico = stpro.co_status_agenda_servico
                      INNER JOIN tb_status_agenda_profissional stpro2
                        ON stser.co_status_agenda_servico = stpro2.co_status_agenda_servico
                      INNER JOIN tb_cliente cli
                        ON stag.co_cliente = cli.co_cliente
                      INNER JOIN tb_pessoa pes
                        ON pes.co_pessoa = cli.co_pessoa
                      INNER JOIN tb_profissional pro
                        ON stpro.co_profissional = pro.co_profissional
                      INNER JOIN tb_profissional pro2
                        ON stpro2.co_profissional = pro2.co_profissional
                      INNER JOIN tb_pessoa pes2
                        ON pes2.co_pessoa = pro.co_pessoa
                      INNER JOIN tb_pessoa pes3
                        ON pes3.co_pessoa = pro2.co_pessoa
                      INNER JOIN tb_servico ser
                        ON ser.co_servico = stser.co_servico";

        $campos = "age.co_agenda, dt_inicio_agenda, dt_fim_agenda, pes.no_pessoa as cliente, 
        pes2.no_pessoa as profissional, pes3.no_pessoa AS assistente, no_servico, stag.st_status";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult();
    }

    public function getAgendaAjax($Condicoes)
    {
        $Condicoes['stpro.'.TP_PROFISSIONAL] = 1;
        $Condicoes['stpro2.'.TP_PROFISSIONAL] = 2;
        $tabela = "tb_agenda age
                      INNER JOIN tb_status_agenda stag
                        ON age.co_agenda = stag.co_agenda
                      INNER JOIN tb_status_agenda_servico stser
                        ON stag.co_status_agenda = stser.co_status_agenda
                      INNER JOIN tb_status_agenda_profissional stpro
                        ON stser.co_status_agenda_servico = stpro.co_status_agenda_servico
                      INNER JOIN tb_status_agenda_profissional stpro2
                        ON stser.co_status_agenda_servico = stpro2.co_status_agenda_servico
                      INNER JOIN tb_cliente cli
                        ON stag.co_cliente = cli.co_cliente
                      INNER JOIN tb_pessoa pes
                        ON pes.co_pessoa = cli.co_pessoa
                      INNER JOIN tb_profissional pro
                        ON stpro.co_profissional = pro.co_profissional
                      INNER JOIN tb_profissional pro2
                        ON stpro2.co_profissional = pro2.co_profissional
                      INNER JOIN tb_pessoa pes2
                        ON pes2.co_pessoa = pro.co_pessoa
                      INNER JOIN tb_pessoa pes3
                        ON pes3.co_pessoa = pro2.co_pessoa
                      INNER JOIN tb_servico ser
                        ON ser.co_servico = stser.co_servico";

        $campos = "DISTINCT age.co_agenda, dt_inicio_agenda, dt_fim_agenda, pes.no_pessoa as cliente, stag.nu_valor,
        pes2.no_pessoa as profissional, pes3.no_pessoa AS assistente, no_servico, stag.st_status, stag.nu_duracao";
        $pesquisa = new Pesquisa();
        $where = $pesquisa->getClausula($Condicoes);
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult()[0];
    }

}