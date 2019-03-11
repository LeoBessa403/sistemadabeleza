<?php

class Perfil extends AbstractController
{
    public $result;

    function ListarPerfil()
    {
        if(AssinanteService::getCoAssinanteLogado()){
            /** @var PerfilAssinanteService $perfilAssinanteService */
            $perfilAssinanteService = $this->getService(PERFIL_ASSINANTE_SERVICE);
            $this->result = $perfilAssinanteService->PesquisaTodos();
        }else{
            /** @var PerfilService $perfilService */
            $perfilService = $this->getService(PERFIL_SERVICE);
            $this->result = $perfilService->PesquisaTodos();
        }
    }

    function CadastroPerfil()
    {
        /** @var PerfilService $perfilService */
        $perfilService = $this->getService(PERFIL_SERVICE);
        /** @var PerfilAssinanteService $perfilAssinanteService */
        $perfilAssinanteService = $this->getService(PERFIL_ASSINANTE_SERVICE);

        $id = "cadastroPerfil";

        if (!empty($_POST[$id])):
            if(AssinanteService::getCoAssinanteLogado()){
                $retorno = $perfilAssinanteService->salvaPerfilAssinante($_POST);
            }else{
                $retorno = $perfilService->salvaPerfil($_POST);
            }
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarPerfil/');
            }
        endif;

        $coPerfil = UrlAmigavel::PegaParametro("per");
        $res = array();
        if ($coPerfil):
            /** @var PerfilEntidade $perfil */
            $perfil = $perfilService->PesquisaUmRegistro($coPerfil);
            $res[NO_PERFIL] = $perfil->getNoPerfil();
            $res[CO_PERFIL] = $perfil->getCoPerfil();
            $perfisFunc = [];
            if(!empty($perfil->getCoPerfilFuncionalidade())){
                /** @var PerfilFuncionalidadeEntidade $perfilFunc */
                foreach ($perfil->getCoPerfilFuncionalidade() as $perfilFunc){
                    $perfisFunc[] = $perfilFunc->getCoFuncionalidade()->getCoFuncionalidade();
                }
            }
            $res[CO_FUNCIONALIDADE] = $perfisFunc;
        endif;

        $this->form = PerfilForm::Cadastrar($res);

    }

}
   