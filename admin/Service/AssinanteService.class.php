<?php

/**
 * AssinanteService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AssinanteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AssinanteEntidade::ENTIDADE);
        $this->ObjetoModel = New AssinanteModel();
    }

    public function salvaAssinante($dados)
    {
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);
        /** @var EmpresaService $empresaService */
        $empresaService = $this->getService(EMPRESA_SERVICE);
        /** @var AssinanteMatrizService $assinanteMatrizService */
        $assinanteMatrizService = $this->getService(ASSINANTE_MATRIZ_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $assinanteValidador = new AssinanteValidador();
        /** @var AssinanteValidador $validador */
        $validador = $assinanteValidador->validarAssinante($dados);
        if ($validador[SUCESSO]) {
            $contato[DS_EMAIL] = trim($dados[DS_EMAIL]);
            $contato[NU_TEL1] = Valida::RetiraMascara($dados[NU_TEL1]);
            $pessoa[NO_PESSOA] = trim($dados[NO_PESSOA]);
            $empresa[NO_FANTASIA] = trim($dados[NO_FANTASIA]);

            $PDO->beginTransaction();
            if (!empty($_POST[CO_ASSINANTE_MATRIZ])):
                $assinante[TP_ASSINANTE] = AssinanteEnum::FILIAL;
            else:
                $assinante[TP_ASSINANTE] = AssinanteEnum::MATRIZ;
            endif;

            if (!empty($_POST[CO_ASSINANTE])):
                /** @var AssinanteService $assinanteService */
                $assinanteService = $this->getService(ASSINANTE_SERVICE);
                /** @var AssinanteEntidade $assinanteEdic */
                $assinanteEdic = $assinanteService->PesquisaUmRegistro($_POST[CO_ASSINANTE]);
                $contatoService->Salva($contato, $assinanteEdic->getCoPessoa()->getCoContato()->getCoContato());
                $empresaService->Salva($empresa, $assinanteEdic->getCoEmpresa()->getNoFantasia());
                $pessoaService->Salva($pessoa, $assinanteEdic->getCoPessoa()->getCoPessoa());
                $this->Salva($assinante, $assinanteEdic->getCoAssinante());
                $retorno[SUCESSO] = $assinanteEdic->getCoAssinante();
                $session->setSession(ATUALIZADO, "OK");
            else:
                $pessoa[CO_CONTATO] = $contatoService->Salva($contato);
                $pessoa[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $assinante[CO_PESSOA] = $pessoaService->Salva($pessoa);
                $empresa[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $assinante[CO_EMPRESA] = $empresaService->Salva($empresa);
                $assinante[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $assinante[DT_EXPIRACAO] = Valida::DataDBDate(Valida::CalculaData(date('d/m/Y'),
                    ConfiguracoesEnum::DIAS_EXPERIMENTAR, "+"));
                $retorno[SUCESSO] = $this->Salva($assinante);
                $session->setSession(CADASTRADO, "OK");
            endif;
            $assinanteMatrizService->salvaAssinanteMatriz($dados, $retorno[SUCESSO]);
            if ($retorno[SUCESSO]) {
                $session->setSession(MENSAGEM, Mensagens::OK_SALVO);
                $retorno[SUCESSO] = true;
                $PDO->commit();
            } else {
                $session->setSession(MENSAGEM, 'Não foi possível cadastrar o Produto');
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            }
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }

        return $retorno;
    }

    public static function montaComboMatriz($coAssinante)
    {
        $dados = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        /** @var AssinanteService $assinanteService */
        $assinanteService = new AssinanteService();
        $assinantes = $assinanteService->PesquisaTodos([
            TP_ASSINANTE => AssinanteEnum::MATRIZ,
            '<>#' . CO_ASSINANTE => $coAssinante,
        ]);
        /** @var AssinanteEntidade $assinante */
        foreach ($assinantes as $assinante) {
            $dados[$assinante->getCoAssinante()] = $assinante->getCoEmpresa()->getNoFantasia();
        }
        return $dados;
    }

}