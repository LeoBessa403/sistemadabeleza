<?php

/**
 * FormAssistente.class [ HELPER ]
 * Classe responável por gerar formulários Assistentes!
 *
 * @copyright (c) 2014, Leo Bessa
 */
class FormAssistente
{
    private static $classes;
    private static $label;
    private static $place;
    private static $info;
    private static $icon;
    private static $lado;
    private static $type;
    private static $id;
    private static $values;
    private static $valor;
    private static $options;
    private static $label_options;
    private static $style;
    private static $tamanho;
    private static $action;
    public static $idForm;
    public static $form;
    public static $titulo;
    public static $colEsquerda;
    public static $colDireita;
    public static $abas;
    public static $tituloAba;

    /**
     * <b>Form da Pesquisa Avançada:</b> ionicia o formulário e suas configurações
     * @param STRING $idform : atribui o ID para o Formulário
     * @param STRING $action : Ação a realizar a pesquisa e carregar a GRID
     * @param STRING $titulo : Título da tela
     */
    function __construct($idform, $titulo, $action = null)
    {
        self::$idForm = $idform;
        self::$style = "";
        self::$type = "text";
        self::$options = array();
        self::$label_options = array();
        self::$form = "";
        self::$tituloAba = array();
        self::$abas = '';
        self::$tamanho = "";
        self::$titulo = $titulo;
        self::$action = ($action) ? $action : HOME . ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action;
    }

    /**
     * <b>setClasses:</b> Atribui as classes para os campos.
     * @param STRING $classes : Essas classes podem ser utilizadas par formação de CSS,
     * para atribuir a eventos de JQUERY, e calsses de validações. EX: (cpf ob moeda).
     * @return $this
     */
    public function setClasses($classes)
    {
        self::$classes = $classes;
        return $this;
    }

    /**
     * <b>setLabel:</b> Atribui o label a ser apresentado para todos os tipos de campo.
     * @param STRING $label .
     * @return $this
     */
    public function setLabel($label)
    {
        self::$label = $label;
        return $this;
    }

    /**
     * <b>setValues:</b> Atribui o valor para os campos
     * @param STRING $values . pode ser utilizados para todos os inputs e textearea.
     * @return $this
     */
    public function setValues($values)
    {
        self::$values = $values;
        return $this;
    }

    /**
     * <b>setValues:</b> Atribui o valor para os campos
     * @param STRING $valor . pode ser utilizados para todos os inputs e textearea.
     * @return $this
     */
    public function setValor($valor)
    {
        self::$valor = $valor;
        return $this;
    }

    /**
     * <b>setTamanhoInput:</b> Atribui o tamanho maximo para o input
     * @param STRING $tamanho . pode ser utilizados para todos os inputs e textearea.
     * @return $this
     */
    public function setTamanhoInput($tamanho)
    {
        self::$tamanho = $tamanho;
        return $this;
    }

    /**
     * <b>setType:</b> Atribui o tipo do Input, Valor padrão (TEXT)
     * @param STRING $type : password, file, select, textarea, radio, checkbox, hidden e o text.
     * @return $this
     */
    public function setType($type)
    {
        self::$type = $type;
        return $this;
    }

    /**
     * <b>setPlace:</b> Atribui o tipo do Input, Valor padrão (TEXT)
     * @param STRING $place : password, file, select, textarea, radio, checkbox, hidden e o text.
     * @return $this
     */
    public function setPlace($place)
    {
        self::$place = $place;
        return $this;
    }

    /**
     * <b>setLimite:</b> Da um Limite máximo de itens para Inputs Multiplos
     * @param STRING setLimite: Limite de Número para Inputs Multiplos.
     * @return $this
     */
    public function setLimite($limite)
    {
        self::$place = (int)$limite;
        return $this;
    }

    /**
     * <b>setInfo:</b> Atribui o tipo do Input, Valor padrão (TEXT)
     * @param STRING $info : password, file, select, textarea, radio, checkbox, hidden e o text.
     * @return $this
     */
    public function setInfo($info)
    {
        self::$info = $info;
        return $this;
    }

    /**
     * <b>setIcon:</b> Atribui o tipo do Input, Valor padrão (TEXT)
     * @param STRING $icon : password, file, select, textarea, radio, checkbox, hidden e o text.
     * @param STRING $lado : password, file, select, textarea, radio, checkbox, hidden e o text.
     * @return $this
     */
    public function setIcon($icon, $lado = "esq")
    {
        self::$icon = $icon;
        self::$lado = $lado;
        return $this;
    }

    /**
     * <b>setId:</b> Atribui o ID e o NAME do input
     * @param STRING $id .
     * @return $this
     */
    public function setId($id)
    {
        self::$id = $id;
        return $this;
    }

    /**
     * <b>setStylo:</b> Atribui os Stylo (CSS) para o input
     * @param $stylo $stylo. define propriedade de CSS para stylo (Propriedade: Atributo)
     * Ex.: array ('border' => '1px solid red', 'color' => 'black')
     * @return $this
     */
    public function setStylo(array $stylo)
    {
        if (!empty($stylo)):
            foreach ($stylo as $key => $value) {
                self::$style .= "$key: $value; ";
            }
        endif;
        return $this;
    }

    /**
     * <b>setId:</b> Pega no banco de dados os registros para o autocomplete.
     * @param STRING $tabela : nome da tabela a ser consultada.
     * @param STRING $campo : nome do campo a ser consultado.
     * @param STRING $order : Ordenação.
     * @return $this script: gera o script para o autocomplete
     */
    public function setAutocomplete($tabela, $campo, $id, $order = 'ASC')
    {
        $dados = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        $autocomplete = new Pesquisa();
        $autocomplete->Pesquisar($tabela, "ORDER BY $campo $order", NULL, $id . ',' . $campo);
        if ($autocomplete->getResult()) {
            foreach ($autocomplete->getResult() as $res) {
                $dados[$res[$id]] = $res[$campo];
            }
            self::$options = $dados;
        }
        return $this;
    }

    /**
     * <b>setOptions:</b> Atribui os valores das options a montar um select
     * @param $options $options : O indece do array se torna o value da option e o valor do array se torna o label a ser apresentado..
     * @return $this
     */
    public function setOptions($options)
    {
        self::$options = (array)$options;
        return $this;
    }

    /**
     * <b>setLabelCheckRadio:</b> Atribui os valores dos label para checkbox e radiobuttom.
     * @param $label_options $label_options : Cada indice do array se torna uma opção dos  checkbox ou radiobuttom
     * @return $this
     */
    public function setLabelCheckRadio($label_options)
    {
        self::$label_options = (array)$label_options;
        return $this;
    }

    private function verificaObrigatoriedade()
    {
        if (self::$classes != ""):
            $ob = explode(" ", self::$classes);
            if (in_array("ob", $ob)):
                $obrigatoriedade = ' <span class="symbol required"></span>';
            else:
                $obrigatoriedade = "";
            endif;
        else:
            $obrigatoriedade = "";
        endif;

        return $obrigatoriedade;
    }

    private function verificaInline()
    {
        $inline = array();
        if (self::$classes != ""):
            $ob = explode(" ", self::$classes);
            if (in_array("inline", $ob)):
                $inline['inicio'] = '<label class="' . self::$type . '-inline">';
                $inline['fim'] = '</label>';
                unset($ob['inline']);
                self::$classes = implode(" ", $ob);
            else:
                $inline['inicio'] = '<div class="' . self::$type . '">'
                    . '<label>';
                $inline['fim'] = '</label>'
                    . '</div>';
            endif;
        else:
            $inline['inicio'] = '<div class="' . self::$type . '">'
                . '<label>';
            $inline['fim'] = '</label>'
                . '</div>';
        endif;

        return $inline;
    }

    private function verificaMultiplo()
    {
        if (self::$classes != ""):
            $ob = explode(" ", self::$classes);
            if (in_array("multipla", $ob)):
                $multiplo = "multiple='multiple'";
                unset($ob['multiplo']);
                self::$classes = implode(" ", $ob);
            else:
                $multiplo = "";
            endif;
        else:
            $multiplo = "";
        endif;

        return $multiplo;
    }


    private function verificaChecked()
    {
        if (self::$classes != ""):
            $ob = explode(" ", self::$classes);
            if (in_array("checked", $ob)):
                $checked = 'checked="checked"';
                unset($ob['checked']);
                self::$classes = implode(" ", $ob);
            else:
                $checked = "";
            endif;
        else:
            $checked = "";
        endif;

        return $checked;
    }

    /**
     * <b>CriaInpunt:</b> Cria os inputs do formulário
     * @return STRING com o campo criado.
     */
    public function CriaInpunt()
    {
        // VALIDA CAMPOS OCUILTOS
        if (self::$type != "hidden"):
            // VERIFICA SE TEM OBRIGATORIEDADE O CAMPO.
            $obrigatoriedade = $this->verificaObrigatoriedade();
            // INICIA O GRUPO DO INPUT
            self::$abas .= '
                    <div id="form-group-' . self::$id . '" class="form-group">'
                . '<label for="' . self::$id . '" class="col-sm-' . self::$colEsquerda . ' control-label">'
                . ' ' . self::$label . $obrigatoriedade . ' '
                . '</label>
                <div class="col-sm-' . self::$colDireita . '">';
            // VERIFICA SE TEM ÍCONE
            if (self::$icon != ""):
                self::$abas .= '<div class="input-group ' . self::$id . '">';
                // VERIFICA O LADO DO ÍCONE
                if (self::$lado == "esq"):
                    self::$abas .= '<span class="input-group-addon" style="height: 34px;">'
                        . '<i class="' . self::$icon . '"></i></span>';
                endif;
            endif;
            //VERIFICA SE TEM PLACEHOLDER
            if (self::$place != ""):
                self::$place = ' placeholder="' . self::$place . '"';
            endif;

            //CAMPO TIPO SELECT
            if (self::$type == "select"):
                $mutiplo = $this->verificaMultiplo();
                self::$abas .= "<select " . $mutiplo . self::$place . " id='" . self::$id . "' name='" . self::$id . "[]' class='form-control search-select " . self::$classes . "'>";
                foreach (self::$options as $key => $values):
                    $checked = "";
                    if (!empty(self::$valor[self::$id])):
                        if ($mutiplo):
                            if (in_array($key, self::$valor[self::$id])):
                                $checked = 'selected';
                            endif;
                        else:
                            if ($key == self::$valor[self::$id]):
                                $checked = 'selected';
                            endif;
                        endif;
                    endif;
                    self::$abas .= '<option value="' . $key . '" ' . $checked . '>' . $values . '</option>';
                endforeach;
                self::$abas .= "</select>";

            //CAMPO TIPO TEXTAREA
            elseif (self::$type == "textarea"):
                $valor = '';
                if (is_array(self::$valor) && !empty(self::$valor)):
                    if (!empty(self::$valor[self::$id])):
                        $valor = self::$valor[self::$id];
                    endif;
                else:
                    if (!empty(self::$valor)):
                        $valor = self::$valor;
                        self::$valor = "";
                    endif;
                endif;
                self::$abas .= "<textarea id='" . self::$id . "' name='" . self::$id . "'" . self::$place . " style='resize: none;' class='form-control " . self::$classes . "' >" . $valor . "</textarea>";

            //CAMPO TIPO FILE (ARQUIVO)
            elseif (self::$type == "file"):
                $mutiplo = $this->verificaMultiplo();
                self::$abas .= '<div class="fileupload fileupload-new" data-provides="fileupload" style="margin-bottom: 0px;">
                                    <div class="input-group">
                                            <div class="form-control uneditable-input">
                                                    <i class="fa fa-file fileupload-exists"></i>
                                                    <span class="fileupload-preview"></span>
                                            </div>
                                            <div class="input-group-btn">
                                                    <div class="btn btn-dark-grey btn-file">
                                                            <span class="fileupload-new"><i class="fa fa-folder-open-o"></i> Abrir Arquivo</span>
                                                            <span class="fileupload-exists"><i class="fa fa-folder-open-o"></i> Trocar</span>
                                                            <input ' . $mutiplo . ' type="file" class="file-input ' . self::$classes . '" ' . self::$place . ' id="' . self::$id . '" name="' . self::$id . '[]" />
                                                    </div>
                                                    <a href="#" class="btn btn-bricky fileupload-exists" data-dismiss="fileupload">
                                                            <i class="fa fa-trash-o"></i> Remover
                                                    </a>
                                            </div>
                                    </div>
                            </div>';

            //CAMPO TIPO SIMGLE FILE (SOMENTE PRA UM ARQUIVO)
            elseif (self::$type == "singlefile"):
                self::$abas .= '<div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="width: 150px; height: 150px;">';
                if (isset(self::$valor[self::$id])) {
                    self::$abas .= Valida::getMiniatura(self::$valor[self::$id], "Pre Carregamento", 150, 150);
                } else {
                    self::$abas .= '<img src="' . TIMTHUMB . '?src=' . SEM_FOTO . '&w=150&h=150" alt="Pre Carregamento" title="Pre Carregamento"  />';
                }
                self::$abas .= '</div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 150px; max-height: 150px; line-height: 20px;"></div>
                                            <div class="user-edit-image-buttons">
                                                    <span class="btn btn-dark-grey btn-file"><span class="fileupload-new"><i class="fa fa-folder-open-o"></i> Abrir Arquivo</span>
                                                    <span class="fileupload-exists"><i class="fa fa-folder-open-o"></i> Trocar</span>
                                                            <input type="file" class="file-input ' . self::$classes . '" id="' . self::$id . '" name="' . self::$id . '" />
                                                    </span>
                                                    <a href="#" class="btn fileupload-exists btn-bricky" data-dismiss="fileupload">
                                                            <i class="fa fa-trash-o"></i> Remover
                                                    </a>
                                            </div>
                                    </div>';

            // CAMPO TIPO RADIO OU CHECKBOX
            elseif (self::$type == "radio" || self::$type == "checkbox"):

                self::$abas .= "</label>";

                if (self::$type == "checkbox" && !empty(self::$options)):
                    $cor = array("branco" => "default", "azul" => "primary", "verde" => "success", "vermelho" => "danger", "amarelo" => "warning");
                    $verifcaChecked = $this->verificaChecked();
                    self::$abas .= '<div id="change-color-switch" class="make-switch" data-on-label="' . self::$options[0] . '" data-off-label="' . self::$options[1] . '" data-on="' . $cor[self::$options[2]] . '" data-off="' . $cor[self::$options[3]] . '">
                                            <input type="checkbox" ' . $verifcaChecked . ' id="' . self::$id . '" name="' . self::$id . '"  class="' . self::$classes . '"/>
                                    </div>';
                else:
                    foreach (self::$label_options as $key => $op):
                        $valor = "";
                        if (is_array(self::$valor) && !empty(self::$valor)):
                            if (!empty(self::$valor[self::$id])):
                                $valor = self::$valor[self::$id];
                            endif;
                        else:
                            if (!empty(self::$valor)):
                                $valor = self::$valor;
                                self::$valor = "";
                            endif;
                        endif;

                        $verifcaInputs = $this->verificaInline();

                        self::$abas .= $verifcaInputs['inicio'];
                        if ($valor == $key):
                            $verifcaChecked = " checked='checked'";
                        else:
                            $verifcaChecked = "";
                        endif;
                        self::$abas .= " <input id='" . self::$id . "'" . $verifcaChecked . " name='" . self::$id . "' value='" . $key . "'  class='flat-black " . self::$classes . "' type='" . self::$type . "' />"
                            . $op;
                        self::$abas .= $verifcaInputs['fim'];
                    endforeach;

                endif;
            else:
                $valor = '';
                if (is_array(self::$valor) && !empty(self::$valor)):
                    if (!empty(self::$valor[self::$id])):
                        $valor = self::$valor[self::$id];
                    endif;
                else:
                    if (!empty(self::$valor)):
                        $valor = self::$valor;
                        self::$valor = "";
                    endif;
                endif;
                //CAMPO TIPO TEXT
                self::$abas .= '<input type="' . self::$type . '" style="' . self::$style . '"' . self::$place . ' class="form-control ' . self::$classes . '" id="' . self::$id . '" name="' . self::$id . '" value="' . $valor . '"/>';
            endif;

            // VERIFICA SE TEM ÍCONE
            if (self::$icon != ""):
                // VERIFICA SE O ÍCONE É DO LADO DIREITO
                if (self::$lado == "dir"):
                    self::$abas .= '<span class="input-group-addon">'
                        . '<i class="' . self::$icon . '"></i></span>';
                endif;

                // FECHA DIV DO ÍCONE
                self::$abas .= '</div>';
            endif;

            // VERIFICA SE TEM INFORMAÇÃO
            if (self::$info != ""):
                self::$abas .= '<span class="help-block" id="' . self::$id . '-info"><i class="fa fa-info-circle"></i> ' . self::$info . '</span>';
            else:
                self::$abas .= '<span class="help-block" id="' . self::$id . '-info">.</span>';
            endif;

            // FECHA O GRUPO DO INPUT
            self::$abas .= '</div>
                       </div>';
        else:

            // CAMPO TIPO HIDDEN
            self::$abas .= '<input id="' . self::$id . '" name="' . self::$id . '" value="' . self::$values . '" type="hidden" />';
        endif;

        // ZERA TODOS OS ATRIBUTOS
        self::$type = "text";
        self::$values = "";
        self::$classes = "";
        self::$id = "";
        self::$label = "";
        self::$style = "";
        self::$place = "";
        self::$info = "";
        self::$icon = "";
        self::$tamanho = "";
        self::$label_options = array();
        self::$options = array();
    }

    /**
     * <b>Cria a Aba :</b> Aba do formulário de assistente
     * @param $titulo : título da Aba
     * @param $subTitulo : sub Título da Aba
     * @param $tamanhoForm : Tamanho da grid do formulário
     * @param $primeiraColuna : Primeira coluna da aba a da esquerda
     * @param $segundaColuna : Segunda coluna da aba a da direita
     * @return string Abas.
     */
    public function criaAba($titulo, $subTitulo, $tamanhoForm = 6, $primeiraColuna = 3, $segundaColuna = 9)
    {
        self::$colEsquerda = $primeiraColuna;
        self::$colDireita = $segundaColuna;
        $nuAba = count(self::$tituloAba) + 1;
        self::$abas .= '
                            <div id="step-' . $nuAba . '">
                                    <h2 class="StepTitle">' . $titulo . '
                                        <small>' . $subTitulo . '</small>
                                    </h2>
                                    <div class="col-sm-' . $tamanhoForm . '">
                                        <div class="form-group">';

        self::$tituloAba[$nuAba]['titulo'] = $titulo;
        self::$tituloAba[$nuAba]['subTitulo'] = $subTitulo;
        return self::$abas;
    }

    /**
     * <b>Finaliza a Aba :</b> Aba do formulário de assistente
     * @param $ultima : Indica se é a ultima aba
     * @param $gridAssistente : Se a Aba sera de uma Grid Assistente
     * @return string Abas.
     */
    public function finalizaAba($ultima = null, $gridAssistente = null)
    {
        if($gridAssistente){
            self::$abas .= $gridAssistente;
            self::$abas .= '</div>';
        }
        self::$abas .= '</div>
                        <div class="form-group">';
        // Caso ja tenha aba cria o botão de voltar
        if ($ultima) {
            self::$abas .= '<div class="col-sm-2 pull-right">
                                <button type="submit" class="btn btn-success btn-block">
                                    Salvar <i class="fa fa-arrow-circle-right"></i>
                                </button>
                            </div>';
        } else {
            self::$abas .= '<div class="col-sm-2 pull-right">
                                <button id="1" class="btn btn-primary next-step btn-block">
                                    Próximo <i class="fa fa-arrow-circle-right"></i>
                                </button>
                            </div>';
        }
        if (count(self::$tituloAba) - 1) {
            self::$abas .= '<div class="col-sm-2 pull-right">
                                <button class="btn btn-light-grey back-step btn-block">
                                    <i class="fa fa-circle-arrow-left"></i> Voltar
                                </button>
                            </div>';
        }
        self::$abas .= '</div>
                    </div>
                </div>';

        return self::$abas;
    }

    /**
     * <b>finalizaForm:</b> Fecha o formulário
     * @return STRING com o fechamento do FORM.
     */
    public function finalizaForm()
    {
        self::$form .= '<div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        ' . self::$titulo . '
                    </div>
                    <div class="panel-body">
                        <form action="' . self::$action . '"
                              role="form" class="smart-wizard form-horizontal formulario"
                              method="post" enctype="multipart/form-data"
                              id="' . self::$idForm . '" name="' . self::$idForm . '">
                            <div id="wizard" class="swMain">
                                <ul>';

        foreach (self::$tituloAba as $nuAba => $aba) {
            self::$form .= '
                            <li>
                                <a href="#step-' . $nuAba . '" class="selected">
                                    <div class="stepNumber">' . $nuAba . '</div>
                                    <span class="stepDesc"> ' . $aba['titulo'] . '<br/>
                                        <small>' . $aba['subTitulo'] . '</small>
                                    </span>
                                </a>
                            </li>';
        }

        self::$form .= '</ul>
                        <div class="progress progress-striped active progress-sm">
                            <div aria-valuemax="100" aria-valuemin="0" role="progressbar"
                                 class="progress-bar progress-bar-success step-bar">
                                <span class="sr-only"> 0% Complete (success)</span>
                            </div>
                        </div>';

        self::$form .= self::$abas;

        self::$form .= '</div>
                    </form>
                </div>
             </div>
        </div>';

        return self::$form;
    }

}
