$(document).ready(function(event) {
    if (event.cancelable)
        event.preventDefault();
    $('.hinhVuong').each(function() {
        var $width = $(this).width();
        $(this).height($width);
    });
    $('.product-item').each(function() {
        var $width = $(this).width();
        $(this).height($width * 1.8);
    });
    $(document).resize(function() {
        $('.product-item').each(function() {
            var $width = $(this).width();
            $(this).height($width * 1.8);
        });
        $('.hinhVuong').each(function() {
            var $width = $(this).width();
            $(this).height($width);
        });
    });
    $('.ListProduct').slick({
        centerMode: true,
        centerPadding: '0px',
        slidesToShow: 5,
        slidesToScroll: 3,
        dots: false,
        autoplay: true,
        arrows: false,
        autoplaySpeed: 2000,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '40px',
                    slidesToShow: 3
                }
            },
            {
                breakpoint: 480,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '40px',
                    slidesToShow: 2
                }
            }
        ]
    });

    $('#banner').slick({
        infinite: true,
        arrows: true,
        speed: 500,
        adaptiveHeight: true,
        cssEase: 'linear',
        prevArrow: '<div class="slick-prev"><i class="fa fa-angle-left" aria-hidden="true"></i></div>',
        nextArrow: '<div class="slick-next"><i class="fa fa-angle-right" aria-hidden="true"></i></div>',
        autoplay: true,
        autoplaySpeed: 5000,
    });


    $(".footer-bottom-header").bind("click", function() {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
            $(".footer-bottom-body").slideUp();
        } else {
            $(this).addClass("active");
            $(".footer-bottom-body").slideDown();
            $('html, body').animate({
                scrollTop: $(".footer-bottom-body").offset().top - 48
            }, 500);
        }
    });

    $(".menu-header").bind("click", function() {
        if ($(this).hasClass("active")) {
            $(this).removeClass("active");
            $(".menu-body").slideUp();
        } else {
            $(this).addClass("active");
            $(".menu-body").slideDown();
        }
    });

    $("nav.menu .menu-body ul li.parent .menu-button-icon").bind("click", function() {
        if ($(this).hasClass("opened")) {
            $(this).parent().children(".menu-child").slideUp();
            $(this).removeClass("opened");
        } else {
            $(this).parent().children(".menu-child").slideDown();
            $(this).addClass("opened");
        }
    });

    $('.product-image-large').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.product-image-thumbnail'
    });
    $('.product-image-thumbnail').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        arrows: false,
        asNavFor: '.product-image-large',
        dots: false,
        centerMode: false,
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 3,
                }
            },
        ]

    });

    $("input#product-quantity").change(function() {
        var val = $(this).val();
        if ($.isNumeric(val) && Math.floor(val) > 0) {
            $(this).val(Math.floor(val));
        } else {
            $(this).val("1");
        }
    });

    $(".product-quantity > span").bind("click", function() {
        var operation = $(this).attr("id");
        var val = Math.floor($("input#product-quantity").val());
        if (operation == "product-quantity-plus") {
            $("input#product-quantity").val(val + 1);
        } else {
            if (operation == "product-quantity-minus") {
                if (val > 1) {
                    $("input#product-quantity").val(val - 1);
                }
            }
        }
    });

    $(".product .option-item").bind("click", function() {
        if (!$(this).hasClass("active")) {
            var option = 'input[name="' + $(this).parent().attr("data-option") + '"]';
            $(option).val($(this).attr("id"));
            $(this).parent().children(".option-item").removeClass("active");
            $(this).addClass("active");
        }
    });

    try {
        $(".btn-togger-cart").click(() => {
            $(".GioHang").toggle(500);
        });
    } catch (e) {
        console.log(e);
    }

    wow = new WOW({
        animateClass: 'animated',
        offset: 0,
        callback: function(box) {
            console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
        }
    });
    wow.init();

});