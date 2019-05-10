<?php

class Servico extends AbstractController
{
    public $result;
    public $tipoComissao;
    public $noServico;
    public $coServico;
    public $comissao;
    public $form;
    public $jornada;
    public $coCategoriaServico;
    public $profissionais;

    public function ListarCategoriaServico()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);
        $this->result = $this->getCategorias();
        if (empty($this->result)) {
            $categoriaServicoService->salvaCategoriaServicoInicial();
            $this->result = $this->getCategorias();
        }
    }


    public function ListarServico()
    {
        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);
        /** @var Session $session */
        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $session->FinalizaSession(PESQUISA_AVANCADA);
        }
        $Condicoes = [];
        $Condicoes[CO_ASSINANTE] = AssinanteService::getCoAssinanteLogado();
        $this->coCategoriaServico = UrlAmigavel::PegaParametro(CO_CATEGORIA_SERVICO);
        if ($this->coCategoriaServico)
            $Condicoes["ser." .CO_CATEGORIA_SERVICO] = $this->coCategoriaServico;

        if (!empty($_POST)) {
            $Condicoes = array(
                "ser." .CO_CATEGORIA_SERVICO => $_POST[CO_CATEGORIA_SERVICO][0],
                "ser." .ST_STATUS => $_POST[ST_STATUS][0],
                "ser." .ST_ASSISTENTE => $_POST[ST_ASSISTENTE][0],
                "like#ser." . DS_DESCRICAO => trim($_POST[DS_DESCRICAO]),
                "like#ser." . NO_SERVICO => trim($_POST[NO_SERVICO])
            );
            $this->result = $servicoService->PesquisaAvancada($Condicoes);
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
        } else {
            $this->result = $servicoService->PesquisaAvancada($Condicoes);
        }

        /** @var Configuracao $configControl */
        $configControl = new Configuracao();
        $dados = $configControl->getTipoEComissoes(FormaComissaoEnum::SERVICO);
        $this->tipoComissao = $dados['tipoComissao'];
        $this->comissao = $dados['comissao'];
    }

    public function ListarServicoPesquisaAvancada()
    {
        echo ServicoForm::Pesquisar();
    }

    public function getCategorias()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);
        return $categoriaServicoService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
        ]);
    }

    public function CadastroCategoriaServico()
    {
        /** @var CategoriaServicoService $categoriaServicoService */
        $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);

        if (!empty($_POST)):
            $retorno = $categoriaServicoService->salvaCategoriaServico($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Servico/ListarCategoriaServico/');
            }
        endif;

        $coCategoriaServico = UrlAmigavel::PegaParametro(CO_CATEGORIA_SERVICO);
        if ($coCategoriaServico) {
            /** @var CategoriaServicoService $categoriaServicoService */
            $categoriaServicoService = $this->getService(CATEGORIA_SERVICO_SERVICE);
            /** @var CategoriaServicoEntidade $categoriaServico */
            $categoriaServico = $categoriaServicoService->PesquisaUmRegistro($coCategoriaServico);

            $res[ST_STATUS] = ($categoriaServico->getStStatus() == StatusUsuarioEnum::ATIVO)
                ? 'checked' : '';
            $res[NO_CATEGORIA_SERVICO] = $categoriaServico->getNoCategoriaServico();
            $res[CO_CATEGORIA_SERVICO] = $categoriaServico->getCoCategoriaServico();

        } else {
            // Inicia elementos do Form
            $res[ST_STATUS] = 'checked';
        }


        $this->form = ServicoForm::CadastrarCategoria($res);
    }

    public function CadastroServico()
    {
        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);

        if (!empty($_POST)):
            $retorno = $servicoService->salvaServico($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/Servico/ListarServico/');
            }
        endif;

        $coServico = UrlAmigavel::PegaParametro(CO_SERVICO);
        if ($coServico) {
            /** @var ServicoEntidade $servico */
            $servico = $servicoService->PesquisaUmRegistro($coServico);
            $res[ST_STATUS] = ($servico->getStStatus() == StatusUsuarioEnum::ATIVO)
                ? 'checked' : '';
            $res[ST_ASSISTENTE] = ($servico->getStAssistente() == SimNaoEnum::SIM)
                ? 'checked' : '';
            $res[CO_CATEGORIA_SERVICO] = $servico->getCoCategoriaServico()->getCoCategoriaServico();
            $res[NO_SERVICO] = $servico->getNoServico();
            $res[NU_VALOR] = Valida::FormataMoeda($servico->getCoUltimoPrecoServico()->getNuValor());
            $res[NU_DURACAO] = $servico->getNuDuracao();
            $res[DS_DESCRICAO] = $servico->getDsDescricao();
            $res[CO_SERVICO] = $servico->getCoServico();
            $noPasta = "Servico/Assinante-" . AssinanteService::getCoAssinanteLogado() . '/';

            // Carrega a Imagem do Serviço
            $foto = null;
            if (!empty($servico->getCoImagem())) {
                if (file_exists(PASTA_UPLOADS . $servico->getCoImagem()->getDsCaminho())) {
                    $foto = $servico->getCoImagem()->getDsCaminho();
                } elseif (file_exists(PASTA_UPLOADS . $noPasta . $servico->getCoImagem()->getDsCaminho())) {
                    $foto = $noPasta . $servico->getCoImagem()->getDsCaminho();
                }
                $res[CO_IMAGEM] = $servico->getCoImagem()->getCoImagem();
            }
            $res[DS_CAMINHO] = $foto;

        } else {
            // Inicia elementos do Form
            $res[ST_STATUS] = 'checked';
            $res[ST_ASSISTENTE] = '';
        }


        $this->form = ServicoForm::Cadastrar($res);
    }

    public function ComissaoServico()
    {
        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);
        /** @var ConfigComissaoService $configComissaoService */
        $configComissaoService = $this->getService(CONFIG_COMISSAO_SERVICE);
        /** @var PercentualComissaoService $percentualComissaoService */
        $percentualComissaoService = $this->getService(PERCENTUAL_COMISSAO_SERVICE);
        $id = "configComissao";

        if (!empty($_POST[$id])):
            $retorno = $percentualComissaoService->salvaComissao($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarServico/');
            }
        endif;

        $res = [];
        /** @var ConfigComissaoEntidade $configComissao */
        $configComissao = $configComissaoService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);

        if ($configComissao) {
            /** @var HistoricoComissaoEntidade $ultHistConfigCom */
            $ultHistConfigCom = $configComissao->getCoUltimoHistoricoComissao();
            $percAtul = $ultHistConfigCom->getPercentuaisComissao();
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL]
                = $percAtul[TipoComissaoEnum::UNICO_PROFISSIONAL];
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE]
                = $percAtul[TipoComissaoEnum::COM_ASSISTENTE];
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE]
                = $percAtul[TipoComissaoEnum::ASSISTENTE];
        }
        $coServico = UrlAmigavel::PegaParametro(CO_SERVICO);
        if ($coServico) {
            $res[CO_SERVICO] = $coServico;
            /** @var ServicoEntidade $servico */
            $this->servico = $servicoService->PesquisaUmRegistro($coServico);
            if ($this->servico->getCoPercentualComissao()) {
                /** @var PercentualComissaoEntidade $percent */
                foreach ($this->servico->getCoPercentualComissao() as $percent) {
                    $res[NU_TIPO_COMISSAO . $percent->getNuTipoComissao()]
                        = $percent->getNuComissao();
                }
            }
        } else {
            Notificacoes::geraMensagem(
                'Selecione um Serviço para Modificar a comissão do mesmo',
                TiposMensagemEnum::ALERTA
            );
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarServico/');
        }

        $this->form = ServicoForm::ComissaoServico($res);
    }

    public function ComissaoServicoProfissional()
    {
        /** @var ServicoService $servicoService */
        $servicoService = $this->getService(SERVICO_SERVICE);
        /** @var ServicoProfissionalService $servicoProfissionalService */
        $servicoProfissionalService = $this->getService(SERVICO_PROFISSIONAL_SERVICE);
        /** @var ProfissionalService $profissionalService */
        $profissionalService = $this->getService(PROFISSIONAL_SERVICE);
        /** @var ConfigComissaoService $configComissaoService */
        $configComissaoService = $this->getService(CONFIG_COMISSAO_SERVICE);
        $id = "ComissaoServicoProfissional";

        if (!empty($_POST[$id])):
            $retorno = $servicoProfissionalService->salvaComissaoServicoProfissional($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarServico/');
            } else {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/' . UrlAmigavel::$action .
                    Valida::GeraParametro(CO_SERVICO . "/" . $_POST[CO_SERVICO]));
            }
        endif;

        $res = [];
        /** @var ConfigComissaoEntidade $configComissao */
        $configComissao = $configComissaoService->PesquisaUmQuando([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado()
        ]);

        $todosProfissionais = $profissionalService->PesquisaTodos([
            CO_ASSINANTE => AssinanteService::getCoAssinanteLogado(),
            ST_STATUS => StatusUsuarioEnum::ATIVO
        ]);
        $percAtul = [];
        if ($configComissao) {
            /** @var HistoricoComissaoEntidade $ultHistConfigCom */
            $ultHistConfigCom = $configComissao->getCoUltimoHistoricoComissao();
            $percAtul = $ultHistConfigCom->getPercentuaisComissao();
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL]
                = $percAtul[TipoComissaoEnum::UNICO_PROFISSIONAL];
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE]
                = $percAtul[TipoComissaoEnum::COM_ASSISTENTE];
            $res[NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE]
                = $percAtul[TipoComissaoEnum::ASSISTENTE];
        }
        $coServico = UrlAmigavel::PegaParametro(CO_SERVICO);
        $profissionais = [];
        if ($coServico) {
            /** @var ProfissionalEntidade $profissional */
            foreach ($todosProfissionais as $profissional) {
                $coProfissional = $profissional->getCoProfissional();
                /** @var ServicoProfissionalEntidade $servProf */
                $servProf = $servicoProfissionalService->PesquisaUmQuando([
                    CO_SERVICO => $coServico,
                    CO_PROFISSIONAL => $coProfissional
                ]);
                $profissionais[$coProfissional][CO_PROFISSIONAL] = $coProfissional;
                $profissionais[$coProfissional][NO_PESSOA] = $profissional->getCoPessoa()->getNoPessoa();
                if ($servProf) {
                    $profissionais[$coProfissional][NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL]
                        = $servProf->getNuUltimoComissaoPorTipo(TipoComissaoEnum::UNICO_PROFISSIONAL);
                    $profissionais[$coProfissional][NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE]
                        = $servProf->getNuUltimoComissaoPorTipo(TipoComissaoEnum::COM_ASSISTENTE);
                    $profissionais[$coProfissional][NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE]
                        = $servProf->getNuUltimoComissaoPorTipo(TipoComissaoEnum::ASSISTENTE);
                } else {
                    $profissionais[$coProfissional][NU_TIPO_COMISSAO . TipoComissaoEnum::UNICO_PROFISSIONAL]
                        = $percAtul[TipoComissaoEnum::UNICO_PROFISSIONAL];
                    $profissionais[$coProfissional][NU_TIPO_COMISSAO . TipoComissaoEnum::COM_ASSISTENTE]
                        = $percAtul[TipoComissaoEnum::COM_ASSISTENTE];
                    $profissionais[$coProfissional][NU_TIPO_COMISSAO . TipoComissaoEnum::ASSISTENTE]
                        = $percAtul[TipoComissaoEnum::ASSISTENTE];
                }
            }
            $this->profissionais = $profissionais;
            /** @var ServicoEntidade $servico */
            $servico = $servicoService->PesquisaUmRegistro($coServico);
            $this->noServico = $servico->getNoServico();
            $this->coServico = $coServico;
        } else {
            Notificacoes::geraMensagem(
                'Selecione um Serviço para Modificar a comissão dos Profissionais',
                TiposMensagemEnum::ALERTA
            );
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarServico/');
        }
    }

    public static function DesativarServico($coServico)
    {
        /** @var ServicoService $servicoService */
        $servicoService = static::getService(SERVICO_SERVICE);
        return $servicoService->desativarServico($coServico);
    }

    public static function AtivarServico($coServico)
    {
        /** @var ServicoService $servicoService */
        $servicoService = static::getService(SERVICO_SERVICE);
        return $servicoService->ativarServico($coServico);
    }

}