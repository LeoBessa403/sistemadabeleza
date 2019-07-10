var Calendar = function () {
    //function to initiate Full CAlendar
    var runCalendar = function () {
        //VARIÁVEL GLOBAL
        var home = $("#home").attr('data-val');
        Funcoes.Alerta("home: " + home);
        var metodo = $("#metodo").val();
        var urlValida = home + 'library/Controller/Ajax.Controller.php?acao=Ajax&controller=' + metodo;

        var calendar = $('#calendar').fullCalendar({
            buttonText: {
                prev: '<i class="fa fa-chevron-left"></i>',
                next: '<i class="fa fa-chevron-right"></i>'
            },
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            events: urlValida,
            editable: true,
            selectable: true,
            timeFormat: 'H:mm',
            firstHour: 8, // CALENDAR COMEÇO DAS HORAS
            slotMinutes: 10, // CALENDAR SLOT MINUTOS
            minTime: 6, // HORA DE INICIO DO ATENDIMENTO
            maxTime: 22, // HORA DE TERMINO DO ATENDIMENTO
            selectHelper: true,
            select: function (start) {
                var dia = start.getDate();
                var mes = (start.getMonth() + 1);
                var hora_inicio;
                var dt_agenda;
                var hora = start.getHours();
                var minuto = start.getMinutes();

                if (dia < 10) {
                    dia = '0' + dia;
                }
                if (mes < 10) {
                    mes = '0' + mes;
                }

                if (hora < 10) {
                    hora = '0' + hora;
                }
                if (minuto < 10) {
                    minuto = '0' + minuto;
                }
                if (hora > 0) {
                    hora_inicio = hora + ':' + minuto;
                }
                if(!hora_inicio){
                    hora_inicio = '08:00';
                }
                dt_agenda = dia + '/' + mes + '/' + start.getFullYear();

                $("#nu_hora_inicio_agenda").val(hora_inicio);
                $("#dt_agenda").val(dt_agenda);
                $("#j_cadastro").click();

            },
            eventClick: function (calEvent) {
                if (calEvent.id) {
                    // $.get(urlValida, {valida: 'pesquisa_agenda', co_agenda: calEvent.id},
                    //     function (retorno) {
                    //         window.location.href = home + retorno;
                    //     });
                } else {

                    var time = calEvent.start;
                    var dia = time.getDate();
                    var mes = (time.getMonth() + 1);
                    var hora_inicio = '20-00';
                    var dt_inicio;
                    if (dia < 10) {
                        dia = '0' + dia;
                    }
                    if (mes < 10) {
                        mes = '0' + mes;
                    }
                    dt_inicio = dia + '-' + mes + '-' + time.getFullYear();

                    // $.get(urlValida, {valida: 'cadastro_agenda', dt_inicio: dt_inicio, hr_inicio: hora_inicio},
                    //     function (retorno) {
                    //         window.location.href = home + retorno;
                    //     });
                }
            }
        });
    };
    return {
        init: function () {
            runCalendar();
            $('.fc-button-agendaDay').click();


            $('#co_servico').change(function () {
                var dados = Funcoes.Ajax('Servico/GetServicoAjax', $(this).val());
                $("#nu_duracao").val(dados.nu_duracao);
                var nu_hora_inicio_agenda = $("#nu_hora_inicio_agenda").val().split(':').map(Number);
                nu_hora_inicio_agenda = (parseInt(nu_hora_inicio_agenda[0]*60+nu_hora_inicio_agenda[1])) + parseInt(dados.nu_duracao);
                var horas = Math.floor((nu_hora_inicio_agenda)/60);
                var minutos = nu_hora_inicio_agenda%60;
                if (horas < 10) {
                    horas = '0' + horas;
                }
                if (minutos < 10) {
                    minutos = '0' + minutos;
                }
                $("#nu_hora_fim_agenda").val(horas + ':' + minutos);
                $("#nu_valor").val(dados.nu_valor);

            });

            $("#CadastroAgendamento").submit(function () {
                var data = $(this).serializeArray();
                var metodo = $(this).attr('action').split('/');
                var dados = Funcoes.Ajax(metodo[5] + '/' + metodo[6], data);
                return false;
            });
        }
    };
}();
Calendar.init();