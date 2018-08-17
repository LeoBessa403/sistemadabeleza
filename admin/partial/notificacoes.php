<li class="dropdown">
    <a class="dropdown-toggle" data-close-others="true" data-hover="dropdown" data-toggle="dropdown"
       href="#">
        <i class="clip-notification-2"></i>
        <span class="badge"> 2</span>
    </a>
    <ul class="dropdown-menu posts">
        <li>
            <span class="dropdown-menu-title pullDown"> Você tem 2 Notificações</span>
        </li>
        <li>
            <div class="drop-down-wrapper ps-container">
                <ul>
                    <?php
                    if ($user[md5(DT_EXPIRACAO)]) {
                        if ($user[md5('status_sistema')] == StatusSistemaEnum::PENDENTE) {
                            $difDatas = Valida::CalculaDiferencaDiasData(date('d/m/Y'), $user[md5(DT_EXPIRACAO)]);
                            ?>
                            <li>
                                <a href="javascript:">
                                    <div class="clearfix">
                                        <div class="thread-image">
                                            <?= '<img src="' . HOME . 'library/Helpers/Timthumb.class.php?src=' . HOME . ADMIN .
                                            '/Images/sistemadabeleza.jpg&w=50&h=50"
                                alt="' . DESC . '" title="' . DESC . '" />'; ?>
                                        </div>
                                        <div class="thread-content">
                                            <span class="author">Renovação da Assinatura</span>
                                            <span class="preview"><b>Sua assinatura irá expirar em <?= $difDatas; ?>
                                                    Dias</b>, click no link para
                                        renovar sua assinatura.</span>
                                            <span class="time"> Expira Em 20/08/2018</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                        <?php }
                    } ?>
                </ul>
                <div class="ps-scrollbar-x-rail"
                     style="left: 0px; bottom: 3px; width: 270px; display: none;">
                    <div class="ps-scrollbar-x" style="left: 0px; width: 0px;"></div>
                </div>
                <div class="ps-scrollbar-y-rail"
                     style="top: 0px; right: 3px; height: 250px; display: inherit;">
                    <div class="ps-scrollbar-y" style="top: 0px; height: 125px;"></div>
                </div>
            </div>
        </li>
    </ul>
</li>