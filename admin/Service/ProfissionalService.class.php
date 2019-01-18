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
            // Monta os dados para Salvar
            $endereco = $this->getDados($dados, EnderecoEntidade::ENTIDADE);
            $contato = $this->getDados($dados, ContatoEntidade::ENTIDADE);
            $pessoa = $this->getDados($dados, PessoaEntidade::ENTIDADE);
            $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
            $conta = $this->getDados($dados, ContaBancariaEntidade::ENTIDADE);
            $profissional = $this->getDados($dados, ProfissionalEntidade::ENTIDADE);
            $profissional[ST_AGENDA] = Valida::retornoCheckbox($dados, ST_AGENDA);
            $profissional[ST_AGENDA_ONLINE] = Valida::retornoCheckbox($dados, ST_AGENDA_ONLINE);
            $profissional[ST_ASSISTENTE] = Valida::retornoCheckbox($dados, ST_ASSISTENTE);
            $profissional[DT_ADMISSAO] = ($profissional[DT_ADMISSAO])
                ? Valida::DataDBDate($profissional[DT_ADMISSAO]) : null;
            $coProfissional = null;

            if (!empty($dados[CO_PROFISSIONAL])) {
                $coProfissional = $dados[CO_PROFISSIONAL];
                $enderecoService->Salva($endereco, $dados[CO_ENDERECO]);
                $contatoService->Salva($contato, $dados[CO_CONTATO]);
                $pessoaService->Salva($pessoa, $dados[CO_PESSOA]);
                // Verifica a exist�ncia  conta banc�ria
                if (!empty($dados[CO_CONTA_BANCARIA])) {
                    $contaBancariaService->Salva($conta, $dados[CO_CONTA_BANCARIA]);
                } else {
                    $profissional[CO_CONTA_BANCARIA] = $contaBancariaService->Salva($conta);
                }
                // Verifica a exist�ncia de uma imagem de perfil
                if (!empty($dados[CO_IMAGEM])) {
                    $imagemService->salvaImagem($arquivos, $dados[NO_PESSOA], 'usuarios/', $dados[CO_IMAGEM]);
                } else {
                    $profissional[CO_IMAGEM] = $imagemService->salvaImagem($arquivos, $dados[NO_PESSOA], 'usuarios/');
                }

                $profissionalService->Salva($profissional, $coProfissional);
                $session->setSession(MENSAGEM, ATUALIZADO);
            } else {
                $coEndereco = $enderecoService->Salva($endereco);
                if ($coEndereco) {
                    $coContato = $contatoService->Salva($contato);
                    if ($coContato) {
                        $pessoa[CO_CONTATO] = $coContato;
                        $pessoa[CO_ENDERECO] = $coEndereco;
                        $coPessoa = $pessoaService->Salva($pessoa);
                        if ($coPessoa) {
                            $coContaBancaria = $contaBancariaService->Salva($conta);
                            if ($coContaBancaria) {
                                // Dados para o envio de email com a senha do usu�rio
                                $dadosEmail[NO_PESSOA] = $pessoa[NO_PESSOA];
                                $dadosEmail[DS_EMAIL] = $contato[DS_EMAIL];
                                $coUsuario = $usuarioService->salvaUsuarioInicial($coPessoa, $dadosEmail);
                                if ($coUsuario) {
                                    $coImagem = $imagemService->salvaImagem($arquivos, $dados[NO_PESSOA], 'usuarios/');
                                    $profissional[CO_IMAGEM] = $coImagem;
                                    $profissional[CO_PESSOA] = $coPessoa;
                                    $profissional[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
                                    $profissional[CO_CONTA_BANCARIA] = $coContaBancaria;
                                    $profissional[CO_USUARIO] = $coUsuario;
                                    $profissional[ST_STATUS] = StatusAcessoEnum::ATIVO;
                                    $coProfissional = $profissionalService->Salva($profissional);
                                }
                            }
                        }
                    }
                }
                $session->setSession(MENSAGEM, CADASTRADO);
            }
            if ($coProfissional) {
                $coProfissionalCargo = $profissionalCargoService->salvaProfissionalCargo(
                    $dados, $coProfissional
                );
                if ($coProfissionalCargo) {
                    $jornadaTrabalhoService->salvaJornadaTrabalho($dados, $coProfissional);
                }
                $retorno = [SUCESSO => true];
            }
        } else {
            $retorno = $validador;
        }
        if ($retorno[SUCESSO]) {
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $session->setSession(MENSAGEM, $retorno[MSG]);
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }

        return $retorno;
    }

}