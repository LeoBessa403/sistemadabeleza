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


    public function getArrayDadosContato($cont, array $dados)
    {
        if($cont){
            /** @var ContatoEntidade $contato */
            $contato = $cont;
            $dados[CO_CONTATO] = $contato->getCoContato();
            $dados[NU_TEL1] = Valida::MascaraTel($contato->getNuTel1());
            $dados[NU_TEL2] = Valida::MascaraTel($contato->getNuTel2());
            $dados[NU_TEL3] = Valida::MascaraTel($contato->getNuTel3());
            $dados[DS_EMAIL] = $contato->getDsEmail();
            $dados[DS_SITE] = $contato->getDsSite();
        }else{
            $dados[CO_CONTATO] = '';
            $dados[NU_TEL1] = '';
            $dados[NU_TEL2] = '';
            $dados[NU_TEL3] = '';
            $dados[DS_EMAIL] = '';
            $dados[DS_SITE] = '';
        }

        return $dados;
    }

    public function salvaContatoAssinante($dados)
    {
        /** @var AssinanteService $assinanteService */
        $assinanteService = $this->getService(ASSINANTE_SERVICE);
        /** @var AssinanteEntidade $assinante */
        $assinante = $assinanteService->getAssinanteLogado();
        $contato = $this->getDados($dados, ContatoEntidade::ENTIDADE);
        $retorno[SUCESSO] = $this->Salva($contato, $assinante->getCoPessoa()->getCoContato()->getCoContato());
        return $retorno;
    }

}