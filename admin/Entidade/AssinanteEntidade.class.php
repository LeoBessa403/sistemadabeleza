<?php

/**
 * Assinante.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AssinanteEntidade extends AbstractEntidade
{
    const TABELA = 'TB_ASSINANTE';
    const ENTIDADE = 'AssinanteEntidade';
    const CHAVE = CO_ASSINANTE;

    private $co_assinante;
    private $dt_cadastro;
    private $dt_expiracao;
    private $st_status;
    private $tp_assinante;
    private $st_dados_complementares;
    private $co_empresa;
    private $co_pessoa;
    private $co_plano_assinante_assinatura;
    private $co_assinante_matriz;
    private $co_assinante_filial;
    private $co_facilidade_beneficio;
    private $co_funcionamento;
    private $co_imagem_assinante;
    private $co_dia_especial;
    private $co_config_cliente;
    private $co_config_agendamento;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_ASSINANTE,
            DT_CADASTRO,
            DT_EXPIRACAO,
            ST_STATUS,
            TP_ASSINANTE,
            ST_DADOS_COMPLEMENTARES,
            CO_EMPRESA,
            CO_PESSOA,
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
     * @return int $co_assinante
     */
    public function getCoAssinante()
    {
        return $this->co_assinante;
    }

    /**
     * @param $co_assinante
     * @return mixed
     */
    public function setCoAssinante($co_assinante)
    {
        return $this->co_assinante = $co_assinante;
    }

    /**
     * @return mixed $dt_cadastro
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param $dt_cadastro
     * @return mixed
     */
    public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

    /**
     * @return mixed $dt_expiracao
     */
    public function getDtExpiracao()
    {
        return $this->dt_expiracao;
    }

    /**
     * @param $dt_expiracao
     * @return mixed
     */
    public function setDtExpiracao($dt_expiracao)
    {
        return $this->dt_expiracao = $dt_expiracao;
    }

    /**
     * @return mixed $st_status
     */
    public function getStStatus()
    {
        return $this->st_status;
    }

    /**
     * @param $st_status
     * @return mixed
     */
    public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
    }

    /**
     * @return mixed
     */
    public function getStDadosComplementares()
    {
        return $this->st_dados_complementares;
    }

    /**
     * @param mixed $st_dados_complementares
     */
    public function setStDadosComplementares($st_dados_complementares)
    {
        $this->st_dados_complementares = $st_dados_complementares;
    }

    /**
     * @return mixed
     */
    public function getTpAssinante()
    {
        return $this->tp_assinante;
    }

    /**
     * @param mixed $tp_assinante
     */
    public function setTpAssinante($tp_assinante)
    {
        $this->tp_assinante = $tp_assinante;
    }

    /**
     * @return EmpresaEntidade $co_empresa
     */
    public function getCoEmpresa()
    {
        return $this->co_empresa;
    }

    /**
     * @param $co_empresa
     * @return mixed
     */
    public function setCoEmpresa($co_empresa)
    {
        return $this->co_empresa = $co_empresa;
    }

    /**
     * @return PessoaEntidade $co_pessoa
     */
    public function getCoPessoa()
    {
        return $this->co_pessoa;
    }

    /**
     * @param $co_pessoa
     * @return mixed
     */
    public function setCoPessoa($co_pessoa)
    {
        return $this->co_pessoa = $co_pessoa;
    }

    /**
     * @return PlanoAssinanteAssinaturaEntidade $co_plano_assinante_assinatura
     */
    public function getCoPlanoAssinanteAssinatura()
    {
        return $this->co_plano_assinante_assinatura;
    }

    /**
     * @param $co_plano_assinante_assinatura
     * @return mixed
     */
    public function setCoPlanoAssinanteAssinatura($co_plano_assinante_assinatura)
    {
        return $this->co_plano_assinante_assinatura = $co_plano_assinante_assinatura;
    }

    /**
     * @return array $co_assinante_matriz
     */
    public function getCoAssinanteMatriz()
    {
        return $this->co_assinante_matriz;
    }

    /**
     * @return AssinanteMatrizEntidade $co_assinante_matriz
     */
    public function getCoUnicoAssinanteMatriz()
    {
        if ($this->co_assinante_matriz) {
            return $this->primeiro($this->co_assinante_matriz);
        } else {
            return null;
        }
    }

    /**
     * @return AssinanteMatrizEntidade $co_assinante_matriz
     */
    public function getCoMeuAssinanteMatriz()
    {
        if ($this->co_assinante_filial) {
            /** @var AssinanteMatrizEntidade $matriz */
            $matriz = $this->primeiro($this->co_assinante_filial);
            $co_assinante_matriz = $matriz->getCoAssinanteMatriz()->getCoAssinante();
        } else {
            $co_assinante_matriz = null;
        }
        return $co_assinante_matriz;
    }

    /**
     * @param $co_assinante_matriz
     * @return mixed
     */
    public function setCoAssinanteMatriz($co_assinante_matriz)
    {
        return $this->co_assinante_matriz = $co_assinante_matriz;
    }

    /**
     * @return AssinanteFilialEntidade $co_assinante_filial
     */
    public function getCoAssinanteFilial()
    {
        return $this->co_assinante_filial;
    }

    /**
     * @param $co_assinante_filial
     * @return mixed
     */
    public function setCoAssinanteFilial($co_assinante_filial)
    {
        return $this->co_assinante_filial = $co_assinante_filial;
    }

    /**
     * @return mixed $filiais
     */
    public function getFiliaisMatriz()
    {
        if (!empty($this->getCoUnicoAssinanteMatriz())) {
            return $this->getCoUnicoAssinanteMatriz()->getCoAssinanteFilial();
        } else {
            return null;
        }

    }

    /**
     * @return FacilidadeBeneficioEntidade $co_facilidade_beneficio
     */
    public function getCoFacilidadeBeneficio()
    {
        return $this->co_facilidade_beneficio;
    }

    /**
     * @param $co_facilidade_beneficio
     * @return mixed
     */
    public function setCoFacilidadeBeneficio($co_facilidade_beneficio)
    {
        return $this->co_facilidade_beneficio = $co_facilidade_beneficio;
    }

    /**
     * @return FuncionamentoEntidade $co_funcionamento
     */
    public function getCoFuncionamento()
    {
        return $this->co_funcionamento;
    }

    /**
     * @param $co_funcionamento
     * @return mixed
     */
    public function setCoFuncionamento($co_funcionamento)
    {
        return $this->co_funcionamento = $co_funcionamento;
    }

    /**
     * @return ImagemAssinanteEntidade $co_facilidade_beneficio
     */
    public function getCoImagemAssinante()
    {
        return $this->co_imagem_assinante;
    }

    /**
     * @param $co_imagem_assinante
     * @return mixed
     */
    public function setCoImagemAssinante($co_imagem_assinante)
    {
        return $this->co_imagem_assinante = $co_imagem_assinante;
    }

    /**
     * @return ImagemAssinanteEntidade $co_imagem_assinante
     */
    public function getLogoImagemAssinante()
    {
        if ($this->co_imagem_assinante) {
            return $this->primeiro($this->co_imagem_assinante);
        } else {
            return null;
        }
    }

    /**
     * @return DiaEspecialEntidade $co_dia_especial
     */
    public function getCoDiaEspecial()
    {
        return $this->co_dia_especial;
    }

    /**
     * @param $co_dia_especial
     * @return mixed
     */
    public function setCoDiaEspecial($co_dia_especial)
    {
        return $this->co_dia_especial = $co_dia_especial;
    }

    /**
     * @return ConfigClienteEntidade $co_config_cliente
     */
    public function getCoConfigCliente()
    {
        return $this->co_config_cliente;
    }

    /**
     * @param $co_config_cliente
     * @return mixed
     */
    public function setCoConfigCliente($co_config_cliente)
    {
        return $this->co_config_cliente = $co_config_cliente;
    }

    /**
     * @return ConfigAgendamentoEntidade $co_config_agendamento
     */
    public function getCoConfigAgendamento()
    {
        return $this->co_config_agendamento;
    }

    /**
     * @param $co_config_agendamento
     * @return mixed
     */
    public function setCoConfigAgendamento($co_config_agendamento)
    {
        return $this->co_config_agendamento = $co_config_agendamento;
    }

}