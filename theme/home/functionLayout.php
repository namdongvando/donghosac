<?php

namespace theme\home;

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
//        return về mảng json

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

    function head() {
        ?>
        <title><?php echo \Model_Seo::$Title; ?></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="/public/no-image.jpg" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/select2/css/select2.min.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/jquery.bxslider/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/owl.carousel/owl.carousel.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/lib/jquery-ui/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/animate.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/reset.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/responsive.css" />
        <link rel="stylesheet" type="text/css" href="/public/home/assets/css/option3.css" />
        <link href="/public/home/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="/public/home/assets/css/MauTemplate.css" rel="stylesheet" type="text/css"/>
        <script src="/public/lazysizes/lazysizes.min.js" type="text/javascript"></script>
        <?php
    }

    function header() {
        $Cat = new \Model\Category();
        $Cats = $Cat->Categorys();
//        var_dump($Cats);
        ?>
        <div id="header" class="header">
            <!-- MAIN HEADER -->
            <div class="container main-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-3 logo">
                        <a href="<?php echo BASE_DIR ?>" class="bg_logo" >
                            <img alt="<?php echo \Model_Seo::$Title ?>" src="__Logo___" />
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 header-search-box">
                        <form class="form-inline">
                            <div class="form-group form-category">
                                <select class="select-category">
                                    <option value="2">All Categories</option>
                                </select>
                            </div>
                            <div class="form-group input-serach">
                                <input type="text"  placeholder="Keyword here...">
                            </div>
                            <button type="submit" class="pull-right btn-search"></button>
                        </form>
                    </div>
                    <div class="col-sm-6 col-md-3 group-button-header">
                        <h2 class="text-uppercase" style="color: red;line-height: 40px;font-weight: bold;" >__lblHotline___ : __Hotline___</h2>
                    </div>
                </div>
            </div>
            <!-- END MANIN HEADER -->
            <div id="nav-top-menu" class="nav-top-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3" id="box-vertical-megamenus">
                            <div class="box-vertical-megamenus bakco-mainmenu">
                                mainmenu
                            </div>
                        </div>
                        <div id="main-menu" class="col-sm-9 main-menu">
                            <nav class="navbar navbar-default">
                                <div class="container-fluid">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                            <i class="fa fa-bars"></i>
                                        </button>
                                        <a class="navbar-brand" href="#">Menu</a>
                                    </div>
                                    <div id="navbar" class="navbar-collapse collapse">
                                        <ul class="nav navbar-nav">
                                            <li ng-class="menuitem.submenu.length > 0 ? 'dropdown' : ''" ng-repeat='menuitem in <?php echo $this->TopMainMenu ?>' >
                                                <a ng-show="menuitem.submenu" href="#" class="dropdown-toggle" data-toggle="dropdown">{{menuitem.Name}}</a>
                                                <a ng-show="!menuitem.submenu" href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                                <ul ng-show="menuitem.submenu" class="dropdown-menu container-fluid">
                                                    <li class="block-container">
                                                        <ul class="block">
                                                            <li ng-repeat="item1 in menuitem.submenu" class="link_container"><a href="{{item1.Link}}">{{item1.Name}}</a></li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <ul class="nav navbar-nav navbar-right">
                                            <li><a class="link-buytheme" href="#"><i class="fa fa-angle-double-right"></i> Báo Giá Thiết Bị</a></li>
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
                                                    <!--link danh muc ??-->
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

        $a = new \Model\adv();
        $DS = $a->GetFileContentGroup("homeslide");
        ?>
        <div class="option5" ng-show="<?php echo $this->LoadConfig()->Mainslide ?> == '1'" >
            <div id="home-slider"  >
                <div class="container">
                    <div class="">
                        <div class="">
                            <ul id="contenhomeslider">
                                <?php
                                foreach ($DS as $value) {
                                    $Attribute = $a->_decode($value->Attribute);
                                    ?>
                                    <li class="text-center cion" style="background-color: <?php echo $Attribute->background ?>" >
                                        <img class=" center-block"  alt="<?php echo $value->Name ?>"  src="<?php echo $value->Urlimages ?>" title="<?php echo $value->Name ?>" />
                                    </li>
                                    <?php
                                }
                                ?>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
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
        <footer id="footer2">
            <div class="footer-top"  >
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="footer-logo">
                                <a href="#" class="bg_logo" ><img src="__Logo___" alt="Logo"></a>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="footer-menu">
                                <ul>
                                    <li ng-repeat='menuitem in <?php echo $this->FooterMenu ?>' >
                                        <a ng-show="!menuitem.submenu" href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="footer-social">
                                <ul>
                                    <li><a class="facebook" href="__linkFacebook___"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="pinterest" href="__linkPinterest___"><i class="fa fa-pinterest-p"></i></a></li>
                                    <li><a class="vk" href="__linkVk___"><i class="fa fa-vk"></i></a></li>
                                    <li><a class="twitter" href="__linkTwitter___"><i class="fa fa-twitter"></i></a></li>
                                    <li><a class="google-plus" href="__linkPlus___"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer paralax-->
            <div class="footer-paralax"  >
                <div class="footer-row footer-center">
                    <div class="container">
                        <h3>Đắng Ký Mail Để Nhận Thông Tin Sớm Nhất</h3>
                        <p>Hãy để lại mail để chúng tôi có thể tư vấn cho bạn</p>
                        <form class="form-inline form-subscribe">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Nhập Email">
                                <button type="submit" class="btn btn-default"><i class="fa fa-paper-plane-o"></i></button>
                            </div>

                        </form>
                    </div>
                </div>
                <div class="footer-row">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="widget-container">
                                    <h3 class="widget-title">__lblThongTinCongty___</h3>
                                    <div class="widget-body">
                                        <ul>
                                            <li><a class="location" href="#">__DiaChi___</a></li>
                                            <li><a class="phone" href="#">__SDT___</a></li>
                                            <li><a class="email" href="#">__Email___</a></li>
                                            <li><a class="mobile" href="#">__lblHotline___ : __Hotline___</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="widget-container">
                                    <h3 class="widget-title">__lblDichVu___</h3>
                                    <div class="widget-body">
                                        <ul>
                                            <li ng-repeat='menuitem in <?php echo $this->FooterMenuDichVu ?>' >
                                                <a href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="widget-container">
                                    <h3 class="widget-title">__lblCongTy___</h3>
                                    <div class="widget-body">
                                        <ul>
                                            <li ng-repeat='menuitem in <?php echo $this->FooterMenuCongTy ?>' >
                                                <a href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-3">
                                <div class="widget-container">
                                    <h3 class="widget-title">__lblHoTro___</h3>
                                    <div class="widget-body">
                                        <ul>
                                            <li ng-repeat='menuitem in <?php echo $this->FooterMenuHoTro ?>' >
                                                <a  href="{{menuitem.Link}}" >{{menuitem.Name}}</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="footer-bottom-wapper">
                            <div class="row">
                                <div class="col-sm-8">
                                    <div class="footer-coppyright">
                                        Copyright © 2015 __WebName___. All Rights Reserved. Designed by: __WebName___
                                    </div>

                                </div>
                                <div class="col-sm-4">
                                    <div class="footer-payment-logo">
                                        <!--<img src="/public/home/assets/data/option3/payment-logo.png" alt="payment logo">-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ./footer paralax-->
        </footer>
        <?php
    }

    function js() {
        ?>
        <script type="text/javascript" src="/public/home/assets/lib/jquery/jquery-1.11.2.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/select2/js/select2.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/jquery.bxslider/jquery.bxslider.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/owl.carousel/owl.carousel.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/countdown/jquery.plugin.js"></script>
        <script type="text/javascript" src="/public/home/assets/lib/countdown/jquery.countdown.js"></script>
        <script type="text/javascript" src="/public/home/assets/js/jquery.actual.min.js"></script>
        <script type="text/javascript" src="/public/home/assets/js/theme-script.js"></script>
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
                    <img style="height: 250px;" onerror="this.src='/public/no-image.jpg'" class="img-responsive" alt="<?php echo $produc->nameProduct ?>" src="<?php
        echo $produc->UrlHinh();
        ?>" />
                </a>
                <!--                <div class="quick-view">
                                    <a title="Add to my wishlist" class="heart" href="#"></a>
                                    <a title="Add to compare" class="compare" href="#"></a>
                                    <a title="Quick view" class="search" href="#"></a>
                                </div>-->
                <div class="add-to-cart">
                    <a title="Giỏ Hàng" href="#add">Giỏ Hàng</a>
                </div>
            </div>
            <div class="right-block">
                <h3 class="product-name"><a href="<?php echo $produc->linkProduct(); ?>"><?php echo $produc->nameProduct ?></a></h3>
                <div class="content_price">
                    <span class="price product-price"><?php echo $produc->Price() ?></span><sub>đ</sub>
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

    function mau1($Pages) {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
        ?>
        <div>
            <div class="Mau1" >
                <h2 class="text-center Mua1-title">
                    <?php echo $Pages["Name"]; ?>
                </h2>
                <div class="Mau1-Summary text-center" >
                    <?php echo $Pages["Summary"]; ?>
                </div>
                <div class="Mau1-body" style="background-image: url('/public/bg/bg1.jpg')" >
                    <div class="container"  >
                        <div class=""  >
                            <?php
                            foreach ($newsByPage as $_news) {
                                $news = new \Model\news($_news);
                                ?>
                                <div class="col-md-3 item"  >
                                    <div class="post" >
                                        <div class="post-thumb image-hover2 " style="margin: auto;" >
                                            <a href="<?php echo $news->linkNewsCurent(); ?>">
                                                <img  onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" class="img img-responsive" src="<?php echo $_news["UrlHinh"] ?>" alt="<?php echo $_news["Name"] ?>">
                                            </a>
                                        </div>
                                        <div class="post-desc">
                                            <h3 class="post-title text-center">
                                                <a href="#"><?php echo $_news["Name"] ?></a>
                                            </h3>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>

                        </div>
                    </div>
                </div>
                <!-- ./blog list -->
            </div>
        </div>
        <?php
    }

    function mau2($Pages) {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
        ?>
        <div  >
            <!-- blog list -->
            <div class="Mau2" >
                <h2 class="text-center Mua2-title">
                    <span><?php echo $Pages["Name"] ?></span>
                </h2>
                <div class="Mau2-body" >
                    <div class="container"  >
                        <div class=""  >

                            <?php
                            foreach ($newsByPage as $_news) {
                                $news = new \Model\news($_news);
                                ?>
                                <div class="col-md-4 item" >
                                    <div class="row" >
                                        <div class="col-md-4 post-thumb  image-hover2 " style="margin: auto;" >
                                            <div class="row" >
                                                <a href="<?php echo $news->linkNewsCurent(); ?>">
                                                    <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" class="img img-responsive" src="<?php echo $_news["UrlHinh"] ?>" alt="<?php echo $_news["Name"] ?>">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-8 post-desc">
                                            <h3 class="post-title ">
                                                <a href="<?php echo $news->linkNewsCurent(); ?>"><?php echo $news->Name; ?></a>
                                            </h3>
                                            <p><?php echo $news->Summary; ?></p>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <!-- ./blog list -->
            </div>
        </div>
        <?php
    }

    function mau3($Pages) {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
        $MPages = new \Model\pages($Pages);
        ?>
        <div class="Mau3">
            <h2 class="text-center Mua2-title">
                <span><?php echo $Pages["Name"] ?></span>
            </h2>
            <div class="container">
                <div >
                    <div class="col-xs-12 col-sm-6 col-md-6" style="padding: 5px">
                        <div class="tin-chinh">
                            <a href="<?php echo $MPages->linkPagesCurent() ?>" title="<?php echo $MPages->Name ?>">
                                <span class="overlay"></span>
                                <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" src="<?php echo $MPages->Urlimages ?>" alt="<?php echo $MPages->Name ?>" style="width:100%;">
                                <h2 class="tieu_de">
                                    <?php echo $MPages->Name ?>
                                </h2>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-6" style="padding:0px">
                        <?php
                        for ($index = 0; $index < count($newsByPage) && $index < 4; $index++) {
                            $news = new \Model\news($newsByPage[$index]);
                            ?>
                            <div class="col-xs-6 col-sm-6 col-md-6" style="padding:5px">
                                <div class="tin-phu">
                                    <a href="<?php echo $news->linkNewsCurent() ?>" title="<?php echo $news->Name ?>">
                                        <span class="overlay"></span>
                                        <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" src="<?php echo $news->UrlHinh ?>" alt="<?php echo $news->Name ?>" style="width:100%;">
                                        <h2 class="tieu_de_phu">
                                            <?php
                                            echo $news->Name
                                            ?>
                                        </h2>
                                    </a>
                                </div>
                            </div>
                            <?php
                        }
                        ?>

                    </div>
                </div>
            </div>
        </div>
        <?php
    }

    function mau4($Pages) {
        $Model_news = new \Model\news();
        $newsByPage = $Model_news->NewsByPagesLimitNumber($Pages["idPa"], 5, FALSE);
        ?>
        <div  >
            <div class="container"  >
                <!-- blog list -->
                <div class="blog-list">
                    <h2 class="text-center Mua2-title">
                        <span><?php echo $Pages["Name"] ?></span>
                    </h2>
                    <div class="blog-list-wapper">
                        <ul class="owl-carousel" data-dots="false" data-loop="false" data-nav = "false" data-margin = "10" data-autoplayTimeout="1000" data-autoplayHoverPause = "true" data-responsive='{"0":{"items":2},"600":{"items":3},"1000":{"items":6}}'>
                            <?php
                            for ($index = 0; $index < count($newsByPage) && $index < 4; $index++) {
                                $news = new \Model\news($newsByPage[$index]);
                                ?>
                                <li>
                                    <div class="post-thumb image-hover2">
                                        <a href="<?php echo $news->linkNewsCurent() ?>" title="<?php echo $news->Name ?>">
                                            <img onerror="this.src='/public/home/assets/data/option3/blog1.jpg'" src="<?php echo $news->UrlHinh ?>" alt="<?php echo $news->Name ?>" style="width:100%;height: 180px; ">
                                        </a>
                                    </div>
                                </li>
                                <?php
                            }
                            ?>

                        </ul>
                    </div>
                </div>
                <!-- ./blog list -->
            </div>
        </div>
        <?php
    }

}
