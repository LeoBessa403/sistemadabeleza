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
        var preco_cadastrado = parseInt($("#valor_servico").val().replace('.', '').replace(',', '').trim());
        var preco_promocional = parseInt($("#nu_valor").val().replace('.', '').replace(',', '').replace('R$', '').trim());

        if ($("#valor_servico").val() == '') {
            limpaCamposValores();
        } else {
            if ($("#nu_valor").val() != '') {
                if (preco_cadastrado < preco_promocional) {
                    Funcoes.Alerta("Preço Promocinal de <b>" + $("#nu_valor").val() +
                        "</b> é maior que o Preço do Serviço <b>R$ " + $("#valor_servico").val().replace('.', ',') +
                        "</b> já cadastrado!");
                    limpaCamposValores();
                }
                var desconto = 100 - ((preco_promocional / preco_cadastrado) * 100);
                $('#desconto').val(desconto.toFixed(2));
            }else{
                limpaCamposValores();
            }
        }
    });

    $('#desconto').blur(function () {
        var preco_cadastrado = parseInt($("#valor_servico").val().replace('.', '').replace(',', '').trim());
        var desconto_promocional = parseInt($("#desconto").val().replace('.', '').replace(',', '').trim());

        if ($("#valor_servico").val() == '') {
            limpaCamposValores();
        } else {
            if ($("#desconto").val() != '') {
                if (desconto_promocional > 9999) {
                    Funcoes.Alerta("Desconto Promocinal de <b>" + $("#nu_valor").val() + "</b> é maior que o permitido!");
                    limpaCamposValores();
                }
                var nu_valor = preco_cadastrado - (((preco_cadastrado / 100) * desconto_promocional) / 100);
               nu_valor = parseInt(nu_valor);
               nu_valor = (nu_valor / 100);
                $('#nu_valor').val("R$ " + nu_valor.toFixed(2));
            }else{
                limpaCamposValores();
            }
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