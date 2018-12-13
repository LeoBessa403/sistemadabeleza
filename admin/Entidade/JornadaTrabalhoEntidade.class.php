<?php

/**
 * JornadaTrabalho.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class JornadaTrabalhoEntidade extends AbstractEntidade
{
    const TABELA = 'TB_JORNADA_TRABALHO';
    const ENTIDADE = 'JornadaTrabalhoEntidade';
    const CHAVE = CO_JORNADA_TRABALHO;

    private $co_jornada_trabalho;
    private $nu_dia_semana;
    private $nu_hora_abertura;
    private $nu_hora_fechamento;
    private $co_profissional;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_JORNADA_TRABALHO,
            NU_DIA_SEMANA,
            NU_HORA_ABERTURA,
            NU_HORA_FECHAMENTO,
        ];
    }

    /**
     * @return array $relacionamentos
     */
    public static function getRelacionamentos()
    {
        $relacionamentos = Relacionamentos::getRelacionamentos();
        return $relacionamentos[static::TABELA];
    }


    /**
     * @return int $co_jornada_trabalho
     */
    public function getCoJornadaTrabalho()
    {
        return $this->co_jornada_trabalho;
    }

    /**
     * @param $co_jornada_trabalho
     * @return mixed
     */
    public function setCoJornadaTrabalho($co_jornada_trabalho)
    {
        return $this->co_jornada_trabalho = $co_jornada_trabalho;
    }

    /**
     * @return mixed $nu_dia_semana
     */
    public function getNuDiaSemana()
    {
        return $this->nu_dia_semana;
    }

    /**
     * @param $nu_dia_semana
     * @return mixed
     */
    public function setNuDiaSemana($nu_dia_semana)
    {
        return $this->nu_dia_semana = $nu_dia_semana;
    }

    /**
     * @return mixed $nu_hora_abertura
     */
    public function getNuHoraAbertura()
    {
        return $this->nu_hora_abertura;
    }

    /**
     * @param $nu_hora_abertura
     * @return mixed
     */
    public function setNuHoraAbertura($nu_hora_abertura)
    {
        return $this->nu_hora_abertura = $nu_hora_abertura;
    }

    /**
     * @return mixed $nu_hora_fechamento
     */
    public function getNuHoraFechamento()
    {
        return $this->nu_hora_fechamento;
    }

    /**
     * @param $nu_hora_fechamento
     * @return mixed
     */
    public function setNuHoraFechamento($nu_hora_fechamento)
    {
        return $this->nu_hora_fechamento = $nu_hora_fechamento;
    }

    /**
     * @return ProfissionalEntidade $co_profissional
     */
    public function getCoProfissional()
    {
        return $this->co_profissional;
    }

    /**
     * @param $co_profissional
     * @return mixed
     */
    public function setCoProfissional($co_profissional)
    {
        $this->co_profissional = $co_profissional;
    }

}