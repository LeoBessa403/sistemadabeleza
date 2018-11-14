var Funcoes = function () {
    var inicio = function () {

        //VARIÁVEIS GLOBAIS
        var dados = constantes();
        var home = dados['HOME'];
        var urlValida = dados['HOME'] + 'admin/Controller/Ajax.Controller.php';
        var upload = dados['PASTAUPLOADS'];

        //Esconde a model de notificação
        setTimeout(function () {
            $(".gritter-aviso").animate({
                right: -500
            }, "slow");
        }, 8000);

        $('.gritter-close').click(function () {
            $(this).parents("#gritter-notice-wrapper").fadeOut('slow');
        });

        // Ler a quantidade de notificações
        $(window).load(function () {
            var itens = 0;
            $(".notifica li").each(function () {
                if($(this).children('li')){
                    itens++;
                }
            });
            $("span .nu_notificacoes").text(itens);
        });

    };
    return {
        init: function () {
            inicio();
        },
        Modal: function (msg, classe, cor, icone, titulo) {
            $(".aviso .modal-header").removeClass().addClass("modal-header btn btn-" + classe);
            $(".aviso #icone").removeClass().addClass("btn btn-" + cor);
            $(".aviso i").removeClass().addClass("fa " + icone);
            $(".aviso .modal-header .modal-title").text(titulo);
            $(".aviso #confirmacao_msg b").html(msg);
            $("#aviso").click();
            //Função de subir a página ao topo
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
        },
        Sucesso: function (msg) {
            Funcoes.Modal(msg, "success", "green", "fa-check", "SUCESSO");
        },
        Alerta: function (msg) {
            Funcoes.Modal(msg, "warning", "yellow", "fa-exclamation-triangle", "ALERTA");
        },
        Informativo: function (msg) {
            Funcoes.Modal(msg, "info", "primary", "fa-info-circle", "INFORMATIVO");
        },
        Erro: function (msg) {
            Funcoes.Modal(msg, "bricky", "bricky", "fa-frown-o", "Erro");
        },

        MSG_CONFIRMACAO: "CONFIRMAÇÃO",

        MSG01: "Sua Idade Não é Permitida.",
        MSG02: "Ano de publicação não pode ser maior que o ano atual.",
        MSG03: "Ano de publicação não pode ser menor que o ano de 1950.",
        MSG04: "Livro sem Foto de Capa"

    };
}();

