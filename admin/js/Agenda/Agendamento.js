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
                right: 'agendaWeek,agendaDay'
            },
            events: urlValida,
            editable: true,
            selectable: true,
            timeFormat: 'H:mm',
            eventLimit: true,
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
                if (!hora_inicio) {
                    hora_inicio = '08:00';
                }
                dt_agenda = dia + '/' + mes + '/' + start.getFullYear();

                $("#nu_hora_inicio_agenda").val(hora_inicio);
                $("#dt_agenda").val(dt_agenda);
                $("#j_cadastro").click();

            },
            eventClick: function (calEvent) {
                var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', calEvent.id);
                $('.st_status b').text(dados.st_status);
                $('.cliente b').text(dados.cliente);
                $('.assistente b').text(dados.assistente);
                $('.nu_duracao b').text(dados.nu_duracao);
                $('.profissional b').text(dados.profissional);
                $('.servico b').text(dados.no_servico);
                $('.nu_valor b').text(dados.nu_valor);
                $('.dia b').text(dados.dia);
                $('.periodo b').text(' de ' + dados.inicio + ' a ' + dados.fim);
                $("#j_listar").click();
            }
        });
    };
    return {
        init: function () {
            runCalendar();
            $('.fc-button-agendaDay').click();


            $('#co_servico').change(function () {
                var coServico = $(this).val();
                limpaCombosProfAssi();
                var dados = Funcoes.Ajax('Servico/GetServicoAjax', coServico);
                $("#nu_duracao").val(dados.nu_duracao);
                var nu_hora_inicio_agenda = $("#nu_hora_inicio_agenda").val().split(':').map(Number);
                nu_hora_inicio_agenda = (parseInt(nu_hora_inicio_agenda[0] * 60 + nu_hora_inicio_agenda[1])) + parseInt(dados.nu_duracao);
                var horas = Math.floor((nu_hora_inicio_agenda) / 60);
                var minutos = nu_hora_inicio_agenda % 60;
                if (horas < 10) {
                    horas = '0' + horas;
                }
                if (minutos < 10) {
                    minutos = '0' + minutos;
                }
                $("#nu_hora_fim_agenda").val(horas + ':' + minutos);
                $("#nu_valor").val(dados.nu_valor);
                $("#nu_valor2").val(dados.nu_valor);
                Funcoes.TiraValidacao('nu_duracao');
                Funcoes.TiraValidacao('nu_hora_fim_agenda');
                carregaCombos(coServico);

            });

            $("#CadastroAgendamento").submit(function () {
                var data = $(this).serializeArray();
                var metodo = $(this).attr('action').split('/');
                var dados = Funcoes.Ajax(metodo[5] + '/' + metodo[6], data);
                if (dados) {
                    if (dados.sucesso && dados.msg === "cadastrado") {
                        Funcoes.CadastradoSucesso()
                    } else if (dados.sucesso && dados.msg === "atualizado") {
                        Funcoes.AtualizadoSucesso();
                    } else if (dados.sucesso && dados.msg === "deletado") {
                        Funcoes.DeletadoSucesso();
                    } else {
                        Funcoes.Alerta(dados.msg);
                    }
                    if (dados.sucesso) {
                        $(".close").click();
                        setTimeout(function () {
                            location.reload();
                        }, 3000);
                    }
                } else {
                    Funcoes.Erro("Erro: " + dados.msg);
                }
                return false;
            });

            function carregaCombos(coServico) {
                var comboProf = $("#co_profissional");
                var comboAss = $("#co_assistente");

                var data = {
                    id: null,
                    text: 'Selecione um Profissional'
                };

                var newOptionProf = new Option(data.text, data.id, false, false);
                var newOptionAss = new Option(data.text, data.id, false, false);
                comboProf.append(newOptionProf).trigger('change');
                comboAss.append(newOptionAss).trigger('change');

                var optionsProf = Funcoes.Ajax('Profissional/GetProfissionaisServicoAjax', coServico);
                var optionsAss = Funcoes.Ajax('Profissional/GetProfissionaisServicoAjax', coServico);
                // var optionsAss = Funcoes.Ajax('Servico/GetServicoAjax', coServico);

                $.each(optionsProf, function (key, value) {
                    comboProf.append(new Option(value.no_pessoa, value.co_profissional, false, false)).trigger('change');
                });
                $.each(optionsAss, function (key, value) {
                    comboAss.append(new Option(value.no_pessoa, value.co_profissional, false, false)).trigger('change');
                });
                iniciaCombosProfAssi();
            }

            function limpaCombosProfAssi() {
                var comboProf = $("#co_profissional");
                var comboAss = $("#co_assistente");

                comboProf.select2("destroy");
                comboAss.select2("destroy");
                comboProf.empty();
                comboAss.empty();
            }

            function limpaCombosClienteServico() {
                var co_cliente = $("#co_cliente");
                var co_servico = $("#co_servico");

                co_cliente.select2("destroy");
                co_servico.select2("destroy");
                co_cliente.empty();
                co_servico.empty();
                co_cliente.select2({
                    allowClear: false
                });
                co_servico.select2({
                    allowClear: false
                });
            }

            function iniciaCombosProfAssi() {
                $("#co_profissional").select2({
                    allowClear: false
                });
                $("#co_assistente").select2({
                    allowClear: false
                });
            }

        }
    };
}();
Calendar.init();