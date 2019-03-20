<?php

/**
 * Class ServicoBase
 */
class ServicoBaseEnum extends AbstractEnum
{
    const COLORACAO = 1;
    const CORTE_MASC_TESOURA = 2;
    const CORTE_MASC_MAQUINA = 3;
    const CORTE_FEMI = 4;
    const HIDRATACAO = 5;
    const CORTE_HIGIENIZACAO = 6;
    const ESCOVA = 7;
    const SELAGEM = 8;
    const PROGRESSIVA = 9;
    const BOTOX = 10;
    const LUZ_MECHA = 11;
    const MANICURE = 12;
    const PEDICURE = 13;
    const MANICURE_PEDICURE = 14;
    const ALONGAMENTO_UNHAS_GEL = 15;
    const MAKE_COMPLETA = 16;
    const ALONGAMENTO_CILIOS_FIO = 17;
    const DESIGN_SOBRANCELHAS = 18;
    const BARBAR_RETOQUE = 19;
    const REJUVENESCIMENTO_FACIAL = 20;
    const MICROAGULHAMENTO_PEELING = 21;
    const MASCARA_ACNE = 22;
    const LIMPEZA_PELE = 23;
    const DEPILACAO_LASER = 24;
    const DEPILACAO_CERA = 25;
    const DEPILACAO_LUZ = 26;
    const MASSAGEM_RELAXANTE = 27;
    const MASSAGEM_MODELADORA = 28;
    const DRENAGEM_LINFATICA = 29;
    const BAMBUTERAPIA = 30;
    const DAY_SPA = 31;
    const PODOLOGIA_LIMPEZA_GERAL = 32;
    const CARBOXITERAPIA = 33;


    public static $nome = [
        ServicoBaseEnum::COLORACAO => 'Coloração / Tonalização',
        ServicoBaseEnum::CORTE_MASC_TESOURA => 'Corte Tesoura',
        ServicoBaseEnum::CORTE_MASC_MAQUINA => 'Corte Máquina',
        ServicoBaseEnum::CORTE_FEMI => 'Corte Feminino',
        ServicoBaseEnum::HIDRATACAO => 'Hidratação Capilar',
        ServicoBaseEnum::CORTE_HIGIENIZACAO => 'Corte e Higienização dos Fios',
        ServicoBaseEnum::ESCOVA => 'Escova Modeladora',
        ServicoBaseEnum::SELAGEM => 'Selagem',
        ServicoBaseEnum::PROGRESSIVA => 'Escova Progressiva',
        ServicoBaseEnum::BOTOX => 'Botox Capilar',
        ServicoBaseEnum::LUZ_MECHA => 'Luzes / Mechas',
        ServicoBaseEnum::MANICURE => 'Manicure',
        ServicoBaseEnum::PEDICURE => 'Pedicure',
        ServicoBaseEnum::MANICURE_PEDICURE => 'Manicure e Pedicure',
        ServicoBaseEnum::ALONGAMENTO_UNHAS_GEL => 'Unhas Gel',
        ServicoBaseEnum::MAKE_COMPLETA => 'Maquiagem Completa',
        ServicoBaseEnum::ALONGAMENTO_CILIOS_FIO => 'Alongamento de Cílios Fio a Fio',
        ServicoBaseEnum::DESIGN_SOBRANCELHAS => 'Design de Sobrancelhas',
        ServicoBaseEnum::BARBAR_RETOQUE => 'Retoque na Barba',
        ServicoBaseEnum::REJUVENESCIMENTO_FACIAL => 'Rejuvenescimento Facial',
        ServicoBaseEnum::MICROAGULHAMENTO_PEELING => 'Microagulhamento com Peeling',
        ServicoBaseEnum::MASCARA_ACNE => 'Máscara Acne Control',
        ServicoBaseEnum::LIMPEZA_PELE => 'Limpeza de Pele',
        ServicoBaseEnum::DEPILACAO_LASER => 'Depilação a Laser',
        ServicoBaseEnum::DEPILACAO_CERA => 'Depilação a Cera',
        ServicoBaseEnum::DEPILACAO_LUZ => 'Depilação a Luz',
        ServicoBaseEnum::MASSAGEM_RELAXANTE => 'Massagem Relaxante',
        ServicoBaseEnum::MASSAGEM_MODELADORA => 'Massagem Modeladora',
        ServicoBaseEnum::DRENAGEM_LINFATICA => 'Drenagem Linfática',
        ServicoBaseEnum::BAMBUTERAPIA => 'Bambuterapia',
        ServicoBaseEnum::DAY_SPA => 'Day Spa',
        ServicoBaseEnum::PODOLOGIA_LIMPEZA_GERAL => 'Podologia com limpeza dos pés',
        ServicoBaseEnum::CARBOXITERAPIA => 'Carboxiterapia',
    ];

    public static $descricao = [
        ServicoBaseEnum::COLORACAO => 'Tonalização: matiza e deixa os tons dos fios mais naturais.',
        ServicoBaseEnum::CORTE_MASC_TESOURA => 'Corte: O corte na tesoura irá deixar você com o visual renovado.',
        ServicoBaseEnum::CORTE_MASC_MAQUINA => 'Corte: O corte na máquina irá deixar você com o visual renovado.',
        ServicoBaseEnum::CORTE_FEMI => 'Corte: mude o visual ou apare as pontinhas para manter a aparência do 
        cabelo sempre saudável.',
        ServicoBaseEnum::HIDRATACAO => 'Hidratação profunda Capilar',
        ServicoBaseEnum::CORTE_HIGIENIZACAO => 'Corte: mude o visual ou apare as pontinhas para manter a 
        aparência do cabelo sempre saudável e Higienização dos Fios: deixe as madeixas ainda mais bonitas',
        ServicoBaseEnum::ESCOVA => 'Escova: você vai ter uma ajudinha para realinhar os cabelos com um 
        caimento perfeito.',
        ServicoBaseEnum::SELAGEM => 'Selagem: ajuda a dar mais resistência, maciez, elasticidade, brilho e nutrição 
        aos fios, além de ser uma ótima aliada na redução do volume.',
        ServicoBaseEnum::PROGRESSIVA => 'Progressiva: é um realinhamento tradicional dos fios, que reestrutura a 
        fibra capilar com ativação térmica, hidratando e condicionando profundamente o cabelo. Possui um ativo 
        que adere à superfície do cabelo, selando as cutículas, repondo a massa e recuperando a estrutura capilar. 
        Os resultados são cabelos lisos, hidratados, sem frizz, macios e com super brilho.',
        ServicoBaseEnum::BOTOX => 'Botox: é um poderoso reconstrutor da fibra do cabelo, garantindo sua jovialidade. 
        Esta técnica deixa-os hidratados, sem volume e com aspecto saudável.',
        ServicoBaseEnum::LUZ_MECHA => 'Luzes: clareiam sutilmente os fios da raiz até as pontas, deixando o cabelo 
        com mais reflexos e Mechas: descoloração feita em mechas que se misturam à cor original do cabelo.',
        ServicoBaseEnum::MANICURE => 'Manicure: retirada de cutículas e pintura das unhas das mãos nas cores desejadas 
        pela cliente.',
        ServicoBaseEnum::PEDICURE => 'Pedicure: retirada de cutículas e pintura das unhas dos pés nas cores desejadas 
        pela cliente.',
        ServicoBaseEnum::MANICURE_PEDICURE => 'Manicure e Pedicure: retirada de cutículas e pintura das unhas das mãos 
        e dos pés nas cores desejadas pela cliente.',
        ServicoBaseEnum::ALONGAMENTO_UNHAS_GEL => 'Unhas em Gel: feitas com produto à base de película de poliéster, 
        antitóxico e antialérgico, secado sob o calor de lâmpada de UV. As unhas têm aparência mais natural e 
        são mais finas.',
        ServicoBaseEnum::MAKE_COMPLETA => 'Desfrute de uma make completa para arrasar em festas, comemorações e 
        casamentos com uma super maquiagem.',
        ServicoBaseEnum::ALONGAMENTO_CILIOS_FIO => 'Alongamento de Cílios: a técnica de alongamento de cílios trata-se 
        de uma espécie de “mega-hair” para cílios, ou seja, aumenta o tamanho e o volume dos pelos, fio a fio, 
        fazendo com que os mesmos fiquem alongados, cheios e definidos, como se tivesse sido aplicada uma camada 
        generosa de máscara para cílios. Desta forma, você pode dispensar o uso do rímel durante o período em que o 
        procedimento estético em questão dura.',
        ServicoBaseEnum::DESIGN_SOBRANCELHAS => 'Design de Sobrancelhas: além de ser esteticamente essencial, garante 
        uma expressão mais bonita, evidencia traços naturais e deixa você com olhar muito mais seguro e disposto. 
        Feito de acordo com o formato do seu rosto. Feito com pinça.',
        ServicoBaseEnum::BARBAR_RETOQUE => 'Barba: faça a barba totalmente ou apare com um design a seu gosto para 
        manter a aparência impecável.',
        ServicoBaseEnum::REJUVENESCIMENTO_FACIAL => 'Rejuvenescimento Facial com Luz Pulsada é um procedimento 
        de última geração que promove a melhora da textura, vivacidade e iluminação da pele, além de repor o colágeno 
        e a elastina proporcionando assim uma pele mais firme e jovem.',
        ServicoBaseEnum::MICROAGULHAMENTO_PEELING => 'Microagulhamento: promove textura mais macia, atenuando cicatrizes 
        de acne, poros abertos, rugas, linhas de expressão, cicatrizes, estrias, olheiras, manchas, flacidez. e Peeling 
        de diamante: entre os principais objetivos do procedimento estão a remoção das células mortas que ficam na 
        camada mais superficial da pele e a estimulação à produção de colágeno.',
        ServicoBaseEnum::MASCARA_ACNE => 'Máscara Acne Control: o tratamento visa diminuir a acne, manchas e melhorar a 
        textura e a firmeza da pele.',
        ServicoBaseEnum::LIMPEZA_PELE => 'Limpeza de pele com extração: inclui higienização, vapor de ozônio e extração 
        de cravos, deixando seu rosto limpo e saudável para os demais procedimentos.',
        ServicoBaseEnum::DEPILACAO_LASER => 'Com Depilação a Laser com Soprano XL, um aparelho praticamente indolor, 
        que garante uma boa tolerância dos pacientes ao desconforto no momento da sessão.',
        ServicoBaseEnum::DEPILACAO_CERA => 'Realizada com cera quente, que garante uma maior durabilidade, já que os 
        pelos são eliminados pela raiz. O tratamento diminui a espessura do pelo e retarda seu crescimento. É rápida, 
        sem resíduos e sua pele não fica irritada, como acontece com a lâmina de barbear. Todo material é descartável.',
        ServicoBaseEnum::DEPILACAO_LUZ => 'O método remove os pelos pela destruição do folículo piloso ou 
        de sua nutrição, tornando seu crescimento inviável. O laser utiliza a cor do pelo como guia para chegar até 
        sua raiz e destruí-lo. Com a emissão de um feixe de luz monocromática, queima e atrofia sua raiz.',
        ServicoBaseEnum::MASSAGEM_RELAXANTE => 'Massagem Relaxante: é revigorante e reduz o estado de tensão muscular.',
        ServicoBaseEnum::MASSAGEM_MODELADORA => 'Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.',
        ServicoBaseEnum::DRENAGEM_LINFATICA => 'Drenagem Linfática: para quem precisa retirar o excesso de líquidos e 
        toxinas do organismo.',
        ServicoBaseEnum::BAMBUTERAPIA => 'Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.',
        ServicoBaseEnum::DAY_SPA => 'Massagem com pedras quentes é uma terapia complementar, que utiliza pedras de 
        vários tipos e tamanhos, principalmente as vulcânicas, que absorvem muito mais o calor. Esta terapia é capaz 
        de levar a um profundo relaxamento e bem estar, trazendo ao corpo diversas sensações com o toque das pedras 
        quentes. Esfoliação corporal e facial: pele mais uniforme, limpa e macia. Escalda-pés: método relaxante que 
        estimula a circulação sanguínea e alivia o estresse e o cansaço acumulado',
        ServicoBaseEnum::PODOLOGIA_LIMPEZA_GERAL => 'Podologia com limpeza dos pés: corte, polimento, limpeza, 
        debastamento das calosidades, esfoliação dos pés e hidratação profunda.',
        ServicoBaseEnum::CARBOXITERAPIA => 'Feita por meio de injeção subcutânea de gás carbônico medicinal, estimula a 
        produção de colágeno local e ajuda a reduzir a gordura localizada, ao mesmo tempo que melhora a celulite 
        e flacidez.',
    ];

    public static $preco = [
        ServicoBaseEnum::COLORACAO => 39.90,
        ServicoBaseEnum::CORTE_MASC_TESOURA => 19.90,
        ServicoBaseEnum::CORTE_MASC_MAQUINA => 29.90,
        ServicoBaseEnum::CORTE_FEMI => 59.90,
        ServicoBaseEnum::HIDRATACAO => 49.90,
        ServicoBaseEnum::CORTE_HIGIENIZACAO => 49.90,
        ServicoBaseEnum::ESCOVA => 29.90,
        ServicoBaseEnum::SELAGEM => 59.90,
        ServicoBaseEnum::PROGRESSIVA => 59.90,
        ServicoBaseEnum::BOTOX => 59.90,
        ServicoBaseEnum::LUZ_MECHA => 79.90,
        ServicoBaseEnum::MANICURE => 19.90,
        ServicoBaseEnum::PEDICURE => 19.90,
        ServicoBaseEnum::MANICURE_PEDICURE => 29.90,
        ServicoBaseEnum::ALONGAMENTO_UNHAS_GEL => 59.90,
        ServicoBaseEnum::MAKE_COMPLETA => 119.90,
        ServicoBaseEnum::ALONGAMENTO_CILIOS_FIO => 79.90,
        ServicoBaseEnum::DESIGN_SOBRANCELHAS => 24.90,
        ServicoBaseEnum::BARBAR_RETOQUE => 19.90,
        ServicoBaseEnum::REJUVENESCIMENTO_FACIAL => 19.90,
        ServicoBaseEnum::MICROAGULHAMENTO_PEELING => 69.90,
        ServicoBaseEnum::MASCARA_ACNE => 39.90,
        ServicoBaseEnum::LIMPEZA_PELE => 29.90,
        ServicoBaseEnum::DEPILACAO_LASER => 99.90,
        ServicoBaseEnum::DEPILACAO_CERA => 29.90,
        ServicoBaseEnum::DEPILACAO_LUZ => 89.90,
        ServicoBaseEnum::MASSAGEM_RELAXANTE => 29.90,
        ServicoBaseEnum::MASSAGEM_MODELADORA => 29.90,
        ServicoBaseEnum::DRENAGEM_LINFATICA => 29.90,
        ServicoBaseEnum::BAMBUTERAPIA => 29.90,
        ServicoBaseEnum::DAY_SPA => 99.90,
        ServicoBaseEnum::PODOLOGIA_LIMPEZA_GERAL => 39.90,
        ServicoBaseEnum::CARBOXITERAPIA => 39.90,
    ];

    public static $categoria = [
        ServicoBaseEnum::COLORACAO => 1,
        ServicoBaseEnum::CORTE_MASC_TESOURA => 1,
        ServicoBaseEnum::CORTE_MASC_MAQUINA => 1,
        ServicoBaseEnum::CORTE_FEMI => 1,
        ServicoBaseEnum::HIDRATACAO => 1,
        ServicoBaseEnum::CORTE_HIGIENIZACAO => 1,
        ServicoBaseEnum::ESCOVA => 1,
        ServicoBaseEnum::SELAGEM => 1,
        ServicoBaseEnum::PROGRESSIVA => 1,
        ServicoBaseEnum::BOTOX => 1,
        ServicoBaseEnum::LUZ_MECHA => 1,
        ServicoBaseEnum::MANICURE => 2,
        ServicoBaseEnum::PEDICURE => 2,
        ServicoBaseEnum::MANICURE_PEDICURE => 2,
        ServicoBaseEnum::ALONGAMENTO_UNHAS_GEL => 2,
        ServicoBaseEnum::MAKE_COMPLETA => 3,
        ServicoBaseEnum::ALONGAMENTO_CILIOS_FIO => 4,
        ServicoBaseEnum::DESIGN_SOBRANCELHAS => 4,
        ServicoBaseEnum::BARBAR_RETOQUE => 5,
        ServicoBaseEnum::REJUVENESCIMENTO_FACIAL => 6,
        ServicoBaseEnum::MICROAGULHAMENTO_PEELING => 6,
        ServicoBaseEnum::MASCARA_ACNE => 6,
        ServicoBaseEnum::LIMPEZA_PELE => 6,
        ServicoBaseEnum::DEPILACAO_LASER => 7,
        ServicoBaseEnum::DEPILACAO_CERA => 7,
        ServicoBaseEnum::DEPILACAO_LUZ => 7,
        ServicoBaseEnum::MASSAGEM_RELAXANTE => 8,
        ServicoBaseEnum::MASSAGEM_MODELADORA => 8,
        ServicoBaseEnum::DRENAGEM_LINFATICA => 8,
        ServicoBaseEnum::BAMBUTERAPIA => 10,
        ServicoBaseEnum::DAY_SPA => 8,
        ServicoBaseEnum::PODOLOGIA_LIMPEZA_GERAL => 9,
        ServicoBaseEnum::CARBOXITERAPIA => 10,
    ];

    public static $duracao = [
        ServicoBaseEnum::COLORACAO => 120,
        ServicoBaseEnum::CORTE_MASC_TESOURA => 30,
        ServicoBaseEnum::CORTE_MASC_MAQUINA => 30,
        ServicoBaseEnum::CORTE_FEMI => 60,
        ServicoBaseEnum::HIDRATACAO => 60,
        ServicoBaseEnum::CORTE_HIGIENIZACAO => 30,
        ServicoBaseEnum::ESCOVA => 30,
        ServicoBaseEnum::SELAGEM => 60,
        ServicoBaseEnum::PROGRESSIVA => 60,
        ServicoBaseEnum::BOTOX => 60,
        ServicoBaseEnum::LUZ_MECHA => 150,
        ServicoBaseEnum::MANICURE => 30,
        ServicoBaseEnum::PEDICURE => 30,
        ServicoBaseEnum::MANICURE_PEDICURE => 60,
        ServicoBaseEnum::ALONGAMENTO_UNHAS_GEL => 90,
        ServicoBaseEnum::MAKE_COMPLETA => 120,
        ServicoBaseEnum::ALONGAMENTO_CILIOS_FIO => 90,
        ServicoBaseEnum::DESIGN_SOBRANCELHAS => 30,
        ServicoBaseEnum::BARBAR_RETOQUE => 60,
        ServicoBaseEnum::REJUVENESCIMENTO_FACIAL => 60,
        ServicoBaseEnum::MICROAGULHAMENTO_PEELING => 60,
        ServicoBaseEnum::MASCARA_ACNE => 60,
        ServicoBaseEnum::LIMPEZA_PELE => 30,
        ServicoBaseEnum::DEPILACAO_LASER => 30,
        ServicoBaseEnum::DEPILACAO_CERA => 60,
        ServicoBaseEnum::DEPILACAO_LUZ => 30,
        ServicoBaseEnum::MASSAGEM_RELAXANTE => 30,
        ServicoBaseEnum::MASSAGEM_MODELADORA => 30,
        ServicoBaseEnum::DRENAGEM_LINFATICA => 30,
        ServicoBaseEnum::BAMBUTERAPIA => 60,
        ServicoBaseEnum::DAY_SPA => 120,
        ServicoBaseEnum::PODOLOGIA_LIMPEZA_GERAL => 60,
        ServicoBaseEnum::CARBOXITERAPIA => 30,
    ];

    public static $imagem = [
        ServicoBaseEnum::COLORACAO => 'tonalizante-coloracao02.jpg',
        ServicoBaseEnum::CORTE_MASC_TESOURA => 'corte-de-cabelo-masculino.jpg',
        ServicoBaseEnum::CORTE_MASC_MAQUINA => 'qual-a-melhor-maquina-de-cortar-cabelo_1.jpg',
        ServicoBaseEnum::CORTE_FEMI => 'melhor-fase-da-lua-para-corta-cabelo-em-2019.jpg',
        ServicoBaseEnum::HIDRATACAO => 'mascara-de-cabelo-1.jpg',
        ServicoBaseEnum::CORTE_HIGIENIZACAO => 'lavagem-1.jpg',
        ServicoBaseEnum::ESCOVA => 'escova-modeladora-como-escolher-2.jpg',
        ServicoBaseEnum::SELAGEM => 'selagem-termica-capilar-2.jpg',
        ServicoBaseEnum::PROGRESSIVA => 'Escova-progressiva.jpg',
        ServicoBaseEnum::BOTOX => 'botox-capilar-como-saber-se-e-falso.jpg',
        ServicoBaseEnum::LUZ_MECHA => 'luzes-reflexos.jpg',
        ServicoBaseEnum::MANICURE => 'manicure.jpg',
        ServicoBaseEnum::PEDICURE => 'spa-pedicure.jpg',
        ServicoBaseEnum::MANICURE_PEDICURE => 'manicure-pedicure.jpg',
        ServicoBaseEnum::ALONGAMENTO_UNHAS_GEL => 'banho-de-gel-cristalizacao-unhas-cristalizadas.jpg',
        ServicoBaseEnum::MAKE_COMPLETA => 'Makeup-Pic-for-Website.jpg',
        ServicoBaseEnum::ALONGAMENTO_CILIOS_FIO => 'cilios_fio_a_fio_duo_spa.jpg',
        ServicoBaseEnum::DESIGN_SOBRANCELHAS => 'design-de-sobrancelhas-nilopolis.jpg',
        ServicoBaseEnum::BARBAR_RETOQUE => 'retocar-a-barba-de-seu-amigo_1153-1504.jpg',
        ServicoBaseEnum::REJUVENESCIMENTO_FACIAL => 'Rejuvenescimento_Facial.jpg',
        ServicoBaseEnum::MICROAGULHAMENTO_PEELING => 'Microagulhamento_Peeling.jpg',
        ServicoBaseEnum::MASCARA_ACNE => 'Máscara_Acne_Control.jpg',
        ServicoBaseEnum::LIMPEZA_PELE => 'Limpeza_Pele.jpg',
        ServicoBaseEnum::DEPILACAO_LASER => 'Depilacao_Laser.jpg',
        ServicoBaseEnum::DEPILACAO_CERA => 'Depilacao_Cera.png',
        ServicoBaseEnum::DEPILACAO_LUZ => 'Depilacao_Luz.jpg',
        ServicoBaseEnum::MASSAGEM_RELAXANTE => 'Massagem_Relaxante.jpg',
        ServicoBaseEnum::MASSAGEM_MODELADORA => 'Massagem_Modeladora.jpg',
        ServicoBaseEnum::DRENAGEM_LINFATICA => 'Drenagem_Linfatica.jpg',
        ServicoBaseEnum::BAMBUTERAPIA => 'Bambuterapia.jpg',
        ServicoBaseEnum::DAY_SPA => 'Day_Spa.jpg',
        ServicoBaseEnum::PODOLOGIA_LIMPEZA_GERAL => 'Podologia.jpg',
        ServicoBaseEnum::CARBOXITERAPIA => 'Carboxiterapia.jpg',
    ];
}
