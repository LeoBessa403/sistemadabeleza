var Calendar = function () {
    //function to initiate Full CAlendar
    var runCalendar = function () {
        //VARIÁVEL GLOBAL
        var home = $("#home").attr('data-val');
        var metodo = $("#metodo").val();
        var urlValida = home + 'library/Controller/Ajax.Controller.php?acao=Ajax&controller=' + metodo;

        $('#calendar').fullCalendar({
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
            // ABRE MODAL DE CADASTRO DO AGENDAMENTO
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
                $("#nu_duracao").val(null);
                $("#nu_hora_fim_agenda").val(null);
                $("#nu_valor2").val(null);
                $("#ds_observacao").val(null);
                $('#co_agenda').val(null);
                $("#st_status").val(1);

                Calendar.LimpaCombosClienteServico();
                Calendar.LimpaCombosProfAssi();
                Calendar.IniciaCombosProfAssi();
                Calendar.LimpaValidacao();

                $("#j_cadastro").click();

            },
            // ABRE MODAL DE DETALHAMENTO DO AGENDAMENTO
            eventClick: function (calEvent) {
                var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', calEvent.id);
                $('.st_status b').html($('#Status-Agendamento-' + dados.st_status).html());
                $('.cliente b').text(dados.cliente);
                $('.assistente b').text(dados.assistente);
                $('.nu_duracao b').text(dados.nu_duracao);
                $('.profissional b').text(dados.profissional);
                $('.servico b').text(dados.no_servico);
                $('.nu_valor b').text(dados.nu_valor);
                $('.dia b').text(dados.dia);
                $('#co_agenda_listagem').val(calEvent.id);
                $('.periodo b').text(' de ' + dados.inicio + ' a ' + dados.fim);
                $("#j_listar").click();
            }
        });
    };
    return {
        init: function () {
            runCalendar();
            $('.fc-button-agendaDay').click();

            // SELECIONA OS PROFISSIONAIS E ASSISTENTES DO SERVIÇO SELECIONADO
            $('#co_servico').change(function () {
                var coServico = $(this).val();
                Calendar.LimpaCombosProfAssi();
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
                Calendar.CarregaCombos(coServico);
            });

            // ABRE MODAL DE DELEÇÃO DO AGENDAMENTO
            $(".btn-deletar").click(function () {
                Funcoes.TiraValidacao('ds_motivo');
                $("#j_deletar").click();
            });

            // ABRE MODAL DE EDIÇÃO DO AGENDAMENTO
            $(".btn-editar").click(function () {
                var coAgenda = $('#co_agenda_listagem').val();
                var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', coAgenda);

                $('#st_status').select2("destroy").val(dados.st_status).select2({allowClear: false});
                $('#co_cliente').select2("destroy").val(dados.co_cliente).select2({allowClear: false});
                $("#nu_valor").val(dados.nu_valor);
                $("#nu_valor2").val(dados.nu_valor);
                $("#dt_agenda").val(dados.dia);
                $("#nu_duracao").val(dados.nu_duracao);
                $("#nu_hora_inicio_agenda").val(dados.inicio);
                $("#nu_hora_fim_agenda").val(dados.fim);
                $("#ds_observacao").val(dados.ds_observacao);
                Calendar.LimpaValidacao();
                $("#j_cadastro").click();

                $('#co_servico').select2("destroy").val(dados.co_servico).select2({allowClear: false}).trigger('change');
                $('#co_profissional').select2("destroy").val(dados.co_profissional).select2({allowClear: false});
                $('#co_assistente').select2("destroy").val(dados.co_assistente).select2({allowClear: false});
                $("#co_agenda").val(coAgenda);
            });

            // CADASTRO DO AGENDAMENTO
            $("#CadastroAgendamento").submit(function () {
                var data = $(this).serializeArray();
                var metodo = $(this).attr('action').split('/');
                var dados = Funcoes.Ajax(metodo[5] + '/' + metodo[6], data);
                if (dados) {
                    if (dados.sucesso && dados.msg === "cadastrado") {
                        Funcoes.CadastradoSucesso()
                    } else if (dados.sucesso && dados.msg === "atualizado") {
                        Funcoes.AtualizadoSucesso();
                    } else {
                        Funcoes.Alerta(dados.msg);
                    }
                    if (dados.sucesso) {
                        Calendar.Renderiza();
                    }
                } else {
                    Funcoes.Erro("Erro: " + dados.msg);
                }
                return false;
            });

            // DELETA O AGENDAMENTO (muda st_status para deletado)
            $("#DeletarAgendamento").submit(function () {
                var data = {
                    ds_motivo: $('#ds_motivo').val(),
                    co_agenda: $('#co_agenda_listagem').val()
                };
                var metodo = $(this).attr('action').split('/');
                var dados = Funcoes.Ajax(metodo[5] + '/' + metodo[6], data);
                if (dados) {
                    if (dados.sucesso && dados.msg === "deletado") {
                        Funcoes.DeletadoSucesso();
                    } else {
                        Funcoes.Alerta(dados.msg);
                    }
                    if (dados.sucesso) {
                        Calendar.Renderiza();
                    }
                } else {
                    Funcoes.Erro("Erro: " + dados.msg);
                }
                return false;
            });
        },
        IniciaCombosProfAssi: function () {
            $("#co_profissional").select2({
                allowClear: false
            });
            $("#co_assistente").select2({
                allowClear: false
            });
        },
        LimpaCombosClienteServico: function () {
            $('#co_servico, #co_cliente').select2("destroy").val(null).select2({allowClear: false});
        },
        LimpaCombosProfAssi: function () {
            var comboProf = $("#co_profissional");
            var comboAss = $("#co_assistente");

            comboProf.select2("destroy");
            comboAss.select2("destroy");
            comboProf.empty();
            comboAss.empty();
        },
        CarregaCombos: function (coServico) {
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

            $.each(optionsProf, function (key, value) {
                comboProf.append(new Option(value.no_pessoa, value.co_profissional, false, false)).trigger('change');
            });
            $.each(optionsAss, function (key, value) {
                comboAss.append(new Option(value.no_pessoa, value.co_profissional, false, false)).trigger('change');
            });
            Calendar.IniciaCombosProfAssi();
        },
        Renderiza: function () {
            $(".close").click();
            setTimeout(function () {
                location.reload();
            }, 3000);
        },
        LimpaValidacao: function () {
            Funcoes.TiraValidacao('co_cliente');
            Funcoes.TiraValidacao('co_servico');
            Funcoes.TiraValidacao('nu_duracao');
            Funcoes.TiraValidacao('nu_hora_fim_agenda');
            Funcoes.TiraValidacao('co_profissional');
            Funcoes.TiraValidacao('co_assistente');
            Funcoes.TiraValidacao('st_status');
        }
    };
}();
Calendar.init();