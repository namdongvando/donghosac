<?php

use Model\Category\FornCategory;

class Controller_mcategory extends Controller_backend
{

    public $Category;

    function __construct()
    {

        $this->Category = new Model\Category();

        parent::__construct();
    }

    function index()
    {
        //        $this->Category->DeleteCategory(1);
        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function detail()
    {

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function edit()
    {

        if (isset($_POST["SuaDanhMuc"])) {
            $_POSTData = $_POST[FornCategory::FormName];
            $Cat = $this->Category->Category4Id($_POSTData["catID"], FALSE);
            $_cat = new \Model\Category($Cat);
            $Cat["catName"] = $this->Category->Bokytusql($_POSTData["catName"]);
            $Cat["Note"] = $this->Category->Bokytusql($_POSTData["Note"] ?? $Cat["Note"]);
            $Cat["Lang"] = "vi";
            $Cat["parentCatID"] = intval($_POSTData["parentCatID"]);
            $Cat["Serial"] = intval($_POSTData["Serial"]) ?? 1;
            $Cat["Public"] = isset($_POSTData["Public"]) ? 1 : 0;
            $kt = $this->Category->EditCategory($Cat);

            if ($kt > 0) {

                $Cat["Link"] = $_cat->linkCurentCategory();
                $this->Category->EditCategory($Cat);
                // $this->Category->_header("/mcategory/detail/" . $_POST["catID"]);
            } else {

                $M_error = new \Model\Error();

                $M_error->setError($this->Category->getError($kt), 'danger');
            }
        }

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function add()
    {


        if (isset($_POST["ThemDanhMuc"])) {
            $_POSTData = $_POST[FornCategory::FormName];
            $Cat["catName"] = $this->Category->Bokytusql($_POSTData["catName"]);
            $Cat["Note"] = $this->Category->Bokytusql($_POSTData["Note"]);
            $Cat["parentCatID"] = intval($_POSTData["parentCatID"]);
            $Cat["Path"] = $this->Category->bodautv($Cat["catName"]);
            $Cat["Link"] = "";
            $Cat["Lang"] = "vi";
            $Cat["banner"] = $_POSTData["banner"];
            $Cat["Serial"] = intval($_POSTData["Serial"]) ?? 1;
            $Cat["Public"] = isset($_POSTData["Public"]) ? 1 : 0;

            $Cat = $this->Category->AddCategory($Cat);

            if ($Cat) {

                $_cat = new \Model\Category($Cat);

                $Cat["Link"] = $_cat->linkCurentCategory();

                $this->Category->EditCategory($Cat);

                $this->Category->_header("/mcategory/detail/" . $Cat["catID"]);
            } else {

                $M_error = new \Model\Error();

                $M_error->setError($this->Category->getError($kt), 'danger');
            }
        }

        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function delete()
    {

        if (isset($_POST["xoadanhmuc"])) {

            $this->Category->DeleteCategory($_POST["catID"]);

            $this->Category->_header("/mcategory/index");
        }
    }

    function categorys()
    {



        $this->ViewTheme("", Model_ViewTheme::get_viewthene(), "");
    }

    function getCategoryByID()
    {

        $a = $this->Category->Category4Id($this->param[0], FALSE);

        echo $this->Category->_encode($a);
    }
}
