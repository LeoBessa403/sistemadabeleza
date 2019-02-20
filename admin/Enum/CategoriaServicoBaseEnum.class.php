<?php

/**
 * Class CategoriaServicoBase
 */
class CategoriaServicoBaseEnum extends AbstractEnum
{
    const CABELO = 1;
    const MAOS_PES = 2;
    const MAQUIAGEM = 3;
    const SOBRANCELHA = 4;
    const BARBA = 5;
    const ESTETICA_FACIAL = 6;
    const DEPILACAO = 7;
    const EMAGRECIMENTO = 8;
    const FISIOTERAPIA = 9;
    const MASSAGEM = 10;
    const PODOLOGIA = 11;
    const TERAPIA = 12;
    const TRATAMENTO = 13;
    const LIFTING = 14;

    public static $descricao = [
        CategoriaServicoBaseEnum::CABELO => 'Cabelo',
        CategoriaServicoBaseEnum::MAOS_PES => 'Mãos e Pés',
        CategoriaServicoBaseEnum::MAQUIAGEM => 'Maquiagem',
        CategoriaServicoBaseEnum::SOBRANCELHA => 'Sobrancelha',
        CategoriaServicoBaseEnum::BARBA => 'Barba',
        CategoriaServicoBaseEnum::ESTETICA_FACIAL => 'Estética Facial',
        CategoriaServicoBaseEnum::DEPILACAO => 'Depilação',
        CategoriaServicoBaseEnum::EMAGRECIMENTO => 'Emagrecimento',
        CategoriaServicoBaseEnum::FISIOTERAPIA => 'Fisioterapia',
        CategoriaServicoBaseEnum::MASSAGEM => 'Massagem',
        CategoriaServicoBaseEnum::PODOLOGIA => 'Podologia',
        CategoriaServicoBaseEnum::TERAPIA => 'Terapia',
        CategoriaServicoBaseEnum::TRATAMENTO => 'Tratamento',
        CategoriaServicoBaseEnum::LIFTING => 'Lifting',
    ];
}
