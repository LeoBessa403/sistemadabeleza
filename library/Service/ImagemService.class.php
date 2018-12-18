<?php

/**
 * ImagemService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  ImagemService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(ImagemEntidade::ENTIDADE);
    }

    /**
     * @param $imagem
     * @param $noImagem
     * @param null $pasta
     * @return mixed
     */
    public function salvaImagem($imagem, $noImagem, $pasta = null)
    {
        /** @var Upload $up */
        $up = new Upload();
        $noImagem =  Valida::ValNome(strtolower(trim($noImagem)));

        if ($imagem[DS_CAMINHO]["tmp_name"]):
            $img = $imagem[DS_CAMINHO];
            $up->UploadImagens($img, $noImagem, $pasta);
            $imagem[DS_CAMINHO] = $up->getNameImage();
           return $this->Salva($imagem);
        endif;
        return false;
    }

}