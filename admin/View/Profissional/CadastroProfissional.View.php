<style>
    .icheckbox_square-purple {
        margin: 0 !important;
    }
</style>
<div class="main-content">
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Profissional
                        </a>
                    </li>
                    <li class="active">
                        Cadastro de Profissional
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Profissional
                        <small> Cadastro de Profissional</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <?php
        Modal::load();
        ?>
        <div class="row">
            <?php
            echo $form;
            ?>
            <div class="form-group">
                <label>
                    Color Palette
                </label>
                <div class="input-group">
                    <input type="text" value="" class="form-control" id="selected-color1">
                    <span class="btn input-group-addon" data-toggle="dropdown">color</span>
                    <ul class="dropdown-menu pull-right center">
                        <li>
                            <div class="color-palette bootstrap-colorpalette"><div><button type="button" class="btn-color" style="background-color:#000000" data-value="#000000" title="#000000"></button><button type="button" class="btn-color" style="background-color:#424242" data-value="#424242" title="#424242"></button><button type="button" class="btn-color" style="background-color:#636363" data-value="#636363" title="#636363"></button><button type="button" class="btn-color" style="background-color:#9C9C94" data-value="#9C9C94" title="#9C9C94"></button><button type="button" class="btn-color" style="background-color:#CEC6CE" data-value="#CEC6CE" title="#CEC6CE"></button><button type="button" class="btn-color" style="background-color:#EFEFEF" data-value="#EFEFEF" title="#EFEFEF"></button><button type="button" class="btn-color" style="background-color:#F7F7F7" data-value="#F7F7F7" title="#F7F7F7"></button><button type="button" class="btn-color" style="background-color:#FFFFFF" data-value="#FFFFFF" title="#FFFFFF"></button></div><div><button type="button" class="btn-color" style="background-color:#FF0000" data-value="#FF0000" title="#FF0000"></button><button type="button" class="btn-color" style="background-color:#FF9C00" data-value="#FF9C00" title="#FF9C00"></button><button type="button" class="btn-color" style="background-color:#FFFF00" data-value="#FFFF00" title="#FFFF00"></button><button type="button" class="btn-color" style="background-color:#00FF00" data-value="#00FF00" title="#00FF00"></button><button type="button" class="btn-color" style="background-color:#00FFFF" data-value="#00FFFF" title="#00FFFF"></button><button type="button" class="btn-color" style="background-color:#0000FF" data-value="#0000FF" title="#0000FF"></button><button type="button" class="btn-color" style="background-color:#9C00FF" data-value="#9C00FF" title="#9C00FF"></button><button type="button" class="btn-color" style="background-color:#FF00FF" data-value="#FF00FF" title="#FF00FF"></button></div><div><button type="button" class="btn-color" style="background-color:#F7C6CE" data-value="#F7C6CE" title="#F7C6CE"></button><button type="button" class="btn-color" style="background-color:#FFE7CE" data-value="#FFE7CE" title="#FFE7CE"></button><button type="button" class="btn-color" style="background-color:#FFEFC6" data-value="#FFEFC6" title="#FFEFC6"></button><button type="button" class="btn-color" style="background-color:#D6EFD6" data-value="#D6EFD6" title="#D6EFD6"></button><button type="button" class="btn-color" style="background-color:#CEDEE7" data-value="#CEDEE7" title="#CEDEE7"></button><button type="button" class="btn-color" style="background-color:#CEE7F7" data-value="#CEE7F7" title="#CEE7F7"></button><button type="button" class="btn-color" style="background-color:#D6D6E7" data-value="#D6D6E7" title="#D6D6E7"></button><button type="button" class="btn-color" style="background-color:#E7D6DE" data-value="#E7D6DE" title="#E7D6DE"></button></div><div><button type="button" class="btn-color" style="background-color:#E79C9C" data-value="#E79C9C" title="#E79C9C"></button><button type="button" class="btn-color" style="background-color:#FFC69C" data-value="#FFC69C" title="#FFC69C"></button><button type="button" class="btn-color" style="background-color:#FFE79C" data-value="#FFE79C" title="#FFE79C"></button><button type="button" class="btn-color" style="background-color:#B5D6A5" data-value="#B5D6A5" title="#B5D6A5"></button><button type="button" class="btn-color" style="background-color:#A5C6CE" data-value="#A5C6CE" title="#A5C6CE"></button><button type="button" class="btn-color" style="background-color:#9CC6EF" data-value="#9CC6EF" title="#9CC6EF"></button><button type="button" class="btn-color" style="background-color:#B5A5D6" data-value="#B5A5D6" title="#B5A5D6"></button><button type="button" class="btn-color" style="background-color:#D6A5BD" data-value="#D6A5BD" title="#D6A5BD"></button></div><div><button type="button" class="btn-color" style="background-color:#E76363" data-value="#E76363" title="#E76363"></button><button type="button" class="btn-color" style="background-color:#F7AD6B" data-value="#F7AD6B" title="#F7AD6B"></button><button type="button" class="btn-color" style="background-color:#FFD663" data-value="#FFD663" title="#FFD663"></button><button type="button" class="btn-color" style="background-color:#94BD7B" data-value="#94BD7B" title="#94BD7B"></button><button type="button" class="btn-color" style="background-color:#73A5AD" data-value="#73A5AD" title="#73A5AD"></button><button type="button" class="btn-color" style="background-color:#6BADDE" data-value="#6BADDE" title="#6BADDE"></button><button type="button" class="btn-color" style="background-color:#8C7BC6" data-value="#8C7BC6" title="#8C7BC6"></button><button type="button" class="btn-color" style="background-color:#C67BA5" data-value="#C67BA5" title="#C67BA5"></button></div><div><button type="button" class="btn-color" style="background-color:#CE0000" data-value="#CE0000" title="#CE0000"></button><button type="button" class="btn-color" style="background-color:#E79439" data-value="#E79439" title="#E79439"></button><button type="button" class="btn-color" style="background-color:#EFC631" data-value="#EFC631" title="#EFC631"></button><button type="button" class="btn-color" style="background-color:#6BA54A" data-value="#6BA54A" title="#6BA54A"></button><button type="button" class="btn-color" style="background-color:#4A7B8C" data-value="#4A7B8C" title="#4A7B8C"></button><button type="button" class="btn-color" style="background-color:#3984C6" data-value="#3984C6" title="#3984C6"></button><button type="button" class="btn-color" style="background-color:#634AA5" data-value="#634AA5" title="#634AA5"></button><button type="button" class="btn-color" style="background-color:#A54A7B" data-value="#A54A7B" title="#A54A7B"></button></div><div><button type="button" class="btn-color" style="background-color:#9C0000" data-value="#9C0000" title="#9C0000"></button><button type="button" class="btn-color" style="background-color:#B56308" data-value="#B56308" title="#B56308"></button><button type="button" class="btn-color" style="background-color:#BD9400" data-value="#BD9400" title="#BD9400"></button><button type="button" class="btn-color" style="background-color:#397B21" data-value="#397B21" title="#397B21"></button><button type="button" class="btn-color" style="background-color:#104A5A" data-value="#104A5A" title="#104A5A"></button><button type="button" class="btn-color" style="background-color:#085294" data-value="#085294" title="#085294"></button><button type="button" class="btn-color" style="background-color:#311873" data-value="#311873" title="#311873"></button><button type="button" class="btn-color" style="background-color:#731842" data-value="#731842" title="#731842"></button></div><div><button type="button" class="btn-color" style="background-color:#630000" data-value="#630000" title="#630000"></button><button type="button" class="btn-color" style="background-color:#7B3900" data-value="#7B3900" title="#7B3900"></button><button type="button" class="btn-color" style="background-color:#846300" data-value="#846300" title="#846300"></button><button type="button" class="btn-color" style="background-color:#295218" data-value="#295218" title="#295218"></button><button type="button" class="btn-color" style="background-color:#083139" data-value="#083139" title="#083139"></button><button type="button" class="btn-color" style="background-color:#003163" data-value="#003163" title="#003163"></button><button type="button" class="btn-color" style="background-color:#21104A" data-value="#21104A" title="#21104A"></button><button type="button" class="btn-color" style="background-color:#4A1031" data-value="#4A1031" title="#4A1031"></button></div></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->