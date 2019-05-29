$(function () {

    $('.atende-profissional').each(function () {
        CarregaDisabilita($(this));
    }).change(function () {
        DisabilitaInput($(this));
    });

    function CarregaDisabilita(element) {
        if (!element.is(":checked")) {
            var id = element.attr("id").replace('atende-profissional-', '');
            $('.atende-profissional-' + id).attr('readonly', 'readonly');
        }
    }

    function DisabilitaInput(element) {
        var id = element.attr("id").replace('atende-profissional-', '');
        if (element.is(":checked")) {
            $('.atende-profissional-' + id).removeAttr('readonly');
        } else {
            $('.atende-profissional-' + id).attr('readonly', 'readonly').val('0');
        }
    }

    $('form').submit(function () {
       return false;
    });
});