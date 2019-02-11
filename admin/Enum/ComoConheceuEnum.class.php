<?php

/**
 * Class FuncionamentoEnum
 */
class ComoConheceuEnum extends AbstractEnum
{
    const SISTEMA_BELEZA = 1;
    const INSTAGRAM = 2;
    const FACEBOOK = 3;
    const WHATSAPP = 4;
    const SITE = 5;
    const INDICACAO_AMIGO = 6;
    const INDICACAO_FAMILIAR = 7;
    const INDICACAO_VIZINHO = 8;
    const FOLDERS_PANFLETAGEM = 9;
    const APLICATIVO = 10;
    const PASSOU_FRENTE = 11;
    const JORNAL = 12;
    const TV = 13;
    const REVISTA = 14;
    const PANFLETO_PORTARIA = 15;
    const CARRO_SOM = 16;
    const CINEMA = 17;
    const FEIRA_BELEZA = 18;
    const OUTDOOR = 19;
    const OUTRA_UNIDADE = 20;
    const OUTRAS_REDES_SOCIAIS = 21;
    const PARCERIA = 22;
    const RADIO = 23;
    const SMS = 24;
    const OUTROS = 25;


    public static $descricao = [
        ComoConheceuEnum::SISTEMA_BELEZA => 'Sistema da beleza',
        ComoConheceuEnum::APLICATIVO => 'Aplicativo',
        ComoConheceuEnum::CARRO_SOM => 'Carro de Som',
        ComoConheceuEnum::CINEMA => 'Cinema',
        ComoConheceuEnum::FACEBOOK => 'Facebook',
        ComoConheceuEnum::FEIRA_BELEZA => 'Feira de Beleza',
        ComoConheceuEnum::FOLDERS_PANFLETAGEM => 'Flyers / Folhetos / Folders / Panfletagem',
        ComoConheceuEnum::INDICACAO_AMIGO => 'Indicação amigo',
        ComoConheceuEnum::INDICACAO_FAMILIAR => 'Indicação familiar',
        ComoConheceuEnum::INDICACAO_VIZINHO => 'Indicação vizinho',
        ComoConheceuEnum::INSTAGRAM => 'Instagram',
        ComoConheceuEnum::SITE => 'Pelo Site',
        ComoConheceuEnum::JORNAL => 'Jornal',
        ComoConheceuEnum::OUTDOOR => 'Outdoor',
        ComoConheceuEnum::OUTRA_UNIDADE => 'Outra Unidade',
        ComoConheceuEnum::OUTRAS_REDES_SOCIAIS => 'Outras Redes Sociais',
        ComoConheceuEnum::PANFLETO_PORTARIA => 'Panfleto Portaria',
        ComoConheceuEnum::PARCERIA => 'Parceria',
        ComoConheceuEnum::PASSOU_FRENTE => 'Passou em frente',
        ComoConheceuEnum::RADIO => 'Rádio',
        ComoConheceuEnum::REVISTA => 'Revista',
        ComoConheceuEnum::SMS => 'SMS (Mensagem de Texto)',
        ComoConheceuEnum::TV => 'TV',
        ComoConheceuEnum::WHATSAPP => 'WhatsApp',
        ComoConheceuEnum::OUTROS => 'Outros',
    ];
}
