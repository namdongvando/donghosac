<?php



class Controller_mproduct extends Controller_backend
{



    public $Product;



    function __construct()
    {

        ini_set('display_errors', 1);

        ini_set('display_startup_errors', 1);

        error_reporting(E_ALL);

        $this->Product = new \Model\Products();

        parent::__construct();

    }



    function index()
    {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function ThemNhanSanPhan()
    {

        if (isset($_POST["ThemSanPham"])) {

            $_POST['ID'] = $this->Product->bodautv($_POST['ID']);

            $io = new \lib\io();

            $io->writeFile("data/product/" . md5($_POST['ID']), json_encode($_POST));

            $editP = $this->Product->ProductsByID(intval($_POST['ID']), FALSE);



            if (!$editP) {

                $editP['ID'] = $_POST["ID"];

                $editP['nameProduct'] = $_POST["nameProduct"];

                $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);

                $editP['Username'] = $_SESSION[QuanTri]["Username"];

                $editP['catID'] = $_POST["catID"];

                $editP['Price'] = $_POST["Price"];

                $editP['oldPrice'] = $_POST["oldPrice"];

                $editP['Summary'] = $_POST["Summary"];

                $editP['Content'] = $_POST["Content"];
                $images = new \lib\images\Images();
                try {
                    $imagesUrl = $images->getImagesFromUrl($_POST["UrlHinh"]);
                } catch (Exception $ex) {

                    echo $ex->getMessage();

                }

                $img = explode("/images/sanpham/", $imagesUrl);

                $editP['UrlHinh'] = end($img);

                $editP['DateCreate'] = date("Y-m-d H:i:s", time());

                $editP['Number'] = 1;

                $editP['Note'] = "";

                $editP['BuyTimes'] = 0;

                $editP['Views'] = 0;

                $editP['Serial'] = time();

                $editP['isShow'] = !empty($_POST["isShow"]) ? intval($_POST["isShow"]) : 0;

                $editP['lang'] = "vi";



                $this->Product->AddProducts($editP);

            }

        }

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function productnoprice()
    {



        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function editproduct()
    {



        if (isset($_POST["LuuSanPham"])) {

            $editP = $this->Product->ProductsByID($_POST['ID'], FALSE);

            $SanPhamPost = $_POST["SanPham"];

            $editP['nameProduct'] = $SanPhamPost["nameProduct"];

            $editP['Alias'] = $this->Product->bodautv($SanPhamPost["nameProduct"]);

            $editP['Username'] = $SanPhamPost["Username"] ?? $_SESSION[QuanTri]["Username"];

            $editP['catID'] = $SanPhamPost["catID"];

            $editP['Price'] = $SanPhamPost["Price"];

            $editP['oldPrice'] = $SanPhamPost["oldPrice"];

            $editP['Summary'] = $SanPhamPost["Summary"];

            $editP['Content'] = $SanPhamPost["Content"];
            $img = explode("/images/sanpham/", $SanPhamPost["UrlHinh"]);
            if (isset($img[1]))
                $editP['UrlHinh'] = end($img);
            else
                $editP['UrlHinh'] = $img[0];
            $editP['Number'] = $SanPhamPost["Number"];
            $editP['Note'] = $SanPhamPost["Note"];
            $editP['DateCreate'] = date("Y-m-d H:i:s", time());



            $editP['BuyTimes'] = $SanPhamPost["BuyTimes"];

            $editP['isShow'] = !empty($SanPhamPost["isShow"]) ? intval($SanPhamPost["isShow"]) : 0;

            $editP['lang'] = $SanPhamPost["lang"];

            if (isset($_FILES["fileImages"])) {

                if ($_FILES["fileImages"]["error"][0] == 0) {

                    $img = $this->Product->upload_multi_image($_FILES["fileImages"], "public/img/images/sanpham/", $editP["ID"] . "-");

                    $img = explode("/", $img[0]);

                    $editP['UrlHinh'] = end($img);

                }

            }

            $this->Product->EditProducts($editP);

            //            $this->Product->_header("/mproduct/detailproduct/" . $editP["ID"]);

        }



        $data["p"] = $this->Product->ProductsByID($this->param[0], FALSE);

        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function copyproduct()
    {

        if (isset($_POST["LuuSanPham"])) {

            $_POST['ID'] = $this->Product->bodautv($_POST['nameProduct']);

            $editP = $this->Product->ProductsByID(intval($_POST['ID']), FALSE);

            if (!$editP) {

                $editP['ID'] = $_POST["ID"];

                $editP['nameProduct'] = $_POST["nameProduct"];

                $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);

                $editP['Username'] = $_SESSION[QuanTri]["Username"];

                $editP['catID'] = $_POST["catID"];

                $editP['Price'] = $_POST["Price"];

                $editP['oldPrice'] = $_POST["oldPrice"];

                $editP['Summary'] = $_POST["Summary"];

                $editP['Content'] = $_POST["Content"];

                $img = explode("/images/sanpham/", $_POST["UrlHinh"]);

                $editP['UrlHinh'] = end($img);

                $editP['DateCreate'] = date("Y-m-d H:i:s", time());

                $editP['Number'] = 1;

                $editP['Note'] = $_POST["Note"];

                $editP['BuyTimes'] = 0;

                $editP['isShow'] = isset($_POST["isShow"]) ? 1 : 0;

                $editP['lang'] = "vi";

                if (isset($_FILES["fileImages"])) {

                    if ($_FILES["fileImages"]["error"][0] == 0) {

                        $img = $this->Product->upload_multi_image($_FILES["fileImages"], "public/img/images/sanpham/" . $editP["ID"] . "/", $editP["ID"] . "-");

                        $img = "/" . $img;

                    }

                }

                $this->Product->AddProducts($editP);

            }

            $this->Product->_header("/mproduct/detailproduct/" . $editP["ID"]);

        }

        $data["p"] = $this->Product->ProductsByID($this->param[0], FALSE);

        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function createformeditproduct()
    {

        $lib = new lib\form();

        if ($lib->createFormByClassToFile("\Model\Products", "theme\\backend\\mproduct\\editproduct_form.phtml")) {

            $this->Product->_header("/mproduct/editproduct");

        } else {

            echo "khong theo tao";

        }

    }



    function detailproduct()
    {

        $data["p"] = $this->Product->ProductsByID($this->param[0], FALSE);

        $this->ViewTheme($data, Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function addproduct()
    {

        if (isset($_POST["ThemSanPham"])) {

            $_POST['ID'] = $this->Product->bodautv($_POST['ID']);

            $editP = $this->Product->ProductsByID(intval($_POST['ID']), FALSE);

            if (!$editP) {

                $editP['ID'] = $_POST["ID"];

                $editP['nameProduct'] = $_POST["nameProduct"];

                $editP['Alias'] = $this->Product->bodautv($_POST["nameProduct"]);

                $editP['Username'] = $_SESSION[QuanTri]["Username"];

                $editP['catID'] = $_POST["catID"];

                $editP['Price'] = $_POST["Price"];

                $editP['oldPrice'] = $_POST["oldPrice"];

                $editP['Summary'] = $_POST["Summary"];

                $editP['Content'] = $_POST["Content"];

                $img = explode("/images/sanpham/", $_POST["UrlHinh"]);

                $editP['UrlHinh'] = end($img);

                $editP['DateCreate'] = date("Y-m-d H:i:s", time());

                $editP['Number'] = 1;

                $editP['Note'] = $_POST["Note"];

                $editP['BuyTimes'] = 0;

                $editP['isShow'] = isset($_POST["isShow"]) ? 1 : 0;

                $editP['lang'] = "vi";

                if (isset($_FILES["fileImages"])) {

                    if ($_FILES["fileImages"]["error"][0] == 0) {

                        $img = $this->Product->upload_multi_image($_FILES["fileImages"], "public/img/images/sanpham/" . $editP["ID"] . "/", $editP["ID"] . "-");

                        $img = "/" . $img;

                    }

                }

                $this->Product->AddProducts($editP);

            }

            $this->Product->_header("/mproduct/detailproduct/" . $editP["ID"]);

        }

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function deleteproduct()
    {

        $data["p"] = $this->Product->DeleteProductsByID($this->param[0]);



        $this->Product->_header($_SERVER["HTTP_REFERER"]);

    }



    function getProductsBycatID()
    {

        //        mproduct/getProductsBycatID/CatID/Page/

        $this->param[1] = isset($this->param[1]) ? intval($this->param[1]) : 1;

        $a = new \Model\Category();

        $p = new \Model\Products();

        $listCatID = [];

        $dataResult = [];

        $a->AllCategoryByParentID([$this->param[0]], $listCatID);



        $b = $p->ProductsByCatID($this->param[0], $this->param[1], 20, $sum);

        $dataResult["pagesIndex"] = $this->param[1];

        $dataResult["total"] = $sum;

        $dataResult["totalPages"] = ceil($dataResult["total"] / 20);

        if ($b) {

            foreach ($b as $k => $_products) {

                $_Modelproducts = new Model\Products($_products);

                $b[$k]["Images"] = $_Modelproducts->UrlHinh();

            }

            $dataResult["data"] = $b;

            echo $a->_encode($dataResult);

            return;

        }

        echo "[]";

        return;

    }



    function getProductsPT()
    {

        $PagesIndex = isset($this->param[0]) ? intval($this->param[0]) : 1;

        $PagesNumber = isset($this->param[1]) ? intval($this->param[1]) : 20;

        $options["name"] = isset($this->param[2]) ? $this->param[2] : "";

        $options["catID"] = isset($this->param[3]) ? $this->param[3] : 0;

        $a = new \Model\Category();

        $p = new \Model\Products();

        $dataResult = [];

        $sum = 0;

        $b = $p->ProductsNameAllPTNangCao($options, $PagesIndex, $PagesNumber, $sum);

        $dataResult["pagesIndex"] = $PagesIndex;

        $dataResult["total"] = $sum;

        $dataResult["totalPages"] = ceil($dataResult["total"] / $PagesNumber);

        if ($b) {

            foreach ($b as $k => $_products) {

                $_Modelproducts = new Model\Products($_products);

                $b[$k] = $_Modelproducts->Obj2Api();

            }

            $dataResult["data"] = $b;



            echo $a->_encode($dataResult);

            return;

        }

        echo "[]";

        return;

    }



    function getListCategory()
    {

        $a = new \Model\Category();

        $b = $a->AllCategorys(FALSE);

        echo $a->_encode($b);

    }



    function xoahinhsanpham()
    {

        $a = file_get_contents('php://input');

        $b = $this->Product->_decode($a);

        $c = substr($b->path, 1);

        unlink($c);

    }



    function savePriceProduct()
    {

        $Pr = new Model\Products();

        $P = $Pr->ProductsByID($_POST["ID"], false);

        if ($P) {

            $P["Price"] = $_POST["Price"];

            $Pr->EditProducts($P);

        }

    }



    function seachajax()
    {



        $name = $_POST["Name"];

        $product = new Model\Products();

        $a = $product->ProductsByName($name);

        foreach ($a as $key => $value) {

            $a[$key] = $this->ProducttoJSON($value);

        }

        echo json_encode($a, JSON_UNESCAPED_UNICODE);

    }



    function seach()
    {

        $this->ViewTheme([], Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function productnopriceAjax()
    {

        $product = new Model\Products();

        $a = $product->ProductsNoPrice();

        foreach ($a as $key => $value) {

            $a[$key] = $this->ProducttoJSON($value);

        }

        echo json_encode($a, JSON_UNESCAPED_UNICODE);

    }



    private function ProducttoJSON($p)
    {

        $v = new Model\Products($p);

        unset($p["Content"]);

        unset($p["Summary"]);

        $p["Image"] = $v->UrlHinh();

        $p["Category"] = $v->DanhMuc();

        return $p;

    }



    function phantrang()
    {

        $this->PartialView("");

    }



    function sanphamhtheohinh()
    {

        $sp = new Model\Products();

        if (isset($_POST["TenSanPham"])) {

            try {

                $tenSanPham = $_POST["TenSanPham"];

                foreach ($tenSanPham as $k => $value) {

                    $TenHinh = $_POST["HinhAnh"][$k];

                    $TenSaPham = $_POST["TenSanPham"][$k];

                    $Gia = $_POST["Price"][$k];

                    $catID = $_POST["catID"][$k];

                    $Mota = !empty($_POST["MoTa"][$k]) ? $_POST["MoTa"][$k] : '';

                    $filePath = "public/img/images/sanpham/dm-{$catID}/{$TenHinh}";

                    if (!is_dir("public/img/images/sanpham/dm-{$catID}/")) {

                        mkdir("public/img/images/sanpham/dm-{$catID}/", 0777);

                    }

                    $fileGoc = Model\Products::hinhsanphamTam . "{$TenHinh}";

                    if (!file_exists($filePath)) {

                        copy($fileGoc, $filePath);

                    }

                    unlink($fileGoc);

                    $ar["ID"] = $catID . lib\Common::bodautv($TenSaPham);



                    $ar["Username"] = Module\duser\Model\Duser::CurentUsernameAdmin(true)->Username;

                    $ar["catID"] = $catID;

                    $ar["nameProduct"] = $TenSaPham;

                    $ar["Alias"] = lib\Common::bodautv($TenSaPham);

                    $ar["Price"] = $Gia;

                    $ar["oldPrice"] = 0;

                    $ar["Summary"] = $Mota;

                    $ar["Content"] = "";

                    $ar["UrlHinh"] = "/{$filePath}";

                    $ar["DateCreate"] = \lib\Common::DateFomatDB();

                    $ar["Number"] = 1;

                    $ar["Note"] = "{}";

                    $ar["BuyTimes"] = 0;

                    $ar["Serial"] = 0;

                    $ar["Views"] = 0;

                    $ar["isShow"] = 1;

                    $ar["lang"] = "vi";

                    $sp->AddProducts($ar);

                }

            } catch (Exception $exc) {

                echo $exc->getMessage();

            }

        }

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "mproduct");

    }



    function xoahinhanh()
    {

        $dir = new lib\redDirectory();

        $a = [];

        $dir->redDirectoryByPath(Model\Products::hinhsanphamTam, $a);

        $dir->removerfile(Model\Products::hinhsanphamTam, $a);

        lib\Common::ToUrl($_SERVER["HTTP_REFERER"]);

    }



    function xoahinhanhTen()
    {

        $fileNameXoa = $this->getParam()[0];

        $dir = new lib\redDirectory();

        $a = [];

        $dir->redDirectoryByPath(Model\Products::hinhsanphamTam, $a);

        foreach ($a as $fileName) {

            if (md5($fileName) == $fileNameXoa) {

                unlink(Model\Products::hinhsanphamTam . $fileName);

                break;

            }

        }

        lib\Common::ToUrl($_SERVER["HTTP_REFERER"]);

    }



}



?>