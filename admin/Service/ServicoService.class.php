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
        $retorno = false;
        $dados = [
            ST_STATUS => $stStatus
        ];
        $coServi = $this->Salva($dados, $coServico);
        if ($coServi) {
            $retorno = true;
        }
        return $retorno;
    }

    public function salvaServico($result, $files)
    {
        /** @var Session $session */
        $session = new Session();
        /** @var ServicoValidador $ServicoValidador */
        $ServicoValidador = new ServicoValidador();
        $validador = $ServicoValidador->validarServico($result, $files);
        if ($validador[SUCESSO]) {
            debug($result);
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
            Notificacoes::geraMensagem($validador[MSG], TiposMensagemEnum::ALERTA);
            $retorno = $validador;
        }

        return $retorno;
    }

}