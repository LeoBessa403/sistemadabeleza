(function ($) {
    "use strict";

    /*===================================================================================*/
    /*  WOW
    /*===================================================================================*/

    $(document).ready(function () {
        new WOW().init();
    });

    /*===================================================================================*/
    /*  OWL CAROUSEL
    /*===================================================================================*/

    $(document).ready(function () {

        //VARIÁVEIS GLOBAIS
        var dados = constantes();

        var urlValida = dados['HOME'] + 'admin/Controller/Ajax.Controller.php';
        var validaEmail = dados['HOME'] + 'library/Helpers/Valida.Controller.php';
        var cookieFavotitos = 'bicalho-favoritos';
        var cookieComparados = 'bicalho-comparados';

        var dragging = true;
        var owlElementID = "#owl-main";

        function fadeInReset() {
            if (!dragging) {
                $(owlElementID + " .caption .fadeIn-1, " + owlElementID + " .caption .fadeIn-2, " + owlElementID + " .caption .fadeIn-3").stop().delay(800).animate({opacity: 0}, {
                    duration: 400,
                    easing: "easeInCubic"
                });
            }
            else {
                $(owlElementID + " .caption .fadeIn-1, " + owlElementID + " .caption .fadeIn-2, " + owlElementID + " .caption .fadeIn-3").css({opacity: 0});
            }
        }

        function fadeInDownReset() {
            if (!dragging) {
                $(owlElementID + " .caption .fadeInDown-1, " + owlElementID + " .caption .fadeInDown-2, " + owlElementID + " .caption .fadeInDown-3").stop().delay(800).animate({
                    opacity: 0,
                    top: "-15px"
                }, {duration: 400, easing: "easeInCubic"});
            }
            else {
                $(owlElementID + " .caption .fadeInDown-1, " + owlElementID + " .caption .fadeInDown-2, " + owlElementID + " .caption .fadeInDown-3").css({
                    opacity: 0,
                    top: "-15px"
                });
            }
        }

        function fadeInUpReset() {
            if (!dragging) {
                $(owlElementID + " .caption .fadeInUp-1, " + owlElementID + " .caption .fadeInUp-2, " + owlElementID + " .caption .fadeInUp-3").stop().delay(800).animate({
                    opacity: 0,
                    top: "15px"
                }, {duration: 400, easing: "easeInCubic"});
            }
            else {
                $(owlElementID + " .caption .fadeInUp-1, " + owlElementID + " .caption .fadeInUp-2, " + owlElementID + " .caption .fadeInUp-3").css({
                    opacity: 0,
                    top: "15px"
                });
            }
        }

        function fadeInLeftReset() {
            if (!dragging) {
                $(owlElementID + " .caption .fadeInLeft-1, " + owlElementID + " .caption .fadeInLeft-2, " + owlElementID + " .caption .fadeInLeft-3").stop().delay(800).animate({
                    opacity: 0,
                    left: "15px"
                }, {duration: 400, easing: "easeInCubic"});
            }
            else {
                $(owlElementID + " .caption .fadeInLeft-1, " + owlElementID + " .caption .fadeInLeft-2, " + owlElementID + " .caption .fadeInLeft-3").css({
                    opacity: 0,
                    left: "15px"
                });
            }
        }

        function fadeInRightReset() {
            if (!dragging) {
                $(owlElementID + " .caption .fadeInRight-1, " + owlElementID + " .caption .fadeInRight-2, " + owlElementID + " .caption .fadeInRight-3").stop().delay(800).animate({
                    opacity: 0,
                    left: "-15px"
                }, {duration: 400, easing: "easeInCubic"});
            }
            else {
                $(owlElementID + " .caption .fadeInRight-1, " + owlElementID + " .caption .fadeInRight-2, " + owlElementID + " .caption .fadeInRight-3").css({
                    opacity: 0,
                    left: "-15px"
                });
            }
        }

        function fadeIn() {
            $(owlElementID + " .active .caption .fadeIn-1").stop().delay(500).animate({opacity: 1}, {
                duration: 800,
                easing: "easeOutCubic"
            });
            $(owlElementID + " .active .caption .fadeIn-2").stop().delay(700).animate({opacity: 1}, {
                duration: 800,
                easing: "easeOutCubic"
            });
            $(owlElementID + " .active .caption .fadeIn-3").stop().delay(1000).animate({opacity: 1}, {
                duration: 800,
                easing: "easeOutCubic"
            });
        }

        function fadeInDown() {
            $(owlElementID + " .active .caption .fadeInDown-1").stop().delay(500).animate({
                opacity: 1,
                top: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInDown-2").stop().delay(700).animate({
                opacity: 1,
                top: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInDown-3").stop().delay(1000).animate({
                opacity: 1,
                top: "0"
            }, {duration: 800, easing: "easeOutCubic"});
        }

        function fadeInUp() {
            $(owlElementID + " .active .caption .fadeInUp-1").stop().delay(500).animate({
                opacity: 1,
                top: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInUp-2").stop().delay(700).animate({
                opacity: 1,
                top: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInUp-3").stop().delay(1000).animate({
                opacity: 1,
                top: "0"
            }, {duration: 800, easing: "easeOutCubic"});
        }

        function fadeInLeft() {
            $(owlElementID + " .active .caption .fadeInLeft-1").stop().delay(500).animate({
                opacity: 1,
                left: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInLeft-2").stop().delay(700).animate({
                opacity: 1,
                left: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInLeft-3").stop().delay(1000).animate({
                opacity: 1,
                left: "0"
            }, {duration: 800, easing: "easeOutCubic"});
        }

        function fadeInRight() {
            $(owlElementID + " .active .caption .fadeInRight-1").stop().delay(500).animate({
                opacity: 1,
                left: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInRight-2").stop().delay(700).animate({
                opacity: 1,
                left: "0"
            }, {duration: 800, easing: "easeOutCubic"});
            $(owlElementID + " .active .caption .fadeInRight-3").stop().delay(1000).animate({
                opacity: 1,
                left: "0"
            }, {duration: 800, easing: "easeOutCubic"});
        }

        $(owlElementID).owlCarousel({

            autoPlay: 5000,
            stopOnHover: true,
            navigation: true,
            pagination: true,
            singleItem: true,
            items: 1,
            addClassActive: true,
            //transitionStyle: "fade",
            navigationText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],


            afterInit: function () {
                fadeIn();
                fadeInDown();
                fadeInUp();
                fadeInLeft();
                fadeInRight();
            },

            afterMove: function () {
                fadeIn();
                fadeInDown();
                fadeInUp();
                fadeInLeft();
                fadeInRight();
            },

            afterUpdate: function () {
                fadeIn();
                fadeInDown();
                fadeInUp();
                fadeInLeft();
                fadeInRight();
            },

            startDragging: function () {
                dragging = true;
            },

            afterAction: function () {
                fadeInReset();
                fadeInDownReset();
                fadeInUpReset();
                fadeInLeftReset();
                fadeInRightReset();
                dragging = false;
            }

        });

        if ($(owlElementID).hasClass("owl-one-item")) {
            $(owlElementID + ".owl-one-item").data('owlCarousel').destroy();
        }

        $(owlElementID + ".owl-one-item").owlCarousel({
            items: 1,
            singleItem: true,
            navigation: false,
            pagination: false
        });

        $('#transitionType li a').click(function () {

            $('#transitionType li a').removeClass('active');
            $(this).addClass('active');

            var newValue = $(this).attr('data-transition-type');

            $(owlElementID).data("owlCarousel").transitionTypes(newValue);
            $(owlElementID).trigger("owl.next");

            return false;

        });

        $("#owl-recently-viewed").owlCarousel({
            stopOnHover: true,
            rewindNav: true,
            items: 6,
            pagination: false,
            itemsTablet: [768, 3]
        });

        $("#owl-recently-viewed-2").owlCarousel({
            stopOnHover: true,
            rewindNav: true,
            items: 4,
            pagination: false,
            itemsTablet: [768, 3],
            itemsDesktopSmall: [1199, 3],
        });

        $("#owl-brands").owlCarousel({
            stopOnHover: true,
            rewindNav: true,
            items: 6,
            pagination: false,
            itemsTablet: [768, 4]
        });

        $('#owl-single-product').owlCarousel({
            items: 1,
            singleItem: true,
            pagination: false
        });

        $('#owl-single-product-thumbnails').owlCarousel({
            items: 6,
            pagination: false,
            rewindNav: true,
            itemsTablet: [768, 4]
        });

        $('#owl-recommended-products').owlCarousel({
            rewindNav: true,
            items: 4,
            pagination: false,
            itemsTablet: [768, 3],
            itemsDesktopSmall: [1199, 3],
        });

        $('#best-seller-single-product-slider').owlCarousel({
            items: 1,
            singleItem: true,
            pagination: false
        });

        $(".slider-next").click(function () {
            var owl = $($(this).data('target'));
            owl.trigger('next.owl.carousel');
            return false;
        });

        $(".slider-prev").click(function () {
            var owl = $($(this).data('target'));
            owl.trigger('prev.owl.carousel');
            return false;
        });

        $('.single-product-gallery .horizontal-thumb').click(function () {
            var $this = $(this), owl = $($this.data('target')), slideTo = $this.data('slide');
            owl.trigger('to.owl.carousel', slideTo);
            $this.addClass('active').parent().siblings().find('.active').removeClass('active');
            return false;
        });

        $('.search-area .search-field').keyup(function () {
            var pesquisa = $(this).val();
            pesquisaSite(pesquisa, "pesquisados");
        });

        $('.search-area2 .search-field2').keyup(function () {
            var pesquisa = $(this).val();
            pesquisaSite(pesquisa, "pesquisados2");
        });

        function pesquisaSite(pesquisa, div) {
            if (pesquisa.length > 1) {
                $.ajax({
                    url: urlValida,
                    data: {valida: "pesquisa_site", pesquisa: pesquisa},
                    type: "get",
                    dataType: "html",
                    success: function (data) {
                        $("." + div).empty().html(data);
                    }
                });
            } else {
                $("." + div).empty();
            }
        }

        $(".btn-add-to-wishlist , .remove_from_wishlist").click(function () {
            var coProduto = $(this).attr('data-co-produto');
            var elemento = $(this);
            var evento = 'remove_favorito';
            if (elemento.hasClass('add-favo')) {
                evento = 'add_favorito';
            }

            if (coProduto) {
                if (checkCookie(cookieFavotitos)) {
                    var favoritos = getCookie(cookieFavotitos);
                    if (evento == 'add_favorito') {
                        setCookie(favoritos + coProduto + "-", cookieFavotitos);
                    } else {
                        var novo_cookie = '';
                        var pf = favoritos.split('-');
                        for (var i = 0; i < pf.length; i++) {
                            var p = pf[i];
                            while (p.charAt(0) == ' ') {
                                p = p.substring(1);
                            }
                            if (p != coProduto && p) {
                                novo_cookie = novo_cookie + p + '-';
                            }
                        }
                        setCookie(novo_cookie, cookieFavotitos);
                    }
                } else {
                    setCookie(coProduto + "-", cookieFavotitos);
                }
                // document.cookie = cookieFavotitos+"=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

                var elementFavorito = $(".wishlist .value");
                var totalFavorito = parseInt(elementFavorito.text());

                elementFavorito.animate({
                    fontSize: '24px'
                }, 1000, function () {
                    elementFavorito.animate({
                        fontSize: '13px'
                    })
                });

                if (evento == 'add_favorito') {
                    elementFavorito.text(totalFavorito + 1);
                    elemento.text('Remove dos favoritos');
                    elemento.removeClass('add-favo');
                    elemento.addClass('remove-favo');
                } else {
                    elementFavorito.text(totalFavorito - 1);
                    if (elemento.hasClass('btn-add-to-wishlist')) {
                        elemento.text('Add aos favoritos');
                        elemento.addClass('add-favo');
                        elemento.removeClass('remove-favo');
                    } else {
                        $("#yith-wcwl-row-" + coProduto).fadeToggle('slow');
                        if (parseInt(totalFavorito - 1) == 0) {
                            $("#nenhum-favorito").fadeToggle(2000);
                        }
                    }

                }
            }
            return false
        });


        $(".btn-add-to-compare, .remove-link").click(function () {
            var coProduto = $(this).attr('data-co-produto');
            var elemento = $(this);
            var evento = 'remove_compare';
            if (elemento.hasClass('add-compare')) {
                evento = 'add_compare';
            }
            if (coProduto) {
                if (checkCookie(cookieComparados)) {
                    var comparados = getCookie(cookieComparados);
                    if (evento == 'add_compare') {
                        setCookie(comparados + coProduto + "-", cookieComparados);
                    } else {
                        var novo_cookie_comp = '';
                        var pc = comparados.split('-');
                        for (var i = 0; i < pc.length; i++) {
                            var pcom = pc[i];
                            while (pcom.charAt(0) == ' ') {
                                pcom = pcom.substring(1);
                            }
                            if (pcom != coProduto && pcom) {
                                novo_cookie_comp = novo_cookie_comp + pcom + '-';
                            }
                        }
                        setCookie(novo_cookie_comp, cookieComparados);
                    }
                } else {
                    setCookie(coProduto + "-", cookieComparados);
                }
                // document.cookie = cookieComparados+"=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

                var elementComparado = $(".compare .value");
                var totalComparado = parseInt(elementComparado.text());

                elementComparado.animate({
                    fontSize: '24px'
                }, 1000, function () {
                    elementComparado.animate({
                        fontSize: '13px'
                    })
                });

                if (evento == 'add_compare') {
                    elementComparado.text(totalComparado + 1);
                    elemento.text('Remove dos comparados');
                    elemento.removeClass('add-compare');
                    elemento.addClass('remove-compare');
                } else {
                    elementComparado.text(totalComparado - 1);
                    if (elemento.hasClass('btn-add-to-compare')) {
                        elemento.text('Add aos comparados');
                        elemento.addClass('add-compare');
                        elemento.removeClass('remove-compare');
                    } else {
                        $(".produto-" + coProduto).fadeToggle('slow');
                        if (parseInt(totalComparado - 1) == 0) {
                            $("#nenhum-comparado, .compare-list").fadeToggle(2000);
                        }
                    }

                }
            }
            return false
        });

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }

        function checkCookie(cookie) {
            var username = getCookie(cookie);
            if (username != "") {
                return true;
            } else {
                return false;
            }
        }

        function setCookie(valor, noCookie, dias = 30) {
            var d = new Date();
            d.setTime(d.getTime() + (dias * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toUTCString();
            document.cookie = noCookie + "=" + valor + ";" + expires + ";path=/";
        }

        // Fecha Model de Lead
        $(".overlay-model .fechar").click(function () {
            $(".captura-email").fadeToggle('slow', function () {
                $(".overlay-model").fadeToggle('fast');
                setCookie("sem-model-bicalho", "sem-lead-bicalho", 2);
            });
        });

        // Envia o Email de Lead
        $('#envia-email').click(function () {
            $(this).hide();
            var email = $("#email-lead").val();
            $.get(validaEmail, {valida: 'valemail', email: email}, function (retorno) {
                if (retorno == 2) {
                    $('#envia-email').show();
                    $(".captura-email .mensagem-erro").fadeIn('fast');
                    $(".captura-email .mensagem-success").fadeOut('fast');
                } else {
                    $.get(urlValida, {valida: 'cadastro_lead', email: email}, function (retorno) {
                        if (retorno) {
                            $("#envia-email").attr('id', '-');
                            $(".captura-email .mensagem-success").fadeIn('fast');
                            $(".captura-email .mensagem-erro").fadeOut('fast');
                            setTimeout(function () {
                                $(".captura-email").fadeToggle('slow', function () {
                                    $(".overlay-model").fadeToggle('fast');
                                    setCookie(email, "lead-bicalho", 60);
                                });
                            }, 3000);
                        } else {
                            Funcoes.Alerta("Erro ao Salvar o Email");
                        }
                    });
                }
            });
        });

        // Envia o Email de Lead
        $('#cadastra-email').click(function () {
            $(this).hide();
            var email = $("#email-lead2").val();
            $.get(validaEmail, {valida: 'valemail', email: email}, function (retorno) {
                if (retorno == 2) {
                    $('#cadastra-email').show();
                    $(".sub-form-row .mensagem-erro2").fadeIn('fast');
                    $(".sub-form-row .mensagem-success2").fadeOut('fast');
                    setTimeout(function () {
                        $(".sub-form-row .mensagem-erro2").fadeToggle('slow');
                    }, 4000);
                } else {
                    $.get(urlValida, {valida: 'cadastro_lead', email: email}, function (retorno) {
                        if (retorno) {
                            $("#cadastra-email").attr('id', '-');
                            $("#cadastra-email").show();
                            $(".sub-form-row .mensagem-success2").fadeIn('fast');
                            $(".sub-form-row .mensagem-erro2").fadeOut('fast');
                            setTimeout(function () {
                                $(".sub-form-row .mensagem-success2").fadeToggle('slow');
                            }, 4000);
                        } else {
                            Funcoes.Alerta("Erro ao Salvar o Email");
                        }
                    });
                }
            });
            return false;
        });

        $(".pesquisa").click(function () {
            var valorPesquisa = $('.tooltip-inner').text();
            $('#preco').val(valorPesquisa);
        });

        ///// PAGINAÇÃO
        var inicio_pag = 9;
        var tempo_efeito = 3000;
        var total_grid = $('#total-grid').text();
        var i;

        for (i = 1; i <= total_grid; i++) {
            if (i > inicio_pag) {
                $('#grid-' + i + ', #list-' + i).hide();
            }
        }

        $(".carrega-mais").click(function () {
            $(".carrega-mais").hide();
            $('.modal-body').show();
            setTimeout(function () {
                $('.modal-body').fadeOut('fast');
                var pagina = parseInt($("#pagina").val());
                var inicio = (inicio_pag * (pagina - 1)) + 1;
                var fim = inicio_pag * pagina;
                var proxima_pagina = pagina + 1;

                for (i=1;i<=total_grid;i++){
                    if((i >= inicio) && (i <= fim)){
                        $('#grid-'+i+', #list-'+i).show();
                    }
                }
                $("#pagina").val(proxima_pagina);
                if(fim < total_grid){
                    $(".total-max").text(fim);
                    $(".carrega-mais").show();
                }else{
                    $(".total-max").text(total_grid);
                }
            }, tempo_efeito);
            return false;
        })

    });

    /*===================================================================================*/
    /*  STAR RATING
    /*===================================================================================*/

    $(document).ready(function () {

        //VARIÁVEIS GLOBAIS
        var dados = constantes();

        if ($('.star').length > 0) {
            $('.star').each(function () {
                var $star = $(this);

                if ($star.hasClass('big')) {
                    $star.raty({
                        starOff: dados['HOME'] + 'web/images/star-big-off.png',
                        starOn: dados['HOME'] + 'web/images/star-big-on.png',
                        space: false,
                        score: function () {
                            return $(this).attr('data-score');
                        }
                    });
                } else {
                    $star.raty({
                        starOff: dados['HOME'] + 'web/images/star-off.png',
                        starOn: dados['HOME'] + 'web/images/star-on.png',
                        space: false,
                        score: function () {
                            return $(this).attr('data-score');
                        }
                    });
                }
            });
        }
    });

    /*===================================================================================*/
    /*  SHARE THIS BUTTONS
    /*===================================================================================*/

    $(document).ready(function () {
        if ($('.social-row').length > 0) {
            stLight.options({
                publisher: "2512508a-5f0b-47c2-b42d-bde4413cb7d8",
                doNotHash: false,
                doNotCopy: false,
                hashAddressBar: false
            });
        }
    });

    /*===================================================================================*/
    /*  CUSTOM CONTROLS
    /*===================================================================================*/

    $(document).ready(function () {

        // Select Dropdown
        if ($('.le-select').length > 0) {
            $('.le-select select').customSelect({customClass: 'le-select-in'});
        }

        // Checkbox
        if ($('.le-checkbox').length > 0) {
            $('.le-checkbox').after('<i class="fake-box"></i>');
        }

        //Radio Button
        if ($('.le-radio').length > 0) {
            $('.le-radio').after('<i class="fake-box"></i>');
        }

        // Buttons
        $('.le-button.disabled').click(function (e) {
            e.preventDefault();
        });

        // Quantity Spinner
        $('.le-quantity a').click(function (e) {
            e.preventDefault();
            var currentQty = $(this).parent().parent().find('input').val();
            if ($(this).hasClass('minus') && currentQty > 0) {
                $(this).parent().parent().find('input').val(parseInt(currentQty, 10) - 1);
            } else {
                if ($(this).hasClass('plus')) {
                    $(this).parent().parent().find('input').val(parseInt(currentQty, 10) + 1);
                }
            }
        });

        // Price Slider
        if ($('.price-slider').length > 0) {
            $('.price-slider').slider({
                min: 30,
                max: 10000,
                step: 10,
                value: [50, 7000],
                handle: "square"
            });
        }

        $(document).ready(function () {
            $('select.styled').customSelect();
        });

        // Data Placeholder for custom controls

        $('[data-placeholder]').focus(function () {
            var input = $(this);
            if (input.val() == input.attr('data-placeholder')) {
                input.val('');

            }
        }).blur(function () {
            var input = $(this);
            if (input.val() === '' || input.val() == input.attr('data-placeholder')) {
                input.addClass('placeholder');
                input.val(input.attr('data-placeholder'));
            }
        }).blur();

        $('[data-placeholder]').parents('form').submit(function () {
            $(this).find('[data-placeholder]').each(function () {
                var input = $(this);
                if (input.val() == input.attr('data-placeholder')) {
                    input.val('');
                }
            });
        });

    });

    /*===================================================================================*/
    /*  LIGHTBOX ACTIVATOR
    /*===================================================================================*/
    $(document).ready(function () {
        if ($('a[data-rel="prettyphoto"]').length > 0) {
            //$('a[data-rel="prettyphoto"]').prettyPhoto();
        }
    });


    /*===================================================================================*/
    /*  SELECT TOP DROP MENU
    /*===================================================================================*/
    $(document).ready(function () {
        $('.top-drop-menu').change(function () {
            var loc = ($(this).find('option:selected').val());
            window.location = loc;
        });
    });

    /*===================================================================================*/
    /*  LAZY LOAD IMAGES USING ECHO
    /*===================================================================================*/
    $(document).ready(function () {
        echo.init({
            offset: 100,
            throttle: 250,
            unload: false
        });
    });

    /*===================================================================================*/
    /*  GMAP ACTIVATOR
    /*===================================================================================*/

    $(document).ready(function () {
        var zoom = 16;
        var latitude = 51.539075;
        var longitude = -0.152424;
        var mapIsNotActive = true;
        setupCustomMap();

        function setupCustomMap() {
            if ($('.map-holder').length > 0 && mapIsNotActive) {

                var styles = [
                    {
                        "featureType": "landscape",
                        "elementType": "geometry",
                        "stylers": [
                            {
                                "visibility": "simplified"
                            },
                            {
                                "color": "#E6E6E6"
                            }
                        ]
                    }, {
                        "featureType": "administrative",
                        "stylers": [
                            {
                                "visibility": "simplified"
                            }
                        ]
                    }, {
                        "featureType": "road",
                        "elementType": "geometry",
                        "stylers": [
                            {
                                "visibility": "on"
                            },
                            {
                                "saturation": -100
                            }
                        ]
                    }, {
                        "featureType": "road.highway",
                        "elementType": "geometry.fill",
                        "stylers": [
                            {
                                "color": "#808080"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }, {
                        "featureType": "water",
                        "stylers": [
                            {
                                "color": "#CECECE"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }, {
                        "featureType": "poi",
                        "stylers": [
                            {
                                "visibility": "on"
                            }
                        ]
                    }, {
                        "featureType": "poi",
                        "elementType": "geometry",
                        "stylers": [
                            {
                                "color": "#E5E5E5"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }, {
                        "featureType": "road.local",
                        "elementType": "geometry",
                        "stylers": [
                            {
                                "color": "#ffffff"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }, {}
                ];

                var lt, ld;
                if ($('.map').hasClass('center')) {
                    lt = (latitude);
                    ld = (longitude);
                } else {
                    lt = (latitude + 0.0027);
                    ld = (longitude - 0.010);
                }

                var options = {
                    mapTypeControlOptions: {
                        mapTypeIds: ['Styled']
                    },
                    center: new google.maps.LatLng(lt, ld),
                    zoom: zoom,
                    disableDefaultUI: true,
                    scrollwheel: false,
                    mapTypeId: 'Styled'
                };
                var div = document.getElementById('map');

                var map = new google.maps.Map(div, options);

                var styledMapType = new google.maps.StyledMapType(styles, {
                    name: 'Styled'
                });

                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(latitude, longitude),
                    map: map
                });

                map.mapTypes.set('Styled', styledMapType);

                mapIsNotActive = false;
            }

        }
    });


    /*===================================================================================*/
    /*  Yamm Dropdown
    /*===================================================================================*/
    $(document).on('click', '.yamm .dropdown-menu', function (e) {
        e.stopPropagation()
    });

})(jQuery);