<?php

/**
 * ProfissionalService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  ProfissionalService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(ProfissionalEntidade::ENTIDADE);
        $this->ObjetoModel = New ProfissionalModel();
    }


    /**
     * @param $dados
     * @param $arquivos
     * @return array|AssinanteValidador
     */
    public function salvaProfisssional($dados, $arquivos)
    {
        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);
        /** @var EmpresaService $empresaService */
        $empresaService = $this->getService(EMPRESA_SERVICE);
        /** @var FacilidadeBeneficioService $facilidadeBeneficioService */
        $facilidadeBeneficioService = $this->getService(FACILIDADE_BENEFICIO_SERVICE);
        /** @var FuncionamentoService $funcionamentoService */
        $funcionamentoService = $this->getService(FUNCIONAMENTO_SERVICE);
        /** @var ImagemAssinanteService $imagemAssinanteService */
        $imagemAssinanteService = $this->getService(IMAGEM_ASSINANTE_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();

        $PDO->beginTransaction();

        $profissionalValidador = new ProfissionalValidador();
        /** @var ProfissionalValidador $validador */
        $validador = $profissionalValidador->validarProfissional($dados);
        if ($validador[SUCESSO]) {
            $endereco = $this->getDados($dados, EnderecoEntidade::ENTIDADE);
            $endereco[SG_UF] = $dados[SG_UF][0];
            $coEndereco = $enderecoService->Salva($endereco);
            if ($coEndereco) {
                $contato = $this->getDados($dados, ContatoEntidade::ENTIDADE);
                $coContato = $contatoService->Salva($contato);
                if ($coContato) {
                    $pessoa = $this->getDados($dados, PessoaEntidade::ENTIDADE);
                    $pessoa[ST_SEXO] = $dados[ST_SEXO][0];
                    $pessoa[CO_CONTATO] = $coContato;
                    $pessoa[CO_ENDERECO] = $coEndereco;
                    $coPessoa = $pessoaService->Salva($pessoa);
                    debug($dados);
                    if ($coPessoa) {
                        $retorno = $empresaService->salvaEmpressaAssinante($dados);
                        if ($retorno[SUCESSO]) {
                            $retorno = $facilidadeBeneficioService->salvaFacilidadesAssinante($dados);
                            if ($retorno[SUCESSO]) {
                                $retorno = $funcionamentoService->salvafuncionamentoAssinante($dados);
                                if ($retorno[SUCESSO]) {
                                    $retorno = $imagemAssinanteService->salvaImagemAssinante(
                                        $arquivos, $dados[NO_FANTASIA], $dados['imagem_logo']
                                    );
                                }
                            }
                        }
                    }
                }
            }
        } else {
            $retorno = $validador;
        }
        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $session->setSession(MENSAGEM, ATUALIZADO);
            $PDO->commit();
        } else {
            $session->setSession(MENSAGEM, $retorno[MSG]);
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

}