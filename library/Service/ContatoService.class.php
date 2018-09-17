<?php

/**
 * ContatoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  ContatoService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(ContatoEntidade::ENTIDADE);
    }


    public function getArrayDadosContato(ContatoEntidade $contato, array $dados)
    {
        $dados[CO_CONTATO] = $contato->getCoContato();
        $dados[NU_TEL1] = Valida::MascaraTel($contato->getNuTel1());
        $dados[NU_TEL2] = Valida::MascaraTel($contato->getNuTel2());
        $dados[NU_TEL3] = Valida::MascaraTel($contato->getNuTel3());
        $dados[DS_EMAIL] = $contato->getDsEmail();

        return $dados;
    }

    public function salvaContatoAssinante($dados)
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $contatoValidador = new ContatoValidador();
        /** @var ContatoValidador $validador */
        $validador = $contatoValidador->validarContato($dados);
        if ($validador[SUCESSO]) {
            $contato = $this->getDados($dados, ContatoEntidade::ENTIDADE);
            debug($contato);
            $this->Salva($contato, $assinante->getCoPessoa()->getCoContato());
            $retorno[SUCESSO] = true;
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

}