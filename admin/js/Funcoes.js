var Funcoes = function () {
    var inicio = function () {

        //VARIÁVEIS GLOBAIS
        var dados = constantes();
        var home = dados['HOME'];
        var urlValida = dados['HOME'] + 'admin/Controller/Ajax.Controller.php';
        var upload = dados['PASTAUPLOADS'];


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

