var Calendar = function () {
    //function to initiate Full CAlendar
    var runCalendar = function () {
        //VARIÁVEL GLOBAL
        var home = $("#home").attr('data-val');
        var metodo = $("#metodo").val();
        var urlValida = home + 'library/Controller/Ajax.Controller.php?acao=Ajax&controller=' + metodo;

        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                customButtons: {
                    legendaButton: {
                        click: function () {
                            $("#j_legenda").click();
                        }
                    },
                    gridButton: {
                        click: function () {
                            $("#calendar").fadeOut('fast');
                            $("#grid").fadeIn('slow');
                        }
                    },
                    pesquisaButton: {
                        click: function () {
                            $("#j_pesquisar").click();
                        }
                    },
                    calendarButton: {}
                },
                bootstrapFontAwesome: {
                    legendaButton: 'fa-align-left',
                    gridButton: 'fa-list',
                    pesquisaButton: 'fa-cog active',
                    calendarButton: 'fa-calendar'
                },
                locale: 'pt-br',
                themeSystem: 'bootstrap',
                plugins: ['bootstrap', 'dayGrid', 'timeGrid', 'list', 'interaction'],
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'legendaButton,pesquisaButton calendarButton,gridButton dayGridMonth,timeGridWeek,timeGridDay,listWeek'
                },
                buttonText: {
                    today: 'Hoje',
                    month: 'Mês',
                    week: 'Semana',
                    day: 'Dia',
                    list: 'Lista'
                },
                allDaySlot: false,
                slotEventOverlap: true,
                eventLimitText: 'Mais',
                navLinks: true, // can click day/week names to navigate views
                editable: true,
                eventLimit: 2, // allow "more" link when too many events
                selectable: true,
                slotDuration: '00:10:00',
                minTime: "06:00:00", // HORA DE INICIO DO ATENDIMENTO
                maxTime: "23:00:00", // HORA DE TERMINO DO ATENDIMENTO
                slotLabelFormat: {
                    hour: 'numeric',
                    minute: '2-digit',
                    omitZeroMinute: false,
                    meridiem: 'short'
                },
                events: urlValida,
                extraParams: function () {
                    return {
                        cachebuster: new Date().valueOf()
                    };
                },
                select: function (info) {
                    var dia = info.start.getDate();
                    var mes = (info.start.getMonth() + 1);
                    var hora_inicio;
                    var dt_agenda;
                    var hora = info.start.getHours();
                    var minuto = info.start.getMinutes();

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
                    dt_agenda = dia + '/' + mes + '/' + info.start.getFullYear();

                    $("#nu_hora_inicio_agenda").val(hora_inicio);
                    $("#dt_agenda").val(dt_agenda);
                    $("#nu_duracao").val(null);
                    $("#nu_hora_fim_agenda").val(null);
                    $("#nu_valor2").val(null);
                    $("#ds_observacao").val(null);
                    $('#co_agenda').val(null);
                    $('#st_status').select2("destroy").val(1).select2({allowClear: false});

                    Calendar.LimpaCombosClienteServico();
                    Calendar.LimpaCombosProfAssi();
                    Calendar.IniciaCombosProfAssi();
                    Calendar.LimpaValidacao();

                    $("#j_cadastro").click();

                },
                // ABRE MODAL DE DETALHAMENTO DO AGENDAMENTO
                eventClick: function (info) {
                    info.jsEvent.preventDefault();
                    var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', info.event.id);
                    var assistente = (dados.assistente) ? dados.assistente : 'Sem Assistente';
                    $('.st_status b').html($('#Status-Agendamento-' + dados.st_status).html());
                    $('.cliente b').text(dados.cliente);
                    $('.assistente b').text(assistente);
                    $('.nu_duracao b').text(dados.nu_duracao + ' Minutos');
                    $('.profissional b').text(dados.profissional);
                    $('.servico b').text(dados.no_servico);
                    $('.nu_valor b').text(dados.nu_valor);
                    $('.dia b').text(dados.dia);
                    $('#co_agenda_listagem').val(info.event.id);
                    $('.periodo b').text(' de ' + dados.inicio + ' a ' + dados.fim);
                    $('.acao').hide();
                    if (dados.st_status < 5) {
                        $('.btn-finalizar').show();
                        $('.btn-editar').show();
                        $('.btn-deletar').show();
                    }

                    $("#j_listar").click();
                },
                eventDrop: function (info) {
                    var hoje = new Date();
                    hoje.setHours(0);
                    hoje.setMinutes(0);
                    hoje.setSeconds(0);
                    if (info.event.start < hoje) {
                        Funcoes.Alerta('Não pode Mudar Agendamento para uma data inferior a de hoje.');
                        info.revert();
                    } else if (info.oldEvent.start < hoje) {
                        Funcoes.Alerta('Não pode Mudar Agendamento passados.');
                        info.revert();
                    } else {
                        $("#modal_confirma_ativacao .modal-body b").text("Confirma a mudança do agendamento para "
                            + info.event.start.toLocaleString());

                        $("#model_confirmacao_ativacao").click();
                    }

                    $('#btn-success-modal_confirma_ativacao').click(function () {

                        var diaIni = info.event.start.getDate();
                        var mesIni = (info.event.start.getMonth() + 1);
                        var anoIni = info.event.start.getFullYear();
                        var horaIni = info.event.start.getHours();
                        var minutoIni = info.event.start.getMinutes();
                        if (diaIni < 10) {
                            diaIni = '0' + diaIni;
                        }
                        if (mesIni < 10) {
                            mesIni = '0' + mesIni;
                        }
                        if (horaIni < 10) {
                            horaIni = '0' + horaIni;
                        }
                        if (minutoIni < 10) {
                            minutoIni = '0' + minutoIni;
                        }
                        var diaFim = info.event.end.getDate();
                        var mesFim = (info.event.end.getMonth() + 1);
                        var anoFim = info.event.end.getFullYear();
                        var horaFim = info.event.end.getHours();
                        var minutoFim = info.event.end.getMinutes();
                        if (diaFim < 10) {
                            diaFim = '0' + diaFim;
                        }
                        if (mesIni < 10) {
                            mesFim = '0' + mesFim;
                        }
                        if (horaFim < 10) {
                            horaFim = '0' + horaFim;
                        }
                        if (minutoFim < 10) {
                            minutoFim = '0' + minutoFim;
                        }
                        var dt_inicio_agenda = anoIni + '-' + mesIni + '-' + diaIni + ' '
                            + horaIni + ':' + minutoIni + ':00';
                        var dt_fim_agenda = anoFim + '-' + mesFim + '-' + diaFim + ' '
                            + horaFim + ':' + minutoFim + ':00';

                        var data = {
                            dt_inicio_agenda: dt_inicio_agenda,
                            dt_fim_agenda: dt_fim_agenda,
                            co_agenda: info.event.id
                        };
                        var dados = Funcoes.Ajax('Agenda/DropAgendamentoAjax', data);
                        if (dados) {
                            if (dados.sucesso && dados.msg === "atualizado") {
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
                    });

                    $('.cancelar').click(function () {
                        info.revert();
                    });
                },
                eventResize: function (info) {
                    info.revert();
                }
            });

            calendar.render();
        });
    };
    return {
        init: function () {
            runCalendar();
            $('#grid, #pesquisandoAgendamento').hide();

            $(window).load(function () {
                $('.fc-calendarButton-button').addClass('active');
                $('.fc-pesquisaButton-button').removeClass('btn-primary').addClass('btn-light-grey');
                $('.fc-legendaButton-button').removeClass('btn-primary').addClass('btn-warning');
            });

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

            $('.btn-visualizar').click(function () {
                var coAgenda = $(this).attr('data-co-agenda');

                var dados = Funcoes.Ajax('Agenda/GetAgendaAjax', coAgenda);
                var assistente = (dados.assistente) ? dados.assistente : 'Sem Assistente';
                $('.st_status b').html($('#Status-Agendamento-' + dados.st_status).html());
                $('.cliente b').text(dados.cliente);
                $('.assistente b').text(assistente);
                $('.nu_duracao b').text(dados.nu_duracao + ' Minutos');
                $('.profissional b').text(dados.profissional);
                $('.servico b').text(dados.no_servico);
                $('.nu_valor b').text(dados.nu_valor);
                $('.dia b').text(dados.dia);
                $('#co_agenda_listagem').val(coAgenda);
                $('.periodo b').text(' de ' + dados.inicio + ' a ' + dados.fim);
                $('.acao').hide();
                if (dados.st_status < 5) {
                    $('.btn-finalizar').show();
                    $('.btn-editar').show();
                    $('.btn-deletar').show();
                }

                $("#j_listar").click();
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

            // DIRECIONA PARA O HISTÓRICO DO AGENDAMENTO
            $(".btn-historico").click(function () {
                var home = $("#home").attr('data-val');
                var coAgenda = $('#co_agenda_listagem').val();
                var dados = Funcoes.Ajax('Agenda/GetUrlHistoricoAgendamento', coAgenda);
                if (dados) {
                    window.location.href = home + dados;
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
                    if (dados.sucesso && dados.msg === "atualizado") {
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

            // FINALIZA O AGENDAMENTO (muda st_status para finalizado)
            $(".btn-finalizar").click(function () {
                var data = {
                    co_agenda: $('#co_agenda_listagem').val()
                };
                var dados = Funcoes.Ajax('Agenda/FinalizarAgendaAjax', data);
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

            // CARREGA CALENDÁRIO
            $('#carregaCalendar').click(function () {
                $("#grid").fadeOut('fast');
                $("#calendar").fadeIn('slow');
                return false;
            });

            // CARREGA CALENDÁRIO
            $('#j_pesquisa').click(function () {
                $("#j_pesquisar").click();
                return false;
            });

            // Abre a modal de legendas
            $('#j_legendas').click(function () {
                $("#j_legenda").click();
                return false;
            });

            // NOVO AGENDAMENTO GRID
            $('#novaAgenda').click(function () {
                var hoje = new Date();
                var dia = hoje.getDay();
                var mes = (hoje.getMonth() + 1);
                if (dia < 10) {
                    dia = '0' + dia;
                }
                if (mes < 10) {
                    mes = '0' + mes;
                }
                $("#nu_hora_inicio_agenda").val('08:00');
                $("#dt_agenda").val(dia + '/' + mes + '/' + hoje.getFullYear());
                $("#nu_duracao").val(null);
                $("#nu_hora_fim_agenda").val(null);
                $("#nu_valor2").val(null);
                $("#ds_observacao").val(null);
                $('#co_agenda').val(null);
                $('#st_status').select2("destroy").val(1).select2({allowClear: false});

                Calendar.LimpaCombosClienteServico();
                Calendar.LimpaCombosProfAssi();
                Calendar.IniciaCombosProfAssi();
                Calendar.LimpaValidacao();

                $("#j_cadastro").click();

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
            Funcoes.TiraValidacao('co_assistente');
            Funcoes.TiraValidacao('co_profissional');
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

            var newOptionProf = new Option('Selecione um Profissional', null, false, false);
            var newOptionAss = new Option('Selecione um Assistente', null, false, false);
            comboProf.append(newOptionProf).trigger('change');
            comboAss.append(newOptionAss).trigger('change');

            var optionsProf = Funcoes.Ajax('Profissional/GetProfissionaisServicoAjax', coServico);
            var optionsAss = Funcoes.Ajax('Profissional/GetAssistentesServicoAjax', coServico);

            console.log(optionsAss.length);

            $.each(optionsProf, function (key, value) {
                comboProf.append(new Option(value.no_pessoa, value.co_profissional, false, false)).trigger('change');
            });

            if (optionsAss.length) {
                if (!$('co_assistente').hasClass('ob')) {
                    $('co_assistente').addClass('ob');
                }
                $.each(optionsAss, function (key, value) {
                    comboAss.append(new Option(value.no_pessoa, value.co_profissional, false, false)).trigger('change');
                });
                $('.co_assistente_parent span.symbol').show();
            } else {
                if ($('co_assistente').hasClass('ob')) {
                    $('co_assistente').removeClass('ob');
                }
                $('.co_assistente_parent span.symbol').hide();
            }

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