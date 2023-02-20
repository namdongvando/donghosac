<?php

// api này không cần dang nhap
class Controller_api extends Application {

    public $param;
    public $Menu;
    static private $version = "111";

    function __construct() {

        $this->Menu = new \Model\Menu();
        $this->param = $this->getParam();
    }

    function version() {
        $a = ["Version" => session_id()];
//        $a = ["Version" => time()];
        $lib = new \lib\APIs();
        $lib->ArrayToApi($a);
    }

    function getDanhMucLink() {
        $M_Pages = new Model\Category();
        $lib = new lib\APIs();
        $a = $M_Pages->AllCategorys(FALSE);
        $columPages = get_class($M_Pages);
        foreach ($a as $k => $pages) {
            $_pages = new Model\Category($pages);
            $a[$k]["Name"] = $_pages->catName;
            $a[$k]["link"] = $_pages->linkCurentCategory();
        }
        $lib->ArrayToApi($a);
    }

    function index() {
        $cat = new Model\Category();
        $a = $cat->Categorys4IDParent(0);
        $cat->_encode($a);
    }

    function getMainMenu() {
        $cat = new Model\Category();
        $a = $cat->Categorys4IDParent(0);
        if ($a)
            foreach ($a as $k => $cata) {
                $a[$k]->DSDanhMucCon = $cat->Categorys4IDParent($cata->catID);
                if ($a[$k]->DSDanhMucCon)
                    foreach ($a[$k]->DSDanhMucCon as $k1 => $cata1) {
                        $a[$k]->DSDanhMucCon[$k1]->DSDanhMucCon = $cat->Categorys4IDParent($cata1->catID);
                    }
            }
        echo $cat->_encode($a);
    }

    function getMenus() {
        $Menu = [];
        $a = $this->Menu->MenuByGroupThemeParent("home", "TopMainMenu", 0, FALSE);
        $lib = new \lib\APIs();
        foreach ($a as $key => $value) {
            $a[$key]["Id"] = $value["IDMenu"];
        }
        $Menu["TopMainMenu"] = $a;

        $a = $this->Menu->MenuByGroupThemeParent("home", "FooterMenu", 0, FALSE);
        $lib = new \lib\APIs();
        foreach ($a as $key => $value) {
            $a[$key]["Id"] = $value["IDMenu"];
        }
        $Menu["FooterMenu"] = $a;
        $a = $this->Menu->MenuByGroupThemeParent("home", "FooterMenuCongTy", 0, FALSE);
        $lib = new \lib\APIs();
        foreach ($a as $key => $value) {
            $a[$key]["Id"] = $value["IDMenu"];
        }
        $Menu["FooterMenuCongTy"] = $a;

        $a = $this->Menu->MenuByGroupThemeParent("home", "FooterMenuHoTro", 0, FALSE);
        $lib = new \lib\APIs();
        foreach ($a as $key => $value) {
            $a[$key]["Id"] = $value["IDMenu"];
        }
        $Menu["FooterMenuHoTro"] = $a;

        $a = $this->Menu->MenuByGroupThemeParent("home", "FooterMenuDichVu", 0, FALSE);
        $lib = new \lib\APIs();
        foreach ($a as $key => $value) {
            $a[$key]["Id"] = $value["IDMenu"];
        }
        $Menu["FooterMenuDichVu"] = $a;

        $cat = new Model\Category();
        $a = $cat->Categorys4IDParent(0);
        if ($a)
            foreach ($a as $k => $cata) {
                $a[$k]->DSDanhMucCon = $cat->Categorys4IDParent($cata->catID);
                if ($a[$k]->DSDanhMucCon)
                    foreach ($a[$k]->DSDanhMucCon as $k1 => $cata1) {
                        $a[$k]->DSDanhMucCon[$k1]->DSDanhMucCon = $cat->Categorys4IDParent($cata1->catID);
                    }
            }
        $Menu["LeftMenu"] = $a;
//        $this->TopMainMenu = $this->Menu->_encode($this->TopMainMenu["body"]);
//        $this->FooterMenu = $this->Menu->_encode($this->FooterMenu["body"]);
//        $this->FooterMenuCongTy = $this->Menu->_encode($this->FooterMenuCongTy["body"]);
//        $this->FooterMenuHoTro = $this->Menu->_encode($this->FooterMenuHoTro["body"]);
//        $this->FooterMenuDichVu = $this->Menu->_encode($this->FooterMenuDichVu["body"]);
        $lib->ArrayToApi($Menu);
    }

    function getProductByID() {
        $Produc = new Model\Products();
        $_p = $Produc->ProductsByID($this->param[0], FALSE);
        $_p["Content"] = "";
        $_p["Summary"] = "";
        print_r($Produc->_encode($_p));
    }

    function getAdvByGroup() {
        $cat = new \Model\adv();
        $a = $cat->AdvsByGroup($this->param[0], FALSE);
        echo $cat->_encode($a);
    }

    function getPages() {
        $Pa = new \Model\pages();
        $Apis = new \lib\APIs();
        $a = $Pa->PagesByType(1, FALSE);
        $Apis->ArrayToApi($a);
    }

    function getMainMenuThong($param) {

    }

    function getPagesLink() {
        $M_Pages = new \Model\pages();
        $lib = new lib\APIs();
        $a = $M_Pages->PagesMin(FALSE);
        $columPages = get_class($M_Pages);
        foreach ($a as $k => $pages) {
            $_pages = new Model\pages($pages);
            $a[$k]["link"] = $_pages->linkPagesCurent();
        }
        $lib->ArrayToApi($a);
    }

    function getProductsHot() {
        $Produc = new Model\Products();
        $Ps = $Produc->ProductsHotNew(12, FALSE);
        foreach ($Ps as $key => $_ps) {
            $_ps = new Model\Products($_ps);
            $Ps[$key]["UrlHinh"] = $_ps->UrlHinh();
            $Ps[$key]["Price"] = $_ps->Price();
            $Ps[$key]["Summary"] = "";
            $Ps[$key]["Content"] = "";
            $Ps[$key]["Link"] = $_ps->linkProduct();
        }
        $lib = new lib\APIs();
        $lib->ArrayToApi($Ps);
    }

    function getProductsHotView() {
        $Produc = new Model\Products();
        $Ps = $Produc->ProductsHotView(12, FALSE);
        foreach ($Ps as $key => $_ps) {
            $_ps = new Model\Products($_ps);
            $Ps[$key]["UrlHinh"] = $_ps->UrlHinh();
            $Ps[$key]["Price"] = $_ps->Price();
            $Ps[$key]["Summary"] = "";
            $Ps[$key]["Content"] = "";
            $Ps[$key]["Link"] = $_ps->linkProduct();
        }
        $lib = new lib\APIs();
        $lib->ArrayToApi($Ps);
    }

    function gettintuchot() {
        $News = new Model\news();
        $Ps = $News->NewsHot();
        foreach ($Ps as $k => $new) {
            $news = new Model\news($new);
            $Ps[$k]["Content"] = "";
            $Ps[$k]["Image"] = $news->Thumnail();
            $Ps[$k]["Summary"] = "";
            $Ps[$k]["link"] = $news->linkNewsCurent();
        }
        $lib = new lib\APIs();
        $lib->ArrayToApi($Ps);
    }

    function updateHomeSlide() {
        $a = new \Model\adv();
        $libImg = new \lib\imageComp();
        $DS = $a->AdvsByGroup("homeslide", FALSE);
        foreach ($DS as $k => $value) {
            $img = "/" . $libImg->layHinh($value["Urlimages"], 785, 480);
            $Attribute = $a->_decode($value["Attribute"]);
            $DS[$k]["Image"] = $img;
            $DS[$k]["Attribute"] = $Attribute;
        }
        $io = new \lib\io();
        $lib = new \lib\APIs();
        var_dump($DS);
        $fileName = "cache/homeslide.json";
        $content = $lib->ArrayToString($DS);
        $io->writeFile($fileName, $content);
    }

    function homeslide() {
        $io = new \lib\io();
        $fileName = "cache/homeslide.json";
        if (file_exists($fileName)) {
            echo $io->readFile($fileName);
            flush();
        }
    }

    function danhmucnoibat() {
        $io = new \lib\io();
        $fileName = "cache/danhmucnoibat.json";
        if (file_exists($fileName)) {
            echo $io->readFile($fileName);
            flush();
        }
        $libImg = new \lib\imageComp();
        $lib = new \lib\APIs();
        $a = new \Model\adv();
        $DS = $a->AdvsByGroup("danh-muc-noi-bat", FALSE);
        foreach ($DS as $k => $value) {
            $img = "/" . $libImg->layHinh($value["Urlimages"], 180, 180);
            $Attribute = $a->_decode($value["Attribute"]);
            $DS[$k]["Image"] = $img;
            $DS[$k]["Attribute"] = $Attribute;
        }
        $content = $lib->ArrayToString($DS);
        $io->writeFile($fileName, $content);
    }

    function mailDatHang() {
        $order = new \Module\cart\Model\Order();
        $Order = $order->orderbyid($this->getParam()[0])[0];
        $mail = new \Module\mail\Model\Mail();
        $code = \Module\mail\Model\MailContent::MailThongBaoDonHang;
        $sub = \Module\cart\Model\Cart::MailContent(\Module\mail\Model\MailContent::getMailContent($code)->sub, $Order["CodeOrder"]);
        $body = \Module\cart\Model\Cart::MailContent(\Module\mail\Model\MailContent::getMailContent($code)->body, $Order["CodeOrder"]);
        $sender = $Order["Email"];
        $mail->SendMail($sub, $body, $sender);
    }

}

?>
