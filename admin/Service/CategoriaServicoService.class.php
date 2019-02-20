<?php

/**
 * CategoriaServicoService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  CategoriaServicoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CategoriaServicoEntidade::ENTIDADE);
        $this->ObjetoModel = New CategoriaServicoModel();
    }

    public function salvaCategoriaServicoInicial()
    {
        $categoriaServico[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $categoriaServico[DT_CADASTRO] = Valida::DataHoraAtualBanco();
        $categoriaServico[ST_STATUS] = StatusAcessoEnum::ATIVO;

        foreach (CategoriaServicoBaseEnum::$descricao as $valor) {
            $categoriaServico[NO_CATEGORIA_SERVICO] = $valor;
            $this->Salva($categoriaServico);
        }
    }


    public function salvaCategoriaServico($result)
    {
        /** @var Session $session */
        $session = new Session();
        /** @var CategoriaServicoValidador $categoriaServicoValidador */
        $categoriaServicoValidador = new CategoriaServicoValidador();
        $validador = $categoriaServicoValidador->validarCategoriaServico($result);
        if ($validador[SUCESSO]) {
            $dados[NO_CATEGORIA_SERVICO] = trim($result[NO_CATEGORIA_SERVICO]);
            $dados[ST_STATUS] = (!empty($result[ST_STATUS])) ? StatusUsuarioEnum::ATIVO : StatusUsuarioEnum::INATIVO;

            if (!empty($result[CO_CATEGORIA_SERVICO])) {
                $retorno[SUCESSO] = $this->Salva($dados, $result[CO_CATEGORIA_SERVICO]);
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $dados[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $retorno[SUCESSO] = $this->Salva($dados);
                $session->setSession(MENSAGEM, CADASTRADO);
            }
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }

        return $retorno;
    }


}