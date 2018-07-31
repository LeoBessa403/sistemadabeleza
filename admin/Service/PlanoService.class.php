    <?php

/**
 * PlanoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PlanoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PlanoEntidade::ENTIDADE);
        $this->ObjetoModel = New PlanoModel();
    }

    public function salvaPlano($dados)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];

        $planoValidador = new PlanoValidador();
        /** @var PlanoValidador $validador */
        $validador = $planoValidador->validarPlano($dados);
        if ($validador[SUCESSO]) {
            $plano[DS_SEGMENTO] = trim($dados[DS_SEGMENTO]);
            $plano[NO_SEGMENTO_URL_AMIGAVEL] = Valida::ValNome(trim($dados[DS_SEGMENTO]));

            if (!empty($_POST[CO_SEGMENTO])):
                $coPlano = $dados[CO_SEGMENTO];
                $retorno[SUCESSO] = $this->Salva($plano, $coPlano);
            else:
                $retorno[SUCESSO] = $this->Salva($plano);
            endif;
        } else {
            $session = new Session();
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

    public static function montaComboMesesAtivos()
    {
        $todosMesAt = [
            1 => 1,
            3 => 3,
            6 => 6,
            12 => 2,
            24 => 24,
        ];
        return $todosMesAt;
    }

}