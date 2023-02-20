<?php

namespace theme\kcos;

class functionLayout {

    public $Menu;
    public $NameTheme;
    public $TopMainMenu;
    public $FooterMenu;
    public $FooterMenuDichVu;
    public $FooterMenuHoTro;
    public $FooterMenuCongTy;
    public $FileConfig;

    function __construct() {
        ob_start();
        $this->NameTheme = 'home';
        $this->TopMainMenu = [];
        $this->FooterMenu = [];
        $this->FooterMenuHoTro = [];
        $this->FooterMenuDichVu = [];
        $this->FooterMenuCongTy = [];
        $this->Menu = new \Model\Menu();
        $this->FileConfig = ROOT_DIR . "/theme/{$this->NameTheme}/_lib/homeconfig";
        $this->loadmenu();
    }

    function LoadConfig() {
        $lib = new \lib\io();
        $ad = new \Model_Adapter();
        return $ad->_decode($lib->readFile($this->FileConfig));
    }

    function loadmenu() {

        $a = $this->Menu->MenuByTheme($this->NameTheme);
        foreach ($a as $k => $Menu) {
            $body = $this->Menu->MenuByGroupThemeParent($this->NameTheme, $Menu["Groups"], "0", FALSE);
            foreach ($body as $k1 => $menuCap2) {
                $sub = $this->Menu->MenuByGroupThemeParent($this->NameTheme, $menuCap2["Groups"], $menuCap2["IDMenu"], FALSE);
                if ($sub) {
                    $body[$k1]['submenu'] = $sub;
                }
            }
            $a[$k]["body"] = $body;
        }
        foreach ($a as $k => $Menu) {
            if ($Menu["Groups"] == 'TopMainMenu') {
                $this->TopMainMenu = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenu') {
                $this->FooterMenu = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenuCongTy') {
                $this->FooterMenuCongTy = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenuHoTro') {
                $this->FooterMenuHoTro = $a[$k];
            }
            if ($Menu["Groups"] == 'FooterMenuDichVu') {
                $this->FooterMenuDichVu = $a[$k];
            }
        }

        $this->TopMainMenu = $this->Menu->_encode($this->TopMainMenu["body"]);
        $this->FooterMenu = $this->Menu->_encode($this->FooterMenu["body"]);
        $this->FooterMenuCongTy = $this->Menu->_encode($this->FooterMenuCongTy["body"]);
        $this->FooterMenuHoTro = $this->Menu->_encode($this->FooterMenuHoTro["body"]);
        $this->FooterMenuDichVu = $this->Menu->_encode($this->FooterMenuDichVu["body"]);


//        var_dump($this->TopMainMenu);
    }

    function gethtml() {
        $actual_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
        $hotlint_link = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]" . "/";
        ?>
        <title><?php echo \Model_Seo::$Title; ?></title>
        <meta charset="utf-8">
        <meta http-equiv="cache-control" content="no-cache" />
        <link rel="canonical" href="<?php echo $actual_link; ?>">
        <link rel="alternate" hreflang="vi" href="<?php echo $actual_link; ?>">
        <meta http-equiv="x-dns-prefetch-control" content="on" />
        <meta name="Resource-type" content="Document" />
        <meta name="theme-color" content="#007a8c" />
        <link rel="dns-prefetch" href="//cdnjs.cloudflare.com" />
        <link rel="dns-prefetch" href="//ajax.googleapis.com" />
        <link rel="dns-prefetch" href="//www.facebook.com" />
        <link rel="dns-prefetch" href="//fonts.googleapis.com" />
        <meta http-equiv="Cache-control" content="max-age=31536000,public">
        <!--<meta http-equiv="Cache-control" content="max-age=0,public">-->
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
        <meta name="keywords" content="<?php echo strip_tags(\Model_Seo::$key); ?>" />
        <meta name="description" content="<?php echo strip_tags(\Model_Seo::$des); ?>">
        <meta name="author" content="http://nguyenvando.net">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta property="og:image" content="__Logo___">
        <meta property="og:locale" content="vi_VN" />
        <meta property="og:url" content="<?php echo $actual_link; ?>">
        <meta property="og:type" content="website">
        <meta property="og:title" content="<?php echo strip_tags(\Model_Seo::$key); ?>">
        <meta property="og:description" content="<?php echo strip_tags(\Model_Seo::$des); ?>">
        <link rel="shortcut icon" href="__Logo___">
        <link rel="apple-touch-icon" href="__Logo___">
        <link rel="apple-touch-icon" sizes="72x72" href="__Logo___">
        <link rel="apple-touch-icon" sizes="114x114" href="__Logo___">
        <?php
    }

    function head() {
        $this->gethtml();
        ?>

        <meta name="google-site-verification" content="nlIyatZ0Zg7AhsZBKgskxgMNm5IwWybMfjQtKjFYMHU" />
        <meta name="google-site-verification" content="mIHJ64FfgBivGjx8jIpkzPqp-Yv5kF2TTC7XwQg4b14" />
        <meta name="google-site-verification" content="KPE-fySwZG2SBX9HqhhMKRDlA506bfhjbe-RRqTuQRs" />
        <link rel="shortcut icon" href="/public/img/images/img-1545809331939-8-icony.ico" />
        <link media rel="stylesheet" type="text/css" href="/public/home/assets/lib/owl.carousel/owl.carousel.css" />
        <script type="text/javascript" >
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/lib/bootstrap/css/bootstrap.min.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/lib/font-awesome/css/font-awesome.min.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/lib/select2/css/select2.min.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/lib/jquery-ui/jquery-ui.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/css/animate.css" />');
        </script>
        <link media rel="stylesheet" type="text/css" href="/public/home/assets/css/reset.css" />
        <script type="text/javascript" >

            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/css/style.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/css/responsive.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/Phonering/phonering.css" />');
            document.write('<link media rel="stylesheet" type="text/css" href="/public/home/assets/css/option6_1.css" />');
        </script>

        <script type="text/javascript" >
            window.addEventListener("load", function() {
                try {
                    const loader = document.querySelector(".loading");
                    loader.className += " hidden";
                } catch (e) {
                    console.log(e.message);
                }
            });</script>

        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-147078246-1"></script>
        <script async >
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'UA-147078246-1');</script>

        <script type="text/javascript" >
            var script = document.createElement('script');
            script.src = '/public/partials/loaderpartials/home/homeconfig.js';
            document.write(script.outerHTML);</script>
        <style type="text/css" >
            #product-detail img{
                max-width: 100%;
                height: auto !important;
            }
            #fb-page{
                position: fixed;
                left: 50px;
                bottom: 200px;
                /*background-color: #4faa34;*/
                height: 400px;
                width: 300px;
                display: none;
                z-index: 10000;
            }
            .image-hover2 a {

                display: block;
            }
        </style>


        <?php
    }

    function is_mobile() {
        if (empty($_SERVER['HTTP_USER_AGENT'])) {
            return false;
        } elseif (strpos($_SERVER['HTTP_USER_AGENT'], 'Mobile') !== false // many mobile devices (all iPhone, iPad, etc.)
                || strpos($_SERVER['HTTP_USER_AGENT'], 'Android') !== false || strpos($_SERVER['HTTP_USER_AGENT'], 'Silk/') !== false || strpos($_SERVER['HTTP_USER_AGENT'], 'Kindle') !== false || strpos($_SERVER['HTTP_USER_AGENT'], 'BlackBerry') !== false || strpos($_SERVER['HTTP_USER_AGENT'], 'Opera Mini') !== false || strpos($_SERVER['HTTP_USER_AGENT'], 'Opera Mobi') !== false) {
            return true;
        }
        return false;
    }

    function header() {
        $Cat = new \Model\Category();
        $Cats = $Cat->Categorys();
        $Cart = new \Module\cart\Model\Cart();
        $_P = new \Model\Products();

        if (false) {
            ?>
            <div class="hidden-sm hidden-xs loading" style="padding-top: 50px;" >
                <img class="loading-img" style="border-radius: 100px;" src="/public/loading73px.gif" >
            </div>
            <?php
        }
        ?>

        <div id="header" class="header">
            <div class="top-header">
                <div class="container">
                    <div class="currency ">
                        <div class="dropdown">
                            <a class="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">Hotline: __SDT___</a>
                            <a class="" href="mailTo:__Email___">Email: __Email___</a>
                        </div>
                    </div>
                    <div class="top-bar-social">
                        <a href="__linkFacebook___"><i class="fa fa-facebook"></i></a>
                        <a href="__linkTwitter___"><i class="fa fa-twitter"></i></a>
                        <a href="__linkPinterest___"><i class="fa fa-pinterest"></i></a>
                        <a href="__linkGoogle___"><i class="fa fa-google-plus"></i></a>
                    </div>
                    <div class="support-link">
                        <a href="/page-lien-he.html">Liên Hệ</a>
                        <a href="#">Hỗ Trợ</a>
                    </div>
                </div>
            </div>
            <!--/.top-header -->
            <!-- MAIN HEADER -->
            <div class="container main-header" style="padding-bottom: 10px" >
                <div class="row">
                    <div class="col-xs-12 col-sm-12 text-center col-md-3 logo">
                        <a href="/"><img style="height: 100px;margin: auto;" alt="__WebName___" src="__Logo___" /></a>
                    </div>
                    <div class="col-xs-7 col-sm-8 col-md-8 header-search-box">
                        <form action="/timkiem/"  class="form-inline">
                            <div class="form-group input-serach">
                                <input type="text" value="<?php echo isset($_GET["keyword"]) ? $_GET["keyword"] : ""; ?>" name="keyword" placeholder="Từ Khóa...">
                            </div>
                            <button type="submit" class="pull-right btn-search"></button>
                        </form>
                        <div class="keyword ">
                            <p class="lebal" style="font-size: 20px" >Hotline: __SDT___</p>
                        </div>
                    </div>
                    <div class="col-xs-5 col-sm-3 col-md-1 group-button-header">
                        <div class="btn-cart" id="cart-block">
                            <a title="My cart" href="/cart/">Cart</a>
                            <span class="notify notify-right"><?php echo $Cart->countProduct2Cart(); ?></span>
                            <div class="cart-block">
                                <div class="cart-block-content">
                                    <div class="cart-block-list">
                                        <ul>
                                            <?php
                                            foreach ($Cart->Products() as $Pro) {
                                                $_P = new \Model\Products($Pro);
                                                ?>
                                                <li class="product-info">
                                                    <div class="p-left">
                                                        <a href="#" class="remove_link"></a>
                                                        <a href="#">
                                                            <img class="img-responsive" src="<?php echo $_P->UrlHinh() ?>" alt="p10">
                                                        </a>
                                                    </div>
                                                    <div class="p-right">
                                                        <p class="p-name"><?php echo $_P->nameProduct ?></p>
                                                        <p class="p-rice"><?php echo $_P->Price() ?></p>
                                                        <p>SL: <?php echo $_P->Number ?></p>
                                                    </div>
                                                </li>
                                                <?php
                                            }
                                            ?>


                                        </ul>
                                    </div>
                                    <div class="toal-cart">
                                        <span>Total</span>
                                        <span class="toal-price pull-right"><?php echo $_P->showPrice($Cart->TotalPrice()); ?></span>
                                    </div>
                                    <div class="cart-buttons">
                                        <a href="/cart/taodonhang/" class="btn-check-out">Đặt Hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <!-- END MANIN HEADER -->
            <div id="nav-top-menu" style="background-color: #00ABB3;overflow: hidden;" class="nav-top-menu">
                <div class="container">
                    <div class="row">
                        <div id="main-menu" class="col-sm-12 main-menu">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                            <i class="fa fa-bars"></i>
                                        </button>
                                        <a class="navbar-brand" href="#">MENU</a>
                                    </div>
                                    <div id="navbar" class="navbar-collapse collapse">

                                        <ul class="nav navbar-nav">
                                            <li ng-class="menuitem.submenu.length > 0 ? 'dropdown' : ''" ng-repeat='menuitem in _allMenus.TopMainMenu' >
                                                <a ng-show="menuitem.submenu" href="{{menuitem.Link}}" class="dropdown-toggle" data-toggle="dropdown">{{menuitem.Name}}</a>
                                                <a ng-show="!menuitem.submenu" href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                                <ul ng-show="menuitem.submenu" class="dropdown-menu mega_dropdown" role="menu" style="width: 830px;" >
                                                    <li ng-repeat="item1 in menuitem.submenu" class="block-container col-sm-4">
                                                        <ul class="block">
                                                            <li class="link_container group_header">
                                                                <a href="{{item1.Link}}">{{item1.Name}}</a>
                                                            </li>
                                                            <li ng-repeat="item2 in item1.submenu" class="link_container">
                                                                <a href="{{item2.Link}}">{{item2.Name}}</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>

                                        <ul class="nav navbar-nav navbar-right">
                                            <li><a class="link-buytheme" href="#"><i class="fa fa-angle-double-right"></i> Kiểm Tra Đơn Hàng</a></li>
                                        </ul>
                                    </div><!--/.nav-collapse -->
                                </div>
                            </nav>
                        </div>
                    </div>
                    <!-- userinfo on top-->
                    <div id="form-search-opntop">
                    </div>
                    <!-- userinfo on top-->
                    <div id="user-info-opntop">
                    </div>
                    <!-- CART ICON ON MMENU -->
                    <div id="shopping-cart-box-ontop">
                        <i class="fa fa-shopping-cart"></i>
                        <div class="shopping-cart-box-ontop-content"></div>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    function leftmenu() {
        $Cat = new \Model\Category();
        $Cats = $Cat->Categorys();
        ?>
        <ul class="tree-menu">

            <?php
            $dem = 0;
            if ($Cats)
                foreach ($Cats as $_Category) {
                    ?>
                    <li class="" >
                        <span></span> <a href="<?php echo $_Category->linkCurentCategory() ?>"> <?php echo $_Category->catName ?> </a>
                        <!--ds danh muc con-->
                        <?php
//                                                            Cấp 2
                        $lCat = $_Category->Categorys4IDParent($_Category->catID);
                        if ($lCat) {
                            foreach ($lCat as $_Category1) {
                                ?>
                                <ul>
                                    <li><span></span>
                                        <a href="<?php echo $_Category1->linkCurentCategory(); ?>" >
                                            <?php echo $_Category1->catName ?>
                                        </a>
                                        <ul>
                                            <?php
                                            $lCat1 = $_Category1->Categorys4IDParent($_Category1->catID);
                                            if ($lCat1) {
                                                foreach ($lCat1 as $_Category2) {
                                                    ?>
                                                    <li><span></span> <a href="<?php echo $_Category2->linkCurentCategory(); ?>"><?php echo $_Category2->catName ?></a></li>
                                                    <?php
                                                }
                                            }
                                            ?>
                                        </ul>
                                    </li>
                                </ul>
                                <?php
                            }
                            ?>

                            <?php
                        }
                        ?>
                    </li>
                    <?php
                    $dem++;
                }
            ?>
        </ul>

        <?php
    }

    function homeslider() {
        $io = new \lib\io();
        $video = $io->readFile("data/video.js");
        $video = json_decode($video, JSON_OBJECT_AS_ARRAY);
//        var_dump($video);
//        die();
        $a = new \Model\adv();
        $DS = $a->GetFileContentGroup("homeslide");
        if ($DS == null) {
            $a->updateHomeSlide();
        }
        $lib = new \lib\imageComp();
        ?>
        <div id="home-slider"   style="background-color: #2C2C2C;" >
            <div class="container">
                <div class="row">
                    <div class="col-sm-8" style="padding-right: 0px;">
                        <div class="homeslider">
                            <ul id="contenhomeslider-customPage">
                                <?php
                                if ($DS) {
                                    foreach ($DS as $value) {
                                        $img = $value["Image"];
                                        ?>
                                        <li >
                                            <img  data-srcset="<?php echo $img; ?>" src="/public/images_load.gif" style="width: 100%;" class="lazyload homeslider-img img img-responsive center-block"  alt="<?php echo $value["Name"] ?>"   title="<?php echo $value["Name"] ?>" />
                                        </li>
                                        <?php
                                    }
                                }
                                ?>
                            </ul>
                            <div class="bx-control">
                                <div class="slide-prev">
                                    <span id="bx-prev"></span>
                                </div>
                                <div id="bx-pager" class="slide-pager">
                                    <?php
                                    $dem = 0;
                                    if ($DS)
                                        foreach ($DS as $value) {
                                            ?>
                                            <a data-slide-index="<?php echo $dem; ?>" href="#"><?php echo $dem + 1; ?></a>
                                            <?php
                                            $dem++;
                                        }
                                    ?>
                                </div>
                                <div class="slide-next">
                                    <span id="bx-next"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2 group-banner-slider" style="overflow: hidden;max-height: 480px;padding-left: 2px;">
                        <?php
                        $a = new \Model\adv();
                        $DS = $a->AdvsByGroup("quan-cao-slide-ben-p");
                        foreach ($DS as $value) {
                            $img = $lib->layHinh($value->Urlimages, 183, 120, false);
                            ?>
                            <div class="item banner-opacity">
                                <a href="<?php echo $value->Link ?>">
                                    <img class="lazyload"  src="/public/images_load.gif" data-src="<?php echo $img ?>" alt="<?php echo $value->Name ?>">
                                </a>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                    <div class="col-sm-2 group-banner-slider" style="overflow: hidden;max-height: 480px; padding-left: 2px; margin-left:-15px; padding-right: 0;">
                        <div class=" item policy">
                            <h5 class="title">Chính Sách</h5>
                            <ul>

                                <li><a href="#">
                                        <img class="icon1" src="/public/home/assets/data/option6/safe1.png" alt="Icon">
                                        <img class="icon2" src="/public/home/assets/data/option6/safe2.png" alt="Icon">
                                        Thanh toán an toàn
                                    </a></li>
                                <li><a href="#">
                                        <img class="icon1" src="/public/home/assets/data/option6/icon2.png" alt="Icon">
                                        <img class="icon2" src="/public/home/assets/data/option6/icon2-1.png" alt="Icon">
                                        Giao hàng tận nơi</a></li>
                                <li><a href="#">
                                        <img class="icon1" src="/public/home/assets/data/option6/icon3.png" alt="Icon">
                                        <img class="icon2" src="/public/home/assets/data/option6/icon3-1.png" alt="Icon">
                                        Đổi Trả</a></li>
                                <li><a href="#">
                                        <img class="icon1" src="/public/home/assets/data/option6/icon4.png" alt="Icon">
                                        <img class="icon2" src="/public/home/assets/data/option6/icon4-1.png" alt="Icon">
                                        Dịch vụ khách hàng</a></li>
                                <li><a href="#">
                                        <img class="icon1" src="/public/home/assets/data/option6/icon5.png" alt="Icon">
                                        <img class="icon2" src="/public/home/assets/data/option6/icon5-1.png" alt="Icon">
                                        Bán hàng uy tín</a></li>
                            </ul>
                        </div>
                        <?php
                        $a = new \Model\adv();
                        $DS = $a->AdvsByGroup("quan-cao-duoi-chinh-");
                        foreach ($DS as $value) {
                            $img = $lib->layHinh($value->Urlimages, 198, 130, false);
                            ?>
                            <div class="item banner-opacity">
                                <a href="<?php echo $value->Link ?>">
                                    <img class="lazyload img img-responsive" src="/public/images_load.gif" data-src="<?php echo $img ?>" alt="<?php echo $value->Name ?>">
                                </a>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                    <div class="col-sm-12 header-top-right">
                        <div class="group-banner-slide">
                            <div class="col-left">
                            </div>
                            <div class="col-right">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
        if ($video["IsShow"]) {
            ?>
            <div class="container" style="margin-top: 20px" >
                <div class="col-md-12" >
                    <div class="row" >
                        <video style="width: 100%;" loop autoplay controls>
                            <source src="<?php echo $video["Link"]; ?>" type="video/mp4">
                            Your browser does not support HTML5 video.
                        </video>
                    </div>
                </div>

            </div>
            <?php
        }
        ?>
        <?php
    }

    function pagetop() {
        $a = new \Model\adv();
        $DS = $a->AdvsByGroup("danh-muc-noi-bat");
        ?>
        <!-- END Home slideder-->
        <div class="page-top">
            <div class="container">
                <!-- Baner bottom -->
                <div class="row banner-bottom">

                    <div class="col-sm-3" ng-repeat="item in _advDanhMucNoiBat" >
                        <div class="banner-boder-zoom2">
                            <a href="{{item.Link}}">
                                <img  class="lazyload QuanCao-img img-responsive"  alt="{{item.Name}}"  data-srcset="{{item.Image}}" src="/public/no-image.jpg" title="{{item.Name}}" />
                            </a>
                        </div>
                        <h3 class="text-center TenQuanCao" >{{item.Name}}</h3>
                    </div>

                </div>
                <!-- end banner bottom -->
            </div>
        </div>
        <!---->
        <?php
    }

    function servicestopfooter() {
        //
        $a = new \Model\adv();
        $DS = $a->AdvsByGroup("chinh-sach-cuoi-tran");
        ?>
        <div class="services2">
            <ul>
                <?php
                foreach ($DS as $value) {
                    ?>
                    <li class="col-xs-12 col-sm-6 col-md-4 services2-item">
                        <div class="service-wapper">
                            <div class="row">
                                <div class="col-sm-6 image">
                                    <div class="icon">
                                        <img src="<?php echo $value->Urlimages ?>" alt="<?php echo $value->Name ?>">
                                    </div>
                                    <h3 class="title"><a href="<?php echo $value->Link ?>"><?php echo $value->Name ?></a></h3>
                                </div>
                                <div class="col-sm-6 text">
                                    <?php echo $value->Content ?>
                                </div>
                            </div>
                        </div>
                    </li>
                    <?php
                }
                ?>
            </ul>
        </div>
        <?php
    }

    function services() {
        ?>
        <div ng-show="<?php echo $this->LoadConfig()->DichVu ?> == '1'" >
            <div class="container">
                <div class="service ">
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s1.png" />
                        </div>
                        <div class="info">
                            <a href="#"><h3>Free Shipping</h3></a>
                            <span>On order over $200</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s2.png" />
                        </div>
                        <div class="info">
                            <a href="#"><h3>30-day return</h3></a>
                            <span>Moneyback guarantee</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s3.png" />
                        </div>

                        <div class="info" >
                            <a href="#"><h3>24/7 support</h3></a>
                            <span>Online consultations</span>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-3 service-item">
                        <div class="icon">
                            <img alt="services" src="/public/home/assets/data/s4.png" />
                        </div>
                        <div class="info">
                            <a href="#"><h3>SAFE SHOPPING</h3></a>
                            <span>Safe Shopping Guarantee</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    function footer() {
        ?>
        <footer id="footer">
            <div class="container">
                <!-- introduce-box -->
                <div id="introduce-box" class="row">
                    <div class="col-md-3">
                        <div id="address-box">
                            <a href="/" class="bg_logo" ><img src="__Logo___" alt="WebName"></a>
                            <div id="address-list">
                                <div class="tit-name">__lblAddress___:</div>
                                <div class="tit-contain">__DiaChi___</div>
                                <div class="tit-name">__lblPhone___:</div>
                                <div class="tit-contain">__SDT___</div>
                                <div class="tit-name">__lblEmail___:</div>
                                <div class="tit-contain">__Email___</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="introduce-title">__lblDichVu___</div>
                                <ul id="introduce-company"  class="introduce-list">
                                    <li ng-repeat='menuitem in _allMenus.FooterMenuDichVu' >
                                        <a href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <div class="introduce-title">__lblCongTy___</div>
                                <ul id = "introduce-Account" class="introduce-list">
                                    <li ng-repeat='menuitem in _allMenus.FooterMenuCongTy' >
                                        <a href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-sm-4">
                                <div class="introduce-title">__lblHoTro___</div>
                                <ul id = "introduce-support"  class="introduce-list">
                                    <li ng-repeat='menuitem in _allMenus.FooterMenuHoTro' >
                                        <a  href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div id="contact-box">
                            <div class="introduce-title">__lblNhapMail___</div>
                            <div class="input-group" id="mail-box">
                                <input type="text" placeholder="__lblEmail___"/>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">OK</button>
                                </span>
                            </div><!-- /input-group -->
                            <div class="introduce-title">Trang Xã Hội</div>
                            <div class="social-link">
                                <a class="facebook" href="__linkFacebook___"><i class="fa fa-facebook"></i></a>
                                <a class="pinterest" href="__linkPinterest___"><i class="fa fa-pinterest-p"></i></a>
                                <a class="twitter" href="__linkTwitter___"><i class="fa fa-twitter"></i></a>
                                <a class="google-plus" href="__linkGoogle___"><i class="fa fa-google-plus"></i></a>
                            </div>
                        </div>

                    </div>
                </div><!-- /#introduce-box -->
                <div id="footer-menu-box">
                    <p class="text-center">Copyrights &#169; 2015  <a href="http://nguyenvando.net" class="btn btn-btn" >nguyenvando.net</a>. All Rights Reserved. Designed by nguyenvando.net</p>
                </div><!-- /#footer-menu-box -->
            </div>

        </footer>



        <!-- Load Facebook SDK for JavaScript -->
        <div id="fb-root"></div>
        <script>
            window.fbAsyncInit = function() {
                FB.init({
                    xfbml: true,
                    version: 'v4.0'
                });
            };
            (function(d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

        <!-- Your customer chat code -->
        <div class="fb-customerchat"
             attribution=setup_tool
             page_id="1687933497923212"
             theme_color="#0084ff"
             logged_in_greeting="Xin chào! Chúng tôi có thể giúp gì bạn?"
             logged_out_greeting="Xin chào! Chúng tôi có thể giúp gì bạn?">
        </div>
        <?php
    }

    function js() {
        ?>
        <a href="#" class="scroll_top" title="Scroll to Top" style="display: inline;">Scroll</a>
        <!-- Script-->
        <script  type="text/javascript" src="/public/home/assets/lib/jquery/jquery-1.11.2.min.js"></script>
        <script  type="text/javascript" src="/public/home/assets/lib/bootstrap/js/bootstrap.min.js"></script>
        <script  type="text/javascript" src="/public/home/assets/lib/select2/js/select2.min.js"></script>
        <script  type="text/javascript" src="/public/home/assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
        <script  type="text/javascript" src="/public/home/assets/lib/owl.carousel/owl.carousel.min.js"></script>
        <!--<script type="text/javascript" src="/public/home/assets/lib/jquery.countdown/jquery.countdown.min.js"></script>-->
        <!-- COUNTDOWN -->
        <script  type="text/javascript" src="/public/home/assets/lib/countdown/jquery.plugin.js"></script>
        <script  type="text/javascript" src="/public/home/assets/lib/countdown/jquery.countdown.js"></script>
        <!-- ./COUNTDOWN -->
        <script  type="text/javascript" src="/public/home/assets/js/jquery.actual.min.js"></script>
        <script  type="text/javascript" src="/public/home/assets/js/theme-script.js"></script>
        <script  type="text/javascript" >

            $(document).ready(function() {
                $(".btnchatmes").click(function() {
                    $("#fb-page").toggle();
                });
            });</script>
        <script type="text/javascript" >
            var script = document.createElement('script');
            script.src = '/public/home/assets/lib/lazysizes/lazysizes.min.js';
            document.write(script.outerHTML);</script>

        <?php
    }

    function categorySlider($isMultyCategory = -1) {
        $adv = new \Model\adv();
        if ($isMultyCategory == -1) {
            $lisAdv = $adv->AdvsByGroup("cat0");
        } else {
            $gp = "cat" . $isMultyCategory;
            $lisAdv = $adv->AdvsByGroup($gp);
        }

        if ($lisAdv) {
            if (count($lisAdv) == 1) {
                $lisAdv[1] = $lisAdv[0];
            }
            ?>
            <!-- category-slider -->
            <div class="category-slider"  >
                <ul class="owl-carousel owl-style2" data-dots="false" data-loop="true" data-nav = "true" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-items="1">
                    <?php
                    foreach ($lisAdv as $_adv) {
                        ?>
                        <li>
                            <img src="<?php echo $_adv->Urlimages ?>" alt="<?php echo $_adv->Name ?>">
                        </li>
                        <?php
                    }
                    ?>
                </ul>
            </div>
            <!-- ./category-slider -->
            <?php
        }
    }

    function product($produc) {
        $produc = new \Model\Products($produc);
        $p = new \Model\Products();
        $images = $p->getAllImges($produc->ID);
        ?>
        <div class="product-container">
            <div class="left-block">
                <a href="<?php echo $produc->linkProduct(); ?>">
                    <img style="height: 250px;" src="/public/images_load.gif" class="lazyload img-responsive" alt="<?php echo $produc->nameProduct ?>"
                         data-srcset="<?php echo $produc->UrlHinh(); ?>" />
                </a>
                <div class="add-to-cart">
                    <a title="Giỏ Hàng" href="/cart/index/addproduct/<?php echo $produc->ID ?>">Giỏ Hàng</a>
                </div>
            </div>
            <div class="right-block">
                <h3 class="product-name" style="height: 60px" >
                    <a style="font-size: 16px;text-shadow: 0 0 1px #aaa;" href="<?php echo $produc->linkProduct(); ?>">
                        <?php echo $produc->nameProduct; ?>
                    </a>
                </h3>
                <div class="content_price">
                    <span class="price product-price"><?php echo $produc->Price() ?></span>
                </div>
                <div class="info-orther">
                    <p>Mã Sản Phẩm: <?php echo $produc->ID ?></p>
                    <p class="availability">Tình Trạng: <span>Còn hàng</span></p>
                    <div class="product-desc">
                        <?php
                        echo strip_tags($produc->Summary);
                        ?>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    function HienThiMau($Pages, $function = "mau1") {
        $Model_Pages = new \Model\pages();
        $Note = $Model_Pages->_decode($Pages["Note"]);
        $this->$function($Pages);
    }

    function functionName($param) {
        ?>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
            <li class="dropdown">
                <a href="category.html" class="dropdown-toggle" data-toggle="dropdown">Fashion</a>
                <ul class="dropdown-menu mega_dropdown" role="menu" style="width: 830px;">
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="img_container">
                                <a href="#">
                                    <img class="img-responsive" src="/public/home/assets/data/men.png" alt="sport">
                                </a>
                            </li>
                            <li class="link_container group_header">
                                <a href="#">MEN'S</a>
                            </li>
                            <li class="link_container"><a href="#">Skirts</a></li>
                            <li class="link_container"><a href="#">Jackets</a></li>
                            <li class="link_container"><a href="#">Tops</a></li>
                            <li class="link_container"><a href="#">Scarves</a></li>
                            <li class="link_container"><a href="#">Pants</a></li>
                        </ul>
                    </li>
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="img_container">
                                <a href="#">
                                    <img class="img-responsive" src="/public/home/assets/data/women.png" alt="sport">
                                </a>
                            </li>
                            <li class="link_container group_header">
                                <a href="#">WOMEN'S</a>
                            </li>
                            <li class="link_container"><a href="#">Skirts</a></li>
                            <li class="link_container"><a href="#">Jackets</a></li>
                            <li class="link_container"><a href="#">Tops</a></li>
                            <li class="link_container"><a href="#">Scarves</a></li>
                            <li class="link_container"><a href="#">Pants</a></li>
                        </ul>
                    </li>
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="img_container">
                                <a href="#">
                                    <img class="img-responsive" src="/public/home/assets/data/kid.png" alt="sport">
                                </a>
                            </li>
                            <li class="link_container group_head                                                                                                                                                                                                        er">
                                <a href                                                                                                                                                                                                        ="#">Kids</a>
                            </li>
                            <li class="link_container"><a href="#">Shoes</a></li>
                            <li class="link_container"><a href="#">Clothing</a></li>
                            <li class="link_container"><a href="#">Tops</a></li>
                            <li class="link_container"><a href="#">Scarves</a></li>
                            <li class="link_container"><a href="#">Accessories</a></li>
                        </ul>
                    </li>
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="img_container">
                                <a href="#">
                                    <img class="img-responsive" src="/public/home/assets/data/trending.png" alt="sport">
                                </a>
                            </li>
                            <li class="li                                                                                                                                                                                                        nk_container group_header"                                                                                                                                                                                                        >
                                <a href="#">TRENDING</a>
                            </li>
                            <li class="link_container"><a href                                                                                                                                                                                                        ="#">Men's Clothing</a></li>
                            <li class="lin                                                                                                                                                                                                        k_container"><a href="#">Kid's Clothing</a></li>
                            <li class="link_contain                                                                                                                                                                                                        er"><a href="#">Women's Clothing</                                                                                                                                                                                                        a></li>
                            <li class="link_container"><a href="#">Accessories</a><                                                                                                                                                                                                        /li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="category.html" class="dr                                                                                                                                                                                                        opdown-toggle" data-toggle="dropdo                                                                                                                                                                                                        wn">Sports</a></li>
            <li class="dropdown">
                <a href="category.ht                                                                                                                                                                                                        ml" class="dropdown-toggle" data-toggle="dropdown">Foods                                                                                                                                                                                                        </a>
                <ul class="mega_dropdown                                                                                                                                                                                                         dropdown-menu" style="width: 8                                                                                                                                                                                                        30px;">
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="link_contai                                                                                                                                                                                                        ner group_header">
                                <a href="#">Asian</a>
                            </li>
                            <li class="link_container">
                                <a href                                                                                                                                                                                                        ="#">Vietnamese Pho</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Noodles</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Seafood</a>
                            </li>
                            <li class="link_container group_header">
                                <a href="#">Sausages</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Meat Dishes</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Desserts</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Tops</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Tops</a>
                            </li>
                        </ul>
                    </li>
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="link_container group_header">
                                <a href="#">European</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Greek Potatoes</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Famous Spaghetti</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Famous Spaghetti</a>
                            </li>
                            <li class="link_container group_header">
                                <a href="#">Chicken</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Italian Pizza</a>
                            </li>
                            <li class="link_container">
                                <a href="#">French Cakes</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Tops</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Tops</a>
                            </li>
                        </ul>
                    </li>
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="link_container group_header">
                                <a href="#">FAST</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Hamberger</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Pizza</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Noodles</a>
                            </li>
                            <li class="link_container group_header">
                                <a href="#">Sandwich</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Salad</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Paste</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Tops</a>
                            </li>
                            <li class="link_container">
                                <a href="#">Tops</a>
                            </li>
                        </ul>
                    </li>
                    <li class="block-container col-sm-3">
                        <ul class="block">
                            <li class="img_container">
                                <img src="/public/home/assets/data/banner-topmenu.jpg" alt="Banner">
                            </li>
                        </ul>
                    </li>

                </ul>
            </li>
            <li class="dropdown">

                <a href="category.html" class="dropdown-toggle" data-toggle="dropdown">Digital<span class="notify notify-right">new</span></a>
                <ul class="dropdown-menu container-fluid">
                    <li class="block-container">
                        <ul class="block">
                            <li class="link_container"><a href="#">Mobile</a></li>
                            <li class="link_container"><a href="#">Tablets</a></li>
                            <li class="link_container"><a href="#">Laptop</a></li>
                            <li class="link_container"><a href="#">Memory Cards</a></li>
                            <li class="link_container"><a href="#">Accessories</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="category.html">Furniture</a></li>
            <li><a href="category.html">Jewelry</a></li>
            <li><a href="category.html">Blog</a></li>
        </ul>
        <?php
    }

    function TinTucFooter() {
        ?>
        <div id="content-wrap">
            <div class="container">
                <div class="blog-list">
                    <h2 class="page-heading">
                        <span class="page-heading-title">Tin Tức</span>
                    </h2>
                    <div class="blog-list-wapper" ng-controller="newhotfooterController" my-main-directive >
                        <div class="row" >
                            <div ng-repeat="new in _listnewshot" class="col-md-3 " my-repeat-directive style="margin-bottom: 20px;" >
                                <div >
                                    <div class="post-thumb image-hover2">
                                        <a href="{{new .link}}">

                                            <img style="width: 100%;"  alt="{{new .Name}}" data-srcset="{{new .Image}}" src="/public/no-image.jpg" class="lazyload img img-product img-responsive" />
                                        </a>
                                    </div>
                                    <div class="post-desc">
                                        <a  href="{{new .link}}">
                                            <h3 class="post-title" style="padding-top: 10px;height: 50px;overflow: hidden;" >
                                                {{new .Name}}
                                            </h3>
                                        </a>
                                        <div class="post-meta">
                                            <span class="date">{{new .NgayDang}}</span>
                                        </div>
                                        <div cl                                                                                                                                                                                                        ass="readmore">
                                            <a href="{{new .link}}">Xem Thêm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    function DeCodeHTML() {
        $str = ob_get_clean();
        $Content = new \Model\Content();
        $DSOption = $Content->Contents();

        if ($DSOption)
            foreach ($DSOption as $k => $value) {
                $str = str_replace("__" . $k . "___", $value, $str);
            }
        $str = \Model_SaveCache::minify_output($str);
        echo $str;
    }

}
