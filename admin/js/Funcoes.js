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
            if(itens > 0){
                $("#notif").addClass('pulse');
            }

        });
    };
    return {
        init: function () {
            inicio();
        },
        Modal: function (msg, classe, titulo) {
            var element = $(".alerta-js");
            element.removeClass("gritter-success,gritter-warning,gritter-info,gritter-danger").addClass("gritter-" + classe);
            $(".alerta-js span.gritter-title").text(titulo);
            $(".alerta-js span.mensagem-alerta-js").text(msg);
            element.show();
            //Função de subir a página ao topo
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
        },
        Sucesso: function (msg) {
            Funcoes.Modal(msg, "success", "SUCESSO");
        },
        Alerta: function (msg) {
            Funcoes.Modal(msg, "warning", "ALERTA");
        },
        Informativo: function (msg) {
            Funcoes.Modal(msg, "info", "INFORMATIVO");
        },
        Erro: function (msg) {
            Funcoes.Modal(msg, "danger", "Erro");
        },

        MSG_CONFIRMACAO: "CONFIRMAÇÃO"

    };
}();

