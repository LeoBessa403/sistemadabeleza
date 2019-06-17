$(function () {
    //VARIÁVEIS GLOBAIS
    var dados = constantes();
    var home = dados['HOME'];
    var urlValida = home + 'admin/Controller/Ajax.Controller.php';

    function manterStatusServico(acao, coServico, element) {
        $.ajax({
            url: urlValida,
            data: {acao: acao, co_servico: coServico},
            type: "POST",
            dataType: "json",
            beforeSend: function () {
                $("#load").click();
            },
            success: function (data) {
                if (acao == 'DesativarServico') {
                    element.removeClass('btn-green').addClass('btn-bricky').attr('data-acao', 'AtivarServico');
                    element.children('i').removeClass('glyphicon-ok-sign').addClass('glyphicon-remove-circle');
                } else {
                    element.removeClass('btn-bricky').addClass('btn-green').attr('data-acao', 'DesativarServico');
                    element.children('i').removeClass('glyphicon-remove-circle').addClass('glyphicon-ok-sign');
                }
                Funcoes.Sucesso('Status do Serviço alterado com Sucesso.');
            },
            error: function (e) {
                Funcoes.Erro(e.preventDefault());
            },
            complete: function () {
                $("#carregando .cancelar").click();
            }
        });
    }

    $(".servico").click(function () {
        var id = $(this).attr("id").replace('st_status', '');
        var acao = $(this).attr("data-acao");
        manterStatusServico(acao, id, $(this));
    });
});