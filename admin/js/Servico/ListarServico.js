$(function () {
    //VARIÁVEIS GLOBAIS
    var dados = constantes();
    var home = dados['HOME'];
    var urlValida = home + 'admin/Controller/Ajax.Controller.php';

    function manterStatusServico(acao, coServico, element) {
        $.get(urlValida, {
            'valida': acao,
            'co_servico': coServico
        }, function (data) {
           if(data) {
               if(acao == 'DesativarServico'){
                   element.removeClass('btn-green').addClass('btn-bricky').attr('data-acao','AtivarServico');
                   element.children('i').removeClass('glyphicon-ok-sign').addClass('glyphicon-remove-circle');
               }else{
                   element.removeClass('btn-bricky').addClass('btn-green').attr('data-acao','DesativarServico');
                   element.children('i').removeClass('glyphicon-remove-circle').addClass('glyphicon-ok-sign');
               }
               Funcoes.Sucesso('Status do Servi\u00e7o alterado com Sucesso.');
           }else{
               Funcoes.Erro('Erro ao alterar o Status do Servi\u00e7o');
           }
        })
    }

    $(".servico").click(function () {
        var id = $(this).attr("id").replace('st_status','');
        var acao = $(this).attr("data-acao");
        manterStatusServico(acao, id, $(this));
    });
});