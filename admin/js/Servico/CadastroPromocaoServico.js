$(function () {

    //VARIÁVEIS GLOBAIS
    var dados = constantes();
    var home = dados['HOME'];
    var urlValida = home + 'admin/Controller/Ajax.Controller.php';

    $('#co_servico').change(function () {
        CarregaValorServico($(this).val());
    });

    function CarregaValorServico(coServico) {
        $.ajax({
            url: urlValida,
            data: {acao: 'CarregaValorServico', co_servico: coServico},
            type: "POST",
            dataType: "json",
            beforeSend: function () {
                $("#load").click();
            },
            success: function (data) {
                $("#valor_servico").val(data.nu_valor);
                limpaCamposValores();
            },
            error: function (request, status, erro) {
                Funcoes.Erro("Problema ocorrido: " + status + "\nDescição: " + erro);
            },
            complete: function () {
                $("#carregando .cancelar").click();
            }
        });
    }

    $('#nu_valor').blur(function () {
        var preco_cadastrado = $("#valor_servico").val().replace('.', '').replace(',', '');
        var preco_promocional = $("#nu_valor").val().replace('.', '').replace(',', '');
        if(preco_cadastrado == ''){
            limpaCamposValores();
        }else{
            if(preco_cadastrado < preco_promocional){
                Funcoes.Alerta('Preço Promocinal de ' + preco_promocional +
                ' é maior que o Preço do Serviço R$ ' + preco_cadastrado +
                ' já cadastrado!');
                limpaCamposValores();
            }
        }

    });
    $('#desconto').blur(function () {
        if($("#valor_servico").val() == ''){
            limpaCamposValores();
        }else{
            Funcoes.Alerta('Preco: ' + $("#valor_servico").val());
        }
    });

    function limpaCamposValores() {
        $("#nu_valor").val('');
        $("#desconto").val('');
        tiraValidacao('nu_valor');
    }

    function tiraValidacao(id) {
        $('#' + id).parent(".form-group").removeClass('has-success').removeClass('has-error');
        $('#' + id).parents('#form-group-' + id).removeClass('has-success').removeClass('has-error');
        $('span#' + id + '-info').text(".");
        return true;
    }

});