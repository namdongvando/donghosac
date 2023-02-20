<?php

class Controller_madv extends Controller_backend {

    public $Adv;

    function __construct() {
        $this->Adv = new \Model\adv();
        parent::__construct();
        $this->Bread[] = [
            "title" => "Quản lý quảng cáo",
            "link" => "/madv/"
        ];
    }

    function index() {

//        $this->Adv->getGroupsAdv(FALSE);
        $_bre = new Model\Breadcrumb();
        $_bre->setBreadcrumb($this->Bread);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function addadv() {
        if (isset($_POST["AddAdv"])) {
//            $Adv["Attribute"] = $this->Adv->_encode($_POST["Attribute"]);
//            $Adv["DataAttribute"] = $this->Adv->_encode($_POST["DataAttribute"]);
            $_group = $this->Adv->getGroupAdvByID($this->Adv->CheckTextInput($_POST["Group"]), FALSE);
            $Adv["Name"] = $this->Adv->CheckTextInput($_group["Name"]);
            $Adv["Content"] = $this->Adv->CheckTextInput($_POST["Content"]);
            $Adv["Attribute"] = $this->Adv->_encode($_POST["Attribute"]);
            $Adv["DataAttribute"] = $this->Adv->_encode($_POST["DataAttribute"]);
            $Adv["Link"] = $this->Adv->CheckTextInput($_group["Link"]);
            $Adv["Urlimages"] = "";
            $Adv["isShow"] = 1;
            $Adv["Group"] = $_group["Group"];
            $Adv["ID"] = $this->Adv->AddAdv($Adv);
            $img = "";
            if (isset($_FILES["UrlImage"])) {
                if ($_FILES["UrlImage"]["error"] == 0) {

                    $img = $this->Adv->upload_image1($_FILES["UrlImage"], "public/img/images/quangcao/" . $_POST["Group"] . "/", $_POST["Group"] . "-" . $Adv["ID"], true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                }
            }
            $Adv["Urlimages"] = $img;
            $this->Adv->EditAdv($Adv);
        }
        $this->Adv->_header("/madv/index");
    }

    function editadv() {
        $adv = new \Model\adv();
        if (isset($_POST["EditAdv"])) {

//            $Adv["Attribute"] = $this->Adv->_encode($_POST["Attribute"]);
//            $Adv["DataAttribute"] = $this->Adv->_encode($_POST["DataAttribute"]);

            $ID = $this->Adv->CheckTextInput($_POST["ID"]);
            $Adv = $this->Adv->AdvsById($ID, FALSE);

            $Adv["Name"] = $this->Adv->CheckTextInput($_POST["Name"]);
            $Adv["Content"] = $this->Adv->CheckTextInput($_POST["Content"]);
            $Adv["Attribute"] = isset($_POST["Attribute"]) ? $this->Adv->_encode($_POST["Attribute"]) : '{}';
            $Adv["DataAttribute"] = isset($_POST["DataAttribute"]) ? $this->Adv->_encode($_POST["DataAttribute"]) : '[]';
            $Adv["Link"] = $this->Adv->CheckTextInput($_POST["Link"]);
            $Adv["isShow"] = 1;
            $img = $Adv["Urlimages"];
            if (isset($_FILES["UrlImage"])) {
                if ($_FILES["UrlImage"]["error"] == 0) {
                    $urlimg = "public/img/images/adv/" . date("Y") . "/" . date("m") . "/";
                    $imgHinh = substr($img, 1);
                    if (is_file($imgHinh)) {
                        unlink($imgHinh);
                    }
                    $img = $this->Adv->upload_image1($_FILES["UrlImage"], $urlimg, "adv-" . $Adv["ID"], true);
                    $img = explode("public/img/", BASE_URL . $img);
                    $img = "/public/img/" . $img[1];
                    $Adv["Urlimages"] = $img;
                }
            }
            $this->Adv->EditAdv($Adv);
        }
        $adv->_header("/madv/index");
        exit();
    }

    function addgroupadv() {
        if (isset($_POST["AddGroup"])) {
            $Adv["Name"] = $_POST["Name"];
            $Adv["Group"] = $this->Adv->bodautv($_POST["Group"]);
            $Adv["Link"] = "";
            $Adv["Content"] = "";
            $Adv["UrlImages"] = "";
            $Adv["Attribute"] = "{}";
            $Adv["DataAttribute"] = "[]";
            $Adv["isShow"] = 0;
            $this->Adv->AddAdv($Adv);
            $this->Adv->_header("/madv/index/");
        }
    }

    function delete() {
        $a = $this->Adv->DeleteAdv($this->param[0]);
        $this->Adv->_header("/madv/index");
    }

    function getAdvs() {
        $a = $this->Adv->Advs(FALSE);
        echo $this->Adv->_encode($a);
    }

    function getGroupAdvs() {
        $a = $this->Adv->getGroupsAdv(FALSE);
        echo $this->Adv->_encode($a);
    }

    function getAdvsByID() {
        $a = $this->Adv->AdvsById($this->param[0], FALSE);
        echo $this->Adv->_encode($a);
    }

    function saveVideo() {
        header('Access-Control-Allow-Origin:*');
        header('Access-Control-Allow-Methods:PUT,POST,GET,DELETE,OPTIONS');
        header('Access-Control-Allow-Headers:x-requested-with,content-type');
        header("Content-type: application/x-www-form-urlencoded");
        print_r($_POST["Link"]);
        $content['Link'] = $_POST["Link"];
        $content['IsShow'] = $_POST["IsShow"];
        $io = new lib\io();
        $io->writeFile("data/video.js", json_encode($content));
    }

    function video() {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function getVideo() {
        $io = new lib\io();
        $NoiDung = $io->readFile("data/video.js");
        echo $NoiDung;
    }

}

?>