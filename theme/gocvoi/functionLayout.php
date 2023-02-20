<?php

namespace theme\gocvoi;

use Model\Menu;

class functionLayout {

    const DanMucSanPham = "DanMucSanPham";

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

    function LoadConfigArray() {
        $lib = new \lib\io();
        $ad = new \Model_Adapter();
        return json_decode($lib->readFile($this->FileConfig), JSON_OBJECT_AS_ARRAY);
    }

    function GetConfigByKey($key) {
        $a = $this->LoadConfigArray();
        if (isset($a[$key])) {
            return $a[$key];
        }
        return null;
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
        <link rel="shortcut icon" href="__Icon___">
        <link rel="apple-touch-icon" href="__Logo___">
        <link rel="apple-touch-icon" sizes="72x72" href="__Logo___">
        <link rel="apple-touch-icon" sizes="114x114" href="__Logo___">
        <?php
    }

    function head() {
        $this->gethtml();
        ?>
        <link rel="stylesheet" href="/public/gocvoi/css/bootstrap.min.css">
        <link rel="stylesheet" href="/public/gocvoi/css/slick.css">
        <link rel="stylesheet" href="/public/gocvoi/css/slick-theme.css">
        <link rel="stylesheet" href="/public/gocvoi/css/animate.css">
        <link rel="stylesheet" href="/public/gocvoi/css/hover-min.css">
        <link rel="stylesheet" href="/public/gocvoi/css/font-awesome.min.css">
        <link rel="stylesheet" href="/public/gocvoi/css/nano-scroll.css">
        <link rel="stylesheet" href="/public/gocvoi/css/template.css">
        <link href="/public/gocvoi/customs.css?v=<?php echo filemtime('public/gocvoi/customs.css') ?>" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="/public/gocvoi/js/jquery.min.js"></script>
        <script type="text/javascript" src="/public/gocvoi/js/slick.js"></script>
        <script type="text/javascript" src="/public/gocvoi/js/wow.min.js"></script>
        <script type="text/javascript" src="/public/gocvoi/js/nano-scroll.min.js"></script>
        <script src="/public/lazyloadimg/lazyloading.js" type="text/javascript"></script>
        <script type="text/javascript" src="/public/gocvoi/js/custom.js?v=<?php echo filemtime('public/gocvoi/js/custom.js') ?>"></script>
        <script type="text/javascript" >
            var script = document.createElement('script');
            script.src = '/public/partials/loaderpartials/home/homeconfig.js';
            document.write(script.outerHTML);</script>
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
        $menu = new \Model\Menu();
        $menus = $menu->MenusByGroupParent(Menu::TopMainMenu, 0);
        $HeaderSocial = $menu->MenusByGroupParent(Menu::HeaderSocial, 0);
        $TopHeaderMenu = $menu->MenusByGroupParent(Menu::TopHeaderMenu, 0);
        $Cart = new \Module\cart\Model\Cart();
        $producCart = $Cart->Products();
        ?>
        <div class="GioHang">
            <div class="GioHang_Content">
                <a class="btn-togger-cart btn" ><i class="fa fa-times" ></i></a>
                <h2 class="cart-title-home col-xs-12 text-center OpenSans" >Giỏ Hàng</h2>
                <p class="OpenSans" >Bạn đang có (<?php echo $Cart->countProduct2Cart(); ?>) sản phẩm trong giỏ hàng</p>
                <hr>
                <div class="GioHang-body" >
                    <div class="col-xs-12">
                        <?php
                        foreach ($producCart as $p) {
                            $_p = new \Module\cart\Model\CartLinkAction($p);
                            ?>
                            <div class="row">
                                <div class="col-xs-2">
                                    <img src="<?php echo $_p->UrlHinh(); ?>" class="img imgcart" alt="<?php echo $_p->nameProduct; ?>" title="<?php echo $_p->nameProduct; ?>" >
                                </div>
                                <div class="col-xs-10">
                                    <p>
                                        <a href="<?php echo $_p->linkRemoveProduct(); ?>" class="btn btn-cart-delete pull-right" >Xóa</a>
                                        <strong><?php echo $_p->nameProduct; ?></strong><br>
                                        <span>Giá: <?php echo $_p->Price(); ?> X <?php echo $_p->Number; ?></span><br>
                                    </p>
                                </div>
                            </div>
                            <hr>
                            <?php
                        }
                        ?>
                    </div>
                </div>
                <hr>
                <p class="text-uppercase text-bold" >Tổng Tiền Tạm Tính: <strong class="pull-right" ><?php echo $Cart->TotalPriceVND(); ?></strong> </p>
                <a href="<?php echo \Module\cart\Model\Cart::LinkDatHang(); ?>" class="btn btn-add-cart" >Đặt Hàng</a>
            </div>
        </div>

        <header id="header">
            <div class="header-top">
                <div class="container flex">
                    <div class="header-top-left">
                        <div class="header-information">
                            <ul class="flex ">
                                <li class="header-information-item">
                                    <span>Hotline: <a href="tel:__Hotline___">__Hotline___</a></span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="header-top-right flex">
                        <div class="header-menu">
                            <ul class="flex ">
                                <?php
                                foreach ($TopHeaderMenu as $k => $value) {
                                    ?>
                                    <li><a href="<?php echo $value["Link"] ?>"><?php echo $value["Name"] ?></a></li>
                                    <?php
                                }
                                ?>
                            </ul>
                        </div>
                        <div class="header-social flex">
                            <?php
                            foreach ($HeaderSocial as $k => $value) {
                                ?>
                                <a href="<?php echo $value["Link"]; ?>"><i class="<?php echo $value["Name"]; ?>"></i></a>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container-fluid  flex">
                    <h1 class="logo">
                        <a href="/">
                            <img src="__Logo___" alt="__Webname___">
                        </a>
                    </h1>
                    <div class="header-bottom-right flex flex-row-reverse">
                        <div class="search-cart flex">
                            <div class="search">
                                <form action="#" method="POST">
                                    <input type="text" name="search-keywords" id="search-keywords" placeholder="Tìm kiếm sản phẩm">
                                    <button type="submit" name="search-submit" id="search-submit"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="cart btn-togger-cart">
                                <div class="cart-header flex">
                                    <h3 class="cart-title">Giỏ hàng</h3>
                                    <div class="cart-count">
                                        <span><?php echo \Module\cart\Model\Cart::TongSanPham(); ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <nav class="menu">
                            <div class="menu-header">
                                <h3>Menu</h3>
                            </div>
                            <div class="menu-body">
                                <ul class="flex">
                                    <?php
                                    foreach ($menus as $k => $value) {
                                        $_m = new Menu($value);
                                        ?>
                                        <li class="active">
                                            <a href="<?php echo $_m->Link; ?>">
                                                <?php echo $_m->Name; ?>
                                            </a>
                                        </li>
                                        <?php
                                    }
                                    ?>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
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
        $a = new \Model\adv();
        $DS = $a->GetFileContentGroup("homeslide");
        $a->updateHomeSlide();
        $lib = new \lib\imageComp();
        ?>
        <div id="banner">
            <?php
            if ($DS) {
                foreach ($DS as $adv) {
                    $_adv = new \Model\adv($adv);
                    ?>
                    <div class="banner-item">
                        <img src="<?php echo $_adv->Urlimages ?>" alt="<?php echo $_adv->Name ?>">
                    </div>
                    <?php
                }
            }
            ?>
        </div>

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
            <div class="footer-top">
                <div class="newsletter">
                    <div class="container flex flex-center">
                        <div class="newletter-information align-right">
                            <h2>Hãy để lại số điện thoại kèm theo tin nhắn ở ô sau đây</h2>
                            <h3>chúng tôi sẽ gọi lại cho bạn !</h3>
                        </div>
                        <div class="newletter-form">
                            <form action="#" method="POST">
                                <input type="email" name="newsletter-email" id="newsletter-email" required="true">
                                <button type="submit" name="newsletter-submit" id="btn-newsletter-submit">Gửi</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="footer-information">
                    <div class="container flex">
                        <div class="footer-information-item">
                            <div class="flex">
                                <div class="footer-information-item-image">
                                    <img src="/public/gocvoi/images/icon-commitment.png" alt="Cam kết 100%">
                                </div>
                                <div class="footer-information-item-content">
                                    <h3>Cam kết 100%</h3>
                                    <span>chất lượng sản phẩm</span>
                                </div>
                            </div>
                        </div>
                        <div class="footer-information-item">
                            <div class="flex">
                                <div class="footer-information-item-image">
                                    <img src="/public/gocvoi/images/icon-global.png" alt="10.000+">
                                </div>
                                <div class="footer-information-item-content">
                                    <h3>10.000+</h3>
                                    <span>Đơn hàng đã giao trên toàn quốc</span>
                                </div>
                            </div>
                        </div>
                        <div class="footer-information-item">
                            <div class="flex">
                                <div class="footer-information-item-image">
                                    <img src="/public/gocvoi/images/icon-phone.png" alt="HLV/ Tư vấn">
                                </div>
                                <div class="footer-information-item-content">
                                    <span>Điện thoại tư vấn</span>
                                    <h3>__Hotline___</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="footer-bottom-header">
                    <span class="footer-bottom-header-title">Các thông tin khác</span>
                </div>
                <div class="footer-bottom-body">
                    <div class="footer-bottom-modules">
                        <div class="container">
                            <div class="flex flex-baseline">
                                <div class="footer-bottom-module">
                                    <h2 class="footer-bottom-module-header">Dong Ho</h2>
                                    <div class="footer-bottom-module-body">
                                        <ul class="menu-footer-bottom">
                                            <?php
                                            $Menu = new Menu();
                                            $ms = $Menu->MenusByGroupParent(Menu::FooterMenuCongTy, 0);
                                            foreach ($ms as $k => $value) {
                                                $_m = new Menu($value);
                                                ?>
                                                <li>
                                                    <a href="<?php echo $_m->Link; ?>"><?php echo $_m->Name ?></a>
                                                </li>
                                                <?php
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                                <div class="footer-bottom-module">
                                    <h2 class="footer-bottom-module-header">Mua hàng</h2>
                                    <div class="footer-bottom-module-body">
                                        <ul class="menu-footer-bottom">
                                            <?php
                                            $Menu = new Menu();
                                            $ms = $Menu->MenusByGroupParent(Menu::FooterMenuHoTro, 0);
                                            foreach ($ms as $k => $value) {
                                                $_m = new Menu($value);
                                                ?>
                                                <li>
                                                    <a href="<?php echo $_m->Link; ?>"><?php echo $_m->Name ?></a>
                                                </li>
                                                <?php
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                                <div class="footer-bottom-module">
                                    <h2 class="footer-bottom-module-header">Kết nối với chúng tôi</h2>
                                    <div class="footer-bottom-module-body">
                                        <div class="social-list flex">
                                            <div class="social-item">
                                                <a href="#" title="Facebook">
                                                    <img src="/public/gocvoi/images/icon-facebook.png" alt="Facebook">
                                                </a>
                                            </div>
                                            <div class="social-item">
                                                <a href="#" title="Twitter">
                                                    <img src="/public/gocvoi/images/icon-twitter.png" alt="Twitter">
                                                </a>
                                            </div>
                                            <div class="social-item">
                                                <a href="#" title="Google Plus">
                                                    <img src="/public/gocvoi/images/icon-google-plus.png" alt="Google Plus">
                                                </a>
                                            </div>
                                            <div class="social-item">
                                                <a href="#" title="Youtube">
                                                    <img src="/public/gocvoi/images/icon-youtube.png" alt="Youtube">
                                                </a>
                                            </div>
                                            <div class="social-item">
                                                <a href="#" title="Pinterest">
                                                    <img src="/public/gocvoi/images/icon-pinterest.png" alt="Pinterest">
                                                </a>
                                            </div>
                                            <div class="social-item">
                                                <a href="#" title="Instagram">
                                                    <img src="/public/gocvoi/images/icon-instagram.png" alt="Instagram">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="footer-bottom-module">
                                    <h2 class="footer-bottom-module-header">Đăng ký nhận tin khuyến mãi</h2>
                                    <div class="footer-bottom-module-body">
                                        <div class="message-register">
                                            <div class="message-register-description">
                                                <p>Nhập email của bạn vào ô dưới đây và bấm GỬI để không bỏ lỡ những khuyến mại từ Chúng Tôi</p>
                                            </div>
                                            <form id="message-register-form" action="#" method="#">
                                                <input type="text" name="message" id="message" placeholder="Nhập Email">
                                                <button type="submit" name="btn-message-submit" id="btn-message-submit">Gửi</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="copyright align-center">
                        <div class="container">
                            <p>&copy; 2017 gocvoi.com - All rights reserved.<br/>gocvoi.com </p>
                        </div>
                    </div>
                </div>
            </div>

        </footer>
        <?php
        $ThongBao = new \Model\ThongBao();
        $ThongBao = $ThongBao->GetThongBao();
        if ($ThongBao) {
            ?>
            <div style="position: fixed;top: 0px; left: 45%;width: 300px;" class="alert alert-<?php echo $ThongBao->type ?>" >
                <h3><?php echo $ThongBao->content ?></h3>
            </div>
            <script type="text/javascript" >
                setInterval(function() {
                    $(".alert").hide();
                }, 1000);
                $(".GioHang").show(1000);
            </script>
            <?php
        }
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
                    <img style="height: 250px;" src="/public/images_load.gif" class="lazy img-responsive" alt="<?php echo $produc->nameProduct ?>"
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

        <?php
    }

    function DeCodeHTML() {
        $str = ob_get_clean();
        $Content = new \Model\Content();
        $DSOption = $Content->Contents();
        if ($DSOption) {
            foreach ($DSOption as $k => $value) {
                $keystr = "__" . $k . "___";
                $str = str_replace($keystr, $value, $str);
            }
        }
        echo $str;
    }

    public function LeftAside() {
        $cat = new \Model\Category();
        $cats = $cat->GetCategorys();
        ?>
        <div class="products-categories aside-module">
            <h2 class="aside-module-title">Danh mục sản phẩm</h2>
            <div class="aside-module-content">
                <ul class="categories-list">
                    <?php
                    foreach ($cats as $k => $value) {
                        $_cat = new \Model\Category($value);
                        ?>
                        <li class="active" ><a href="<?php echo $_cat->linkCurentCategory(); ?>"><?php echo $_cat->catName; ?></a></li>
                            <?php
                        }
                        ?>

                </ul>
            </div>
        </div>
        <?php
    }

    public function breadcrumb() {
        $br = new Breadcrumb();
        echo $br->ToHtml();
    }

}
