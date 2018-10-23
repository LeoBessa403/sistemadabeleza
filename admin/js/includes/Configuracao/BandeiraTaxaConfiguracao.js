$(function () {

    $('.aceite-deb').each(function () {
        if (!$(this).is(":checked")) {
            var id = $(this).attr("id").replace('aceite-bandeira-taxa-deb-', '');
            $('#bandeira-taxa-deb-' + id).attr('disabled', 'disabled');
        }
    });

    $('.aceite-deb').change(function () {
        var id = $(this).attr("id").replace('aceite-bandeira-taxa-deb-', '');
        if ($(this).is(":checked")) {
            $('#bandeira-taxa-deb-' + id).removeAttr('disabled');
        }else{
            $('#bandeira-taxa-deb-' + id).attr('disabled', 'disabled');
        }
    });

    $('.aceite-cred').each(function () {
        if (!$(this).is(":checked")) {
            var id = $(this).attr("id").replace('aceite-bandeira-taxa-cred-', '');
            $('#bandeira-taxa-cred-' + id).attr('disabled', 'disabled');
            $('#bandeira-taxaAntec-cred-' + id).attr('disabled', 'disabled');
        }
    });

    $('.aceite-cred').change(function () {
        var id = $(this).attr("id").replace('aceite-bandeira-taxa-cred-', '');
        if ($(this).is(":checked")) {
            $('#bandeira-taxa-cred-' + id).removeAttr('disabled');
            $('#bandeira-taxaAntec-cred-' + id).removeAttr('disabled');
        }else{
            $('#bandeira-taxa-cred-' + id).attr('disabled', 'disabled');
            $('#bandeira-taxaAntec-cred-' + id).attr('disabled', 'disabled');
        }
    });


});