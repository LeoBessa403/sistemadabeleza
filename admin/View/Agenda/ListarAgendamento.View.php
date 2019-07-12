<!--  MODAL FORM DE CADASTRO E EDIÇÃO -->
<div class="modal fade in modal-overflow j_listar" id="listarAgendamento" tabindex="-1"
     role="dialog" aria-hidden="true">
    <div class="modal-header btn-light-grey">
        <button type="button" class="close cancelar" data-dismiss="modal" aria-hidden="true">
            X
        </button>
        <h4 class="modal-title">Visualisar Agendamento</h4>
    </div>
    <div class="modal-body" style="padding: 20px;">
        <?php
        //        foreach (StatusAgendamentoEnum::$descricao as $chave => $desc) {
        //            if ($chave != StatusAgendamentoEnum::DELETADO) {
        //                echo '<span class="label-' . StatusAgendamentoEnum::$cores[$chave] . '">';
        //                echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> ' . $desc . ' / ';
        //            }
        //        }
        //        ?>
        <div class="row col-sm-12" id="listar-agendamento">
            <div id="form-group-st_status" class="form-group col-sm-12">
                <label for="st_status" class="col-sm-3 align-right">
                    Status Agendamento:
                </label>
                <div class="col-sm-9">
                    <span class="st_status"><b></b></span>
                </div>
            </div>
            <div id="form-group-profissional" class="form-group col-sm-12">
                <label for="profissional" class="col-sm-3  align-right">
                    Profissional:
                </label>
                <div class="col-sm-9">
                    <span class="profissional"><b></b></span>
                </div>
            </div>
            <div id="form-group-assistente" class="form-group col-sm-12">
                <label for="assistente" class="col-sm-3  align-right">
                    Assistente:
                </label>
                <div class="col-sm-9">
                    <span class="assistente"><b></b></span>
                </div>
            </div>
            <div id="form-group-cliente" class="form-group col-sm-12">
                <label for="cliente" class="col-sm-3  align-right">
                    Cliente:
                </label>
                <div class="col-sm-9">
                    <span class="cliente"><b></b></span>
                </div>
            </div>
            <div id="form-group-dia" class="form-group col-sm-12">
                <label for="dia" class="col-sm-3  align-right">
                    Data:
                </label>
                <div class="col-sm-9">
                    <span class="dia"><b></b></span>
                </div>
            </div>
            <div id="form-group-periodo" class="form-group col-sm-12">
                <label for="periodo" class="col-sm-3  align-right">
                    Período:
                </label>
                <div class="col-sm-9">
                    <span class="periodo"><b></b></span>
                </div>
            </div>
            <div id="form-group-nu_duracao" class="form-group col-sm-12">
                <label for="nu_duracao" class="col-sm-3  align-right">
                    Duração:
                </label>
                <div class="col-sm-9">
                    <span class="nu_duracao"><b></b></span>
                </div>
            </div>
            <div id="form-group-servico" class="form-group col-sm-12">
                <label for="servico" class="col-sm-3  align-right">
                    Serviço:
                </label>
                <div class="col-sm-9">
                    <span class="servico"><b></b></span>
                </div>
            </div>
            <div id="form-group-nu_valor" class="form-group col-sm-12">
                <label for="nu_valor" class="col-sm-3  align-right">
                    Preço R$:
                </label>
                <div class="col-sm-9">
                    <span class="nu_valor"><b></b></span>
                </div>
            </div>
        </div>
    </div>
</div>
<a data-toggle="modal" role="button" href="#listarAgendamento" id="j_listar"></a>