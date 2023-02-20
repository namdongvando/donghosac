<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace Model;

class Products extends \Model\Database {

    const hinhsanphamTam = "public/hinhsanpham/";
    const An = 0;
    const Hien = 1;
    const News = 2;
    const Hot = 3;

    public $ID;
    public $Username;
    public $catID;
    public $nameProduct;
    public $Alias;
    public $Price;
    public $oldPrice;
    public $Summary;
    public $Content;
    public $UrlHinh;
    public $DateCreate;
    public $Number;
    public $Note;
    public $BuyTimes;
    public $Views;
    public $isShow;
    public $lang;

    function __construct($product = null) {
        parent::__construct();
        if ($product) {
            if (!is_array($product)) {
                $product = $this->ProductsByID($product, FALSE);
            }
            $this->ID = $product["ID"];
            $this->Username = $product["Username"];
            $this->catID = $product["catID"];
            $this->nameProduct = $product["nameProduct"];
            $this->Alias = $product["Alias"];
            $this->Price = $product["Price"];
            $this->oldPrice = $product["oldPrice"];
            $this->Summary = isset($product["Summary"]) ? $product["Summary"] : "";
            $this->Content = isset($product["Content"]) ? $product["Content"] : "";
            $this->UrlHinh = $product["UrlHinh"];
            $this->DateCreate = $product["DateCreate"];
            $this->Number = $product["Number"];
            $this->Note = $product["Note"];
            $this->BuyTimes = $product["BuyTimes"];
            $this->Views = $product["Views"];
            $this->isShow = $product["isShow"];
            $this->lang = $product["lang"];
        }
    }

    function Products() {
        return parent::Products();
    }

    function ProductsAll() {
        return parent::ProductsAll();
    }

    function ProductsAllPT($Page = 1, $Number = 20, &$Tong = 0) {
        return parent::ProductsAllPT($Page, $Number, $Tong);
    }

    function showPrice($a) {
        if ($a > 0)
            return number_format($a, 0, '.', ',') . "<sup>đ</sup>";
        return "Liên Hệ";
    }

    public static function IsShowList() {
        return [
            self::An => "Ẩn",
            self::Hien => "Hiện",
            self::News => "Mới",
            self::Hot => "Hot",
        ];
    }

    function UrlHinh() {


        $fileName = "public/img/images/sanpham/" . $this->UrlHinh;
        if (file_exists($fileName)) {
            return BASE_URL . "public/img/images/sanpham/" . $this->UrlHinh;
        }
        $str = explode("/", $this->UrlHinh);
        $fd = "public/img/images/sanpham/dm-{$this->catID}/" . end($str);
        if (file_exists($fd)) {
            return "/$fd";
        }
        return $this->UrlHinh;
    }

    function Price() {
        $a = $this->Price;
        if ($a > 0)
            return number_format($a, 0, '.', ',') . " <sup>đ</sup>";
        return "Liên Hệ";
    }

    function CatName($id) {
        $a = $this->Category4Id($id);
        return $a->catName;
    }

    function DeleteProductsByID($ID) {
        $this->delete(table_prefix . "product", "`ID` = '{$ID}'");
    }

    function EditProducts($Product) {
        return parent::EditProducts($Product);
    }

    function AddProducts($Product) {
        return parent::AddProducts($Product);
    }

    function linkProduct() {
        $p = new \Model\Category();
        $a = $p->Category4Id($this->catID);
        $linkcat = $a->linkCurentCategory();
        return $linkcat . "/" . $this->Alias . ".html";
    }

    function ProductsByID($Id, $isobj = True) {
        return parent::ProductsByID($Id, $isobj);
    }

    function ProductsByAlias($Alias, $isobj = True) {
        return parent::ProductsByAlias($Alias, $isobj);
    }

    function ProductsByCatID($CatId, $page, $number, &$sum) {
        return parent::ProductsByCatID($CatId, $page, $number, $sum);
    }

    function getProductsByName($CatId, $page, $number, &$sum) {
        return $this->ProductsByName($CatId, $page, $number, $sum);
    }

    function AllProductsByCatID($CatId) {
        parent::AllProductsByCatID($CatId);
    }

    function imagesDirectory() {
        return "/public/img/images/sanpham/" . $this->ID . "/";
    }

    function imagesDirectory4Product($id) {
        return "/public/img/images/sanpham/" . $id . "/";
    }

    function getAllImges($id) {
        $dir = new \lib\redDirectory();
        $a = [];
        $dir->redDirectoryByPath("public/img/images/sanpham/" . $id . "/", $a);
        foreach ($a as $k => $value) {
            $a[$k] = $this->imagesDirectory4Product($id) . $value;
        }
        return $a;
    }

    public function GiamGia() {
        return (100 - floor(($this->oldPrice / $this->Price) * 100));
    }

    public function oldPrice() {
        $a = $this->oldPrice;
        if ($a > 0)
            return number_format($a, 0, '.', ',') . "Đ";
        return 0;
    }

    public function linkGioHang() {
        if ($this->Number == 0) {
            return "#";
        }
        return "/cart/index/addproduct/" . $this->ID;
    }

    public function linkMuaNgay() {
        return "/cart/index/muaNhanh/" . $this->ID;
    }

    public function ReSetSoLuong($Id, $sl) {
        $p = $this->ProductsByID($Id, FALSE);
        $p["Number"] = $p["Number"] + $sl;
        $p["Number"] = max($p["Number"], 0);
        return $this->EditProducts($p);
    }

    public function TinhTrang() {
        if ($this->Number == 0) {
            return "Hết Hàng";
        }
        return "Còn Hàng";
    }

    public function btnGioHang() {
        if ($this->Number == 0) {
            return;
        }
        ?>
        <a href="<?php echo $this->linkGioHang(); ?>">Giỏ Hàng</a>
        <?php
    }

    public function Obj2Api() {

        $ar["ID"] = $this->ID;
        $ar["Username"] = $this->Username;
        $ar["catID"] = $this->catID;
        $ar["Category"] = $this->Category()->obj2Api();
        $ar["nameProduct"] = $this->nameProduct;
        $ar["Alias"] = $this->Alias;
        $ar["Price"] = $this->Price;
        $ar["PriceVND"] = $this->Price();
        $ar["oldPrice"] = $this->oldPrice;
        $ar["oldPriceVND"] = $this->OldPrice();
        $ar["Summary"] = "";
        $ar["Content"] = "";
        $ar["UrlHinh"] = $this->UrlHinh;
        $ar["Images"] = $this->UrlHinh();
        $ar["DateCreate"] = \lib\Common::DateFomat($this->DateCreate);
        $ar["Number"] = $this->Number;
        $ar["Note"] = $this->Note;
        $ar["BuyTimes"] = $this->BuyTimes;
        $ar["Views"] = $this->Views;
        $ar["isShow"] = $this->isShow;
        $ar["isShowStatus"] = $this->isShow == 1 ? "Hiện" : "Ẩn";
        $ar["lang"] = $this->lang;
        return $ar;
    }

    public function ProductsNameAllPT($name = "", $Page = 1, $Number = 20, &$Tong = 0) {
        $Page = intval($Page);
        $Page = max($Page, 1);
        $start = ($Page - 1) * $Number;
        $sql = "SELECT count(ID) as `Tong` FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' ";
        $this->Query($sql);
        $a = $this->fetchRow();
        $Tong = $a["Tong"];
        $sql = "SELECT * FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' order by `DateCreate` DESC limit {$start},{$Number} ";
        $this->Query($sql);
        $a = $this->fetchAll();
        return $a;
    }

    public function ProductsNameAllPTNangCao($options = ["name" => "", "catID" => 0], $Page = 1, $Number = 20, &$Tong = 0) {
        $name = !empty($options["name"]) ? $options["name"] : '';
        $catID = !empty($options["catID"]) ? $options["catID"] : 0;
        $Page = intval($Page);
        $Page = max($Page, 1);
        $start = ($Page - 1) * $Number;
        $catSQL = " and `catID` = '{$catID}' ";
        if ($catID == 0) {
            $catSQL = " ";
        }
        $sql = "SELECT count(ID) as `Tong` FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' {$catSQL} ";
        $sql = trim($sql);
        $this->Query($sql);
        $a = $this->fetchRow();
        $Tong = $a["Tong"];
        $sql = "SELECT * FROM `" . table_prefix . "product` where `nameProduct` like '%{$name}%' {$catSQL} order by `DateCreate` DESC limit {$start},{$Number} ";
        $this->Query($sql);
        $a = $this->fetchAll();
        return $a;
    }

    function Category($id = null) {
        if ($id == null)
            $id = $this->catID;
        $a = $this->Category4Id($id, false);
        return new Category($a);
    }

    //put your code here
}
