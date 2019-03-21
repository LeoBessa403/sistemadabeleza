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
                   element.removeClass('btn-green servico-ativo').addClass('btn-bricky servico-desativo');
                   element.children('i').removeClass('glyphicon-ok-sign').addClass('glyphicon-remove-circle');
               }else{
                   element.removeClass('btn-bricky servico-desativo').addClass('btn-green servico-ativo');
                   element.children('i').removeClass('glyphicon-remove-circle').addClass('glyphicon-ok-sign');
               }
               Funcoes.Sucesso('Status do Servi\u00e7o alterado com Sucesso.');
           }else{
               Funcoes.Erro('Erro ao alterar o Status do Servi\u00e7o');
           }
        })
    }

    $(".servico-ativo").click(function () {
        var id = $(this).attr("id").replace('st_status','');
        manterStatusServico('DesativarServico', id, $(this));
    });

    $(".servico-desativo").click(function () {
        var id = $(this).attr("id").replace('st_status','');
        manterStatusServico('AtivarServico', id, $(this));
    });

});