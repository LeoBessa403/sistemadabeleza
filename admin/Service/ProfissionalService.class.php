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
        /** @var ContaBancariaService $contaBancariaService */
        $contaBancariaService = $this->getService(CONTA_BANCARIA_SERVICE);
        /** @var UsuarioService $usuarioService */
        $usuarioService = $this->getService(USUARIO_SERVICE);
        /** @var ProfissionalService $profissionalService */
        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);
        /** @var ProfissionalCargoService $profissionalCargoService */
        $profissionalCargoService = $this->getService(PROFISSIONAL_CARGO_SERVICE);
        /** @var JornadaTrabalhoService $jornadaTrabalhoService */
        $jornadaTrabalhoService = $this->getService(JORNADA_TRABALHO_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $PDO->beginTransaction();

        $profissionalValidador = new ProfissionalValidador();
        /** @var ProfissionalValidador $validador */
        $validador = $profissionalValidador->validarProfissional($dados);
        if ($validador[SUCESSO]) {
            $endereco = $this->getDados($dados, EnderecoEntidade::ENTIDADE);
            $coEndereco = $enderecoService->Salva($endereco);
            if ($coEndereco) {
                $contato = $this->getDados($dados, ContatoEntidade::ENTIDADE);
                $coContato = $contatoService->Salva($contato);
                if ($coContato) {
                    $pessoa = $this->getDados($dados, PessoaEntidade::ENTIDADE);
                    $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
                    $pessoa[CO_CONTATO] = $coContato;
                    $pessoa[CO_ENDERECO] = $coEndereco;
                    $coPessoa = $pessoaService->Salva($pessoa);
                    if ($coPessoa) {
                        $conta = $this->getDados($dados, ContaBancariaEntidade::ENTIDADE);
                        $coContaBancaria = $contaBancariaService->Salva($conta);
                        if ($coContaBancaria) {
                            $coUsuario = $usuarioService->salvaUsuarioInicial($coPessoa);
                            if ($coUsuario) {
                                $coImagem = $imagemService->salvaImagem($arquivos, $dados[NO_PESSOA], 'usuarios/');
                                if ($coImagem) {
                                    $profissional = $this->getDados($dados, ProfissionalEntidade::ENTIDADE);
                                    $profissional[ST_AGENDA] = FuncoesSistema::retornoCheckbox($dados, ST_AGENDA);
                                    $profissional[ST_AGENDA_ONLINE] = FuncoesSistema::retornoCheckbox($dados, ST_AGENDA_ONLINE);
                                    $profissional[ST_ASSISTENTE] = FuncoesSistema::retornoCheckbox($dados, ST_ASSISTENTE);
                                    $profissional[DT_ADMISSAO] = Valida::DataDBDate($profissional[DT_ADMISSAO]);
                                    $profissional[CO_IMAGEM] = $coImagem;
                                    $profissional[CO_PESSOA] = $coPessoa;
                                    $profissional[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                                    $profissional[CO_CONTA_BANCARIA] = $coContaBancaria;
                                    $profissional[CO_USUARIO] = $coUsuario;
                                    $coProfissional = $profissionalService->Salva($profissional);
                                    if ($coProfissional) {
                                        $coProfissionalCargo = '';
                                        $profissionalCargo[CO_PROFISSIONAL] = $coProfissional;
                                        foreach ($dados[CO_CARGO] as $cargo) {
                                            $profissionalCargo[CO_CARGO] = $cargo;
                                            $profissionalCargo[ST_STATUS] = StatusUsuarioEnum::ATIVO;
                                            $profissionalCargo[DT_CADASTRO] = Valida::DataAtualBanco();
                                            $coProfissionalCargo = $profissionalCargoService->Salva($profissionalCargo);
                                        }
                                        if ($coProfissionalCargo) {
                                            $retorno = $jornadaTrabalhoService->salvaJornadaTrabalho($dados, $coProfissional);
                                        }
                                    }
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