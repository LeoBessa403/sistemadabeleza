UPDATE TB_HISTORIA SET ds_titulo = "Manter ausência", ds_observacao = "<p>Manter aus&ecirc;ncia</p>

<p>&nbsp;</p>

<p>Modelagem: Aus&ecirc;ncia Profissional (FK Profissional)</p>", co_sessao = "9", st_situacao = "C", dt_atualizado = "2019-02-06 08:44:05" where co_historia = 17;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("8", "8"_restante, "2019-02-06 08:44:05", "17");

UPDATE TB_ENDERECO SET co_endereco = "96", ds_endereco = "QR 403 Conjunto 10", ds_complemento = "", ds_bairro = "Samambaia Norte (Samambaia)", nu_cep = "72319111", no_cidade = "Brasília", sg_uf = "DF" where co_endereco = 96;

UPDATE TB_CONTATO SET co_contato = "82", nu_tel1 = "6546546131", nu_tel2 = "43536436436", nu_tel3 = "", nu_tel_0800 = "", ds_email = "leonardomcbessa@gmail.com", ds_site = "", ds_facebook = "", ds_twitter = "", ds_instagram = "" where co_contato = 82;

UPDATE TB_PESSOA SET co_pessoa = "77", nu_cpf = "12345678909", no_pessoa = "Seu Biga ", nu_rg = "1111111111111", dt_nascimento = "2018-09-10", st_sexo = "M", co_contato = "82", co_endereco = "96" where co_pessoa = 77;

UPDATE TB_CONTA_BANCARIA SET co_conta_bancaria = "43", nu_agencia = "2399", nu_conta = "22982-7", tp_conta = "CC", co_banco = "1" where co_conta_bancaria = 43;

UPDATE TB_IMAGEM SET ds_caminho = "seu-biga-5c5af209a8223.jpg" where co_imagem = 38;

UPDATE TB_PROFISSIONAL SET co_profissional = "21", ds_cor_agenda = "#A54A7B", st_assistente = "S", ds_sobre = "", no_apelido = "meu apelido", st_agenda = "S", st_agenda_online = "S"_online, st_status = "", nu_ordem_agenda = "", tp_contratacao = "1", dt_admissao = "1983-12-06", dt_demissao = "", co_imagem = "38", co_pessoa = "77", co_conta_bancaria = "43" where co_profissional = 21;

DELETE FROM TB_PROFISSIONAL_CARGO where co_profissional in (21);

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("21", "A", "2019-02-06", "32");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("21", "A", "2019-02-06", "31");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("21", "A", "2019-02-06", "30");

INSERT INTO TB_PROFISSIONAL_CARGO (co_profissional, st_status, dt_cadastro, co_cargo) VALUES ("21", "A", "2019-02-06", "27");

DELETE FROM TB_JORNADA_TRABALHO where co_profissional in (21);

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("21", "2", "05:00", "18:11");

INSERT INTO TB_JORNADA_TRABALHO (co_profissional, nu_dia_semana, nu_hora_abertura, nu_hora_fechamento) VALUES ("21", "3", "05:00", "18:04");

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3096";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3097";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3098";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3099";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3100";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3101";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3102";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3103";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3104";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3105";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3106";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3107";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3108";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3109";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3110";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3111";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3112";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3113";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3114";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3115";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3116";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3117";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3118";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3119";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3120";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3121";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3122";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3123";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3124";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3125";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3126";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3127";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3128";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3129";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3130";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3131";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3132";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3133";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3134";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3135";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3136";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3137";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3138";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3139";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3140";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3141";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3142";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3143";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3144";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3145";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3146";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3147";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3148";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3149";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3150";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3151";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3152";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3153";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3154";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3155";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3156";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3157";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3158";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3159";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3160";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3161";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3162";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3163";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3164";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3165";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3166";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3167";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3168";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3169";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3170";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3171";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3172";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3173";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3174";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3175";

DELETE FROM TB_AUDITORIA_ITENS where co_auditoria_itens = "3176";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "422";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "423";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "424";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "425";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "426";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "427";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "428";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "429";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "430";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "431";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "432";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "433";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "434";

DELETE FROM TB_AUDITORIA_TABELA where co_auditoria_tabela = "435";

DELETE FROM TB_AUDITORIA where co_auditoria = "422";

