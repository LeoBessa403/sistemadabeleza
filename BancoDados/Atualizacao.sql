UPDATE TB_SERVICO SET st_status = "I" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 35;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 35;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 26;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 28;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 9;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 26;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 35;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 30;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 33;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 29;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 32;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 27;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 26;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 9;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 17;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 34;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 35;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 5;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 5;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 5;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 5;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 4;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 3;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 9;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 12;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 13;

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 10;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 10;

UPDATE TB_HISTORIA SET ds_titulo = "Manter Serviço", ds_observacao = "<p>Manter Servi&ccedil;o</p>

<p>Modelagem: Servi&ccedil;o (FK categoria Servi. Assinante) e listagem dos servi&ccedil;os por categoria</p>", co_sessao = "12", st_situacao = "I", dt_atualizado = "2019-03-21 12:18:10" where co_historia = 44;

INSERT INTO TB_HISTORICO_HISTORIA (nu_esforco, nu_esforco_restante, dt_cadastro, co_historia) VALUES ("13", "13"_restante, "2019-03-21 12:18:10", "44");

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("62", "2");

DELETE FROM TB_PERFIL_FUNCIONALIDADE where co_funcionalidade in (62);

INSERT INTO TB_PERFIL_FUNCIONALIDADE (co_funcionalidade, co_perfil) VALUES ("62", "2");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novidade-para-o-cabelo-5c93f1d0d54ba.jpg");

INSERT INTO TB_SERVICO (st_status, no_servico, nu_duracao, ds_descricao, co_categoria_servico, co_imagem, dt_cadastro) VALUES ("A", "Novidade para o cabelo", "30", "Nova descrição", "14", "80", "2019-03-21 17:19:29");

INSERT INTO TB_SERVICO (st_status, no_servico, nu_duracao, ds_descricao, co_categoria_servico, co_imagem, dt_cadastro) VALUES ("A", "Novidade para o cabelo", "30", "Nova descrição", "14", "80", "2019-03-21 17:19:29");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novidade-para-o-cabelo-5c93f324c0bdc.jpg");

INSERT INTO TB_SERVICO (st_status, no_servico, nu_duracao, ds_descricao, co_categoria_servico, co_imagem, dt_cadastro) VALUES ("A", "Novidade para o cabelo", "30", "Novo serviço de podologia", "13", "81", "2019-03-21 17:25:08");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novidade-para-o-cabelo-5c93f336d3cd7.jpg");

INSERT INTO TB_SERVICO (st_status, no_servico, nu_duracao, ds_descricao, co_categoria_servico, co_imagem, dt_cadastro) VALUES ("A", "Novidade para o cabelo", "30", "Novo serviço de podologia", "13", "82", "2019-03-21 17:25:27");

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("39", "Cadastrado", "55.22", "2019-03-21 17:25:27", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novidade-para-o-cabelo-5c93f3661d646.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Novidade para o cabelo", nu_duracao = "30", ds_descricao = "Novo serviço de podologia", co_categoria_servico = "13", co_imagem = "83" where co_servico = 39;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("39", "Atualizado", "5522.00", "2019-03-21 17:26:14", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novidade-para-o-cabelo-5c93f455d4d30.jpg");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("novidade-para-o-cabelo-5c93f46a552ce.jpg");

INSERT INTO TB_SERVICO (st_status, no_servico, nu_duracao, ds_descricao, co_categoria_servico, co_imagem, dt_cadastro) VALUES ("A", "Novidade para o cabelo", "30", "Novo Teste de Podologia", "13", "85", "2019-03-21 17:30:34");

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("40", "Cadastrado", "55.22", "2019-03-21 17:30:34", "8");

UPDATE TB_SERVICO SET st_status = "I" where co_servico = 40;

UPDATE TB_SERVICO SET st_status = "A" where co_servico = 40;

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("massagem-modeladora-2-5c93f7e4a9c80.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora 2", nu_duracao = "99", ds_descricao = "Massagem Modeladora 2: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "14", co_imagem = "86" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "119.99", "2019-03-21 17:45:25", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("massagem-modeladora-5c93f83a6631e.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12", co_imagem = "87" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 17:46:50", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12", co_imagem = "" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 17:56:11", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("massagem-modeladora-5c93fab069578.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12", co_imagem = "88" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 17:57:20", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("massagem-modeladora-5c93facd191d6.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12", co_imagem = "89" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 17:57:49", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12", co_imagem = "" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 17:58:16", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("massagem-modeladora-5c93fb4e990d6.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12", co_imagem = "90" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 17:59:58", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Massagem Modeladora", nu_duracao = "10", ds_descricao = "Massagem Modeladora: para quem precisa ativar o metabolismo local, 
        aumentar a circulação sanguínea e estimular respostas neuromusculares, além da reduzir celulite.", co_categoria_servico = "12" where co_servico = 30;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("30", "Atualizado", "39.99", "2019-03-21 18:00:23", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:00:50", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:05:50", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:06:24", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:06:53", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:07:59", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("bambuterapia-5c93fd4a935d8.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14", co_imagem = "91" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:08:26", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:08:51", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:09:17", "8");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:09:48", "8");

INSERT INTO TB_IMAGEM (ds_caminho) VALUES ("bambuterapia-5c93fdbcc614f.jpg");

UPDATE TB_SERVICO SET st_status = "A", no_servico = "Bambuterapia", nu_duracao = "60", ds_descricao = "Bambuterapia: é uma ótima conduta terapêutica nos tratamentos de celulite, 
        flacidez e gordura localizada, pois apresenta propriedades modeladoras, drenantes, relaxantes, tonificantes 
        e energética.", co_categoria_servico = "14", co_imagem = "92" where co_servico = 34;

INSERT INTO TB_PRECO_SERVICO (co_servico, ds_observacao, nu_valor, dt_cadastro, co_usuario) VALUES ("34", "Atualizado", "29.90", "2019-03-21 18:10:20", "8");

